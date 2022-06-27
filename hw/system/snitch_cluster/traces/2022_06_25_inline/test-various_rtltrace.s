       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x800028c0
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x800028c0, (wrb) ra  <-- 4120, goto 0x800028c0
       0      269        M 0x800028c0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x800038c0
       0      270        M 0x800028c4 addi    gp, gp, -248           #; gp  = 0x800038c0, (wrb) gp  <-- 0x800037c8
       0      271        M 0x800028c8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800028c8
       0      272        M 0x800028cc jalr    ra, ra, 964            #; ra  = 0x800028c8, (wrb) ra  <-- 0x800028d0, goto 0x80002c8c
       0      292        M 0x80002c8c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002c90 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002c94 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002c98 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80002c9c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80002ca0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80002ca4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80002ca8 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80002cac mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80002cb0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80002cb4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80002cb8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80002cbc ret                            #; ra  = 0x800028d0, goto 0x800028d0
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x800028d0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x800028d4 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x800028d8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800028d8
       0      508        M 0x800028dc jalr    ra, ra, 1036           #; ra  = 0x800028d8, (wrb) ra  <-- 0x800028e0, goto 0x80002ce4
       0      523        M 0x80002ce4 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80002ce8 ret                            #; ra  = 0x800028e0, goto 0x800028e0
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x800028e0 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x800028e4 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x800028e8 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x800028ec sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x800028f0 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x800028f4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800028f4
       0      551        M 0x800028f8 addi    t0, t0, 1972           #; t0  = 0x800028f4, (wrb) t0  <-- 0x800030a8
       0      552        M 0x800028fc auipc   t1, 0x0                #; (wrb) t1  <-- 0x800028fc
       0      562        M 0x80002900 addi    t1, t1, 1968           #; t1  = 0x800028fc, (wrb) t1  <-- 0x800030ac
       0      563        M 0x80002904 bge     t0, t1, pc + 16        #; t0  = 0x800030a8, t1  = 0x800030ac, not taken
       0      564        M 0x80002908 sw      zero, 0(t0)            #; t0  = 0x800030a8, 0 ~~> Word[0x800030a8]
       0      565        M 0x8000290c addi    t0, t0, 4              #; t0  = 0x800030a8, (wrb) t0  <-- 0x800030ac
       0      573        M 0x80002910 blt     t0, t1, pc - 8         #; t0  = 0x800030ac, t1  = 0x800030ac, not taken
       0      574        M 0x80002914 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80002918 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x8000291c beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80002920 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80002924 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80002928 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x8000292c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80002930 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80002934 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80002938 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x8000293c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80002940 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80002944 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80002948 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x8000294c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80002950 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80002954 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80002958 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x8000295c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80002960 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80002964 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80002968 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x8000296c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80002970 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80002974 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80002978 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x8000297c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x80002980 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x80002984 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x80002988 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x8000298c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x80002990 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x80002994 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x80002998 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x8000299c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x800029a0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x800029a4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x800029a8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800029a8
       0      684        M 0x800029ac lw      t0, 900(t0)            #; t0  = 0x800029a8, t0  <~~ Word[0x80002d2c]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x800029b0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x800029b4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x800029b8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800029b8
       0      708        M 0x800029bc lw      t2, 880(t2)            #; t2  = 0x800029b8, t2  <~~ Word[0x80002d28]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x800029c0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x800029c4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x800029c8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x800029cc sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x800029d0 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x800029d4 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x800029d8 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x800029dc sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x800029e0 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800029e0
       0      762        M 0x800029e4 addi    t0, t0, 1512           #; t0  = 0x800029e0, (wrb) t0  <-- 0x80002fc8
       0      763        M 0x800029e8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800029e8
       0      764        M 0x800029ec addi    t1, t1, 1504           #; t1  = 0x800029e8, (wrb) t1  <-- 0x80002fc8
       0      775        M 0x800029f0 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800029f0
       0      776        M 0x800029f4 addi    t2, t2, 1496           #; t2  = 0x800029f0, (wrb) t2  <-- 0x80002fc8
       0      777        M 0x800029f8 auipc   t3, 0x0                #; (wrb) t3  <-- 0x800029f8
       0      778        M 0x800029fc addi    t3, t3, 1504           #; t3  = 0x800029f8, (wrb) t3  <-- 0x80002fd8
       0      787        M 0x80002a00 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002fc8, (wrb) sp  <-- 0x80122f38
       0      788        M 0x80002a04 sub     sp, sp, t1             #; sp  = 0x80122f38, t1  = 0x80002fc8, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80002a08 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002fc8, (wrb) sp  <-- 0x80122f38
       0      790        M 0x80002a0c sub     sp, sp, t3             #; sp  = 0x80122f38, t3  = 0x80002fd8, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80002a10 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80002a14 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80002a18 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x80002a1c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80002a20 bge     t0, t1, pc + 24        #; t0  = 0x80002fc8, t1  = 0x80002fc8, taken, goto 0x80002a38
       0      823        M 0x80002a38 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a38
       0      824        M 0x80002a3c addi    t0, t0, 1424           #; t0  = 0x80002a38, (wrb) t0  <-- 0x80002fc8
       0      835        M 0x80002a40 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002a40
       0      836        M 0x80002a44 addi    t1, t1, 1432           #; t1  = 0x80002a40, (wrb) t1  <-- 0x80002fd8
       0      837        M 0x80002a48 bge     t0, t1, pc + 20        #; t0  = 0x80002fc8, t1  = 0x80002fd8, not taken
       0      838        M 0x80002a4c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002a50 addi    t0, t0, 4              #; t0  = 0x80002fc8, (wrb) t0  <-- 0x80002fcc
       0      848        M 0x80002a54 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002a58 blt     t0, t2, pc - 12        #; t0  = 0x80002fcc, t2  = 0x80002fc8, not taken
       0      850        M 0x80002a5c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80002a60 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80002a64 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80002a68 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x80002a6c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80002a70 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80002a74 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a74
       0      877        M 0x80002a78 jalr    ra, ra, -1052          #; ra  = 0x80002a74, (wrb) ra  <-- 0x80002a7c, goto 0x80002658
       0      899        M 0x80002658 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      900        M 0x8000265c sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      911        M 0x80002660 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      949        M                                           #; (lsu) t1  <-- 0
       0      950        M 0x80002664 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      951        M 0x80002668 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      989        M                                           #; (lsu) a6  <-- 1
       0      990        M 0x8000266c lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1020        M                                           #; (lsu) a7  <-- 1
       0     1021        M 0x80002670 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1022        M 0x80002674 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1025        M                                           #; (acc) a0  <-- 0x02580533
       0     1060        M                                           #; (lsu) t0  <-- 8
       0     1061        M 0x80002678 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1064        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1065        M 0x8000267c sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1066        M 0x80002680 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1067        M 0x80002684 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1068        M 0x80002688 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1071        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1072        M 0x8000268c sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1078        M 0x80002690 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1079        M 0x80002694 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1080        M 0x80002698 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1081        M 0x8000269c lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1090        M 0x800026a0 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1100        M                                           #; (lsu) a0  <-- 0x80000000
       0     1101        M 0x800026a4 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1102        M 0x800026a8 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1103        M 0x800026ac sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1104        M 0x800026b0 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1140        M                                           #; (lsu) a0  <-- 0
       0     1141        M 0x800026b4 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1142        M 0x800026b8 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1179        M                                           #; (lsu) a1  <-- 1
       0     1180        M 0x800026bc sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1181        M 0x800026c0 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1182        M 0x800026c4 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1183        M 0x800026c8 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1184        M 0x800026cc sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1193        M 0x800026d0 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1205        M                                           #; (lsu) a0  <-- 0x00020000
       0     1206        M 0x800026d4 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1207        M 0x800026d8 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1208        M 0x800026dc sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1209        M 0x800026e0 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1210        M 0x800026e4 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1211        M 0x800026e8 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1212        M 0x800026ec sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1220        M 0x800026f0 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1221        M 0x800026f4 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1222        M 0x800026f8 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1223        M 0x800026fc slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1233        M 0x80002700 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1234        M 0x80002704 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1235        M 0x80002708 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1236        M 0x8000270c sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1245        M 0x80002710 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1246        M 0x80002714 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1247        M 0x80002718 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1248        M 0x8000271c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1257        M 0x80002720 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1258        M 0x80002724 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1262        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1263        M 0x80002728 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1266        M                                           #; (lsu) a1  <-- 0
       0     1267        M 0x8000272c lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1269        M 0x80002730 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1270        M                                           #; (lsu) a0  <-- 8
       0     1271        M 0x80002734 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1272        M 0x80002738 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1273        M 0x8000273c add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1281        M 0x80002740 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1282        M 0x80002744 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1283        M 0x80002748 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1284        M 0x8000274c auipc   a1, 0x1                #; (wrb) a1  <-- 0x8000374c
       0     1293        M 0x80002750 addi    a1, a1, -1696          #; a1  = 0x8000374c, (wrb) a1  <-- 0x800030ac
       0     1294        M 0x80002754 add     a0, a0, a1             #; a0  = 0, a1  = 0x800030ac, (wrb) a0  <-- 0x800030ac
       0     1295        M 0x80002758 sw      zero, 0(a0)            #; a0  = 0x800030ac, 0 ~~> Word[0x800030ac]
       0     1296        M 0x8000275c lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1344        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1345        M 0x80002760 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1346        M 0x80002764 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1347        M 0x80002768 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1348        M 0x8000276c addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1349        M 0x80002770 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1350        M 0x80002774 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1351        M 0x80002778 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1352        M 0x8000277c sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1362        M 0x80002780 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1363        M 0x80002784 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1364        M 0x80002788 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1366        M 0x8000278c lw      a0, 0(a1)              #; a1  = 0x800030ac, a0  <~~ Word[0x800030ac]
       0     1377        M                                           #; (lsu) a0  <-- 0
       0     1378        M 0x80002790 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1379        M 0x80002794 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1380        M 0x80002798 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1381        M 0x8000279c sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1387        M 0x800027a0 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1388        M 0x800027a4 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1389        M 0x800027a8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1390        M 0x800027ac sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1399        M 0x800027b0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1400        M 0x800027b4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1401        M 0x800027b8 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1402        M 0x800027bc ret                            #; ra  = 0x80002a7c, goto 0x80002a7c
       0     1415        M 0x80002a7c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1418        M                                           #; (lsu) a0  <-- 0
       0     1419        M 0x80002a80 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1422        M                                           #; (lsu) a1  <-- 8
       0     1423        M 0x80002a84 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1426        M                                           #; (lsu) a2  <-- 0x00100000
       0     1427        M 0x80002a88 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1430        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1431        M 0x80002a8c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1432        M 0x80002a90 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1433        M 0x80002a94 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a94
       0     1434        M 0x80002a98 addi    t0, t0, 60             #; t0  = 0x80002a94, (wrb) t0  <-- 0x80002ad0
       0     1435        M 0x80002a9c csrw    mtvec, t0              #; t0  = 0x80002ad0, (lsu) a4  <-- 4132
       0     1442        M 0x80002aa0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002aa0
       0     1443        M 0x80002aa4 jalr    ra, ra, 544            #; ra  = 0x80002aa0, (wrb) ra  <-- 0x80002aa8, goto 0x80002cc0
       0     1456        M 0x80002cc0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1457        M 0x80002cc4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002aa8 ~~> Word[0x0011ff5c]
       0     1458        M 0x80002cc8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002cc8
       0     1459        M 0x80002ccc jalr    ra, ra, -1256          #; ra  = 0x80002cc8, (wrb) ra  <-- 0x80002cd0, goto 0x800027e0
       0     1480        M 0x800027e0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1481        M 0x800027e4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1482        M 0x800027e8 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1485        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1486        M 0x800027ec lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1490        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1492        M 0x800027f0 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1493        M 0x800027f4 ret                            #; ra  = 0x80002cd0, goto 0x80002cd0
       0     1496        M                                           #; (lsu) a0  <-- 0x00120190
       0     1497        M 0x80002cd0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1526        M                                           #; (lsu) a0  <-- 0
       0     1527        M 0x80002cd4 mv      zero, a0               #; a0  = 0
       0     1528        M 0x80002cd8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1529        M 0x80002cdc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1531        M                                           #; (lsu) ra  <-- 0x80002aa8
       0     1532        M 0x80002ce0 ret                            #; ra  = 0x80002aa8, goto 0x80002aa8
       0     1536        M 0x80002aa8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000aa8
       0     1537        M 0x80002aac jalr    ra, ra, -1140          #; ra  = 0x80000aa8, (wrb) ra  <-- 0x80002ab0, goto 0x80000634
       0     1542        M 0x80000634 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1543        M 0x80000638 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1544        M 0x8000063c lw      a0, 4(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff64]
       0     1547        M                                           #; (lsu) a0  <-- 0
       0     1548        M 0x80000640 beqz    a0, pc + 12            #; a0  = 0, taken, goto 0x8000064c
       0     1549        M 0x8000064c li      a0, 25                 #; (wrb) a0  <-- 25
       0     1558        M 0x80000650 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80000650
       0     1559        M 0x80000654 jalr    zero, t1, 8            #; t1  = 0x80000650
       0     1560        M 0x80000658 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1561        M 0x8000065c sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002ab0 ~~> Word[0x0011ff5c]
       0     1572        M 0x80000664 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1573        M 0x80000668 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
                         M 0x80000660 fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
       0     1574        M 0x8000066c lw      a1, 0(a1)              #; a1  = 0x0011ff60, a1  <~~ Word[0x0011ff60]
       0     1577        M                                           #; (lsu) a1  <-- 0x0011ff70
       0     1584        M 0x80000670 lw      a1, 0(a1)              #; a1  = 0x0011ff70, a1  <~~ Word[0x0011ff70]
       0     1587        M                                           #; (lsu) a1  <-- 0x0011ff70
       0     1588        M 0x80000674 lw      t2, 88(a1)             #; a1  = 0x0011ff70, t2  <~~ Word[0x0011ffc8]
       0     1591        M                                           #; (lsu) t2  <-- 0x00100000
       0     1592        M 0x80000678 lw      a3, 80(a1)             #; a1  = 0x0011ff70, a3  <~~ Word[0x0011ffc0]
       0     1595        M                                           #; (lsu) a3  <-- 0x00100000
       0     1596        M 0x8000067c lw      a5, 84(a1)             #; a1  = 0x0011ff70, a5  <~~ Word[0x0011ffc4]
       0     1597        M 0x80000680 slli    a2, a0, 3              #; a0  = 25, (wrb) a2  <-- 200
       0     1598        M 0x80000684 add     a2, t2, a2             #; t2  = 0x00100000, a2  = 200, (wrb) a2  <-- 0x001000c8
       0     1599        M                                           #; (lsu) a5  <-- 0x0001df30
       0     1600        M 0x80000688 add     a3, a5, a3             #; a5  = 0x0001df30, a3  = 0x00100000, (wrb) a3  <-- 0x0011df30
       0     1601        M 0x8000068c bgeu    a3, a2, pc + 36        #; a3  = 0x0011df30, a2  = 0x001000c8, taken, goto 0x800006b0
       0     1620        M 0x800006b0 sw      a2, 88(a1)             #; a1  = 0x0011ff70, 0x001000c8 ~~> Word[0x0011ffc8]
       0     1621        M 0x800006b4 li      a1, 1                  #; (wrb) a1  <-- 1
       0     1622        M 0x800006b8 blt     a0, a1, pc - 28        #; a0  = 25, a1  = 1, not taken
       0     1623        M 0x800006bc addi    t0, a0, -1             #; a0  = 25, (wrb) t0  <-- 24
       0     1635        M 0x800006c0 slli    a1, t0, 3              #; t0  = 24, (wrb) a1  <-- 192
       0     1636        M 0x800006c4 add     a1, t2, a1             #; t2  = 0x00100000, a1  = 192, (wrb) a1  <-- 0x001000c0
       0     1637        M 0x800006c8 srli    a2, t2, 20             #; t2  = 0x00100000, (wrb) a2  <-- 1
       0     1638        M 0x800006cc snez    a6, a2                 #; a2  = 1, (wrb) a6  <-- 1
       0     1647        M 0x800006d0 bgeu    a1, t2, pc + 176       #; a1  = 0x001000c0, t2  = 0x00100000, taken, goto 0x80000780
       0     1670        M 0x80000780 lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     1671        M 0x80000784 addi    a2, a2, 1              #; a2  = 0x00120000, (wrb) a2  <-- 0x00120001
       0     1672        M 0x80000788 sltu    a1, a1, a2             #; a1  = 0x001000c0, a2  = 0x00120001, (wrb) a1  <-- 1
       0     1673        M 0x8000078c and     a7, a6, a1             #; a6  = 1, a1  = 1, (wrb) a7  <-- 1
       0     1682        M 0x80000790 beqz    a7, pc - 176           #; a7  = 1, not taken
       0     1683        M 0x80000794 li      a5, 0                  #; (wrb) a5  <-- 0
       0     1684        M 0x80000798 li      a1, 8                  #; (wrb) a1  <-- 8
       0     1685        M 0x8000079c li      a2, 64                 #; (wrb) a2  <-- 64
       0     1695        M 0x800007a0 scfgw   t0, a2                 #; t0  = 24, a2  = 64
       0     1696        M 0x800007a4 li      a2, 192                #; (wrb) a2  <-- 192
       0     1697        M 0x800007a8 scfgw   a1, a2                 #; a1  = 8, a2  = 192
       0     1698        M 0x800007ac li      a1, 32                 #; (wrb) a1  <-- 32
       0     1707        M 0x800007b0 scfgw   zero, a1               #; a1  = 32
       0     1708        M 0x800007b4 scfgwi  t2, 896                #; t2  = 0x00100000
       0     1710        M 0x800007bc auipc   a1, 0x3                #; (wrb) a1  <-- 0x800037bc
                         M 0x800007b8 csrrsi  a1, ssr, 1             #; 
       0     1719        M 0x800007c0 addi    a1, a1, -2020          #; a1  = 0x800037bc, (wrb) a1  <-- 0x80002fd8
       0     1721        M 0x800007c8 lui     a1, 0x8421             #; (wrb) a1  <-- 0x08421000
       0     1722        M 0x800007cc addi    a1, a1, 133            #; a1  = 0x08421000, (wrb) a1  <-- 0x08421085
                         M 0x800007c4 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x80002fd8]
       0     1731        M 0x800007d0 mv      a3, a0                 #; a0  = 25, (wrb) a3  <-- 25
                         M                                           #; (f:lsu) ft3  <-- 1.4142
       0     1732        M 0x800007d4 mulhu   a2, a5, a1             #; a5  = 0, a1  = 0x08421085
       0     1735        M                                           #; (acc) a4  <-- 0x40c78733
       0     1736        M 0x800007d8 sub     a4, a5, a2             #; a5  = 0, a2  = 0, (wrb) a4  <-- 0
       0     1737        M 0x800007dc srli    a4, a4, 1              #; a4  = 0, (wrb) a4  <-- 0
       0     1743        M 0x800007e0 add     a2, a4, a2             #; a4  = 0, a2  = 0, (wrb) a2  <-- 0
       0     1744        M 0x800007e4 srli    a2, a2, 4              #; a2  = 0, (wrb) a2  <-- 0
       0     1745        M 0x800007e8 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1746        M 0x800007ec sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1755        M 0x800007f0 add     a2, a5, a2             #; a5  = 0, a2  = 0, (wrb) a2  <-- 0
       0     1757        M 0x800007f4 fcvt.d.w ft4, a2               #; ac1  = 0
       0     1758        M                                           #; (f:fpu) ft4  <-- 0.0
       0     1759        M 0x800007f8 fmul.d  ft4, ft4, ft3          #; ft4  = 0.0, ft3  = 1.4142
       0     1762        M                                           #; (f:fpu) ft4  <-- 0.0
       0     1763        M 0x800007fc fsgnj.d ft0, ft4, ft4          #; ft4  = 0.0, ft4  = 0.0
       0     1764        M                                           #; (f:fpu) ft0  <-- 0.0
       0     1767        M 0x80000800 addi    a3, a3, -1             #; a3  = 25, (wrb) a3  <-- 24
       0     1768        M 0x80000804 addi    a5, a5, 1              #; a5  = 0, (wrb) a5  <-- 1
       0     1769        M 0x80000808 bnez    a3, pc - 52            #; a3  = 24, taken, goto 0x800007d4
       0     1770        M 0x800007d4 mulhu   a2, a5, a1             #; a5  = 1, a1  = 0x08421085
       0     1773        M                                           #; (acc) a4  <-- 0x40c78733
       0     1774        M 0x800007d8 sub     a4, a5, a2             #; a5  = 1, a2  = 0, (wrb) a4  <-- 1
       0     1775        M 0x800007dc srli    a4, a4, 1              #; a4  = 1, (wrb) a4  <-- 0
       0     1776        M 0x800007e0 add     a2, a4, a2             #; a4  = 0, a2  = 0, (wrb) a2  <-- 0
       0     1777        M 0x800007e4 srli    a2, a2, 4              #; a2  = 0, (wrb) a2  <-- 0
       0     1778        M 0x800007e8 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1779        M 0x800007ec sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1780        M 0x800007f0 add     a2, a5, a2             #; a5  = 1, a2  = 0, (wrb) a2  <-- 1
       0     1782        M 0x800007f4 fcvt.d.w ft4, a2               #; ac1  = 1
       0     1783        M                                           #; (f:fpu) ft4  <-- 1.0
       0     1784        M 0x80000800 addi    a3, a3, -1             #; a3  = 24, (wrb) a3  <-- 23
                         M 0x800007f8 fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 1.4142
       0     1785        M 0x80000804 addi    a5, a5, 1              #; a5  = 1, (wrb) a5  <-- 2
       0     1786        M 0x80000808 bnez    a3, pc - 52            #; a3  = 23, taken, goto 0x800007d4
       0     1787        M 0x800007d4 mulhu   a2, a5, a1             #; a5  = 2, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 1.4142
       0     1788        M 0x800007fc fsgnj.d ft0, ft4, ft4          #; ft4  = 1.4142, ft4  = 1.4142
       0     1789        M                                           #; (f:fpu) ft0  <-- 1.4142
       0     1790        M                                           #; (acc) a4  <-- 0x40c78733
       0     1791        M 0x800007d8 sub     a4, a5, a2             #; a5  = 2, a2  = 0, (wrb) a4  <-- 2
       0     1792        M 0x800007dc srli    a4, a4, 1              #; a4  = 2, (wrb) a4  <-- 1
       0     1793        M 0x800007e0 add     a2, a4, a2             #; a4  = 1, a2  = 0, (wrb) a2  <-- 1
       0     1794        M 0x800007e4 srli    a2, a2, 4              #; a2  = 1, (wrb) a2  <-- 0
       0     1795        M 0x800007e8 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1796        M 0x800007ec sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1797        M 0x800007f0 add     a2, a5, a2             #; a5  = 2, a2  = 0, (wrb) a2  <-- 2
       0     1799        M 0x800007f4 fcvt.d.w ft4, a2               #; ac1  = 2
       0     1800        M                                           #; (f:fpu) ft4  <-- 2.0
       0     1801        M 0x80000800 addi    a3, a3, -1             #; a3  = 23, (wrb) a3  <-- 22
                         M 0x800007f8 fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 1.4142
       0     1802        M 0x80000804 addi    a5, a5, 1              #; a5  = 2, (wrb) a5  <-- 3
       0     1803        M 0x80000808 bnez    a3, pc - 52            #; a3  = 22, taken, goto 0x800007d4
       0     1804        M 0x800007d4 mulhu   a2, a5, a1             #; a5  = 3, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 2.8284
       0     1805        M 0x800007fc fsgnj.d ft0, ft4, ft4          #; ft4  = 2.8284, ft4  = 2.8284
       0     1806        M                                           #; (f:fpu) ft0  <-- 2.8284
       0     1807        M                                           #; (acc) a4  <-- 0x40c78733
       0     1808        M 0x800007d8 sub     a4, a5, a2             #; a5  = 3, a2  = 0, (wrb) a4  <-- 3
       0     1809        M 0x800007dc srli    a4, a4, 1              #; a4  = 3, (wrb) a4  <-- 1
       0     1810        M 0x800007e0 add     a2, a4, a2             #; a4  = 1, a2  = 0, (wrb) a2  <-- 1
       0     1811        M 0x800007e4 srli    a2, a2, 4              #; a2  = 1, (wrb) a2  <-- 0
       0     1812        M 0x800007e8 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1813        M 0x800007ec sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1814        M 0x800007f0 add     a2, a5, a2             #; a5  = 3, a2  = 0, (wrb) a2  <-- 3
       0     1816        M 0x800007f4 fcvt.d.w ft4, a2               #; ac1  = 3
       0     1817        M                                           #; (f:fpu) ft4  <-- 3.0
       0     1818        M 0x80000800 addi    a3, a3, -1             #; a3  = 22, (wrb) a3  <-- 21
                         M 0x800007f8 fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 1.4142
       0     1819        M 0x80000804 addi    a5, a5, 1              #; a5  = 3, (wrb) a5  <-- 4
       0     1820        M 0x80000808 bnez    a3, pc - 52            #; a3  = 21, taken, goto 0x800007d4
       0     1821        M 0x800007d4 mulhu   a2, a5, a1             #; a5  = 4, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 4.2426000
       0     1822        M 0x800007fc fsgnj.d ft0, ft4, ft4          #; ft4  = 4.2426000, ft4  = 4.2426000
       0     1823        M                                           #; (f:fpu) ft0  <-- 4.2426000
       0     1824        M                                           #; (acc) a4  <-- 0x40c78733
       0     1825        M 0x800007d8 sub     a4, a5, a2             #; a5  = 4, a2  = 0, (wrb) a4  <-- 4
       0     1826        M 0x800007dc srli    a4, a4, 1              #; a4  = 4, (wrb) a4  <-- 2
       0     1827        M 0x800007e0 add     a2, a4, a2             #; a4  = 2, a2  = 0, (wrb) a2  <-- 2
       0     1828        M 0x800007e4 srli    a2, a2, 4              #; a2  = 2, (wrb) a2  <-- 0
       0     1829        M 0x800007e8 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1830        M 0x800007ec sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1831        M 0x800007f0 add     a2, a5, a2             #; a5  = 4, a2  = 0, (wrb) a2  <-- 4
       0     1833        M 0x800007f4 fcvt.d.w ft4, a2               #; ac1  = 4
       0     1834        M                                           #; (f:fpu) ft4  <-- 4.0
       0     1835        M 0x80000800 addi    a3, a3, -1             #; a3  = 21, (wrb) a3  <-- 20
                         M 0x800007f8 fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 1.4142
       0     1836        M 0x80000804 addi    a5, a5, 1              #; a5  = 4, (wrb) a5  <-- 5
       0     1837        M 0x80000808 bnez    a3, pc - 52            #; a3  = 20, taken, goto 0x800007d4
       0     1838        M 0x800007d4 mulhu   a2, a5, a1             #; a5  = 5, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 5.6568
       0     1839        M 0x800007fc fsgnj.d ft0, ft4, ft4          #; ft4  = 5.6568, ft4  = 5.6568
       0     1840        M                                           #; (f:fpu) ft0  <-- 5.6568
       0     1841        M                                           #; (acc) a4  <-- 0x40c78733
       0     1842        M 0x800007d8 sub     a4, a5, a2             #; a5  = 5, a2  = 0, (wrb) a4  <-- 5
       0     1843        M 0x800007dc srli    a4, a4, 1              #; a4  = 5, (wrb) a4  <-- 2
       0     1844        M 0x800007e0 add     a2, a4, a2             #; a4  = 2, a2  = 0, (wrb) a2  <-- 2
       0     1845        M 0x800007e4 srli    a2, a2, 4              #; a2  = 2, (wrb) a2  <-- 0
       0     1846        M 0x800007e8 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1847        M 0x800007ec sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1848        M 0x800007f0 add     a2, a5, a2             #; a5  = 5, a2  = 0, (wrb) a2  <-- 5
       0     1850        M 0x800007f4 fcvt.d.w ft4, a2               #; ac1  = 5
       0     1851        M                                           #; (f:fpu) ft4  <-- 5.0
       0     1852        M 0x80000800 addi    a3, a3, -1             #; a3  = 20, (wrb) a3  <-- 19
                         M 0x800007f8 fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 1.4142
       0     1853        M 0x80000804 addi    a5, a5, 1              #; a5  = 5, (wrb) a5  <-- 6
       0     1854        M 0x80000808 bnez    a3, pc - 52            #; a3  = 19, taken, goto 0x800007d4
       0     1855        M 0x800007d4 mulhu   a2, a5, a1             #; a5  = 6, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 7.071
       0     1856        M 0x800007fc fsgnj.d ft0, ft4, ft4          #; ft4  = 7.071, ft4  = 7.071
       0     1857        M                                           #; (f:fpu) ft0  <-- 7.071
       0     1858        M                                           #; (acc) a4  <-- 0x40c78733
       0     1859        M 0x800007d8 sub     a4, a5, a2             #; a5  = 6, a2  = 0, (wrb) a4  <-- 6
       0     1860        M 0x800007dc srli    a4, a4, 1              #; a4  = 6, (wrb) a4  <-- 3
       0     1861        M 0x800007e0 add     a2, a4, a2             #; a4  = 3, a2  = 0, (wrb) a2  <-- 3
       0     1862        M 0x800007e4 srli    a2, a2, 4              #; a2  = 3, (wrb) a2  <-- 0
       0     1863        M 0x800007e8 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1864        M 0x800007ec sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1865        M 0x800007f0 add     a2, a5, a2             #; a5  = 6, a2  = 0, (wrb) a2  <-- 6
       0     1867        M 0x800007f4 fcvt.d.w ft4, a2               #; ac1  = 6
       0     1868        M                                           #; (f:fpu) ft4  <-- 6.0
       0     1869        M 0x80000800 addi    a3, a3, -1             #; a3  = 19, (wrb) a3  <-- 18
                         M 0x800007f8 fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 1.4142
       0     1870        M 0x80000804 addi    a5, a5, 1              #; a5  = 6, (wrb) a5  <-- 7
       0     1871        M 0x80000808 bnez    a3, pc - 52            #; a3  = 18, taken, goto 0x800007d4
       0     1872        M 0x800007d4 mulhu   a2, a5, a1             #; a5  = 7, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 8.4852000
       0     1873        M 0x800007fc fsgnj.d ft0, ft4, ft4          #; ft4  = 8.4852000, ft4  = 8.4852000
       0     1874        M                                           #; (f:fpu) ft0  <-- 8.4852000
       0     1875        M                                           #; (acc) a4  <-- 0x40c78733
       0     1876        M 0x800007d8 sub     a4, a5, a2             #; a5  = 7, a2  = 0, (wrb) a4  <-- 7
       0     1877        M 0x800007dc srli    a4, a4, 1              #; a4  = 7, (wrb) a4  <-- 3
       0     1878        M 0x800007e0 add     a2, a4, a2             #; a4  = 3, a2  = 0, (wrb) a2  <-- 3
       0     1879        M 0x800007e4 srli    a2, a2, 4              #; a2  = 3, (wrb) a2  <-- 0
       0     1880        M 0x800007e8 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1881        M 0x800007ec sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1882        M 0x800007f0 add     a2, a5, a2             #; a5  = 7, a2  = 0, (wrb) a2  <-- 7
       0     1884        M 0x800007f4 fcvt.d.w ft4, a2               #; ac1  = 7
       0     1885        M                                           #; (f:fpu) ft4  <-- 7.0
       0     1886        M 0x80000800 addi    a3, a3, -1             #; a3  = 18, (wrb) a3  <-- 17
                         M 0x800007f8 fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 1.4142
       0     1887        M 0x80000804 addi    a5, a5, 1              #; a5  = 7, (wrb) a5  <-- 8
       0     1888        M 0x80000808 bnez    a3, pc - 52            #; a3  = 17, taken, goto 0x800007d4
       0     1889        M 0x800007d4 mulhu   a2, a5, a1             #; a5  = 8, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 9.8994
       0     1890        M 0x800007fc fsgnj.d ft0, ft4, ft4          #; ft4  = 9.8994, ft4  = 9.8994
       0     1891        M                                           #; (f:fpu) ft0  <-- 9.8994
       0     1892        M                                           #; (acc) a4  <-- 0x40c78733
       0     1893        M 0x800007d8 sub     a4, a5, a2             #; a5  = 8, a2  = 0, (wrb) a4  <-- 8
       0     1894        M 0x800007dc srli    a4, a4, 1              #; a4  = 8, (wrb) a4  <-- 4
       0     1895        M 0x800007e0 add     a2, a4, a2             #; a4  = 4, a2  = 0, (wrb) a2  <-- 4
       0     1896        M 0x800007e4 srli    a2, a2, 4              #; a2  = 4, (wrb) a2  <-- 0
       0     1897        M 0x800007e8 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1898        M 0x800007ec sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1899        M 0x800007f0 add     a2, a5, a2             #; a5  = 8, a2  = 0, (wrb) a2  <-- 8
       0     1901        M 0x800007f4 fcvt.d.w ft4, a2               #; ac1  = 8
       0     1902        M                                           #; (f:fpu) ft4  <-- 8.0
       0     1903        M 0x80000800 addi    a3, a3, -1             #; a3  = 17, (wrb) a3  <-- 16
                         M 0x800007f8 fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 1.4142
       0     1904        M 0x80000804 addi    a5, a5, 1              #; a5  = 8, (wrb) a5  <-- 9
       0     1905        M 0x80000808 bnez    a3, pc - 52            #; a3  = 16, taken, goto 0x800007d4
       0     1906        M 0x800007d4 mulhu   a2, a5, a1             #; a5  = 9, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 11.3136
       0     1907        M 0x800007fc fsgnj.d ft0, ft4, ft4          #; ft4  = 11.3136, ft4  = 11.3136
       0     1908        M                                           #; (f:fpu) ft0  <-- 11.3136
       0     1909        M                                           #; (acc) a4  <-- 0x40c78733
       0     1910        M 0x800007d8 sub     a4, a5, a2             #; a5  = 9, a2  = 0, (wrb) a4  <-- 9
       0     1911        M 0x800007dc srli    a4, a4, 1              #; a4  = 9, (wrb) a4  <-- 4
       0     1912        M 0x800007e0 add     a2, a4, a2             #; a4  = 4, a2  = 0, (wrb) a2  <-- 4
       0     1913        M 0x800007e4 srli    a2, a2, 4              #; a2  = 4, (wrb) a2  <-- 0
       0     1914        M 0x800007e8 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1915        M 0x800007ec sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1916        M 0x800007f0 add     a2, a5, a2             #; a5  = 9, a2  = 0, (wrb) a2  <-- 9
       0     1918        M 0x800007f4 fcvt.d.w ft4, a2               #; ac1  = 9
       0     1919        M                                           #; (f:fpu) ft4  <-- 9.0
       0     1920        M 0x80000800 addi    a3, a3, -1             #; a3  = 16, (wrb) a3  <-- 15
                         M 0x800007f8 fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 1.4142
       0     1921        M 0x80000804 addi    a5, a5, 1              #; a5  = 9, (wrb) a5  <-- 10
       0     1922        M 0x80000808 bnez    a3, pc - 52            #; a3  = 15, taken, goto 0x800007d4
       0     1923        M 0x800007d4 mulhu   a2, a5, a1             #; a5  = 10, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 12.7278000
       0     1924        M 0x800007fc fsgnj.d ft0, ft4, ft4          #; ft4  = 12.7278000, ft4  = 12.7278000
       0     1925        M                                           #; (f:fpu) ft0  <-- 12.7278000
       0     1926        M                                           #; (acc) a4  <-- 0x40c78733
       0     1927        M 0x800007d8 sub     a4, a5, a2             #; a5  = 10, a2  = 0, (wrb) a4  <-- 10
       0     1928        M 0x800007dc srli    a4, a4, 1              #; a4  = 10, (wrb) a4  <-- 5
       0     1929        M 0x800007e0 add     a2, a4, a2             #; a4  = 5, a2  = 0, (wrb) a2  <-- 5
       0     1930        M 0x800007e4 srli    a2, a2, 4              #; a2  = 5, (wrb) a2  <-- 0
       0     1931        M 0x800007e8 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1932        M 0x800007ec sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1933        M 0x800007f0 add     a2, a5, a2             #; a5  = 10, a2  = 0, (wrb) a2  <-- 10
       0     1935        M 0x800007f4 fcvt.d.w ft4, a2               #; ac1  = 10
       0     1936        M                                           #; (f:fpu) ft4  <-- 10.0
       0     1937        M 0x80000800 addi    a3, a3, -1             #; a3  = 15, (wrb) a3  <-- 14
                         M 0x800007f8 fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 1.4142
       0     1938        M 0x80000804 addi    a5, a5, 1              #; a5  = 10, (wrb) a5  <-- 11
       0     1939        M 0x80000808 bnez    a3, pc - 52            #; a3  = 14, taken, goto 0x800007d4
       0     1940        M 0x800007d4 mulhu   a2, a5, a1             #; a5  = 11, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 14.142
       0     1941        M 0x800007fc fsgnj.d ft0, ft4, ft4          #; ft4  = 14.142, ft4  = 14.142
       0     1942        M                                           #; (f:fpu) ft0  <-- 14.142
       0     1943        M                                           #; (acc) a4  <-- 0x40c78733
       0     1944        M 0x800007d8 sub     a4, a5, a2             #; a5  = 11, a2  = 0, (wrb) a4  <-- 11
       0     1945        M 0x800007dc srli    a4, a4, 1              #; a4  = 11, (wrb) a4  <-- 5
       0     1946        M 0x800007e0 add     a2, a4, a2             #; a4  = 5, a2  = 0, (wrb) a2  <-- 5
       0     1947        M 0x800007e4 srli    a2, a2, 4              #; a2  = 5, (wrb) a2  <-- 0
       0     1948        M 0x800007e8 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1949        M 0x800007ec sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1950        M 0x800007f0 add     a2, a5, a2             #; a5  = 11, a2  = 0, (wrb) a2  <-- 11
       0     1952        M 0x800007f4 fcvt.d.w ft4, a2               #; ac1  = 11
       0     1953        M                                           #; (f:fpu) ft4  <-- 11.0
       0     1954        M 0x80000800 addi    a3, a3, -1             #; a3  = 14, (wrb) a3  <-- 13
                         M 0x800007f8 fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 1.4142
       0     1955        M 0x80000804 addi    a5, a5, 1              #; a5  = 11, (wrb) a5  <-- 12
       0     1956        M 0x80000808 bnez    a3, pc - 52            #; a3  = 13, taken, goto 0x800007d4
       0     1957        M 0x800007d4 mulhu   a2, a5, a1             #; a5  = 12, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 15.5562000
       0     1958        M 0x800007fc fsgnj.d ft0, ft4, ft4          #; ft4  = 15.5562000, ft4  = 15.5562000
       0     1959        M                                           #; (f:fpu) ft0  <-- 15.5562000
       0     1960        M                                           #; (acc) a4  <-- 0x40c78733
       0     1961        M 0x800007d8 sub     a4, a5, a2             #; a5  = 12, a2  = 0, (wrb) a4  <-- 12
       0     1962        M 0x800007dc srli    a4, a4, 1              #; a4  = 12, (wrb) a4  <-- 6
       0     1963        M 0x800007e0 add     a2, a4, a2             #; a4  = 6, a2  = 0, (wrb) a2  <-- 6
       0     1964        M 0x800007e4 srli    a2, a2, 4              #; a2  = 6, (wrb) a2  <-- 0
       0     1965        M 0x800007e8 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1966        M 0x800007ec sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1967        M 0x800007f0 add     a2, a5, a2             #; a5  = 12, a2  = 0, (wrb) a2  <-- 12
       0     1969        M 0x800007f4 fcvt.d.w ft4, a2               #; ac1  = 12
       0     1970        M                                           #; (f:fpu) ft4  <-- 12.0
       0     1971        M 0x80000800 addi    a3, a3, -1             #; a3  = 13, (wrb) a3  <-- 12
                         M 0x800007f8 fmul.d  ft4, ft4, ft3          #; ft4  = 12.0, ft3  = 1.4142
       0     1972        M 0x80000804 addi    a5, a5, 1              #; a5  = 12, (wrb) a5  <-- 13
       0     1973        M 0x80000808 bnez    a3, pc - 52            #; a3  = 12, taken, goto 0x800007d4
       0     1974        M 0x800007d4 mulhu   a2, a5, a1             #; a5  = 13, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 16.9704000
       0     1975        M 0x800007fc fsgnj.d ft0, ft4, ft4          #; ft4  = 16.9704000, ft4  = 16.9704000
       0     1976        M                                           #; (f:fpu) ft0  <-- 16.9704000
       0     1977        M                                           #; (acc) a4  <-- 0x40c78733
       0     1978        M 0x800007d8 sub     a4, a5, a2             #; a5  = 13, a2  = 0, (wrb) a4  <-- 13
       0     1979        M 0x800007dc srli    a4, a4, 1              #; a4  = 13, (wrb) a4  <-- 6
       0     1980        M 0x800007e0 add     a2, a4, a2             #; a4  = 6, a2  = 0, (wrb) a2  <-- 6
       0     1981        M 0x800007e4 srli    a2, a2, 4              #; a2  = 6, (wrb) a2  <-- 0
       0     1982        M 0x800007e8 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1983        M 0x800007ec sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1984        M 0x800007f0 add     a2, a5, a2             #; a5  = 13, a2  = 0, (wrb) a2  <-- 13
       0     1986        M 0x800007f4 fcvt.d.w ft4, a2               #; ac1  = 13
       0     1987        M                                           #; (f:fpu) ft4  <-- 13.0
       0     1988        M 0x80000800 addi    a3, a3, -1             #; a3  = 12, (wrb) a3  <-- 11
                         M 0x800007f8 fmul.d  ft4, ft4, ft3          #; ft4  = 13.0, ft3  = 1.4142
       0     1989        M 0x80000804 addi    a5, a5, 1              #; a5  = 13, (wrb) a5  <-- 14
       0     1990        M 0x80000808 bnez    a3, pc - 52            #; a3  = 11, taken, goto 0x800007d4
       0     1991        M 0x800007d4 mulhu   a2, a5, a1             #; a5  = 14, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 18.3846
       0     1992        M 0x800007fc fsgnj.d ft0, ft4, ft4          #; ft4  = 18.3846, ft4  = 18.3846
       0     1993        M                                           #; (f:fpu) ft0  <-- 18.3846
       0     1994        M                                           #; (acc) a4  <-- 0x40c78733
       0     1995        M 0x800007d8 sub     a4, a5, a2             #; a5  = 14, a2  = 0, (wrb) a4  <-- 14
       0     1996        M 0x800007dc srli    a4, a4, 1              #; a4  = 14, (wrb) a4  <-- 7
       0     1997        M 0x800007e0 add     a2, a4, a2             #; a4  = 7, a2  = 0, (wrb) a2  <-- 7
       0     1998        M 0x800007e4 srli    a2, a2, 4              #; a2  = 7, (wrb) a2  <-- 0
       0     1999        M 0x800007e8 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2000        M 0x800007ec sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2001        M 0x800007f0 add     a2, a5, a2             #; a5  = 14, a2  = 0, (wrb) a2  <-- 14
       0     2003        M 0x800007f4 fcvt.d.w ft4, a2               #; ac1  = 14
       0     2004        M                                           #; (f:fpu) ft4  <-- 14.0
       0     2005        M 0x80000800 addi    a3, a3, -1             #; a3  = 11, (wrb) a3  <-- 10
                         M 0x800007f8 fmul.d  ft4, ft4, ft3          #; ft4  = 14.0, ft3  = 1.4142
       0     2006        M 0x80000804 addi    a5, a5, 1              #; a5  = 14, (wrb) a5  <-- 15
       0     2007        M 0x80000808 bnez    a3, pc - 52            #; a3  = 10, taken, goto 0x800007d4
       0     2008        M 0x800007d4 mulhu   a2, a5, a1             #; a5  = 15, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 19.7988
       0     2009        M 0x800007fc fsgnj.d ft0, ft4, ft4          #; ft4  = 19.7988, ft4  = 19.7988
       0     2010        M                                           #; (f:fpu) ft0  <-- 19.7988
       0     2011        M                                           #; (acc) a4  <-- 0x40c78733
       0     2012        M 0x800007d8 sub     a4, a5, a2             #; a5  = 15, a2  = 0, (wrb) a4  <-- 15
       0     2013        M 0x800007dc srli    a4, a4, 1              #; a4  = 15, (wrb) a4  <-- 7
       0     2014        M 0x800007e0 add     a2, a4, a2             #; a4  = 7, a2  = 0, (wrb) a2  <-- 7
       0     2015        M 0x800007e4 srli    a2, a2, 4              #; a2  = 7, (wrb) a2  <-- 0
       0     2016        M 0x800007e8 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2017        M 0x800007ec sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2018        M 0x800007f0 add     a2, a5, a2             #; a5  = 15, a2  = 0, (wrb) a2  <-- 15
       0     2020        M 0x800007f4 fcvt.d.w ft4, a2               #; ac1  = 15
       0     2021        M                                           #; (f:fpu) ft4  <-- 15.0
       0     2022        M 0x80000800 addi    a3, a3, -1             #; a3  = 10, (wrb) a3  <-- 9
                         M 0x800007f8 fmul.d  ft4, ft4, ft3          #; ft4  = 15.0, ft3  = 1.4142
       0     2023        M 0x80000804 addi    a5, a5, 1              #; a5  = 15, (wrb) a5  <-- 16
       0     2024        M 0x80000808 bnez    a3, pc - 52            #; a3  = 9, taken, goto 0x800007d4
       0     2025        M 0x800007d4 mulhu   a2, a5, a1             #; a5  = 16, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 21.2130000
       0     2026        M 0x800007fc fsgnj.d ft0, ft4, ft4          #; ft4  = 21.2130000, ft4  = 21.2130000
       0     2027        M                                           #; (f:fpu) ft0  <-- 21.2130000
       0     2028        M                                           #; (acc) a4  <-- 0x40c78733
       0     2029        M 0x800007d8 sub     a4, a5, a2             #; a5  = 16, a2  = 0, (wrb) a4  <-- 16
       0     2030        M 0x800007dc srli    a4, a4, 1              #; a4  = 16, (wrb) a4  <-- 8
       0     2031        M 0x800007e0 add     a2, a4, a2             #; a4  = 8, a2  = 0, (wrb) a2  <-- 8
       0     2032        M 0x800007e4 srli    a2, a2, 4              #; a2  = 8, (wrb) a2  <-- 0
       0     2033        M 0x800007e8 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2034        M 0x800007ec sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2035        M 0x800007f0 add     a2, a5, a2             #; a5  = 16, a2  = 0, (wrb) a2  <-- 16
       0     2037        M 0x800007f4 fcvt.d.w ft4, a2               #; ac1  = 16
       0     2038        M                                           #; (f:fpu) ft4  <-- 16.0
       0     2039        M 0x80000800 addi    a3, a3, -1             #; a3  = 9, (wrb) a3  <-- 8
                         M 0x800007f8 fmul.d  ft4, ft4, ft3          #; ft4  = 16.0, ft3  = 1.4142
       0     2040        M 0x80000804 addi    a5, a5, 1              #; a5  = 16, (wrb) a5  <-- 17
       0     2041        M 0x80000808 bnez    a3, pc - 52            #; a3  = 8, taken, goto 0x800007d4
       0     2042        M 0x800007d4 mulhu   a2, a5, a1             #; a5  = 17, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 22.6272
       0     2043        M 0x800007fc fsgnj.d ft0, ft4, ft4          #; ft4  = 22.6272, ft4  = 22.6272
       0     2044        M                                           #; (f:fpu) ft0  <-- 22.6272
       0     2045        M                                           #; (acc) a4  <-- 0x40c78733
       0     2046        M 0x800007d8 sub     a4, a5, a2             #; a5  = 17, a2  = 0, (wrb) a4  <-- 17
       0     2047        M 0x800007dc srli    a4, a4, 1              #; a4  = 17, (wrb) a4  <-- 8
       0     2048        M 0x800007e0 add     a2, a4, a2             #; a4  = 8, a2  = 0, (wrb) a2  <-- 8
       0     2049        M 0x800007e4 srli    a2, a2, 4              #; a2  = 8, (wrb) a2  <-- 0
       0     2050        M 0x800007e8 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2051        M 0x800007ec sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2052        M 0x800007f0 add     a2, a5, a2             #; a5  = 17, a2  = 0, (wrb) a2  <-- 17
       0     2054        M 0x800007f4 fcvt.d.w ft4, a2               #; ac1  = 17
       0     2055        M                                           #; (f:fpu) ft4  <-- 17.0
       0     2056        M 0x80000800 addi    a3, a3, -1             #; a3  = 8, (wrb) a3  <-- 7
                         M 0x800007f8 fmul.d  ft4, ft4, ft3          #; ft4  = 17.0, ft3  = 1.4142
       0     2057        M 0x80000804 addi    a5, a5, 1              #; a5  = 17, (wrb) a5  <-- 18
       0     2058        M 0x80000808 bnez    a3, pc - 52            #; a3  = 7, taken, goto 0x800007d4
       0     2059        M 0x800007d4 mulhu   a2, a5, a1             #; a5  = 18, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 24.0414
       0     2060        M 0x800007fc fsgnj.d ft0, ft4, ft4          #; ft4  = 24.0414, ft4  = 24.0414
       0     2061        M                                           #; (f:fpu) ft0  <-- 24.0414
       0     2062        M                                           #; (acc) a4  <-- 0x40c78733
       0     2063        M 0x800007d8 sub     a4, a5, a2             #; a5  = 18, a2  = 0, (wrb) a4  <-- 18
       0     2064        M 0x800007dc srli    a4, a4, 1              #; a4  = 18, (wrb) a4  <-- 9
       0     2065        M 0x800007e0 add     a2, a4, a2             #; a4  = 9, a2  = 0, (wrb) a2  <-- 9
       0     2066        M 0x800007e4 srli    a2, a2, 4              #; a2  = 9, (wrb) a2  <-- 0
       0     2067        M 0x800007e8 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2068        M 0x800007ec sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2069        M 0x800007f0 add     a2, a5, a2             #; a5  = 18, a2  = 0, (wrb) a2  <-- 18
       0     2071        M 0x800007f4 fcvt.d.w ft4, a2               #; ac1  = 18
       0     2072        M                                           #; (f:fpu) ft4  <-- 18.0
       0     2073        M 0x80000800 addi    a3, a3, -1             #; a3  = 7, (wrb) a3  <-- 6
                         M 0x800007f8 fmul.d  ft4, ft4, ft3          #; ft4  = 18.0, ft3  = 1.4142
       0     2074        M 0x80000804 addi    a5, a5, 1              #; a5  = 18, (wrb) a5  <-- 19
       0     2075        M 0x80000808 bnez    a3, pc - 52            #; a3  = 6, taken, goto 0x800007d4
       0     2076        M 0x800007d4 mulhu   a2, a5, a1             #; a5  = 19, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 25.4556000
       0     2077        M 0x800007fc fsgnj.d ft0, ft4, ft4          #; ft4  = 25.4556000, ft4  = 25.4556000
       0     2078        M                                           #; (f:fpu) ft0  <-- 25.4556000
       0     2079        M                                           #; (acc) a4  <-- 0x40c78733
       0     2080        M 0x800007d8 sub     a4, a5, a2             #; a5  = 19, a2  = 0, (wrb) a4  <-- 19
       0     2081        M 0x800007dc srli    a4, a4, 1              #; a4  = 19, (wrb) a4  <-- 9
       0     2082        M 0x800007e0 add     a2, a4, a2             #; a4  = 9, a2  = 0, (wrb) a2  <-- 9
       0     2083        M 0x800007e4 srli    a2, a2, 4              #; a2  = 9, (wrb) a2  <-- 0
       0     2084        M 0x800007e8 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2085        M 0x800007ec sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2086        M 0x800007f0 add     a2, a5, a2             #; a5  = 19, a2  = 0, (wrb) a2  <-- 19
       0     2088        M 0x800007f4 fcvt.d.w ft4, a2               #; ac1  = 19
       0     2089        M                                           #; (f:fpu) ft4  <-- 19.0
       0     2090        M 0x80000800 addi    a3, a3, -1             #; a3  = 6, (wrb) a3  <-- 5
                         M 0x800007f8 fmul.d  ft4, ft4, ft3          #; ft4  = 19.0, ft3  = 1.4142
       0     2091        M 0x80000804 addi    a5, a5, 1              #; a5  = 19, (wrb) a5  <-- 20
       0     2092        M 0x80000808 bnez    a3, pc - 52            #; a3  = 5, taken, goto 0x800007d4
       0     2093        M 0x800007d4 mulhu   a2, a5, a1             #; a5  = 20, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 26.8698000
       0     2094        M 0x800007fc fsgnj.d ft0, ft4, ft4          #; ft4  = 26.8698000, ft4  = 26.8698000
       0     2095        M                                           #; (f:fpu) ft0  <-- 26.8698000
       0     2096        M                                           #; (acc) a4  <-- 0x40c78733
       0     2097        M 0x800007d8 sub     a4, a5, a2             #; a5  = 20, a2  = 0, (wrb) a4  <-- 20
       0     2098        M 0x800007dc srli    a4, a4, 1              #; a4  = 20, (wrb) a4  <-- 10
       0     2099        M 0x800007e0 add     a2, a4, a2             #; a4  = 10, a2  = 0, (wrb) a2  <-- 10
       0     2100        M 0x800007e4 srli    a2, a2, 4              #; a2  = 10, (wrb) a2  <-- 0
       0     2101        M 0x800007e8 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2102        M 0x800007ec sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2103        M 0x800007f0 add     a2, a5, a2             #; a5  = 20, a2  = 0, (wrb) a2  <-- 20
       0     2105        M 0x800007f4 fcvt.d.w ft4, a2               #; ac1  = 20
       0     2106        M                                           #; (f:fpu) ft4  <-- 20.0
       0     2107        M 0x80000800 addi    a3, a3, -1             #; a3  = 5, (wrb) a3  <-- 4
                         M 0x800007f8 fmul.d  ft4, ft4, ft3          #; ft4  = 20.0, ft3  = 1.4142
       0     2108        M 0x80000804 addi    a5, a5, 1              #; a5  = 20, (wrb) a5  <-- 21
       0     2109        M 0x80000808 bnez    a3, pc - 52            #; a3  = 4, taken, goto 0x800007d4
       0     2110        M 0x800007d4 mulhu   a2, a5, a1             #; a5  = 21, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 28.284
       0     2111        M 0x800007fc fsgnj.d ft0, ft4, ft4          #; ft4  = 28.284, ft4  = 28.284
       0     2112        M                                           #; (f:fpu) ft0  <-- 28.284
       0     2113        M                                           #; (acc) a4  <-- 0x40c78733
       0     2114        M 0x800007d8 sub     a4, a5, a2             #; a5  = 21, a2  = 0, (wrb) a4  <-- 21
       0     2115        M 0x800007dc srli    a4, a4, 1              #; a4  = 21, (wrb) a4  <-- 10
       0     2116        M 0x800007e0 add     a2, a4, a2             #; a4  = 10, a2  = 0, (wrb) a2  <-- 10
       0     2117        M 0x800007e4 srli    a2, a2, 4              #; a2  = 10, (wrb) a2  <-- 0
       0     2118        M 0x800007e8 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2119        M 0x800007ec sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2120        M 0x800007f0 add     a2, a5, a2             #; a5  = 21, a2  = 0, (wrb) a2  <-- 21
       0     2122        M 0x800007f4 fcvt.d.w ft4, a2               #; ac1  = 21
       0     2123        M                                           #; (f:fpu) ft4  <-- 21.0
       0     2124        M 0x80000800 addi    a3, a3, -1             #; a3  = 4, (wrb) a3  <-- 3
                         M 0x800007f8 fmul.d  ft4, ft4, ft3          #; ft4  = 21.0, ft3  = 1.4142
       0     2125        M 0x80000804 addi    a5, a5, 1              #; a5  = 21, (wrb) a5  <-- 22
       0     2126        M 0x80000808 bnez    a3, pc - 52            #; a3  = 3, taken, goto 0x800007d4
       0     2127        M 0x800007d4 mulhu   a2, a5, a1             #; a5  = 22, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 29.6982000
       0     2128        M 0x800007fc fsgnj.d ft0, ft4, ft4          #; ft4  = 29.6982000, ft4  = 29.6982000
       0     2129        M                                           #; (f:fpu) ft0  <-- 29.6982000
       0     2130        M                                           #; (acc) a4  <-- 0x40c78733
       0     2131        M 0x800007d8 sub     a4, a5, a2             #; a5  = 22, a2  = 0, (wrb) a4  <-- 22
       0     2132        M 0x800007dc srli    a4, a4, 1              #; a4  = 22, (wrb) a4  <-- 11
       0     2133        M 0x800007e0 add     a2, a4, a2             #; a4  = 11, a2  = 0, (wrb) a2  <-- 11
       0     2134        M 0x800007e4 srli    a2, a2, 4              #; a2  = 11, (wrb) a2  <-- 0
       0     2135        M 0x800007e8 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2136        M 0x800007ec sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2137        M 0x800007f0 add     a2, a5, a2             #; a5  = 22, a2  = 0, (wrb) a2  <-- 22
       0     2139        M 0x800007f4 fcvt.d.w ft4, a2               #; ac1  = 22
       0     2140        M                                           #; (f:fpu) ft4  <-- 22.0
       0     2141        M 0x80000800 addi    a3, a3, -1             #; a3  = 3, (wrb) a3  <-- 2
                         M 0x800007f8 fmul.d  ft4, ft4, ft3          #; ft4  = 22.0, ft3  = 1.4142
       0     2142        M 0x80000804 addi    a5, a5, 1              #; a5  = 22, (wrb) a5  <-- 23
       0     2143        M 0x80000808 bnez    a3, pc - 52            #; a3  = 2, taken, goto 0x800007d4
       0     2144        M 0x800007d4 mulhu   a2, a5, a1             #; a5  = 23, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 31.1124000
       0     2145        M 0x800007fc fsgnj.d ft0, ft4, ft4          #; ft4  = 31.1124000, ft4  = 31.1124000
       0     2146        M                                           #; (f:fpu) ft0  <-- 31.1124000
       0     2147        M                                           #; (acc) a4  <-- 0x40c78733
       0     2148        M 0x800007d8 sub     a4, a5, a2             #; a5  = 23, a2  = 0, (wrb) a4  <-- 23
       0     2149        M 0x800007dc srli    a4, a4, 1              #; a4  = 23, (wrb) a4  <-- 11
       0     2150        M 0x800007e0 add     a2, a4, a2             #; a4  = 11, a2  = 0, (wrb) a2  <-- 11
       0     2151        M 0x800007e4 srli    a2, a2, 4              #; a2  = 11, (wrb) a2  <-- 0
       0     2152        M 0x800007e8 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2153        M 0x800007ec sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2154        M 0x800007f0 add     a2, a5, a2             #; a5  = 23, a2  = 0, (wrb) a2  <-- 23
       0     2156        M 0x800007f4 fcvt.d.w ft4, a2               #; ac1  = 23
       0     2157        M                                           #; (f:fpu) ft4  <-- 23.0
       0     2158        M 0x80000800 addi    a3, a3, -1             #; a3  = 2, (wrb) a3  <-- 1
                         M 0x800007f8 fmul.d  ft4, ft4, ft3          #; ft4  = 23.0, ft3  = 1.4142
       0     2159        M 0x80000804 addi    a5, a5, 1              #; a5  = 23, (wrb) a5  <-- 24
       0     2160        M 0x80000808 bnez    a3, pc - 52            #; a3  = 1, taken, goto 0x800007d4
       0     2161        M 0x800007d4 mulhu   a2, a5, a1             #; a5  = 24, a1  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 32.5266000
       0     2162        M 0x800007fc fsgnj.d ft0, ft4, ft4          #; ft4  = 32.5266000, ft4  = 32.5266000
       0     2163        M                                           #; (f:fpu) ft0  <-- 32.5266000
       0     2164        M                                           #; (acc) a4  <-- 0x40c78733
       0     2165        M 0x800007d8 sub     a4, a5, a2             #; a5  = 24, a2  = 0, (wrb) a4  <-- 24
       0     2166        M 0x800007dc srli    a4, a4, 1              #; a4  = 24, (wrb) a4  <-- 12
       0     2167        M 0x800007e0 add     a2, a4, a2             #; a4  = 12, a2  = 0, (wrb) a2  <-- 12
       0     2168        M 0x800007e4 srli    a2, a2, 4              #; a2  = 12, (wrb) a2  <-- 0
       0     2169        M 0x800007e8 slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2170        M 0x800007ec sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2171        M 0x800007f0 add     a2, a5, a2             #; a5  = 24, a2  = 0, (wrb) a2  <-- 24
       0     2173        M 0x800007f4 fcvt.d.w ft4, a2               #; ac1  = 24
       0     2174        M                                           #; (f:fpu) ft4  <-- 24.0
       0     2175        M 0x80000800 addi    a3, a3, -1             #; a3  = 1, (wrb) a3  <-- 0
                         M 0x800007f8 fmul.d  ft4, ft4, ft3          #; ft4  = 24.0, ft3  = 1.4142
       0     2176        M 0x80000804 addi    a5, a5, 1              #; a5  = 24, (wrb) a5  <-- 25
       0     2177        M 0x80000808 bnez    a3, pc - 52            #; a3  = 0, not taken
       0     2178        M                                           #; (f:fpu) ft4  <-- 33.9408000
       0     2179        M 0x800007fc fsgnj.d ft0, ft4, ft4          #; ft4  = 33.9408000, ft4  = 33.9408000
       0     2180        M 0x8000080c csrrci  a1, ssr, 1             #; (f:fpu) ft0  <-- 33.9408000
       0     2190        M 0x80000810 bnez    a7, pc - 208           #; a7  = 1, taken, goto 0x80000740
       0     2202        M 0x80000740 li      a1, 8                  #; (wrb) a1  <-- 8
       0     2203        M 0x80000744 li      a2, 64                 #; (wrb) a2  <-- 64
       0     2204        M 0x80000748 li      a3, 192                #; (wrb) a3  <-- 192
       0     2205        M 0x8000074c scfgw   t0, a2                 #; t0  = 24, a2  = 64
       0     2214        M 0x80000750 scfgw   a1, a3                 #; a1  = 8, a3  = 192
       0     2215        M 0x80000754 li      a1, 32                 #; (wrb) a1  <-- 32
       0     2216        M 0x80000758 scfgw   zero, a1               #; a1  = 32
       0     2217        M 0x8000075c scfgwi  t2, 768                #; t2  = 0x00100000
       0     2227        M 0x80000760 csrrsi  a1, ssr, 1             #; 
       0     2228        M 0x80000768 mv      a1, a0                 #; a0  = 25, (wrb) a1  <-- 25
                         M 0x80000764 fcvt.d.w ft3, zero             #; ac1  = 0
       0     2229        M 0x8000076c addi    a1, a1, -1             #; a1  = 25, (wrb) a1  <-- 24
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2239        M 0x80000774 bnez    a1, pc - 8             #; a1  = 24, taken, goto 0x8000076c
       0     2240        M 0x8000076c addi    a1, a1, -1             #; a1  = 24, (wrb) a1  <-- 23
                         M 0x80000770 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 0.0, ft0  = 0.0, ft3  = 0.0
       0     2242        M 0x80000774 bnez    a1, pc - 8             #; a1  = 23, taken, goto 0x8000076c
       0     2243        M 0x8000076c addi    a1, a1, -1             #; a1  = 23, (wrb) a1  <-- 22
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2244        M 0x80000770 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 1.4142, ft0  = 1.4142, ft3  = 0.0
       0     2245        M 0x80000774 bnez    a1, pc - 8             #; a1  = 22, taken, goto 0x8000076c
       0     2246        M 0x8000076c addi    a1, a1, -1             #; a1  = 22, (wrb) a1  <-- 21
       0     2247        M                                           #; (f:fpu) ft3  <-- 1.9999616
       0     2248        M 0x80000774 bnez    a1, pc - 8             #; a1  = 21, taken, goto 0x8000076c
                         M 0x80000770 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 2.8284, ft0  = 2.8284, ft3  = 1.9999616
       0     2249        M 0x8000076c addi    a1, a1, -1             #; a1  = 21, (wrb) a1  <-- 20
       0     2251        M 0x80000774 bnez    a1, pc - 8             #; a1  = 20, taken, goto 0x8000076c
                         M                                           #; (f:fpu) ft3  <-- 9.9998082
       0     2252        M 0x8000076c addi    a1, a1, -1             #; a1  = 20, (wrb) a1  <-- 19
                         M 0x80000770 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 4.2426000, ft0  = 4.2426000, ft3  = 9.9998082
       0     2254        M 0x80000774 bnez    a1, pc - 8             #; a1  = 19, taken, goto 0x8000076c
       0     2255        M 0x8000076c addi    a1, a1, -1             #; a1  = 19, (wrb) a1  <-- 18
                         M                                           #; (f:fpu) ft3  <-- 27.9994630
       0     2256        M 0x80000770 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 5.6568, ft0  = 5.6568, ft3  = 27.9994630
       0     2257        M 0x80000774 bnez    a1, pc - 8             #; a1  = 18, taken, goto 0x8000076c
       0     2258        M 0x8000076c addi    a1, a1, -1             #; a1  = 18, (wrb) a1  <-- 17
       0     2259        M                                           #; (f:fpu) ft3  <-- 59.9988492
       0     2260        M 0x80000774 bnez    a1, pc - 8             #; a1  = 17, taken, goto 0x8000076c
                         M 0x80000770 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 7.071, ft0  = 7.071, ft3  = 59.9988492
       0     2261        M 0x8000076c addi    a1, a1, -1             #; a1  = 17, (wrb) a1  <-- 16
       0     2263        M 0x80000774 bnez    a1, pc - 8             #; a1  = 16, taken, goto 0x8000076c
                         M                                           #; (f:fpu) ft3  <-- 109.9978902
       0     2264        M 0x8000076c addi    a1, a1, -1             #; a1  = 16, (wrb) a1  <-- 15
                         M 0x80000770 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 8.4852000, ft0  = 8.4852000, ft3  = 109.9978902
       0     2266        M 0x80000774 bnez    a1, pc - 8             #; a1  = 15, taken, goto 0x8000076c
       0     2267        M 0x8000076c addi    a1, a1, -1             #; a1  = 15, (wrb) a1  <-- 14
                         M                                           #; (f:fpu) ft3  <-- 181.9965092
       0     2268        M 0x80000770 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 9.8994, ft0  = 9.8994, ft3  = 181.9965092
       0     2269        M 0x80000774 bnez    a1, pc - 8             #; a1  = 14, taken, goto 0x8000076c
       0     2270        M 0x8000076c addi    a1, a1, -1             #; a1  = 14, (wrb) a1  <-- 13
       0     2271        M                                           #; (f:fpu) ft3  <-- 279.9946296
       0     2272        M 0x80000774 bnez    a1, pc - 8             #; a1  = 13, taken, goto 0x8000076c
                         M 0x80000770 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 11.3136, ft0  = 11.3136, ft3  = 279.9946296
       0     2273        M 0x8000076c addi    a1, a1, -1             #; a1  = 13, (wrb) a1  <-- 12
       0     2275        M 0x80000774 bnez    a1, pc - 8             #; a1  = 12, taken, goto 0x8000076c
                         M                                           #; (f:fpu) ft3  <-- 407.9921746
       0     2276        M 0x8000076c addi    a1, a1, -1             #; a1  = 12, (wrb) a1  <-- 11
                         M 0x80000770 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 12.7278000, ft0  = 12.7278000, ft3  = 407.9921746
       0     2278        M 0x80000774 bnez    a1, pc - 8             #; a1  = 11, taken, goto 0x8000076c
       0     2279        M 0x8000076c addi    a1, a1, -1             #; a1  = 11, (wrb) a1  <-- 10
                         M                                           #; (f:fpu) ft3  <-- 569.9890674
       0     2280        M 0x80000770 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 14.142, ft0  = 14.142, ft3  = 569.9890674
       0     2281        M 0x80000774 bnez    a1, pc - 8             #; a1  = 10, taken, goto 0x8000076c
       0     2282        M 0x8000076c addi    a1, a1, -1             #; a1  = 10, (wrb) a1  <-- 9
       0     2283        M                                           #; (f:fpu) ft3  <-- 769.9852314
       0     2284        M 0x80000774 bnez    a1, pc - 8             #; a1  = 9, taken, goto 0x8000076c
                         M 0x80000770 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 15.5562000, ft0  = 15.5562000, ft3  = 769.9852314
       0     2285        M 0x8000076c addi    a1, a1, -1             #; a1  = 9, (wrb) a1  <-- 8
       0     2287        M 0x80000774 bnez    a1, pc - 8             #; a1  = 8, taken, goto 0x8000076c
                         M                                           #; (f:fpu) ft3  <-- 1011.9805898
       0     2288        M 0x8000076c addi    a1, a1, -1             #; a1  = 8, (wrb) a1  <-- 7
                         M 0x80000770 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 16.9704000, ft0  = 16.9704000, ft3  = 1011.9805898
       0     2290        M 0x80000774 bnez    a1, pc - 8             #; a1  = 7, taken, goto 0x8000076c
       0     2291        M 0x8000076c addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
                         M                                           #; (f:fpu) ft3  <-- 1299.9750660
       0     2292        M 0x80000770 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 18.3846, ft0  = 18.3846, ft3  = 1299.9750660
       0     2293        M 0x80000774 bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x8000076c
       0     2294        M 0x8000076c addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     2295        M                                           #; (f:fpu) ft3  <-- 1637.9685832
       0     2296        M 0x80000774 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x8000076c
                         M 0x80000770 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 19.7988, ft0  = 19.7988, ft3  = 1637.9685832
       0     2297        M 0x8000076c addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     2299        M 0x80000774 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x8000076c
                         M                                           #; (f:fpu) ft3  <-- 2029.9610646
       0     2300        M 0x8000076c addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x80000770 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 21.2130000, ft0  = 21.2130000, ft3  = 2029.9610646
       0     2302        M 0x80000774 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x8000076c
       0     2303        M 0x8000076c addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) ft3  <-- 2479.9524336
       0     2304        M 0x80000770 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 22.6272, ft0  = 22.6272, ft3  = 2479.9524336
       0     2305        M 0x80000774 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x8000076c
       0     2306        M 0x8000076c addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     2307        M                                           #; (f:fpu) ft3  <-- 2991.9426134
       0     2308        M 0x80000774 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x8000076c
                         M 0x80000770 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 24.0414, ft0  = 24.0414, ft3  = 2991.9426134
       0     2309        M 0x8000076c addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     2311        M 0x80000774 bnez    a1, pc - 8             #; a1  = 0, not taken
                         M                                           #; (f:fpu) ft3  <-- 3569.9315274
       0     2312        M 0x80000770 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 25.4556000, ft0  = 25.4556000, ft3  = 3569.9315274
       0     2313        M 0x8000077c j       pc + 0xb8              #; goto 0x80000834
       0     2315        M                                           #; (f:fpu) ft3  <-- 4217.9190988
       0     2316        M 0x80000770 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 26.8698000, ft0  = 26.8698000, ft3  = 4217.9190988
       0     2319        M                                           #; (f:fpu) ft3  <-- 4939.9052508
       0     2320        M 0x80000770 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 28.284, ft0  = 28.284, ft3  = 4939.9052508
       0     2323        M                                           #; (f:fpu) ft3  <-- 5739.8899068
       0     2324        M 0x80000834 li      a5, 0                  #; (wrb) a5  <-- 0
                         M 0x80000770 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 29.6982000, ft0  = 29.6982000, ft3  = 5739.8899068
       0     2326        M 0x8000083c mv      a1, t2                 #; t2  = 0x00100000, (wrb) a1  <-- 0x00100000
       0     2327        M                                           #; (f:fpu) ft3  <-- 6621.8729900
       0     2328        M 0x80000770 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 31.1124000, ft0  = 31.1124000, ft3  = 6621.8729900
       0     2331        M                                           #; (f:fpu) ft3  <-- 7589.8544238
       0     2332        M 0x80000770 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 32.5266000, ft0  = 32.5266000, ft3  = 7589.8544238
       0     2335        M                                           #; (f:fpu) ft3  <-- 8647.8341314
       0     2336        M 0x80000840 j       pc + 0x10              #; goto 0x80000850
                         M 0x80000770 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 33.9408000, ft0  = 33.9408000, ft3  = 8647.8341314
       0     2337        M 0x80000778 csrrci  a1, ssr, 1             #; 
       0     2338        M 0x80000838 fcvt.d.w ft4, zero             #; ac1  = 0
       0     2339        M                                           #; (f:fpu) ft3  <-- 9799.8120360
       0     2340        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2348        M 0x80000850 andi    a2, a5, 1              #; a5  = 0, (wrb) a2  <-- 0
       0     2349        M 0x80000854 bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2352        M 0x80000858 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x00100000]
       0     2353        M                                           #; (f:lsu) ft5  <-- 0.0
       0     2354        M 0x8000085c fadd.d  ft4, ft5, ft4          #; ft5  = 0.0, ft4  = 0.0
       0     2357        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2362        M 0x80000860 j       pc - 0x1c              #; goto 0x80000844
       0     2363        M 0x80000844 addi    a5, a5, 1              #; a5  = 0, (wrb) a5  <-- 1
       0     2364        M 0x80000848 addi    a1, a1, 8              #; a1  = 0x00100000, (wrb) a1  <-- 0x00100008
       0     2365        M 0x8000084c beq     a0, a5, pc + 24        #; a0  = 25, a5  = 1, not taken
       0     2366        M 0x80000850 andi    a2, a5, 1              #; a5  = 1, (wrb) a2  <-- 1
       0     2367        M 0x80000854 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000844
       0     2368        M 0x80000844 addi    a5, a5, 1              #; a5  = 1, (wrb) a5  <-- 2
       0     2369        M 0x80000848 addi    a1, a1, 8              #; a1  = 0x00100008, (wrb) a1  <-- 0x00100010
       0     2370        M 0x8000084c beq     a0, a5, pc + 24        #; a0  = 25, a5  = 2, not taken
       0     2371        M 0x80000850 andi    a2, a5, 1              #; a5  = 2, (wrb) a2  <-- 0
       0     2372        M 0x80000854 bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2375        M 0x80000860 j       pc - 0x1c              #; goto 0x80000844
                         M 0x80000858 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x00100010]
       0     2376        M 0x80000844 addi    a5, a5, 1              #; a5  = 2, (wrb) a5  <-- 3
                         M                                           #; (f:lsu) ft5  <-- 2.8284
       0     2377        M 0x80000848 addi    a1, a1, 8              #; a1  = 0x00100010, (wrb) a1  <-- 0x00100018
                         M 0x8000085c fadd.d  ft4, ft5, ft4          #; ft5  = 2.8284, ft4  = 0.0
       0     2378        M 0x8000084c beq     a0, a5, pc + 24        #; a0  = 25, a5  = 3, not taken
       0     2379        M 0x80000850 andi    a2, a5, 1              #; a5  = 3, (wrb) a2  <-- 1
       0     2380        M 0x80000854 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000844
                         M                                           #; (f:fpu) ft4  <-- 2.8284
       0     2381        M 0x80000844 addi    a5, a5, 1              #; a5  = 3, (wrb) a5  <-- 4
       0     2382        M 0x80000848 addi    a1, a1, 8              #; a1  = 0x00100018, (wrb) a1  <-- 0x00100020
       0     2383        M 0x8000084c beq     a0, a5, pc + 24        #; a0  = 25, a5  = 4, not taken
       0     2384        M 0x80000850 andi    a2, a5, 1              #; a5  = 4, (wrb) a2  <-- 0
       0     2385        M 0x80000854 bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2388        M 0x80000860 j       pc - 0x1c              #; goto 0x80000844
                         M 0x80000858 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x00100020]
       0     2389        M 0x80000844 addi    a5, a5, 1              #; a5  = 4, (wrb) a5  <-- 5
                         M                                           #; (f:lsu) ft5  <-- 5.6568
       0     2390        M 0x80000848 addi    a1, a1, 8              #; a1  = 0x00100020, (wrb) a1  <-- 0x00100028
                         M 0x8000085c fadd.d  ft4, ft5, ft4          #; ft5  = 5.6568, ft4  = 2.8284
       0     2391        M 0x8000084c beq     a0, a5, pc + 24        #; a0  = 25, a5  = 5, not taken
       0     2392        M 0x80000850 andi    a2, a5, 1              #; a5  = 5, (wrb) a2  <-- 1
       0     2393        M 0x80000854 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000844
                         M                                           #; (f:fpu) ft4  <-- 8.4852000
       0     2394        M 0x80000844 addi    a5, a5, 1              #; a5  = 5, (wrb) a5  <-- 6
       0     2395        M 0x80000848 addi    a1, a1, 8              #; a1  = 0x00100028, (wrb) a1  <-- 0x00100030
       0     2396        M 0x8000084c beq     a0, a5, pc + 24        #; a0  = 25, a5  = 6, not taken
       0     2397        M 0x80000850 andi    a2, a5, 1              #; a5  = 6, (wrb) a2  <-- 0
       0     2398        M 0x80000854 bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2401        M 0x80000860 j       pc - 0x1c              #; goto 0x80000844
                         M 0x80000858 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x00100030]
       0     2402        M 0x80000844 addi    a5, a5, 1              #; a5  = 6, (wrb) a5  <-- 7
                         M                                           #; (f:lsu) ft5  <-- 8.4852000
       0     2403        M 0x80000848 addi    a1, a1, 8              #; a1  = 0x00100030, (wrb) a1  <-- 0x00100038
                         M 0x8000085c fadd.d  ft4, ft5, ft4          #; ft5  = 8.4852000, ft4  = 8.4852000
       0     2404        M 0x8000084c beq     a0, a5, pc + 24        #; a0  = 25, a5  = 7, not taken
       0     2405        M 0x80000850 andi    a2, a5, 1              #; a5  = 7, (wrb) a2  <-- 1
       0     2406        M 0x80000854 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000844
                         M                                           #; (f:fpu) ft4  <-- 16.9704000
       0     2407        M 0x80000844 addi    a5, a5, 1              #; a5  = 7, (wrb) a5  <-- 8
       0     2408        M 0x80000848 addi    a1, a1, 8              #; a1  = 0x00100038, (wrb) a1  <-- 0x00100040
       0     2409        M 0x8000084c beq     a0, a5, pc + 24        #; a0  = 25, a5  = 8, not taken
       0     2410        M 0x80000850 andi    a2, a5, 1              #; a5  = 8, (wrb) a2  <-- 0
       0     2411        M 0x80000854 bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2414        M 0x80000860 j       pc - 0x1c              #; goto 0x80000844
                         M 0x80000858 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x00100040]
       0     2415        M 0x80000844 addi    a5, a5, 1              #; a5  = 8, (wrb) a5  <-- 9
                         M                                           #; (f:lsu) ft5  <-- 11.3136
       0     2416        M 0x80000848 addi    a1, a1, 8              #; a1  = 0x00100040, (wrb) a1  <-- 0x00100048
                         M 0x8000085c fadd.d  ft4, ft5, ft4          #; ft5  = 11.3136, ft4  = 16.9704000
       0     2417        M 0x8000084c beq     a0, a5, pc + 24        #; a0  = 25, a5  = 9, not taken
       0     2418        M 0x80000850 andi    a2, a5, 1              #; a5  = 9, (wrb) a2  <-- 1
       0     2419        M 0x80000854 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000844
                         M                                           #; (f:fpu) ft4  <-- 28.284
       0     2420        M 0x80000844 addi    a5, a5, 1              #; a5  = 9, (wrb) a5  <-- 10
       0     2421        M 0x80000848 addi    a1, a1, 8              #; a1  = 0x00100048, (wrb) a1  <-- 0x00100050
       0     2422        M 0x8000084c beq     a0, a5, pc + 24        #; a0  = 25, a5  = 10, not taken
       0     2423        M 0x80000850 andi    a2, a5, 1              #; a5  = 10, (wrb) a2  <-- 0
       0     2424        M 0x80000854 bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2427        M 0x80000860 j       pc - 0x1c              #; goto 0x80000844
                         M 0x80000858 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x00100050]
       0     2428        M 0x80000844 addi    a5, a5, 1              #; a5  = 10, (wrb) a5  <-- 11
                         M                                           #; (f:lsu) ft5  <-- 14.142
       0     2429        M 0x80000848 addi    a1, a1, 8              #; a1  = 0x00100050, (wrb) a1  <-- 0x00100058
                         M 0x8000085c fadd.d  ft4, ft5, ft4          #; ft5  = 14.142, ft4  = 28.284
       0     2430        M 0x8000084c beq     a0, a5, pc + 24        #; a0  = 25, a5  = 11, not taken
       0     2431        M 0x80000850 andi    a2, a5, 1              #; a5  = 11, (wrb) a2  <-- 1
       0     2432        M 0x80000854 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000844
                         M                                           #; (f:fpu) ft4  <-- 42.426
       0     2433        M 0x80000844 addi    a5, a5, 1              #; a5  = 11, (wrb) a5  <-- 12
       0     2434        M 0x80000848 addi    a1, a1, 8              #; a1  = 0x00100058, (wrb) a1  <-- 0x00100060
       0     2435        M 0x8000084c beq     a0, a5, pc + 24        #; a0  = 25, a5  = 12, not taken
       0     2436        M 0x80000850 andi    a2, a5, 1              #; a5  = 12, (wrb) a2  <-- 0
       0     2437        M 0x80000854 bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2440        M 0x80000860 j       pc - 0x1c              #; goto 0x80000844
                         M 0x80000858 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x00100060]
       0     2441        M 0x80000844 addi    a5, a5, 1              #; a5  = 12, (wrb) a5  <-- 13
                         M                                           #; (f:lsu) ft5  <-- 16.9704000
       0     2442        M 0x80000848 addi    a1, a1, 8              #; a1  = 0x00100060, (wrb) a1  <-- 0x00100068
                         M 0x8000085c fadd.d  ft4, ft5, ft4          #; ft5  = 16.9704000, ft4  = 42.426
       0     2443        M 0x8000084c beq     a0, a5, pc + 24        #; a0  = 25, a5  = 13, not taken
       0     2444        M 0x80000850 andi    a2, a5, 1              #; a5  = 13, (wrb) a2  <-- 1
       0     2445        M 0x80000854 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000844
                         M                                           #; (f:fpu) ft4  <-- 59.3964
       0     2446        M 0x80000844 addi    a5, a5, 1              #; a5  = 13, (wrb) a5  <-- 14
       0     2447        M 0x80000848 addi    a1, a1, 8              #; a1  = 0x00100068, (wrb) a1  <-- 0x00100070
       0     2448        M 0x8000084c beq     a0, a5, pc + 24        #; a0  = 25, a5  = 14, not taken
       0     2449        M 0x80000850 andi    a2, a5, 1              #; a5  = 14, (wrb) a2  <-- 0
       0     2450        M 0x80000854 bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2453        M 0x80000860 j       pc - 0x1c              #; goto 0x80000844
                         M 0x80000858 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x00100070]
       0     2454        M 0x80000844 addi    a5, a5, 1              #; a5  = 14, (wrb) a5  <-- 15
                         M                                           #; (f:lsu) ft5  <-- 19.7988
       0     2455        M 0x80000848 addi    a1, a1, 8              #; a1  = 0x00100070, (wrb) a1  <-- 0x00100078
                         M 0x8000085c fadd.d  ft4, ft5, ft4          #; ft5  = 19.7988, ft4  = 59.3964
       0     2456        M 0x8000084c beq     a0, a5, pc + 24        #; a0  = 25, a5  = 15, not taken
       0     2457        M 0x80000850 andi    a2, a5, 1              #; a5  = 15, (wrb) a2  <-- 1
       0     2458        M 0x80000854 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000844
                         M                                           #; (f:fpu) ft4  <-- 79.1952
       0     2459        M 0x80000844 addi    a5, a5, 1              #; a5  = 15, (wrb) a5  <-- 16
       0     2460        M 0x80000848 addi    a1, a1, 8              #; a1  = 0x00100078, (wrb) a1  <-- 0x00100080
       0     2461        M 0x8000084c beq     a0, a5, pc + 24        #; a0  = 25, a5  = 16, not taken
       0     2462        M 0x80000850 andi    a2, a5, 1              #; a5  = 16, (wrb) a2  <-- 0
       0     2463        M 0x80000854 bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2466        M 0x80000860 j       pc - 0x1c              #; goto 0x80000844
                         M 0x80000858 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x00100080]
       0     2467        M 0x80000844 addi    a5, a5, 1              #; a5  = 16, (wrb) a5  <-- 17
                         M                                           #; (f:lsu) ft5  <-- 22.6272
       0     2468        M 0x80000848 addi    a1, a1, 8              #; a1  = 0x00100080, (wrb) a1  <-- 0x00100088
                         M 0x8000085c fadd.d  ft4, ft5, ft4          #; ft5  = 22.6272, ft4  = 79.1952
       0     2469        M 0x8000084c beq     a0, a5, pc + 24        #; a0  = 25, a5  = 17, not taken
       0     2470        M 0x80000850 andi    a2, a5, 1              #; a5  = 17, (wrb) a2  <-- 1
       0     2471        M 0x80000854 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000844
                         M                                           #; (f:fpu) ft4  <-- 101.8224
       0     2472        M 0x80000844 addi    a5, a5, 1              #; a5  = 17, (wrb) a5  <-- 18
       0     2473        M 0x80000848 addi    a1, a1, 8              #; a1  = 0x00100088, (wrb) a1  <-- 0x00100090
       0     2474        M 0x8000084c beq     a0, a5, pc + 24        #; a0  = 25, a5  = 18, not taken
       0     2475        M 0x80000850 andi    a2, a5, 1              #; a5  = 18, (wrb) a2  <-- 0
       0     2476        M 0x80000854 bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2479        M 0x80000860 j       pc - 0x1c              #; goto 0x80000844
                         M 0x80000858 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x00100090]
       0     2480        M 0x80000844 addi    a5, a5, 1              #; a5  = 18, (wrb) a5  <-- 19
                         M                                           #; (f:lsu) ft5  <-- 25.4556000
       0     2481        M 0x80000848 addi    a1, a1, 8              #; a1  = 0x00100090, (wrb) a1  <-- 0x00100098
                         M 0x8000085c fadd.d  ft4, ft5, ft4          #; ft5  = 25.4556000, ft4  = 101.8224
       0     2482        M 0x8000084c beq     a0, a5, pc + 24        #; a0  = 25, a5  = 19, not taken
       0     2483        M 0x80000850 andi    a2, a5, 1              #; a5  = 19, (wrb) a2  <-- 1
       0     2484        M 0x80000854 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000844
                         M                                           #; (f:fpu) ft4  <-- 127.2780000
       0     2485        M 0x80000844 addi    a5, a5, 1              #; a5  = 19, (wrb) a5  <-- 20
       0     2486        M 0x80000848 addi    a1, a1, 8              #; a1  = 0x00100098, (wrb) a1  <-- 0x001000a0
       0     2487        M 0x8000084c beq     a0, a5, pc + 24        #; a0  = 25, a5  = 20, not taken
       0     2488        M 0x80000850 andi    a2, a5, 1              #; a5  = 20, (wrb) a2  <-- 0
       0     2489        M 0x80000854 bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2492        M 0x80000860 j       pc - 0x1c              #; goto 0x80000844
                         M 0x80000858 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x001000a0]
       0     2493        M 0x80000844 addi    a5, a5, 1              #; a5  = 20, (wrb) a5  <-- 21
                         M                                           #; (f:lsu) ft5  <-- 28.284
       0     2494        M 0x80000848 addi    a1, a1, 8              #; a1  = 0x001000a0, (wrb) a1  <-- 0x001000a8
                         M 0x8000085c fadd.d  ft4, ft5, ft4          #; ft5  = 28.284, ft4  = 127.2780000
       0     2495        M 0x8000084c beq     a0, a5, pc + 24        #; a0  = 25, a5  = 21, not taken
       0     2496        M 0x80000850 andi    a2, a5, 1              #; a5  = 21, (wrb) a2  <-- 1
       0     2497        M 0x80000854 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000844
                         M                                           #; (f:fpu) ft4  <-- 155.5620000
       0     2498        M 0x80000844 addi    a5, a5, 1              #; a5  = 21, (wrb) a5  <-- 22
       0     2499        M 0x80000848 addi    a1, a1, 8              #; a1  = 0x001000a8, (wrb) a1  <-- 0x001000b0
       0     2500        M 0x8000084c beq     a0, a5, pc + 24        #; a0  = 25, a5  = 22, not taken
       0     2501        M 0x80000850 andi    a2, a5, 1              #; a5  = 22, (wrb) a2  <-- 0
       0     2502        M 0x80000854 bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2505        M 0x80000860 j       pc - 0x1c              #; goto 0x80000844
                         M 0x80000858 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x001000b0]
       0     2506        M 0x80000844 addi    a5, a5, 1              #; a5  = 22, (wrb) a5  <-- 23
                         M                                           #; (f:lsu) ft5  <-- 31.1124000
       0     2507        M 0x80000848 addi    a1, a1, 8              #; a1  = 0x001000b0, (wrb) a1  <-- 0x001000b8
                         M 0x8000085c fadd.d  ft4, ft5, ft4          #; ft5  = 31.1124000, ft4  = 155.5620000
       0     2508        M 0x8000084c beq     a0, a5, pc + 24        #; a0  = 25, a5  = 23, not taken
       0     2509        M 0x80000850 andi    a2, a5, 1              #; a5  = 23, (wrb) a2  <-- 1
       0     2510        M 0x80000854 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000844
                         M                                           #; (f:fpu) ft4  <-- 186.6744
       0     2511        M 0x80000844 addi    a5, a5, 1              #; a5  = 23, (wrb) a5  <-- 24
       0     2512        M 0x80000848 addi    a1, a1, 8              #; a1  = 0x001000b8, (wrb) a1  <-- 0x001000c0
       0     2513        M 0x8000084c beq     a0, a5, pc + 24        #; a0  = 25, a5  = 24, not taken
       0     2514        M 0x80000850 andi    a2, a5, 1              #; a5  = 24, (wrb) a2  <-- 0
       0     2515        M 0x80000854 bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2518        M 0x80000860 j       pc - 0x1c              #; goto 0x80000844
                         M 0x80000858 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x001000c0]
       0     2519        M 0x80000844 addi    a5, a5, 1              #; a5  = 24, (wrb) a5  <-- 25
                         M                                           #; (f:lsu) ft5  <-- 33.9408000
       0     2520        M 0x80000848 addi    a1, a1, 8              #; a1  = 0x001000c0, (wrb) a1  <-- 0x001000c8
                         M 0x8000085c fadd.d  ft4, ft5, ft4          #; ft5  = 33.9408000, ft4  = 186.6744
       0     2521        M 0x8000084c beq     a0, a5, pc + 24        #; a0  = 25, a5  = 25, taken, goto 0x80000864
       0     2522        M 0x80000864 li      a1, 10                 #; (wrb) a1  <-- 10
       0     2523        M 0x80000868 mv      a5, t0                 #; t0  = 24, (wrb) a5  <-- 24
                         M                                           #; (f:fpu) ft4  <-- 220.6152
       0     2524        M 0x8000086c bltu    t0, a1, pc + 8         #; t0  = 24, a1  = 10, not taken
       0     2534        M 0x80000870 li      a5, 10                 #; (wrb) a5  <-- 10
       0     2535        M 0x80000874 slli    a1, a5, 3              #; a5  = 10, (wrb) a1  <-- 80
       0     2536        M 0x80000878 add     a1, t2, a1             #; t2  = 0x00100000, a1  = 80, (wrb) a1  <-- 0x00100050
       0     2537        M 0x8000087c bgeu    a1, t2, pc + 144       #; a1  = 0x00100050, t2  = 0x00100000, taken, goto 0x8000090c
       0     2557        M 0x8000090c lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     2569        M 0x80000910 addi    a2, a2, 1              #; a2  = 0x00120000, (wrb) a2  <-- 0x00120001
       0     2570        M 0x80000914 sltu    a1, a1, a2             #; a1  = 0x00100050, a2  = 0x00120001, (wrb) a1  <-- 1
       0     2571        M 0x80000918 and     a1, a6, a1             #; a6  = 1, a1  = 1, (wrb) a1  <-- 1
       0     2572        M 0x8000091c beqz    a1, pc - 144           #; a1  = 1, not taken
       0     2584        M 0x80000920 li      a1, 8                  #; (wrb) a1  <-- 8
       0     2585        M 0x80000924 li      a2, 64                 #; (wrb) a2  <-- 64
       0     2586        M 0x80000928 li      a3, 192                #; (wrb) a3  <-- 192
       0     2587        M 0x8000092c scfgw   a5, a2                 #; a5  = 10, a2  = 64
       0     2596        M 0x80000930 scfgw   a1, a3                 #; a1  = 8, a3  = 192
       0     2597        M 0x80000934 li      a1, 32                 #; (wrb) a1  <-- 32
       0     2598        M 0x80000938 scfgw   zero, a1               #; a1  = 32
       0     2599        M 0x8000093c scfgwi  t2, 768                #; t2  = 0x00100000
       0     2609        M 0x80000944 addi    a1, a5, 1              #; a5  = 10, (wrb) a1  <-- 11
                         M 0x80000940 csrrsi  a1, ssr, 1             #; 
       0     2611        M 0x8000094c addi    a1, a1, -1             #; a1  = 11, (wrb) a1  <-- 10
                         M 0x80000948 fcvt.d.w ft5, zero             #; ac1  = 0
       0     2612        M                                           #; (f:fpu) ft5  <-- 0.0
       0     2621        M 0x80000954 bnez    a1, pc - 8             #; a1  = 10, taken, goto 0x8000094c
       0     2622        M 0x8000094c addi    a1, a1, -1             #; a1  = 10, (wrb) a1  <-- 9
                         M 0x80000950 fadd.d  ft5, ft0, ft5          #; ft0  = 0.0, ft5  = 0.0
       0     2624        M 0x80000954 bnez    a1, pc - 8             #; a1  = 9, taken, goto 0x8000094c
       0     2625        M 0x8000094c addi    a1, a1, -1             #; a1  = 9, (wrb) a1  <-- 8
                         M                                           #; (f:fpu) ft5  <-- 0.0
       0     2626        M 0x80000950 fadd.d  ft5, ft0, ft5          #; ft0  = 1.4142, ft5  = 0.0
       0     2627        M 0x80000954 bnez    a1, pc - 8             #; a1  = 8, taken, goto 0x8000094c
       0     2628        M 0x8000094c addi    a1, a1, -1             #; a1  = 8, (wrb) a1  <-- 7
       0     2629        M                                           #; (f:fpu) ft5  <-- 1.4142
       0     2630        M 0x80000954 bnez    a1, pc - 8             #; a1  = 7, taken, goto 0x8000094c
                         M 0x80000950 fadd.d  ft5, ft0, ft5          #; ft0  = 2.8284, ft5  = 1.4142
       0     2631        M 0x8000094c addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
       0     2633        M 0x80000954 bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x8000094c
                         M                                           #; (f:fpu) ft5  <-- 4.2426000
       0     2634        M 0x8000094c addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M 0x80000950 fadd.d  ft5, ft0, ft5          #; ft0  = 4.2426000, ft5  = 4.2426000
       0     2636        M 0x80000954 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x8000094c
       0     2637        M 0x8000094c addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
                         M                                           #; (f:fpu) ft5  <-- 8.4852000
       0     2638        M 0x80000950 fadd.d  ft5, ft0, ft5          #; ft0  = 5.6568, ft5  = 8.4852000
       0     2639        M 0x80000954 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x8000094c
       0     2640        M 0x8000094c addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
       0     2641        M                                           #; (f:fpu) ft5  <-- 14.142
       0     2642        M 0x80000954 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x8000094c
                         M 0x80000950 fadd.d  ft5, ft0, ft5          #; ft0  = 7.071, ft5  = 14.142
       0     2643        M 0x8000094c addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
       0     2645        M 0x80000954 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x8000094c
                         M                                           #; (f:fpu) ft5  <-- 21.213
       0     2646        M 0x8000094c addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
                         M 0x80000950 fadd.d  ft5, ft0, ft5          #; ft0  = 8.4852000, ft5  = 21.213
       0     2648        M 0x80000954 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x8000094c
       0     2649        M 0x8000094c addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
                         M                                           #; (f:fpu) ft5  <-- 29.6982
       0     2650        M 0x80000950 fadd.d  ft5, ft0, ft5          #; ft0  = 9.8994, ft5  = 29.6982
       0     2651        M 0x80000954 bnez    a1, pc - 8             #; a1  = 0, not taken
       0     2653        M 0x8000095c bnez    a7, pc - 172           #; a7  = 1, taken, goto 0x800008b0
                         M                                           #; (f:fpu) ft5  <-- 39.5976
       0     2654        M 0x80000950 fadd.d  ft5, ft0, ft5          #; ft0  = 11.3136, ft5  = 39.5976
       0     2657        M                                           #; (f:fpu) ft5  <-- 50.9112
       0     2658        M 0x80000950 fadd.d  ft5, ft0, ft5          #; ft0  = 12.7278000, ft5  = 50.9112
       0     2661        M                                           #; (f:fpu) ft5  <-- 63.6390000
       0     2662        M 0x80000950 fadd.d  ft5, ft0, ft5          #; ft0  = 14.142, ft5  = 63.6390000
       0     2663        M 0x80000958 csrrci  a1, ssr, 1             #; 
       0     2664        M 0x800008b0 li      a1, 8                  #; (wrb) a1  <-- 8
       0     2665        M 0x800008b4 li      a2, 64                 #; (wrb) a2  <-- 64
                         M                                           #; (f:fpu) ft5  <-- 77.7810000
       0     2666        M 0x800008b8 li      a3, 192                #; (wrb) a3  <-- 192
       0     2667        M 0x800008bc scfgw   t0, a2                 #; t0  = 24, a2  = 64
       0     2676        M 0x800008c0 scfgw   a1, a3                 #; a1  = 8, a3  = 192
       0     2677        M 0x800008c4 li      a2, 32                 #; (wrb) a2  <-- 32
       0     2678        M 0x800008c8 scfgw   zero, a2               #; a2  = 32
       0     2679        M 0x800008cc scfgwi  t2, 768                #; t2  = 0x00100000
       0     2688        M 0x800008d0 li      a2, 1                  #; (wrb) a2  <-- 1
       0     2689        M 0x800008d4 addi    a3, a2, 64             #; a2  = 1, (wrb) a3  <-- 65
       0     2690        M 0x800008d8 addi    a4, a2, 192            #; a2  = 1, (wrb) a4  <-- 193
       0     2691        M 0x800008dc scfgw   t0, a3                 #; t0  = 24, a3  = 65
       0     2700        M 0x800008e0 scfgw   a1, a4                 #; a1  = 8, a4  = 193
       0     2701        M 0x800008e4 addi    a1, a2, 32             #; a2  = 1, (wrb) a1  <-- 33
       0     2702        M 0x800008e8 scfgw   zero, a1               #; a1  = 33
       0     2703        M 0x800008ec scfgwi  t2, 769                #; t2  = 0x00100000
       0     2713        M 0x800008f0 csrrsi  a1, ssr, 1             #; 
       0     2714        M 0x800008f8 addi    a0, a0, -1             #; a0  = 25, (wrb) a0  <-- 24
                         M 0x800008f4 fcvt.d.w ft6, zero             #; ac1  = 0
       0     2715        M                                           #; (f:fpu) ft6  <-- 0.0
       0     2716        M 0x80000900 bnez    a0, pc - 8             #; a0  = 24, taken, goto 0x800008f8
       0     2717        M 0x800008f8 addi    a0, a0, -1             #; a0  = 24, (wrb) a0  <-- 23
                         M 0x800008fc fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 0.0, ft0  = 0.0, ft6  = 0.0
       0     2719        M 0x80000900 bnez    a0, pc - 8             #; a0  = 23, taken, goto 0x800008f8
       0     2720        M 0x800008f8 addi    a0, a0, -1             #; a0  = 23, (wrb) a0  <-- 22
                         M                                           #; (f:fpu) ft6  <-- 0.0
       0     2721        M 0x800008fc fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 1.4142, ft0  = 1.4142, ft6  = 0.0
       0     2722        M 0x80000900 bnez    a0, pc - 8             #; a0  = 22, taken, goto 0x800008f8
       0     2723        M 0x800008f8 addi    a0, a0, -1             #; a0  = 22, (wrb) a0  <-- 21
       0     2724        M                                           #; (f:fpu) ft6  <-- 1.9999616
       0     2725        M 0x80000900 bnez    a0, pc - 8             #; a0  = 21, taken, goto 0x800008f8
                         M 0x800008fc fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 2.8284, ft0  = 2.8284, ft6  = 1.9999616
       0     2726        M 0x800008f8 addi    a0, a0, -1             #; a0  = 21, (wrb) a0  <-- 20
       0     2728        M 0x80000900 bnez    a0, pc - 8             #; a0  = 20, taken, goto 0x800008f8
                         M                                           #; (f:fpu) ft6  <-- 9.9998082
       0     2729        M 0x800008f8 addi    a0, a0, -1             #; a0  = 20, (wrb) a0  <-- 19
                         M 0x800008fc fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 4.2426000, ft0  = 4.2426000, ft6  = 9.9998082
       0     2731        M 0x80000900 bnez    a0, pc - 8             #; a0  = 19, taken, goto 0x800008f8
       0     2732        M 0x800008f8 addi    a0, a0, -1             #; a0  = 19, (wrb) a0  <-- 18
                         M                                           #; (f:fpu) ft6  <-- 27.9994630
       0     2733        M 0x800008fc fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 5.6568, ft0  = 5.6568, ft6  = 27.9994630
       0     2734        M 0x80000900 bnez    a0, pc - 8             #; a0  = 18, taken, goto 0x800008f8
       0     2735        M 0x800008f8 addi    a0, a0, -1             #; a0  = 18, (wrb) a0  <-- 17
       0     2736        M                                           #; (f:fpu) ft6  <-- 59.9988492
       0     2737        M 0x80000900 bnez    a0, pc - 8             #; a0  = 17, taken, goto 0x800008f8
                         M 0x800008fc fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 7.071, ft0  = 7.071, ft6  = 59.9988492
       0     2738        M 0x800008f8 addi    a0, a0, -1             #; a0  = 17, (wrb) a0  <-- 16
       0     2740        M 0x80000900 bnez    a0, pc - 8             #; a0  = 16, taken, goto 0x800008f8
                         M                                           #; (f:fpu) ft6  <-- 109.9978902
       0     2741        M 0x800008f8 addi    a0, a0, -1             #; a0  = 16, (wrb) a0  <-- 15
                         M 0x800008fc fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 8.4852000, ft0  = 8.4852000, ft6  = 109.9978902
       0     2743        M 0x80000900 bnez    a0, pc - 8             #; a0  = 15, taken, goto 0x800008f8
       0     2744        M 0x800008f8 addi    a0, a0, -1             #; a0  = 15, (wrb) a0  <-- 14
                         M                                           #; (f:fpu) ft6  <-- 181.9965092
       0     2745        M 0x800008fc fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 9.8994, ft0  = 9.8994, ft6  = 181.9965092
       0     2746        M 0x80000900 bnez    a0, pc - 8             #; a0  = 14, taken, goto 0x800008f8
       0     2747        M 0x800008f8 addi    a0, a0, -1             #; a0  = 14, (wrb) a0  <-- 13
       0     2748        M                                           #; (f:fpu) ft6  <-- 279.9946296
       0     2749        M 0x80000900 bnez    a0, pc - 8             #; a0  = 13, taken, goto 0x800008f8
                         M 0x800008fc fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 11.3136, ft0  = 11.3136, ft6  = 279.9946296
       0     2750        M 0x800008f8 addi    a0, a0, -1             #; a0  = 13, (wrb) a0  <-- 12
       0     2752        M 0x80000900 bnez    a0, pc - 8             #; a0  = 12, taken, goto 0x800008f8
                         M                                           #; (f:fpu) ft6  <-- 407.9921746
       0     2753        M 0x800008f8 addi    a0, a0, -1             #; a0  = 12, (wrb) a0  <-- 11
                         M 0x800008fc fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 12.7278000, ft0  = 12.7278000, ft6  = 407.9921746
       0     2755        M 0x80000900 bnez    a0, pc - 8             #; a0  = 11, taken, goto 0x800008f8
       0     2756        M 0x800008f8 addi    a0, a0, -1             #; a0  = 11, (wrb) a0  <-- 10
                         M                                           #; (f:fpu) ft6  <-- 569.9890674
       0     2757        M 0x800008fc fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 14.142, ft0  = 14.142, ft6  = 569.9890674
       0     2758        M 0x80000900 bnez    a0, pc - 8             #; a0  = 10, taken, goto 0x800008f8
       0     2759        M 0x800008f8 addi    a0, a0, -1             #; a0  = 10, (wrb) a0  <-- 9
       0     2760        M                                           #; (f:fpu) ft6  <-- 769.9852314
       0     2761        M 0x80000900 bnez    a0, pc - 8             #; a0  = 9, taken, goto 0x800008f8
                         M 0x800008fc fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 15.5562000, ft0  = 15.5562000, ft6  = 769.9852314
       0     2762        M 0x800008f8 addi    a0, a0, -1             #; a0  = 9, (wrb) a0  <-- 8
       0     2764        M 0x80000900 bnez    a0, pc - 8             #; a0  = 8, taken, goto 0x800008f8
                         M                                           #; (f:fpu) ft6  <-- 1011.9805898
       0     2765        M 0x800008f8 addi    a0, a0, -1             #; a0  = 8, (wrb) a0  <-- 7
                         M 0x800008fc fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 16.9704000, ft0  = 16.9704000, ft6  = 1011.9805898
       0     2767        M 0x80000900 bnez    a0, pc - 8             #; a0  = 7, taken, goto 0x800008f8
       0     2768        M 0x800008f8 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
                         M                                           #; (f:fpu) ft6  <-- 1299.9750660
       0     2769        M 0x800008fc fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 18.3846, ft0  = 18.3846, ft6  = 1299.9750660
       0     2770        M 0x80000900 bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x800008f8
       0     2771        M 0x800008f8 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
       0     2772        M                                           #; (f:fpu) ft6  <-- 1637.9685832
       0     2773        M 0x80000900 bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x800008f8
                         M 0x800008fc fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 19.7988, ft0  = 19.7988, ft6  = 1637.9685832
       0     2774        M 0x800008f8 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
       0     2776        M 0x80000900 bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x800008f8
                         M                                           #; (f:fpu) ft6  <-- 2029.9610646
       0     2777        M 0x800008f8 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
                         M 0x800008fc fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 21.2130000, ft0  = 21.2130000, ft6  = 2029.9610646
       0     2779        M 0x80000900 bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x800008f8
       0     2780        M 0x800008f8 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
                         M                                           #; (f:fpu) ft6  <-- 2479.9524336
       0     2781        M 0x800008fc fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 22.6272, ft0  = 22.6272, ft6  = 2479.9524336
       0     2782        M 0x80000900 bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x800008f8
       0     2783        M 0x800008f8 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
       0     2784        M                                           #; (f:fpu) ft6  <-- 2991.9426134
       0     2785        M 0x80000900 bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x800008f8
                         M 0x800008fc fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 24.0414, ft0  = 24.0414, ft6  = 2991.9426134
       0     2786        M 0x800008f8 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
       0     2788        M 0x80000900 bnez    a0, pc - 8             #; a0  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 3569.9315274
       0     2789        M 0x800008fc fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 25.4556000, ft0  = 25.4556000, ft6  = 3569.9315274
       0     2790        M 0x80000908 j       pc + 0x70              #; goto 0x80000978
       0     2792        M                                           #; (f:fpu) ft6  <-- 4217.9190988
       0     2793        M 0x800008fc fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 26.8698000, ft0  = 26.8698000, ft6  = 4217.9190988
       0     2796        M                                           #; (f:fpu) ft6  <-- 4939.9052508
       0     2797        M 0x800008fc fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 28.284, ft0  = 28.284, ft6  = 4939.9052508
       0     2800        M                                           #; (f:fpu) ft6  <-- 5739.8899068
       0     2801        M 0x80000978 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002978
                         M 0x800008fc fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 29.6982000, ft0  = 29.6982000, ft6  = 5739.8899068
       0     2802        M 0x8000097c addi    a0, a0, 1648           #; a0  = 0x80002978, (wrb) a0  <-- 0x80002fe8
       0     2804        M                                           #; (f:fpu) ft6  <-- 6621.8729900
       0     2805        M 0x800008fc fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 31.1124000, ft0  = 31.1124000, ft6  = 6621.8729900
       0     2808        M                                           #; (f:fpu) ft6  <-- 7589.8544238
       0     2809        M 0x800008fc fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 32.5266000, ft0  = 32.5266000, ft6  = 7589.8544238
       0     2812        M                                           #; (f:fpu) ft6  <-- 8647.8341314
       0     2813        M 0x800008fc fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 33.9408000, ft0  = 33.9408000, ft6  = 8647.8341314
       0     2814        M 0x80000984 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002984
                         M 0x80000904 csrrci  a0, ssr, 1             #; 
       0     2815        M 0x80000988 addi    a0, a0, 1628           #; a0  = 0x80002984, (wrb) a0  <-- 0x80002fe0
       0     2816        M 0x80000980 fld     ft7, 0(a0)             #; ft7  <~~ Doub[0x80002fe8], (f:fpu) ft6  <-- 9799.8120360
       0     2818        M 0x8000098c fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x80002fe0]
       0     2826        M 0x80000994 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002994
                         M                                           #; (f:lsu) ft7  <-- -220.6152000
       0     2827        M 0x80000998 addi    a0, a0, 1628           #; a0  = 0x80002994, (wrb) a0  <-- 0x80002ff0
                         M 0x80000990 fadd.d  ft4, ft4, ft7          #; ft4  = 220.6152, ft7  = -220.6152000, (f:lsu) fa0  <-- -9799.8120360
       0     2830        M 0x8000099c fld     ft7, 0(a0)             #; ft7  <~~ Doub[0x80002ff0], (f:fpu) ft4  <-- 0.0
       0     2839        M 0x800009a0 fadd.d  ft3, ft3, fa0          #; ft3  = 9799.8120360, fa0  = -9799.8120360, (f:lsu) ft7  <-- -77.781
       0     2842        M                                           #; (f:fpu) ft3  <-- -0.0000000
       0     2843        M 0x800009a4 fsgnjx.d ft3, ft3, ft3         #; ft3  = -0.0000000, ft3  = -0.0000000
       0     2844        M 0x800009a8 fsgnjx.d ft4, ft4, ft4         #; ft4  = 0.0, ft4  = 0.0, (f:fpu) ft3  <-- 0.0000000
       0     2845        M 0x800009ac fadd.d  ft5, ft5, ft7          #; ft5  = 77.7810000, ft7  = -77.781, (f:fpu) ft4  <-- 0.0
       0     2848        M                                           #; (f:fpu) ft5  <-- -0.0000000
       0     2851        M 0x800009b0 fsgnjx.d ft5, ft5, ft5         #; ft5  = -0.0000000, ft5  = -0.0000000
       0     2852        M 0x800009b4 fadd.d  ft6, ft6, fa0          #; ft6  = 9799.8120360, fa0  = -9799.8120360, (f:fpu) ft5  <-- 0.0000000
       0     2855        M                                           #; (f:fpu) ft6  <-- -0.0000000
       0     2856        M 0x800009b8 fsgnjx.d ft6, ft6, ft6         #; ft6  = -0.0000000, ft6  = -0.0000000
       0     2857        M 0x800009bc fadd.d  ft3, ft3, ft5          #; ft3  = 0.0000000, ft5  = 0.0000000, (f:fpu) ft6  <-- 0.0000000
       0     2860        M                                           #; (f:fpu) ft3  <-- 0.0000000
       0     2863        M 0x800009c0 fadd.d  ft3, ft3, ft4          #; ft3  = 0.0000000, ft4  = 0.0
       0     2864        M 0x800009cc lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
       0     2866        M                                           #; (f:fpu) ft3  <-- 0.0000000
       0     2867        M                                           #; (lsu) a2  <-- 0
                         M 0x800009c4 fadd.d  fs0, ft3, ft6          #; ft3  = 0.0000000, ft6  = 0.0000000
       0     2870        M                                           #; (f:fpu) fs0  <-- 0.0000000
       0     2871        M 0x800009c8 fsd     fs0, 8(sp)             #; 0.0000000 ~~> Doub[0x0011ff48]
       0     2873        M 0x800009d0 lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
       0     2874        M 0x800009d4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800029d4
       0     2875        M 0x800009d8 addi    a0, a0, 865            #; a0  = 0x800029d4, (wrb) a0  <-- 0x80002d35
       0     2876        M 0x800009dc auipc   ra, 0x0                #; (wrb) ra  <-- 0x800009dc
       0     2877        M                                           #; (lsu) a3  <-- 0x3d901000
       0     2885        M 0x800009e0 jalr    ra, ra, 40             #; ra  = 0x800009dc, (wrb) ra  <-- 0x800009e4, goto 0x80000a04
       0     2908        M 0x80000a04 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     2909        M 0x80000a08 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x800009e4 ~~> Word[0x0011ff1c]
       0     2910        M 0x80000a0c mv      t0, a0                 #; a0  = 0x80002d35, (wrb) t0  <-- 0x80002d35
       0     2920        M 0x80000a10 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff3c]
       0     2921        M 0x80000a14 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff38]
       0     2922        M 0x80000a18 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 10 ~~> Word[0x0011ff34]
       0     2923        M 0x80000a1c sw      a4, 32(sp)             #; sp  = 0x0011ff10, 193 ~~> Word[0x0011ff30]
       0     2932        M 0x80000a20 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0x3d901000 ~~> Word[0x0011ff2c]
       0     2933        M 0x80000a24 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     2934        M 0x80000a28 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 33 ~~> Word[0x0011ff24]
       0     2935        M 0x80000a2c addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     2944        M 0x80000a30 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     2945        M 0x80000a34 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001a34
       0     2946        M 0x80000a38 addi    a0, a0, -988           #; a0  = 0x80001a34, (wrb) a0  <-- 0x80001658
       0     2947        M 0x80000a3c addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     2956        M 0x80000a40 li      a2, -1                 #; (wrb) a2  <-- -1
       0     2957        M 0x80000a44 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     2958        M 0x80000a48 mv      a3, t0                 #; t0  = 0x80002d35, (wrb) a3  <-- 0x80002d35
       0     2959        M 0x80000a4c auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a4c
       0     2968        M 0x80000a50 jalr    ra, ra, 20             #; ra  = 0x80000a4c, (wrb) ra  <-- 0x80000a54, goto 0x80000a60
       0     2980        M 0x80000a60 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     2981        M 0x80000a64 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000a54 ~~> Word[0x0011ff0c]
       0     2982        M 0x80000a68 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
       0     2983        M 0x80000a6c sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     2992        M 0x80000a70 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     2993        M 0x80000a74 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     2994        M 0x80000a78 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     2995        M 0x80000a7c sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     3004        M 0x80000a80 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     3005        M 0x80000a84 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     3006        M 0x80000a88 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     3007        M 0x80000a8c sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     3016        M 0x80000a90 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     3017        M 0x80000a94 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     3018        M 0x80000a98 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     3019        M 0x80000a9c mv      s0, a3                 #; a3  = 0x80002d35, (wrb) s0  <-- 0x80002d35
       0     3028        M 0x80000aa0 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     3029        M 0x80000aa4 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     3030        M 0x80000aa8 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     3031        M 0x80000aac mv      s2, a0                 #; a0  = 0x80001658, (wrb) s2  <-- 0x80001658
       0     3040        M 0x80000ab0 j       pc + 0xc               #; goto 0x80000abc
       0     3041        M 0x80000abc li      s8, 0                  #; (wrb) s8  <-- 0
       0     3053        M 0x80000ac0 li      s6, 37                 #; (wrb) s6  <-- 37
       0     3054        M 0x80000ac4 li      s11, 16                #; (wrb) s11 <-- 16
       0     3055        M 0x80000ac8 li      s7, 46                 #; (wrb) s7  <-- 46
       0     3056        M 0x80000acc lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     3065        M 0x80000ad0 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     3066        M 0x80000ad4 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     3067        M 0x80000ad8 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     3068        M 0x80000adc addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     3077        M 0x80000ae0 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     3078        M 0x80000ae4 addi    s10, s0, 2             #; s0  = 0x80002d35, (wrb) s10 <-- 0x80002d37
       0     3079        M 0x80000ae8 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     3080        M 0x80000aec li      s8, 10                 #; (wrb) s8  <-- 10
       0     3089        M 0x80000af0 lbu     a0, 0(s0)              #; s0  = 0x80002d35, a0  <~~ Byte[0x80002d35]
       0     3100        M                                           #; (lsu) a0  <-- 101
       0     3101        M 0x80000af4 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     3102        M 0x80000af8 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     3103        M 0x80000afc addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     3104        M 0x80000b00 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3105        M 0x80000b04 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     3106        M 0x80000b08 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3107        M 0x80000b0c jalr    s2                     #; s2  = 0x80001658, (wrb) ra  <-- 0x80000b10, goto 0x80001658
       0     3127        M 0x80001658 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     3128        M 0x8000165c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3139        M 0x80001660 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3140        M 0x80001664 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3141        M 0x80001668 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003668
       0     3142        M 0x8000166c addi    a3, a3, -1468          #; a3  = 0x80003668, (wrb) a3  <-- 0x800030ac
       0     3151        M 0x80001670 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     3152        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3163        M                                           #; (lsu) a4  <-- 0
       0     3164        M 0x80001678 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     3165        M 0x8000167c sw      a5, 0(a1)              #; a1  = 0x800030ac, 1 ~~> Word[0x800030ac]
       0     3166        M 0x80001680 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 0, (wrb) a4  <-- 0x800030ac
       0     3167        M 0x80001684 sb      a0, 72(a4)             #; a4  = 0x800030ac, 101 ~~> Byte[0x800030f4]
       0     3168        M 0x80001688 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3189        M                                           #; (lsu) a4  <-- 1
       0     3190        M 0x8000168c addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     3191        M 0x80001690 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     3192        M 0x80001694 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     3193        M 0x80001698 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     3194        M 0x8000169c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3203        M 0x800016a0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001700
       0     3226        M 0x80001700 ret                            #; ra  = 0x80000b10, goto 0x80000b10
       0     3240        M 0x80000b10 addi    s0, s0, 1              #; s0  = 0x80002d35, (wrb) s0  <-- 0x80002d36
       0     3241        M 0x80000b14 addi    s10, s10, 1            #; s10 = 0x80002d37, (wrb) s10 <-- 0x80002d38
       0     3242        M 0x80000b18 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     3243        M 0x80000b1c lbu     a0, 0(s0)              #; s0  = 0x80002d36, a0  <~~ Byte[0x80002d36]
       0     3254        M                                           #; (lsu) a0  <-- 114
       0     3255        M 0x80000b20 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000af8
       0     3256        M 0x80000af8 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     3257        M 0x80000afc addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     3259        M 0x80000b00 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3260        M 0x80000b04 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     3261        M 0x80000b08 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3262        M 0x80000b0c jalr    s2                     #; s2  = 0x80001658, (wrb) ra  <-- 0x80000b10, goto 0x80001658
       0     3265        M 0x80001658 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     3266        M 0x8000165c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3268        M 0x80001660 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3269        M 0x80001664 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3270        M 0x80001668 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003668
       0     3271        M 0x8000166c addi    a3, a3, -1468          #; a3  = 0x80003668, (wrb) a3  <-- 0x800030ac
       0     3272        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3273        M 0x80001670 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     3274        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3285        M                                           #; (lsu) a4  <-- 1
       0     3286        M 0x80001678 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     3287        M 0x8000167c sw      a5, 0(a1)              #; a1  = 0x800030ac, 2 ~~> Word[0x800030ac]
       0     3288        M 0x80001680 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 1, (wrb) a4  <-- 0x800030ad
       0     3289        M 0x80001684 sb      a0, 72(a4)             #; a4  = 0x800030ad, 114 ~~> Byte[0x800030f5]
       0     3290        M 0x80001688 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3311        M                                           #; (lsu) a4  <-- 2
       0     3312        M 0x8000168c addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     3313        M 0x80001690 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     3314        M 0x80001694 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     3315        M 0x80001698 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     3316        M 0x8000169c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3317        M 0x800016a0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001700
       0     3322        M 0x80001700 ret                            #; ra  = 0x80000b10, goto 0x80000b10
       0     3327        M 0x80000b10 addi    s0, s0, 1              #; s0  = 0x80002d36, (wrb) s0  <-- 0x80002d37
       0     3328        M 0x80000b14 addi    s10, s10, 1            #; s10 = 0x80002d38, (wrb) s10 <-- 0x80002d39
       0     3329        M 0x80000b18 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     3330        M 0x80000b1c lbu     a0, 0(s0)              #; s0  = 0x80002d37, a0  <~~ Byte[0x80002d37]
       0     3341        M                                           #; (lsu) a0  <-- 114
       0     3342        M 0x80000b20 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000af8
       0     3343        M 0x80000af8 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     3344        M 0x80000afc addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     3346        M 0x80000b00 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3347        M 0x80000b04 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     3348        M 0x80000b08 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3349        M 0x80000b0c jalr    s2                     #; s2  = 0x80001658, (wrb) ra  <-- 0x80000b10, goto 0x80001658
       0     3352        M 0x80001658 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     3353        M 0x8000165c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3355        M 0x80001660 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3356        M 0x80001664 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3357        M 0x80001668 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003668
       0     3358        M 0x8000166c addi    a3, a3, -1468          #; a3  = 0x80003668, (wrb) a3  <-- 0x800030ac
       0     3359        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3360        M 0x80001670 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     3361        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3372        M                                           #; (lsu) a4  <-- 2
       0     3373        M 0x80001678 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     3374        M 0x8000167c sw      a5, 0(a1)              #; a1  = 0x800030ac, 3 ~~> Word[0x800030ac]
       0     3375        M 0x80001680 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 2, (wrb) a4  <-- 0x800030ae
       0     3376        M 0x80001684 sb      a0, 72(a4)             #; a4  = 0x800030ae, 114 ~~> Byte[0x800030f6]
       0     3377        M 0x80001688 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3398        M                                           #; (lsu) a4  <-- 3
       0     3399        M 0x8000168c addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     3400        M 0x80001690 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     3401        M 0x80001694 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     3402        M 0x80001698 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     3403        M 0x8000169c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3404        M 0x800016a0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001700
       0     3409        M 0x80001700 ret                            #; ra  = 0x80000b10, goto 0x80000b10
       0     3414        M 0x80000b10 addi    s0, s0, 1              #; s0  = 0x80002d37, (wrb) s0  <-- 0x80002d38
       0     3415        M 0x80000b14 addi    s10, s10, 1            #; s10 = 0x80002d39, (wrb) s10 <-- 0x80002d3a
       0     3416        M 0x80000b18 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     3417        M 0x80000b1c lbu     a0, 0(s0)              #; s0  = 0x80002d38, a0  <~~ Byte[0x80002d38]
       0     3428        M                                           #; (lsu) a0  <-- 111
       0     3429        M 0x80000b20 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000af8
       0     3430        M 0x80000af8 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     3431        M 0x80000afc addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     3433        M 0x80000b00 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3434        M 0x80000b04 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     3435        M 0x80000b08 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3436        M 0x80000b0c jalr    s2                     #; s2  = 0x80001658, (wrb) ra  <-- 0x80000b10, goto 0x80001658
       0     3439        M 0x80001658 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     3440        M 0x8000165c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3442        M 0x80001660 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3443        M 0x80001664 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3444        M 0x80001668 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003668
       0     3445        M 0x8000166c addi    a3, a3, -1468          #; a3  = 0x80003668, (wrb) a3  <-- 0x800030ac
       0     3446        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3447        M 0x80001670 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     3448        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3459        M                                           #; (lsu) a4  <-- 3
       0     3460        M 0x80001678 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     3461        M 0x8000167c sw      a5, 0(a1)              #; a1  = 0x800030ac, 4 ~~> Word[0x800030ac]
       0     3462        M 0x80001680 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 3, (wrb) a4  <-- 0x800030af
       0     3463        M 0x80001684 sb      a0, 72(a4)             #; a4  = 0x800030af, 111 ~~> Byte[0x800030f7]
       0     3464        M 0x80001688 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3485        M                                           #; (lsu) a4  <-- 4
       0     3486        M 0x8000168c addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     3487        M 0x80001690 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     3488        M 0x80001694 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     3489        M 0x80001698 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     3490        M 0x8000169c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3491        M 0x800016a0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001700
       0     3496        M 0x80001700 ret                            #; ra  = 0x80000b10, goto 0x80000b10
       0     3501        M 0x80000b10 addi    s0, s0, 1              #; s0  = 0x80002d38, (wrb) s0  <-- 0x80002d39
       0     3502        M 0x80000b14 addi    s10, s10, 1            #; s10 = 0x80002d3a, (wrb) s10 <-- 0x80002d3b
       0     3503        M 0x80000b18 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     3504        M 0x80000b1c lbu     a0, 0(s0)              #; s0  = 0x80002d39, a0  <~~ Byte[0x80002d39]
       0     3515        M                                           #; (lsu) a0  <-- 114
       0     3516        M 0x80000b20 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000af8
       0     3517        M 0x80000af8 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     3518        M 0x80000afc addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     3520        M 0x80000b00 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3521        M 0x80000b04 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     3522        M 0x80000b08 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3523        M 0x80000b0c jalr    s2                     #; s2  = 0x80001658, (wrb) ra  <-- 0x80000b10, goto 0x80001658
       0     3526        M 0x80001658 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     3527        M 0x8000165c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3529        M 0x80001660 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3530        M 0x80001664 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3531        M 0x80001668 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003668
       0     3532        M 0x8000166c addi    a3, a3, -1468          #; a3  = 0x80003668, (wrb) a3  <-- 0x800030ac
       0     3533        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3534        M 0x80001670 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     3535        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3546        M                                           #; (lsu) a4  <-- 4
       0     3547        M 0x80001678 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     3548        M 0x8000167c sw      a5, 0(a1)              #; a1  = 0x800030ac, 5 ~~> Word[0x800030ac]
       0     3549        M 0x80001680 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 4, (wrb) a4  <-- 0x800030b0
       0     3550        M 0x80001684 sb      a0, 72(a4)             #; a4  = 0x800030b0, 114 ~~> Byte[0x800030f8]
       0     3551        M 0x80001688 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3572        M                                           #; (lsu) a4  <-- 5
       0     3573        M 0x8000168c addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     3574        M 0x80001690 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     3575        M 0x80001694 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     3576        M 0x80001698 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     3577        M 0x8000169c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3578        M 0x800016a0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001700
       0     3583        M 0x80001700 ret                            #; ra  = 0x80000b10, goto 0x80000b10
       0     3588        M 0x80000b10 addi    s0, s0, 1              #; s0  = 0x80002d39, (wrb) s0  <-- 0x80002d3a
       0     3589        M 0x80000b14 addi    s10, s10, 1            #; s10 = 0x80002d3b, (wrb) s10 <-- 0x80002d3c
       0     3590        M 0x80000b18 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     3591        M 0x80000b1c lbu     a0, 0(s0)              #; s0  = 0x80002d3a, a0  <~~ Byte[0x80002d3a]
       0     3602        M                                           #; (lsu) a0  <-- 32
       0     3603        M 0x80000b20 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000af8
       0     3604        M 0x80000af8 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3605        M 0x80000afc addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     3607        M 0x80000b00 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3608        M 0x80000b04 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     3609        M 0x80000b08 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3610        M 0x80000b0c jalr    s2                     #; s2  = 0x80001658, (wrb) ra  <-- 0x80000b10, goto 0x80001658
       0     3613        M 0x80001658 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3614        M 0x8000165c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3616        M 0x80001660 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3617        M 0x80001664 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3618        M 0x80001668 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003668
       0     3619        M 0x8000166c addi    a3, a3, -1468          #; a3  = 0x80003668, (wrb) a3  <-- 0x800030ac
       0     3620        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3621        M 0x80001670 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     3622        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3633        M                                           #; (lsu) a4  <-- 5
       0     3634        M 0x80001678 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     3635        M 0x8000167c sw      a5, 0(a1)              #; a1  = 0x800030ac, 6 ~~> Word[0x800030ac]
       0     3636        M 0x80001680 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 5, (wrb) a4  <-- 0x800030b1
       0     3637        M 0x80001684 sb      a0, 72(a4)             #; a4  = 0x800030b1, 32 ~~> Byte[0x800030f9]
       0     3638        M 0x80001688 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3659        M                                           #; (lsu) a4  <-- 6
       0     3660        M 0x8000168c addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     3661        M 0x80001690 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     3662        M 0x80001694 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3663        M 0x80001698 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3664        M 0x8000169c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3665        M 0x800016a0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001700
       0     3670        M 0x80001700 ret                            #; ra  = 0x80000b10, goto 0x80000b10
       0     3675        M 0x80000b10 addi    s0, s0, 1              #; s0  = 0x80002d3a, (wrb) s0  <-- 0x80002d3b
       0     3676        M 0x80000b14 addi    s10, s10, 1            #; s10 = 0x80002d3c, (wrb) s10 <-- 0x80002d3d
       0     3677        M 0x80000b18 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     3678        M 0x80000b1c lbu     a0, 0(s0)              #; s0  = 0x80002d3b, a0  <~~ Byte[0x80002d3b]
       0     3689        M                                           #; (lsu) a0  <-- 61
       0     3690        M 0x80000b20 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000af8
       0     3691        M 0x80000af8 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     3692        M 0x80000afc addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     3694        M 0x80000b00 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3695        M 0x80000b04 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     3696        M 0x80000b08 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3697        M 0x80000b0c jalr    s2                     #; s2  = 0x80001658, (wrb) ra  <-- 0x80000b10, goto 0x80001658
       0     3700        M 0x80001658 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     3701        M 0x8000165c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3703        M 0x80001660 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3704        M 0x80001664 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3705        M 0x80001668 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003668
       0     3706        M 0x8000166c addi    a3, a3, -1468          #; a3  = 0x80003668, (wrb) a3  <-- 0x800030ac
       0     3707        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3708        M 0x80001670 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     3709        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3720        M                                           #; (lsu) a4  <-- 6
       0     3721        M 0x80001678 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     3722        M 0x8000167c sw      a5, 0(a1)              #; a1  = 0x800030ac, 7 ~~> Word[0x800030ac]
       0     3723        M 0x80001680 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 6, (wrb) a4  <-- 0x800030b2
       0     3724        M 0x80001684 sb      a0, 72(a4)             #; a4  = 0x800030b2, 61 ~~> Byte[0x800030fa]
       0     3725        M 0x80001688 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3746        M                                           #; (lsu) a4  <-- 7
       0     3747        M 0x8000168c addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     3748        M 0x80001690 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     3749        M 0x80001694 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     3750        M 0x80001698 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     3751        M 0x8000169c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3752        M 0x800016a0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001700
       0     3757        M 0x80001700 ret                            #; ra  = 0x80000b10, goto 0x80000b10
       0     3762        M 0x80000b10 addi    s0, s0, 1              #; s0  = 0x80002d3b, (wrb) s0  <-- 0x80002d3c
       0     3763        M 0x80000b14 addi    s10, s10, 1            #; s10 = 0x80002d3d, (wrb) s10 <-- 0x80002d3e
       0     3764        M 0x80000b18 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     3765        M 0x80000b1c lbu     a0, 0(s0)              #; s0  = 0x80002d3c, a0  <~~ Byte[0x80002d3c]
       0     3776        M                                           #; (lsu) a0  <-- 32
       0     3777        M 0x80000b20 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000af8
       0     3778        M 0x80000af8 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3779        M 0x80000afc addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     3781        M 0x80000b00 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3782        M 0x80000b04 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     3783        M 0x80000b08 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3784        M 0x80000b0c jalr    s2                     #; s2  = 0x80001658, (wrb) ra  <-- 0x80000b10, goto 0x80001658
       0     3787        M 0x80001658 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3788        M 0x8000165c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3790        M 0x80001660 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3791        M 0x80001664 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3792        M 0x80001668 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003668
       0     3793        M 0x8000166c addi    a3, a3, -1468          #; a3  = 0x80003668, (wrb) a3  <-- 0x800030ac
       0     3794        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3795        M 0x80001670 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     3796        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3807        M                                           #; (lsu) a4  <-- 7
       0     3808        M 0x80001678 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     3809        M 0x8000167c sw      a5, 0(a1)              #; a1  = 0x800030ac, 8 ~~> Word[0x800030ac]
       0     3810        M 0x80001680 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 7, (wrb) a4  <-- 0x800030b3
       0     3811        M 0x80001684 sb      a0, 72(a4)             #; a4  = 0x800030b3, 32 ~~> Byte[0x800030fb]
       0     3812        M 0x80001688 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3833        M                                           #; (lsu) a4  <-- 8
       0     3834        M 0x8000168c addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     3835        M 0x80001690 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     3836        M 0x80001694 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3837        M 0x80001698 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3838        M 0x8000169c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3839        M 0x800016a0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001700
       0     3844        M 0x80001700 ret                            #; ra  = 0x80000b10, goto 0x80000b10
       0     3849        M 0x80000b10 addi    s0, s0, 1              #; s0  = 0x80002d3c, (wrb) s0  <-- 0x80002d3d
       0     3850        M 0x80000b14 addi    s10, s10, 1            #; s10 = 0x80002d3e, (wrb) s10 <-- 0x80002d3f
       0     3851        M 0x80000b18 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     3852        M 0x80000b1c lbu     a0, 0(s0)              #; s0  = 0x80002d3d, a0  <~~ Byte[0x80002d3d]
       0     3863        M                                           #; (lsu) a0  <-- 37
       0     3864        M 0x80000b20 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000af8
       0     3865        M 0x80000af8 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000b28
       0     3866        M 0x80000b28 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3867        M 0x80000b2c j       pc + 0x10              #; goto 0x80000b3c
       0     3879        M 0x80000b3c lbu     a0, -1(s10)            #; s10 = 0x80002d3f, a0  <~~ Byte[0x80002d3e]
       0     3890        M                                           #; (lsu) a0  <-- 102
       0     3891        M 0x80000b40 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     3892        M 0x80000b44 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000b7c
       0     3914        M 0x80000b7c addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     3926        M 0x80000b80 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     3927        M 0x80000b84 addi    a1, s10, -1            #; s10 = 0x80002d3f, (wrb) a1  <-- 0x80002d3e
       0     3928        M 0x80000b88 li      a3, 9                  #; (wrb) a3  <-- 9
       0     3929        M 0x80000b8c bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000c08
       0     3949        M 0x80000c08 li      a2, 42                 #; (wrb) a2  <-- 42
       0     3950        M 0x80000c0c bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000c5c
       0     3972        M 0x80000c5c li      s6, 0                  #; (wrb) s6  <-- 0
       0     3984        M 0x80000c60 mv      s10, a1                #; a1  = 0x80002d3e, (wrb) s10 <-- 0x80002d3e
       0     3985        M 0x80000c64 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     3986        M 0x80000c68 li      s7, 0                  #; (wrb) s7  <-- 0
       0     3987        M 0x80000c6c j       pc + 0xc               #; goto 0x80000c78
       0     4007        M 0x80000c78 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     4008        M 0x80000c7c srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     4019        M 0x80000c80 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     4020        M 0x80000c84 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     4021        M 0x80000c88 li      a2, 9                  #; (wrb) a2  <-- 9
       0     4022        M 0x80000c8c bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000cf0
       0     4042        M 0x80000cf0 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     4043        M 0x80000cf4 li      a2, 83                 #; (wrb) a2  <-- 83
       0     4044        M 0x80000cf8 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     4045        M 0x80000cfc slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     4054        M 0x80000d00 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002d00
       0     4055        M 0x80000d04 addi    a2, a2, 180            #; a2  = 0x80002d00, (wrb) a2  <-- 0x80002db4
       0     4056        M 0x80000d08 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002db4, (wrb) a1  <-- 0x80002eb8
       0     4057        M 0x80000d0c lw      a2, 0(a1)              #; a1  = 0x80002eb8, a2  <~~ Word[0x80002eb8]
       0     4066        M 0x80000d10 li      a1, 8                  #; (wrb) a1  <-- 8
       0     4067        M 0x80000d14 li      s8, 16                 #; (wrb) s8  <-- 16
       0     4068        M                                           #; (lsu) a2  <-- 0x80000d48
       0     4069        M 0x80000d18 jr      a2                     #; a2  = 0x80000d48, goto 0x80000d48
       0     4089        M 0x80000d48 li      a1, 70                 #; (wrb) a1  <-- 70
       0     4090        M 0x80000d4c bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000d54
       0     4101        M 0x80000d54 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     4102        M 0x80000d58 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     4105        M 0x80000d5c fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     4106        M                                           #; (f:lsu) fa0  <-- 0.0000000
       0     4113        M 0x80000d60 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     4114        M 0x80000d64 mv      a0, s2                 #; s2  = 0x80001658, (wrb) a0  <-- 0x80001658
       0     4115        M 0x80000d68 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4116        M 0x80000d6c mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     4125        M 0x80000d70 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4126        M 0x80000d74 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     4127        M 0x80000d78 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     4128        M 0x80000d7c mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     4137        M 0x80000d80 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001d80
       0     4138        M 0x80000d84 jalr    ra, ra, -1656          #; ra  = 0x80001d80, (wrb) ra  <-- 0x80000d88, goto 0x80001708
       0     4151        M 0x80001708 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     4152        M 0x8000170c sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000d88 ~~> Word[0x0011fe9c]
       0     4154        M 0x80001710 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     4155        M 0x80001714 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     4156        M 0x80001718 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001658 ~~> Word[0x0011fe90]
       0     4157        M 0x8000171c sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     4166        M 0x80001720 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     4167        M 0x80001724 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     4168        M 0x80001728 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     4169        M 0x8000172c sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     4178        M 0x80001730 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     4179        M 0x80001734 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     4180        M 0x80001738 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002d3e ~~> Word[0x0011fe70]
       0     4183        M 0x8000173c fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe68]
       0     4192        M 0x80001748 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003748
                         M 0x80001740 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     4193        M 0x8000174c addi    s1, s1, -1864          #; s1  = 0x80003748, (wrb) s1  <-- 0x80003000
                         M 0x80001744 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     4204        M 0x80001758 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
                         M 0x80001750 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003000]
       0     4205        M 0x8000175c mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
       0     4213        M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     4214        M 0x80001760 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x80001754 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0000000
       0     4215        M 0x80001764 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     4216        M 0x80001768 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     4217        M 0x8000176c mv      s7, a0                 #; a0  = 0x80001658, (wrb) s7  <-- 0x80001658
       0     4226        M 0x80001770 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001860
       0     4250        M 0x80001864 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002864
       0     4251        M 0x80001868 addi    a0, a0, 1956           #; a0  = 0x80002864, (wrb) a0  <-- 0x80003008
                         M 0x80001860 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0000000, fa0  = 0.0000000
       0     4252        M                                           #; (f:fpu) fs0  <-- 0.0000000
       0     4254        M 0x8000186c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003008]
       0     4263        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     4264        M 0x80001870 fle.d   a0, fa0, ft0           #; fa0  = 0.0000000, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     4266        M                                           #; (acc) t3  <-- 0x00051e63
       0     4267        M 0x80001874 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001890
       0     4284        M 0x80001890 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002890
       0     4285        M 0x80001894 addi    a0, a0, 1920           #; a0  = 0x80002890, (wrb) a0  <-- 0x80003010
       0     4287        M 0x8000189c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000289c
       0     4288        M 0x80001898 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003010]
       0     4296        M 0x800018a0 addi    a0, a0, 1916           #; a0  = 0x8000289c, (wrb) a0  <-- 0x80003018
       0     4297        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     4299        M 0x800018a4 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003018]
       0     4300        M 0x800018a8 fle.d   a0, fs0, ft0           #; fs0  = 0.0000000, ft0  = 1000000000.0000000
       0     4308        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     4309        M 0x800018ac fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0000000
       0     4311        M                                           #; (acc) a0  <-- 0x00b57533
       0     4312        M 0x800018b0 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     4313        M 0x800018b4 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x800019b0
       0     4331        M 0x800019b0 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     4332        M 0x800019b4 li      s8, 6                  #; (wrb) s8  <-- 6
       0     4333        M 0x800019b8 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x800019c0
       0     4343        M 0x800019c0 li      a0, 10                 #; (wrb) a0  <-- 10
       0     4345        M 0x800019c8 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001a00
       0     4346        M 0x800019c4 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0000000, fs0  = 0.0000000
       0     4347        M                                           #; (f:fpu) fs2  <-- 0.0000000
       0     4366        M 0x80001a00 li      s0, 0                  #; (wrb) s0  <-- 0
       0     4367        M 0x80001a04 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     4368        M 0x80001a08 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002a08
       0     4369        M 0x80001a0c addi    a1, a1, 1280           #; a1  = 0x80002a08, (wrb) a1  <-- 0x80002f08
       0     4378        M 0x80001a10 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002f08, (wrb) a0  <-- 0x80002f38
       0     4381        M 0x80001a14 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f38]
       0     4382        M 0x80001a18 fcvt.w.d s1, fs2               #; fs2  = 0.0000000
       0     4386        M 0x80001a1c fcvt.d.w ft0, s1               #; ac1  = 0
       0     4387        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4390        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     4392        M 0x80001a28 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002a28
                         M 0x80001a20 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0000000, ft0  = 0.0
       0     4393        M 0x80001a2c addi    a0, a0, 1528           #; a0  = 0x80002a28, (wrb) a0  <-- 0x80003020
       0     4395        M                                           #; (f:fpu) ft0  <-- 0.0000000
       0     4396        M 0x80001a24 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0000000
       0     4399        M                                           #; (f:fpu) ft2  <-- 0.0000037
       0     4404        M 0x80001a30 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003020]
       0     4405        M 0x80001a34 fcvt.wu.d a0, ft2              #; ft2  = 0.0000037
       0     4407        M                                           #; (acc) gp  <-- 0xd21501d3
       0     4409        M 0x80001a38 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     4410        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4411        M 0x80001a3c fsub.d  ft2, ft2, ft3          #; ft2  = 0.0000037, ft3  = 0.0
       0     4413        M                                           #; (f:lsu) ft0  <-- 0.5
       0     4414        M                                           #; (f:fpu) ft2  <-- 0.0000037
       0     4415        M 0x80001a40 fle.d   a1, ft2, ft0           #; ft2  = 0.0000037, ft0  = 0.5
       0     4418        M 0x80001a44 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001a64
       0     4438        M 0x80001a64 flt.d   a1, ft2, ft0           #; ft2  = 0.0000037, ft0  = 0.5
       0     4440        M                                           #; (acc) s4  <-- 0x00059a63
       0     4441        M 0x80001a68 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001a7c
       0     4450        M 0x80001a7c fcvt.d.w fs1, zero             #; ac1  = 0
       0     4451        M                                           #; (f:fpu) fs1  <-- 0.0
       0     4461        M 0x80001a80 beqz    s8, pc + 216           #; s8  = 6, not taken
       0     4462        M 0x80001a84 li      a2, 0                  #; (wrb) a2  <-- 0
       0     4463        M 0x80001a88 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     4464        M 0x80001a8c add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     4473        M 0x80001a90 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4474        M 0x80001a94 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     4475        M 0x80001a98 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     4476        M 0x80001a9c addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     4485        M 0x80001aa0 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4486        M 0x80001aa4 li      a7, 9                  #; (wrb) a7  <-- 9
       0     4487        M 0x80001aa8 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     4488        M 0x80001aac mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     4497        M 0x80001ab0 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     4500        M                                           #; (acc) a0  <-- 0x00355513
       0     4501        M 0x80001ab4 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     4502        M 0x80001ab8 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     4505        M                                           #; (acc) a3  <-- 0x40d586b3
       0     4506        M 0x80001abc sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     4509        M 0x80001ac0 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     4510        M 0x80001ac4 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     4511        M 0x80001ac8 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     4512        M 0x80001acc addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     4521        M 0x80001ad0 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     4522        M 0x80001ad4 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     4523        M 0x80001ad8 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     4524        M 0x80001adc li      a3, 30                 #; (wrb) a3  <-- 30
       0     4534        M 0x80001ae0 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     4535        M 0x80001ae4 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     4536        M 0x80001ae8 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     4537        M 0x80001aec or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     4546        M 0x80001af0 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     4547        M 0x80001af4 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     4548        M 0x80001af8 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     4549        M 0x80001afc not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     4558        M 0x80001b00 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     4559        M 0x80001b04 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     4560        M 0x80001b08 li      a1, 31                 #; (wrb) a1  <-- 31
       0     4561        M 0x80001b0c sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     4570        M 0x80001b10 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     4571        M 0x80001b14 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     4572        M 0x80001b18 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001b20
       0     4582        M 0x80001b20 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     4583        M 0x80001b24 li      a1, 48                 #; (wrb) a1  <-- 48
       0     4584        M 0x80001b28 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000b28
       0     4585        M 0x80001b2c jalr    ra, ra, -1488          #; ra  = 0x80000b28, (wrb) ra  <-- 0x80001b30, goto 0x80000558
       0     4605        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     4606        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     4617        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     4640        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     4652        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     4653        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     4654        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     4655        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     4675        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     4676        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     4687        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     4688        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     4689        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     4690        M 0x800005ec ret                            #; ra  = 0x80001b30, goto 0x80001b30
       0     4701        M 0x80001b30 li      a0, 0                  #; (wrb) a0  <-- 0
       0     4702        M 0x80001b34 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     4703        M 0x80001b38 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     4704        M 0x80001b3c xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     4713        M 0x80001b40 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     4714        M 0x80001b44 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4715        M 0x80001b48 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4716        M 0x80001b4c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b34
       0     4717        M 0x80001b34 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     4718        M 0x80001b38 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     4719        M 0x80001b3c xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     4720        M 0x80001b40 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     4721        M 0x80001b44 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4722        M 0x80001b48 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     4723        M 0x80001b4c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b34
       0     4724        M 0x80001b34 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     4725        M 0x80001b38 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     4726        M 0x80001b3c xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     4727        M 0x80001b40 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     4728        M 0x80001b44 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4729        M 0x80001b48 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     4730        M 0x80001b4c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b34
       0     4731        M 0x80001b34 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     4732        M 0x80001b38 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     4733        M 0x80001b3c xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     4734        M 0x80001b40 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     4735        M 0x80001b44 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4736        M 0x80001b48 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     4737        M 0x80001b4c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b34
       0     4738        M 0x80001b34 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     4739        M 0x80001b38 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     4740        M 0x80001b3c xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     4741        M 0x80001b40 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     4742        M 0x80001b44 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     4743        M 0x80001b48 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     4744        M 0x80001b4c bnez    a2, pc - 24            #; a2  = 0, not taken
       0     4756        M 0x80001b50 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     4757        M 0x80001b54 j       pc + 0x28              #; goto 0x80001b7c
       0     4768        M 0x80001b7c beqz    a1, pc + 28            #; a1  = 1, not taken
       0     4780        M 0x80001b80 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     4781        M 0x80001b84 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     4782        M 0x80001b88 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     4783        M 0x80001b8c li      a1, 46                 #; (wrb) a1  <-- 46
       0     4792        M 0x80001b90 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     4793        M 0x80001b94 j       pc + 0x8               #; goto 0x80001b9c
       0     4794        M 0x80001b9c li      a0, 32                 #; (wrb) a0  <-- 32
       0     4806        M 0x80001ba0 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     4807        M 0x80001ba4 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     4808        M 0x80001ba8 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4810        M 0x80001bac flt.d   s9, fs0, fs1           #; fs0  = 0.0000000, fs1  = 0.0
       0     4818        M 0x80001bb0 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
       0     4819        M 0x80001bb4 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     4820        M 0x80001bb8 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4821        M 0x80001bbc addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     4830        M 0x80001bc0 li      a4, 18                 #; (wrb) a4  <-- 18
       0     4831        M 0x80001bc4 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     4832        M 0x80001bc8 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     4835        M                                           #; (acc) a5  <-- 0x01f55793
       0     4836        M 0x80001bcc srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     4842        M 0x80001bd0 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     4843        M 0x80001bd4 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     4844        M 0x80001bd8 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     4847        M                                           #; (acc) a5  <-- 0x40f487b3
       0     4848        M 0x80001bdc sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     4854        M 0x80001be0 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     4855        M 0x80001be4 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     4856        M 0x80001be8 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     4857        M 0x80001bec addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     4866        M 0x80001bf0 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     4867        M 0x80001bf4 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     4868        M 0x80001bf8 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     4869        M 0x80001bfc bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     4881        M 0x80001c00 j       pc + 0x8               #; goto 0x80001c08
       0     4882        M 0x80001c08 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     4883        M 0x80001c0c li      a0, 1                  #; (wrb) a0  <-- 1
       0     4894        M 0x80001c10 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001c7c
       0     4917        M 0x80001c7c li      a0, 31                 #; (wrb) a0  <-- 31
       0     4929        M 0x80001c80 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     4930        M 0x80001c84 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001c9c
       0     4941        M 0x80001c9c andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     4953        M 0x80001ca0 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     4954        M 0x80001ca4 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     4955        M 0x80001ca8 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001cd4
       0     4976        M 0x80001cd4 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     4977        M 0x80001cd8 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     4978        M 0x80001cdc xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     4988        M 0x80001ce0 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     4989        M 0x80001ce4 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     4990        M 0x80001ce8 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     4991        M 0x80001cec bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001d18
       0     5011        M 0x80001d18 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     5012        M 0x80001d1c beqz    s8, pc + 56            #; s8  = 8, not taken
       0     5023        M 0x80001d20 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     5024        M 0x80001d24 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     5025        M 0x80001d28 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     5026        M 0x80001d2c addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     5028        M                                           #; (lsu) a0  <-- 48
       0     5035        M 0x80001d30 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     5036        M 0x80001d34 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5037        M 0x80001d38 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     5038        M 0x80001d3c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5047        M 0x80001d40 jalr    s7                     #; s7  = 0x80001658, (wrb) ra  <-- 0x80001d44, goto 0x80001658
       0     5050        M 0x80001658 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5051        M 0x8000165c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5053        M 0x80001660 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5054        M 0x80001664 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5055        M 0x80001668 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003668
       0     5056        M 0x8000166c addi    a3, a3, -1468          #; a3  = 0x80003668, (wrb) a3  <-- 0x800030ac
       0     5057        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5058        M 0x80001670 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     5059        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5070        M                                           #; (lsu) a4  <-- 8
       0     5071        M 0x80001678 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     5072        M 0x8000167c sw      a5, 0(a1)              #; a1  = 0x800030ac, 9 ~~> Word[0x800030ac]
       0     5073        M 0x80001680 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 8, (wrb) a4  <-- 0x800030b4
       0     5074        M 0x80001684 sb      a0, 72(a4)             #; a4  = 0x800030b4, 48 ~~> Byte[0x800030fc]
       0     5075        M 0x80001688 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5096        M                                           #; (lsu) a4  <-- 9
       0     5097        M 0x8000168c addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     5098        M 0x80001690 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     5099        M 0x80001694 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5100        M 0x80001698 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5101        M 0x8000169c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5102        M 0x800016a0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001700
       0     5107        M 0x80001700 ret                            #; ra  = 0x80001d44, goto 0x80001d44
       0     5112        M 0x80001d44 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     5113        M 0x80001d48 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     5114        M 0x80001d4c bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001d24
       0     5115        M 0x80001d24 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     5116        M 0x80001d28 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     5117        M 0x80001d2c addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     5118        M 0x80001d30 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     5119        M 0x80001d34 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5120        M 0x80001d38 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     5121        M 0x80001d3c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5122        M 0x80001d40 jalr    s7                     #; s7  = 0x80001658, (wrb) ra  <-- 0x80001d44, goto 0x80001658
       0     5123        M                                           #; (lsu) a0  <-- 46
       0     5125        M 0x80001658 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     5126        M 0x8000165c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5128        M 0x80001660 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5129        M 0x80001664 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5130        M 0x80001668 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003668
       0     5131        M 0x8000166c addi    a3, a3, -1468          #; a3  = 0x80003668, (wrb) a3  <-- 0x800030ac
       0     5132        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5133        M 0x80001670 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     5134        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5145        M                                           #; (lsu) a4  <-- 9
       0     5146        M 0x80001678 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     5147        M 0x8000167c sw      a5, 0(a1)              #; a1  = 0x800030ac, 10 ~~> Word[0x800030ac]
       0     5148        M 0x80001680 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 9, (wrb) a4  <-- 0x800030b5
       0     5149        M 0x80001684 sb      a0, 72(a4)             #; a4  = 0x800030b5, 46 ~~> Byte[0x800030fd]
       0     5150        M 0x80001688 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5171        M                                           #; (lsu) a4  <-- 10
       0     5172        M 0x8000168c addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     5173        M 0x80001690 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     5174        M 0x80001694 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     5175        M 0x80001698 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     5176        M 0x8000169c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5177        M 0x800016a0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001700
       0     5182        M 0x80001700 ret                            #; ra  = 0x80001d44, goto 0x80001d44
       0     5187        M 0x80001d44 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     5188        M 0x80001d48 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     5189        M 0x80001d4c bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001d24
       0     5190        M 0x80001d24 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     5191        M 0x80001d28 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     5192        M 0x80001d2c addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     5193        M 0x80001d30 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     5194        M 0x80001d34 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5195        M 0x80001d38 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     5196        M 0x80001d3c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5197        M 0x80001d40 jalr    s7                     #; s7  = 0x80001658, (wrb) ra  <-- 0x80001d44, goto 0x80001658
       0     5198        M                                           #; (lsu) a0  <-- 48
       0     5200        M 0x80001658 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5201        M 0x8000165c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5203        M 0x80001660 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5204        M 0x80001664 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5205        M 0x80001668 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003668
       0     5206        M 0x8000166c addi    a3, a3, -1468          #; a3  = 0x80003668, (wrb) a3  <-- 0x800030ac
       0     5207        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5208        M 0x80001670 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     5209        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5220        M                                           #; (lsu) a4  <-- 10
       0     5221        M 0x80001678 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     5222        M 0x8000167c sw      a5, 0(a1)              #; a1  = 0x800030ac, 11 ~~> Word[0x800030ac]
       0     5223        M 0x80001680 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 10, (wrb) a4  <-- 0x800030b6
       0     5224        M 0x80001684 sb      a0, 72(a4)             #; a4  = 0x800030b6, 48 ~~> Byte[0x800030fe]
       0     5225        M 0x80001688 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5246        M                                           #; (lsu) a4  <-- 11
       0     5247        M 0x8000168c addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     5248        M 0x80001690 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     5249        M 0x80001694 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5250        M 0x80001698 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5251        M 0x8000169c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5252        M 0x800016a0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001700
       0     5257        M 0x80001700 ret                            #; ra  = 0x80001d44, goto 0x80001d44
       0     5262        M 0x80001d44 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     5263        M 0x80001d48 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     5264        M 0x80001d4c bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001d24
       0     5265        M 0x80001d24 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     5266        M 0x80001d28 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     5267        M 0x80001d2c addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     5268        M 0x80001d30 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     5269        M 0x80001d34 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5270        M 0x80001d38 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     5271        M 0x80001d3c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5272        M 0x80001d40 jalr    s7                     #; s7  = 0x80001658, (wrb) ra  <-- 0x80001d44, goto 0x80001658
       0     5273        M                                           #; (lsu) a0  <-- 48
       0     5275        M 0x80001658 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5276        M 0x8000165c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5278        M 0x80001660 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5279        M 0x80001664 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5280        M 0x80001668 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003668
       0     5281        M 0x8000166c addi    a3, a3, -1468          #; a3  = 0x80003668, (wrb) a3  <-- 0x800030ac
       0     5282        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5283        M 0x80001670 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     5284        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5295        M                                           #; (lsu) a4  <-- 11
       0     5296        M 0x80001678 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     5297        M 0x8000167c sw      a5, 0(a1)              #; a1  = 0x800030ac, 12 ~~> Word[0x800030ac]
       0     5298        M 0x80001680 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 11, (wrb) a4  <-- 0x800030b7
       0     5299        M 0x80001684 sb      a0, 72(a4)             #; a4  = 0x800030b7, 48 ~~> Byte[0x800030ff]
       0     5300        M 0x80001688 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5321        M                                           #; (lsu) a4  <-- 12
       0     5322        M 0x8000168c addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     5323        M 0x80001690 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     5324        M 0x80001694 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5325        M 0x80001698 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5326        M 0x8000169c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5327        M 0x800016a0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001700
       0     5332        M 0x80001700 ret                            #; ra  = 0x80001d44, goto 0x80001d44
       0     5337        M 0x80001d44 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     5338        M 0x80001d48 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     5339        M 0x80001d4c bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001d24
       0     5340        M 0x80001d24 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     5341        M 0x80001d28 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     5342        M 0x80001d2c addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     5343        M 0x80001d30 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     5344        M 0x80001d34 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5345        M 0x80001d38 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     5346        M 0x80001d3c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5347        M 0x80001d40 jalr    s7                     #; s7  = 0x80001658, (wrb) ra  <-- 0x80001d44, goto 0x80001658
       0     5348        M                                           #; (lsu) a0  <-- 48
       0     5350        M 0x80001658 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5351        M 0x8000165c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5353        M 0x80001660 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5354        M 0x80001664 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5355        M 0x80001668 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003668
       0     5356        M 0x8000166c addi    a3, a3, -1468          #; a3  = 0x80003668, (wrb) a3  <-- 0x800030ac
       0     5357        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5358        M 0x80001670 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     5359        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5370        M                                           #; (lsu) a4  <-- 12
       0     5371        M 0x80001678 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     5372        M 0x8000167c sw      a5, 0(a1)              #; a1  = 0x800030ac, 13 ~~> Word[0x800030ac]
       0     5373        M 0x80001680 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 12, (wrb) a4  <-- 0x800030b8
       0     5374        M 0x80001684 sb      a0, 72(a4)             #; a4  = 0x800030b8, 48 ~~> Byte[0x80003100]
       0     5375        M 0x80001688 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5396        M                                           #; (lsu) a4  <-- 13
       0     5397        M 0x8000168c addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     5398        M 0x80001690 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     5399        M 0x80001694 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5400        M 0x80001698 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5401        M 0x8000169c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5402        M 0x800016a0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001700
       0     5407        M 0x80001700 ret                            #; ra  = 0x80001d44, goto 0x80001d44
       0     5412        M 0x80001d44 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     5413        M 0x80001d48 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     5414        M 0x80001d4c bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001d24
       0     5415        M 0x80001d24 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     5416        M 0x80001d28 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     5417        M 0x80001d2c addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     5418        M 0x80001d30 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     5419        M 0x80001d34 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5420        M 0x80001d38 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     5421        M 0x80001d3c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5422        M 0x80001d40 jalr    s7                     #; s7  = 0x80001658, (wrb) ra  <-- 0x80001d44, goto 0x80001658
       0     5423        M                                           #; (lsu) a0  <-- 48
       0     5425        M 0x80001658 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5426        M 0x8000165c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5428        M 0x80001660 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5429        M 0x80001664 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5430        M 0x80001668 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003668
       0     5431        M 0x8000166c addi    a3, a3, -1468          #; a3  = 0x80003668, (wrb) a3  <-- 0x800030ac
       0     5432        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5433        M 0x80001670 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     5434        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5445        M                                           #; (lsu) a4  <-- 13
       0     5446        M 0x80001678 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     5447        M 0x8000167c sw      a5, 0(a1)              #; a1  = 0x800030ac, 14 ~~> Word[0x800030ac]
       0     5448        M 0x80001680 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 13, (wrb) a4  <-- 0x800030b9
       0     5449        M 0x80001684 sb      a0, 72(a4)             #; a4  = 0x800030b9, 48 ~~> Byte[0x80003101]
       0     5450        M 0x80001688 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5471        M                                           #; (lsu) a4  <-- 14
       0     5472        M 0x8000168c addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     5473        M 0x80001690 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     5474        M 0x80001694 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5475        M 0x80001698 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5476        M 0x8000169c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5477        M 0x800016a0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001700
       0     5482        M 0x80001700 ret                            #; ra  = 0x80001d44, goto 0x80001d44
       0     5487        M 0x80001d44 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     5488        M 0x80001d48 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     5489        M 0x80001d4c bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001d24
       0     5490        M 0x80001d24 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     5491        M 0x80001d28 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     5492        M 0x80001d2c addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     5493        M 0x80001d30 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     5494        M 0x80001d34 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5495        M 0x80001d38 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     5496        M 0x80001d3c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5497        M 0x80001d40 jalr    s7                     #; s7  = 0x80001658, (wrb) ra  <-- 0x80001d44, goto 0x80001658
       0     5498        M                                           #; (lsu) a0  <-- 48
       0     5500        M 0x80001658 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5501        M 0x8000165c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5503        M 0x80001660 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5504        M 0x80001664 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5505        M 0x80001668 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003668
       0     5506        M 0x8000166c addi    a3, a3, -1468          #; a3  = 0x80003668, (wrb) a3  <-- 0x800030ac
       0     5507        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5508        M 0x80001670 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     5509        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5520        M                                           #; (lsu) a4  <-- 14
       0     5521        M 0x80001678 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     5522        M 0x8000167c sw      a5, 0(a1)              #; a1  = 0x800030ac, 15 ~~> Word[0x800030ac]
       0     5523        M 0x80001680 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 14, (wrb) a4  <-- 0x800030ba
       0     5524        M 0x80001684 sb      a0, 72(a4)             #; a4  = 0x800030ba, 48 ~~> Byte[0x80003102]
       0     5525        M 0x80001688 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5546        M                                           #; (lsu) a4  <-- 15
       0     5547        M 0x8000168c addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     5548        M 0x80001690 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     5549        M 0x80001694 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5550        M 0x80001698 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5551        M 0x8000169c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5552        M 0x800016a0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001700
       0     5557        M 0x80001700 ret                            #; ra  = 0x80001d44, goto 0x80001d44
       0     5562        M 0x80001d44 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     5563        M 0x80001d48 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     5564        M 0x80001d4c bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001d24
       0     5565        M 0x80001d24 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     5566        M 0x80001d28 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     5567        M 0x80001d2c addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     5568        M 0x80001d30 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     5569        M 0x80001d34 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5570        M 0x80001d38 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     5571        M 0x80001d3c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5572        M 0x80001d40 jalr    s7                     #; s7  = 0x80001658, (wrb) ra  <-- 0x80001d44, goto 0x80001658
       0     5573        M                                           #; (lsu) a0  <-- 48
       0     5575        M 0x80001658 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5576        M 0x8000165c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5578        M 0x80001660 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5579        M 0x80001664 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5580        M 0x80001668 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003668
       0     5581        M 0x8000166c addi    a3, a3, -1468          #; a3  = 0x80003668, (wrb) a3  <-- 0x800030ac
       0     5582        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5583        M 0x80001670 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     5584        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5595        M                                           #; (lsu) a4  <-- 15
       0     5596        M 0x80001678 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     5597        M 0x8000167c sw      a5, 0(a1)              #; a1  = 0x800030ac, 16 ~~> Word[0x800030ac]
       0     5598        M 0x80001680 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 15, (wrb) a4  <-- 0x800030bb
       0     5599        M 0x80001684 sb      a0, 72(a4)             #; a4  = 0x800030bb, 48 ~~> Byte[0x80003103]
       0     5600        M 0x80001688 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5621        M                                           #; (lsu) a4  <-- 16
       0     5622        M 0x8000168c addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     5623        M 0x80001690 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     5624        M 0x80001694 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5625        M 0x80001698 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5626        M 0x8000169c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5627        M 0x800016a0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001700
       0     5632        M 0x80001700 ret                            #; ra  = 0x80001d44, goto 0x80001d44
       0     5637        M 0x80001d44 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     5638        M 0x80001d48 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     5639        M 0x80001d4c bnez    s10, pc - 40           #; s10 = 0, not taken
       0     5651        M 0x80001d50 j       pc + 0x8               #; goto 0x80001d58
       0     5652        M 0x80001d58 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     5653        M 0x80001d5c sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     5664        M 0x80001d60 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     5665        M 0x80001d64 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     5666        M 0x80001d68 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     5667        M 0x80001d6c bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001d9c
       0     5687        M 0x80001d9c mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     5699        M 0x80001da0 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     5702        M 0x80001da4 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     5703        M 0x80001da8 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0     5704        M 0x80001dac fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
       0     5705        M                                           #; (f:lsu) fs0  <-- 0.0000000
       0     5711        M 0x80001db0 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
       0     5714        M                                           #; (lsu) s10 <-- 0x80002d3e
       0     5715        M 0x80001db4 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     5718        M                                           #; (lsu) s9  <-- 8
       0     5719        M 0x80001db8 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     5722        M                                           #; (lsu) s8  <-- 16
       0     5723        M 0x80001dbc lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     5726        M                                           #; (lsu) s7  <-- 0
       0     5727        M 0x80001dc0 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     5730        M                                           #; (lsu) s6  <-- 0
       0     5731        M 0x80001dc4 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     5734        M                                           #; (lsu) s5  <-- -1
       0     5735        M 0x80001dc8 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     5738        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     5739        M 0x80001dcc lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     5742        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     5743        M 0x80001dd0 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     5746        M                                           #; (lsu) s2  <-- 0x80001658
       0     5747        M 0x80001dd4 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     5750        M                                           #; (lsu) s1  <-- 8
       0     5751        M 0x80001dd8 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     5754        M                                           #; (lsu) s0  <-- 0
       0     5755        M 0x80001ddc lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     5756        M 0x80001de0 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     5758        M                                           #; (lsu) ra  <-- 0x80000d88
       0     5759        M 0x80001de4 ret                            #; ra  = 0x80000d88, goto 0x80000d88
       0     5770        M 0x80000d88 j       pc + 0x7c0             #; goto 0x80001548
       0     5773        M 0x80001548 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     5774        M 0x8000154c li      s6, 37                 #; (wrb) s6  <-- 37
       0     5785        M 0x80001550 li      s7, 46                 #; (wrb) s7  <-- 46
       0     5786        M 0x80001554 addi    s0, s10, 1             #; s10 = 0x80002d3e, (wrb) s0  <-- 0x80002d3f
       0     5787        M 0x80001558 j       pc - 0xa74             #; goto 0x80000ae4
       0     5788        M 0x80000ae4 addi    s10, s0, 2             #; s0  = 0x80002d3f, (wrb) s10 <-- 0x80002d41
       0     5789        M 0x80000ae8 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     5790        M 0x80000aec li      s8, 10                 #; (wrb) s8  <-- 10
       0     5791        M 0x80000af0 lbu     a0, 0(s0)              #; s0  = 0x80002d3f, a0  <~~ Byte[0x80002d3f]
       0     5802        M                                           #; (lsu) a0  <-- 10
       0     5803        M 0x80000af4 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     5804        M 0x80000af8 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     5805        M 0x80000afc addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     5806        M 0x80000b00 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5807        M 0x80000b04 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     5808        M 0x80000b08 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5809        M 0x80000b0c jalr    s2                     #; s2  = 0x80001658, (wrb) ra  <-- 0x80000b10, goto 0x80001658
       0     5812        M 0x80001658 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     5813        M 0x8000165c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5815        M 0x80001660 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5816        M 0x80001664 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5817        M 0x80001668 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003668
       0     5818        M 0x8000166c addi    a3, a3, -1468          #; a3  = 0x80003668, (wrb) a3  <-- 0x800030ac
       0     5819        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5820        M 0x80001670 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     5821        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5832        M                                           #; (lsu) a4  <-- 16
       0     5833        M 0x80001678 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     5834        M 0x8000167c sw      a5, 0(a1)              #; a1  = 0x800030ac, 17 ~~> Word[0x800030ac]
       0     5835        M 0x80001680 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 16, (wrb) a4  <-- 0x800030bc
       0     5836        M 0x80001684 sb      a0, 72(a4)             #; a4  = 0x800030bc, 10 ~~> Byte[0x80003104]
       0     5837        M 0x80001688 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5858        M                                           #; (lsu) a4  <-- 17
       0     5859        M 0x8000168c addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     5860        M 0x80001690 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     5861        M 0x80001694 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     5862        M 0x80001698 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     5863        M 0x8000169c and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     5864        M 0x800016a0 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     5865        M 0x800016a4 add     a0, a3, a2             #; a3  = 0x800030ac, a2  = 0, (wrb) a0  <-- 0x800030ac
       0     5866        M 0x800016a8 addi    a2, a0, 72             #; a0  = 0x800030ac, (wrb) a2  <-- 0x800030f4
       0     5867        M 0x800016ac sw      zero, 12(a0)           #; a0  = 0x800030ac, 0 ~~> Word[0x800030b8]
       0     5868        M 0x800016b0 li      a3, 64                 #; (wrb) a3  <-- 64
       0     5869        M 0x800016b4 sw      a3, 8(a0)              #; a0  = 0x800030ac, 64 ~~> Word[0x800030b4]
       0     5870        M 0x800016b8 sw      zero, 20(a0)           #; a0  = 0x800030ac, 0 ~~> Word[0x800030c0]
       0     5871        M 0x800016bc li      a3, 1                  #; (wrb) a3  <-- 1
       0     5880        M 0x800016c0 sw      a3, 16(a0)             #; a0  = 0x800030ac, 1 ~~> Word[0x800030bc]
       0     5881        M 0x800016c4 sw      zero, 28(a0)           #; a0  = 0x800030ac, 0 ~~> Word[0x800030c8]
       0     5883        M 0x800016c8 sw      a2, 24(a0)             #; a0  = 0x800030ac, 0x800030f4 ~~> Word[0x800030c4]
       0     5893        M 0x800016cc lw      a2, 0(a1)              #; a1  = 0x800030ac, a2  <~~ Word[0x800030ac]
       0     5894        M 0x800016d0 addi    a3, a0, 8              #; a0  = 0x800030ac, (wrb) a3  <-- 0x800030b4
       0     5895        M 0x800016d4 sw      zero, 36(a0)           #; a0  = 0x800030ac, 0 ~~> Word[0x800030d0]
       0     5915        M                                           #; (lsu) a2  <-- 17
       0     5916        M 0x800016d8 sw      a2, 32(a0)             #; a0  = 0x800030ac, 17 ~~> Word[0x800030cc]
       0     5917        M 0x800016dc auipc   a0, 0x2                #; (wrb) a0  <-- 0x800036dc
       0     5918        M 0x800016e0 addi    a0, a0, -1884          #; a0  = 0x800036dc, (wrb) a0  <-- 0x80002f80
       0     5919        M 0x800016e4 sw      a3, 0(a0)              #; a0  = 0x80002f80, 0x800030b4 ~~> Word[0x80002f80]
       0     5920        M 0x800016e8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800036e8
       0     5921        M 0x800016ec addi    a0, a0, -1832          #; a0  = 0x800036e8, (wrb) a0  <-- 0x80002fc0
       0     5930        M 0x800016f0 lw      a2, 0(a0)              #; a0  = 0x80002fc0, a2  <~~ Word[0x80002fc0]
       0     5945        M                                           #; (lsu) a2  <-- 0
       0     5946        M 0x800016f4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800016f0
       0     5947        M 0x800016f0 lw      a2, 0(a0)              #; a0  = 0x80002fc0, a2  <~~ Word[0x80002fc0]
       0     5958        M                                           #; (lsu) a2  <-- 0
       0     5959        M 0x800016f4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800016f0
       0     5960        M 0x800016f0 lw      a2, 0(a0)              #; a0  = 0x80002fc0, a2  <~~ Word[0x80002fc0]
       0     5971        M                                           #; (lsu) a2  <-- 0
       0     5972        M 0x800016f4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800016f0
       0     5973        M 0x800016f0 lw      a2, 0(a0)              #; a0  = 0x80002fc0, a2  <~~ Word[0x80002fc0]
       0     5984        M                                           #; (lsu) a2  <-- 0
       0     5985        M 0x800016f4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800016f0
       0     5986        M 0x800016f0 lw      a2, 0(a0)              #; a0  = 0x80002fc0, a2  <~~ Word[0x80002fc0]
       0     5997        M                                           #; (lsu) a2  <-- 0
       0     5998        M 0x800016f4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800016f0
       0     5999        M 0x800016f0 lw      a2, 0(a0)              #; a0  = 0x80002fc0, a2  <~~ Word[0x80002fc0]
       0     6010        M                                           #; (lsu) a2  <-- 1
       0     6011        M 0x800016f4 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     6012        M 0x800016f8 sw      zero, 0(a0)            #; a0  = 0x80002fc0, 0 ~~> Word[0x80002fc0]
       0     6013        M 0x800016fc sw      zero, 0(a1)            #; a1  = 0x800030ac, 0 ~~> Word[0x800030ac]
       0     6015        M 0x80001700 ret                            #; ra  = 0x80000b10, goto 0x80000b10
       0     6020        M 0x80000b10 addi    s0, s0, 1              #; s0  = 0x80002d3f, (wrb) s0  <-- 0x80002d40
       0     6021        M 0x80000b14 addi    s10, s10, 1            #; s10 = 0x80002d41, (wrb) s10 <-- 0x80002d42
       0     6022        M 0x80000b18 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     6023        M 0x80000b1c lbu     a0, 0(s0)              #; s0  = 0x80002d40, a0  <~~ Byte[0x80002d40]
       0     6035        M                                           #; (lsu) a0  <-- 0
       0     6036        M 0x80000b20 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     6037        M 0x80000b24 j       pc + 0xad8             #; goto 0x800015fc
       0     6049        M 0x800015fc mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     6061        M 0x80001600 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001608
       0     6062        M 0x80001608 li      a0, 0                  #; (wrb) a0  <-- 0
       0     6063        M 0x8000160c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6073        M 0x80001610 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6074        M 0x80001614 jalr    s2                     #; s2  = 0x80001658, (wrb) ra  <-- 0x80001618, goto 0x80001658
       0     6087        M 0x80001658 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001700
       0     6092        M 0x80001700 ret                            #; ra  = 0x80001618, goto 0x80001618
       0     6093        M 0x80001618 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     6094        M 0x8000161c lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     6097        M                                           #; (lsu) s11 <-- 0
       0     6098        M 0x80001620 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     6101        M                                           #; (lsu) s10 <-- 0
       0     6102        M 0x80001624 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     6105        M                                           #; (lsu) s9  <-- 0
       0     6106        M 0x80001628 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     6109        M                                           #; (lsu) s8  <-- 0
       0     6110        M 0x8000162c lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     6113        M                                           #; (lsu) s7  <-- 0
       0     6114        M 0x80001630 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     6117        M                                           #; (lsu) s6  <-- 0
       0     6118        M 0x80001634 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     6121        M                                           #; (lsu) s5  <-- 0
       0     6122        M 0x80001638 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     6125        M                                           #; (lsu) s4  <-- 0
       0     6126        M 0x8000163c lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     6129        M                                           #; (lsu) s3  <-- 0
       0     6130        M 0x80001640 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     6133        M                                           #; (lsu) s2  <-- 0
       0     6134        M 0x80001644 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     6137        M                                           #; (lsu) s1  <-- 0
       0     6138        M 0x80001648 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     6141        M                                           #; (lsu) s0  <-- 0
       0     6142        M 0x8000164c lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     6143        M 0x80001650 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     6145        M                                           #; (lsu) ra  <-- 0x80000a54
       0     6146        M 0x80001654 ret                            #; ra  = 0x80000a54, goto 0x80000a54
       0     6149        M 0x80000a54 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     6150        M 0x80000a58 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     6152        M                                           #; (lsu) ra  <-- 0x800009e4
       0     6153        M 0x80000a5c ret                            #; ra  = 0x800009e4, goto 0x800009e4
       0     6156        M 0x800009e4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800029e4
       0     6157        M 0x800009e8 addi    a0, a0, 1556           #; a0  = 0x800029e4, (wrb) a0  <-- 0x80002ff8
       0     6160        M 0x800009ec fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002ff8]
       0     6161        M 0x800009f8 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
       0     6162        M 0x800009fc addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
       0     6169        M                                           #; (f:lsu) ft3  <-- 0.0001
       0     6170        M 0x800009f0 flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0000000
       0     6171        M                                           #; (lsu) ra  <-- 0x80002ab0
       0     6172        M 0x80000a00 ret                            #; ra  = 0x80002ab0, goto 0x80002ab0
                         M 0x800009f4 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
       0     6173        M                                           #; (f:lsu) fs0  <-- 0.0
       0     6184        M 0x80002ab0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     6185        M 0x80002ab4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ab4
       0     6186        M 0x80002ab8 jalr    ra, ra, 524            #; ra  = 0x80002ab4, (wrb) ra  <-- 0x80002abc, goto 0x80002cc0
       0     6198        M 0x80002cc0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     6199        M 0x80002cc4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002abc ~~> Word[0x0011ff5c]
       0     6200        M 0x80002cc8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002cc8
       0     6201        M 0x80002ccc jalr    ra, ra, -1256          #; ra  = 0x80002cc8, (wrb) ra  <-- 0x80002cd0, goto 0x800027e0
       0     6204        M 0x800027e0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     6205        M 0x800027e4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     6206        M 0x800027e8 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     6209        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6210        M 0x800027ec lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     6213        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6214        M 0x800027f0 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     6215        M 0x800027f4 ret                            #; ra  = 0x80002cd0, goto 0x80002cd0
       0     6217        M                                           #; (lsu) a0  <-- 0x00120190
       0     6218        M 0x80002cd0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     6228        M                                           #; (lsu) a0  <-- 0
       0     6229        M 0x80002cd4 mv      zero, a0               #; a0  = 0
       0     6230        M 0x80002cd8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     6231        M 0x80002cdc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     6233        M                                           #; (lsu) ra  <-- 0x80002abc
       0     6234        M 0x80002ce0 ret                            #; ra  = 0x80002abc, goto 0x80002abc
       0     6248        M 0x80002abc mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     6252        M 0x80002ac0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ac0
       0     6253        M 0x80002ac4 jalr    ra, ra, 556            #; ra  = 0x80002ac0, (wrb) ra  <-- 0x80002ac8, goto 0x80002cec
       0     6254        M 0x80002cec addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     6255        M 0x80002cf0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     6256        M 0x80002cf4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002ac8 ~~> Word[0x0011ff5c]
       0     6257        M 0x80002cf8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002cf8
       0     6258        M 0x80002cfc jalr    ra, ra, -1336          #; ra  = 0x80002cf8, (wrb) ra  <-- 0x80002d00, goto 0x800027c0
       0     6277        M 0x800027c0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     6278        M 0x800027c4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     6279        M 0x800027c8 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     6282        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6283        M 0x800027cc lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     6286        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6289        M 0x800027d0 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     6290        M 0x800027d4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6292        M                                           #; (lsu) a0  <-- 0
       0     6293        M 0x800027d8 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     6294        M 0x800027dc ret                            #; ra  = 0x80002d00, goto 0x80002d00
       0     6295        M 0x80002d00 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     6298        M                                           #; (lsu) t0  <-- 0
       0     6299        M 0x80002d04 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     6300        M 0x80002d08 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     6301        M 0x80002d0c bnez    a0, pc + 24            #; a0  = 0, not taken
       0     6302        M                                           #; (lsu) ra  <-- 0x80002ac8
       0     6307        M 0x80002d10 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     6308        M 0x80002d14 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     6309        M 0x80002d18 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002d18
       0     6310        M 0x80002d1c addi    t1, t1, 616            #; t1  = 0x80002d18, (wrb) t1  <-- 0x80002f80
       0     6318        M 0x80002d20 sw      t0, 0(t1)              #; t1  = 0x80002f80, 1 ~~> Word[0x80002f80]
       0     6319        M 0x80002d24 ret                            #; ra  = 0x80002ac8, goto 0x80002ac8
       0     6320        M 0x80002ac8 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 6320):
snitch_loads                                   139
snitch_stores                                  142
fpss_stores                                      5
fpss_loads                                      29
snitch_avg_load_latency                    11.7482
snitch_occupancy                            0.2901
snitch_fseq_rel_offloads                    0.1227
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        1.9766
fpss_avg_load_latency                       4.0690
fpss_occupancy                              0.0406
fpss_fpu_occupancy                          0.0339
fpss_fpu_rel_occupancy                      0.8359
cycles                                        6309
total_ipc                                   0.3306
