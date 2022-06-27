       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x800028d0
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x800028d0, (wrb) ra  <-- 4120, goto 0x800028d0
       0      269        M 0x800028d0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x800038d0
       0      270        M 0x800028d4 addi    gp, gp, -264           #; gp  = 0x800038d0, (wrb) gp  <-- 0x800037c8
       0      271        M 0x800028d8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800028d8
       0      272        M 0x800028dc jalr    ra, ra, 964            #; ra  = 0x800028d8, (wrb) ra  <-- 0x800028e0, goto 0x80002c9c
       0      292        M 0x80002c9c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002ca0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002ca4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002ca8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80002cac lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80002cb0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80002cb4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80002cb8 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80002cbc mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80002cc0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80002cc4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80002cc8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80002ccc ret                            #; ra  = 0x800028e0, goto 0x800028e0
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x800028e0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x800028e4 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x800028e8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800028e8
       0      508        M 0x800028ec jalr    ra, ra, 1036           #; ra  = 0x800028e8, (wrb) ra  <-- 0x800028f0, goto 0x80002cf4
       0      523        M 0x80002cf4 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80002cf8 ret                            #; ra  = 0x800028f0, goto 0x800028f0
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x800028f0 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x800028f4 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x800028f8 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x800028fc sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80002900 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80002904 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002904
       0      551        M 0x80002908 addi    t0, t0, 1956           #; t0  = 0x80002904, (wrb) t0  <-- 0x800030a8
       0      552        M 0x8000290c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000290c
       0      562        M 0x80002910 addi    t1, t1, 1952           #; t1  = 0x8000290c, (wrb) t1  <-- 0x800030ac
       0      563        M 0x80002914 bge     t0, t1, pc + 16        #; t0  = 0x800030a8, t1  = 0x800030ac, not taken
       0      564        M 0x80002918 sw      zero, 0(t0)            #; t0  = 0x800030a8, 0 ~~> Word[0x800030a8]
       0      565        M 0x8000291c addi    t0, t0, 4              #; t0  = 0x800030a8, (wrb) t0  <-- 0x800030ac
       0      573        M 0x80002920 blt     t0, t1, pc - 8         #; t0  = 0x800030ac, t1  = 0x800030ac, not taken
       0      574        M 0x80002924 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80002928 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x8000292c beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80002930 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80002934 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80002938 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x8000293c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80002940 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80002944 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80002948 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x8000294c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80002950 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80002954 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80002958 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x8000295c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80002960 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80002964 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80002968 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x8000296c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80002970 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80002974 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80002978 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x8000297c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80002980 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80002984 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80002988 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x8000298c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x80002990 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x80002994 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x80002998 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x8000299c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x800029a0 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x800029a4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x800029a8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x800029ac fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x800029b0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x800029b4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x800029b8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800029b8
       0      684        M 0x800029bc lw      t0, 900(t0)            #; t0  = 0x800029b8, t0  <~~ Word[0x80002d3c]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x800029c0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x800029c4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x800029c8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800029c8
       0      708        M 0x800029cc lw      t2, 880(t2)            #; t2  = 0x800029c8, t2  <~~ Word[0x80002d38]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x800029d0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x800029d4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x800029d8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x800029dc sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x800029e0 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x800029e4 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x800029e8 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x800029ec sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x800029f0 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800029f0
       0      762        M 0x800029f4 addi    t0, t0, 1496           #; t0  = 0x800029f0, (wrb) t0  <-- 0x80002fc8
       0      763        M 0x800029f8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800029f8
       0      764        M 0x800029fc addi    t1, t1, 1488           #; t1  = 0x800029f8, (wrb) t1  <-- 0x80002fc8
       0      775        M 0x80002a00 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002a00
       0      776        M 0x80002a04 addi    t2, t2, 1480           #; t2  = 0x80002a00, (wrb) t2  <-- 0x80002fc8
       0      777        M 0x80002a08 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002a08
       0      778        M 0x80002a0c addi    t3, t3, 1488           #; t3  = 0x80002a08, (wrb) t3  <-- 0x80002fd8
       0      787        M 0x80002a10 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002fc8, (wrb) sp  <-- 0x80122f38
       0      788        M 0x80002a14 sub     sp, sp, t1             #; sp  = 0x80122f38, t1  = 0x80002fc8, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80002a18 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002fc8, (wrb) sp  <-- 0x80122f38
       0      790        M 0x80002a1c sub     sp, sp, t3             #; sp  = 0x80122f38, t3  = 0x80002fd8, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80002a20 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80002a24 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80002a28 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x80002a2c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80002a30 bge     t0, t1, pc + 24        #; t0  = 0x80002fc8, t1  = 0x80002fc8, taken, goto 0x80002a48
       0      823        M 0x80002a48 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a48
       0      824        M 0x80002a4c addi    t0, t0, 1408           #; t0  = 0x80002a48, (wrb) t0  <-- 0x80002fc8
       0      835        M 0x80002a50 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002a50
       0      836        M 0x80002a54 addi    t1, t1, 1416           #; t1  = 0x80002a50, (wrb) t1  <-- 0x80002fd8
       0      837        M 0x80002a58 bge     t0, t1, pc + 20        #; t0  = 0x80002fc8, t1  = 0x80002fd8, not taken
       0      838        M 0x80002a5c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002a60 addi    t0, t0, 4              #; t0  = 0x80002fc8, (wrb) t0  <-- 0x80002fcc
       0      848        M 0x80002a64 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002a68 blt     t0, t2, pc - 12        #; t0  = 0x80002fcc, t2  = 0x80002fc8, not taken
       0      850        M 0x80002a6c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80002a70 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80002a74 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80002a78 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x80002a7c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80002a80 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80002a84 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a84
       0      877        M 0x80002a88 jalr    ra, ra, -1052          #; ra  = 0x80002a84, (wrb) ra  <-- 0x80002a8c, goto 0x80002668
       0      899        M 0x80002668 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      900        M 0x8000266c sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      911        M 0x80002670 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      949        M                                           #; (lsu) t1  <-- 0
       0      950        M 0x80002674 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      951        M 0x80002678 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      989        M                                           #; (lsu) a6  <-- 1
       0      990        M 0x8000267c lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1020        M                                           #; (lsu) a7  <-- 1
       0     1021        M 0x80002680 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1022        M 0x80002684 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1025        M                                           #; (acc) a0  <-- 0x02580533
       0     1060        M                                           #; (lsu) t0  <-- 8
       0     1061        M 0x80002688 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1064        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1065        M 0x8000268c sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1066        M 0x80002690 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1067        M 0x80002694 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1068        M 0x80002698 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1071        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1072        M 0x8000269c sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1078        M 0x800026a0 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1079        M 0x800026a4 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1080        M 0x800026a8 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1081        M 0x800026ac lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1090        M 0x800026b0 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1100        M                                           #; (lsu) a0  <-- 0x80000000
       0     1101        M 0x800026b4 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1102        M 0x800026b8 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1103        M 0x800026bc sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1104        M 0x800026c0 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1140        M                                           #; (lsu) a0  <-- 0
       0     1141        M 0x800026c4 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1142        M 0x800026c8 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1179        M                                           #; (lsu) a1  <-- 1
       0     1180        M 0x800026cc sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1181        M 0x800026d0 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1182        M 0x800026d4 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1183        M 0x800026d8 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1184        M 0x800026dc sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1193        M 0x800026e0 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1205        M                                           #; (lsu) a0  <-- 0x00020000
       0     1206        M 0x800026e4 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1207        M 0x800026e8 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1208        M 0x800026ec sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1209        M 0x800026f0 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1210        M 0x800026f4 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1211        M 0x800026f8 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1212        M 0x800026fc sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1220        M 0x80002700 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1221        M 0x80002704 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1222        M 0x80002708 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1223        M 0x8000270c slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1233        M 0x80002710 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1234        M 0x80002714 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1235        M 0x80002718 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1236        M 0x8000271c sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1245        M 0x80002720 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1246        M 0x80002724 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1247        M 0x80002728 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1248        M 0x8000272c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1257        M 0x80002730 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1258        M 0x80002734 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1262        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1263        M 0x80002738 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1266        M                                           #; (lsu) a1  <-- 0
       0     1267        M 0x8000273c lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1269        M 0x80002740 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1270        M                                           #; (lsu) a0  <-- 8
       0     1271        M 0x80002744 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1272        M 0x80002748 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1273        M 0x8000274c add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1281        M 0x80002750 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1282        M 0x80002754 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1283        M 0x80002758 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1284        M 0x8000275c auipc   a1, 0x1                #; (wrb) a1  <-- 0x8000375c
       0     1293        M 0x80002760 addi    a1, a1, -1712          #; a1  = 0x8000375c, (wrb) a1  <-- 0x800030ac
       0     1294        M 0x80002764 add     a0, a0, a1             #; a0  = 0, a1  = 0x800030ac, (wrb) a0  <-- 0x800030ac
       0     1295        M 0x80002768 sw      zero, 0(a0)            #; a0  = 0x800030ac, 0 ~~> Word[0x800030ac]
       0     1296        M 0x8000276c lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1344        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1345        M 0x80002770 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1346        M 0x80002774 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1347        M 0x80002778 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1348        M 0x8000277c addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1349        M 0x80002780 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1350        M 0x80002784 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1351        M 0x80002788 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1352        M 0x8000278c sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1362        M 0x80002790 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1363        M 0x80002794 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1364        M 0x80002798 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1366        M 0x8000279c lw      a0, 0(a1)              #; a1  = 0x800030ac, a0  <~~ Word[0x800030ac]
       0     1377        M                                           #; (lsu) a0  <-- 0
       0     1378        M 0x800027a0 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1379        M 0x800027a4 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1380        M 0x800027a8 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1381        M 0x800027ac sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1387        M 0x800027b0 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1388        M 0x800027b4 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1389        M 0x800027b8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1390        M 0x800027bc sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1399        M 0x800027c0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1400        M 0x800027c4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1401        M 0x800027c8 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1402        M 0x800027cc ret                            #; ra  = 0x80002a8c, goto 0x80002a8c
       0     1415        M 0x80002a8c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1418        M                                           #; (lsu) a0  <-- 0
       0     1419        M 0x80002a90 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1422        M                                           #; (lsu) a1  <-- 8
       0     1423        M 0x80002a94 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1426        M                                           #; (lsu) a2  <-- 0x00100000
       0     1427        M 0x80002a98 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1430        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1431        M 0x80002a9c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1432        M 0x80002aa0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1433        M 0x80002aa4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002aa4
       0     1434        M 0x80002aa8 addi    t0, t0, 60             #; t0  = 0x80002aa4, (wrb) t0  <-- 0x80002ae0
       0     1435        M 0x80002aac csrw    mtvec, t0              #; t0  = 0x80002ae0, (lsu) a4  <-- 4132
       0     1442        M 0x80002ab0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ab0
       0     1443        M 0x80002ab4 jalr    ra, ra, 544            #; ra  = 0x80002ab0, (wrb) ra  <-- 0x80002ab8, goto 0x80002cd0
       0     1456        M 0x80002cd0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1457        M 0x80002cd4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002ab8 ~~> Word[0x0011ff5c]
       0     1458        M 0x80002cd8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002cd8
       0     1459        M 0x80002cdc jalr    ra, ra, -1256          #; ra  = 0x80002cd8, (wrb) ra  <-- 0x80002ce0, goto 0x800027f0
       0     1480        M 0x800027f0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1481        M 0x800027f4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1482        M 0x800027f8 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1485        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1486        M 0x800027fc lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1490        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1492        M 0x80002800 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1493        M 0x80002804 ret                            #; ra  = 0x80002ce0, goto 0x80002ce0
       0     1496        M                                           #; (lsu) a0  <-- 0x00120190
       0     1497        M 0x80002ce0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1526        M                                           #; (lsu) a0  <-- 0
       0     1527        M 0x80002ce4 mv      zero, a0               #; a0  = 0
       0     1528        M 0x80002ce8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1529        M 0x80002cec addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1531        M                                           #; (lsu) ra  <-- 0x80002ab8
       0     1532        M 0x80002cf0 ret                            #; ra  = 0x80002ab8, goto 0x80002ab8
       0     1536        M 0x80002ab8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000ab8
       0     1537        M 0x80002abc jalr    ra, ra, -1156          #; ra  = 0x80000ab8, (wrb) ra  <-- 0x80002ac0, goto 0x80000634
       0     1542        M 0x80000634 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1543        M 0x80000638 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1544        M 0x8000063c lw      a0, 4(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff64]
       0     1547        M                                           #; (lsu) a0  <-- 0
       0     1548        M 0x80000640 beqz    a0, pc + 12            #; a0  = 0, taken, goto 0x8000064c
       0     1549        M 0x8000064c li      a0, 25                 #; (wrb) a0  <-- 25
       0     1558        M 0x80000650 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80000650
       0     1559        M 0x80000654 jalr    zero, t1, 8            #; t1  = 0x80000650
       0     1560        M 0x80000658 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1561        M 0x8000065c sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002ac0 ~~> Word[0x0011ff5c]
       0     1572        M 0x80000664 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1573        M 0x80000668 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
                         M 0x80000660 fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
       0     1574        M 0x8000066c lw      a1, 0(a1)              #; a1  = 0x0011ff60, a1  <~~ Word[0x0011ff60]
       0     1577        M                                           #; (lsu) a1  <-- 0x0011ff70
       0     1584        M 0x80000670 lw      a2, 0(a1)              #; a1  = 0x0011ff70, a2  <~~ Word[0x0011ff70]
       0     1587        M                                           #; (lsu) a2  <-- 0x0011ff70
       0     1588        M 0x80000674 lw      t1, 88(a2)             #; a2  = 0x0011ff70, t1  <~~ Word[0x0011ffc8]
       0     1591        M                                           #; (lsu) t1  <-- 0x00100000
       0     1592        M 0x80000678 lw      a4, 80(a2)             #; a2  = 0x0011ff70, a4  <~~ Word[0x0011ffc0]
       0     1595        M                                           #; (lsu) a4  <-- 0x00100000
       0     1596        M 0x8000067c lw      a5, 84(a2)             #; a2  = 0x0011ff70, a5  <~~ Word[0x0011ffc4]
       0     1597        M 0x80000680 slli    a3, a0, 3              #; a0  = 25, (wrb) a3  <-- 200
       0     1598        M 0x80000684 add     a3, t1, a3             #; t1  = 0x00100000, a3  = 200, (wrb) a3  <-- 0x001000c8
       0     1599        M                                           #; (lsu) a5  <-- 0x0001df30
       0     1600        M 0x80000688 add     a4, a5, a4             #; a5  = 0x0001df30, a4  = 0x00100000, (wrb) a4  <-- 0x0011df30
       0     1601        M 0x8000068c bgeu    a4, a3, pc + 36        #; a4  = 0x0011df30, a3  = 0x001000c8, taken, goto 0x800006b0
       0     1620        M 0x800006b0 sw      a3, 88(a2)             #; a2  = 0x0011ff70, 0x001000c8 ~~> Word[0x0011ffc8]
       0     1621        M 0x800006b4 li      a2, 1                  #; (wrb) a2  <-- 1
       0     1622        M 0x800006b8 blt     a0, a2, pc - 28        #; a0  = 25, a2  = 1, not taken
       0     1623        M 0x800006bc addi    t0, a0, -1             #; a0  = 25, (wrb) t0  <-- 24
       0     1635        M 0x800006c0 slli    a2, t0, 3              #; t0  = 24, (wrb) a2  <-- 192
       0     1636        M 0x800006c4 add     a2, t1, a2             #; t1  = 0x00100000, a2  = 192, (wrb) a2  <-- 0x001000c0
       0     1637        M 0x800006c8 srli    a3, t1, 20             #; t1  = 0x00100000, (wrb) a3  <-- 1
       0     1638        M 0x800006cc snez    a6, a3                 #; a3  = 1, (wrb) a6  <-- 1
       0     1647        M 0x800006d0 bgeu    a2, t1, pc + 180       #; a2  = 0x001000c0, t1  = 0x00100000, taken, goto 0x80000784
       0     1670        M 0x80000784 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
       0     1671        M 0x80000788 addi    a3, a3, 1              #; a3  = 0x00120000, (wrb) a3  <-- 0x00120001
       0     1672        M 0x8000078c sltu    a2, a2, a3             #; a2  = 0x001000c0, a3  = 0x00120001, (wrb) a2  <-- 1
       0     1682        M 0x80000790 and     a7, a6, a2             #; a6  = 1, a2  = 1, (wrb) a7  <-- 1
       0     1683        M 0x80000794 beqz    a7, pc - 180           #; a7  = 1, not taken
       0     1684        M 0x80000798 li      a5, 0                  #; (wrb) a5  <-- 0
       0     1685        M 0x8000079c li      a2, 8                  #; (wrb) a2  <-- 8
       0     1696        M 0x800007a0 li      a3, 64                 #; (wrb) a3  <-- 64
       0     1697        M 0x800007a4 scfgw   t0, a3                 #; t0  = 24, a3  = 64
       0     1698        M 0x800007a8 li      a3, 192                #; (wrb) a3  <-- 192
       0     1699        M 0x800007ac scfgw   a2, a3                 #; a2  = 8, a3  = 192
       0     1708        M 0x800007b0 li      a2, 32                 #; (wrb) a2  <-- 32
       0     1709        M 0x800007b4 scfgw   zero, a2               #; a2  = 32
       0     1710        M 0x800007b8 scfgwi  t1, 896                #; t1  = 0x00100000
       0     1711        M 0x800007bc auipc   a2, 0x3                #; (wrb) a2  <-- 0x800037bc
       0     1720        M 0x800007c0 addi    a2, a2, -2020          #; a2  = 0x800037bc, (wrb) a2  <-- 0x80002fd8
       0     1723        M 0x800007cc lui     a2, 0x8421             #; (wrb) a2  <-- 0x08421000
                         M 0x800007c4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x80002fd8]
       0     1724        M 0x800007c8 csrsi   ssr, 1                 #; 
       0     1732        M 0x800007d0 addi    a4, a2, 133            #; a2  = 0x08421000, (wrb) a4  <-- 0x08421085
                         M                                           #; (f:lsu) ft3  <-- 1.4142
       0     1733        M 0x800007d4 mv      a3, a0                 #; a0  = 25, (wrb) a3  <-- 25
       0     1734        M 0x800007d8 mulhu   a1, a5, a4             #; a5  = 0, a4  = 0x08421085
       0     1737        M                                           #; (acc) a2  <-- 0x40b78633
       0     1738        M 0x800007dc sub     a2, a5, a1             #; a5  = 0, a1  = 0, (wrb) a2  <-- 0
       0     1744        M 0x800007e0 srli    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 0
       0     1745        M 0x800007e4 add     a1, a2, a1             #; a2  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1746        M 0x800007e8 srli    a1, a1, 4              #; a1  = 0, (wrb) a1  <-- 0
       0     1747        M 0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     1756        M 0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1757        M 0x800007f4 add     a1, a5, a1             #; a5  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1759        M 0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 0
       0     1760        M                                           #; (f:fpu) ft4  <-- 0.0
       0     1761        M 0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 0.0, ft3  = 1.4142
       0     1764        M                                           #; (f:fpu) ft4  <-- 0.0
       0     1769        M 0x80000804 addi    a3, a3, -1             #; a3  = 25, (wrb) a3  <-- 24
       0     1770        M 0x80000808 addi    a5, a5, 1              #; a5  = 0, (wrb) a5  <-- 1
                         M 0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 0.0, ft4  = 0.0
       0     1771        M 0x8000080c bnez    a3, pc - 52            #; a3  = 24, taken, goto 0x800007d8
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     1772        M 0x800007d8 mulhu   a1, a5, a4             #; a5  = 1, a4  = 0x08421085
       0     1775        M                                           #; (acc) a2  <-- 0x40b78633
       0     1776        M 0x800007dc sub     a2, a5, a1             #; a5  = 1, a1  = 0, (wrb) a2  <-- 1
       0     1777        M 0x800007e0 srli    a2, a2, 1              #; a2  = 1, (wrb) a2  <-- 0
       0     1778        M 0x800007e4 add     a1, a2, a1             #; a2  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1779        M 0x800007e8 srli    a1, a1, 4              #; a1  = 0, (wrb) a1  <-- 0
       0     1780        M 0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     1781        M 0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1782        M 0x800007f4 add     a1, a5, a1             #; a5  = 1, a1  = 0, (wrb) a1  <-- 1
       0     1784        M 0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 1
       0     1785        M                                           #; (f:fpu) ft4  <-- 1.0
       0     1786        M 0x80000804 addi    a3, a3, -1             #; a3  = 24, (wrb) a3  <-- 23
                         M 0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 1.4142
       0     1787        M 0x80000808 addi    a5, a5, 1              #; a5  = 1, (wrb) a5  <-- 2
       0     1788        M 0x8000080c bnez    a3, pc - 52            #; a3  = 23, taken, goto 0x800007d8
       0     1789        M 0x800007d8 mulhu   a1, a5, a4             #; a5  = 2, a4  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 1.4142
       0     1790        M 0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 1.4142, ft4  = 1.4142
       0     1791        M                                           #; (f:fpu) ft0  <-- 1.4142
       0     1792        M                                           #; (acc) a2  <-- 0x40b78633
       0     1793        M 0x800007dc sub     a2, a5, a1             #; a5  = 2, a1  = 0, (wrb) a2  <-- 2
       0     1794        M 0x800007e0 srli    a2, a2, 1              #; a2  = 2, (wrb) a2  <-- 1
       0     1795        M 0x800007e4 add     a1, a2, a1             #; a2  = 1, a1  = 0, (wrb) a1  <-- 1
       0     1796        M 0x800007e8 srli    a1, a1, 4              #; a1  = 1, (wrb) a1  <-- 0
       0     1797        M 0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     1798        M 0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1799        M 0x800007f4 add     a1, a5, a1             #; a5  = 2, a1  = 0, (wrb) a1  <-- 2
       0     1801        M 0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 2
       0     1802        M                                           #; (f:fpu) ft4  <-- 2.0
       0     1803        M 0x80000804 addi    a3, a3, -1             #; a3  = 23, (wrb) a3  <-- 22
                         M 0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 1.4142
       0     1804        M 0x80000808 addi    a5, a5, 1              #; a5  = 2, (wrb) a5  <-- 3
       0     1805        M 0x8000080c bnez    a3, pc - 52            #; a3  = 22, taken, goto 0x800007d8
       0     1806        M 0x800007d8 mulhu   a1, a5, a4             #; a5  = 3, a4  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 2.8284
       0     1807        M 0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 2.8284, ft4  = 2.8284
       0     1808        M                                           #; (f:fpu) ft0  <-- 2.8284
       0     1809        M                                           #; (acc) a2  <-- 0x40b78633
       0     1810        M 0x800007dc sub     a2, a5, a1             #; a5  = 3, a1  = 0, (wrb) a2  <-- 3
       0     1811        M 0x800007e0 srli    a2, a2, 1              #; a2  = 3, (wrb) a2  <-- 1
       0     1812        M 0x800007e4 add     a1, a2, a1             #; a2  = 1, a1  = 0, (wrb) a1  <-- 1
       0     1813        M 0x800007e8 srli    a1, a1, 4              #; a1  = 1, (wrb) a1  <-- 0
       0     1814        M 0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     1815        M 0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1816        M 0x800007f4 add     a1, a5, a1             #; a5  = 3, a1  = 0, (wrb) a1  <-- 3
       0     1818        M 0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 3
       0     1819        M                                           #; (f:fpu) ft4  <-- 3.0
       0     1820        M 0x80000804 addi    a3, a3, -1             #; a3  = 22, (wrb) a3  <-- 21
                         M 0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 1.4142
       0     1821        M 0x80000808 addi    a5, a5, 1              #; a5  = 3, (wrb) a5  <-- 4
       0     1822        M 0x8000080c bnez    a3, pc - 52            #; a3  = 21, taken, goto 0x800007d8
       0     1823        M 0x800007d8 mulhu   a1, a5, a4             #; a5  = 4, a4  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 4.2426000
       0     1824        M 0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 4.2426000, ft4  = 4.2426000
       0     1825        M                                           #; (f:fpu) ft0  <-- 4.2426000
       0     1826        M                                           #; (acc) a2  <-- 0x40b78633
       0     1827        M 0x800007dc sub     a2, a5, a1             #; a5  = 4, a1  = 0, (wrb) a2  <-- 4
       0     1828        M 0x800007e0 srli    a2, a2, 1              #; a2  = 4, (wrb) a2  <-- 2
       0     1829        M 0x800007e4 add     a1, a2, a1             #; a2  = 2, a1  = 0, (wrb) a1  <-- 2
       0     1830        M 0x800007e8 srli    a1, a1, 4              #; a1  = 2, (wrb) a1  <-- 0
       0     1831        M 0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     1832        M 0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1833        M 0x800007f4 add     a1, a5, a1             #; a5  = 4, a1  = 0, (wrb) a1  <-- 4
       0     1835        M 0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 4
       0     1836        M                                           #; (f:fpu) ft4  <-- 4.0
       0     1837        M 0x80000804 addi    a3, a3, -1             #; a3  = 21, (wrb) a3  <-- 20
                         M 0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 1.4142
       0     1838        M 0x80000808 addi    a5, a5, 1              #; a5  = 4, (wrb) a5  <-- 5
       0     1839        M 0x8000080c bnez    a3, pc - 52            #; a3  = 20, taken, goto 0x800007d8
       0     1840        M 0x800007d8 mulhu   a1, a5, a4             #; a5  = 5, a4  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 5.6568
       0     1841        M 0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 5.6568, ft4  = 5.6568
       0     1842        M                                           #; (f:fpu) ft0  <-- 5.6568
       0     1843        M                                           #; (acc) a2  <-- 0x40b78633
       0     1844        M 0x800007dc sub     a2, a5, a1             #; a5  = 5, a1  = 0, (wrb) a2  <-- 5
       0     1845        M 0x800007e0 srli    a2, a2, 1              #; a2  = 5, (wrb) a2  <-- 2
       0     1846        M 0x800007e4 add     a1, a2, a1             #; a2  = 2, a1  = 0, (wrb) a1  <-- 2
       0     1847        M 0x800007e8 srli    a1, a1, 4              #; a1  = 2, (wrb) a1  <-- 0
       0     1848        M 0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     1849        M 0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1850        M 0x800007f4 add     a1, a5, a1             #; a5  = 5, a1  = 0, (wrb) a1  <-- 5
       0     1852        M 0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 5
       0     1853        M                                           #; (f:fpu) ft4  <-- 5.0
       0     1854        M 0x80000804 addi    a3, a3, -1             #; a3  = 20, (wrb) a3  <-- 19
                         M 0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 1.4142
       0     1855        M 0x80000808 addi    a5, a5, 1              #; a5  = 5, (wrb) a5  <-- 6
       0     1856        M 0x8000080c bnez    a3, pc - 52            #; a3  = 19, taken, goto 0x800007d8
       0     1857        M 0x800007d8 mulhu   a1, a5, a4             #; a5  = 6, a4  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 7.071
       0     1858        M 0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 7.071, ft4  = 7.071
       0     1859        M                                           #; (f:fpu) ft0  <-- 7.071
       0     1860        M                                           #; (acc) a2  <-- 0x40b78633
       0     1861        M 0x800007dc sub     a2, a5, a1             #; a5  = 6, a1  = 0, (wrb) a2  <-- 6
       0     1862        M 0x800007e0 srli    a2, a2, 1              #; a2  = 6, (wrb) a2  <-- 3
       0     1863        M 0x800007e4 add     a1, a2, a1             #; a2  = 3, a1  = 0, (wrb) a1  <-- 3
       0     1864        M 0x800007e8 srli    a1, a1, 4              #; a1  = 3, (wrb) a1  <-- 0
       0     1865        M 0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     1866        M 0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1867        M 0x800007f4 add     a1, a5, a1             #; a5  = 6, a1  = 0, (wrb) a1  <-- 6
       0     1869        M 0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 6
       0     1870        M                                           #; (f:fpu) ft4  <-- 6.0
       0     1871        M 0x80000804 addi    a3, a3, -1             #; a3  = 19, (wrb) a3  <-- 18
                         M 0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 1.4142
       0     1872        M 0x80000808 addi    a5, a5, 1              #; a5  = 6, (wrb) a5  <-- 7
       0     1873        M 0x8000080c bnez    a3, pc - 52            #; a3  = 18, taken, goto 0x800007d8
       0     1874        M 0x800007d8 mulhu   a1, a5, a4             #; a5  = 7, a4  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 8.4852000
       0     1875        M 0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 8.4852000, ft4  = 8.4852000
       0     1876        M                                           #; (f:fpu) ft0  <-- 8.4852000
       0     1877        M                                           #; (acc) a2  <-- 0x40b78633
       0     1878        M 0x800007dc sub     a2, a5, a1             #; a5  = 7, a1  = 0, (wrb) a2  <-- 7
       0     1879        M 0x800007e0 srli    a2, a2, 1              #; a2  = 7, (wrb) a2  <-- 3
       0     1880        M 0x800007e4 add     a1, a2, a1             #; a2  = 3, a1  = 0, (wrb) a1  <-- 3
       0     1881        M 0x800007e8 srli    a1, a1, 4              #; a1  = 3, (wrb) a1  <-- 0
       0     1882        M 0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     1883        M 0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1884        M 0x800007f4 add     a1, a5, a1             #; a5  = 7, a1  = 0, (wrb) a1  <-- 7
       0     1886        M 0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 7
       0     1887        M                                           #; (f:fpu) ft4  <-- 7.0
       0     1888        M 0x80000804 addi    a3, a3, -1             #; a3  = 18, (wrb) a3  <-- 17
                         M 0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 1.4142
       0     1889        M 0x80000808 addi    a5, a5, 1              #; a5  = 7, (wrb) a5  <-- 8
       0     1890        M 0x8000080c bnez    a3, pc - 52            #; a3  = 17, taken, goto 0x800007d8
       0     1891        M 0x800007d8 mulhu   a1, a5, a4             #; a5  = 8, a4  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 9.8994
       0     1892        M 0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 9.8994, ft4  = 9.8994
       0     1893        M                                           #; (f:fpu) ft0  <-- 9.8994
       0     1894        M                                           #; (acc) a2  <-- 0x40b78633
       0     1895        M 0x800007dc sub     a2, a5, a1             #; a5  = 8, a1  = 0, (wrb) a2  <-- 8
       0     1896        M 0x800007e0 srli    a2, a2, 1              #; a2  = 8, (wrb) a2  <-- 4
       0     1897        M 0x800007e4 add     a1, a2, a1             #; a2  = 4, a1  = 0, (wrb) a1  <-- 4
       0     1898        M 0x800007e8 srli    a1, a1, 4              #; a1  = 4, (wrb) a1  <-- 0
       0     1899        M 0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     1900        M 0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1901        M 0x800007f4 add     a1, a5, a1             #; a5  = 8, a1  = 0, (wrb) a1  <-- 8
       0     1903        M 0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 8
       0     1904        M                                           #; (f:fpu) ft4  <-- 8.0
       0     1905        M 0x80000804 addi    a3, a3, -1             #; a3  = 17, (wrb) a3  <-- 16
                         M 0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 1.4142
       0     1906        M 0x80000808 addi    a5, a5, 1              #; a5  = 8, (wrb) a5  <-- 9
       0     1907        M 0x8000080c bnez    a3, pc - 52            #; a3  = 16, taken, goto 0x800007d8
       0     1908        M 0x800007d8 mulhu   a1, a5, a4             #; a5  = 9, a4  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 11.3136
       0     1909        M 0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 11.3136, ft4  = 11.3136
       0     1910        M                                           #; (f:fpu) ft0  <-- 11.3136
       0     1911        M                                           #; (acc) a2  <-- 0x40b78633
       0     1912        M 0x800007dc sub     a2, a5, a1             #; a5  = 9, a1  = 0, (wrb) a2  <-- 9
       0     1913        M 0x800007e0 srli    a2, a2, 1              #; a2  = 9, (wrb) a2  <-- 4
       0     1914        M 0x800007e4 add     a1, a2, a1             #; a2  = 4, a1  = 0, (wrb) a1  <-- 4
       0     1915        M 0x800007e8 srli    a1, a1, 4              #; a1  = 4, (wrb) a1  <-- 0
       0     1916        M 0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     1917        M 0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1918        M 0x800007f4 add     a1, a5, a1             #; a5  = 9, a1  = 0, (wrb) a1  <-- 9
       0     1920        M 0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 9
       0     1921        M                                           #; (f:fpu) ft4  <-- 9.0
       0     1922        M 0x80000804 addi    a3, a3, -1             #; a3  = 16, (wrb) a3  <-- 15
                         M 0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 1.4142
       0     1923        M 0x80000808 addi    a5, a5, 1              #; a5  = 9, (wrb) a5  <-- 10
       0     1924        M 0x8000080c bnez    a3, pc - 52            #; a3  = 15, taken, goto 0x800007d8
       0     1925        M 0x800007d8 mulhu   a1, a5, a4             #; a5  = 10, a4  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 12.7278000
       0     1926        M 0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.7278000, ft4  = 12.7278000
       0     1927        M                                           #; (f:fpu) ft0  <-- 12.7278000
       0     1928        M                                           #; (acc) a2  <-- 0x40b78633
       0     1929        M 0x800007dc sub     a2, a5, a1             #; a5  = 10, a1  = 0, (wrb) a2  <-- 10
       0     1930        M 0x800007e0 srli    a2, a2, 1              #; a2  = 10, (wrb) a2  <-- 5
       0     1931        M 0x800007e4 add     a1, a2, a1             #; a2  = 5, a1  = 0, (wrb) a1  <-- 5
       0     1932        M 0x800007e8 srli    a1, a1, 4              #; a1  = 5, (wrb) a1  <-- 0
       0     1933        M 0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     1934        M 0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1935        M 0x800007f4 add     a1, a5, a1             #; a5  = 10, a1  = 0, (wrb) a1  <-- 10
       0     1937        M 0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 10
       0     1938        M                                           #; (f:fpu) ft4  <-- 10.0
       0     1939        M 0x80000804 addi    a3, a3, -1             #; a3  = 15, (wrb) a3  <-- 14
                         M 0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 1.4142
       0     1940        M 0x80000808 addi    a5, a5, 1              #; a5  = 10, (wrb) a5  <-- 11
       0     1941        M 0x8000080c bnez    a3, pc - 52            #; a3  = 14, taken, goto 0x800007d8
       0     1942        M 0x800007d8 mulhu   a1, a5, a4             #; a5  = 11, a4  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 14.142
       0     1943        M 0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 14.142, ft4  = 14.142
       0     1944        M                                           #; (f:fpu) ft0  <-- 14.142
       0     1945        M                                           #; (acc) a2  <-- 0x40b78633
       0     1946        M 0x800007dc sub     a2, a5, a1             #; a5  = 11, a1  = 0, (wrb) a2  <-- 11
       0     1947        M 0x800007e0 srli    a2, a2, 1              #; a2  = 11, (wrb) a2  <-- 5
       0     1948        M 0x800007e4 add     a1, a2, a1             #; a2  = 5, a1  = 0, (wrb) a1  <-- 5
       0     1949        M 0x800007e8 srli    a1, a1, 4              #; a1  = 5, (wrb) a1  <-- 0
       0     1950        M 0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     1951        M 0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1952        M 0x800007f4 add     a1, a5, a1             #; a5  = 11, a1  = 0, (wrb) a1  <-- 11
       0     1954        M 0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 11
       0     1955        M                                           #; (f:fpu) ft4  <-- 11.0
       0     1956        M 0x80000804 addi    a3, a3, -1             #; a3  = 14, (wrb) a3  <-- 13
                         M 0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 1.4142
       0     1957        M 0x80000808 addi    a5, a5, 1              #; a5  = 11, (wrb) a5  <-- 12
       0     1958        M 0x8000080c bnez    a3, pc - 52            #; a3  = 13, taken, goto 0x800007d8
       0     1959        M 0x800007d8 mulhu   a1, a5, a4             #; a5  = 12, a4  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 15.5562000
       0     1960        M 0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 15.5562000, ft4  = 15.5562000
       0     1961        M                                           #; (f:fpu) ft0  <-- 15.5562000
       0     1962        M                                           #; (acc) a2  <-- 0x40b78633
       0     1963        M 0x800007dc sub     a2, a5, a1             #; a5  = 12, a1  = 0, (wrb) a2  <-- 12
       0     1964        M 0x800007e0 srli    a2, a2, 1              #; a2  = 12, (wrb) a2  <-- 6
       0     1965        M 0x800007e4 add     a1, a2, a1             #; a2  = 6, a1  = 0, (wrb) a1  <-- 6
       0     1966        M 0x800007e8 srli    a1, a1, 4              #; a1  = 6, (wrb) a1  <-- 0
       0     1967        M 0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     1968        M 0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1969        M 0x800007f4 add     a1, a5, a1             #; a5  = 12, a1  = 0, (wrb) a1  <-- 12
       0     1971        M 0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 12
       0     1972        M                                           #; (f:fpu) ft4  <-- 12.0
       0     1973        M 0x80000804 addi    a3, a3, -1             #; a3  = 13, (wrb) a3  <-- 12
                         M 0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 12.0, ft3  = 1.4142
       0     1974        M 0x80000808 addi    a5, a5, 1              #; a5  = 12, (wrb) a5  <-- 13
       0     1975        M 0x8000080c bnez    a3, pc - 52            #; a3  = 12, taken, goto 0x800007d8
       0     1976        M 0x800007d8 mulhu   a1, a5, a4             #; a5  = 13, a4  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 16.9704000
       0     1977        M 0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 16.9704000, ft4  = 16.9704000
       0     1978        M                                           #; (f:fpu) ft0  <-- 16.9704000
       0     1979        M                                           #; (acc) a2  <-- 0x40b78633
       0     1980        M 0x800007dc sub     a2, a5, a1             #; a5  = 13, a1  = 0, (wrb) a2  <-- 13
       0     1981        M 0x800007e0 srli    a2, a2, 1              #; a2  = 13, (wrb) a2  <-- 6
       0     1982        M 0x800007e4 add     a1, a2, a1             #; a2  = 6, a1  = 0, (wrb) a1  <-- 6
       0     1983        M 0x800007e8 srli    a1, a1, 4              #; a1  = 6, (wrb) a1  <-- 0
       0     1984        M 0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     1985        M 0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1986        M 0x800007f4 add     a1, a5, a1             #; a5  = 13, a1  = 0, (wrb) a1  <-- 13
       0     1988        M 0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 13
       0     1989        M                                           #; (f:fpu) ft4  <-- 13.0
       0     1990        M 0x80000804 addi    a3, a3, -1             #; a3  = 12, (wrb) a3  <-- 11
                         M 0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 13.0, ft3  = 1.4142
       0     1991        M 0x80000808 addi    a5, a5, 1              #; a5  = 13, (wrb) a5  <-- 14
       0     1992        M 0x8000080c bnez    a3, pc - 52            #; a3  = 11, taken, goto 0x800007d8
       0     1993        M 0x800007d8 mulhu   a1, a5, a4             #; a5  = 14, a4  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 18.3846
       0     1994        M 0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 18.3846, ft4  = 18.3846
       0     1995        M                                           #; (f:fpu) ft0  <-- 18.3846
       0     1996        M                                           #; (acc) a2  <-- 0x40b78633
       0     1997        M 0x800007dc sub     a2, a5, a1             #; a5  = 14, a1  = 0, (wrb) a2  <-- 14
       0     1998        M 0x800007e0 srli    a2, a2, 1              #; a2  = 14, (wrb) a2  <-- 7
       0     1999        M 0x800007e4 add     a1, a2, a1             #; a2  = 7, a1  = 0, (wrb) a1  <-- 7
       0     2000        M 0x800007e8 srli    a1, a1, 4              #; a1  = 7, (wrb) a1  <-- 0
       0     2001        M 0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     2002        M 0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     2003        M 0x800007f4 add     a1, a5, a1             #; a5  = 14, a1  = 0, (wrb) a1  <-- 14
       0     2005        M 0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 14
       0     2006        M                                           #; (f:fpu) ft4  <-- 14.0
       0     2007        M 0x80000804 addi    a3, a3, -1             #; a3  = 11, (wrb) a3  <-- 10
                         M 0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 14.0, ft3  = 1.4142
       0     2008        M 0x80000808 addi    a5, a5, 1              #; a5  = 14, (wrb) a5  <-- 15
       0     2009        M 0x8000080c bnez    a3, pc - 52            #; a3  = 10, taken, goto 0x800007d8
       0     2010        M 0x800007d8 mulhu   a1, a5, a4             #; a5  = 15, a4  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 19.7988
       0     2011        M 0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 19.7988, ft4  = 19.7988
       0     2012        M                                           #; (f:fpu) ft0  <-- 19.7988
       0     2013        M                                           #; (acc) a2  <-- 0x40b78633
       0     2014        M 0x800007dc sub     a2, a5, a1             #; a5  = 15, a1  = 0, (wrb) a2  <-- 15
       0     2015        M 0x800007e0 srli    a2, a2, 1              #; a2  = 15, (wrb) a2  <-- 7
       0     2016        M 0x800007e4 add     a1, a2, a1             #; a2  = 7, a1  = 0, (wrb) a1  <-- 7
       0     2017        M 0x800007e8 srli    a1, a1, 4              #; a1  = 7, (wrb) a1  <-- 0
       0     2018        M 0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     2019        M 0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     2020        M 0x800007f4 add     a1, a5, a1             #; a5  = 15, a1  = 0, (wrb) a1  <-- 15
       0     2022        M 0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 15
       0     2023        M                                           #; (f:fpu) ft4  <-- 15.0
       0     2024        M 0x80000804 addi    a3, a3, -1             #; a3  = 10, (wrb) a3  <-- 9
                         M 0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 15.0, ft3  = 1.4142
       0     2025        M 0x80000808 addi    a5, a5, 1              #; a5  = 15, (wrb) a5  <-- 16
       0     2026        M 0x8000080c bnez    a3, pc - 52            #; a3  = 9, taken, goto 0x800007d8
       0     2027        M 0x800007d8 mulhu   a1, a5, a4             #; a5  = 16, a4  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 21.2130000
       0     2028        M 0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 21.2130000, ft4  = 21.2130000
       0     2029        M                                           #; (f:fpu) ft0  <-- 21.2130000
       0     2030        M                                           #; (acc) a2  <-- 0x40b78633
       0     2031        M 0x800007dc sub     a2, a5, a1             #; a5  = 16, a1  = 0, (wrb) a2  <-- 16
       0     2032        M 0x800007e0 srli    a2, a2, 1              #; a2  = 16, (wrb) a2  <-- 8
       0     2033        M 0x800007e4 add     a1, a2, a1             #; a2  = 8, a1  = 0, (wrb) a1  <-- 8
       0     2034        M 0x800007e8 srli    a1, a1, 4              #; a1  = 8, (wrb) a1  <-- 0
       0     2035        M 0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     2036        M 0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     2037        M 0x800007f4 add     a1, a5, a1             #; a5  = 16, a1  = 0, (wrb) a1  <-- 16
       0     2039        M 0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 16
       0     2040        M                                           #; (f:fpu) ft4  <-- 16.0
       0     2041        M 0x80000804 addi    a3, a3, -1             #; a3  = 9, (wrb) a3  <-- 8
                         M 0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 16.0, ft3  = 1.4142
       0     2042        M 0x80000808 addi    a5, a5, 1              #; a5  = 16, (wrb) a5  <-- 17
       0     2043        M 0x8000080c bnez    a3, pc - 52            #; a3  = 8, taken, goto 0x800007d8
       0     2044        M 0x800007d8 mulhu   a1, a5, a4             #; a5  = 17, a4  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 22.6272
       0     2045        M 0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 22.6272, ft4  = 22.6272
       0     2046        M                                           #; (f:fpu) ft0  <-- 22.6272
       0     2047        M                                           #; (acc) a2  <-- 0x40b78633
       0     2048        M 0x800007dc sub     a2, a5, a1             #; a5  = 17, a1  = 0, (wrb) a2  <-- 17
       0     2049        M 0x800007e0 srli    a2, a2, 1              #; a2  = 17, (wrb) a2  <-- 8
       0     2050        M 0x800007e4 add     a1, a2, a1             #; a2  = 8, a1  = 0, (wrb) a1  <-- 8
       0     2051        M 0x800007e8 srli    a1, a1, 4              #; a1  = 8, (wrb) a1  <-- 0
       0     2052        M 0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     2053        M 0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     2054        M 0x800007f4 add     a1, a5, a1             #; a5  = 17, a1  = 0, (wrb) a1  <-- 17
       0     2056        M 0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 17
       0     2057        M                                           #; (f:fpu) ft4  <-- 17.0
       0     2058        M 0x80000804 addi    a3, a3, -1             #; a3  = 8, (wrb) a3  <-- 7
                         M 0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 17.0, ft3  = 1.4142
       0     2059        M 0x80000808 addi    a5, a5, 1              #; a5  = 17, (wrb) a5  <-- 18
       0     2060        M 0x8000080c bnez    a3, pc - 52            #; a3  = 7, taken, goto 0x800007d8
       0     2061        M 0x800007d8 mulhu   a1, a5, a4             #; a5  = 18, a4  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 24.0414
       0     2062        M 0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 24.0414, ft4  = 24.0414
       0     2063        M                                           #; (f:fpu) ft0  <-- 24.0414
       0     2064        M                                           #; (acc) a2  <-- 0x40b78633
       0     2065        M 0x800007dc sub     a2, a5, a1             #; a5  = 18, a1  = 0, (wrb) a2  <-- 18
       0     2066        M 0x800007e0 srli    a2, a2, 1              #; a2  = 18, (wrb) a2  <-- 9
       0     2067        M 0x800007e4 add     a1, a2, a1             #; a2  = 9, a1  = 0, (wrb) a1  <-- 9
       0     2068        M 0x800007e8 srli    a1, a1, 4              #; a1  = 9, (wrb) a1  <-- 0
       0     2069        M 0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     2070        M 0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     2071        M 0x800007f4 add     a1, a5, a1             #; a5  = 18, a1  = 0, (wrb) a1  <-- 18
       0     2073        M 0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 18
       0     2074        M                                           #; (f:fpu) ft4  <-- 18.0
       0     2075        M 0x80000804 addi    a3, a3, -1             #; a3  = 7, (wrb) a3  <-- 6
                         M 0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 18.0, ft3  = 1.4142
       0     2076        M 0x80000808 addi    a5, a5, 1              #; a5  = 18, (wrb) a5  <-- 19
       0     2077        M 0x8000080c bnez    a3, pc - 52            #; a3  = 6, taken, goto 0x800007d8
       0     2078        M 0x800007d8 mulhu   a1, a5, a4             #; a5  = 19, a4  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 25.4556000
       0     2079        M 0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.4556000, ft4  = 25.4556000
       0     2080        M                                           #; (f:fpu) ft0  <-- 25.4556000
       0     2081        M                                           #; (acc) a2  <-- 0x40b78633
       0     2082        M 0x800007dc sub     a2, a5, a1             #; a5  = 19, a1  = 0, (wrb) a2  <-- 19
       0     2083        M 0x800007e0 srli    a2, a2, 1              #; a2  = 19, (wrb) a2  <-- 9
       0     2084        M 0x800007e4 add     a1, a2, a1             #; a2  = 9, a1  = 0, (wrb) a1  <-- 9
       0     2085        M 0x800007e8 srli    a1, a1, 4              #; a1  = 9, (wrb) a1  <-- 0
       0     2086        M 0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     2087        M 0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     2088        M 0x800007f4 add     a1, a5, a1             #; a5  = 19, a1  = 0, (wrb) a1  <-- 19
       0     2090        M 0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 19
       0     2091        M                                           #; (f:fpu) ft4  <-- 19.0
       0     2092        M 0x80000804 addi    a3, a3, -1             #; a3  = 6, (wrb) a3  <-- 5
                         M 0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 19.0, ft3  = 1.4142
       0     2093        M 0x80000808 addi    a5, a5, 1              #; a5  = 19, (wrb) a5  <-- 20
       0     2094        M 0x8000080c bnez    a3, pc - 52            #; a3  = 5, taken, goto 0x800007d8
       0     2095        M 0x800007d8 mulhu   a1, a5, a4             #; a5  = 20, a4  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 26.8698000
       0     2096        M 0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 26.8698000, ft4  = 26.8698000
       0     2097        M                                           #; (f:fpu) ft0  <-- 26.8698000
       0     2098        M                                           #; (acc) a2  <-- 0x40b78633
       0     2099        M 0x800007dc sub     a2, a5, a1             #; a5  = 20, a1  = 0, (wrb) a2  <-- 20
       0     2100        M 0x800007e0 srli    a2, a2, 1              #; a2  = 20, (wrb) a2  <-- 10
       0     2101        M 0x800007e4 add     a1, a2, a1             #; a2  = 10, a1  = 0, (wrb) a1  <-- 10
       0     2102        M 0x800007e8 srli    a1, a1, 4              #; a1  = 10, (wrb) a1  <-- 0
       0     2103        M 0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     2104        M 0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     2105        M 0x800007f4 add     a1, a5, a1             #; a5  = 20, a1  = 0, (wrb) a1  <-- 20
       0     2107        M 0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 20
       0     2108        M                                           #; (f:fpu) ft4  <-- 20.0
       0     2109        M 0x80000804 addi    a3, a3, -1             #; a3  = 5, (wrb) a3  <-- 4
                         M 0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 20.0, ft3  = 1.4142
       0     2110        M 0x80000808 addi    a5, a5, 1              #; a5  = 20, (wrb) a5  <-- 21
       0     2111        M 0x8000080c bnez    a3, pc - 52            #; a3  = 4, taken, goto 0x800007d8
       0     2112        M 0x800007d8 mulhu   a1, a5, a4             #; a5  = 21, a4  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 28.284
       0     2113        M 0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 28.284, ft4  = 28.284
       0     2114        M                                           #; (f:fpu) ft0  <-- 28.284
       0     2115        M                                           #; (acc) a2  <-- 0x40b78633
       0     2116        M 0x800007dc sub     a2, a5, a1             #; a5  = 21, a1  = 0, (wrb) a2  <-- 21
       0     2117        M 0x800007e0 srli    a2, a2, 1              #; a2  = 21, (wrb) a2  <-- 10
       0     2118        M 0x800007e4 add     a1, a2, a1             #; a2  = 10, a1  = 0, (wrb) a1  <-- 10
       0     2119        M 0x800007e8 srli    a1, a1, 4              #; a1  = 10, (wrb) a1  <-- 0
       0     2120        M 0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     2121        M 0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     2122        M 0x800007f4 add     a1, a5, a1             #; a5  = 21, a1  = 0, (wrb) a1  <-- 21
       0     2124        M 0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 21
       0     2125        M                                           #; (f:fpu) ft4  <-- 21.0
       0     2126        M 0x80000804 addi    a3, a3, -1             #; a3  = 4, (wrb) a3  <-- 3
                         M 0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 21.0, ft3  = 1.4142
       0     2127        M 0x80000808 addi    a5, a5, 1              #; a5  = 21, (wrb) a5  <-- 22
       0     2128        M 0x8000080c bnez    a3, pc - 52            #; a3  = 3, taken, goto 0x800007d8
       0     2129        M 0x800007d8 mulhu   a1, a5, a4             #; a5  = 22, a4  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 29.6982000
       0     2130        M 0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 29.6982000, ft4  = 29.6982000
       0     2131        M                                           #; (f:fpu) ft0  <-- 29.6982000
       0     2132        M                                           #; (acc) a2  <-- 0x40b78633
       0     2133        M 0x800007dc sub     a2, a5, a1             #; a5  = 22, a1  = 0, (wrb) a2  <-- 22
       0     2134        M 0x800007e0 srli    a2, a2, 1              #; a2  = 22, (wrb) a2  <-- 11
       0     2135        M 0x800007e4 add     a1, a2, a1             #; a2  = 11, a1  = 0, (wrb) a1  <-- 11
       0     2136        M 0x800007e8 srli    a1, a1, 4              #; a1  = 11, (wrb) a1  <-- 0
       0     2137        M 0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     2138        M 0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     2139        M 0x800007f4 add     a1, a5, a1             #; a5  = 22, a1  = 0, (wrb) a1  <-- 22
       0     2141        M 0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 22
       0     2142        M                                           #; (f:fpu) ft4  <-- 22.0
       0     2143        M 0x80000804 addi    a3, a3, -1             #; a3  = 3, (wrb) a3  <-- 2
                         M 0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 22.0, ft3  = 1.4142
       0     2144        M 0x80000808 addi    a5, a5, 1              #; a5  = 22, (wrb) a5  <-- 23
       0     2145        M 0x8000080c bnez    a3, pc - 52            #; a3  = 2, taken, goto 0x800007d8
       0     2146        M 0x800007d8 mulhu   a1, a5, a4             #; a5  = 23, a4  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 31.1124000
       0     2147        M 0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 31.1124000, ft4  = 31.1124000
       0     2148        M                                           #; (f:fpu) ft0  <-- 31.1124000
       0     2149        M                                           #; (acc) a2  <-- 0x40b78633
       0     2150        M 0x800007dc sub     a2, a5, a1             #; a5  = 23, a1  = 0, (wrb) a2  <-- 23
       0     2151        M 0x800007e0 srli    a2, a2, 1              #; a2  = 23, (wrb) a2  <-- 11
       0     2152        M 0x800007e4 add     a1, a2, a1             #; a2  = 11, a1  = 0, (wrb) a1  <-- 11
       0     2153        M 0x800007e8 srli    a1, a1, 4              #; a1  = 11, (wrb) a1  <-- 0
       0     2154        M 0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     2155        M 0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     2156        M 0x800007f4 add     a1, a5, a1             #; a5  = 23, a1  = 0, (wrb) a1  <-- 23
       0     2158        M 0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 23
       0     2159        M                                           #; (f:fpu) ft4  <-- 23.0
       0     2160        M 0x80000804 addi    a3, a3, -1             #; a3  = 2, (wrb) a3  <-- 1
                         M 0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 23.0, ft3  = 1.4142
       0     2161        M 0x80000808 addi    a5, a5, 1              #; a5  = 23, (wrb) a5  <-- 24
       0     2162        M 0x8000080c bnez    a3, pc - 52            #; a3  = 1, taken, goto 0x800007d8
       0     2163        M 0x800007d8 mulhu   a1, a5, a4             #; a5  = 24, a4  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 32.5266000
       0     2164        M 0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 32.5266000, ft4  = 32.5266000
       0     2165        M                                           #; (f:fpu) ft0  <-- 32.5266000
       0     2166        M                                           #; (acc) a2  <-- 0x40b78633
       0     2167        M 0x800007dc sub     a2, a5, a1             #; a5  = 24, a1  = 0, (wrb) a2  <-- 24
       0     2168        M 0x800007e0 srli    a2, a2, 1              #; a2  = 24, (wrb) a2  <-- 12
       0     2169        M 0x800007e4 add     a1, a2, a1             #; a2  = 12, a1  = 0, (wrb) a1  <-- 12
       0     2170        M 0x800007e8 srli    a1, a1, 4              #; a1  = 12, (wrb) a1  <-- 0
       0     2171        M 0x800007ec slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     2172        M 0x800007f0 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     2173        M 0x800007f4 add     a1, a5, a1             #; a5  = 24, a1  = 0, (wrb) a1  <-- 24
       0     2175        M 0x800007f8 fcvt.d.w ft4, a1               #; ac1  = 24
       0     2176        M                                           #; (f:fpu) ft4  <-- 24.0
       0     2177        M 0x80000804 addi    a3, a3, -1             #; a3  = 1, (wrb) a3  <-- 0
                         M 0x800007fc fmul.d  ft4, ft4, ft3          #; ft4  = 24.0, ft3  = 1.4142
       0     2178        M 0x80000808 addi    a5, a5, 1              #; a5  = 24, (wrb) a5  <-- 25
       0     2179        M 0x8000080c bnez    a3, pc - 52            #; a3  = 0, not taken
       0     2180        M                                           #; (f:fpu) ft4  <-- 33.9408000
       0     2181        M 0x80000800 fsgnj.d ft0, ft4, ft4          #; ft4  = 33.9408000, ft4  = 33.9408000
       0     2182        M                                           #; (f:fpu) ft0  <-- 33.9408000
       0     2192        M 0x80000814 bnez    a7, pc - 212           #; a7  = 1, taken, goto 0x80000740
                         M 0x80000810 csrci   ssr, 1                 #; 
       0     2203        M 0x80000740 li      a1, 8                  #; (wrb) a1  <-- 8
       0     2204        M 0x80000744 li      a2, 64                 #; (wrb) a2  <-- 64
       0     2205        M 0x80000748 li      a3, 192                #; (wrb) a3  <-- 192
       0     2206        M 0x8000074c scfgw   t0, a2                 #; t0  = 24, a2  = 64
       0     2215        M 0x80000750 scfgw   a1, a3                 #; a1  = 8, a3  = 192
       0     2216        M 0x80000754 li      a1, 32                 #; (wrb) a1  <-- 32
       0     2217        M 0x80000758 scfgw   zero, a1               #; a1  = 32
       0     2218        M 0x8000075c scfgwi  t1, 768                #; t1  = 0x00100000
       0     2228        M 0x80000760 csrsi   ssr, 1                 #; 
       0     2229        M 0x80000768 mv      a2, a0                 #; a0  = 25, (wrb) a2  <-- 25
                         M 0x80000764 fcvt.d.w ft3, zero             #; ac1  = 0
       0     2230        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2232        M 0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     2233        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2239        M 0x80000770 addi    a2, a2, -1             #; a2  = 25, (wrb) a2  <-- 24
       0     2241        M 0x80000778 bnez    a2, pc - 12            #; a2  = 24, taken, goto 0x8000076c
       0     2242        M 0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 0.0, ft4  = 0.0, ft3  = 0.0
       0     2243        M 0x80000770 addi    a2, a2, -1             #; a2  = 24, (wrb) a2  <-- 23
       0     2244        M 0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 1.4142, ft0  = 1.4142
       0     2245        M 0x80000778 bnez    a2, pc - 12            #; a2  = 23, taken, goto 0x8000076c
                         M                                           #; (f:fpu) ft4  <-- 1.4142
       0     2246        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2247        M 0x80000770 addi    a2, a2, -1             #; a2  = 23, (wrb) a2  <-- 22
                         M 0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 1.4142, ft4  = 1.4142, ft3  = 0.0
       0     2248        M 0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 2.8284, ft0  = 2.8284
       0     2249        M 0x80000778 bnez    a2, pc - 12            #; a2  = 22, taken, goto 0x8000076c
                         M                                           #; (f:fpu) ft4  <-- 2.8284
       0     2250        M                                           #; (f:fpu) ft3  <-- 1.9999616
       0     2251        M 0x80000770 addi    a2, a2, -1             #; a2  = 22, (wrb) a2  <-- 21
                         M 0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 2.8284, ft4  = 2.8284, ft3  = 1.9999616
       0     2252        M 0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 4.2426000, ft0  = 4.2426000
       0     2253        M 0x80000778 bnez    a2, pc - 12            #; a2  = 21, taken, goto 0x8000076c
                         M                                           #; (f:fpu) ft4  <-- 4.2426000
       0     2254        M                                           #; (f:fpu) ft3  <-- 9.9998082
       0     2255        M 0x80000770 addi    a2, a2, -1             #; a2  = 21, (wrb) a2  <-- 20
                         M 0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 4.2426000, ft4  = 4.2426000, ft3  = 9.9998082
       0     2256        M 0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 5.6568, ft0  = 5.6568
       0     2257        M 0x80000778 bnez    a2, pc - 12            #; a2  = 20, taken, goto 0x8000076c
                         M                                           #; (f:fpu) ft4  <-- 5.6568
       0     2258        M                                           #; (f:fpu) ft3  <-- 27.9994630
       0     2259        M 0x80000770 addi    a2, a2, -1             #; a2  = 20, (wrb) a2  <-- 19
                         M 0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 5.6568, ft4  = 5.6568, ft3  = 27.9994630
       0     2260        M 0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 7.071, ft0  = 7.071
       0     2261        M 0x80000778 bnez    a2, pc - 12            #; a2  = 19, taken, goto 0x8000076c
                         M                                           #; (f:fpu) ft4  <-- 7.071
       0     2262        M                                           #; (f:fpu) ft3  <-- 59.9988492
       0     2263        M 0x80000770 addi    a2, a2, -1             #; a2  = 19, (wrb) a2  <-- 18
                         M 0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 7.071, ft4  = 7.071, ft3  = 59.9988492
       0     2264        M 0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 8.4852000, ft0  = 8.4852000
       0     2265        M 0x80000778 bnez    a2, pc - 12            #; a2  = 18, taken, goto 0x8000076c
                         M                                           #; (f:fpu) ft4  <-- 8.4852000
       0     2266        M                                           #; (f:fpu) ft3  <-- 109.9978902
       0     2267        M 0x80000770 addi    a2, a2, -1             #; a2  = 18, (wrb) a2  <-- 17
                         M 0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 8.4852000, ft4  = 8.4852000, ft3  = 109.9978902
       0     2268        M 0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 9.8994, ft0  = 9.8994
       0     2269        M 0x80000778 bnez    a2, pc - 12            #; a2  = 17, taken, goto 0x8000076c
                         M                                           #; (f:fpu) ft4  <-- 9.8994
       0     2270        M                                           #; (f:fpu) ft3  <-- 181.9965092
       0     2271        M 0x80000770 addi    a2, a2, -1             #; a2  = 17, (wrb) a2  <-- 16
                         M 0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 9.8994, ft4  = 9.8994, ft3  = 181.9965092
       0     2272        M 0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 11.3136, ft0  = 11.3136
       0     2273        M 0x80000778 bnez    a2, pc - 12            #; a2  = 16, taken, goto 0x8000076c
                         M                                           #; (f:fpu) ft4  <-- 11.3136
       0     2274        M                                           #; (f:fpu) ft3  <-- 279.9946296
       0     2275        M 0x80000770 addi    a2, a2, -1             #; a2  = 16, (wrb) a2  <-- 15
                         M 0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 11.3136, ft4  = 11.3136, ft3  = 279.9946296
       0     2276        M 0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 12.7278000, ft0  = 12.7278000
       0     2277        M 0x80000778 bnez    a2, pc - 12            #; a2  = 15, taken, goto 0x8000076c
                         M                                           #; (f:fpu) ft4  <-- 12.7278000
       0     2278        M                                           #; (f:fpu) ft3  <-- 407.9921746
       0     2279        M 0x80000770 addi    a2, a2, -1             #; a2  = 15, (wrb) a2  <-- 14
                         M 0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 12.7278000, ft4  = 12.7278000, ft3  = 407.9921746
       0     2280        M 0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 14.142, ft0  = 14.142
       0     2281        M 0x80000778 bnez    a2, pc - 12            #; a2  = 14, taken, goto 0x8000076c
                         M                                           #; (f:fpu) ft4  <-- 14.142
       0     2282        M                                           #; (f:fpu) ft3  <-- 569.9890674
       0     2283        M 0x80000770 addi    a2, a2, -1             #; a2  = 14, (wrb) a2  <-- 13
                         M 0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 14.142, ft4  = 14.142, ft3  = 569.9890674
       0     2284        M 0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 15.5562000, ft0  = 15.5562000
       0     2285        M 0x80000778 bnez    a2, pc - 12            #; a2  = 13, taken, goto 0x8000076c
                         M                                           #; (f:fpu) ft4  <-- 15.5562000
       0     2286        M                                           #; (f:fpu) ft3  <-- 769.9852314
       0     2287        M 0x80000770 addi    a2, a2, -1             #; a2  = 13, (wrb) a2  <-- 12
                         M 0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 15.5562000, ft4  = 15.5562000, ft3  = 769.9852314
       0     2288        M 0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 16.9704000, ft0  = 16.9704000
       0     2289        M 0x80000778 bnez    a2, pc - 12            #; a2  = 12, taken, goto 0x8000076c
                         M                                           #; (f:fpu) ft4  <-- 16.9704000
       0     2290        M                                           #; (f:fpu) ft3  <-- 1011.9805898
       0     2291        M 0x80000770 addi    a2, a2, -1             #; a2  = 12, (wrb) a2  <-- 11
                         M 0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 16.9704000, ft4  = 16.9704000, ft3  = 1011.9805898
       0     2292        M 0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 18.3846, ft0  = 18.3846
       0     2293        M 0x80000778 bnez    a2, pc - 12            #; a2  = 11, taken, goto 0x8000076c
                         M                                           #; (f:fpu) ft4  <-- 18.3846
       0     2294        M                                           #; (f:fpu) ft3  <-- 1299.9750660
       0     2295        M 0x80000770 addi    a2, a2, -1             #; a2  = 11, (wrb) a2  <-- 10
                         M 0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 18.3846, ft4  = 18.3846, ft3  = 1299.9750660
       0     2296        M 0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 19.7988, ft0  = 19.7988
       0     2297        M 0x80000778 bnez    a2, pc - 12            #; a2  = 10, taken, goto 0x8000076c
                         M                                           #; (f:fpu) ft4  <-- 19.7988
       0     2298        M                                           #; (f:fpu) ft3  <-- 1637.9685832
       0     2299        M 0x80000770 addi    a2, a2, -1             #; a2  = 10, (wrb) a2  <-- 9
                         M 0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 19.7988, ft4  = 19.7988, ft3  = 1637.9685832
       0     2300        M 0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 21.2130000, ft0  = 21.2130000
       0     2301        M 0x80000778 bnez    a2, pc - 12            #; a2  = 9, taken, goto 0x8000076c
                         M                                           #; (f:fpu) ft4  <-- 21.2130000
       0     2302        M                                           #; (f:fpu) ft3  <-- 2029.9610646
       0     2303        M 0x80000770 addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
                         M 0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 21.2130000, ft4  = 21.2130000, ft3  = 2029.9610646
       0     2304        M 0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 22.6272, ft0  = 22.6272
       0     2305        M 0x80000778 bnez    a2, pc - 12            #; a2  = 8, taken, goto 0x8000076c
                         M                                           #; (f:fpu) ft4  <-- 22.6272
       0     2306        M                                           #; (f:fpu) ft3  <-- 2479.9524336
       0     2307        M 0x80000770 addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
                         M 0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 22.6272, ft4  = 22.6272, ft3  = 2479.9524336
       0     2308        M 0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 24.0414, ft0  = 24.0414
       0     2309        M 0x80000778 bnez    a2, pc - 12            #; a2  = 7, taken, goto 0x8000076c
                         M                                           #; (f:fpu) ft4  <-- 24.0414
       0     2310        M                                           #; (f:fpu) ft3  <-- 2991.9426134
       0     2311        M 0x80000770 addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
                         M 0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 24.0414, ft4  = 24.0414, ft3  = 2991.9426134
       0     2312        M 0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 25.4556000, ft0  = 25.4556000
       0     2313        M 0x80000778 bnez    a2, pc - 12            #; a2  = 6, taken, goto 0x8000076c
                         M                                           #; (f:fpu) ft4  <-- 25.4556000
       0     2314        M                                           #; (f:fpu) ft3  <-- 3569.9315274
       0     2315        M 0x80000770 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 25.4556000, ft4  = 25.4556000, ft3  = 3569.9315274
       0     2316        M 0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 26.8698000, ft0  = 26.8698000
       0     2317        M 0x80000778 bnez    a2, pc - 12            #; a2  = 5, taken, goto 0x8000076c
                         M                                           #; (f:fpu) ft4  <-- 26.8698000
       0     2318        M                                           #; (f:fpu) ft3  <-- 4217.9190988
       0     2319        M 0x80000770 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 26.8698000, ft4  = 26.8698000, ft3  = 4217.9190988
       0     2320        M 0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 28.284, ft0  = 28.284
       0     2321        M 0x80000778 bnez    a2, pc - 12            #; a2  = 4, taken, goto 0x8000076c
                         M                                           #; (f:fpu) ft4  <-- 28.284
       0     2322        M                                           #; (f:fpu) ft3  <-- 4939.9052508
       0     2323        M 0x80000770 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 28.284, ft4  = 28.284, ft3  = 4939.9052508
       0     2324        M 0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 29.6982000, ft0  = 29.6982000
       0     2325        M 0x80000778 bnez    a2, pc - 12            #; a2  = 3, taken, goto 0x8000076c
                         M                                           #; (f:fpu) ft4  <-- 29.6982000
       0     2326        M                                           #; (f:fpu) ft3  <-- 5739.8899068
       0     2327        M 0x80000770 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 29.6982000, ft4  = 29.6982000, ft3  = 5739.8899068
       0     2328        M 0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 31.1124000, ft0  = 31.1124000
       0     2329        M 0x80000778 bnez    a2, pc - 12            #; a2  = 2, taken, goto 0x8000076c
                         M                                           #; (f:fpu) ft4  <-- 31.1124000
       0     2330        M                                           #; (f:fpu) ft3  <-- 6621.8729900
       0     2331        M 0x80000770 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 31.1124000, ft4  = 31.1124000, ft3  = 6621.8729900
       0     2332        M 0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 32.5266000, ft0  = 32.5266000
       0     2333        M 0x80000778 bnez    a2, pc - 12            #; a2  = 1, taken, goto 0x8000076c
                         M                                           #; (f:fpu) ft4  <-- 32.5266000
       0     2334        M                                           #; (f:fpu) ft3  <-- 7589.8544238
       0     2335        M 0x80000770 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 32.5266000, ft4  = 32.5266000, ft3  = 7589.8544238
       0     2336        M 0x8000076c fsgnj.d ft4, ft0, ft0          #; ft0  = 33.9408000, ft0  = 33.9408000
       0     2337        M 0x80000778 bnez    a2, pc - 12            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft4  <-- 33.9408000
       0     2338        M                                           #; (f:fpu) ft3  <-- 8647.8341314
       0     2339        M 0x80000774 fmadd.d ft3, ft4, ft4, ft3     #; ft4  = 33.9408000, ft4  = 33.9408000, ft3  = 8647.8341314
       0     2340        M 0x8000077c csrci   ssr, 1                 #; 
       0     2341        M 0x80000780 j       pc + 0xb8              #; goto 0x80000838
       0     2342        M                                           #; (f:fpu) ft3  <-- 9799.8120360
       0     2353        M 0x80000838 li      a4, 0                  #; (wrb) a4  <-- 0
       0     2355        M 0x8000083c fcvt.d.w ft4, zero             #; ac1  = 0
       0     2356        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2365        M 0x80000840 mv      a3, t1                 #; t1  = 0x00100000, (wrb) a3  <-- 0x00100000
       0     2366        M 0x80000844 j       pc + 0x10              #; goto 0x80000854
       0     2377        M 0x80000854 andi    a1, a4, 1              #; a4  = 0, (wrb) a1  <-- 0
       0     2378        M 0x80000858 bnez    a1, pc - 16            #; a1  = 0, not taken
       0     2381        M 0x8000085c fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100000]
       0     2382        M                                           #; (f:lsu) ft0  <-- 0.0
       0     2392        M 0x80000864 j       pc - 0x1c              #; goto 0x80000848
       0     2393        M 0x80000848 addi    a4, a4, 1              #; a4  = 0, (wrb) a4  <-- 1
                         M 0x80000860 fadd.d  ft4, ft0, ft4          #; ft0  = 0.0, ft4  = 0.0
       0     2394        M 0x8000084c addi    a3, a3, 8              #; a3  = 0x00100000, (wrb) a3  <-- 0x00100008
       0     2395        M 0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 1, not taken
       0     2396        M 0x80000854 andi    a1, a4, 1              #; a4  = 1, (wrb) a1  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     2397        M 0x80000858 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000848
       0     2398        M 0x80000848 addi    a4, a4, 1              #; a4  = 1, (wrb) a4  <-- 2
       0     2399        M 0x8000084c addi    a3, a3, 8              #; a3  = 0x00100008, (wrb) a3  <-- 0x00100010
       0     2400        M 0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 2, not taken
       0     2401        M 0x80000854 andi    a1, a4, 1              #; a4  = 2, (wrb) a1  <-- 0
       0     2402        M 0x80000858 bnez    a1, pc - 16            #; a1  = 0, not taken
       0     2405        M 0x80000864 j       pc - 0x1c              #; goto 0x80000848
                         M 0x8000085c fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100010]
       0     2406        M 0x80000848 addi    a4, a4, 1              #; a4  = 2, (wrb) a4  <-- 3
                         M                                           #; (f:lsu) ft0  <-- 2.8284
       0     2407        M 0x8000084c addi    a3, a3, 8              #; a3  = 0x00100010, (wrb) a3  <-- 0x00100018
                         M 0x80000860 fadd.d  ft4, ft0, ft4          #; ft0  = 2.8284, ft4  = 0.0
       0     2408        M 0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 3, not taken
       0     2409        M 0x80000854 andi    a1, a4, 1              #; a4  = 3, (wrb) a1  <-- 1
       0     2410        M 0x80000858 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000848
                         M                                           #; (f:fpu) ft4  <-- 2.8284
       0     2411        M 0x80000848 addi    a4, a4, 1              #; a4  = 3, (wrb) a4  <-- 4
       0     2412        M 0x8000084c addi    a3, a3, 8              #; a3  = 0x00100018, (wrb) a3  <-- 0x00100020
       0     2413        M 0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 4, not taken
       0     2414        M 0x80000854 andi    a1, a4, 1              #; a4  = 4, (wrb) a1  <-- 0
       0     2415        M 0x80000858 bnez    a1, pc - 16            #; a1  = 0, not taken
       0     2418        M 0x80000864 j       pc - 0x1c              #; goto 0x80000848
                         M 0x8000085c fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100020]
       0     2419        M 0x80000848 addi    a4, a4, 1              #; a4  = 4, (wrb) a4  <-- 5
                         M                                           #; (f:lsu) ft0  <-- 5.6568
       0     2420        M 0x8000084c addi    a3, a3, 8              #; a3  = 0x00100020, (wrb) a3  <-- 0x00100028
                         M 0x80000860 fadd.d  ft4, ft0, ft4          #; ft0  = 5.6568, ft4  = 2.8284
       0     2421        M 0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 5, not taken
       0     2422        M 0x80000854 andi    a1, a4, 1              #; a4  = 5, (wrb) a1  <-- 1
       0     2423        M 0x80000858 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000848
                         M                                           #; (f:fpu) ft4  <-- 8.4852000
       0     2424        M 0x80000848 addi    a4, a4, 1              #; a4  = 5, (wrb) a4  <-- 6
       0     2425        M 0x8000084c addi    a3, a3, 8              #; a3  = 0x00100028, (wrb) a3  <-- 0x00100030
       0     2426        M 0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 6, not taken
       0     2427        M 0x80000854 andi    a1, a4, 1              #; a4  = 6, (wrb) a1  <-- 0
       0     2428        M 0x80000858 bnez    a1, pc - 16            #; a1  = 0, not taken
       0     2431        M 0x80000864 j       pc - 0x1c              #; goto 0x80000848
                         M 0x8000085c fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100030]
       0     2432        M 0x80000848 addi    a4, a4, 1              #; a4  = 6, (wrb) a4  <-- 7
                         M                                           #; (f:lsu) ft0  <-- 8.4852000
       0     2433        M 0x8000084c addi    a3, a3, 8              #; a3  = 0x00100030, (wrb) a3  <-- 0x00100038
                         M 0x80000860 fadd.d  ft4, ft0, ft4          #; ft0  = 8.4852000, ft4  = 8.4852000
       0     2434        M 0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 7, not taken
       0     2435        M 0x80000854 andi    a1, a4, 1              #; a4  = 7, (wrb) a1  <-- 1
       0     2436        M 0x80000858 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000848
                         M                                           #; (f:fpu) ft4  <-- 16.9704000
       0     2437        M 0x80000848 addi    a4, a4, 1              #; a4  = 7, (wrb) a4  <-- 8
       0     2438        M 0x8000084c addi    a3, a3, 8              #; a3  = 0x00100038, (wrb) a3  <-- 0x00100040
       0     2439        M 0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 8, not taken
       0     2440        M 0x80000854 andi    a1, a4, 1              #; a4  = 8, (wrb) a1  <-- 0
       0     2441        M 0x80000858 bnez    a1, pc - 16            #; a1  = 0, not taken
       0     2444        M 0x80000864 j       pc - 0x1c              #; goto 0x80000848
                         M 0x8000085c fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100040]
       0     2445        M 0x80000848 addi    a4, a4, 1              #; a4  = 8, (wrb) a4  <-- 9
                         M                                           #; (f:lsu) ft0  <-- 11.3136
       0     2446        M 0x8000084c addi    a3, a3, 8              #; a3  = 0x00100040, (wrb) a3  <-- 0x00100048
                         M 0x80000860 fadd.d  ft4, ft0, ft4          #; ft0  = 11.3136, ft4  = 16.9704000
       0     2447        M 0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 9, not taken
       0     2448        M 0x80000854 andi    a1, a4, 1              #; a4  = 9, (wrb) a1  <-- 1
       0     2449        M 0x80000858 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000848
                         M                                           #; (f:fpu) ft4  <-- 28.284
       0     2450        M 0x80000848 addi    a4, a4, 1              #; a4  = 9, (wrb) a4  <-- 10
       0     2451        M 0x8000084c addi    a3, a3, 8              #; a3  = 0x00100048, (wrb) a3  <-- 0x00100050
       0     2452        M 0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 10, not taken
       0     2453        M 0x80000854 andi    a1, a4, 1              #; a4  = 10, (wrb) a1  <-- 0
       0     2454        M 0x80000858 bnez    a1, pc - 16            #; a1  = 0, not taken
       0     2457        M 0x80000864 j       pc - 0x1c              #; goto 0x80000848
                         M 0x8000085c fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100050]
       0     2458        M 0x80000848 addi    a4, a4, 1              #; a4  = 10, (wrb) a4  <-- 11
                         M                                           #; (f:lsu) ft0  <-- 14.142
       0     2459        M 0x8000084c addi    a3, a3, 8              #; a3  = 0x00100050, (wrb) a3  <-- 0x00100058
                         M 0x80000860 fadd.d  ft4, ft0, ft4          #; ft0  = 14.142, ft4  = 28.284
       0     2460        M 0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 11, not taken
       0     2461        M 0x80000854 andi    a1, a4, 1              #; a4  = 11, (wrb) a1  <-- 1
       0     2462        M 0x80000858 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000848
                         M                                           #; (f:fpu) ft4  <-- 42.426
       0     2463        M 0x80000848 addi    a4, a4, 1              #; a4  = 11, (wrb) a4  <-- 12
       0     2464        M 0x8000084c addi    a3, a3, 8              #; a3  = 0x00100058, (wrb) a3  <-- 0x00100060
       0     2465        M 0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 12, not taken
       0     2466        M 0x80000854 andi    a1, a4, 1              #; a4  = 12, (wrb) a1  <-- 0
       0     2467        M 0x80000858 bnez    a1, pc - 16            #; a1  = 0, not taken
       0     2470        M 0x80000864 j       pc - 0x1c              #; goto 0x80000848
                         M 0x8000085c fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100060]
       0     2471        M 0x80000848 addi    a4, a4, 1              #; a4  = 12, (wrb) a4  <-- 13
                         M                                           #; (f:lsu) ft0  <-- 16.9704000
       0     2472        M 0x8000084c addi    a3, a3, 8              #; a3  = 0x00100060, (wrb) a3  <-- 0x00100068
                         M 0x80000860 fadd.d  ft4, ft0, ft4          #; ft0  = 16.9704000, ft4  = 42.426
       0     2473        M 0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 13, not taken
       0     2474        M 0x80000854 andi    a1, a4, 1              #; a4  = 13, (wrb) a1  <-- 1
       0     2475        M 0x80000858 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000848
                         M                                           #; (f:fpu) ft4  <-- 59.3964
       0     2476        M 0x80000848 addi    a4, a4, 1              #; a4  = 13, (wrb) a4  <-- 14
       0     2477        M 0x8000084c addi    a3, a3, 8              #; a3  = 0x00100068, (wrb) a3  <-- 0x00100070
       0     2478        M 0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 14, not taken
       0     2479        M 0x80000854 andi    a1, a4, 1              #; a4  = 14, (wrb) a1  <-- 0
       0     2480        M 0x80000858 bnez    a1, pc - 16            #; a1  = 0, not taken
       0     2483        M 0x80000864 j       pc - 0x1c              #; goto 0x80000848
                         M 0x8000085c fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100070]
       0     2484        M 0x80000848 addi    a4, a4, 1              #; a4  = 14, (wrb) a4  <-- 15
                         M                                           #; (f:lsu) ft0  <-- 19.7988
       0     2485        M 0x8000084c addi    a3, a3, 8              #; a3  = 0x00100070, (wrb) a3  <-- 0x00100078
                         M 0x80000860 fadd.d  ft4, ft0, ft4          #; ft0  = 19.7988, ft4  = 59.3964
       0     2486        M 0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 15, not taken
       0     2487        M 0x80000854 andi    a1, a4, 1              #; a4  = 15, (wrb) a1  <-- 1
       0     2488        M 0x80000858 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000848
                         M                                           #; (f:fpu) ft4  <-- 79.1952
       0     2489        M 0x80000848 addi    a4, a4, 1              #; a4  = 15, (wrb) a4  <-- 16
       0     2490        M 0x8000084c addi    a3, a3, 8              #; a3  = 0x00100078, (wrb) a3  <-- 0x00100080
       0     2491        M 0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 16, not taken
       0     2492        M 0x80000854 andi    a1, a4, 1              #; a4  = 16, (wrb) a1  <-- 0
       0     2493        M 0x80000858 bnez    a1, pc - 16            #; a1  = 0, not taken
       0     2496        M 0x80000864 j       pc - 0x1c              #; goto 0x80000848
                         M 0x8000085c fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100080]
       0     2497        M 0x80000848 addi    a4, a4, 1              #; a4  = 16, (wrb) a4  <-- 17
                         M                                           #; (f:lsu) ft0  <-- 22.6272
       0     2498        M 0x8000084c addi    a3, a3, 8              #; a3  = 0x00100080, (wrb) a3  <-- 0x00100088
                         M 0x80000860 fadd.d  ft4, ft0, ft4          #; ft0  = 22.6272, ft4  = 79.1952
       0     2499        M 0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 17, not taken
       0     2500        M 0x80000854 andi    a1, a4, 1              #; a4  = 17, (wrb) a1  <-- 1
       0     2501        M 0x80000858 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000848
                         M                                           #; (f:fpu) ft4  <-- 101.8224
       0     2502        M 0x80000848 addi    a4, a4, 1              #; a4  = 17, (wrb) a4  <-- 18
       0     2503        M 0x8000084c addi    a3, a3, 8              #; a3  = 0x00100088, (wrb) a3  <-- 0x00100090
       0     2504        M 0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 18, not taken
       0     2505        M 0x80000854 andi    a1, a4, 1              #; a4  = 18, (wrb) a1  <-- 0
       0     2506        M 0x80000858 bnez    a1, pc - 16            #; a1  = 0, not taken
       0     2509        M 0x80000864 j       pc - 0x1c              #; goto 0x80000848
                         M 0x8000085c fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100090]
       0     2510        M 0x80000848 addi    a4, a4, 1              #; a4  = 18, (wrb) a4  <-- 19
                         M                                           #; (f:lsu) ft0  <-- 25.4556000
       0     2511        M 0x8000084c addi    a3, a3, 8              #; a3  = 0x00100090, (wrb) a3  <-- 0x00100098
                         M 0x80000860 fadd.d  ft4, ft0, ft4          #; ft0  = 25.4556000, ft4  = 101.8224
       0     2512        M 0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 19, not taken
       0     2513        M 0x80000854 andi    a1, a4, 1              #; a4  = 19, (wrb) a1  <-- 1
       0     2514        M 0x80000858 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000848
                         M                                           #; (f:fpu) ft4  <-- 127.2780000
       0     2515        M 0x80000848 addi    a4, a4, 1              #; a4  = 19, (wrb) a4  <-- 20
       0     2516        M 0x8000084c addi    a3, a3, 8              #; a3  = 0x00100098, (wrb) a3  <-- 0x001000a0
       0     2517        M 0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 20, not taken
       0     2518        M 0x80000854 andi    a1, a4, 1              #; a4  = 20, (wrb) a1  <-- 0
       0     2519        M 0x80000858 bnez    a1, pc - 16            #; a1  = 0, not taken
       0     2522        M 0x80000864 j       pc - 0x1c              #; goto 0x80000848
                         M 0x8000085c fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x001000a0]
       0     2523        M 0x80000848 addi    a4, a4, 1              #; a4  = 20, (wrb) a4  <-- 21
                         M                                           #; (f:lsu) ft0  <-- 28.284
       0     2524        M 0x8000084c addi    a3, a3, 8              #; a3  = 0x001000a0, (wrb) a3  <-- 0x001000a8
                         M 0x80000860 fadd.d  ft4, ft0, ft4          #; ft0  = 28.284, ft4  = 127.2780000
       0     2525        M 0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 21, not taken
       0     2526        M 0x80000854 andi    a1, a4, 1              #; a4  = 21, (wrb) a1  <-- 1
       0     2527        M 0x80000858 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000848
                         M                                           #; (f:fpu) ft4  <-- 155.5620000
       0     2528        M 0x80000848 addi    a4, a4, 1              #; a4  = 21, (wrb) a4  <-- 22
       0     2529        M 0x8000084c addi    a3, a3, 8              #; a3  = 0x001000a8, (wrb) a3  <-- 0x001000b0
       0     2530        M 0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 22, not taken
       0     2531        M 0x80000854 andi    a1, a4, 1              #; a4  = 22, (wrb) a1  <-- 0
       0     2532        M 0x80000858 bnez    a1, pc - 16            #; a1  = 0, not taken
       0     2535        M 0x80000864 j       pc - 0x1c              #; goto 0x80000848
                         M 0x8000085c fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x001000b0]
       0     2536        M 0x80000848 addi    a4, a4, 1              #; a4  = 22, (wrb) a4  <-- 23
                         M                                           #; (f:lsu) ft0  <-- 31.1124000
       0     2537        M 0x8000084c addi    a3, a3, 8              #; a3  = 0x001000b0, (wrb) a3  <-- 0x001000b8
                         M 0x80000860 fadd.d  ft4, ft0, ft4          #; ft0  = 31.1124000, ft4  = 155.5620000
       0     2538        M 0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 23, not taken
       0     2539        M 0x80000854 andi    a1, a4, 1              #; a4  = 23, (wrb) a1  <-- 1
       0     2540        M 0x80000858 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000848
                         M                                           #; (f:fpu) ft4  <-- 186.6744
       0     2541        M 0x80000848 addi    a4, a4, 1              #; a4  = 23, (wrb) a4  <-- 24
       0     2542        M 0x8000084c addi    a3, a3, 8              #; a3  = 0x001000b8, (wrb) a3  <-- 0x001000c0
       0     2543        M 0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 24, not taken
       0     2544        M 0x80000854 andi    a1, a4, 1              #; a4  = 24, (wrb) a1  <-- 0
       0     2545        M 0x80000858 bnez    a1, pc - 16            #; a1  = 0, not taken
       0     2548        M 0x80000864 j       pc - 0x1c              #; goto 0x80000848
                         M 0x8000085c fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x001000c0]
       0     2549        M 0x80000848 addi    a4, a4, 1              #; a4  = 24, (wrb) a4  <-- 25
                         M                                           #; (f:lsu) ft0  <-- 33.9408000
       0     2550        M 0x8000084c addi    a3, a3, 8              #; a3  = 0x001000c0, (wrb) a3  <-- 0x001000c8
                         M 0x80000860 fadd.d  ft4, ft0, ft4          #; ft0  = 33.9408000, ft4  = 186.6744
       0     2551        M 0x80000850 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 25, taken, goto 0x80000868
       0     2552        M 0x80000868 li      a1, 10                 #; (wrb) a1  <-- 10
       0     2553        M 0x8000086c mv      a5, t0                 #; t0  = 24, (wrb) a5  <-- 24
                         M                                           #; (f:fpu) ft4  <-- 220.6152
       0     2564        M 0x80000870 bltu    t0, a1, pc + 8         #; t0  = 24, a1  = 10, not taken
       0     2565        M 0x80000874 li      a5, 10                 #; (wrb) a5  <-- 10
       0     2566        M 0x80000878 slli    a1, a5, 3              #; a5  = 10, (wrb) a1  <-- 80
       0     2567        M 0x8000087c add     a2, t1, a1             #; t1  = 0x00100000, a1  = 80, (wrb) a2  <-- 0x00100050
       0     2576        M 0x80000880 bgeu    a2, t1, pc + 152       #; a2  = 0x00100050, t1  = 0x00100000, taken, goto 0x80000918
       0     2599        M 0x80000918 lui     a1, 0x120              #; (wrb) a1  <-- 0x00120000
       0     2600        M 0x8000091c addi    a1, a1, 1              #; a1  = 0x00120000, (wrb) a1  <-- 0x00120001
       0     2611        M 0x80000920 sltu    a2, a2, a1             #; a2  = 0x00100050, a1  = 0x00120001, (wrb) a2  <-- 1
       0     2612        M 0x80000924 and     a1, a6, a2             #; a6  = 1, a2  = 1, (wrb) a1  <-- 1
       0     2613        M 0x80000928 beqz    a1, pc - 152           #; a1  = 1, not taken
       0     2614        M 0x8000092c li      a1, 8                  #; (wrb) a1  <-- 8
       0     2626        M 0x80000930 li      a2, 64                 #; (wrb) a2  <-- 64
       0     2627        M 0x80000934 li      a3, 192                #; (wrb) a3  <-- 192
       0     2628        M 0x80000938 scfgw   a5, a2                 #; a5  = 10, a2  = 64
       0     2629        M 0x8000093c scfgw   a1, a3                 #; a1  = 8, a3  = 192
       0     2638        M 0x80000940 li      a1, 32                 #; (wrb) a1  <-- 32
       0     2639        M 0x80000944 scfgw   zero, a1               #; a1  = 32
       0     2640        M 0x80000948 scfgwi  t1, 768                #; t1  = 0x00100000
       0     2642        M 0x8000094c csrsi   ssr, 1                 #; 
       0     2650        M 0x80000950 addi    a2, a5, 1              #; a5  = 10, (wrb) a2  <-- 11
       0     2652        M 0x80000954 fcvt.d.w ft5, zero             #; ac1  = 0
       0     2653        M 0x8000095c addi    a2, a2, -1             #; a2  = 11, (wrb) a2  <-- 10
                         M                                           #; (f:fpu) ft5  <-- 0.0
       0     2654        M 0x80000958 fsgnj.d ft6, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     2655        M                                           #; (f:fpu) ft6  <-- 0.0
       0     2663        M 0x80000964 bnez    a2, pc - 12            #; a2  = 10, taken, goto 0x80000958
       0     2664        M 0x80000960 fadd.d  ft5, ft6, ft5          #; ft6  = 0.0, ft5  = 0.0
       0     2665        M 0x8000095c addi    a2, a2, -1             #; a2  = 10, (wrb) a2  <-- 9
       0     2666        M 0x80000958 fsgnj.d ft6, ft0, ft0          #; ft0  = 1.4142, ft0  = 1.4142
       0     2667        M 0x80000964 bnez    a2, pc - 12            #; a2  = 9, taken, goto 0x80000958
                         M                                           #; (f:fpu) ft6  <-- 1.4142
       0     2668        M                                           #; (f:fpu) ft5  <-- 0.0
       0     2669        M 0x8000095c addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
                         M 0x80000960 fadd.d  ft5, ft6, ft5          #; ft6  = 1.4142, ft5  = 0.0
       0     2670        M 0x80000958 fsgnj.d ft6, ft0, ft0          #; ft0  = 2.8284, ft0  = 2.8284
       0     2671        M 0x80000964 bnez    a2, pc - 12            #; a2  = 8, taken, goto 0x80000958
                         M                                           #; (f:fpu) ft6  <-- 2.8284
       0     2672        M                                           #; (f:fpu) ft5  <-- 1.4142
       0     2673        M 0x8000095c addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
                         M 0x80000960 fadd.d  ft5, ft6, ft5          #; ft6  = 2.8284, ft5  = 1.4142
       0     2674        M 0x80000958 fsgnj.d ft6, ft0, ft0          #; ft0  = 4.2426000, ft0  = 4.2426000
       0     2675        M 0x80000964 bnez    a2, pc - 12            #; a2  = 7, taken, goto 0x80000958
                         M                                           #; (f:fpu) ft6  <-- 4.2426000
       0     2676        M                                           #; (f:fpu) ft5  <-- 4.2426000
       0     2677        M 0x8000095c addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
                         M 0x80000960 fadd.d  ft5, ft6, ft5          #; ft6  = 4.2426000, ft5  = 4.2426000
       0     2678        M 0x80000958 fsgnj.d ft6, ft0, ft0          #; ft0  = 5.6568, ft0  = 5.6568
       0     2679        M 0x80000964 bnez    a2, pc - 12            #; a2  = 6, taken, goto 0x80000958
                         M                                           #; (f:fpu) ft6  <-- 5.6568
       0     2680        M                                           #; (f:fpu) ft5  <-- 8.4852000
       0     2681        M 0x8000095c addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x80000960 fadd.d  ft5, ft6, ft5          #; ft6  = 5.6568, ft5  = 8.4852000
       0     2682        M 0x80000958 fsgnj.d ft6, ft0, ft0          #; ft0  = 7.071, ft0  = 7.071
       0     2683        M 0x80000964 bnez    a2, pc - 12            #; a2  = 5, taken, goto 0x80000958
                         M                                           #; (f:fpu) ft6  <-- 7.071
       0     2684        M                                           #; (f:fpu) ft5  <-- 14.142
       0     2685        M 0x8000095c addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x80000960 fadd.d  ft5, ft6, ft5          #; ft6  = 7.071, ft5  = 14.142
       0     2686        M 0x80000958 fsgnj.d ft6, ft0, ft0          #; ft0  = 8.4852000, ft0  = 8.4852000
       0     2687        M 0x80000964 bnez    a2, pc - 12            #; a2  = 4, taken, goto 0x80000958
                         M                                           #; (f:fpu) ft6  <-- 8.4852000
       0     2688        M                                           #; (f:fpu) ft5  <-- 21.213
       0     2689        M 0x8000095c addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80000960 fadd.d  ft5, ft6, ft5          #; ft6  = 8.4852000, ft5  = 21.213
       0     2690        M 0x80000958 fsgnj.d ft6, ft0, ft0          #; ft0  = 9.8994, ft0  = 9.8994
       0     2691        M 0x80000964 bnez    a2, pc - 12            #; a2  = 3, taken, goto 0x80000958
                         M                                           #; (f:fpu) ft6  <-- 9.8994
       0     2692        M                                           #; (f:fpu) ft5  <-- 29.6982
       0     2693        M 0x8000095c addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x80000960 fadd.d  ft5, ft6, ft5          #; ft6  = 9.8994, ft5  = 29.6982
       0     2694        M 0x80000958 fsgnj.d ft6, ft0, ft0          #; ft0  = 11.3136, ft0  = 11.3136
       0     2695        M 0x80000964 bnez    a2, pc - 12            #; a2  = 2, taken, goto 0x80000958
                         M                                           #; (f:fpu) ft6  <-- 11.3136
       0     2696        M                                           #; (f:fpu) ft5  <-- 39.5976
       0     2697        M 0x8000095c addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x80000960 fadd.d  ft5, ft6, ft5          #; ft6  = 11.3136, ft5  = 39.5976
       0     2698        M 0x80000958 fsgnj.d ft6, ft0, ft0          #; ft0  = 12.7278000, ft0  = 12.7278000
       0     2699        M 0x80000964 bnez    a2, pc - 12            #; a2  = 1, taken, goto 0x80000958
                         M                                           #; (f:fpu) ft6  <-- 12.7278000
       0     2700        M                                           #; (f:fpu) ft5  <-- 50.9112
       0     2701        M 0x8000095c addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x80000960 fadd.d  ft5, ft6, ft5          #; ft6  = 12.7278000, ft5  = 50.9112
       0     2702        M 0x80000958 fsgnj.d ft6, ft0, ft0          #; ft0  = 14.142, ft0  = 14.142
       0     2703        M 0x80000964 bnez    a2, pc - 12            #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 14.142
       0     2704        M                                           #; (f:fpu) ft5  <-- 63.6390000
       0     2705        M 0x8000096c bnez    a7, pc - 184           #; a7  = 1, taken, goto 0x800008b4
                         M 0x80000960 fadd.d  ft5, ft6, ft5          #; ft6  = 14.142, ft5  = 63.6390000
       0     2706        M 0x80000968 csrci   ssr, 1                 #; 
       0     2708        M                                           #; (f:fpu) ft5  <-- 77.7810000
       0     2716        M 0x800008b4 li      a1, 8                  #; (wrb) a1  <-- 8
       0     2717        M 0x800008b8 li      a2, 64                 #; (wrb) a2  <-- 64
       0     2718        M 0x800008bc li      a3, 192                #; (wrb) a3  <-- 192
       0     2728        M 0x800008c0 scfgw   t0, a2                 #; t0  = 24, a2  = 64
       0     2729        M 0x800008c4 scfgw   a1, a3                 #; a1  = 8, a3  = 192
       0     2730        M 0x800008c8 li      a2, 32                 #; (wrb) a2  <-- 32
       0     2731        M 0x800008cc scfgw   zero, a2               #; a2  = 32, (acc) ra  <-- 0x00c020ab
       0     2740        M 0x800008d0 scfgwi  t1, 768                #; t1  = 0x00100000
       0     2741        M 0x800008d4 li      a2, 1                  #; (wrb) a2  <-- 1
       0     2742        M 0x800008d8 addi    a3, a2, 64             #; a2  = 1, (wrb) a3  <-- 65
       0     2743        M 0x800008dc addi    a4, a2, 192            #; a2  = 1, (wrb) a4  <-- 193
       0     2752        M 0x800008e0 scfgw   t0, a3                 #; t0  = 24, a3  = 65
       0     2753        M 0x800008e4 scfgw   a1, a4                 #; a1  = 8, a4  = 193
       0     2754        M 0x800008e8 addi    a1, a2, 32             #; a2  = 1, (wrb) a1  <-- 33
       0     2755        M 0x800008ec scfgw   zero, a1               #; a1  = 33, (acc) ra  <-- 0x00b020ab
       0     2764        M 0x800008f0 scfgwi  t1, 769                #; t1  = 0x00100000
       0     2766        M 0x800008f4 csrsi   ssr, 1                 #; 
       0     2767        M                                           #; (acc) t2  <-- 0x220003d3
                         M 0x800008f8 fcvt.d.w ft6, zero             #; ac1  = 0
       0     2768        M                                           #; (f:fpu) ft6  <-- 0.0
       0     2769        M 0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     2770        M                                           #; (f:fpu) ft7  <-- 0.0
       0     2777        M 0x80000904 addi    a0, a0, -1             #; a0  = 25, (wrb) a0  <-- 24
       0     2778        M 0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 0.0, ft1  = 0.0
       0     2779        M 0x8000090c bnez    a0, pc - 16            #; a0  = 24, taken, goto 0x800008fc
                         M                                           #; (f:fpu) fa0  <-- 0.0
       0     2780        M 0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 0.0, ft7  = 0.0, ft6  = 0.0
       0     2782        M 0x80000904 addi    a0, a0, -1             #; a0  = 24, (wrb) a0  <-- 23
                         M 0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 1.4142, ft0  = 1.4142
       0     2783        M 0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 1.4142, ft1  = 1.4142, (f:fpu) ft7  <-- 1.4142
       0     2784        M 0x8000090c bnez    a0, pc - 16            #; a0  = 23, taken, goto 0x800008fc
                         M                                           #; (f:fpu) ft6  <-- 0.0
       0     2785        M                                           #; (f:fpu) fa0  <-- 1.4142
       0     2786        M 0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 1.4142, ft7  = 1.4142, ft6  = 0.0
       0     2787        M 0x80000904 addi    a0, a0, -1             #; a0  = 23, (wrb) a0  <-- 22
                         M 0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 2.8284, ft0  = 2.8284
       0     2788        M 0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 2.8284, ft1  = 2.8284, (f:fpu) ft7  <-- 2.8284
       0     2789        M 0x8000090c bnez    a0, pc - 16            #; a0  = 22, taken, goto 0x800008fc
                         M                                           #; (f:fpu) fa0  <-- 2.8284
       0     2790        M                                           #; (f:fpu) ft6  <-- 1.9999616
       0     2791        M 0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 2.8284, ft7  = 2.8284, ft6  = 1.9999616
       0     2792        M 0x80000904 addi    a0, a0, -1             #; a0  = 22, (wrb) a0  <-- 21
                         M 0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 4.2426000, ft0  = 4.2426000
       0     2793        M 0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 4.2426000, ft1  = 4.2426000, (f:fpu) ft7  <-- 4.2426000
       0     2794        M 0x8000090c bnez    a0, pc - 16            #; a0  = 21, taken, goto 0x800008fc
                         M                                           #; (f:fpu) fa0  <-- 4.2426000
       0     2795        M                                           #; (f:fpu) ft6  <-- 9.9998082
       0     2796        M 0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 4.2426000, ft7  = 4.2426000, ft6  = 9.9998082
       0     2797        M 0x80000904 addi    a0, a0, -1             #; a0  = 21, (wrb) a0  <-- 20
                         M 0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 5.6568, ft0  = 5.6568
       0     2798        M 0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 5.6568, ft1  = 5.6568, (f:fpu) ft7  <-- 5.6568
       0     2799        M 0x8000090c bnez    a0, pc - 16            #; a0  = 20, taken, goto 0x800008fc
                         M                                           #; (f:fpu) fa0  <-- 5.6568
       0     2800        M                                           #; (f:fpu) ft6  <-- 27.9994630
       0     2801        M 0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 5.6568, ft7  = 5.6568, ft6  = 27.9994630
       0     2802        M 0x80000904 addi    a0, a0, -1             #; a0  = 20, (wrb) a0  <-- 19
                         M 0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 7.071, ft0  = 7.071
       0     2803        M 0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 7.071, ft1  = 7.071, (f:fpu) ft7  <-- 7.071
       0     2804        M 0x8000090c bnez    a0, pc - 16            #; a0  = 19, taken, goto 0x800008fc
                         M                                           #; (f:fpu) fa0  <-- 7.071
       0     2805        M                                           #; (f:fpu) ft6  <-- 59.9988492
       0     2806        M 0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 7.071, ft7  = 7.071, ft6  = 59.9988492
       0     2807        M 0x80000904 addi    a0, a0, -1             #; a0  = 19, (wrb) a0  <-- 18
                         M 0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 8.4852000, ft0  = 8.4852000
       0     2808        M 0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 8.4852000, ft1  = 8.4852000, (f:fpu) ft7  <-- 8.4852000
       0     2809        M 0x8000090c bnez    a0, pc - 16            #; a0  = 18, taken, goto 0x800008fc
                         M                                           #; (f:fpu) fa0  <-- 8.4852000
       0     2810        M                                           #; (f:fpu) ft6  <-- 109.9978902
       0     2811        M 0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 8.4852000, ft7  = 8.4852000, ft6  = 109.9978902
       0     2812        M 0x80000904 addi    a0, a0, -1             #; a0  = 18, (wrb) a0  <-- 17
                         M 0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 9.8994, ft0  = 9.8994
       0     2813        M 0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 9.8994, ft1  = 9.8994, (f:fpu) ft7  <-- 9.8994
       0     2814        M 0x8000090c bnez    a0, pc - 16            #; a0  = 17, taken, goto 0x800008fc
                         M                                           #; (f:fpu) fa0  <-- 9.8994
       0     2815        M                                           #; (f:fpu) ft6  <-- 181.9965092
       0     2816        M 0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 9.8994, ft7  = 9.8994, ft6  = 181.9965092
       0     2817        M 0x80000904 addi    a0, a0, -1             #; a0  = 17, (wrb) a0  <-- 16
                         M 0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 11.3136, ft0  = 11.3136
       0     2818        M 0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 11.3136, ft1  = 11.3136, (f:fpu) ft7  <-- 11.3136
       0     2819        M 0x8000090c bnez    a0, pc - 16            #; a0  = 16, taken, goto 0x800008fc
                         M                                           #; (f:fpu) fa0  <-- 11.3136
       0     2820        M                                           #; (f:fpu) ft6  <-- 279.9946296
       0     2821        M 0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 11.3136, ft7  = 11.3136, ft6  = 279.9946296
       0     2822        M 0x80000904 addi    a0, a0, -1             #; a0  = 16, (wrb) a0  <-- 15
                         M 0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 12.7278000, ft0  = 12.7278000
       0     2823        M 0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 12.7278000, ft1  = 12.7278000, (f:fpu) ft7  <-- 12.7278000
       0     2824        M 0x8000090c bnez    a0, pc - 16            #; a0  = 15, taken, goto 0x800008fc
                         M                                           #; (f:fpu) fa0  <-- 12.7278000
       0     2825        M                                           #; (f:fpu) ft6  <-- 407.9921746
       0     2826        M 0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 12.7278000, ft7  = 12.7278000, ft6  = 407.9921746
       0     2827        M 0x80000904 addi    a0, a0, -1             #; a0  = 15, (wrb) a0  <-- 14
                         M 0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 14.142, ft0  = 14.142
       0     2828        M 0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 14.142, ft1  = 14.142, (f:fpu) ft7  <-- 14.142
       0     2829        M 0x8000090c bnez    a0, pc - 16            #; a0  = 14, taken, goto 0x800008fc
                         M                                           #; (f:fpu) fa0  <-- 14.142
       0     2830        M                                           #; (f:fpu) ft6  <-- 569.9890674
       0     2831        M 0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 14.142, ft7  = 14.142, ft6  = 569.9890674
       0     2832        M 0x80000904 addi    a0, a0, -1             #; a0  = 14, (wrb) a0  <-- 13
                         M 0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 15.5562000, ft0  = 15.5562000
       0     2833        M 0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 15.5562000, ft1  = 15.5562000, (f:fpu) ft7  <-- 15.5562000
       0     2834        M 0x8000090c bnez    a0, pc - 16            #; a0  = 13, taken, goto 0x800008fc
                         M                                           #; (f:fpu) fa0  <-- 15.5562000
       0     2835        M                                           #; (f:fpu) ft6  <-- 769.9852314
       0     2836        M 0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 15.5562000, ft7  = 15.5562000, ft6  = 769.9852314
       0     2837        M 0x80000904 addi    a0, a0, -1             #; a0  = 13, (wrb) a0  <-- 12
                         M 0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 16.9704000, ft0  = 16.9704000
       0     2838        M 0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 16.9704000, ft1  = 16.9704000, (f:fpu) ft7  <-- 16.9704000
       0     2839        M 0x8000090c bnez    a0, pc - 16            #; a0  = 12, taken, goto 0x800008fc
                         M                                           #; (f:fpu) fa0  <-- 16.9704000
       0     2840        M                                           #; (f:fpu) ft6  <-- 1011.9805898
       0     2841        M 0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 16.9704000, ft7  = 16.9704000, ft6  = 1011.9805898
       0     2842        M 0x80000904 addi    a0, a0, -1             #; a0  = 12, (wrb) a0  <-- 11
                         M 0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 18.3846, ft0  = 18.3846
       0     2843        M 0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 18.3846, ft1  = 18.3846, (f:fpu) ft7  <-- 18.3846
       0     2844        M 0x8000090c bnez    a0, pc - 16            #; a0  = 11, taken, goto 0x800008fc
                         M                                           #; (f:fpu) fa0  <-- 18.3846
       0     2845        M                                           #; (f:fpu) ft6  <-- 1299.9750660
       0     2846        M 0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 18.3846, ft7  = 18.3846, ft6  = 1299.9750660
       0     2847        M 0x80000904 addi    a0, a0, -1             #; a0  = 11, (wrb) a0  <-- 10
                         M 0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 19.7988, ft0  = 19.7988
       0     2848        M 0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 19.7988, ft1  = 19.7988, (f:fpu) ft7  <-- 19.7988
       0     2849        M 0x8000090c bnez    a0, pc - 16            #; a0  = 10, taken, goto 0x800008fc
                         M                                           #; (f:fpu) fa0  <-- 19.7988
       0     2850        M                                           #; (f:fpu) ft6  <-- 1637.9685832
       0     2851        M 0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 19.7988, ft7  = 19.7988, ft6  = 1637.9685832
       0     2852        M 0x80000904 addi    a0, a0, -1             #; a0  = 10, (wrb) a0  <-- 9
                         M 0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 21.2130000, ft0  = 21.2130000
       0     2853        M 0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 21.2130000, ft1  = 21.2130000, (f:fpu) ft7  <-- 21.2130000
       0     2854        M 0x8000090c bnez    a0, pc - 16            #; a0  = 9, taken, goto 0x800008fc
                         M                                           #; (f:fpu) fa0  <-- 21.2130000
       0     2855        M                                           #; (f:fpu) ft6  <-- 2029.9610646
       0     2856        M 0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 21.2130000, ft7  = 21.2130000, ft6  = 2029.9610646
       0     2857        M 0x80000904 addi    a0, a0, -1             #; a0  = 9, (wrb) a0  <-- 8
                         M 0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 22.6272, ft0  = 22.6272
       0     2858        M 0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 22.6272, ft1  = 22.6272, (f:fpu) ft7  <-- 22.6272
       0     2859        M 0x8000090c bnez    a0, pc - 16            #; a0  = 8, taken, goto 0x800008fc
                         M                                           #; (f:fpu) fa0  <-- 22.6272
       0     2860        M                                           #; (f:fpu) ft6  <-- 2479.9524336
       0     2861        M 0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 22.6272, ft7  = 22.6272, ft6  = 2479.9524336
       0     2862        M 0x80000904 addi    a0, a0, -1             #; a0  = 8, (wrb) a0  <-- 7
                         M 0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 24.0414, ft0  = 24.0414
       0     2863        M 0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 24.0414, ft1  = 24.0414, (f:fpu) ft7  <-- 24.0414
       0     2864        M 0x8000090c bnez    a0, pc - 16            #; a0  = 7, taken, goto 0x800008fc
                         M                                           #; (f:fpu) fa0  <-- 24.0414
       0     2865        M                                           #; (f:fpu) ft6  <-- 2991.9426134
       0     2866        M 0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 24.0414, ft7  = 24.0414, ft6  = 2991.9426134
       0     2867        M 0x80000904 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
                         M 0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 25.4556000, ft0  = 25.4556000
       0     2868        M 0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 25.4556000, ft1  = 25.4556000, (f:fpu) ft7  <-- 25.4556000
       0     2869        M 0x8000090c bnez    a0, pc - 16            #; a0  = 6, taken, goto 0x800008fc
                         M                                           #; (f:fpu) fa0  <-- 25.4556000
       0     2870        M                                           #; (f:fpu) ft6  <-- 3569.9315274
       0     2871        M 0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 25.4556000, ft7  = 25.4556000, ft6  = 3569.9315274
       0     2872        M 0x80000904 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
                         M 0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 26.8698000, ft0  = 26.8698000
       0     2873        M 0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 26.8698000, ft1  = 26.8698000, (f:fpu) ft7  <-- 26.8698000
       0     2874        M 0x8000090c bnez    a0, pc - 16            #; a0  = 5, taken, goto 0x800008fc
                         M                                           #; (f:fpu) fa0  <-- 26.8698000
       0     2875        M                                           #; (f:fpu) ft6  <-- 4217.9190988
       0     2876        M 0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 26.8698000, ft7  = 26.8698000, ft6  = 4217.9190988
       0     2877        M 0x80000904 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
                         M 0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 28.284, ft0  = 28.284
       0     2878        M 0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 28.284, ft1  = 28.284, (f:fpu) ft7  <-- 28.284
       0     2879        M 0x8000090c bnez    a0, pc - 16            #; a0  = 4, taken, goto 0x800008fc
                         M                                           #; (f:fpu) fa0  <-- 28.284
       0     2880        M                                           #; (f:fpu) ft6  <-- 4939.9052508
       0     2881        M 0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 28.284, ft7  = 28.284, ft6  = 4939.9052508
       0     2882        M 0x80000904 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
                         M 0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 29.6982000, ft0  = 29.6982000
       0     2883        M 0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 29.6982000, ft1  = 29.6982000, (f:fpu) ft7  <-- 29.6982000
       0     2884        M 0x8000090c bnez    a0, pc - 16            #; a0  = 3, taken, goto 0x800008fc
                         M                                           #; (f:fpu) fa0  <-- 29.6982000
       0     2885        M                                           #; (f:fpu) ft6  <-- 5739.8899068
       0     2886        M 0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 29.6982000, ft7  = 29.6982000, ft6  = 5739.8899068
       0     2887        M 0x80000904 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
                         M 0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 31.1124000, ft0  = 31.1124000
       0     2888        M 0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 31.1124000, ft1  = 31.1124000, (f:fpu) ft7  <-- 31.1124000
       0     2889        M 0x8000090c bnez    a0, pc - 16            #; a0  = 2, taken, goto 0x800008fc
                         M                                           #; (f:fpu) fa0  <-- 31.1124000
       0     2890        M                                           #; (f:fpu) ft6  <-- 6621.8729900
       0     2891        M 0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 31.1124000, ft7  = 31.1124000, ft6  = 6621.8729900
       0     2892        M 0x80000904 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
                         M 0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 32.5266000, ft0  = 32.5266000
       0     2893        M 0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 32.5266000, ft1  = 32.5266000, (f:fpu) ft7  <-- 32.5266000
       0     2894        M 0x8000090c bnez    a0, pc - 16            #; a0  = 1, taken, goto 0x800008fc
                         M                                           #; (f:fpu) fa0  <-- 32.5266000
       0     2895        M                                           #; (f:fpu) ft6  <-- 7589.8544238
       0     2896        M 0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 32.5266000, ft7  = 32.5266000, ft6  = 7589.8544238
       0     2897        M 0x80000904 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
                         M 0x800008fc fsgnj.d ft7, ft0, ft0          #; ft0  = 33.9408000, ft0  = 33.9408000
       0     2898        M 0x80000900 fsgnj.d fa0, ft1, ft1          #; ft1  = 33.9408000, ft1  = 33.9408000, (f:fpu) ft7  <-- 33.9408000
       0     2899        M 0x8000090c bnez    a0, pc - 16            #; a0  = 0, not taken
                         M                                           #; (f:fpu) fa0  <-- 33.9408000
       0     2900        M                                           #; (f:fpu) ft6  <-- 8647.8341314
       0     2901        M 0x80000908 fmadd.d ft6, fa0, ft7, ft6     #; fa0  = 33.9408000, ft7  = 33.9408000, ft6  = 8647.8341314
       0     2903        M 0x80000914 j       pc + 0x74              #; goto 0x80000988
                         M 0x80000910 csrci   ssr, 1                 #; 
       0     2904        M                                           #; (f:fpu) ft6  <-- 9799.8120360
       0     2914        M 0x80000988 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002988
       0     2915        M 0x8000098c addi    a0, a0, 1632           #; a0  = 0x80002988, (wrb) a0  <-- 0x80002fe8
       0     2927        M 0x80000994 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002994
       0     2928        M 0x80000998 addi    a0, a0, 1612           #; a0  = 0x80002994, (wrb) a0  <-- 0x80002fe0
                         M 0x80000990 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002fe8]
       0     2931        M 0x8000099c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002fe0]
       0     2937        M                                           #; (f:lsu) ft0  <-- -220.6152000
       0     2939        M 0x800009a4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800029a4
       0     2940        M 0x800009a8 addi    a0, a0, 1612           #; a0  = 0x800029a4, (wrb) a0  <-- 0x80002ff0
                         M 0x800009a0 fadd.d  ft0, ft4, ft0          #; ft4  = 220.6152, ft0  = -220.6152000, (f:lsu) ft1  <-- -9799.8120360
       0     2943        M 0x800009ac fld     ft2, 0(a0)             #; ft2  <~~ Doub[0x80002ff0], (f:fpu) ft0  <-- 0.0
       0     2952        M 0x800009b0 fadd.d  ft3, ft3, ft1          #; ft3  = 9799.8120360, ft1  = -9799.8120360, (f:lsu) ft2  <-- -77.781
       0     2955        M                                           #; (f:fpu) ft3  <-- -0.0000000
       0     2956        M 0x800009b4 fsgnjx.d ft3, ft3, ft3         #; ft3  = -0.0000000, ft3  = -0.0000000
       0     2957        M 0x800009b8 fsgnjx.d ft0, ft0, ft0         #; ft0  = 0.0, ft0  = 0.0, (f:fpu) ft3  <-- 0.0000000
       0     2958        M 0x800009bc fadd.d  ft2, ft5, ft2          #; ft5  = 77.7810000, ft2  = -77.781, (f:fpu) ft0  <-- 0.0
       0     2961        M                                           #; (f:fpu) ft2  <-- -0.0000000
       0     2964        M 0x800009c0 fsgnjx.d ft2, ft2, ft2         #; ft2  = -0.0000000, ft2  = -0.0000000
       0     2965        M 0x800009c4 fadd.d  ft1, ft6, ft1          #; ft6  = 9799.8120360, ft1  = -9799.8120360, (f:fpu) ft2  <-- 0.0000000
       0     2968        M                                           #; (f:fpu) ft1  <-- -0.0000000
       0     2969        M 0x800009c8 fsgnjx.d ft1, ft1, ft1         #; ft1  = -0.0000000, ft1  = -0.0000000
       0     2970        M 0x800009cc fadd.d  ft2, ft3, ft2          #; ft3  = 0.0000000, ft2  = 0.0000000, (f:fpu) ft1  <-- 0.0000000
       0     2973        M                                           #; (f:fpu) ft2  <-- 0.0000000
       0     2976        M 0x800009d0 fadd.d  ft0, ft2, ft0          #; ft2  = 0.0000000, ft0  = 0.0
       0     2977        M 0x800009dc lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
       0     2979        M                                           #; (f:fpu) ft0  <-- 0.0000000
       0     2980        M                                           #; (lsu) a2  <-- 0
                         M 0x800009d4 fadd.d  fs0, ft0, ft1          #; ft0  = 0.0000000, ft1  = 0.0000000
       0     2983        M                                           #; (f:fpu) fs0  <-- 0.0000000
       0     2984        M 0x800009d8 fsd     fs0, 8(sp)             #; 0.0000000 ~~> Doub[0x0011ff48]
       0     2986        M 0x800009e0 lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
       0     2987        M 0x800009e4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800029e4
       0     2988        M 0x800009e8 addi    a0, a0, 865            #; a0  = 0x800029e4, (wrb) a0  <-- 0x80002d45
       0     2989        M 0x800009ec auipc   ra, 0x0                #; (wrb) ra  <-- 0x800009ec
       0     2990        M                                           #; (lsu) a3  <-- 0x3d901000
       0     2998        M 0x800009f0 jalr    ra, ra, 40             #; ra  = 0x800009ec, (wrb) ra  <-- 0x800009f4, goto 0x80000a14
       0     3021        M 0x80000a14 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     3022        M 0x80000a18 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x800009f4 ~~> Word[0x0011ff1c]
       0     3023        M 0x80000a1c mv      t0, a0                 #; a0  = 0x80002d45, (wrb) t0  <-- 0x80002d45
       0     3033        M 0x80000a20 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff3c]
       0     3034        M 0x80000a24 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff38]
       0     3035        M 0x80000a28 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 10 ~~> Word[0x0011ff34]
       0     3036        M 0x80000a2c sw      a4, 32(sp)             #; sp  = 0x0011ff10, 193 ~~> Word[0x0011ff30]
       0     3045        M 0x80000a30 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0x3d901000 ~~> Word[0x0011ff2c]
       0     3046        M 0x80000a34 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     3047        M 0x80000a38 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 33 ~~> Word[0x0011ff24]
       0     3048        M 0x80000a3c addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     3057        M 0x80000a40 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     3058        M 0x80000a44 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001a44
       0     3059        M 0x80000a48 addi    a0, a0, -988           #; a0  = 0x80001a44, (wrb) a0  <-- 0x80001668
       0     3060        M 0x80000a4c addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     3069        M 0x80000a50 li      a2, -1                 #; (wrb) a2  <-- -1
       0     3070        M 0x80000a54 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     3071        M 0x80000a58 mv      a3, t0                 #; t0  = 0x80002d45, (wrb) a3  <-- 0x80002d45
       0     3072        M 0x80000a5c auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a5c
       0     3081        M 0x80000a60 jalr    ra, ra, 20             #; ra  = 0x80000a5c, (wrb) ra  <-- 0x80000a64, goto 0x80000a70
       0     3093        M 0x80000a70 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     3094        M 0x80000a74 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000a64 ~~> Word[0x0011ff0c]
       0     3095        M 0x80000a78 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
       0     3096        M 0x80000a7c sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     3105        M 0x80000a80 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     3106        M 0x80000a84 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     3107        M 0x80000a88 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     3108        M 0x80000a8c sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     3117        M 0x80000a90 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     3118        M 0x80000a94 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     3119        M 0x80000a98 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     3120        M 0x80000a9c sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     3129        M 0x80000aa0 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     3130        M 0x80000aa4 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     3131        M 0x80000aa8 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     3132        M 0x80000aac mv      s0, a3                 #; a3  = 0x80002d45, (wrb) s0  <-- 0x80002d45
       0     3141        M 0x80000ab0 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     3142        M 0x80000ab4 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     3143        M 0x80000ab8 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     3144        M 0x80000abc mv      s2, a0                 #; a0  = 0x80001668, (wrb) s2  <-- 0x80001668
       0     3153        M 0x80000ac0 j       pc + 0xc               #; goto 0x80000acc
       0     3154        M 0x80000acc li      s8, 0                  #; (wrb) s8  <-- 0
       0     3166        M 0x80000ad0 li      s6, 37                 #; (wrb) s6  <-- 37
       0     3167        M 0x80000ad4 li      s11, 16                #; (wrb) s11 <-- 16
       0     3168        M 0x80000ad8 li      s7, 46                 #; (wrb) s7  <-- 46
       0     3169        M 0x80000adc lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     3178        M 0x80000ae0 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     3179        M 0x80000ae4 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     3180        M 0x80000ae8 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     3181        M 0x80000aec addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     3190        M 0x80000af0 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     3191        M 0x80000af4 addi    s10, s0, 2             #; s0  = 0x80002d45, (wrb) s10 <-- 0x80002d47
       0     3192        M 0x80000af8 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     3193        M 0x80000afc li      s8, 10                 #; (wrb) s8  <-- 10
       0     3202        M 0x80000b00 lbu     a0, 0(s0)              #; s0  = 0x80002d45, a0  <~~ Byte[0x80002d45]
       0     3213        M                                           #; (lsu) a0  <-- 101
       0     3214        M 0x80000b04 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     3215        M 0x80000b08 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     3216        M 0x80000b0c addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     3217        M 0x80000b10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3218        M 0x80000b14 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     3219        M 0x80000b18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3220        M 0x80000b1c jalr    s2                     #; s2  = 0x80001668, (wrb) ra  <-- 0x80000b20, goto 0x80001668
       0     3240        M 0x80001668 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     3241        M 0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3252        M 0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3253        M 0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3254        M 0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
       0     3255        M 0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
       0     3264        M 0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     3265        M 0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3276        M                                           #; (lsu) a4  <-- 0
       0     3277        M 0x80001688 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     3278        M 0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 1 ~~> Word[0x800030ac]
       0     3279        M 0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 0, (wrb) a4  <-- 0x800030ac
       0     3280        M 0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030ac, 101 ~~> Byte[0x800030f4]
       0     3281        M 0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3302        M                                           #; (lsu) a4  <-- 1
       0     3303        M 0x8000169c addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     3304        M 0x800016a0 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     3305        M 0x800016a4 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     3306        M 0x800016a8 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     3307        M 0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3316        M 0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
       0     3339        M 0x80001710 ret                            #; ra  = 0x80000b20, goto 0x80000b20
       0     3353        M 0x80000b20 addi    s0, s0, 1              #; s0  = 0x80002d45, (wrb) s0  <-- 0x80002d46
       0     3354        M 0x80000b24 addi    s10, s10, 1            #; s10 = 0x80002d47, (wrb) s10 <-- 0x80002d48
       0     3355        M 0x80000b28 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     3356        M 0x80000b2c lbu     a0, 0(s0)              #; s0  = 0x80002d46, a0  <~~ Byte[0x80002d46]
       0     3367        M                                           #; (lsu) a0  <-- 114
       0     3368        M 0x80000b30 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b08
       0     3369        M 0x80000b08 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     3370        M 0x80000b0c addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     3372        M 0x80000b10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3373        M 0x80000b14 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     3374        M 0x80000b18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3375        M 0x80000b1c jalr    s2                     #; s2  = 0x80001668, (wrb) ra  <-- 0x80000b20, goto 0x80001668
       0     3378        M 0x80001668 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     3379        M 0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3381        M 0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3382        M 0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3383        M 0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
       0     3384        M 0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
       0     3385        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3386        M 0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     3387        M 0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3398        M                                           #; (lsu) a4  <-- 1
       0     3399        M 0x80001688 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     3400        M 0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 2 ~~> Word[0x800030ac]
       0     3401        M 0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 1, (wrb) a4  <-- 0x800030ad
       0     3402        M 0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030ad, 114 ~~> Byte[0x800030f5]
       0     3403        M 0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3424        M                                           #; (lsu) a4  <-- 2
       0     3425        M 0x8000169c addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     3426        M 0x800016a0 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     3427        M 0x800016a4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     3428        M 0x800016a8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     3429        M 0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3430        M 0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
       0     3435        M 0x80001710 ret                            #; ra  = 0x80000b20, goto 0x80000b20
       0     3440        M 0x80000b20 addi    s0, s0, 1              #; s0  = 0x80002d46, (wrb) s0  <-- 0x80002d47
       0     3441        M 0x80000b24 addi    s10, s10, 1            #; s10 = 0x80002d48, (wrb) s10 <-- 0x80002d49
       0     3442        M 0x80000b28 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     3443        M 0x80000b2c lbu     a0, 0(s0)              #; s0  = 0x80002d47, a0  <~~ Byte[0x80002d47]
       0     3454        M                                           #; (lsu) a0  <-- 114
       0     3455        M 0x80000b30 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b08
       0     3456        M 0x80000b08 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     3457        M 0x80000b0c addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     3459        M 0x80000b10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3460        M 0x80000b14 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     3461        M 0x80000b18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3462        M 0x80000b1c jalr    s2                     #; s2  = 0x80001668, (wrb) ra  <-- 0x80000b20, goto 0x80001668
       0     3465        M 0x80001668 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     3466        M 0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3468        M 0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3469        M 0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3470        M 0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
       0     3471        M 0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
       0     3472        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3473        M 0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     3474        M 0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3485        M                                           #; (lsu) a4  <-- 2
       0     3486        M 0x80001688 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     3487        M 0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 3 ~~> Word[0x800030ac]
       0     3488        M 0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 2, (wrb) a4  <-- 0x800030ae
       0     3489        M 0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030ae, 114 ~~> Byte[0x800030f6]
       0     3490        M 0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3511        M                                           #; (lsu) a4  <-- 3
       0     3512        M 0x8000169c addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     3513        M 0x800016a0 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     3514        M 0x800016a4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     3515        M 0x800016a8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     3516        M 0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3517        M 0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
       0     3522        M 0x80001710 ret                            #; ra  = 0x80000b20, goto 0x80000b20
       0     3527        M 0x80000b20 addi    s0, s0, 1              #; s0  = 0x80002d47, (wrb) s0  <-- 0x80002d48
       0     3528        M 0x80000b24 addi    s10, s10, 1            #; s10 = 0x80002d49, (wrb) s10 <-- 0x80002d4a
       0     3529        M 0x80000b28 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     3530        M 0x80000b2c lbu     a0, 0(s0)              #; s0  = 0x80002d48, a0  <~~ Byte[0x80002d48]
       0     3541        M                                           #; (lsu) a0  <-- 111
       0     3542        M 0x80000b30 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000b08
       0     3543        M 0x80000b08 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     3544        M 0x80000b0c addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     3546        M 0x80000b10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3547        M 0x80000b14 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     3548        M 0x80000b18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3549        M 0x80000b1c jalr    s2                     #; s2  = 0x80001668, (wrb) ra  <-- 0x80000b20, goto 0x80001668
       0     3552        M 0x80001668 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     3553        M 0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3555        M 0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3556        M 0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3557        M 0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
       0     3558        M 0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
       0     3559        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3560        M 0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     3561        M 0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3572        M                                           #; (lsu) a4  <-- 3
       0     3573        M 0x80001688 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     3574        M 0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 4 ~~> Word[0x800030ac]
       0     3575        M 0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 3, (wrb) a4  <-- 0x800030af
       0     3576        M 0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030af, 111 ~~> Byte[0x800030f7]
       0     3577        M 0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3598        M                                           #; (lsu) a4  <-- 4
       0     3599        M 0x8000169c addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     3600        M 0x800016a0 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     3601        M 0x800016a4 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     3602        M 0x800016a8 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     3603        M 0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3604        M 0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
       0     3609        M 0x80001710 ret                            #; ra  = 0x80000b20, goto 0x80000b20
       0     3614        M 0x80000b20 addi    s0, s0, 1              #; s0  = 0x80002d48, (wrb) s0  <-- 0x80002d49
       0     3615        M 0x80000b24 addi    s10, s10, 1            #; s10 = 0x80002d4a, (wrb) s10 <-- 0x80002d4b
       0     3616        M 0x80000b28 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     3617        M 0x80000b2c lbu     a0, 0(s0)              #; s0  = 0x80002d49, a0  <~~ Byte[0x80002d49]
       0     3628        M                                           #; (lsu) a0  <-- 114
       0     3629        M 0x80000b30 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b08
       0     3630        M 0x80000b08 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     3631        M 0x80000b0c addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     3633        M 0x80000b10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3634        M 0x80000b14 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     3635        M 0x80000b18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3636        M 0x80000b1c jalr    s2                     #; s2  = 0x80001668, (wrb) ra  <-- 0x80000b20, goto 0x80001668
       0     3639        M 0x80001668 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     3640        M 0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3642        M 0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3643        M 0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3644        M 0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
       0     3645        M 0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
       0     3646        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3647        M 0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     3648        M 0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3659        M                                           #; (lsu) a4  <-- 4
       0     3660        M 0x80001688 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     3661        M 0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 5 ~~> Word[0x800030ac]
       0     3662        M 0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 4, (wrb) a4  <-- 0x800030b0
       0     3663        M 0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030b0, 114 ~~> Byte[0x800030f8]
       0     3664        M 0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3685        M                                           #; (lsu) a4  <-- 5
       0     3686        M 0x8000169c addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     3687        M 0x800016a0 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     3688        M 0x800016a4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     3689        M 0x800016a8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     3690        M 0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3691        M 0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
       0     3696        M 0x80001710 ret                            #; ra  = 0x80000b20, goto 0x80000b20
       0     3701        M 0x80000b20 addi    s0, s0, 1              #; s0  = 0x80002d49, (wrb) s0  <-- 0x80002d4a
       0     3702        M 0x80000b24 addi    s10, s10, 1            #; s10 = 0x80002d4b, (wrb) s10 <-- 0x80002d4c
       0     3703        M 0x80000b28 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     3704        M 0x80000b2c lbu     a0, 0(s0)              #; s0  = 0x80002d4a, a0  <~~ Byte[0x80002d4a]
       0     3715        M                                           #; (lsu) a0  <-- 32
       0     3716        M 0x80000b30 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000b08
       0     3717        M 0x80000b08 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3718        M 0x80000b0c addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     3720        M 0x80000b10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3721        M 0x80000b14 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     3722        M 0x80000b18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3723        M 0x80000b1c jalr    s2                     #; s2  = 0x80001668, (wrb) ra  <-- 0x80000b20, goto 0x80001668
       0     3726        M 0x80001668 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3727        M 0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3729        M 0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3730        M 0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3731        M 0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
       0     3732        M 0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
       0     3733        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3734        M 0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     3735        M 0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3746        M                                           #; (lsu) a4  <-- 5
       0     3747        M 0x80001688 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     3748        M 0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 6 ~~> Word[0x800030ac]
       0     3749        M 0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 5, (wrb) a4  <-- 0x800030b1
       0     3750        M 0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030b1, 32 ~~> Byte[0x800030f9]
       0     3751        M 0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3772        M                                           #; (lsu) a4  <-- 6
       0     3773        M 0x8000169c addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     3774        M 0x800016a0 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     3775        M 0x800016a4 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3776        M 0x800016a8 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3777        M 0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3778        M 0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
       0     3783        M 0x80001710 ret                            #; ra  = 0x80000b20, goto 0x80000b20
       0     3788        M 0x80000b20 addi    s0, s0, 1              #; s0  = 0x80002d4a, (wrb) s0  <-- 0x80002d4b
       0     3789        M 0x80000b24 addi    s10, s10, 1            #; s10 = 0x80002d4c, (wrb) s10 <-- 0x80002d4d
       0     3790        M 0x80000b28 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     3791        M 0x80000b2c lbu     a0, 0(s0)              #; s0  = 0x80002d4b, a0  <~~ Byte[0x80002d4b]
       0     3802        M                                           #; (lsu) a0  <-- 61
       0     3803        M 0x80000b30 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000b08
       0     3804        M 0x80000b08 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     3805        M 0x80000b0c addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     3807        M 0x80000b10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3808        M 0x80000b14 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     3809        M 0x80000b18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3810        M 0x80000b1c jalr    s2                     #; s2  = 0x80001668, (wrb) ra  <-- 0x80000b20, goto 0x80001668
       0     3813        M 0x80001668 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     3814        M 0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3816        M 0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3817        M 0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3818        M 0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
       0     3819        M 0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
       0     3820        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3821        M 0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     3822        M 0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3833        M                                           #; (lsu) a4  <-- 6
       0     3834        M 0x80001688 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     3835        M 0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 7 ~~> Word[0x800030ac]
       0     3836        M 0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 6, (wrb) a4  <-- 0x800030b2
       0     3837        M 0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030b2, 61 ~~> Byte[0x800030fa]
       0     3838        M 0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3859        M                                           #; (lsu) a4  <-- 7
       0     3860        M 0x8000169c addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     3861        M 0x800016a0 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     3862        M 0x800016a4 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     3863        M 0x800016a8 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     3864        M 0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3865        M 0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
       0     3870        M 0x80001710 ret                            #; ra  = 0x80000b20, goto 0x80000b20
       0     3875        M 0x80000b20 addi    s0, s0, 1              #; s0  = 0x80002d4b, (wrb) s0  <-- 0x80002d4c
       0     3876        M 0x80000b24 addi    s10, s10, 1            #; s10 = 0x80002d4d, (wrb) s10 <-- 0x80002d4e
       0     3877        M 0x80000b28 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     3878        M 0x80000b2c lbu     a0, 0(s0)              #; s0  = 0x80002d4c, a0  <~~ Byte[0x80002d4c]
       0     3889        M                                           #; (lsu) a0  <-- 32
       0     3890        M 0x80000b30 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000b08
       0     3891        M 0x80000b08 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3892        M 0x80000b0c addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     3894        M 0x80000b10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3895        M 0x80000b14 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     3896        M 0x80000b18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3897        M 0x80000b1c jalr    s2                     #; s2  = 0x80001668, (wrb) ra  <-- 0x80000b20, goto 0x80001668
       0     3900        M 0x80001668 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3901        M 0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3903        M 0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3904        M 0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3905        M 0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
       0     3906        M 0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
       0     3907        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3908        M 0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     3909        M 0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3920        M                                           #; (lsu) a4  <-- 7
       0     3921        M 0x80001688 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     3922        M 0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 8 ~~> Word[0x800030ac]
       0     3923        M 0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 7, (wrb) a4  <-- 0x800030b3
       0     3924        M 0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030b3, 32 ~~> Byte[0x800030fb]
       0     3925        M 0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3946        M                                           #; (lsu) a4  <-- 8
       0     3947        M 0x8000169c addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     3948        M 0x800016a0 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     3949        M 0x800016a4 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3950        M 0x800016a8 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3951        M 0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3952        M 0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
       0     3957        M 0x80001710 ret                            #; ra  = 0x80000b20, goto 0x80000b20
       0     3962        M 0x80000b20 addi    s0, s0, 1              #; s0  = 0x80002d4c, (wrb) s0  <-- 0x80002d4d
       0     3963        M 0x80000b24 addi    s10, s10, 1            #; s10 = 0x80002d4e, (wrb) s10 <-- 0x80002d4f
       0     3964        M 0x80000b28 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     3965        M 0x80000b2c lbu     a0, 0(s0)              #; s0  = 0x80002d4d, a0  <~~ Byte[0x80002d4d]
       0     3976        M                                           #; (lsu) a0  <-- 37
       0     3977        M 0x80000b30 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000b08
       0     3978        M 0x80000b08 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000b38
       0     3979        M 0x80000b38 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3980        M 0x80000b3c j       pc + 0x10              #; goto 0x80000b4c
       0     3992        M 0x80000b4c lbu     a0, -1(s10)            #; s10 = 0x80002d4f, a0  <~~ Byte[0x80002d4e]
       0     4003        M                                           #; (lsu) a0  <-- 102
       0     4004        M 0x80000b50 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     4005        M 0x80000b54 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000b8c
       0     4027        M 0x80000b8c addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     4039        M 0x80000b90 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     4040        M 0x80000b94 addi    a1, s10, -1            #; s10 = 0x80002d4f, (wrb) a1  <-- 0x80002d4e
       0     4041        M 0x80000b98 li      a3, 9                  #; (wrb) a3  <-- 9
       0     4042        M 0x80000b9c bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000c18
       0     4062        M 0x80000c18 li      a2, 42                 #; (wrb) a2  <-- 42
       0     4063        M 0x80000c1c bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000c6c
       0     4085        M 0x80000c6c li      s6, 0                  #; (wrb) s6  <-- 0
       0     4097        M 0x80000c70 mv      s10, a1                #; a1  = 0x80002d4e, (wrb) s10 <-- 0x80002d4e
       0     4098        M 0x80000c74 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     4099        M 0x80000c78 li      s7, 0                  #; (wrb) s7  <-- 0
       0     4100        M 0x80000c7c j       pc + 0xc               #; goto 0x80000c88
       0     4120        M 0x80000c88 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     4121        M 0x80000c8c srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     4132        M 0x80000c90 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     4133        M 0x80000c94 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     4134        M 0x80000c98 li      a2, 9                  #; (wrb) a2  <-- 9
       0     4135        M 0x80000c9c bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000d00
       0     4155        M 0x80000d00 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     4156        M 0x80000d04 li      a2, 83                 #; (wrb) a2  <-- 83
       0     4157        M 0x80000d08 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     4158        M 0x80000d0c slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     4167        M 0x80000d10 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002d10
       0     4168        M 0x80000d14 addi    a2, a2, 180            #; a2  = 0x80002d10, (wrb) a2  <-- 0x80002dc4
       0     4169        M 0x80000d18 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002dc4, (wrb) a1  <-- 0x80002ec8
       0     4170        M 0x80000d1c lw      a2, 0(a1)              #; a1  = 0x80002ec8, a2  <~~ Word[0x80002ec8]
       0     4179        M 0x80000d20 li      a1, 8                  #; (wrb) a1  <-- 8
       0     4180        M 0x80000d24 li      s8, 16                 #; (wrb) s8  <-- 16
       0     4181        M                                           #; (lsu) a2  <-- 0x80000d58
       0     4182        M 0x80000d28 jr      a2                     #; a2  = 0x80000d58, goto 0x80000d58
       0     4202        M 0x80000d58 li      a1, 70                 #; (wrb) a1  <-- 70
       0     4203        M 0x80000d5c bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000d64
       0     4214        M 0x80000d64 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     4215        M 0x80000d68 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     4218        M 0x80000d6c fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     4219        M                                           #; (f:lsu) fa0  <-- 0.0000000
       0     4226        M 0x80000d70 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     4227        M 0x80000d74 mv      a0, s2                 #; s2  = 0x80001668, (wrb) a0  <-- 0x80001668
       0     4228        M 0x80000d78 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4229        M 0x80000d7c mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     4238        M 0x80000d80 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4239        M 0x80000d84 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     4240        M 0x80000d88 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     4241        M 0x80000d8c mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     4250        M 0x80000d90 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001d90
       0     4251        M 0x80000d94 jalr    ra, ra, -1656          #; ra  = 0x80001d90, (wrb) ra  <-- 0x80000d98, goto 0x80001718
       0     4264        M 0x80001718 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     4265        M 0x8000171c sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000d98 ~~> Word[0x0011fe9c]
       0     4267        M 0x80001720 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     4268        M 0x80001724 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     4269        M 0x80001728 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001668 ~~> Word[0x0011fe90]
       0     4270        M 0x8000172c sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     4279        M 0x80001730 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     4280        M 0x80001734 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     4281        M 0x80001738 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     4282        M 0x8000173c sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     4291        M 0x80001740 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     4292        M 0x80001744 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     4293        M 0x80001748 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002d4e ~~> Word[0x0011fe70]
       0     4296        M 0x8000174c fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe68]
       0     4305        M 0x80001758 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003758
                         M 0x80001750 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     4306        M 0x8000175c addi    s1, s1, -1880          #; s1  = 0x80003758, (wrb) s1  <-- 0x80003000
                         M 0x80001754 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     4317        M 0x80001768 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
                         M 0x80001760 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003000]
       0     4318        M 0x8000176c mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
       0     4326        M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     4327        M 0x80001770 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x80001764 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0000000
       0     4328        M 0x80001774 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     4329        M 0x80001778 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     4330        M 0x8000177c mv      s7, a0                 #; a0  = 0x80001668, (wrb) s7  <-- 0x80001668
       0     4339        M 0x80001780 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001870
       0     4363        M 0x80001874 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002874
       0     4364        M 0x80001878 addi    a0, a0, 1940           #; a0  = 0x80002874, (wrb) a0  <-- 0x80003008
                         M 0x80001870 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0000000, fa0  = 0.0000000
       0     4365        M                                           #; (f:fpu) fs0  <-- 0.0000000
       0     4367        M 0x8000187c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003008]
       0     4376        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     4377        M 0x80001880 fle.d   a0, fa0, ft0           #; fa0  = 0.0000000, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     4379        M                                           #; (acc) t3  <-- 0x00051e63
       0     4380        M 0x80001884 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800018a0
       0     4397        M 0x800018a0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800028a0
       0     4398        M 0x800018a4 addi    a0, a0, 1904           #; a0  = 0x800028a0, (wrb) a0  <-- 0x80003010
       0     4400        M 0x800018ac auipc   a0, 0x1                #; (wrb) a0  <-- 0x800028ac
       0     4401        M 0x800018a8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003010]
       0     4409        M 0x800018b0 addi    a0, a0, 1900           #; a0  = 0x800028ac, (wrb) a0  <-- 0x80003018
       0     4410        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     4412        M 0x800018b4 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003018]
       0     4413        M 0x800018b8 fle.d   a0, fs0, ft0           #; fs0  = 0.0000000, ft0  = 1000000000.0000000
       0     4421        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     4422        M 0x800018bc fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0000000
       0     4424        M                                           #; (acc) a0  <-- 0x00b57533
       0     4425        M 0x800018c0 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     4426        M 0x800018c4 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x800019c0
       0     4444        M 0x800019c0 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     4445        M 0x800019c4 li      s8, 6                  #; (wrb) s8  <-- 6
       0     4446        M 0x800019c8 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x800019d0
       0     4456        M 0x800019d0 li      a0, 10                 #; (wrb) a0  <-- 10
       0     4458        M 0x800019d8 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001a10
       0     4459        M 0x800019d4 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0000000, fs0  = 0.0000000
       0     4460        M                                           #; (f:fpu) fs2  <-- 0.0000000
       0     4479        M 0x80001a10 li      s0, 0                  #; (wrb) s0  <-- 0
       0     4480        M 0x80001a14 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     4481        M 0x80001a18 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002a18
       0     4482        M 0x80001a1c addi    a1, a1, 1280           #; a1  = 0x80002a18, (wrb) a1  <-- 0x80002f18
       0     4491        M 0x80001a20 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002f18, (wrb) a0  <-- 0x80002f48
       0     4494        M 0x80001a24 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f48]
       0     4495        M 0x80001a28 fcvt.w.d s1, fs2               #; fs2  = 0.0000000
       0     4499        M 0x80001a2c fcvt.d.w ft0, s1               #; ac1  = 0
       0     4500        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4503        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     4505        M 0x80001a38 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002a38
                         M 0x80001a30 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0000000, ft0  = 0.0
       0     4506        M 0x80001a3c addi    a0, a0, 1512           #; a0  = 0x80002a38, (wrb) a0  <-- 0x80003020
       0     4508        M                                           #; (f:fpu) ft0  <-- 0.0000000
       0     4509        M 0x80001a34 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0000000
       0     4512        M                                           #; (f:fpu) ft2  <-- 0.0000037
       0     4517        M 0x80001a40 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003020]
       0     4518        M 0x80001a44 fcvt.wu.d a0, ft2              #; ft2  = 0.0000037
       0     4520        M                                           #; (acc) gp  <-- 0xd21501d3
       0     4522        M 0x80001a48 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     4523        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4524        M 0x80001a4c fsub.d  ft2, ft2, ft3          #; ft2  = 0.0000037, ft3  = 0.0
       0     4526        M                                           #; (f:lsu) ft0  <-- 0.5
       0     4527        M                                           #; (f:fpu) ft2  <-- 0.0000037
       0     4528        M 0x80001a50 fle.d   a1, ft2, ft0           #; ft2  = 0.0000037, ft0  = 0.5
       0     4531        M 0x80001a54 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001a74
       0     4551        M 0x80001a74 flt.d   a1, ft2, ft0           #; ft2  = 0.0000037, ft0  = 0.5
       0     4553        M                                           #; (acc) s4  <-- 0x00059a63
       0     4554        M 0x80001a78 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001a8c
       0     4563        M 0x80001a8c fcvt.d.w fs1, zero             #; ac1  = 0
       0     4564        M                                           #; (f:fpu) fs1  <-- 0.0
       0     4574        M 0x80001a90 beqz    s8, pc + 216           #; s8  = 6, not taken
       0     4575        M 0x80001a94 li      a2, 0                  #; (wrb) a2  <-- 0
       0     4576        M 0x80001a98 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     4577        M 0x80001a9c add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     4586        M 0x80001aa0 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4587        M 0x80001aa4 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     4588        M 0x80001aa8 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     4589        M 0x80001aac addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     4598        M 0x80001ab0 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4599        M 0x80001ab4 li      a7, 9                  #; (wrb) a7  <-- 9
       0     4600        M 0x80001ab8 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     4601        M 0x80001abc mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     4610        M 0x80001ac0 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     4613        M                                           #; (acc) a0  <-- 0x00355513
       0     4614        M 0x80001ac4 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     4615        M 0x80001ac8 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     4618        M                                           #; (acc) a3  <-- 0x40d586b3
       0     4619        M 0x80001acc sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     4622        M 0x80001ad0 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     4623        M 0x80001ad4 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     4624        M 0x80001ad8 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     4625        M 0x80001adc addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     4634        M 0x80001ae0 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     4635        M 0x80001ae4 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     4636        M 0x80001ae8 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     4637        M 0x80001aec li      a3, 30                 #; (wrb) a3  <-- 30
       0     4647        M 0x80001af0 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     4648        M 0x80001af4 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     4649        M 0x80001af8 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     4650        M 0x80001afc or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     4659        M 0x80001b00 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     4660        M 0x80001b04 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     4661        M 0x80001b08 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     4662        M 0x80001b0c not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     4671        M 0x80001b10 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     4672        M 0x80001b14 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     4673        M 0x80001b18 li      a1, 31                 #; (wrb) a1  <-- 31
       0     4674        M 0x80001b1c sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     4683        M 0x80001b20 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     4684        M 0x80001b24 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     4685        M 0x80001b28 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001b30
       0     4695        M 0x80001b30 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     4696        M 0x80001b34 li      a1, 48                 #; (wrb) a1  <-- 48
       0     4697        M 0x80001b38 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000b38
       0     4698        M 0x80001b3c jalr    ra, ra, -1504          #; ra  = 0x80000b38, (wrb) ra  <-- 0x80001b40, goto 0x80000558
       0     4718        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     4719        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     4730        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     4753        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     4765        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     4766        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     4767        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     4768        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     4788        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     4789        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     4800        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     4801        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     4802        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     4803        M 0x800005ec ret                            #; ra  = 0x80001b40, goto 0x80001b40
       0     4814        M 0x80001b40 li      a0, 0                  #; (wrb) a0  <-- 0
       0     4815        M 0x80001b44 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     4816        M 0x80001b48 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     4817        M 0x80001b4c xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     4826        M 0x80001b50 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     4827        M 0x80001b54 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4828        M 0x80001b58 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4829        M 0x80001b5c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b44
       0     4830        M 0x80001b44 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     4831        M 0x80001b48 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     4832        M 0x80001b4c xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     4833        M 0x80001b50 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     4834        M 0x80001b54 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4835        M 0x80001b58 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     4836        M 0x80001b5c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b44
       0     4837        M 0x80001b44 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     4838        M 0x80001b48 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     4839        M 0x80001b4c xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     4840        M 0x80001b50 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     4841        M 0x80001b54 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4842        M 0x80001b58 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     4843        M 0x80001b5c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b44
       0     4844        M 0x80001b44 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     4845        M 0x80001b48 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     4846        M 0x80001b4c xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     4847        M 0x80001b50 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     4848        M 0x80001b54 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4849        M 0x80001b58 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     4850        M 0x80001b5c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b44
       0     4851        M 0x80001b44 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     4852        M 0x80001b48 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     4853        M 0x80001b4c xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     4854        M 0x80001b50 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     4855        M 0x80001b54 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     4856        M 0x80001b58 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     4857        M 0x80001b5c bnez    a2, pc - 24            #; a2  = 0, not taken
       0     4869        M 0x80001b60 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     4870        M 0x80001b64 j       pc + 0x28              #; goto 0x80001b8c
       0     4881        M 0x80001b8c beqz    a1, pc + 28            #; a1  = 1, not taken
       0     4893        M 0x80001b90 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     4894        M 0x80001b94 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     4895        M 0x80001b98 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     4896        M 0x80001b9c li      a1, 46                 #; (wrb) a1  <-- 46
       0     4905        M 0x80001ba0 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     4906        M 0x80001ba4 j       pc + 0x8               #; goto 0x80001bac
       0     4907        M 0x80001bac li      a0, 32                 #; (wrb) a0  <-- 32
       0     4919        M 0x80001bb0 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     4920        M 0x80001bb4 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     4921        M 0x80001bb8 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4923        M 0x80001bbc flt.d   s9, fs0, fs1           #; fs0  = 0.0000000, fs1  = 0.0
       0     4931        M 0x80001bc0 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
       0     4932        M 0x80001bc4 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     4933        M 0x80001bc8 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4934        M 0x80001bcc addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     4943        M 0x80001bd0 li      a4, 18                 #; (wrb) a4  <-- 18
       0     4944        M 0x80001bd4 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     4945        M 0x80001bd8 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     4948        M                                           #; (acc) a5  <-- 0x01f55793
       0     4949        M 0x80001bdc srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     4955        M 0x80001be0 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     4956        M 0x80001be4 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     4957        M 0x80001be8 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     4960        M                                           #; (acc) a5  <-- 0x40f487b3
       0     4961        M 0x80001bec sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     4967        M 0x80001bf0 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     4968        M 0x80001bf4 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     4969        M 0x80001bf8 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     4970        M 0x80001bfc addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     4979        M 0x80001c00 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     4980        M 0x80001c04 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     4981        M 0x80001c08 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     4982        M 0x80001c0c bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     4994        M 0x80001c10 j       pc + 0x8               #; goto 0x80001c18
       0     4995        M 0x80001c18 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     4996        M 0x80001c1c li      a0, 1                  #; (wrb) a0  <-- 1
       0     5007        M 0x80001c20 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001c8c
       0     5030        M 0x80001c8c li      a0, 31                 #; (wrb) a0  <-- 31
       0     5042        M 0x80001c90 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     5043        M 0x80001c94 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001cac
       0     5054        M 0x80001cac andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     5066        M 0x80001cb0 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     5067        M 0x80001cb4 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     5068        M 0x80001cb8 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001ce4
       0     5089        M 0x80001ce4 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     5090        M 0x80001ce8 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     5091        M 0x80001cec xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     5101        M 0x80001cf0 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     5102        M 0x80001cf4 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     5103        M 0x80001cf8 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     5104        M 0x80001cfc bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001d28
       0     5124        M 0x80001d28 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     5125        M 0x80001d2c beqz    s8, pc + 56            #; s8  = 8, not taken
       0     5136        M 0x80001d30 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     5137        M 0x80001d34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     5138        M 0x80001d38 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     5139        M 0x80001d3c addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     5141        M                                           #; (lsu) a0  <-- 48
       0     5148        M 0x80001d40 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     5149        M 0x80001d44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5150        M 0x80001d48 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     5151        M 0x80001d4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5160        M 0x80001d50 jalr    s7                     #; s7  = 0x80001668, (wrb) ra  <-- 0x80001d54, goto 0x80001668
       0     5163        M 0x80001668 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5164        M 0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5166        M 0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5167        M 0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5168        M 0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
       0     5169        M 0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
       0     5170        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5171        M 0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     5172        M 0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5183        M                                           #; (lsu) a4  <-- 8
       0     5184        M 0x80001688 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     5185        M 0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 9 ~~> Word[0x800030ac]
       0     5186        M 0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 8, (wrb) a4  <-- 0x800030b4
       0     5187        M 0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030b4, 48 ~~> Byte[0x800030fc]
       0     5188        M 0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5209        M                                           #; (lsu) a4  <-- 9
       0     5210        M 0x8000169c addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     5211        M 0x800016a0 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     5212        M 0x800016a4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5213        M 0x800016a8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5214        M 0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5215        M 0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
       0     5220        M 0x80001710 ret                            #; ra  = 0x80001d54, goto 0x80001d54
       0     5225        M 0x80001d54 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     5226        M 0x80001d58 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     5227        M 0x80001d5c bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001d34
       0     5228        M 0x80001d34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     5229        M 0x80001d38 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     5230        M 0x80001d3c addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     5231        M 0x80001d40 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     5232        M 0x80001d44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5233        M 0x80001d48 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     5234        M 0x80001d4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5235        M 0x80001d50 jalr    s7                     #; s7  = 0x80001668, (wrb) ra  <-- 0x80001d54, goto 0x80001668
       0     5236        M                                           #; (lsu) a0  <-- 46
       0     5238        M 0x80001668 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     5239        M 0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5241        M 0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5242        M 0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5243        M 0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
       0     5244        M 0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
       0     5245        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5246        M 0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     5247        M 0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5258        M                                           #; (lsu) a4  <-- 9
       0     5259        M 0x80001688 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     5260        M 0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 10 ~~> Word[0x800030ac]
       0     5261        M 0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 9, (wrb) a4  <-- 0x800030b5
       0     5262        M 0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030b5, 46 ~~> Byte[0x800030fd]
       0     5263        M 0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5284        M                                           #; (lsu) a4  <-- 10
       0     5285        M 0x8000169c addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     5286        M 0x800016a0 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     5287        M 0x800016a4 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     5288        M 0x800016a8 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     5289        M 0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5290        M 0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
       0     5295        M 0x80001710 ret                            #; ra  = 0x80001d54, goto 0x80001d54
       0     5300        M 0x80001d54 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     5301        M 0x80001d58 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     5302        M 0x80001d5c bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001d34
       0     5303        M 0x80001d34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     5304        M 0x80001d38 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     5305        M 0x80001d3c addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     5306        M 0x80001d40 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     5307        M 0x80001d44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5308        M 0x80001d48 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     5309        M 0x80001d4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5310        M 0x80001d50 jalr    s7                     #; s7  = 0x80001668, (wrb) ra  <-- 0x80001d54, goto 0x80001668
       0     5311        M                                           #; (lsu) a0  <-- 48
       0     5313        M 0x80001668 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5314        M 0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5316        M 0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5317        M 0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5318        M 0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
       0     5319        M 0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
       0     5320        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5321        M 0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     5322        M 0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5333        M                                           #; (lsu) a4  <-- 10
       0     5334        M 0x80001688 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     5335        M 0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 11 ~~> Word[0x800030ac]
       0     5336        M 0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 10, (wrb) a4  <-- 0x800030b6
       0     5337        M 0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030b6, 48 ~~> Byte[0x800030fe]
       0     5338        M 0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5359        M                                           #; (lsu) a4  <-- 11
       0     5360        M 0x8000169c addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     5361        M 0x800016a0 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     5362        M 0x800016a4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5363        M 0x800016a8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5364        M 0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5365        M 0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
       0     5370        M 0x80001710 ret                            #; ra  = 0x80001d54, goto 0x80001d54
       0     5375        M 0x80001d54 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     5376        M 0x80001d58 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     5377        M 0x80001d5c bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001d34
       0     5378        M 0x80001d34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     5379        M 0x80001d38 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     5380        M 0x80001d3c addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     5381        M 0x80001d40 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     5382        M 0x80001d44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5383        M 0x80001d48 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     5384        M 0x80001d4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5385        M 0x80001d50 jalr    s7                     #; s7  = 0x80001668, (wrb) ra  <-- 0x80001d54, goto 0x80001668
       0     5386        M                                           #; (lsu) a0  <-- 48
       0     5388        M 0x80001668 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5389        M 0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5391        M 0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5392        M 0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5393        M 0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
       0     5394        M 0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
       0     5395        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5396        M 0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     5397        M 0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5408        M                                           #; (lsu) a4  <-- 11
       0     5409        M 0x80001688 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     5410        M 0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 12 ~~> Word[0x800030ac]
       0     5411        M 0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 11, (wrb) a4  <-- 0x800030b7
       0     5412        M 0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030b7, 48 ~~> Byte[0x800030ff]
       0     5413        M 0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5434        M                                           #; (lsu) a4  <-- 12
       0     5435        M 0x8000169c addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     5436        M 0x800016a0 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     5437        M 0x800016a4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5438        M 0x800016a8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5439        M 0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5440        M 0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
       0     5445        M 0x80001710 ret                            #; ra  = 0x80001d54, goto 0x80001d54
       0     5450        M 0x80001d54 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     5451        M 0x80001d58 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     5452        M 0x80001d5c bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001d34
       0     5453        M 0x80001d34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     5454        M 0x80001d38 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     5455        M 0x80001d3c addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     5456        M 0x80001d40 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     5457        M 0x80001d44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5458        M 0x80001d48 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     5459        M 0x80001d4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5460        M 0x80001d50 jalr    s7                     #; s7  = 0x80001668, (wrb) ra  <-- 0x80001d54, goto 0x80001668
       0     5461        M                                           #; (lsu) a0  <-- 48
       0     5463        M 0x80001668 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5464        M 0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5466        M 0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5467        M 0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5468        M 0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
       0     5469        M 0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
       0     5470        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5471        M 0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     5472        M 0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5483        M                                           #; (lsu) a4  <-- 12
       0     5484        M 0x80001688 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     5485        M 0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 13 ~~> Word[0x800030ac]
       0     5486        M 0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 12, (wrb) a4  <-- 0x800030b8
       0     5487        M 0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030b8, 48 ~~> Byte[0x80003100]
       0     5488        M 0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5509        M                                           #; (lsu) a4  <-- 13
       0     5510        M 0x8000169c addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     5511        M 0x800016a0 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     5512        M 0x800016a4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5513        M 0x800016a8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5514        M 0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5515        M 0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
       0     5520        M 0x80001710 ret                            #; ra  = 0x80001d54, goto 0x80001d54
       0     5525        M 0x80001d54 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     5526        M 0x80001d58 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     5527        M 0x80001d5c bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001d34
       0     5528        M 0x80001d34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     5529        M 0x80001d38 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     5530        M 0x80001d3c addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     5531        M 0x80001d40 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     5532        M 0x80001d44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5533        M 0x80001d48 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     5534        M 0x80001d4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5535        M 0x80001d50 jalr    s7                     #; s7  = 0x80001668, (wrb) ra  <-- 0x80001d54, goto 0x80001668
       0     5536        M                                           #; (lsu) a0  <-- 48
       0     5538        M 0x80001668 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5539        M 0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5541        M 0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5542        M 0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5543        M 0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
       0     5544        M 0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
       0     5545        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5546        M 0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     5547        M 0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5558        M                                           #; (lsu) a4  <-- 13
       0     5559        M 0x80001688 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     5560        M 0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 14 ~~> Word[0x800030ac]
       0     5561        M 0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 13, (wrb) a4  <-- 0x800030b9
       0     5562        M 0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030b9, 48 ~~> Byte[0x80003101]
       0     5563        M 0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5584        M                                           #; (lsu) a4  <-- 14
       0     5585        M 0x8000169c addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     5586        M 0x800016a0 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     5587        M 0x800016a4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5588        M 0x800016a8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5589        M 0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5590        M 0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
       0     5595        M 0x80001710 ret                            #; ra  = 0x80001d54, goto 0x80001d54
       0     5600        M 0x80001d54 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     5601        M 0x80001d58 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     5602        M 0x80001d5c bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001d34
       0     5603        M 0x80001d34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     5604        M 0x80001d38 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     5605        M 0x80001d3c addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     5606        M 0x80001d40 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     5607        M 0x80001d44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5608        M 0x80001d48 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     5609        M 0x80001d4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5610        M 0x80001d50 jalr    s7                     #; s7  = 0x80001668, (wrb) ra  <-- 0x80001d54, goto 0x80001668
       0     5611        M                                           #; (lsu) a0  <-- 48
       0     5613        M 0x80001668 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5614        M 0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5616        M 0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5617        M 0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5618        M 0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
       0     5619        M 0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
       0     5620        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5621        M 0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     5622        M 0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5633        M                                           #; (lsu) a4  <-- 14
       0     5634        M 0x80001688 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     5635        M 0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 15 ~~> Word[0x800030ac]
       0     5636        M 0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 14, (wrb) a4  <-- 0x800030ba
       0     5637        M 0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030ba, 48 ~~> Byte[0x80003102]
       0     5638        M 0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5659        M                                           #; (lsu) a4  <-- 15
       0     5660        M 0x8000169c addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     5661        M 0x800016a0 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     5662        M 0x800016a4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5663        M 0x800016a8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5664        M 0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5665        M 0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
       0     5670        M 0x80001710 ret                            #; ra  = 0x80001d54, goto 0x80001d54
       0     5675        M 0x80001d54 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     5676        M 0x80001d58 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     5677        M 0x80001d5c bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001d34
       0     5678        M 0x80001d34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     5679        M 0x80001d38 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     5680        M 0x80001d3c addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     5681        M 0x80001d40 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     5682        M 0x80001d44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5683        M 0x80001d48 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     5684        M 0x80001d4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5685        M 0x80001d50 jalr    s7                     #; s7  = 0x80001668, (wrb) ra  <-- 0x80001d54, goto 0x80001668
       0     5686        M                                           #; (lsu) a0  <-- 48
       0     5688        M 0x80001668 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5689        M 0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5691        M 0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5692        M 0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5693        M 0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
       0     5694        M 0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
       0     5695        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5696        M 0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     5697        M 0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5708        M                                           #; (lsu) a4  <-- 15
       0     5709        M 0x80001688 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     5710        M 0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 16 ~~> Word[0x800030ac]
       0     5711        M 0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 15, (wrb) a4  <-- 0x800030bb
       0     5712        M 0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030bb, 48 ~~> Byte[0x80003103]
       0     5713        M 0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5734        M                                           #; (lsu) a4  <-- 16
       0     5735        M 0x8000169c addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     5736        M 0x800016a0 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     5737        M 0x800016a4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5738        M 0x800016a8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5739        M 0x800016ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5740        M 0x800016b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001710
       0     5745        M 0x80001710 ret                            #; ra  = 0x80001d54, goto 0x80001d54
       0     5750        M 0x80001d54 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     5751        M 0x80001d58 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     5752        M 0x80001d5c bnez    s10, pc - 40           #; s10 = 0, not taken
       0     5764        M 0x80001d60 j       pc + 0x8               #; goto 0x80001d68
       0     5765        M 0x80001d68 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     5766        M 0x80001d6c sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     5777        M 0x80001d70 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     5778        M 0x80001d74 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     5779        M 0x80001d78 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     5780        M 0x80001d7c bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001dac
       0     5800        M 0x80001dac mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     5812        M 0x80001db0 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     5815        M 0x80001db4 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     5816        M 0x80001db8 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0     5817        M 0x80001dbc fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
       0     5818        M                                           #; (f:lsu) fs0  <-- 0.0000000
       0     5824        M 0x80001dc0 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
       0     5827        M                                           #; (lsu) s10 <-- 0x80002d4e
       0     5828        M 0x80001dc4 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     5831        M                                           #; (lsu) s9  <-- 8
       0     5832        M 0x80001dc8 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     5835        M                                           #; (lsu) s8  <-- 16
       0     5836        M 0x80001dcc lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     5839        M                                           #; (lsu) s7  <-- 0
       0     5840        M 0x80001dd0 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     5843        M                                           #; (lsu) s6  <-- 0
       0     5844        M 0x80001dd4 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     5847        M                                           #; (lsu) s5  <-- -1
       0     5848        M 0x80001dd8 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     5851        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     5852        M 0x80001ddc lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     5855        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     5856        M 0x80001de0 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     5859        M                                           #; (lsu) s2  <-- 0x80001668
       0     5860        M 0x80001de4 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     5863        M                                           #; (lsu) s1  <-- 8
       0     5864        M 0x80001de8 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     5867        M                                           #; (lsu) s0  <-- 0
       0     5868        M 0x80001dec lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     5869        M 0x80001df0 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     5871        M                                           #; (lsu) ra  <-- 0x80000d98
       0     5872        M 0x80001df4 ret                            #; ra  = 0x80000d98, goto 0x80000d98
       0     5883        M 0x80000d98 j       pc + 0x7c0             #; goto 0x80001558
       0     5895        M 0x80001558 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     5896        M 0x8000155c li      s6, 37                 #; (wrb) s6  <-- 37
       0     5907        M 0x80001560 li      s7, 46                 #; (wrb) s7  <-- 46
       0     5908        M 0x80001564 addi    s0, s10, 1             #; s10 = 0x80002d4e, (wrb) s0  <-- 0x80002d4f
       0     5909        M 0x80001568 j       pc - 0xa74             #; goto 0x80000af4
       0     5910        M 0x80000af4 addi    s10, s0, 2             #; s0  = 0x80002d4f, (wrb) s10 <-- 0x80002d51
       0     5911        M 0x80000af8 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     5912        M 0x80000afc li      s8, 10                 #; (wrb) s8  <-- 10
       0     5913        M 0x80000b00 lbu     a0, 0(s0)              #; s0  = 0x80002d4f, a0  <~~ Byte[0x80002d4f]
       0     5924        M                                           #; (lsu) a0  <-- 10
       0     5925        M 0x80000b04 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     5926        M 0x80000b08 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     5927        M 0x80000b0c addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     5928        M 0x80000b10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5929        M 0x80000b14 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     5930        M 0x80000b18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5931        M 0x80000b1c jalr    s2                     #; s2  = 0x80001668, (wrb) ra  <-- 0x80000b20, goto 0x80001668
       0     5934        M 0x80001668 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     5935        M 0x8000166c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5937        M 0x80001670 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5938        M 0x80001674 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5939        M 0x80001678 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003678
       0     5940        M 0x8000167c addi    a3, a3, -1484          #; a3  = 0x80003678, (wrb) a3  <-- 0x800030ac
       0     5941        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5942        M 0x80001680 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     5943        M 0x80001684 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5954        M                                           #; (lsu) a4  <-- 16
       0     5955        M 0x80001688 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     5956        M 0x8000168c sw      a5, 0(a1)              #; a1  = 0x800030ac, 17 ~~> Word[0x800030ac]
       0     5957        M 0x80001690 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 16, (wrb) a4  <-- 0x800030bc
       0     5958        M 0x80001694 sb      a0, 72(a4)             #; a4  = 0x800030bc, 10 ~~> Byte[0x80003104]
       0     5959        M 0x80001698 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5980        M                                           #; (lsu) a4  <-- 17
       0     5981        M 0x8000169c addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     5982        M 0x800016a0 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     5983        M 0x800016a4 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     5984        M 0x800016a8 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     5985        M 0x800016ac and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     5986        M 0x800016b0 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     5987        M 0x800016b4 add     a0, a3, a2             #; a3  = 0x800030ac, a2  = 0, (wrb) a0  <-- 0x800030ac
       0     5988        M 0x800016b8 addi    a2, a0, 72             #; a0  = 0x800030ac, (wrb) a2  <-- 0x800030f4
       0     5989        M 0x800016bc sw      zero, 12(a0)           #; a0  = 0x800030ac, 0 ~~> Word[0x800030b8]
       0     5990        M 0x800016c0 li      a3, 64                 #; (wrb) a3  <-- 64
       0     5991        M 0x800016c4 sw      a3, 8(a0)              #; a0  = 0x800030ac, 64 ~~> Word[0x800030b4]
       0     5992        M 0x800016c8 sw      zero, 20(a0)           #; a0  = 0x800030ac, 0 ~~> Word[0x800030c0]
       0     5993        M 0x800016cc li      a3, 1                  #; (wrb) a3  <-- 1
       0     6002        M 0x800016d0 sw      a3, 16(a0)             #; a0  = 0x800030ac, 1 ~~> Word[0x800030bc]
       0     6003        M 0x800016d4 sw      zero, 28(a0)           #; a0  = 0x800030ac, 0 ~~> Word[0x800030c8]
       0     6005        M 0x800016d8 sw      a2, 24(a0)             #; a0  = 0x800030ac, 0x800030f4 ~~> Word[0x800030c4]
       0     6015        M 0x800016dc lw      a2, 0(a1)              #; a1  = 0x800030ac, a2  <~~ Word[0x800030ac]
       0     6016        M 0x800016e0 addi    a3, a0, 8              #; a0  = 0x800030ac, (wrb) a3  <-- 0x800030b4
       0     6017        M 0x800016e4 sw      zero, 36(a0)           #; a0  = 0x800030ac, 0 ~~> Word[0x800030d0]
       0     6037        M                                           #; (lsu) a2  <-- 17
       0     6038        M 0x800016e8 sw      a2, 32(a0)             #; a0  = 0x800030ac, 17 ~~> Word[0x800030cc]
       0     6039        M 0x800016ec auipc   a0, 0x2                #; (wrb) a0  <-- 0x800036ec
       0     6040        M 0x800016f0 addi    a0, a0, -1900          #; a0  = 0x800036ec, (wrb) a0  <-- 0x80002f80
       0     6041        M 0x800016f4 sw      a3, 0(a0)              #; a0  = 0x80002f80, 0x800030b4 ~~> Word[0x80002f80]
       0     6042        M 0x800016f8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800036f8
       0     6043        M 0x800016fc addi    a0, a0, -1848          #; a0  = 0x800036f8, (wrb) a0  <-- 0x80002fc0
       0     6052        M 0x80001700 lw      a2, 0(a0)              #; a0  = 0x80002fc0, a2  <~~ Word[0x80002fc0]
       0     6067        M                                           #; (lsu) a2  <-- 0
       0     6068        M 0x80001704 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001700
       0     6069        M 0x80001700 lw      a2, 0(a0)              #; a0  = 0x80002fc0, a2  <~~ Word[0x80002fc0]
       0     6080        M                                           #; (lsu) a2  <-- 0
       0     6081        M 0x80001704 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001700
       0     6082        M 0x80001700 lw      a2, 0(a0)              #; a0  = 0x80002fc0, a2  <~~ Word[0x80002fc0]
       0     6093        M                                           #; (lsu) a2  <-- 0
       0     6094        M 0x80001704 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001700
       0     6095        M 0x80001700 lw      a2, 0(a0)              #; a0  = 0x80002fc0, a2  <~~ Word[0x80002fc0]
       0     6106        M                                           #; (lsu) a2  <-- 1
       0     6107        M 0x80001704 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     6108        M 0x80001708 sw      zero, 0(a0)            #; a0  = 0x80002fc0, 0 ~~> Word[0x80002fc0]
       0     6109        M 0x8000170c sw      zero, 0(a1)            #; a1  = 0x800030ac, 0 ~~> Word[0x800030ac]
       0     6111        M 0x80001710 ret                            #; ra  = 0x80000b20, goto 0x80000b20
       0     6116        M 0x80000b20 addi    s0, s0, 1              #; s0  = 0x80002d4f, (wrb) s0  <-- 0x80002d50
       0     6117        M 0x80000b24 addi    s10, s10, 1            #; s10 = 0x80002d51, (wrb) s10 <-- 0x80002d52
       0     6118        M 0x80000b28 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     6119        M 0x80000b2c lbu     a0, 0(s0)              #; s0  = 0x80002d50, a0  <~~ Byte[0x80002d50]
       0     6131        M                                           #; (lsu) a0  <-- 0
       0     6132        M 0x80000b30 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     6133        M 0x80000b34 j       pc + 0xad8             #; goto 0x8000160c
       0     6145        M 0x8000160c mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     6157        M 0x80001610 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001618
       0     6158        M 0x80001618 li      a0, 0                  #; (wrb) a0  <-- 0
       0     6159        M 0x8000161c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6169        M 0x80001620 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6170        M 0x80001624 jalr    s2                     #; s2  = 0x80001668, (wrb) ra  <-- 0x80001628, goto 0x80001668
       0     6183        M 0x80001668 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001710
       0     6188        M 0x80001710 ret                            #; ra  = 0x80001628, goto 0x80001628
       0     6189        M 0x80001628 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     6190        M 0x8000162c lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     6193        M                                           #; (lsu) s11 <-- 0
       0     6194        M 0x80001630 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     6197        M                                           #; (lsu) s10 <-- 0
       0     6198        M 0x80001634 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     6201        M                                           #; (lsu) s9  <-- 0
       0     6202        M 0x80001638 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     6205        M                                           #; (lsu) s8  <-- 0
       0     6206        M 0x8000163c lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     6209        M                                           #; (lsu) s7  <-- 0
       0     6210        M 0x80001640 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     6213        M                                           #; (lsu) s6  <-- 0
       0     6214        M 0x80001644 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     6217        M                                           #; (lsu) s5  <-- 0
       0     6218        M 0x80001648 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     6221        M                                           #; (lsu) s4  <-- 0
       0     6222        M 0x8000164c lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     6225        M                                           #; (lsu) s3  <-- 0
       0     6226        M 0x80001650 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     6229        M                                           #; (lsu) s2  <-- 0
       0     6230        M 0x80001654 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     6233        M                                           #; (lsu) s1  <-- 0
       0     6234        M 0x80001658 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     6237        M                                           #; (lsu) s0  <-- 0
       0     6238        M 0x8000165c lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     6239        M 0x80001660 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     6241        M                                           #; (lsu) ra  <-- 0x80000a64
       0     6242        M 0x80001664 ret                            #; ra  = 0x80000a64, goto 0x80000a64
       0     6245        M 0x80000a64 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     6246        M 0x80000a68 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     6248        M                                           #; (lsu) ra  <-- 0x800009f4
       0     6249        M 0x80000a6c ret                            #; ra  = 0x800009f4, goto 0x800009f4
       0     6252        M 0x800009f4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800029f4
       0     6253        M 0x800009f8 addi    a0, a0, 1540           #; a0  = 0x800029f4, (wrb) a0  <-- 0x80002ff8
       0     6256        M 0x800009fc fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ff8]
       0     6257        M 0x80000a08 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
       0     6258        M 0x80000a0c addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
       0     6265        M                                           #; (f:lsu) ft0  <-- 0.0001
       0     6266        M 0x80000a00 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0000000
       0     6267        M                                           #; (lsu) ra  <-- 0x80002ac0
       0     6268        M 0x80000a10 ret                            #; ra  = 0x80002ac0, goto 0x80002ac0
                         M 0x80000a04 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
       0     6269        M                                           #; (f:lsu) fs0  <-- 0.0
       0     6280        M 0x80002ac0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     6281        M 0x80002ac4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ac4
       0     6282        M 0x80002ac8 jalr    ra, ra, 524            #; ra  = 0x80002ac4, (wrb) ra  <-- 0x80002acc, goto 0x80002cd0
       0     6294        M 0x80002cd0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     6295        M 0x80002cd4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002acc ~~> Word[0x0011ff5c]
       0     6296        M 0x80002cd8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002cd8
       0     6297        M 0x80002cdc jalr    ra, ra, -1256          #; ra  = 0x80002cd8, (wrb) ra  <-- 0x80002ce0, goto 0x800027f0
       0     6309        M 0x800027f0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     6310        M 0x800027f4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     6311        M 0x800027f8 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     6314        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6315        M 0x800027fc lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     6318        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6321        M 0x80002800 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     6322        M 0x80002804 ret                            #; ra  = 0x80002ce0, goto 0x80002ce0
       0     6324        M                                           #; (lsu) a0  <-- 0x00120190
       0     6325        M 0x80002ce0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     6335        M                                           #; (lsu) a0  <-- 0
       0     6336        M 0x80002ce4 mv      zero, a0               #; a0  = 0
       0     6337        M 0x80002ce8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     6338        M 0x80002cec addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     6340        M                                           #; (lsu) ra  <-- 0x80002acc
       0     6341        M 0x80002cf0 ret                            #; ra  = 0x80002acc, goto 0x80002acc
       0     6355        M 0x80002acc mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     6359        M 0x80002ad0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ad0
       0     6360        M 0x80002ad4 jalr    ra, ra, 556            #; ra  = 0x80002ad0, (wrb) ra  <-- 0x80002ad8, goto 0x80002cfc
       0     6361        M 0x80002cfc addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     6362        M 0x80002d00 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     6363        M 0x80002d04 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002ad8 ~~> Word[0x0011ff5c]
       0     6364        M 0x80002d08 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d08
       0     6365        M 0x80002d0c jalr    ra, ra, -1336          #; ra  = 0x80002d08, (wrb) ra  <-- 0x80002d10, goto 0x800027d0
       0     6376        M 0x800027d0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     6377        M 0x800027d4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     6378        M 0x800027d8 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     6381        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6382        M 0x800027dc lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     6385        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6388        M 0x800027e0 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     6389        M 0x800027e4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6391        M                                           #; (lsu) a0  <-- 0
       0     6392        M 0x800027e8 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     6393        M 0x800027ec ret                            #; ra  = 0x80002d10, goto 0x80002d10
       0     6394        M 0x80002d10 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     6397        M                                           #; (lsu) t0  <-- 0
       0     6398        M 0x80002d14 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     6399        M 0x80002d18 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     6400        M 0x80002d1c bnez    a0, pc + 24            #; a0  = 0, not taken
       0     6401        M                                           #; (lsu) ra  <-- 0x80002ad8
       0     6406        M 0x80002d20 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     6407        M 0x80002d24 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     6408        M 0x80002d28 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002d28
       0     6409        M 0x80002d2c addi    t1, t1, 600            #; t1  = 0x80002d28, (wrb) t1  <-- 0x80002f80
       0     6418        M 0x80002d30 sw      t0, 0(t1)              #; t1  = 0x80002f80, 1 ~~> Word[0x80002f80]
       0     6419        M 0x80002d34 ret                            #; ra  = 0x80002ad8, goto 0x80002ad8
       0     6420        M 0x80002ad8 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 6420):
snitch_loads                                   137
snitch_stores                                  142
fpss_stores                                      5
fpss_loads                                      29
snitch_avg_load_latency                    11.7591
snitch_occupancy                            0.2849
snitch_fseq_rel_offloads                    0.1577
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        1.7833
fpss_avg_load_latency                       4.0345
fpss_occupancy                              0.0534
fpss_fpu_occupancy                          0.0468
fpss_fpu_rel_occupancy                      0.8772
cycles                                        6409
total_ipc                                   0.3383
