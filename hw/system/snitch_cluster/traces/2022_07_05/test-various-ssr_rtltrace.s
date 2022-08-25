       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x800028b0
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x800028b0, (wrb) ra  <-- 4120, goto 0x800028b0
       0      269        M 0x800028b0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x800038b0
       0      270        M 0x800028b4 addi    gp, gp, -232           #; gp  = 0x800038b0, (wrb) gp  <-- 0x800037c8
       0      271        M 0x800028b8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800028b8
       0      272        M 0x800028bc jalr    ra, ra, 964            #; ra  = 0x800028b8, (wrb) ra  <-- 0x800028c0, goto 0x80002c7c
       0      292        M 0x80002c7c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002c80 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002c84 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002c88 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80002c8c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80002c90 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80002c94 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80002c98 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80002c9c mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80002ca0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80002ca4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80002ca8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80002cac ret                            #; ra  = 0x800028c0, goto 0x800028c0
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x800028c0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x800028c4 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x800028c8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800028c8
       0      508        M 0x800028cc jalr    ra, ra, 1036           #; ra  = 0x800028c8, (wrb) ra  <-- 0x800028d0, goto 0x80002cd4
       0      523        M 0x80002cd4 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80002cd8 ret                            #; ra  = 0x800028d0, goto 0x800028d0
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x800028d0 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x800028d4 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x800028d8 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x800028dc sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x800028e0 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x800028e4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800028e4
       0      551        M 0x800028e8 addi    t0, t0, 1988           #; t0  = 0x800028e4, (wrb) t0  <-- 0x800030a8
       0      552        M 0x800028ec auipc   t1, 0x0                #; (wrb) t1  <-- 0x800028ec
       0      562        M 0x800028f0 addi    t1, t1, 1984           #; t1  = 0x800028ec, (wrb) t1  <-- 0x800030ac
       0      563        M 0x800028f4 bge     t0, t1, pc + 16        #; t0  = 0x800030a8, t1  = 0x800030ac, not taken
       0      564        M 0x800028f8 sw      zero, 0(t0)            #; t0  = 0x800030a8, 0 ~~> Word[0x800030a8]
       0      565        M 0x800028fc addi    t0, t0, 4              #; t0  = 0x800030a8, (wrb) t0  <-- 0x800030ac
       0      573        M 0x80002900 blt     t0, t1, pc - 8         #; t0  = 0x800030ac, t1  = 0x800030ac, not taken
       0      574        M 0x80002904 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80002908 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x8000290c beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80002910 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80002914 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80002918 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x8000291c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80002920 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80002924 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80002928 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x8000292c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80002930 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80002934 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80002938 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x8000293c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80002940 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80002944 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80002948 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x8000294c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80002950 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80002954 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80002958 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x8000295c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80002960 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80002964 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80002968 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x8000296c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x80002970 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x80002974 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x80002978 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x8000297c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x80002980 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x80002984 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x80002988 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x8000298c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x80002990 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x80002994 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x80002998 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002998
       0      684        M 0x8000299c lw      t0, 896(t0)            #; t0  = 0x80002998, t0  <~~ Word[0x80002d18]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x800029a0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x800029a4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x800029a8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800029a8
       0      708        M 0x800029ac lw      t2, 884(t2)            #; t2  = 0x800029a8, t2  <~~ Word[0x80002d1c]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x800029b0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x800029b4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x800029b8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x800029bc sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x800029c0 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x800029c4 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x800029c8 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x800029cc sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x800029d0 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800029d0
       0      762        M 0x800029d4 addi    t0, t0, 1528           #; t0  = 0x800029d0, (wrb) t0  <-- 0x80002fc8
       0      763        M 0x800029d8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800029d8
       0      764        M 0x800029dc addi    t1, t1, 1520           #; t1  = 0x800029d8, (wrb) t1  <-- 0x80002fc8
       0      775        M 0x800029e0 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800029e0
       0      776        M 0x800029e4 addi    t2, t2, 1512           #; t2  = 0x800029e0, (wrb) t2  <-- 0x80002fc8
       0      777        M 0x800029e8 auipc   t3, 0x0                #; (wrb) t3  <-- 0x800029e8
       0      778        M 0x800029ec addi    t3, t3, 1520           #; t3  = 0x800029e8, (wrb) t3  <-- 0x80002fd8
       0      787        M 0x800029f0 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002fc8, (wrb) sp  <-- 0x80122f38
       0      788        M 0x800029f4 sub     sp, sp, t1             #; sp  = 0x80122f38, t1  = 0x80002fc8, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x800029f8 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002fc8, (wrb) sp  <-- 0x80122f38
       0      790        M 0x800029fc sub     sp, sp, t3             #; sp  = 0x80122f38, t3  = 0x80002fd8, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80002a00 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80002a04 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80002a08 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x80002a0c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80002a10 bge     t0, t1, pc + 24        #; t0  = 0x80002fc8, t1  = 0x80002fc8, taken, goto 0x80002a28
       0      823        M 0x80002a28 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a28
       0      824        M 0x80002a2c addi    t0, t0, 1440           #; t0  = 0x80002a28, (wrb) t0  <-- 0x80002fc8
       0      835        M 0x80002a30 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002a30
       0      836        M 0x80002a34 addi    t1, t1, 1448           #; t1  = 0x80002a30, (wrb) t1  <-- 0x80002fd8
       0      837        M 0x80002a38 bge     t0, t1, pc + 20        #; t0  = 0x80002fc8, t1  = 0x80002fd8, not taken
       0      838        M 0x80002a3c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002a40 addi    t0, t0, 4              #; t0  = 0x80002fc8, (wrb) t0  <-- 0x80002fcc
       0      848        M 0x80002a44 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002a48 blt     t0, t2, pc - 12        #; t0  = 0x80002fcc, t2  = 0x80002fc8, not taken
       0      850        M 0x80002a4c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80002a50 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80002a54 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80002a58 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x80002a5c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80002a60 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80002a64 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a64
       0      877        M 0x80002a68 jalr    ra, ra, -804           #; ra  = 0x80002a64, (wrb) ra  <-- 0x80002a6c, goto 0x80002740
       0      898        M 0x80002740 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      899        M 0x80002744 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      901        M 0x80002748 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      923        M                                           #; (lsu) t1  <-- 0
       0      924        M 0x8000274c sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      925        M 0x80002750 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      963        M                                           #; (lsu) a6  <-- 1
       0      964        M 0x80002754 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1003        M                                           #; (lsu) a7  <-- 1
       0     1004        M 0x80002758 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1005        M 0x8000275c mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1008        M                                           #; (acc) a0  <-- 0x02580533
       0     1043        M                                           #; (lsu) t0  <-- 8
       0     1044        M 0x80002760 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1047        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1048        M 0x80002764 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1049        M 0x80002768 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1050        M 0x8000276c sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1051        M 0x80002770 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1055        M 0x80002774 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1056        M 0x80002778 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1057        M 0x8000277c sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1063        M 0x80002780 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1064        M 0x80002784 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1065        M 0x80002788 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1083        M                                           #; (lsu) a0  <-- 0x80000000
       0     1084        M 0x8000278c add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1085        M 0x80002790 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1086        M 0x80002794 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1087        M 0x80002798 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1123        M                                           #; (lsu) a0  <-- 0
       0     1124        M 0x8000279c lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1125        M 0x800027a0 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1163        M                                           #; (lsu) a1  <-- 1
       0     1164        M 0x800027a4 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1165        M 0x800027a8 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1166        M 0x800027ac sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1167        M 0x800027b0 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1168        M 0x800027b4 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1169        M 0x800027b8 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1190        M                                           #; (lsu) a0  <-- 0x00020000
       0     1191        M 0x800027bc add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1192        M 0x800027c0 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1193        M 0x800027c4 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1194        M 0x800027c8 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1195        M 0x800027cc srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1205        M 0x800027d0 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1206        M 0x800027d4 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1207        M 0x800027d8 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1208        M 0x800027dc sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1219        M 0x800027e0 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1220        M 0x800027e4 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1221        M 0x800027e8 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1222        M 0x800027ec sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1231        M 0x800027f0 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1232        M 0x800027f4 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1234        M 0x800027f8 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1238        M 0x800027fc sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1243        M 0x80002800 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1244        M 0x80002804 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1245        M 0x80002808 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1246        M 0x8000280c lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1250        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1255        M 0x80002810 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1259        M                                           #; (lsu) a1  <-- 0
       0     1260        M 0x80002814 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1261        M 0x80002818 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1263        M                                           #; (lsu) a0  <-- 8
       0     1264        M 0x8000281c remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1267        M 0x80002820 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1268        M 0x80002824 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1269        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1270        M 0x80002828 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1271        M 0x8000282c li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1279        M 0x80002830 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1280        M 0x80002834 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003834
       0     1281        M 0x80002838 addi    a1, a1, -1928          #; a1  = 0x80003834, (wrb) a1  <-- 0x800030ac
       0     1283        M                                           #; (acc) a0  <-- 0x00b50533
       0     1284        M 0x8000283c add     a0, a0, a1             #; a0  = 0, a1  = 0x800030ac, (wrb) a0  <-- 0x800030ac
       0     1291        M 0x80002840 sw      zero, 0(a0)            #; a0  = 0x800030ac, 0 ~~> Word[0x800030ac]
       0     1292        M 0x80002844 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1362        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1363        M 0x80002848 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1364        M 0x8000284c sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1365        M 0x80002850 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1366        M 0x80002854 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1367        M 0x80002858 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1368        M 0x8000285c addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1369        M 0x80002860 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1370        M 0x80002864 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1371        M 0x80002868 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1372        M 0x8000286c sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1373        M 0x80002870 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1374        M 0x80002874 lw      a0, 0(a1)              #; a1  = 0x800030ac, a0  <~~ Word[0x800030ac]
       0     1385        M                                           #; (lsu) a0  <-- 0
       0     1386        M 0x80002878 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1387        M 0x8000287c andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1388        M 0x80002880 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1389        M 0x80002884 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1390        M 0x80002888 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1391        M 0x8000288c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1392        M 0x80002890 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1393        M 0x80002894 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1394        M 0x80002898 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1395        M 0x8000289c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1400        M 0x800028a0 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1401        M 0x800028a4 ret                            #; ra  = 0x80002a6c, goto 0x80002a6c
       0     1408        M 0x80002a6c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1411        M                                           #; (lsu) a0  <-- 0
       0     1412        M 0x80002a70 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1415        M                                           #; (lsu) a1  <-- 8
       0     1416        M 0x80002a74 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1419        M                                           #; (lsu) a2  <-- 0x00100000
       0     1420        M 0x80002a78 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1423        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1424        M 0x80002a7c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1425        M 0x80002a80 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1426        M 0x80002a84 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a84
       0     1427        M 0x80002a88 addi    t0, t0, 60             #; t0  = 0x80002a84, (wrb) t0  <-- 0x80002ac0
       0     1428        M 0x80002a8c csrw    mtvec, t0              #; t0  = 0x80002ac0, (lsu) a4  <-- 4132
       0     1435        M 0x80002a90 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a90
       0     1436        M 0x80002a94 jalr    ra, ra, 544            #; ra  = 0x80002a90, (wrb) ra  <-- 0x80002a98, goto 0x80002cb0
       0     1450        M 0x80002cb0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1451        M 0x80002cb4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002a98 ~~> Word[0x0011ff5c]
       0     1452        M 0x80002cb8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000cb8
       0     1453        M 0x80002cbc jalr    ra, ra, -1600          #; ra  = 0x80000cb8, (wrb) ra  <-- 0x80002cc0, goto 0x80000678
       0     1473        M 0x80000678 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1474        M 0x8000067c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1485        M 0x80000680 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1488        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1489        M 0x80000684 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1493        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1494        M 0x80000688 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1495        M 0x8000068c ret                            #; ra  = 0x80002cc0, goto 0x80002cc0
       0     1497        M                                           #; (lsu) a0  <-- 0x00120190
       0     1498        M 0x80002cc0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1527        M                                           #; (lsu) a0  <-- 0
       0     1528        M 0x80002cc4 mv      zero, a0               #; a0  = 0
       0     1529        M 0x80002cc8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1530        M 0x80002ccc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1532        M                                           #; (lsu) ra  <-- 0x80002a98
       0     1533        M 0x80002cd0 ret                            #; ra  = 0x80002a98, goto 0x80002a98
       0     1537        M 0x80002a98 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000a98
       0     1538        M 0x80002a9c jalr    ra, ra, -1124          #; ra  = 0x80000a98, (wrb) ra  <-- 0x80002aa0, goto 0x80000634
       0     1543        M 0x80000634 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1544        M 0x80000638 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1545        M 0x8000063c lw      a0, 4(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff64]
       0     1548        M                                           #; (lsu) a0  <-- 0
       0     1549        M 0x80000640 beqz    a0, pc + 12            #; a0  = 0, taken, goto 0x8000064c
       0     1550        M 0x8000064c li      a0, 25                 #; (wrb) a0  <-- 25
       0     1559        M 0x80000650 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80000650
       0     1560        M 0x80000654 jalr    zero, t1, 64           #; t1  = 0x80000650, goto 0x80000690
       0     1577        M 0x80000690 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1578        M 0x80000694 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002aa0 ~~> Word[0x0011ff5c]
       0     1580        M 0x8000069c lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1581        M 0x80000698 fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
       0     1589        M 0x800006a0 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1590        M 0x800006a4 lw      a1, 0(a1)              #; a1  = 0x0011ff60, a1  <~~ Word[0x0011ff60]
       0     1593        M                                           #; (lsu) a1  <-- 0x0011ff70
       0     1594        M 0x800006a8 lw      a3, 0(a1)              #; a1  = 0x0011ff70, a3  <~~ Word[0x0011ff70]
       0     1597        M                                           #; (lsu) a3  <-- 0x0011ff70
       0     1598        M 0x800006ac lw      t1, 88(a3)             #; a3  = 0x0011ff70, t1  <~~ Word[0x0011ffc8]
       0     1601        M                                           #; (lsu) t1  <-- 0x00100000
       0     1602        M 0x800006b0 lw      a5, 80(a3)             #; a3  = 0x0011ff70, a5  <~~ Word[0x0011ffc0]
       0     1605        M                                           #; (lsu) a5  <-- 0x00100000
       0     1606        M 0x800006b4 lw      a2, 84(a3)             #; a3  = 0x0011ff70, a2  <~~ Word[0x0011ffc4]
       0     1607        M 0x800006b8 slli    a6, a0, 3              #; a0  = 25, (wrb) a6  <-- 200
       0     1608        M 0x800006bc add     a4, t1, a6             #; t1  = 0x00100000, a6  = 200, (wrb) a4  <-- 0x001000c8
       0     1609        M                                           #; (lsu) a2  <-- 0x0001df30
       0     1613        M 0x800006c0 add     a2, a2, a5             #; a2  = 0x0001df30, a5  = 0x00100000, (wrb) a2  <-- 0x0011df30
       0     1614        M 0x800006c4 bgeu    a2, a4, pc + 36        #; a2  = 0x0011df30, a4  = 0x001000c8, taken, goto 0x800006e8
       0     1636        M 0x800006e8 sw      a4, 88(a3)             #; a3  = 0x0011ff70, 0x001000c8 ~~> Word[0x0011ffc8]
       0     1637        M 0x800006ec li      a2, 1                  #; (wrb) a2  <-- 1
       0     1648        M 0x800006f0 blt     a0, a2, pc - 28        #; a0  = 25, a2  = 1, not taken
       0     1649        M 0x800006f4 add     a2, a6, t1             #; a6  = 200, t1  = 0x00100000, (wrb) a2  <-- 0x001000c8
       0     1650        M 0x800006f8 addi    a2, a2, -8             #; a2  = 0x001000c8, (wrb) a2  <-- 0x001000c0
       0     1651        M 0x800006fc srli    a3, t1, 20             #; t1  = 0x00100000, (wrb) a3  <-- 1
       0     1661        M 0x80000700 snez    a6, a3                 #; a3  = 1, (wrb) a6  <-- 1
       0     1662        M 0x80000704 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
       0     1663        M 0x80000708 addi    a3, a3, 1              #; a3  = 0x00120000, (wrb) a3  <-- 0x00120001
       0     1664        M 0x8000070c sltu    a2, a2, a3             #; a2  = 0x001000c0, a3  = 0x00120001, (wrb) a2  <-- 1
       0     1673        M 0x80000710 and     a7, a6, a2             #; a6  = 1, a2  = 1, (wrb) a7  <-- 1
       0     1674        M 0x80000714 beqz    a7, pc + 136           #; a7  = 1, not taken
       0     1675        M 0x80000718 li      a4, 0                  #; (wrb) a4  <-- 0
       0     1676        M 0x8000071c addi    a2, a0, -1             #; a0  = 25, (wrb) a2  <-- 24
       0     1685        M 0x80000720 li      a3, 8                  #; (wrb) a3  <-- 8
       0     1686        M 0x80000724 li      a5, 64                 #; (wrb) a5  <-- 64
       0     1687        M 0x80000728 scfgw   a2, a5                 #; a2  = 24, a5  = 64
       0     1688        M 0x8000072c li      a2, 192                #; (wrb) a2  <-- 192
       0     1697        M 0x80000730 scfgw   a3, a2                 #; a3  = 8, a2  = 192
       0     1698        M 0x80000734 li      a2, 32                 #; (wrb) a2  <-- 32
       0     1699        M 0x80000738 scfgw   zero, a2               #; a2  = 32
       0     1700        M 0x8000073c scfgwi  t1, 896                #; t1  = 0x00100000
       0     1709        M 0x80000740 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003740
       0     1710        M 0x80000744 addi    a2, a2, -1896          #; a2  = 0x80003740, (wrb) a2  <-- 0x80002fd8
       0     1713        M 0x80000748 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x80002fd8]
       0     1714        M 0x8000074c csrrsi  a2, ssr, 1             #; 
       0     1721        M 0x80000750 lui     a2, 0x8421             #; (wrb) a2  <-- 0x08421000
       0     1722        M 0x80000754 addi    a5, a2, 133            #; a2  = 0x08421000, (wrb) a5  <-- 0x08421085
                         M                                           #; (f:lsu) ft3  <-- 1.4142
       0     1723        M 0x80000758 mv      a3, a0                 #; a0  = 25, (wrb) a3  <-- 25
       0     1724        M 0x8000075c mulhu   a1, a4, a5             #; a4  = 0, a5  = 0x08421085
       0     1733        M 0x80000760 sub     a2, a4, a1             #; a4  = 0, a1  = 0, (wrb) a2  <-- 0
       0     1734        M 0x80000764 srli    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 0
       0     1735        M 0x80000768 add     a1, a2, a1             #; a2  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1736        M 0x8000076c srli    a1, a1, 4              #; a1  = 0, (wrb) a1  <-- 0
       0     1745        M 0x80000770 slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     1746        M 0x80000774 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1747        M 0x80000778 add     a1, a4, a1             #; a4  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1749        M 0x8000077c fcvt.d.w ft4, a1               #; ac1  = 0
       0     1750        M                                           #; (f:fpu) ft4  <-- 0.0
       0     1759        M 0x80000788 addi    a3, a3, -1             #; a3  = 25, (wrb) a3  <-- 24
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 0.0, ft3  = 1.4142
       0     1760        M 0x8000078c addi    a4, a4, 1              #; a4  = 0, (wrb) a4  <-- 1
       0     1762        M                                           #; (f:fpu) ft4  <-- 0.0
       0     1763        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 0.0, ft4  = 0.0
       0     1764        M                                           #; (f:fpu) ft0  <-- 0.0
       0     1769        M 0x80000790 bnez    a3, pc - 52            #; a3  = 24, taken, goto 0x8000075c
       0     1770        M 0x8000075c mulhu   a1, a4, a5             #; a4  = 1, a5  = 0x08421085
       0     1773        M                                           #; (acc) a2  <-- 0x40b70633
       0     1774        M 0x80000760 sub     a2, a4, a1             #; a4  = 1, a1  = 0, (wrb) a2  <-- 1
       0     1775        M 0x80000764 srli    a2, a2, 1              #; a2  = 1, (wrb) a2  <-- 0
       0     1776        M 0x80000768 add     a1, a2, a1             #; a2  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1777        M 0x8000076c srli    a1, a1, 4              #; a1  = 0, (wrb) a1  <-- 0
       0     1778        M 0x80000770 slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     1779        M 0x80000774 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1780        M 0x80000778 add     a1, a4, a1             #; a4  = 1, a1  = 0, (wrb) a1  <-- 1
       0     1782        M 0x8000077c fcvt.d.w ft4, a1               #; ac1  = 1
       0     1783        M                                           #; (f:fpu) ft4  <-- 1.0
       0     1784        M 0x80000788 addi    a3, a3, -1             #; a3  = 24, (wrb) a3  <-- 23
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 1.4142
       0     1785        M 0x8000078c addi    a4, a4, 1              #; a4  = 1, (wrb) a4  <-- 2
       0     1786        M 0x80000790 bnez    a3, pc - 52            #; a3  = 23, taken, goto 0x8000075c
       0     1787        M 0x8000075c mulhu   a1, a4, a5             #; a4  = 2, a5  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 1.4142
       0     1788        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 1.4142, ft4  = 1.4142
       0     1789        M                                           #; (f:fpu) ft0  <-- 1.4142
       0     1790        M                                           #; (acc) a2  <-- 0x40b70633
       0     1791        M 0x80000760 sub     a2, a4, a1             #; a4  = 2, a1  = 0, (wrb) a2  <-- 2
       0     1792        M 0x80000764 srli    a2, a2, 1              #; a2  = 2, (wrb) a2  <-- 1
       0     1793        M 0x80000768 add     a1, a2, a1             #; a2  = 1, a1  = 0, (wrb) a1  <-- 1
       0     1794        M 0x8000076c srli    a1, a1, 4              #; a1  = 1, (wrb) a1  <-- 0
       0     1795        M 0x80000770 slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     1796        M 0x80000774 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1797        M 0x80000778 add     a1, a4, a1             #; a4  = 2, a1  = 0, (wrb) a1  <-- 2
       0     1799        M 0x8000077c fcvt.d.w ft4, a1               #; ac1  = 2
       0     1800        M                                           #; (f:fpu) ft4  <-- 2.0
       0     1801        M 0x80000788 addi    a3, a3, -1             #; a3  = 23, (wrb) a3  <-- 22
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 1.4142
       0     1802        M 0x8000078c addi    a4, a4, 1              #; a4  = 2, (wrb) a4  <-- 3
       0     1803        M 0x80000790 bnez    a3, pc - 52            #; a3  = 22, taken, goto 0x8000075c
       0     1804        M 0x8000075c mulhu   a1, a4, a5             #; a4  = 3, a5  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 2.8284
       0     1805        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 2.8284, ft4  = 2.8284
       0     1806        M                                           #; (f:fpu) ft0  <-- 2.8284
       0     1807        M                                           #; (acc) a2  <-- 0x40b70633
       0     1808        M 0x80000760 sub     a2, a4, a1             #; a4  = 3, a1  = 0, (wrb) a2  <-- 3
       0     1809        M 0x80000764 srli    a2, a2, 1              #; a2  = 3, (wrb) a2  <-- 1
       0     1810        M 0x80000768 add     a1, a2, a1             #; a2  = 1, a1  = 0, (wrb) a1  <-- 1
       0     1811        M 0x8000076c srli    a1, a1, 4              #; a1  = 1, (wrb) a1  <-- 0
       0     1812        M 0x80000770 slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     1813        M 0x80000774 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1814        M 0x80000778 add     a1, a4, a1             #; a4  = 3, a1  = 0, (wrb) a1  <-- 3
       0     1816        M 0x8000077c fcvt.d.w ft4, a1               #; ac1  = 3
       0     1817        M                                           #; (f:fpu) ft4  <-- 3.0
       0     1818        M 0x80000788 addi    a3, a3, -1             #; a3  = 22, (wrb) a3  <-- 21
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 1.4142
       0     1819        M 0x8000078c addi    a4, a4, 1              #; a4  = 3, (wrb) a4  <-- 4
       0     1820        M 0x80000790 bnez    a3, pc - 52            #; a3  = 21, taken, goto 0x8000075c
       0     1821        M 0x8000075c mulhu   a1, a4, a5             #; a4  = 4, a5  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 4.2426000
       0     1822        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 4.2426000, ft4  = 4.2426000
       0     1823        M                                           #; (f:fpu) ft0  <-- 4.2426000
       0     1824        M                                           #; (acc) a2  <-- 0x40b70633
       0     1825        M 0x80000760 sub     a2, a4, a1             #; a4  = 4, a1  = 0, (wrb) a2  <-- 4
       0     1826        M 0x80000764 srli    a2, a2, 1              #; a2  = 4, (wrb) a2  <-- 2
       0     1827        M 0x80000768 add     a1, a2, a1             #; a2  = 2, a1  = 0, (wrb) a1  <-- 2
       0     1828        M 0x8000076c srli    a1, a1, 4              #; a1  = 2, (wrb) a1  <-- 0
       0     1829        M 0x80000770 slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     1830        M 0x80000774 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1831        M 0x80000778 add     a1, a4, a1             #; a4  = 4, a1  = 0, (wrb) a1  <-- 4
       0     1833        M 0x8000077c fcvt.d.w ft4, a1               #; ac1  = 4
       0     1834        M                                           #; (f:fpu) ft4  <-- 4.0
       0     1835        M 0x80000788 addi    a3, a3, -1             #; a3  = 21, (wrb) a3  <-- 20
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 1.4142
       0     1836        M 0x8000078c addi    a4, a4, 1              #; a4  = 4, (wrb) a4  <-- 5
       0     1837        M 0x80000790 bnez    a3, pc - 52            #; a3  = 20, taken, goto 0x8000075c
       0     1838        M 0x8000075c mulhu   a1, a4, a5             #; a4  = 5, a5  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 5.6568
       0     1839        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 5.6568, ft4  = 5.6568
       0     1840        M                                           #; (f:fpu) ft0  <-- 5.6568
       0     1841        M                                           #; (acc) a2  <-- 0x40b70633
       0     1842        M 0x80000760 sub     a2, a4, a1             #; a4  = 5, a1  = 0, (wrb) a2  <-- 5
       0     1843        M 0x80000764 srli    a2, a2, 1              #; a2  = 5, (wrb) a2  <-- 2
       0     1844        M 0x80000768 add     a1, a2, a1             #; a2  = 2, a1  = 0, (wrb) a1  <-- 2
       0     1845        M 0x8000076c srli    a1, a1, 4              #; a1  = 2, (wrb) a1  <-- 0
       0     1846        M 0x80000770 slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     1847        M 0x80000774 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1848        M 0x80000778 add     a1, a4, a1             #; a4  = 5, a1  = 0, (wrb) a1  <-- 5
       0     1850        M 0x8000077c fcvt.d.w ft4, a1               #; ac1  = 5
       0     1851        M                                           #; (f:fpu) ft4  <-- 5.0
       0     1852        M 0x80000788 addi    a3, a3, -1             #; a3  = 20, (wrb) a3  <-- 19
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 1.4142
       0     1853        M 0x8000078c addi    a4, a4, 1              #; a4  = 5, (wrb) a4  <-- 6
       0     1854        M 0x80000790 bnez    a3, pc - 52            #; a3  = 19, taken, goto 0x8000075c
       0     1855        M 0x8000075c mulhu   a1, a4, a5             #; a4  = 6, a5  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 7.071
       0     1856        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 7.071, ft4  = 7.071
       0     1857        M                                           #; (f:fpu) ft0  <-- 7.071
       0     1858        M                                           #; (acc) a2  <-- 0x40b70633
       0     1859        M 0x80000760 sub     a2, a4, a1             #; a4  = 6, a1  = 0, (wrb) a2  <-- 6
       0     1860        M 0x80000764 srli    a2, a2, 1              #; a2  = 6, (wrb) a2  <-- 3
       0     1861        M 0x80000768 add     a1, a2, a1             #; a2  = 3, a1  = 0, (wrb) a1  <-- 3
       0     1862        M 0x8000076c srli    a1, a1, 4              #; a1  = 3, (wrb) a1  <-- 0
       0     1863        M 0x80000770 slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     1864        M 0x80000774 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1865        M 0x80000778 add     a1, a4, a1             #; a4  = 6, a1  = 0, (wrb) a1  <-- 6
       0     1867        M 0x8000077c fcvt.d.w ft4, a1               #; ac1  = 6
       0     1868        M                                           #; (f:fpu) ft4  <-- 6.0
       0     1869        M 0x80000788 addi    a3, a3, -1             #; a3  = 19, (wrb) a3  <-- 18
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 1.4142
       0     1870        M 0x8000078c addi    a4, a4, 1              #; a4  = 6, (wrb) a4  <-- 7
       0     1871        M 0x80000790 bnez    a3, pc - 52            #; a3  = 18, taken, goto 0x8000075c
       0     1872        M 0x8000075c mulhu   a1, a4, a5             #; a4  = 7, a5  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 8.4852000
       0     1873        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 8.4852000, ft4  = 8.4852000
       0     1874        M                                           #; (f:fpu) ft0  <-- 8.4852000
       0     1875        M                                           #; (acc) a2  <-- 0x40b70633
       0     1876        M 0x80000760 sub     a2, a4, a1             #; a4  = 7, a1  = 0, (wrb) a2  <-- 7
       0     1877        M 0x80000764 srli    a2, a2, 1              #; a2  = 7, (wrb) a2  <-- 3
       0     1878        M 0x80000768 add     a1, a2, a1             #; a2  = 3, a1  = 0, (wrb) a1  <-- 3
       0     1879        M 0x8000076c srli    a1, a1, 4              #; a1  = 3, (wrb) a1  <-- 0
       0     1880        M 0x80000770 slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     1881        M 0x80000774 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1882        M 0x80000778 add     a1, a4, a1             #; a4  = 7, a1  = 0, (wrb) a1  <-- 7
       0     1884        M 0x8000077c fcvt.d.w ft4, a1               #; ac1  = 7
       0     1885        M                                           #; (f:fpu) ft4  <-- 7.0
       0     1886        M 0x80000788 addi    a3, a3, -1             #; a3  = 18, (wrb) a3  <-- 17
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 1.4142
       0     1887        M 0x8000078c addi    a4, a4, 1              #; a4  = 7, (wrb) a4  <-- 8
       0     1888        M 0x80000790 bnez    a3, pc - 52            #; a3  = 17, taken, goto 0x8000075c
       0     1889        M 0x8000075c mulhu   a1, a4, a5             #; a4  = 8, a5  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 9.8994
       0     1890        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 9.8994, ft4  = 9.8994
       0     1891        M                                           #; (f:fpu) ft0  <-- 9.8994
       0     1892        M                                           #; (acc) a2  <-- 0x40b70633
       0     1893        M 0x80000760 sub     a2, a4, a1             #; a4  = 8, a1  = 0, (wrb) a2  <-- 8
       0     1894        M 0x80000764 srli    a2, a2, 1              #; a2  = 8, (wrb) a2  <-- 4
       0     1895        M 0x80000768 add     a1, a2, a1             #; a2  = 4, a1  = 0, (wrb) a1  <-- 4
       0     1896        M 0x8000076c srli    a1, a1, 4              #; a1  = 4, (wrb) a1  <-- 0
       0     1897        M 0x80000770 slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     1898        M 0x80000774 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1899        M 0x80000778 add     a1, a4, a1             #; a4  = 8, a1  = 0, (wrb) a1  <-- 8
       0     1901        M 0x8000077c fcvt.d.w ft4, a1               #; ac1  = 8
       0     1902        M                                           #; (f:fpu) ft4  <-- 8.0
       0     1903        M 0x80000788 addi    a3, a3, -1             #; a3  = 17, (wrb) a3  <-- 16
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 1.4142
       0     1904        M 0x8000078c addi    a4, a4, 1              #; a4  = 8, (wrb) a4  <-- 9
       0     1905        M 0x80000790 bnez    a3, pc - 52            #; a3  = 16, taken, goto 0x8000075c
       0     1906        M 0x8000075c mulhu   a1, a4, a5             #; a4  = 9, a5  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 11.3136
       0     1907        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 11.3136, ft4  = 11.3136
       0     1908        M                                           #; (f:fpu) ft0  <-- 11.3136
       0     1909        M                                           #; (acc) a2  <-- 0x40b70633
       0     1910        M 0x80000760 sub     a2, a4, a1             #; a4  = 9, a1  = 0, (wrb) a2  <-- 9
       0     1911        M 0x80000764 srli    a2, a2, 1              #; a2  = 9, (wrb) a2  <-- 4
       0     1912        M 0x80000768 add     a1, a2, a1             #; a2  = 4, a1  = 0, (wrb) a1  <-- 4
       0     1913        M 0x8000076c srli    a1, a1, 4              #; a1  = 4, (wrb) a1  <-- 0
       0     1914        M 0x80000770 slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     1915        M 0x80000774 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1916        M 0x80000778 add     a1, a4, a1             #; a4  = 9, a1  = 0, (wrb) a1  <-- 9
       0     1918        M 0x8000077c fcvt.d.w ft4, a1               #; ac1  = 9
       0     1919        M                                           #; (f:fpu) ft4  <-- 9.0
       0     1920        M 0x80000788 addi    a3, a3, -1             #; a3  = 16, (wrb) a3  <-- 15
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 1.4142
       0     1921        M 0x8000078c addi    a4, a4, 1              #; a4  = 9, (wrb) a4  <-- 10
       0     1922        M 0x80000790 bnez    a3, pc - 52            #; a3  = 15, taken, goto 0x8000075c
       0     1923        M 0x8000075c mulhu   a1, a4, a5             #; a4  = 10, a5  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 12.7278000
       0     1924        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.7278000, ft4  = 12.7278000
       0     1925        M                                           #; (f:fpu) ft0  <-- 12.7278000
       0     1926        M                                           #; (acc) a2  <-- 0x40b70633
       0     1927        M 0x80000760 sub     a2, a4, a1             #; a4  = 10, a1  = 0, (wrb) a2  <-- 10
       0     1928        M 0x80000764 srli    a2, a2, 1              #; a2  = 10, (wrb) a2  <-- 5
       0     1929        M 0x80000768 add     a1, a2, a1             #; a2  = 5, a1  = 0, (wrb) a1  <-- 5
       0     1930        M 0x8000076c srli    a1, a1, 4              #; a1  = 5, (wrb) a1  <-- 0
       0     1931        M 0x80000770 slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     1932        M 0x80000774 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1933        M 0x80000778 add     a1, a4, a1             #; a4  = 10, a1  = 0, (wrb) a1  <-- 10
       0     1935        M 0x8000077c fcvt.d.w ft4, a1               #; ac1  = 10
       0     1936        M                                           #; (f:fpu) ft4  <-- 10.0
       0     1937        M 0x80000788 addi    a3, a3, -1             #; a3  = 15, (wrb) a3  <-- 14
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 1.4142
       0     1938        M 0x8000078c addi    a4, a4, 1              #; a4  = 10, (wrb) a4  <-- 11
       0     1939        M 0x80000790 bnez    a3, pc - 52            #; a3  = 14, taken, goto 0x8000075c
       0     1940        M 0x8000075c mulhu   a1, a4, a5             #; a4  = 11, a5  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 14.142
       0     1941        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 14.142, ft4  = 14.142
       0     1942        M                                           #; (f:fpu) ft0  <-- 14.142
       0     1943        M                                           #; (acc) a2  <-- 0x40b70633
       0     1944        M 0x80000760 sub     a2, a4, a1             #; a4  = 11, a1  = 0, (wrb) a2  <-- 11
       0     1945        M 0x80000764 srli    a2, a2, 1              #; a2  = 11, (wrb) a2  <-- 5
       0     1946        M 0x80000768 add     a1, a2, a1             #; a2  = 5, a1  = 0, (wrb) a1  <-- 5
       0     1947        M 0x8000076c srli    a1, a1, 4              #; a1  = 5, (wrb) a1  <-- 0
       0     1948        M 0x80000770 slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     1949        M 0x80000774 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1950        M 0x80000778 add     a1, a4, a1             #; a4  = 11, a1  = 0, (wrb) a1  <-- 11
       0     1952        M 0x8000077c fcvt.d.w ft4, a1               #; ac1  = 11
       0     1953        M                                           #; (f:fpu) ft4  <-- 11.0
       0     1954        M 0x80000788 addi    a3, a3, -1             #; a3  = 14, (wrb) a3  <-- 13
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 1.4142
       0     1955        M 0x8000078c addi    a4, a4, 1              #; a4  = 11, (wrb) a4  <-- 12
       0     1956        M 0x80000790 bnez    a3, pc - 52            #; a3  = 13, taken, goto 0x8000075c
       0     1957        M 0x8000075c mulhu   a1, a4, a5             #; a4  = 12, a5  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 15.5562000
       0     1958        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 15.5562000, ft4  = 15.5562000
       0     1959        M                                           #; (f:fpu) ft0  <-- 15.5562000
       0     1960        M                                           #; (acc) a2  <-- 0x40b70633
       0     1961        M 0x80000760 sub     a2, a4, a1             #; a4  = 12, a1  = 0, (wrb) a2  <-- 12
       0     1962        M 0x80000764 srli    a2, a2, 1              #; a2  = 12, (wrb) a2  <-- 6
       0     1963        M 0x80000768 add     a1, a2, a1             #; a2  = 6, a1  = 0, (wrb) a1  <-- 6
       0     1964        M 0x8000076c srli    a1, a1, 4              #; a1  = 6, (wrb) a1  <-- 0
       0     1965        M 0x80000770 slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     1966        M 0x80000774 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1967        M 0x80000778 add     a1, a4, a1             #; a4  = 12, a1  = 0, (wrb) a1  <-- 12
       0     1969        M 0x8000077c fcvt.d.w ft4, a1               #; ac1  = 12
       0     1970        M                                           #; (f:fpu) ft4  <-- 12.0
       0     1971        M 0x80000788 addi    a3, a3, -1             #; a3  = 13, (wrb) a3  <-- 12
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 12.0, ft3  = 1.4142
       0     1972        M 0x8000078c addi    a4, a4, 1              #; a4  = 12, (wrb) a4  <-- 13
       0     1973        M 0x80000790 bnez    a3, pc - 52            #; a3  = 12, taken, goto 0x8000075c
       0     1974        M 0x8000075c mulhu   a1, a4, a5             #; a4  = 13, a5  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 16.9704000
       0     1975        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 16.9704000, ft4  = 16.9704000
       0     1976        M                                           #; (f:fpu) ft0  <-- 16.9704000
       0     1977        M                                           #; (acc) a2  <-- 0x40b70633
       0     1978        M 0x80000760 sub     a2, a4, a1             #; a4  = 13, a1  = 0, (wrb) a2  <-- 13
       0     1979        M 0x80000764 srli    a2, a2, 1              #; a2  = 13, (wrb) a2  <-- 6
       0     1980        M 0x80000768 add     a1, a2, a1             #; a2  = 6, a1  = 0, (wrb) a1  <-- 6
       0     1981        M 0x8000076c srli    a1, a1, 4              #; a1  = 6, (wrb) a1  <-- 0
       0     1982        M 0x80000770 slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     1983        M 0x80000774 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1984        M 0x80000778 add     a1, a4, a1             #; a4  = 13, a1  = 0, (wrb) a1  <-- 13
       0     1986        M 0x8000077c fcvt.d.w ft4, a1               #; ac1  = 13
       0     1987        M                                           #; (f:fpu) ft4  <-- 13.0
       0     1988        M 0x80000788 addi    a3, a3, -1             #; a3  = 12, (wrb) a3  <-- 11
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 13.0, ft3  = 1.4142
       0     1989        M 0x8000078c addi    a4, a4, 1              #; a4  = 13, (wrb) a4  <-- 14
       0     1990        M 0x80000790 bnez    a3, pc - 52            #; a3  = 11, taken, goto 0x8000075c
       0     1991        M 0x8000075c mulhu   a1, a4, a5             #; a4  = 14, a5  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 18.3846
       0     1992        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 18.3846, ft4  = 18.3846
       0     1993        M                                           #; (f:fpu) ft0  <-- 18.3846
       0     1994        M                                           #; (acc) a2  <-- 0x40b70633
       0     1995        M 0x80000760 sub     a2, a4, a1             #; a4  = 14, a1  = 0, (wrb) a2  <-- 14
       0     1996        M 0x80000764 srli    a2, a2, 1              #; a2  = 14, (wrb) a2  <-- 7
       0     1997        M 0x80000768 add     a1, a2, a1             #; a2  = 7, a1  = 0, (wrb) a1  <-- 7
       0     1998        M 0x8000076c srli    a1, a1, 4              #; a1  = 7, (wrb) a1  <-- 0
       0     1999        M 0x80000770 slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     2000        M 0x80000774 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     2001        M 0x80000778 add     a1, a4, a1             #; a4  = 14, a1  = 0, (wrb) a1  <-- 14
       0     2003        M 0x8000077c fcvt.d.w ft4, a1               #; ac1  = 14
       0     2004        M                                           #; (f:fpu) ft4  <-- 14.0
       0     2005        M 0x80000788 addi    a3, a3, -1             #; a3  = 11, (wrb) a3  <-- 10
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 14.0, ft3  = 1.4142
       0     2006        M 0x8000078c addi    a4, a4, 1              #; a4  = 14, (wrb) a4  <-- 15
       0     2007        M 0x80000790 bnez    a3, pc - 52            #; a3  = 10, taken, goto 0x8000075c
       0     2008        M 0x8000075c mulhu   a1, a4, a5             #; a4  = 15, a5  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 19.7988
       0     2009        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 19.7988, ft4  = 19.7988
       0     2010        M                                           #; (f:fpu) ft0  <-- 19.7988
       0     2011        M                                           #; (acc) a2  <-- 0x40b70633
       0     2012        M 0x80000760 sub     a2, a4, a1             #; a4  = 15, a1  = 0, (wrb) a2  <-- 15
       0     2013        M 0x80000764 srli    a2, a2, 1              #; a2  = 15, (wrb) a2  <-- 7
       0     2014        M 0x80000768 add     a1, a2, a1             #; a2  = 7, a1  = 0, (wrb) a1  <-- 7
       0     2015        M 0x8000076c srli    a1, a1, 4              #; a1  = 7, (wrb) a1  <-- 0
       0     2016        M 0x80000770 slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     2017        M 0x80000774 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     2018        M 0x80000778 add     a1, a4, a1             #; a4  = 15, a1  = 0, (wrb) a1  <-- 15
       0     2020        M 0x8000077c fcvt.d.w ft4, a1               #; ac1  = 15
       0     2021        M                                           #; (f:fpu) ft4  <-- 15.0
       0     2022        M 0x80000788 addi    a3, a3, -1             #; a3  = 10, (wrb) a3  <-- 9
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 15.0, ft3  = 1.4142
       0     2023        M 0x8000078c addi    a4, a4, 1              #; a4  = 15, (wrb) a4  <-- 16
       0     2024        M 0x80000790 bnez    a3, pc - 52            #; a3  = 9, taken, goto 0x8000075c
       0     2025        M 0x8000075c mulhu   a1, a4, a5             #; a4  = 16, a5  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 21.2130000
       0     2026        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 21.2130000, ft4  = 21.2130000
       0     2027        M                                           #; (f:fpu) ft0  <-- 21.2130000
       0     2028        M                                           #; (acc) a2  <-- 0x40b70633
       0     2029        M 0x80000760 sub     a2, a4, a1             #; a4  = 16, a1  = 0, (wrb) a2  <-- 16
       0     2030        M 0x80000764 srli    a2, a2, 1              #; a2  = 16, (wrb) a2  <-- 8
       0     2031        M 0x80000768 add     a1, a2, a1             #; a2  = 8, a1  = 0, (wrb) a1  <-- 8
       0     2032        M 0x8000076c srli    a1, a1, 4              #; a1  = 8, (wrb) a1  <-- 0
       0     2033        M 0x80000770 slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     2034        M 0x80000774 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     2035        M 0x80000778 add     a1, a4, a1             #; a4  = 16, a1  = 0, (wrb) a1  <-- 16
       0     2037        M 0x8000077c fcvt.d.w ft4, a1               #; ac1  = 16
       0     2038        M                                           #; (f:fpu) ft4  <-- 16.0
       0     2039        M 0x80000788 addi    a3, a3, -1             #; a3  = 9, (wrb) a3  <-- 8
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 16.0, ft3  = 1.4142
       0     2040        M 0x8000078c addi    a4, a4, 1              #; a4  = 16, (wrb) a4  <-- 17
       0     2041        M 0x80000790 bnez    a3, pc - 52            #; a3  = 8, taken, goto 0x8000075c
       0     2042        M 0x8000075c mulhu   a1, a4, a5             #; a4  = 17, a5  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 22.6272
       0     2043        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 22.6272, ft4  = 22.6272
       0     2044        M                                           #; (f:fpu) ft0  <-- 22.6272
       0     2045        M                                           #; (acc) a2  <-- 0x40b70633
       0     2046        M 0x80000760 sub     a2, a4, a1             #; a4  = 17, a1  = 0, (wrb) a2  <-- 17
       0     2047        M 0x80000764 srli    a2, a2, 1              #; a2  = 17, (wrb) a2  <-- 8
       0     2048        M 0x80000768 add     a1, a2, a1             #; a2  = 8, a1  = 0, (wrb) a1  <-- 8
       0     2049        M 0x8000076c srli    a1, a1, 4              #; a1  = 8, (wrb) a1  <-- 0
       0     2050        M 0x80000770 slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     2051        M 0x80000774 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     2052        M 0x80000778 add     a1, a4, a1             #; a4  = 17, a1  = 0, (wrb) a1  <-- 17
       0     2054        M 0x8000077c fcvt.d.w ft4, a1               #; ac1  = 17
       0     2055        M                                           #; (f:fpu) ft4  <-- 17.0
       0     2056        M 0x80000788 addi    a3, a3, -1             #; a3  = 8, (wrb) a3  <-- 7
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 17.0, ft3  = 1.4142
       0     2057        M 0x8000078c addi    a4, a4, 1              #; a4  = 17, (wrb) a4  <-- 18
       0     2058        M 0x80000790 bnez    a3, pc - 52            #; a3  = 7, taken, goto 0x8000075c
       0     2059        M 0x8000075c mulhu   a1, a4, a5             #; a4  = 18, a5  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 24.0414
       0     2060        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 24.0414, ft4  = 24.0414
       0     2061        M                                           #; (f:fpu) ft0  <-- 24.0414
       0     2062        M                                           #; (acc) a2  <-- 0x40b70633
       0     2063        M 0x80000760 sub     a2, a4, a1             #; a4  = 18, a1  = 0, (wrb) a2  <-- 18
       0     2064        M 0x80000764 srli    a2, a2, 1              #; a2  = 18, (wrb) a2  <-- 9
       0     2065        M 0x80000768 add     a1, a2, a1             #; a2  = 9, a1  = 0, (wrb) a1  <-- 9
       0     2066        M 0x8000076c srli    a1, a1, 4              #; a1  = 9, (wrb) a1  <-- 0
       0     2067        M 0x80000770 slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     2068        M 0x80000774 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     2069        M 0x80000778 add     a1, a4, a1             #; a4  = 18, a1  = 0, (wrb) a1  <-- 18
       0     2071        M 0x8000077c fcvt.d.w ft4, a1               #; ac1  = 18
       0     2072        M                                           #; (f:fpu) ft4  <-- 18.0
       0     2073        M 0x80000788 addi    a3, a3, -1             #; a3  = 7, (wrb) a3  <-- 6
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 18.0, ft3  = 1.4142
       0     2074        M 0x8000078c addi    a4, a4, 1              #; a4  = 18, (wrb) a4  <-- 19
       0     2075        M 0x80000790 bnez    a3, pc - 52            #; a3  = 6, taken, goto 0x8000075c
       0     2076        M 0x8000075c mulhu   a1, a4, a5             #; a4  = 19, a5  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 25.4556000
       0     2077        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.4556000, ft4  = 25.4556000
       0     2078        M                                           #; (f:fpu) ft0  <-- 25.4556000
       0     2079        M                                           #; (acc) a2  <-- 0x40b70633
       0     2080        M 0x80000760 sub     a2, a4, a1             #; a4  = 19, a1  = 0, (wrb) a2  <-- 19
       0     2081        M 0x80000764 srli    a2, a2, 1              #; a2  = 19, (wrb) a2  <-- 9
       0     2082        M 0x80000768 add     a1, a2, a1             #; a2  = 9, a1  = 0, (wrb) a1  <-- 9
       0     2083        M 0x8000076c srli    a1, a1, 4              #; a1  = 9, (wrb) a1  <-- 0
       0     2084        M 0x80000770 slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     2085        M 0x80000774 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     2086        M 0x80000778 add     a1, a4, a1             #; a4  = 19, a1  = 0, (wrb) a1  <-- 19
       0     2088        M 0x8000077c fcvt.d.w ft4, a1               #; ac1  = 19
       0     2089        M                                           #; (f:fpu) ft4  <-- 19.0
       0     2090        M 0x80000788 addi    a3, a3, -1             #; a3  = 6, (wrb) a3  <-- 5
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 19.0, ft3  = 1.4142
       0     2091        M 0x8000078c addi    a4, a4, 1              #; a4  = 19, (wrb) a4  <-- 20
       0     2092        M 0x80000790 bnez    a3, pc - 52            #; a3  = 5, taken, goto 0x8000075c
       0     2093        M 0x8000075c mulhu   a1, a4, a5             #; a4  = 20, a5  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 26.8698000
       0     2094        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 26.8698000, ft4  = 26.8698000
       0     2095        M                                           #; (f:fpu) ft0  <-- 26.8698000
       0     2096        M                                           #; (acc) a2  <-- 0x40b70633
       0     2097        M 0x80000760 sub     a2, a4, a1             #; a4  = 20, a1  = 0, (wrb) a2  <-- 20
       0     2098        M 0x80000764 srli    a2, a2, 1              #; a2  = 20, (wrb) a2  <-- 10
       0     2099        M 0x80000768 add     a1, a2, a1             #; a2  = 10, a1  = 0, (wrb) a1  <-- 10
       0     2100        M 0x8000076c srli    a1, a1, 4              #; a1  = 10, (wrb) a1  <-- 0
       0     2101        M 0x80000770 slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     2102        M 0x80000774 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     2103        M 0x80000778 add     a1, a4, a1             #; a4  = 20, a1  = 0, (wrb) a1  <-- 20
       0     2105        M 0x8000077c fcvt.d.w ft4, a1               #; ac1  = 20
       0     2106        M                                           #; (f:fpu) ft4  <-- 20.0
       0     2107        M 0x80000788 addi    a3, a3, -1             #; a3  = 5, (wrb) a3  <-- 4
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 20.0, ft3  = 1.4142
       0     2108        M 0x8000078c addi    a4, a4, 1              #; a4  = 20, (wrb) a4  <-- 21
       0     2109        M 0x80000790 bnez    a3, pc - 52            #; a3  = 4, taken, goto 0x8000075c
       0     2110        M 0x8000075c mulhu   a1, a4, a5             #; a4  = 21, a5  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 28.284
       0     2111        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 28.284, ft4  = 28.284
       0     2112        M                                           #; (f:fpu) ft0  <-- 28.284
       0     2113        M                                           #; (acc) a2  <-- 0x40b70633
       0     2114        M 0x80000760 sub     a2, a4, a1             #; a4  = 21, a1  = 0, (wrb) a2  <-- 21
       0     2115        M 0x80000764 srli    a2, a2, 1              #; a2  = 21, (wrb) a2  <-- 10
       0     2116        M 0x80000768 add     a1, a2, a1             #; a2  = 10, a1  = 0, (wrb) a1  <-- 10
       0     2117        M 0x8000076c srli    a1, a1, 4              #; a1  = 10, (wrb) a1  <-- 0
       0     2118        M 0x80000770 slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     2119        M 0x80000774 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     2120        M 0x80000778 add     a1, a4, a1             #; a4  = 21, a1  = 0, (wrb) a1  <-- 21
       0     2122        M 0x8000077c fcvt.d.w ft4, a1               #; ac1  = 21
       0     2123        M                                           #; (f:fpu) ft4  <-- 21.0
       0     2124        M 0x80000788 addi    a3, a3, -1             #; a3  = 4, (wrb) a3  <-- 3
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 21.0, ft3  = 1.4142
       0     2125        M 0x8000078c addi    a4, a4, 1              #; a4  = 21, (wrb) a4  <-- 22
       0     2126        M 0x80000790 bnez    a3, pc - 52            #; a3  = 3, taken, goto 0x8000075c
       0     2127        M 0x8000075c mulhu   a1, a4, a5             #; a4  = 22, a5  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 29.6982000
       0     2128        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 29.6982000, ft4  = 29.6982000
       0     2129        M                                           #; (f:fpu) ft0  <-- 29.6982000
       0     2130        M                                           #; (acc) a2  <-- 0x40b70633
       0     2131        M 0x80000760 sub     a2, a4, a1             #; a4  = 22, a1  = 0, (wrb) a2  <-- 22
       0     2132        M 0x80000764 srli    a2, a2, 1              #; a2  = 22, (wrb) a2  <-- 11
       0     2133        M 0x80000768 add     a1, a2, a1             #; a2  = 11, a1  = 0, (wrb) a1  <-- 11
       0     2134        M 0x8000076c srli    a1, a1, 4              #; a1  = 11, (wrb) a1  <-- 0
       0     2135        M 0x80000770 slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     2136        M 0x80000774 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     2137        M 0x80000778 add     a1, a4, a1             #; a4  = 22, a1  = 0, (wrb) a1  <-- 22
       0     2139        M 0x8000077c fcvt.d.w ft4, a1               #; ac1  = 22
       0     2140        M                                           #; (f:fpu) ft4  <-- 22.0
       0     2141        M 0x80000788 addi    a3, a3, -1             #; a3  = 3, (wrb) a3  <-- 2
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 22.0, ft3  = 1.4142
       0     2142        M 0x8000078c addi    a4, a4, 1              #; a4  = 22, (wrb) a4  <-- 23
       0     2143        M 0x80000790 bnez    a3, pc - 52            #; a3  = 2, taken, goto 0x8000075c
       0     2144        M 0x8000075c mulhu   a1, a4, a5             #; a4  = 23, a5  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 31.1124000
       0     2145        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 31.1124000, ft4  = 31.1124000
       0     2146        M                                           #; (f:fpu) ft0  <-- 31.1124000
       0     2147        M                                           #; (acc) a2  <-- 0x40b70633
       0     2148        M 0x80000760 sub     a2, a4, a1             #; a4  = 23, a1  = 0, (wrb) a2  <-- 23
       0     2149        M 0x80000764 srli    a2, a2, 1              #; a2  = 23, (wrb) a2  <-- 11
       0     2150        M 0x80000768 add     a1, a2, a1             #; a2  = 11, a1  = 0, (wrb) a1  <-- 11
       0     2151        M 0x8000076c srli    a1, a1, 4              #; a1  = 11, (wrb) a1  <-- 0
       0     2152        M 0x80000770 slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     2153        M 0x80000774 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     2154        M 0x80000778 add     a1, a4, a1             #; a4  = 23, a1  = 0, (wrb) a1  <-- 23
       0     2156        M 0x8000077c fcvt.d.w ft4, a1               #; ac1  = 23
       0     2157        M                                           #; (f:fpu) ft4  <-- 23.0
       0     2158        M 0x80000788 addi    a3, a3, -1             #; a3  = 2, (wrb) a3  <-- 1
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 23.0, ft3  = 1.4142
       0     2159        M 0x8000078c addi    a4, a4, 1              #; a4  = 23, (wrb) a4  <-- 24
       0     2160        M 0x80000790 bnez    a3, pc - 52            #; a3  = 1, taken, goto 0x8000075c
       0     2161        M 0x8000075c mulhu   a1, a4, a5             #; a4  = 24, a5  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 32.5266000
       0     2162        M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 32.5266000, ft4  = 32.5266000
       0     2163        M                                           #; (f:fpu) ft0  <-- 32.5266000
       0     2164        M                                           #; (acc) a2  <-- 0x40b70633
       0     2165        M 0x80000760 sub     a2, a4, a1             #; a4  = 24, a1  = 0, (wrb) a2  <-- 24
       0     2166        M 0x80000764 srli    a2, a2, 1              #; a2  = 24, (wrb) a2  <-- 12
       0     2167        M 0x80000768 add     a1, a2, a1             #; a2  = 12, a1  = 0, (wrb) a1  <-- 12
       0     2168        M 0x8000076c srli    a1, a1, 4              #; a1  = 12, (wrb) a1  <-- 0
       0     2169        M 0x80000770 slli    a2, a1, 5              #; a1  = 0, (wrb) a2  <-- 0
       0     2170        M 0x80000774 sub     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     2171        M 0x80000778 add     a1, a4, a1             #; a4  = 24, a1  = 0, (wrb) a1  <-- 24
       0     2173        M 0x8000077c fcvt.d.w ft4, a1               #; ac1  = 24
       0     2174        M                                           #; (f:fpu) ft4  <-- 24.0
       0     2175        M 0x80000788 addi    a3, a3, -1             #; a3  = 1, (wrb) a3  <-- 0
                         M 0x80000780 fmul.d  ft4, ft4, ft3          #; ft4  = 24.0, ft3  = 1.4142
       0     2176        M 0x8000078c addi    a4, a4, 1              #; a4  = 24, (wrb) a4  <-- 25
       0     2177        M 0x80000790 bnez    a3, pc - 52            #; a3  = 0, not taken
       0     2178        M                                           #; (f:fpu) ft4  <-- 33.9408000
       0     2179        M 0x80000798 j       pc + 0x60              #; goto 0x800007f8
                         M 0x80000784 fsgnj.d ft0, ft4, ft4          #; ft4  = 33.9408000, ft4  = 33.9408000
       0     2180        M 0x80000794 csrrci  a2, ssr, 1             #; (f:fpu) ft0  <-- 33.9408000
       0     2190        M 0x800007f8 beqz    a7, pc + 72            #; a7  = 1, not taken
       0     2191        M 0x800007fc addi    a1, a0, -1             #; a0  = 25, (wrb) a1  <-- 24
       0     2202        M 0x80000800 li      a2, 8                  #; (wrb) a2  <-- 8
       0     2203        M 0x80000804 li      a3, 64                 #; (wrb) a3  <-- 64
       0     2204        M 0x80000808 li      a4, 192                #; (wrb) a4  <-- 192
       0     2205        M 0x8000080c scfgw   a1, a3                 #; a1  = 24, a3  = 64
       0     2214        M 0x80000810 scfgw   a2, a4                 #; a2  = 8, a4  = 192
       0     2215        M 0x80000814 li      a1, 32                 #; (wrb) a1  <-- 32
       0     2216        M 0x80000818 scfgw   zero, a1               #; a1  = 32
       0     2217        M 0x8000081c scfgwi  t1, 768                #; t1  = 0x00100000
       0     2227        M 0x80000820 csrrsi  a1, ssr, 1             #; 
       0     2228        M 0x80000828 mv      a2, a0                 #; a0  = 25, (wrb) a2  <-- 25
                         M 0x80000824 fcvt.d.w ft3, zero             #; ac1  = 0
       0     2229        M 0x8000082c addi    a2, a2, -1             #; a2  = 25, (wrb) a2  <-- 24
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2239        M 0x80000834 bnez    a2, pc - 8             #; a2  = 24, taken, goto 0x8000082c
       0     2240        M 0x8000082c addi    a2, a2, -1             #; a2  = 24, (wrb) a2  <-- 23
                         M 0x80000830 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 0.0, ft0  = 0.0, ft3  = 0.0
       0     2242        M 0x80000834 bnez    a2, pc - 8             #; a2  = 23, taken, goto 0x8000082c
       0     2243        M 0x8000082c addi    a2, a2, -1             #; a2  = 23, (wrb) a2  <-- 22
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2244        M 0x80000830 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 1.4142, ft0  = 1.4142, ft3  = 0.0
       0     2245        M 0x80000834 bnez    a2, pc - 8             #; a2  = 22, taken, goto 0x8000082c
       0     2246        M 0x8000082c addi    a2, a2, -1             #; a2  = 22, (wrb) a2  <-- 21
       0     2247        M                                           #; (f:fpu) ft3  <-- 1.9999616
       0     2248        M 0x80000834 bnez    a2, pc - 8             #; a2  = 21, taken, goto 0x8000082c
                         M 0x80000830 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 2.8284, ft0  = 2.8284, ft3  = 1.9999616
       0     2249        M 0x8000082c addi    a2, a2, -1             #; a2  = 21, (wrb) a2  <-- 20
       0     2251        M 0x80000834 bnez    a2, pc - 8             #; a2  = 20, taken, goto 0x8000082c
                         M                                           #; (f:fpu) ft3  <-- 9.9998082
       0     2252        M 0x8000082c addi    a2, a2, -1             #; a2  = 20, (wrb) a2  <-- 19
                         M 0x80000830 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 4.2426000, ft0  = 4.2426000, ft3  = 9.9998082
       0     2254        M 0x80000834 bnez    a2, pc - 8             #; a2  = 19, taken, goto 0x8000082c
       0     2255        M 0x8000082c addi    a2, a2, -1             #; a2  = 19, (wrb) a2  <-- 18
                         M                                           #; (f:fpu) ft3  <-- 27.9994630
       0     2256        M 0x80000830 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 5.6568, ft0  = 5.6568, ft3  = 27.9994630
       0     2257        M 0x80000834 bnez    a2, pc - 8             #; a2  = 18, taken, goto 0x8000082c
       0     2258        M 0x8000082c addi    a2, a2, -1             #; a2  = 18, (wrb) a2  <-- 17
       0     2259        M                                           #; (f:fpu) ft3  <-- 59.9988492
       0     2260        M 0x80000834 bnez    a2, pc - 8             #; a2  = 17, taken, goto 0x8000082c
                         M 0x80000830 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 7.071, ft0  = 7.071, ft3  = 59.9988492
       0     2261        M 0x8000082c addi    a2, a2, -1             #; a2  = 17, (wrb) a2  <-- 16
       0     2263        M 0x80000834 bnez    a2, pc - 8             #; a2  = 16, taken, goto 0x8000082c
                         M                                           #; (f:fpu) ft3  <-- 109.9978902
       0     2264        M 0x8000082c addi    a2, a2, -1             #; a2  = 16, (wrb) a2  <-- 15
                         M 0x80000830 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 8.4852000, ft0  = 8.4852000, ft3  = 109.9978902
       0     2266        M 0x80000834 bnez    a2, pc - 8             #; a2  = 15, taken, goto 0x8000082c
       0     2267        M 0x8000082c addi    a2, a2, -1             #; a2  = 15, (wrb) a2  <-- 14
                         M                                           #; (f:fpu) ft3  <-- 181.9965092
       0     2268        M 0x80000830 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 9.8994, ft0  = 9.8994, ft3  = 181.9965092
       0     2269        M 0x80000834 bnez    a2, pc - 8             #; a2  = 14, taken, goto 0x8000082c
       0     2270        M 0x8000082c addi    a2, a2, -1             #; a2  = 14, (wrb) a2  <-- 13
       0     2271        M                                           #; (f:fpu) ft3  <-- 279.9946296
       0     2272        M 0x80000834 bnez    a2, pc - 8             #; a2  = 13, taken, goto 0x8000082c
                         M 0x80000830 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 11.3136, ft0  = 11.3136, ft3  = 279.9946296
       0     2273        M 0x8000082c addi    a2, a2, -1             #; a2  = 13, (wrb) a2  <-- 12
       0     2275        M 0x80000834 bnez    a2, pc - 8             #; a2  = 12, taken, goto 0x8000082c
                         M                                           #; (f:fpu) ft3  <-- 407.9921746
       0     2276        M 0x8000082c addi    a2, a2, -1             #; a2  = 12, (wrb) a2  <-- 11
                         M 0x80000830 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 12.7278000, ft0  = 12.7278000, ft3  = 407.9921746
       0     2278        M 0x80000834 bnez    a2, pc - 8             #; a2  = 11, taken, goto 0x8000082c
       0     2279        M 0x8000082c addi    a2, a2, -1             #; a2  = 11, (wrb) a2  <-- 10
                         M                                           #; (f:fpu) ft3  <-- 569.9890674
       0     2280        M 0x80000830 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 14.142, ft0  = 14.142, ft3  = 569.9890674
       0     2281        M 0x80000834 bnez    a2, pc - 8             #; a2  = 10, taken, goto 0x8000082c
       0     2282        M 0x8000082c addi    a2, a2, -1             #; a2  = 10, (wrb) a2  <-- 9
       0     2283        M                                           #; (f:fpu) ft3  <-- 769.9852314
       0     2284        M 0x80000834 bnez    a2, pc - 8             #; a2  = 9, taken, goto 0x8000082c
                         M 0x80000830 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 15.5562000, ft0  = 15.5562000, ft3  = 769.9852314
       0     2285        M 0x8000082c addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
       0     2287        M 0x80000834 bnez    a2, pc - 8             #; a2  = 8, taken, goto 0x8000082c
                         M                                           #; (f:fpu) ft3  <-- 1011.9805898
       0     2288        M 0x8000082c addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
                         M 0x80000830 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 16.9704000, ft0  = 16.9704000, ft3  = 1011.9805898
       0     2290        M 0x80000834 bnez    a2, pc - 8             #; a2  = 7, taken, goto 0x8000082c
       0     2291        M 0x8000082c addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
                         M                                           #; (f:fpu) ft3  <-- 1299.9750660
       0     2292        M 0x80000830 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 18.3846, ft0  = 18.3846, ft3  = 1299.9750660
       0     2293        M 0x80000834 bnez    a2, pc - 8             #; a2  = 6, taken, goto 0x8000082c
       0     2294        M 0x8000082c addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
       0     2295        M                                           #; (f:fpu) ft3  <-- 1637.9685832
       0     2296        M 0x80000834 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x8000082c
                         M 0x80000830 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 19.7988, ft0  = 19.7988, ft3  = 1637.9685832
       0     2297        M 0x8000082c addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     2299        M 0x80000834 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x8000082c
                         M                                           #; (f:fpu) ft3  <-- 2029.9610646
       0     2300        M 0x8000082c addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80000830 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 21.2130000, ft0  = 21.2130000, ft3  = 2029.9610646
       0     2302        M 0x80000834 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x8000082c
       0     2303        M 0x8000082c addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft3  <-- 2479.9524336
       0     2304        M 0x80000830 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 22.6272, ft0  = 22.6272, ft3  = 2479.9524336
       0     2305        M 0x80000834 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x8000082c
       0     2306        M 0x8000082c addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     2307        M                                           #; (f:fpu) ft3  <-- 2991.9426134
       0     2308        M 0x80000834 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x8000082c
                         M 0x80000830 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 24.0414, ft0  = 24.0414, ft3  = 2991.9426134
       0     2309        M 0x8000082c addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     2311        M 0x80000834 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) ft3  <-- 3569.9315274
       0     2312        M 0x80000830 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 25.4556000, ft0  = 25.4556000, ft3  = 3569.9315274
       0     2313        M 0x8000083c j       pc + 0x24              #; goto 0x80000860
       0     2315        M                                           #; (f:fpu) ft3  <-- 4217.9190988
       0     2316        M 0x80000830 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 26.8698000, ft0  = 26.8698000, ft3  = 4217.9190988
       0     2319        M                                           #; (f:fpu) ft3  <-- 4939.9052508
       0     2320        M 0x80000830 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 28.284, ft0  = 28.284, ft3  = 4939.9052508
       0     2323        M                                           #; (f:fpu) ft3  <-- 5739.8899068
       0     2324        M 0x80000860 li      a4, 0                  #; (wrb) a4  <-- 0
                         M 0x80000830 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 29.6982000, ft0  = 29.6982000, ft3  = 5739.8899068
       0     2326        M 0x80000868 mv      a5, t1                 #; t1  = 0x00100000, (wrb) a5  <-- 0x00100000
       0     2327        M 0x8000086c j       pc + 0x10              #; goto 0x8000087c
                         M                                           #; (f:fpu) ft3  <-- 6621.8729900
       0     2328        M 0x80000830 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 31.1124000, ft0  = 31.1124000, ft3  = 6621.8729900
       0     2331        M                                           #; (f:fpu) ft3  <-- 7589.8544238
       0     2332        M 0x80000830 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 32.5266000, ft0  = 32.5266000, ft3  = 7589.8544238
       0     2335        M                                           #; (f:fpu) ft3  <-- 8647.8341314
       0     2336        M 0x8000087c andi    a1, a4, 1              #; a4  = 0, (wrb) a1  <-- 0
                         M 0x80000830 fmadd.d ft3, ft0, ft0, ft3     #; ft0  = 33.9408000, ft0  = 33.9408000, ft3  = 8647.8341314
       0     2337        M 0x80000838 csrrci  a1, ssr, 1             #; 
       0     2338        M 0x80000864 fcvt.d.w ft4, zero             #; ac1  = 0
       0     2339        M                                           #; (f:fpu) ft3  <-- 9799.8120360
       0     2340        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2348        M 0x80000880 bnez    a1, pc - 16            #; a1  = 0, not taken
       0     2351        M 0x8000088c j       pc - 0x1c              #; goto 0x80000870
                         M 0x80000884 fld     ft5, 0(a5)             #; ft5  <~~ Doub[0x00100000]
       0     2352        M 0x80000870 addi    a4, a4, 1              #; a4  = 0, (wrb) a4  <-- 1
                         M                                           #; (f:lsu) ft5  <-- 0.0
       0     2353        M 0x80000874 addi    a5, a5, 8              #; a5  = 0x00100000, (wrb) a5  <-- 0x00100008
                         M 0x80000888 fadd.d  ft4, ft5, ft4          #; ft5  = 0.0, ft4  = 0.0
       0     2354        M 0x80000878 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 1, not taken
       0     2355        M 0x8000087c andi    a1, a4, 1              #; a4  = 1, (wrb) a1  <-- 1
       0     2356        M 0x80000880 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000870
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     2357        M 0x80000870 addi    a4, a4, 1              #; a4  = 1, (wrb) a4  <-- 2
       0     2358        M 0x80000874 addi    a5, a5, 8              #; a5  = 0x00100008, (wrb) a5  <-- 0x00100010
       0     2359        M 0x80000878 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 2, not taken
       0     2360        M 0x8000087c andi    a1, a4, 1              #; a4  = 2, (wrb) a1  <-- 0
       0     2361        M 0x80000880 bnez    a1, pc - 16            #; a1  = 0, not taken
       0     2364        M 0x8000088c j       pc - 0x1c              #; goto 0x80000870
                         M 0x80000884 fld     ft5, 0(a5)             #; ft5  <~~ Doub[0x00100010]
       0     2365        M 0x80000870 addi    a4, a4, 1              #; a4  = 2, (wrb) a4  <-- 3
                         M                                           #; (f:lsu) ft5  <-- 2.8284
       0     2366        M 0x80000874 addi    a5, a5, 8              #; a5  = 0x00100010, (wrb) a5  <-- 0x00100018
                         M 0x80000888 fadd.d  ft4, ft5, ft4          #; ft5  = 2.8284, ft4  = 0.0
       0     2367        M 0x80000878 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 3, not taken
       0     2368        M 0x8000087c andi    a1, a4, 1              #; a4  = 3, (wrb) a1  <-- 1
       0     2369        M 0x80000880 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000870
                         M                                           #; (f:fpu) ft4  <-- 2.8284
       0     2370        M 0x80000870 addi    a4, a4, 1              #; a4  = 3, (wrb) a4  <-- 4
       0     2371        M 0x80000874 addi    a5, a5, 8              #; a5  = 0x00100018, (wrb) a5  <-- 0x00100020
       0     2372        M 0x80000878 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 4, not taken
       0     2373        M 0x8000087c andi    a1, a4, 1              #; a4  = 4, (wrb) a1  <-- 0
       0     2374        M 0x80000880 bnez    a1, pc - 16            #; a1  = 0, not taken
       0     2377        M 0x8000088c j       pc - 0x1c              #; goto 0x80000870
                         M 0x80000884 fld     ft5, 0(a5)             #; ft5  <~~ Doub[0x00100020]
       0     2378        M 0x80000870 addi    a4, a4, 1              #; a4  = 4, (wrb) a4  <-- 5
                         M                                           #; (f:lsu) ft5  <-- 5.6568
       0     2379        M 0x80000874 addi    a5, a5, 8              #; a5  = 0x00100020, (wrb) a5  <-- 0x00100028
                         M 0x80000888 fadd.d  ft4, ft5, ft4          #; ft5  = 5.6568, ft4  = 2.8284
       0     2380        M 0x80000878 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 5, not taken
       0     2381        M 0x8000087c andi    a1, a4, 1              #; a4  = 5, (wrb) a1  <-- 1
       0     2382        M 0x80000880 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000870
                         M                                           #; (f:fpu) ft4  <-- 8.4852000
       0     2383        M 0x80000870 addi    a4, a4, 1              #; a4  = 5, (wrb) a4  <-- 6
       0     2384        M 0x80000874 addi    a5, a5, 8              #; a5  = 0x00100028, (wrb) a5  <-- 0x00100030
       0     2385        M 0x80000878 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 6, not taken
       0     2386        M 0x8000087c andi    a1, a4, 1              #; a4  = 6, (wrb) a1  <-- 0
       0     2387        M 0x80000880 bnez    a1, pc - 16            #; a1  = 0, not taken
       0     2390        M 0x8000088c j       pc - 0x1c              #; goto 0x80000870
                         M 0x80000884 fld     ft5, 0(a5)             #; ft5  <~~ Doub[0x00100030]
       0     2391        M 0x80000870 addi    a4, a4, 1              #; a4  = 6, (wrb) a4  <-- 7
                         M                                           #; (f:lsu) ft5  <-- 8.4852000
       0     2392        M 0x80000874 addi    a5, a5, 8              #; a5  = 0x00100030, (wrb) a5  <-- 0x00100038
                         M 0x80000888 fadd.d  ft4, ft5, ft4          #; ft5  = 8.4852000, ft4  = 8.4852000
       0     2393        M 0x80000878 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 7, not taken
       0     2394        M 0x8000087c andi    a1, a4, 1              #; a4  = 7, (wrb) a1  <-- 1
       0     2395        M 0x80000880 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000870
                         M                                           #; (f:fpu) ft4  <-- 16.9704000
       0     2396        M 0x80000870 addi    a4, a4, 1              #; a4  = 7, (wrb) a4  <-- 8
       0     2397        M 0x80000874 addi    a5, a5, 8              #; a5  = 0x00100038, (wrb) a5  <-- 0x00100040
       0     2398        M 0x80000878 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 8, not taken
       0     2399        M 0x8000087c andi    a1, a4, 1              #; a4  = 8, (wrb) a1  <-- 0
       0     2400        M 0x80000880 bnez    a1, pc - 16            #; a1  = 0, not taken
       0     2403        M 0x8000088c j       pc - 0x1c              #; goto 0x80000870
                         M 0x80000884 fld     ft5, 0(a5)             #; ft5  <~~ Doub[0x00100040]
       0     2404        M 0x80000870 addi    a4, a4, 1              #; a4  = 8, (wrb) a4  <-- 9
                         M                                           #; (f:lsu) ft5  <-- 11.3136
       0     2405        M 0x80000874 addi    a5, a5, 8              #; a5  = 0x00100040, (wrb) a5  <-- 0x00100048
                         M 0x80000888 fadd.d  ft4, ft5, ft4          #; ft5  = 11.3136, ft4  = 16.9704000
       0     2406        M 0x80000878 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 9, not taken
       0     2407        M 0x8000087c andi    a1, a4, 1              #; a4  = 9, (wrb) a1  <-- 1
       0     2408        M 0x80000880 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000870
                         M                                           #; (f:fpu) ft4  <-- 28.284
       0     2409        M 0x80000870 addi    a4, a4, 1              #; a4  = 9, (wrb) a4  <-- 10
       0     2410        M 0x80000874 addi    a5, a5, 8              #; a5  = 0x00100048, (wrb) a5  <-- 0x00100050
       0     2411        M 0x80000878 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 10, not taken
       0     2412        M 0x8000087c andi    a1, a4, 1              #; a4  = 10, (wrb) a1  <-- 0
       0     2413        M 0x80000880 bnez    a1, pc - 16            #; a1  = 0, not taken
       0     2416        M 0x8000088c j       pc - 0x1c              #; goto 0x80000870
                         M 0x80000884 fld     ft5, 0(a5)             #; ft5  <~~ Doub[0x00100050]
       0     2417        M 0x80000870 addi    a4, a4, 1              #; a4  = 10, (wrb) a4  <-- 11
                         M                                           #; (f:lsu) ft5  <-- 14.142
       0     2418        M 0x80000874 addi    a5, a5, 8              #; a5  = 0x00100050, (wrb) a5  <-- 0x00100058
                         M 0x80000888 fadd.d  ft4, ft5, ft4          #; ft5  = 14.142, ft4  = 28.284
       0     2419        M 0x80000878 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 11, not taken
       0     2420        M 0x8000087c andi    a1, a4, 1              #; a4  = 11, (wrb) a1  <-- 1
       0     2421        M 0x80000880 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000870
                         M                                           #; (f:fpu) ft4  <-- 42.426
       0     2422        M 0x80000870 addi    a4, a4, 1              #; a4  = 11, (wrb) a4  <-- 12
       0     2423        M 0x80000874 addi    a5, a5, 8              #; a5  = 0x00100058, (wrb) a5  <-- 0x00100060
       0     2424        M 0x80000878 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 12, not taken
       0     2425        M 0x8000087c andi    a1, a4, 1              #; a4  = 12, (wrb) a1  <-- 0
       0     2426        M 0x80000880 bnez    a1, pc - 16            #; a1  = 0, not taken
       0     2429        M 0x8000088c j       pc - 0x1c              #; goto 0x80000870
                         M 0x80000884 fld     ft5, 0(a5)             #; ft5  <~~ Doub[0x00100060]
       0     2430        M 0x80000870 addi    a4, a4, 1              #; a4  = 12, (wrb) a4  <-- 13
                         M                                           #; (f:lsu) ft5  <-- 16.9704000
       0     2431        M 0x80000874 addi    a5, a5, 8              #; a5  = 0x00100060, (wrb) a5  <-- 0x00100068
                         M 0x80000888 fadd.d  ft4, ft5, ft4          #; ft5  = 16.9704000, ft4  = 42.426
       0     2432        M 0x80000878 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 13, not taken
       0     2433        M 0x8000087c andi    a1, a4, 1              #; a4  = 13, (wrb) a1  <-- 1
       0     2434        M 0x80000880 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000870
                         M                                           #; (f:fpu) ft4  <-- 59.3964
       0     2435        M 0x80000870 addi    a4, a4, 1              #; a4  = 13, (wrb) a4  <-- 14
       0     2436        M 0x80000874 addi    a5, a5, 8              #; a5  = 0x00100068, (wrb) a5  <-- 0x00100070
       0     2437        M 0x80000878 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 14, not taken
       0     2438        M 0x8000087c andi    a1, a4, 1              #; a4  = 14, (wrb) a1  <-- 0
       0     2439        M 0x80000880 bnez    a1, pc - 16            #; a1  = 0, not taken
       0     2442        M 0x8000088c j       pc - 0x1c              #; goto 0x80000870
                         M 0x80000884 fld     ft5, 0(a5)             #; ft5  <~~ Doub[0x00100070]
       0     2443        M 0x80000870 addi    a4, a4, 1              #; a4  = 14, (wrb) a4  <-- 15
                         M                                           #; (f:lsu) ft5  <-- 19.7988
       0     2444        M 0x80000874 addi    a5, a5, 8              #; a5  = 0x00100070, (wrb) a5  <-- 0x00100078
                         M 0x80000888 fadd.d  ft4, ft5, ft4          #; ft5  = 19.7988, ft4  = 59.3964
       0     2445        M 0x80000878 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 15, not taken
       0     2446        M 0x8000087c andi    a1, a4, 1              #; a4  = 15, (wrb) a1  <-- 1
       0     2447        M 0x80000880 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000870
                         M                                           #; (f:fpu) ft4  <-- 79.1952
       0     2448        M 0x80000870 addi    a4, a4, 1              #; a4  = 15, (wrb) a4  <-- 16
       0     2449        M 0x80000874 addi    a5, a5, 8              #; a5  = 0x00100078, (wrb) a5  <-- 0x00100080
       0     2450        M 0x80000878 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 16, not taken
       0     2451        M 0x8000087c andi    a1, a4, 1              #; a4  = 16, (wrb) a1  <-- 0
       0     2452        M 0x80000880 bnez    a1, pc - 16            #; a1  = 0, not taken
       0     2455        M 0x8000088c j       pc - 0x1c              #; goto 0x80000870
                         M 0x80000884 fld     ft5, 0(a5)             #; ft5  <~~ Doub[0x00100080]
       0     2456        M 0x80000870 addi    a4, a4, 1              #; a4  = 16, (wrb) a4  <-- 17
                         M                                           #; (f:lsu) ft5  <-- 22.6272
       0     2457        M 0x80000874 addi    a5, a5, 8              #; a5  = 0x00100080, (wrb) a5  <-- 0x00100088
                         M 0x80000888 fadd.d  ft4, ft5, ft4          #; ft5  = 22.6272, ft4  = 79.1952
       0     2458        M 0x80000878 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 17, not taken
       0     2459        M 0x8000087c andi    a1, a4, 1              #; a4  = 17, (wrb) a1  <-- 1
       0     2460        M 0x80000880 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000870
                         M                                           #; (f:fpu) ft4  <-- 101.8224
       0     2461        M 0x80000870 addi    a4, a4, 1              #; a4  = 17, (wrb) a4  <-- 18
       0     2462        M 0x80000874 addi    a5, a5, 8              #; a5  = 0x00100088, (wrb) a5  <-- 0x00100090
       0     2463        M 0x80000878 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 18, not taken
       0     2464        M 0x8000087c andi    a1, a4, 1              #; a4  = 18, (wrb) a1  <-- 0
       0     2465        M 0x80000880 bnez    a1, pc - 16            #; a1  = 0, not taken
       0     2468        M 0x8000088c j       pc - 0x1c              #; goto 0x80000870
                         M 0x80000884 fld     ft5, 0(a5)             #; ft5  <~~ Doub[0x00100090]
       0     2469        M 0x80000870 addi    a4, a4, 1              #; a4  = 18, (wrb) a4  <-- 19
                         M                                           #; (f:lsu) ft5  <-- 25.4556000
       0     2470        M 0x80000874 addi    a5, a5, 8              #; a5  = 0x00100090, (wrb) a5  <-- 0x00100098
                         M 0x80000888 fadd.d  ft4, ft5, ft4          #; ft5  = 25.4556000, ft4  = 101.8224
       0     2471        M 0x80000878 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 19, not taken
       0     2472        M 0x8000087c andi    a1, a4, 1              #; a4  = 19, (wrb) a1  <-- 1
       0     2473        M 0x80000880 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000870
                         M                                           #; (f:fpu) ft4  <-- 127.2780000
       0     2474        M 0x80000870 addi    a4, a4, 1              #; a4  = 19, (wrb) a4  <-- 20
       0     2475        M 0x80000874 addi    a5, a5, 8              #; a5  = 0x00100098, (wrb) a5  <-- 0x001000a0
       0     2476        M 0x80000878 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 20, not taken
       0     2477        M 0x8000087c andi    a1, a4, 1              #; a4  = 20, (wrb) a1  <-- 0
       0     2478        M 0x80000880 bnez    a1, pc - 16            #; a1  = 0, not taken
       0     2481        M 0x8000088c j       pc - 0x1c              #; goto 0x80000870
                         M 0x80000884 fld     ft5, 0(a5)             #; ft5  <~~ Doub[0x001000a0]
       0     2482        M 0x80000870 addi    a4, a4, 1              #; a4  = 20, (wrb) a4  <-- 21
                         M                                           #; (f:lsu) ft5  <-- 28.284
       0     2483        M 0x80000874 addi    a5, a5, 8              #; a5  = 0x001000a0, (wrb) a5  <-- 0x001000a8
                         M 0x80000888 fadd.d  ft4, ft5, ft4          #; ft5  = 28.284, ft4  = 127.2780000
       0     2484        M 0x80000878 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 21, not taken
       0     2485        M 0x8000087c andi    a1, a4, 1              #; a4  = 21, (wrb) a1  <-- 1
       0     2486        M 0x80000880 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000870
                         M                                           #; (f:fpu) ft4  <-- 155.5620000
       0     2487        M 0x80000870 addi    a4, a4, 1              #; a4  = 21, (wrb) a4  <-- 22
       0     2488        M 0x80000874 addi    a5, a5, 8              #; a5  = 0x001000a8, (wrb) a5  <-- 0x001000b0
       0     2489        M 0x80000878 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 22, not taken
       0     2490        M 0x8000087c andi    a1, a4, 1              #; a4  = 22, (wrb) a1  <-- 0
       0     2491        M 0x80000880 bnez    a1, pc - 16            #; a1  = 0, not taken
       0     2494        M 0x8000088c j       pc - 0x1c              #; goto 0x80000870
                         M 0x80000884 fld     ft5, 0(a5)             #; ft5  <~~ Doub[0x001000b0]
       0     2495        M 0x80000870 addi    a4, a4, 1              #; a4  = 22, (wrb) a4  <-- 23
                         M                                           #; (f:lsu) ft5  <-- 31.1124000
       0     2496        M 0x80000874 addi    a5, a5, 8              #; a5  = 0x001000b0, (wrb) a5  <-- 0x001000b8
                         M 0x80000888 fadd.d  ft4, ft5, ft4          #; ft5  = 31.1124000, ft4  = 155.5620000
       0     2497        M 0x80000878 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 23, not taken
       0     2498        M 0x8000087c andi    a1, a4, 1              #; a4  = 23, (wrb) a1  <-- 1
       0     2499        M 0x80000880 bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x80000870
                         M                                           #; (f:fpu) ft4  <-- 186.6744
       0     2500        M 0x80000870 addi    a4, a4, 1              #; a4  = 23, (wrb) a4  <-- 24
       0     2501        M 0x80000874 addi    a5, a5, 8              #; a5  = 0x001000b8, (wrb) a5  <-- 0x001000c0
       0     2502        M 0x80000878 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 24, not taken
       0     2503        M 0x8000087c andi    a1, a4, 1              #; a4  = 24, (wrb) a1  <-- 0
       0     2504        M 0x80000880 bnez    a1, pc - 16            #; a1  = 0, not taken
       0     2507        M 0x8000088c j       pc - 0x1c              #; goto 0x80000870
                         M 0x80000884 fld     ft5, 0(a5)             #; ft5  <~~ Doub[0x001000c0]
       0     2508        M 0x80000870 addi    a4, a4, 1              #; a4  = 24, (wrb) a4  <-- 25
                         M                                           #; (f:lsu) ft5  <-- 33.9408000
       0     2509        M 0x80000874 addi    a5, a5, 8              #; a5  = 0x001000c0, (wrb) a5  <-- 0x001000c8
                         M 0x80000888 fadd.d  ft4, ft5, ft4          #; ft5  = 33.9408000, ft4  = 186.6744
       0     2510        M 0x80000878 beq     a0, a4, pc + 24        #; a0  = 25, a4  = 25, taken, goto 0x80000890
       0     2512        M                                           #; (f:fpu) ft4  <-- 220.6152
       0     2522        M 0x80000890 addi    a4, a0, -1             #; a0  = 25, (wrb) a4  <-- 24
       0     2523        M 0x80000894 li      a1, 10                 #; (wrb) a1  <-- 10
       0     2524        M 0x80000898 mv      a5, a4                 #; a4  = 24, (wrb) a5  <-- 24
       0     2525        M 0x8000089c bltu    a4, a1, pc + 8         #; a4  = 24, a1  = 10, not taken
       0     2534        M 0x800008a0 li      a5, 10                 #; (wrb) a5  <-- 10
       0     2535        M 0x800008a4 slli    a1, a5, 3              #; a5  = 10, (wrb) a1  <-- 80
       0     2536        M 0x800008a8 add     a1, a1, t1             #; a1  = 80, t1  = 0x00100000, (wrb) a1  <-- 0x00100050
       0     2537        M 0x800008ac lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     2546        M 0x800008b0 addi    a2, a2, 1              #; a2  = 0x00120000, (wrb) a2  <-- 0x00120001
       0     2547        M 0x800008b4 sltu    a1, a1, a2             #; a1  = 0x00100050, a2  = 0x00120001, (wrb) a1  <-- 1
       0     2548        M 0x800008b8 and     a1, a6, a1             #; a6  = 1, a1  = 1, (wrb) a1  <-- 1
       0     2549        M 0x800008bc beqz    a1, pc + 68            #; a1  = 1, not taken
       0     2558        M 0x800008c0 li      a1, 8                  #; (wrb) a1  <-- 8
       0     2559        M 0x800008c4 li      a2, 64                 #; (wrb) a2  <-- 64
       0     2560        M 0x800008c8 li      a3, 192                #; (wrb) a3  <-- 192
       0     2561        M 0x800008cc scfgw   a5, a2                 #; a5  = 10, a2  = 64
       0     2570        M 0x800008d0 scfgw   a1, a3                 #; a1  = 8, a3  = 192
       0     2571        M 0x800008d4 li      a1, 32                 #; (wrb) a1  <-- 32
       0     2572        M 0x800008d8 scfgw   zero, a1               #; a1  = 32
       0     2573        M 0x800008dc scfgwi  t1, 768                #; t1  = 0x00100000
       0     2583        M 0x800008e4 addi    a2, a5, 1              #; a5  = 10, (wrb) a2  <-- 11
                         M 0x800008e0 csrrsi  a1, ssr, 1             #; 
       0     2585        M 0x800008ec addi    a2, a2, -1             #; a2  = 11, (wrb) a2  <-- 10
                         M 0x800008e8 fcvt.d.w ft5, zero             #; ac1  = 0
       0     2586        M                                           #; (f:fpu) ft5  <-- 0.0
       0     2595        M 0x800008f4 bnez    a2, pc - 8             #; a2  = 10, taken, goto 0x800008ec
       0     2596        M 0x800008ec addi    a2, a2, -1             #; a2  = 10, (wrb) a2  <-- 9
                         M 0x800008f0 fadd.d  ft5, ft0, ft5          #; ft0  = 0.0, ft5  = 0.0
       0     2598        M 0x800008f4 bnez    a2, pc - 8             #; a2  = 9, taken, goto 0x800008ec
       0     2599        M 0x800008ec addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
                         M                                           #; (f:fpu) ft5  <-- 0.0
       0     2600        M 0x800008f0 fadd.d  ft5, ft0, ft5          #; ft0  = 1.4142, ft5  = 0.0
       0     2601        M 0x800008f4 bnez    a2, pc - 8             #; a2  = 8, taken, goto 0x800008ec
       0     2602        M 0x800008ec addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
       0     2603        M                                           #; (f:fpu) ft5  <-- 1.4142
       0     2604        M 0x800008f4 bnez    a2, pc - 8             #; a2  = 7, taken, goto 0x800008ec
                         M 0x800008f0 fadd.d  ft5, ft0, ft5          #; ft0  = 2.8284, ft5  = 1.4142
       0     2605        M 0x800008ec addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
       0     2607        M 0x800008f4 bnez    a2, pc - 8             #; a2  = 6, taken, goto 0x800008ec
                         M                                           #; (f:fpu) ft5  <-- 4.2426000
       0     2608        M 0x800008ec addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800008f0 fadd.d  ft5, ft0, ft5          #; ft0  = 4.2426000, ft5  = 4.2426000
       0     2610        M 0x800008f4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x800008ec
       0     2611        M 0x800008ec addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M                                           #; (f:fpu) ft5  <-- 8.4852000
       0     2612        M 0x800008f0 fadd.d  ft5, ft0, ft5          #; ft0  = 5.6568, ft5  = 8.4852000
       0     2613        M 0x800008f4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x800008ec
       0     2614        M 0x800008ec addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
       0     2615        M                                           #; (f:fpu) ft5  <-- 14.142
       0     2616        M 0x800008f4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x800008ec
                         M 0x800008f0 fadd.d  ft5, ft0, ft5          #; ft0  = 7.071, ft5  = 14.142
       0     2617        M 0x800008ec addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
       0     2619        M 0x800008f4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x800008ec
                         M                                           #; (f:fpu) ft5  <-- 21.213
       0     2620        M 0x800008ec addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800008f0 fadd.d  ft5, ft0, ft5          #; ft0  = 8.4852000, ft5  = 21.213
       0     2622        M 0x800008f4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x800008ec
       0     2623        M 0x800008ec addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M                                           #; (f:fpu) ft5  <-- 29.6982
       0     2624        M 0x800008f0 fadd.d  ft5, ft0, ft5          #; ft0  = 9.8994, ft5  = 29.6982
       0     2625        M 0x800008f4 bnez    a2, pc - 8             #; a2  = 0, not taken
       0     2627        M 0x800008fc j       pc + 0x24              #; goto 0x80000920
                         M                                           #; (f:fpu) ft5  <-- 39.5976
       0     2628        M 0x800008f0 fadd.d  ft5, ft0, ft5          #; ft0  = 11.3136, ft5  = 39.5976
       0     2631        M                                           #; (f:fpu) ft5  <-- 50.9112
       0     2632        M 0x800008f0 fadd.d  ft5, ft0, ft5          #; ft0  = 12.7278000, ft5  = 50.9112
       0     2635        M                                           #; (f:fpu) ft5  <-- 63.6390000
       0     2636        M 0x800008f0 fadd.d  ft5, ft0, ft5          #; ft0  = 14.142, ft5  = 63.6390000
       0     2637        M 0x800008f8 csrrci  a1, ssr, 1             #; 
       0     2638        M 0x80000920 beqz    a7, pc + 96            #; a7  = 1, not taken
       0     2639        M 0x80000924 li      a1, 8                  #; (wrb) a1  <-- 8
                         M                                           #; (f:fpu) ft5  <-- 77.7810000
       0     2640        M 0x80000928 li      a2, 64                 #; (wrb) a2  <-- 64
       0     2641        M 0x8000092c li      a3, 192                #; (wrb) a3  <-- 192
       0     2650        M 0x80000930 scfgw   a4, a2                 #; a4  = 24, a2  = 64
       0     2651        M 0x80000934 scfgw   a1, a3                 #; a1  = 8, a3  = 192
       0     2652        M 0x80000938 li      a2, 32                 #; (wrb) a2  <-- 32
       0     2653        M 0x8000093c scfgw   zero, a2               #; a2  = 32, (acc) ra  <-- 0x00c020ab
       0     2662        M 0x80000940 scfgwi  t1, 768                #; t1  = 0x00100000
       0     2663        M 0x80000944 li      a2, 1                  #; (wrb) a2  <-- 1
       0     2664        M 0x80000948 addi    a3, a2, 64             #; a2  = 1, (wrb) a3  <-- 65
       0     2665        M 0x8000094c addi    a5, a2, 192            #; a2  = 1, (wrb) a5  <-- 193
       0     2674        M 0x80000950 scfgw   a4, a3                 #; a4  = 24, a3  = 65
       0     2675        M 0x80000954 scfgw   a1, a5                 #; a1  = 8, a5  = 193
       0     2676        M 0x80000958 addi    a1, a2, 32             #; a2  = 1, (wrb) a1  <-- 33
       0     2677        M 0x8000095c scfgw   zero, a1               #; a1  = 33, (acc) ra  <-- 0x00b020ab
       0     2686        M 0x80000960 scfgwi  t1, 769                #; t1  = 0x00100000
       0     2688        M 0x80000964 csrrsi  a1, ssr, 1             #; 
       0     2689        M 0x8000096c addi    a0, a0, -1             #; a0  = 25, (wrb) a0  <-- 24
                         M 0x80000968 fcvt.d.w ft6, zero             #; ac1  = 0
       0     2690        M                                           #; (f:fpu) ft6  <-- 0.0
       0     2699        M 0x80000974 bnez    a0, pc - 8             #; a0  = 24, taken, goto 0x8000096c
       0     2700        M 0x8000096c addi    a0, a0, -1             #; a0  = 24, (wrb) a0  <-- 23
                         M 0x80000970 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 0.0, ft0  = 0.0, ft6  = 0.0
       0     2702        M 0x80000974 bnez    a0, pc - 8             #; a0  = 23, taken, goto 0x8000096c
       0     2703        M 0x8000096c addi    a0, a0, -1             #; a0  = 23, (wrb) a0  <-- 22
                         M                                           #; (f:fpu) ft6  <-- 0.0
       0     2704        M 0x80000970 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 1.4142, ft0  = 1.4142, ft6  = 0.0
       0     2705        M 0x80000974 bnez    a0, pc - 8             #; a0  = 22, taken, goto 0x8000096c
       0     2706        M 0x8000096c addi    a0, a0, -1             #; a0  = 22, (wrb) a0  <-- 21
       0     2707        M                                           #; (f:fpu) ft6  <-- 1.9999616
       0     2708        M 0x80000974 bnez    a0, pc - 8             #; a0  = 21, taken, goto 0x8000096c
                         M 0x80000970 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 2.8284, ft0  = 2.8284, ft6  = 1.9999616
       0     2709        M 0x8000096c addi    a0, a0, -1             #; a0  = 21, (wrb) a0  <-- 20
       0     2711        M 0x80000974 bnez    a0, pc - 8             #; a0  = 20, taken, goto 0x8000096c
                         M                                           #; (f:fpu) ft6  <-- 9.9998082
       0     2712        M 0x8000096c addi    a0, a0, -1             #; a0  = 20, (wrb) a0  <-- 19
                         M 0x80000970 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 4.2426000, ft0  = 4.2426000, ft6  = 9.9998082
       0     2714        M 0x80000974 bnez    a0, pc - 8             #; a0  = 19, taken, goto 0x8000096c
       0     2715        M 0x8000096c addi    a0, a0, -1             #; a0  = 19, (wrb) a0  <-- 18
                         M                                           #; (f:fpu) ft6  <-- 27.9994630
       0     2716        M 0x80000970 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 5.6568, ft0  = 5.6568, ft6  = 27.9994630
       0     2717        M 0x80000974 bnez    a0, pc - 8             #; a0  = 18, taken, goto 0x8000096c
       0     2718        M 0x8000096c addi    a0, a0, -1             #; a0  = 18, (wrb) a0  <-- 17
       0     2719        M                                           #; (f:fpu) ft6  <-- 59.9988492
       0     2720        M 0x80000974 bnez    a0, pc - 8             #; a0  = 17, taken, goto 0x8000096c
                         M 0x80000970 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 7.071, ft0  = 7.071, ft6  = 59.9988492
       0     2721        M 0x8000096c addi    a0, a0, -1             #; a0  = 17, (wrb) a0  <-- 16
       0     2723        M 0x80000974 bnez    a0, pc - 8             #; a0  = 16, taken, goto 0x8000096c
                         M                                           #; (f:fpu) ft6  <-- 109.9978902
       0     2724        M 0x8000096c addi    a0, a0, -1             #; a0  = 16, (wrb) a0  <-- 15
                         M 0x80000970 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 8.4852000, ft0  = 8.4852000, ft6  = 109.9978902
       0     2726        M 0x80000974 bnez    a0, pc - 8             #; a0  = 15, taken, goto 0x8000096c
       0     2727        M 0x8000096c addi    a0, a0, -1             #; a0  = 15, (wrb) a0  <-- 14
                         M                                           #; (f:fpu) ft6  <-- 181.9965092
       0     2728        M 0x80000970 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 9.8994, ft0  = 9.8994, ft6  = 181.9965092
       0     2729        M 0x80000974 bnez    a0, pc - 8             #; a0  = 14, taken, goto 0x8000096c
       0     2730        M 0x8000096c addi    a0, a0, -1             #; a0  = 14, (wrb) a0  <-- 13
       0     2731        M                                           #; (f:fpu) ft6  <-- 279.9946296
       0     2732        M 0x80000974 bnez    a0, pc - 8             #; a0  = 13, taken, goto 0x8000096c
                         M 0x80000970 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 11.3136, ft0  = 11.3136, ft6  = 279.9946296
       0     2733        M 0x8000096c addi    a0, a0, -1             #; a0  = 13, (wrb) a0  <-- 12
       0     2735        M 0x80000974 bnez    a0, pc - 8             #; a0  = 12, taken, goto 0x8000096c
                         M                                           #; (f:fpu) ft6  <-- 407.9921746
       0     2736        M 0x8000096c addi    a0, a0, -1             #; a0  = 12, (wrb) a0  <-- 11
                         M 0x80000970 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 12.7278000, ft0  = 12.7278000, ft6  = 407.9921746
       0     2738        M 0x80000974 bnez    a0, pc - 8             #; a0  = 11, taken, goto 0x8000096c
       0     2739        M 0x8000096c addi    a0, a0, -1             #; a0  = 11, (wrb) a0  <-- 10
                         M                                           #; (f:fpu) ft6  <-- 569.9890674
       0     2740        M 0x80000970 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 14.142, ft0  = 14.142, ft6  = 569.9890674
       0     2741        M 0x80000974 bnez    a0, pc - 8             #; a0  = 10, taken, goto 0x8000096c
       0     2742        M 0x8000096c addi    a0, a0, -1             #; a0  = 10, (wrb) a0  <-- 9
       0     2743        M                                           #; (f:fpu) ft6  <-- 769.9852314
       0     2744        M 0x80000974 bnez    a0, pc - 8             #; a0  = 9, taken, goto 0x8000096c
                         M 0x80000970 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 15.5562000, ft0  = 15.5562000, ft6  = 769.9852314
       0     2745        M 0x8000096c addi    a0, a0, -1             #; a0  = 9, (wrb) a0  <-- 8
       0     2747        M 0x80000974 bnez    a0, pc - 8             #; a0  = 8, taken, goto 0x8000096c
                         M                                           #; (f:fpu) ft6  <-- 1011.9805898
       0     2748        M 0x8000096c addi    a0, a0, -1             #; a0  = 8, (wrb) a0  <-- 7
                         M 0x80000970 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 16.9704000, ft0  = 16.9704000, ft6  = 1011.9805898
       0     2750        M 0x80000974 bnez    a0, pc - 8             #; a0  = 7, taken, goto 0x8000096c
       0     2751        M 0x8000096c addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
                         M                                           #; (f:fpu) ft6  <-- 1299.9750660
       0     2752        M 0x80000970 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 18.3846, ft0  = 18.3846, ft6  = 1299.9750660
       0     2753        M 0x80000974 bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x8000096c
       0     2754        M 0x8000096c addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
       0     2755        M                                           #; (f:fpu) ft6  <-- 1637.9685832
       0     2756        M 0x80000974 bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x8000096c
                         M 0x80000970 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 19.7988, ft0  = 19.7988, ft6  = 1637.9685832
       0     2757        M 0x8000096c addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
       0     2759        M 0x80000974 bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x8000096c
                         M                                           #; (f:fpu) ft6  <-- 2029.9610646
       0     2760        M 0x8000096c addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
                         M 0x80000970 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 21.2130000, ft0  = 21.2130000, ft6  = 2029.9610646
       0     2762        M 0x80000974 bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x8000096c
       0     2763        M 0x8000096c addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
                         M                                           #; (f:fpu) ft6  <-- 2479.9524336
       0     2764        M 0x80000970 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 22.6272, ft0  = 22.6272, ft6  = 2479.9524336
       0     2765        M 0x80000974 bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x8000096c
       0     2766        M 0x8000096c addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
       0     2767        M                                           #; (f:fpu) ft6  <-- 2991.9426134
       0     2768        M 0x80000974 bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x8000096c
                         M 0x80000970 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 24.0414, ft0  = 24.0414, ft6  = 2991.9426134
       0     2769        M 0x8000096c addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
       0     2771        M 0x80000974 bnez    a0, pc - 8             #; a0  = 0, not taken
                         M                                           #; (f:fpu) ft6  <-- 3569.9315274
       0     2772        M 0x80000970 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 25.4556000, ft0  = 25.4556000, ft6  = 3569.9315274
       0     2773        M 0x8000097c j       pc + 0x1c              #; goto 0x80000998
       0     2775        M                                           #; (f:fpu) ft6  <-- 4217.9190988
       0     2776        M 0x80000970 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 26.8698000, ft0  = 26.8698000, ft6  = 4217.9190988
       0     2779        M                                           #; (f:fpu) ft6  <-- 4939.9052508
       0     2780        M 0x80000970 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 28.284, ft0  = 28.284, ft6  = 4939.9052508
       0     2783        M                                           #; (f:fpu) ft6  <-- 5739.8899068
       0     2784        M 0x80000998 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002998
                         M 0x80000970 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 29.6982000, ft0  = 29.6982000, ft6  = 5739.8899068
       0     2785        M 0x8000099c addi    a0, a0, 1616           #; a0  = 0x80002998, (wrb) a0  <-- 0x80002fe8
       0     2787        M                                           #; (f:fpu) ft6  <-- 6621.8729900
       0     2788        M 0x80000970 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 31.1124000, ft0  = 31.1124000, ft6  = 6621.8729900
       0     2791        M                                           #; (f:fpu) ft6  <-- 7589.8544238
       0     2792        M 0x80000970 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 32.5266000, ft0  = 32.5266000, ft6  = 7589.8544238
       0     2795        M                                           #; (f:fpu) ft6  <-- 8647.8341314
       0     2796        M 0x80000970 fmadd.d ft6, ft1, ft0, ft6     #; ft1  = 33.9408000, ft0  = 33.9408000, ft6  = 8647.8341314
       0     2797        M 0x800009a4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800029a4
                         M 0x80000978 csrrci  a0, ssr, 1             #; 
       0     2798        M 0x800009a8 addi    a0, a0, 1596           #; a0  = 0x800029a4, (wrb) a0  <-- 0x80002fe0
       0     2799        M 0x800009a0 fld     ft7, 0(a0)             #; ft7  <~~ Doub[0x80002fe8], (f:fpu) ft6  <-- 9799.8120360
       0     2801        M 0x800009ac fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x80002fe0]
       0     2809        M 0x800009b4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800029b4
                         M                                           #; (f:lsu) ft7  <-- -220.6152000
       0     2810        M 0x800009b8 addi    a0, a0, 1596           #; a0  = 0x800029b4, (wrb) a0  <-- 0x80002ff0
                         M 0x800009b0 fadd.d  ft4, ft4, ft7          #; ft4  = 220.6152, ft7  = -220.6152000, (f:lsu) fa0  <-- -9799.8120360
       0     2813        M 0x800009bc fld     ft7, 0(a0)             #; ft7  <~~ Doub[0x80002ff0], (f:fpu) ft4  <-- 0.0
       0     2822        M 0x800009c0 fadd.d  ft3, ft3, fa0          #; ft3  = 9799.8120360, fa0  = -9799.8120360, (f:lsu) ft7  <-- -77.781
       0     2825        M                                           #; (f:fpu) ft3  <-- -0.0000000
       0     2826        M 0x800009c4 fsgnjx.d ft3, ft3, ft3         #; ft3  = -0.0000000, ft3  = -0.0000000
       0     2827        M 0x800009c8 fsgnjx.d ft4, ft4, ft4         #; ft4  = 0.0, ft4  = 0.0, (f:fpu) ft3  <-- 0.0000000
       0     2828        M 0x800009cc fadd.d  ft5, ft5, ft7          #; ft5  = 77.7810000, ft7  = -77.781, (f:fpu) ft4  <-- 0.0
       0     2831        M                                           #; (f:fpu) ft5  <-- -0.0000000
       0     2834        M 0x800009d0 fsgnjx.d ft5, ft5, ft5         #; ft5  = -0.0000000, ft5  = -0.0000000
       0     2835        M 0x800009d4 fadd.d  ft6, ft6, fa0          #; ft6  = 9799.8120360, fa0  = -9799.8120360, (f:fpu) ft5  <-- 0.0000000
       0     2838        M                                           #; (f:fpu) ft6  <-- -0.0000000
       0     2839        M 0x800009d8 fsgnjx.d ft6, ft6, ft6         #; ft6  = -0.0000000, ft6  = -0.0000000
       0     2840        M 0x800009dc fadd.d  ft3, ft3, ft5          #; ft3  = 0.0000000, ft5  = 0.0000000, (f:fpu) ft6  <-- 0.0000000
       0     2843        M                                           #; (f:fpu) ft3  <-- 0.0000000
       0     2846        M 0x800009e0 fadd.d  ft3, ft3, ft4          #; ft3  = 0.0000000, ft4  = 0.0
       0     2847        M 0x800009ec lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
       0     2849        M                                           #; (f:fpu) ft3  <-- 0.0000000
       0     2850        M                                           #; (lsu) a2  <-- 0
                         M 0x800009e4 fadd.d  fs0, ft3, ft6          #; ft3  = 0.0000000, ft6  = 0.0000000
       0     2853        M                                           #; (f:fpu) fs0  <-- 0.0000000
       0     2854        M 0x800009e8 fsd     fs0, 8(sp)             #; 0.0000000 ~~> Doub[0x0011ff48]
       0     2856        M 0x800009f0 lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
       0     2857        M 0x800009f4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800029f4
       0     2858        M 0x800009f8 addi    a0, a0, 817            #; a0  = 0x800029f4, (wrb) a0  <-- 0x80002d25
       0     2859        M 0x800009fc auipc   ra, 0x0                #; (wrb) ra  <-- 0x800009fc
       0     2860        M                                           #; (lsu) a3  <-- 0x3d901000
       0     2868        M 0x80000a00 jalr    ra, ra, 40             #; ra  = 0x800009fc, (wrb) ra  <-- 0x80000a04, goto 0x80000a24
       0     2891        M 0x80000a24 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     2892        M 0x80000a28 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000a04 ~~> Word[0x0011ff1c]
       0     2893        M 0x80000a2c mv      t0, a0                 #; a0  = 0x80002d25, (wrb) t0  <-- 0x80002d25
       0     2903        M 0x80000a30 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff3c]
       0     2904        M 0x80000a34 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff38]
       0     2905        M 0x80000a38 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 193 ~~> Word[0x0011ff34]
       0     2906        M 0x80000a3c sw      a4, 32(sp)             #; sp  = 0x0011ff10, 24 ~~> Word[0x0011ff30]
       0     2915        M 0x80000a40 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0x3d901000 ~~> Word[0x0011ff2c]
       0     2916        M 0x80000a44 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     2917        M 0x80000a48 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 33 ~~> Word[0x0011ff24]
       0     2918        M 0x80000a4c addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     2927        M 0x80000a50 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     2928        M 0x80000a54 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001a54
       0     2929        M 0x80000a58 addi    a0, a0, -988           #; a0  = 0x80001a54, (wrb) a0  <-- 0x80001678
       0     2930        M 0x80000a5c addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     2939        M 0x80000a60 li      a2, -1                 #; (wrb) a2  <-- -1
       0     2940        M 0x80000a64 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     2941        M 0x80000a68 mv      a3, t0                 #; t0  = 0x80002d25, (wrb) a3  <-- 0x80002d25
       0     2942        M 0x80000a6c auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a6c
       0     2951        M 0x80000a70 jalr    ra, ra, 20             #; ra  = 0x80000a6c, (wrb) ra  <-- 0x80000a74, goto 0x80000a80
       0     2963        M 0x80000a80 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     2964        M 0x80000a84 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000a74 ~~> Word[0x0011ff0c]
       0     2965        M 0x80000a88 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
       0     2966        M 0x80000a8c sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     2975        M 0x80000a90 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     2976        M 0x80000a94 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     2977        M 0x80000a98 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     2978        M 0x80000a9c sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     2987        M 0x80000aa0 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     2988        M 0x80000aa4 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     2989        M 0x80000aa8 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     2990        M 0x80000aac sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     2999        M 0x80000ab0 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     3000        M 0x80000ab4 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     3001        M 0x80000ab8 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     3002        M 0x80000abc mv      s0, a3                 #; a3  = 0x80002d25, (wrb) s0  <-- 0x80002d25
       0     3011        M 0x80000ac0 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     3012        M 0x80000ac4 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     3013        M 0x80000ac8 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     3014        M 0x80000acc mv      s2, a0                 #; a0  = 0x80001678, (wrb) s2  <-- 0x80001678
       0     3023        M 0x80000ad0 j       pc + 0xc               #; goto 0x80000adc
       0     3024        M 0x80000adc li      s8, 0                  #; (wrb) s8  <-- 0
       0     3036        M 0x80000ae0 li      s6, 37                 #; (wrb) s6  <-- 37
       0     3037        M 0x80000ae4 li      s11, 16                #; (wrb) s11 <-- 16
       0     3038        M 0x80000ae8 li      s7, 46                 #; (wrb) s7  <-- 46
       0     3039        M 0x80000aec lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     3048        M 0x80000af0 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     3049        M 0x80000af4 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     3050        M 0x80000af8 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     3051        M 0x80000afc addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     3060        M 0x80000b00 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     3061        M 0x80000b04 addi    s10, s0, 2             #; s0  = 0x80002d25, (wrb) s10 <-- 0x80002d27
       0     3062        M 0x80000b08 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     3063        M 0x80000b0c li      s8, 10                 #; (wrb) s8  <-- 10
       0     3072        M 0x80000b10 lbu     a0, 0(s0)              #; s0  = 0x80002d25, a0  <~~ Byte[0x80002d25]
       0     3083        M                                           #; (lsu) a0  <-- 101
       0     3084        M 0x80000b14 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     3085        M 0x80000b18 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     3086        M 0x80000b1c addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     3087        M 0x80000b20 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3088        M 0x80000b24 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     3089        M 0x80000b28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3090        M 0x80000b2c jalr    s2                     #; s2  = 0x80001678, (wrb) ra  <-- 0x80000b30, goto 0x80001678
       0     3110        M 0x80001678 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     3111        M 0x8000167c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3122        M 0x80001680 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3123        M 0x80001684 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3124        M 0x80001688 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003688
       0     3125        M 0x8000168c addi    a3, a3, -1500          #; a3  = 0x80003688, (wrb) a3  <-- 0x800030ac
       0     3134        M 0x80001690 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     3135        M 0x80001694 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3146        M                                           #; (lsu) a4  <-- 0
       0     3147        M 0x80001698 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     3148        M 0x8000169c sw      a5, 0(a1)              #; a1  = 0x800030ac, 1 ~~> Word[0x800030ac]
       0     3149        M 0x800016a0 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 0, (wrb) a4  <-- 0x800030ac
       0     3150        M 0x800016a4 sb      a0, 72(a4)             #; a4  = 0x800030ac, 101 ~~> Byte[0x800030f4]
       0     3151        M 0x800016a8 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3172        M                                           #; (lsu) a4  <-- 1
       0     3173        M 0x800016ac addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     3174        M 0x800016b0 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     3175        M 0x800016b4 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     3176        M 0x800016b8 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     3177        M 0x800016bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3186        M 0x800016c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001720
       0     3209        M 0x80001720 ret                            #; ra  = 0x80000b30, goto 0x80000b30
       0     3223        M 0x80000b30 addi    s0, s0, 1              #; s0  = 0x80002d25, (wrb) s0  <-- 0x80002d26
       0     3224        M 0x80000b34 addi    s10, s10, 1            #; s10 = 0x80002d27, (wrb) s10 <-- 0x80002d28
       0     3225        M 0x80000b38 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     3226        M 0x80000b3c lbu     a0, 0(s0)              #; s0  = 0x80002d26, a0  <~~ Byte[0x80002d26]
       0     3237        M                                           #; (lsu) a0  <-- 114
       0     3238        M 0x80000b40 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b18
       0     3239        M 0x80000b18 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     3240        M 0x80000b1c addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     3242        M 0x80000b20 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3243        M 0x80000b24 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     3244        M 0x80000b28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3245        M 0x80000b2c jalr    s2                     #; s2  = 0x80001678, (wrb) ra  <-- 0x80000b30, goto 0x80001678
       0     3248        M 0x80001678 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     3249        M 0x8000167c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3251        M 0x80001680 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3252        M 0x80001684 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3253        M 0x80001688 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003688
       0     3254        M 0x8000168c addi    a3, a3, -1500          #; a3  = 0x80003688, (wrb) a3  <-- 0x800030ac
       0     3255        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3256        M 0x80001690 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     3257        M 0x80001694 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3268        M                                           #; (lsu) a4  <-- 1
       0     3269        M 0x80001698 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     3270        M 0x8000169c sw      a5, 0(a1)              #; a1  = 0x800030ac, 2 ~~> Word[0x800030ac]
       0     3271        M 0x800016a0 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 1, (wrb) a4  <-- 0x800030ad
       0     3272        M 0x800016a4 sb      a0, 72(a4)             #; a4  = 0x800030ad, 114 ~~> Byte[0x800030f5]
       0     3273        M 0x800016a8 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3294        M                                           #; (lsu) a4  <-- 2
       0     3295        M 0x800016ac addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     3296        M 0x800016b0 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     3297        M 0x800016b4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     3298        M 0x800016b8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     3299        M 0x800016bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3300        M 0x800016c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001720
       0     3305        M 0x80001720 ret                            #; ra  = 0x80000b30, goto 0x80000b30
       0     3310        M 0x80000b30 addi    s0, s0, 1              #; s0  = 0x80002d26, (wrb) s0  <-- 0x80002d27
       0     3311        M 0x80000b34 addi    s10, s10, 1            #; s10 = 0x80002d28, (wrb) s10 <-- 0x80002d29
       0     3312        M 0x80000b38 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     3313        M 0x80000b3c lbu     a0, 0(s0)              #; s0  = 0x80002d27, a0  <~~ Byte[0x80002d27]
       0     3324        M                                           #; (lsu) a0  <-- 114
       0     3325        M 0x80000b40 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b18
       0     3326        M 0x80000b18 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     3327        M 0x80000b1c addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     3329        M 0x80000b20 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3330        M 0x80000b24 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     3331        M 0x80000b28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3332        M 0x80000b2c jalr    s2                     #; s2  = 0x80001678, (wrb) ra  <-- 0x80000b30, goto 0x80001678
       0     3335        M 0x80001678 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     3336        M 0x8000167c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3338        M 0x80001680 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3339        M 0x80001684 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3340        M 0x80001688 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003688
       0     3341        M 0x8000168c addi    a3, a3, -1500          #; a3  = 0x80003688, (wrb) a3  <-- 0x800030ac
       0     3342        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3343        M 0x80001690 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     3344        M 0x80001694 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3355        M                                           #; (lsu) a4  <-- 2
       0     3356        M 0x80001698 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     3357        M 0x8000169c sw      a5, 0(a1)              #; a1  = 0x800030ac, 3 ~~> Word[0x800030ac]
       0     3358        M 0x800016a0 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 2, (wrb) a4  <-- 0x800030ae
       0     3359        M 0x800016a4 sb      a0, 72(a4)             #; a4  = 0x800030ae, 114 ~~> Byte[0x800030f6]
       0     3360        M 0x800016a8 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3381        M                                           #; (lsu) a4  <-- 3
       0     3382        M 0x800016ac addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     3383        M 0x800016b0 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     3384        M 0x800016b4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     3385        M 0x800016b8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     3386        M 0x800016bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3387        M 0x800016c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001720
       0     3392        M 0x80001720 ret                            #; ra  = 0x80000b30, goto 0x80000b30
       0     3397        M 0x80000b30 addi    s0, s0, 1              #; s0  = 0x80002d27, (wrb) s0  <-- 0x80002d28
       0     3398        M 0x80000b34 addi    s10, s10, 1            #; s10 = 0x80002d29, (wrb) s10 <-- 0x80002d2a
       0     3399        M 0x80000b38 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     3400        M 0x80000b3c lbu     a0, 0(s0)              #; s0  = 0x80002d28, a0  <~~ Byte[0x80002d28]
       0     3411        M                                           #; (lsu) a0  <-- 111
       0     3412        M 0x80000b40 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000b18
       0     3413        M 0x80000b18 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     3414        M 0x80000b1c addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     3416        M 0x80000b20 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3417        M 0x80000b24 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     3418        M 0x80000b28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3419        M 0x80000b2c jalr    s2                     #; s2  = 0x80001678, (wrb) ra  <-- 0x80000b30, goto 0x80001678
       0     3422        M 0x80001678 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     3423        M 0x8000167c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3425        M 0x80001680 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3426        M 0x80001684 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3427        M 0x80001688 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003688
       0     3428        M 0x8000168c addi    a3, a3, -1500          #; a3  = 0x80003688, (wrb) a3  <-- 0x800030ac
       0     3429        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3430        M 0x80001690 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     3431        M 0x80001694 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3442        M                                           #; (lsu) a4  <-- 3
       0     3443        M 0x80001698 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     3444        M 0x8000169c sw      a5, 0(a1)              #; a1  = 0x800030ac, 4 ~~> Word[0x800030ac]
       0     3445        M 0x800016a0 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 3, (wrb) a4  <-- 0x800030af
       0     3446        M 0x800016a4 sb      a0, 72(a4)             #; a4  = 0x800030af, 111 ~~> Byte[0x800030f7]
       0     3447        M 0x800016a8 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3468        M                                           #; (lsu) a4  <-- 4
       0     3469        M 0x800016ac addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     3470        M 0x800016b0 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     3471        M 0x800016b4 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     3472        M 0x800016b8 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     3473        M 0x800016bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3474        M 0x800016c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001720
       0     3479        M 0x80001720 ret                            #; ra  = 0x80000b30, goto 0x80000b30
       0     3484        M 0x80000b30 addi    s0, s0, 1              #; s0  = 0x80002d28, (wrb) s0  <-- 0x80002d29
       0     3485        M 0x80000b34 addi    s10, s10, 1            #; s10 = 0x80002d2a, (wrb) s10 <-- 0x80002d2b
       0     3486        M 0x80000b38 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     3487        M 0x80000b3c lbu     a0, 0(s0)              #; s0  = 0x80002d29, a0  <~~ Byte[0x80002d29]
       0     3498        M                                           #; (lsu) a0  <-- 114
       0     3499        M 0x80000b40 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b18
       0     3500        M 0x80000b18 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     3501        M 0x80000b1c addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     3503        M 0x80000b20 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3504        M 0x80000b24 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     3505        M 0x80000b28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3506        M 0x80000b2c jalr    s2                     #; s2  = 0x80001678, (wrb) ra  <-- 0x80000b30, goto 0x80001678
       0     3509        M 0x80001678 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     3510        M 0x8000167c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3512        M 0x80001680 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3513        M 0x80001684 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3514        M 0x80001688 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003688
       0     3515        M 0x8000168c addi    a3, a3, -1500          #; a3  = 0x80003688, (wrb) a3  <-- 0x800030ac
       0     3516        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3517        M 0x80001690 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     3518        M 0x80001694 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3529        M                                           #; (lsu) a4  <-- 4
       0     3530        M 0x80001698 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     3531        M 0x8000169c sw      a5, 0(a1)              #; a1  = 0x800030ac, 5 ~~> Word[0x800030ac]
       0     3532        M 0x800016a0 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 4, (wrb) a4  <-- 0x800030b0
       0     3533        M 0x800016a4 sb      a0, 72(a4)             #; a4  = 0x800030b0, 114 ~~> Byte[0x800030f8]
       0     3534        M 0x800016a8 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3555        M                                           #; (lsu) a4  <-- 5
       0     3556        M 0x800016ac addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     3557        M 0x800016b0 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     3558        M 0x800016b4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     3559        M 0x800016b8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     3560        M 0x800016bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3561        M 0x800016c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001720
       0     3566        M 0x80001720 ret                            #; ra  = 0x80000b30, goto 0x80000b30
       0     3571        M 0x80000b30 addi    s0, s0, 1              #; s0  = 0x80002d29, (wrb) s0  <-- 0x80002d2a
       0     3572        M 0x80000b34 addi    s10, s10, 1            #; s10 = 0x80002d2b, (wrb) s10 <-- 0x80002d2c
       0     3573        M 0x80000b38 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     3574        M 0x80000b3c lbu     a0, 0(s0)              #; s0  = 0x80002d2a, a0  <~~ Byte[0x80002d2a]
       0     3585        M                                           #; (lsu) a0  <-- 32
       0     3586        M 0x80000b40 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000b18
       0     3587        M 0x80000b18 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3588        M 0x80000b1c addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     3590        M 0x80000b20 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3591        M 0x80000b24 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     3592        M 0x80000b28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3593        M 0x80000b2c jalr    s2                     #; s2  = 0x80001678, (wrb) ra  <-- 0x80000b30, goto 0x80001678
       0     3596        M 0x80001678 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3597        M 0x8000167c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3599        M 0x80001680 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3600        M 0x80001684 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3601        M 0x80001688 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003688
       0     3602        M 0x8000168c addi    a3, a3, -1500          #; a3  = 0x80003688, (wrb) a3  <-- 0x800030ac
       0     3603        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3604        M 0x80001690 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     3605        M 0x80001694 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3616        M                                           #; (lsu) a4  <-- 5
       0     3617        M 0x80001698 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     3618        M 0x8000169c sw      a5, 0(a1)              #; a1  = 0x800030ac, 6 ~~> Word[0x800030ac]
       0     3619        M 0x800016a0 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 5, (wrb) a4  <-- 0x800030b1
       0     3620        M 0x800016a4 sb      a0, 72(a4)             #; a4  = 0x800030b1, 32 ~~> Byte[0x800030f9]
       0     3621        M 0x800016a8 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3642        M                                           #; (lsu) a4  <-- 6
       0     3643        M 0x800016ac addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     3644        M 0x800016b0 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     3645        M 0x800016b4 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3646        M 0x800016b8 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3647        M 0x800016bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3648        M 0x800016c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001720
       0     3653        M 0x80001720 ret                            #; ra  = 0x80000b30, goto 0x80000b30
       0     3658        M 0x80000b30 addi    s0, s0, 1              #; s0  = 0x80002d2a, (wrb) s0  <-- 0x80002d2b
       0     3659        M 0x80000b34 addi    s10, s10, 1            #; s10 = 0x80002d2c, (wrb) s10 <-- 0x80002d2d
       0     3660        M 0x80000b38 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     3661        M 0x80000b3c lbu     a0, 0(s0)              #; s0  = 0x80002d2b, a0  <~~ Byte[0x80002d2b]
       0     3672        M                                           #; (lsu) a0  <-- 61
       0     3673        M 0x80000b40 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000b18
       0     3674        M 0x80000b18 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     3675        M 0x80000b1c addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     3677        M 0x80000b20 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3678        M 0x80000b24 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     3679        M 0x80000b28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3680        M 0x80000b2c jalr    s2                     #; s2  = 0x80001678, (wrb) ra  <-- 0x80000b30, goto 0x80001678
       0     3683        M 0x80001678 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     3684        M 0x8000167c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3686        M 0x80001680 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3687        M 0x80001684 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3688        M 0x80001688 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003688
       0     3689        M 0x8000168c addi    a3, a3, -1500          #; a3  = 0x80003688, (wrb) a3  <-- 0x800030ac
       0     3690        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3691        M 0x80001690 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     3692        M 0x80001694 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3703        M                                           #; (lsu) a4  <-- 6
       0     3704        M 0x80001698 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     3705        M 0x8000169c sw      a5, 0(a1)              #; a1  = 0x800030ac, 7 ~~> Word[0x800030ac]
       0     3706        M 0x800016a0 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 6, (wrb) a4  <-- 0x800030b2
       0     3707        M 0x800016a4 sb      a0, 72(a4)             #; a4  = 0x800030b2, 61 ~~> Byte[0x800030fa]
       0     3708        M 0x800016a8 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3729        M                                           #; (lsu) a4  <-- 7
       0     3730        M 0x800016ac addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     3731        M 0x800016b0 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     3732        M 0x800016b4 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     3733        M 0x800016b8 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     3734        M 0x800016bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3735        M 0x800016c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001720
       0     3740        M 0x80001720 ret                            #; ra  = 0x80000b30, goto 0x80000b30
       0     3745        M 0x80000b30 addi    s0, s0, 1              #; s0  = 0x80002d2b, (wrb) s0  <-- 0x80002d2c
       0     3746        M 0x80000b34 addi    s10, s10, 1            #; s10 = 0x80002d2d, (wrb) s10 <-- 0x80002d2e
       0     3747        M 0x80000b38 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     3748        M 0x80000b3c lbu     a0, 0(s0)              #; s0  = 0x80002d2c, a0  <~~ Byte[0x80002d2c]
       0     3759        M                                           #; (lsu) a0  <-- 32
       0     3760        M 0x80000b40 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000b18
       0     3761        M 0x80000b18 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3762        M 0x80000b1c addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     3764        M 0x80000b20 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3765        M 0x80000b24 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     3766        M 0x80000b28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3767        M 0x80000b2c jalr    s2                     #; s2  = 0x80001678, (wrb) ra  <-- 0x80000b30, goto 0x80001678
       0     3770        M 0x80001678 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3771        M 0x8000167c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3773        M 0x80001680 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3774        M 0x80001684 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3775        M 0x80001688 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003688
       0     3776        M 0x8000168c addi    a3, a3, -1500          #; a3  = 0x80003688, (wrb) a3  <-- 0x800030ac
       0     3777        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3778        M 0x80001690 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     3779        M 0x80001694 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3790        M                                           #; (lsu) a4  <-- 7
       0     3791        M 0x80001698 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     3792        M 0x8000169c sw      a5, 0(a1)              #; a1  = 0x800030ac, 8 ~~> Word[0x800030ac]
       0     3793        M 0x800016a0 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 7, (wrb) a4  <-- 0x800030b3
       0     3794        M 0x800016a4 sb      a0, 72(a4)             #; a4  = 0x800030b3, 32 ~~> Byte[0x800030fb]
       0     3795        M 0x800016a8 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     3816        M                                           #; (lsu) a4  <-- 8
       0     3817        M 0x800016ac addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     3818        M 0x800016b0 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     3819        M 0x800016b4 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3820        M 0x800016b8 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3821        M 0x800016bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3822        M 0x800016c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001720
       0     3827        M 0x80001720 ret                            #; ra  = 0x80000b30, goto 0x80000b30
       0     3832        M 0x80000b30 addi    s0, s0, 1              #; s0  = 0x80002d2c, (wrb) s0  <-- 0x80002d2d
       0     3833        M 0x80000b34 addi    s10, s10, 1            #; s10 = 0x80002d2e, (wrb) s10 <-- 0x80002d2f
       0     3834        M 0x80000b38 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     3835        M 0x80000b3c lbu     a0, 0(s0)              #; s0  = 0x80002d2d, a0  <~~ Byte[0x80002d2d]
       0     3846        M                                           #; (lsu) a0  <-- 37
       0     3847        M 0x80000b40 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000b18
       0     3848        M 0x80000b18 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000b48
       0     3849        M 0x80000b48 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3850        M 0x80000b4c j       pc + 0x10              #; goto 0x80000b5c
       0     3862        M 0x80000b5c lbu     a0, -1(s10)            #; s10 = 0x80002d2f, a0  <~~ Byte[0x80002d2e]
       0     3873        M                                           #; (lsu) a0  <-- 102
       0     3874        M 0x80000b60 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     3875        M 0x80000b64 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000b9c
       0     3897        M 0x80000b9c addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     3909        M 0x80000ba0 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     3910        M 0x80000ba4 addi    a1, s10, -1            #; s10 = 0x80002d2f, (wrb) a1  <-- 0x80002d2e
       0     3911        M 0x80000ba8 li      a3, 9                  #; (wrb) a3  <-- 9
       0     3912        M 0x80000bac bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000c28
       0     3932        M 0x80000c28 li      a2, 42                 #; (wrb) a2  <-- 42
       0     3933        M 0x80000c2c bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000c7c
       0     3955        M 0x80000c7c li      s6, 0                  #; (wrb) s6  <-- 0
       0     3967        M 0x80000c80 mv      s10, a1                #; a1  = 0x80002d2e, (wrb) s10 <-- 0x80002d2e
       0     3968        M 0x80000c84 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     3969        M 0x80000c88 li      s7, 0                  #; (wrb) s7  <-- 0
       0     3970        M 0x80000c8c j       pc + 0xc               #; goto 0x80000c98
       0     3990        M 0x80000c98 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     3991        M 0x80000c9c srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     4002        M 0x80000ca0 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     4003        M 0x80000ca4 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     4004        M 0x80000ca8 li      a2, 9                  #; (wrb) a2  <-- 9
       0     4005        M 0x80000cac bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000d10
       0     4025        M 0x80000d10 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     4026        M 0x80000d14 li      a2, 83                 #; (wrb) a2  <-- 83
       0     4027        M 0x80000d18 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     4028        M 0x80000d1c slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     4037        M 0x80000d20 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002d20
       0     4038        M 0x80000d24 addi    a2, a2, 132            #; a2  = 0x80002d20, (wrb) a2  <-- 0x80002da4
       0     4039        M 0x80000d28 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002da4, (wrb) a1  <-- 0x80002ea8
       0     4040        M 0x80000d2c lw      a2, 0(a1)              #; a1  = 0x80002ea8, a2  <~~ Word[0x80002ea8]
       0     4049        M 0x80000d30 li      a1, 8                  #; (wrb) a1  <-- 8
       0     4050        M 0x80000d34 li      s8, 16                 #; (wrb) s8  <-- 16
       0     4051        M                                           #; (lsu) a2  <-- 0x80000d68
       0     4052        M 0x80000d38 jr      a2                     #; a2  = 0x80000d68, goto 0x80000d68
       0     4072        M 0x80000d68 li      a1, 70                 #; (wrb) a1  <-- 70
       0     4073        M 0x80000d6c bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000d74
       0     4084        M 0x80000d74 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     4085        M 0x80000d78 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     4088        M 0x80000d7c fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     4089        M                                           #; (f:lsu) fa0  <-- 0.0000000
       0     4096        M 0x80000d80 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     4097        M 0x80000d84 mv      a0, s2                 #; s2  = 0x80001678, (wrb) a0  <-- 0x80001678
       0     4098        M 0x80000d88 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4099        M 0x80000d8c mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     4108        M 0x80000d90 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4109        M 0x80000d94 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     4110        M 0x80000d98 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     4111        M 0x80000d9c mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     4120        M 0x80000da0 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001da0
       0     4121        M 0x80000da4 jalr    ra, ra, -1656          #; ra  = 0x80001da0, (wrb) ra  <-- 0x80000da8, goto 0x80001728
       0     4134        M 0x80001728 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     4135        M 0x8000172c sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000da8 ~~> Word[0x0011fe9c]
       0     4137        M 0x80001730 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     4138        M 0x80001734 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     4139        M 0x80001738 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001678 ~~> Word[0x0011fe90]
       0     4140        M 0x8000173c sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     4149        M 0x80001740 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     4150        M 0x80001744 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     4151        M 0x80001748 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     4152        M 0x8000174c sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     4161        M 0x80001750 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     4162        M 0x80001754 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     4163        M 0x80001758 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002d2e ~~> Word[0x0011fe70]
       0     4166        M 0x8000175c fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe68]
       0     4175        M 0x80001768 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003768
                         M 0x80001760 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     4176        M 0x8000176c addi    s1, s1, -1896          #; s1  = 0x80003768, (wrb) s1  <-- 0x80003000
                         M 0x80001764 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     4187        M 0x80001778 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
                         M 0x80001770 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003000]
       0     4188        M 0x8000177c mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
       0     4196        M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     4197        M 0x80001780 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x80001774 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0000000
       0     4198        M 0x80001784 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     4199        M 0x80001788 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     4200        M 0x8000178c mv      s7, a0                 #; a0  = 0x80001678, (wrb) s7  <-- 0x80001678
       0     4209        M 0x80001790 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001880
       0     4233        M 0x80001884 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002884
       0     4234        M 0x80001888 addi    a0, a0, 1924           #; a0  = 0x80002884, (wrb) a0  <-- 0x80003008
                         M 0x80001880 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0000000, fa0  = 0.0000000
       0     4235        M                                           #; (f:fpu) fs0  <-- 0.0000000
       0     4237        M 0x8000188c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003008]
       0     4246        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     4247        M 0x80001890 fle.d   a0, fa0, ft0           #; fa0  = 0.0000000, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     4249        M                                           #; (acc) t3  <-- 0x00051e63
       0     4250        M 0x80001894 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800018b0
       0     4267        M 0x800018b0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800028b0
       0     4268        M 0x800018b4 addi    a0, a0, 1888           #; a0  = 0x800028b0, (wrb) a0  <-- 0x80003010
       0     4270        M 0x800018bc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800028bc
       0     4271        M 0x800018b8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003010]
       0     4279        M 0x800018c0 addi    a0, a0, 1884           #; a0  = 0x800028bc, (wrb) a0  <-- 0x80003018
       0     4280        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     4282        M 0x800018c4 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003018]
       0     4283        M 0x800018c8 fle.d   a0, fs0, ft0           #; fs0  = 0.0000000, ft0  = 1000000000.0000000
       0     4291        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     4292        M 0x800018cc fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0000000
       0     4294        M                                           #; (acc) a0  <-- 0x00b57533
       0     4295        M 0x800018d0 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     4296        M 0x800018d4 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x800019d0
       0     4314        M 0x800019d0 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     4315        M 0x800019d4 li      s8, 6                  #; (wrb) s8  <-- 6
       0     4316        M 0x800019d8 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x800019e0
       0     4326        M 0x800019e0 li      a0, 10                 #; (wrb) a0  <-- 10
       0     4328        M 0x800019e8 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001a20
       0     4329        M 0x800019e4 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0000000, fs0  = 0.0000000
       0     4330        M                                           #; (f:fpu) fs2  <-- 0.0000000
       0     4349        M 0x80001a20 li      s0, 0                  #; (wrb) s0  <-- 0
       0     4350        M 0x80001a24 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     4351        M 0x80001a28 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002a28
       0     4352        M 0x80001a2c addi    a1, a1, 1232           #; a1  = 0x80002a28, (wrb) a1  <-- 0x80002ef8
       0     4361        M 0x80001a30 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002ef8, (wrb) a0  <-- 0x80002f28
       0     4364        M 0x80001a34 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f28]
       0     4365        M 0x80001a38 fcvt.w.d s1, fs2               #; fs2  = 0.0000000
       0     4369        M 0x80001a3c fcvt.d.w ft0, s1               #; ac1  = 0
       0     4370        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4373        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     4375        M 0x80001a48 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002a48
                         M 0x80001a40 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0000000, ft0  = 0.0
       0     4376        M 0x80001a4c addi    a0, a0, 1496           #; a0  = 0x80002a48, (wrb) a0  <-- 0x80003020
       0     4378        M                                           #; (f:fpu) ft0  <-- 0.0000000
       0     4379        M 0x80001a44 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0000000
       0     4382        M                                           #; (f:fpu) ft2  <-- 0.0000037
       0     4387        M 0x80001a50 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003020]
       0     4388        M 0x80001a54 fcvt.wu.d a0, ft2              #; ft2  = 0.0000037
       0     4390        M                                           #; (acc) gp  <-- 0xd21501d3
       0     4392        M 0x80001a58 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     4393        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4394        M 0x80001a5c fsub.d  ft2, ft2, ft3          #; ft2  = 0.0000037, ft3  = 0.0
       0     4396        M                                           #; (f:lsu) ft0  <-- 0.5
       0     4397        M                                           #; (f:fpu) ft2  <-- 0.0000037
       0     4398        M 0x80001a60 fle.d   a1, ft2, ft0           #; ft2  = 0.0000037, ft0  = 0.5
       0     4401        M 0x80001a64 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001a84
       0     4421        M 0x80001a84 flt.d   a1, ft2, ft0           #; ft2  = 0.0000037, ft0  = 0.5
       0     4423        M                                           #; (acc) s4  <-- 0x00059a63
       0     4424        M 0x80001a88 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001a9c
       0     4433        M 0x80001a9c fcvt.d.w fs1, zero             #; ac1  = 0
       0     4434        M                                           #; (f:fpu) fs1  <-- 0.0
       0     4444        M 0x80001aa0 beqz    s8, pc + 216           #; s8  = 6, not taken
       0     4445        M 0x80001aa4 li      a2, 0                  #; (wrb) a2  <-- 0
       0     4446        M 0x80001aa8 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     4447        M 0x80001aac add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     4456        M 0x80001ab0 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4457        M 0x80001ab4 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     4458        M 0x80001ab8 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     4459        M 0x80001abc addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     4468        M 0x80001ac0 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4469        M 0x80001ac4 li      a7, 9                  #; (wrb) a7  <-- 9
       0     4470        M 0x80001ac8 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     4471        M 0x80001acc mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     4480        M 0x80001ad0 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     4483        M                                           #; (acc) a0  <-- 0x00355513
       0     4484        M 0x80001ad4 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     4485        M 0x80001ad8 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     4488        M                                           #; (acc) a3  <-- 0x40d586b3
       0     4489        M 0x80001adc sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     4492        M 0x80001ae0 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     4493        M 0x80001ae4 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     4494        M 0x80001ae8 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     4495        M 0x80001aec addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     4504        M 0x80001af0 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     4505        M 0x80001af4 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     4506        M 0x80001af8 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     4507        M 0x80001afc li      a3, 30                 #; (wrb) a3  <-- 30
       0     4517        M 0x80001b00 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     4518        M 0x80001b04 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     4519        M 0x80001b08 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     4520        M 0x80001b0c or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     4529        M 0x80001b10 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     4530        M 0x80001b14 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     4531        M 0x80001b18 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     4532        M 0x80001b1c not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     4541        M 0x80001b20 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     4542        M 0x80001b24 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     4543        M 0x80001b28 li      a1, 31                 #; (wrb) a1  <-- 31
       0     4544        M 0x80001b2c sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     4553        M 0x80001b30 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     4554        M 0x80001b34 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     4555        M 0x80001b38 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001b40
       0     4565        M 0x80001b40 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     4566        M 0x80001b44 li      a1, 48                 #; (wrb) a1  <-- 48
       0     4567        M 0x80001b48 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000b48
       0     4568        M 0x80001b4c jalr    ra, ra, -1520          #; ra  = 0x80000b48, (wrb) ra  <-- 0x80001b50, goto 0x80000558
       0     4588        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     4589        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     4600        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     4623        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     4635        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     4636        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     4637        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     4638        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     4658        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     4659        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     4670        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     4671        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     4672        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     4673        M 0x800005ec ret                            #; ra  = 0x80001b50, goto 0x80001b50
       0     4684        M 0x80001b50 li      a0, 0                  #; (wrb) a0  <-- 0
       0     4685        M 0x80001b54 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     4686        M 0x80001b58 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     4687        M 0x80001b5c xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     4696        M 0x80001b60 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     4697        M 0x80001b64 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4698        M 0x80001b68 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4699        M 0x80001b6c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b54
       0     4700        M 0x80001b54 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     4701        M 0x80001b58 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     4702        M 0x80001b5c xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     4703        M 0x80001b60 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     4704        M 0x80001b64 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4705        M 0x80001b68 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     4706        M 0x80001b6c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b54
       0     4707        M 0x80001b54 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     4708        M 0x80001b58 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     4709        M 0x80001b5c xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     4710        M 0x80001b60 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     4711        M 0x80001b64 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4712        M 0x80001b68 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     4713        M 0x80001b6c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b54
       0     4714        M 0x80001b54 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     4715        M 0x80001b58 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     4716        M 0x80001b5c xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     4717        M 0x80001b60 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     4718        M 0x80001b64 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4719        M 0x80001b68 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     4720        M 0x80001b6c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b54
       0     4721        M 0x80001b54 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     4722        M 0x80001b58 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     4723        M 0x80001b5c xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     4724        M 0x80001b60 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     4725        M 0x80001b64 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     4726        M 0x80001b68 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     4727        M 0x80001b6c bnez    a2, pc - 24            #; a2  = 0, not taken
       0     4739        M 0x80001b70 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     4740        M 0x80001b74 j       pc + 0x28              #; goto 0x80001b9c
       0     4751        M 0x80001b9c beqz    a1, pc + 28            #; a1  = 1, not taken
       0     4763        M 0x80001ba0 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     4764        M 0x80001ba4 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     4765        M 0x80001ba8 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     4766        M 0x80001bac li      a1, 46                 #; (wrb) a1  <-- 46
       0     4775        M 0x80001bb0 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     4776        M 0x80001bb4 j       pc + 0x8               #; goto 0x80001bbc
       0     4777        M 0x80001bbc li      a0, 32                 #; (wrb) a0  <-- 32
       0     4789        M 0x80001bc0 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     4790        M 0x80001bc4 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     4791        M 0x80001bc8 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4793        M 0x80001bcc flt.d   s9, fs0, fs1           #; fs0  = 0.0000000, fs1  = 0.0
       0     4801        M 0x80001bd0 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
       0     4802        M 0x80001bd4 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     4803        M 0x80001bd8 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4804        M 0x80001bdc addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     4813        M 0x80001be0 li      a4, 18                 #; (wrb) a4  <-- 18
       0     4814        M 0x80001be4 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     4815        M 0x80001be8 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     4818        M                                           #; (acc) a5  <-- 0x01f55793
       0     4819        M 0x80001bec srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     4825        M 0x80001bf0 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     4826        M 0x80001bf4 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     4827        M 0x80001bf8 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     4830        M                                           #; (acc) a5  <-- 0x40f487b3
       0     4831        M 0x80001bfc sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     4837        M 0x80001c00 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     4838        M 0x80001c04 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     4839        M 0x80001c08 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     4840        M 0x80001c0c addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     4849        M 0x80001c10 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     4850        M 0x80001c14 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     4851        M 0x80001c18 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     4852        M 0x80001c1c bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     4864        M 0x80001c20 j       pc + 0x8               #; goto 0x80001c28
       0     4865        M 0x80001c28 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     4866        M 0x80001c2c li      a0, 1                  #; (wrb) a0  <-- 1
       0     4877        M 0x80001c30 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001c9c
       0     4900        M 0x80001c9c li      a0, 31                 #; (wrb) a0  <-- 31
       0     4912        M 0x80001ca0 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     4913        M 0x80001ca4 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001cbc
       0     4924        M 0x80001cbc andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     4936        M 0x80001cc0 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     4937        M 0x80001cc4 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     4938        M 0x80001cc8 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001cf4
       0     4959        M 0x80001cf4 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     4960        M 0x80001cf8 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     4961        M 0x80001cfc xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     4971        M 0x80001d00 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     4972        M 0x80001d04 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     4973        M 0x80001d08 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     4974        M 0x80001d0c bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001d38
       0     4994        M 0x80001d38 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     4995        M 0x80001d3c beqz    s8, pc + 56            #; s8  = 8, not taken
       0     5006        M 0x80001d40 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     5007        M 0x80001d44 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     5008        M 0x80001d48 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     5009        M 0x80001d4c addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     5011        M                                           #; (lsu) a0  <-- 48
       0     5018        M 0x80001d50 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     5019        M 0x80001d54 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5020        M 0x80001d58 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     5021        M 0x80001d5c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5030        M 0x80001d60 jalr    s7                     #; s7  = 0x80001678, (wrb) ra  <-- 0x80001d64, goto 0x80001678
       0     5033        M 0x80001678 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5034        M 0x8000167c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5036        M 0x80001680 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5037        M 0x80001684 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5038        M 0x80001688 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003688
       0     5039        M 0x8000168c addi    a3, a3, -1500          #; a3  = 0x80003688, (wrb) a3  <-- 0x800030ac
       0     5040        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5041        M 0x80001690 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     5042        M 0x80001694 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5053        M                                           #; (lsu) a4  <-- 8
       0     5054        M 0x80001698 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     5055        M 0x8000169c sw      a5, 0(a1)              #; a1  = 0x800030ac, 9 ~~> Word[0x800030ac]
       0     5056        M 0x800016a0 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 8, (wrb) a4  <-- 0x800030b4
       0     5057        M 0x800016a4 sb      a0, 72(a4)             #; a4  = 0x800030b4, 48 ~~> Byte[0x800030fc]
       0     5058        M 0x800016a8 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5079        M                                           #; (lsu) a4  <-- 9
       0     5080        M 0x800016ac addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     5081        M 0x800016b0 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     5082        M 0x800016b4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5083        M 0x800016b8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5084        M 0x800016bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5085        M 0x800016c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001720
       0     5090        M 0x80001720 ret                            #; ra  = 0x80001d64, goto 0x80001d64
       0     5095        M 0x80001d64 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     5096        M 0x80001d68 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     5097        M 0x80001d6c bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001d44
       0     5098        M 0x80001d44 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     5099        M 0x80001d48 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     5100        M 0x80001d4c addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     5101        M 0x80001d50 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     5102        M 0x80001d54 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5103        M 0x80001d58 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     5104        M 0x80001d5c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5105        M 0x80001d60 jalr    s7                     #; s7  = 0x80001678, (wrb) ra  <-- 0x80001d64, goto 0x80001678
       0     5106        M                                           #; (lsu) a0  <-- 46
       0     5108        M 0x80001678 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     5109        M 0x8000167c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5111        M 0x80001680 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5112        M 0x80001684 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5113        M 0x80001688 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003688
       0     5114        M 0x8000168c addi    a3, a3, -1500          #; a3  = 0x80003688, (wrb) a3  <-- 0x800030ac
       0     5115        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5116        M 0x80001690 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     5117        M 0x80001694 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5128        M                                           #; (lsu) a4  <-- 9
       0     5129        M 0x80001698 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     5130        M 0x8000169c sw      a5, 0(a1)              #; a1  = 0x800030ac, 10 ~~> Word[0x800030ac]
       0     5131        M 0x800016a0 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 9, (wrb) a4  <-- 0x800030b5
       0     5132        M 0x800016a4 sb      a0, 72(a4)             #; a4  = 0x800030b5, 46 ~~> Byte[0x800030fd]
       0     5133        M 0x800016a8 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5154        M                                           #; (lsu) a4  <-- 10
       0     5155        M 0x800016ac addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     5156        M 0x800016b0 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     5157        M 0x800016b4 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     5158        M 0x800016b8 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     5159        M 0x800016bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5160        M 0x800016c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001720
       0     5165        M 0x80001720 ret                            #; ra  = 0x80001d64, goto 0x80001d64
       0     5170        M 0x80001d64 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     5171        M 0x80001d68 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     5172        M 0x80001d6c bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001d44
       0     5173        M 0x80001d44 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     5174        M 0x80001d48 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     5175        M 0x80001d4c addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     5176        M 0x80001d50 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     5177        M 0x80001d54 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5178        M 0x80001d58 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     5179        M 0x80001d5c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5180        M 0x80001d60 jalr    s7                     #; s7  = 0x80001678, (wrb) ra  <-- 0x80001d64, goto 0x80001678
       0     5181        M                                           #; (lsu) a0  <-- 48
       0     5183        M 0x80001678 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5184        M 0x8000167c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5186        M 0x80001680 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5187        M 0x80001684 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5188        M 0x80001688 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003688
       0     5189        M 0x8000168c addi    a3, a3, -1500          #; a3  = 0x80003688, (wrb) a3  <-- 0x800030ac
       0     5190        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5191        M 0x80001690 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     5192        M 0x80001694 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5203        M                                           #; (lsu) a4  <-- 10
       0     5204        M 0x80001698 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     5205        M 0x8000169c sw      a5, 0(a1)              #; a1  = 0x800030ac, 11 ~~> Word[0x800030ac]
       0     5206        M 0x800016a0 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 10, (wrb) a4  <-- 0x800030b6
       0     5207        M 0x800016a4 sb      a0, 72(a4)             #; a4  = 0x800030b6, 48 ~~> Byte[0x800030fe]
       0     5208        M 0x800016a8 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5229        M                                           #; (lsu) a4  <-- 11
       0     5230        M 0x800016ac addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     5231        M 0x800016b0 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     5232        M 0x800016b4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5233        M 0x800016b8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5234        M 0x800016bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5235        M 0x800016c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001720
       0     5240        M 0x80001720 ret                            #; ra  = 0x80001d64, goto 0x80001d64
       0     5245        M 0x80001d64 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     5246        M 0x80001d68 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     5247        M 0x80001d6c bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001d44
       0     5248        M 0x80001d44 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     5249        M 0x80001d48 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     5250        M 0x80001d4c addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     5251        M 0x80001d50 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     5252        M 0x80001d54 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5253        M 0x80001d58 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     5254        M 0x80001d5c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5255        M 0x80001d60 jalr    s7                     #; s7  = 0x80001678, (wrb) ra  <-- 0x80001d64, goto 0x80001678
       0     5256        M                                           #; (lsu) a0  <-- 48
       0     5258        M 0x80001678 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5259        M 0x8000167c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5261        M 0x80001680 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5262        M 0x80001684 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5263        M 0x80001688 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003688
       0     5264        M 0x8000168c addi    a3, a3, -1500          #; a3  = 0x80003688, (wrb) a3  <-- 0x800030ac
       0     5265        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5266        M 0x80001690 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     5267        M 0x80001694 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5278        M                                           #; (lsu) a4  <-- 11
       0     5279        M 0x80001698 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     5280        M 0x8000169c sw      a5, 0(a1)              #; a1  = 0x800030ac, 12 ~~> Word[0x800030ac]
       0     5281        M 0x800016a0 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 11, (wrb) a4  <-- 0x800030b7
       0     5282        M 0x800016a4 sb      a0, 72(a4)             #; a4  = 0x800030b7, 48 ~~> Byte[0x800030ff]
       0     5283        M 0x800016a8 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5304        M                                           #; (lsu) a4  <-- 12
       0     5305        M 0x800016ac addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     5306        M 0x800016b0 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     5307        M 0x800016b4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5308        M 0x800016b8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5309        M 0x800016bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5310        M 0x800016c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001720
       0     5315        M 0x80001720 ret                            #; ra  = 0x80001d64, goto 0x80001d64
       0     5320        M 0x80001d64 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     5321        M 0x80001d68 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     5322        M 0x80001d6c bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001d44
       0     5323        M 0x80001d44 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     5324        M 0x80001d48 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     5325        M 0x80001d4c addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     5326        M 0x80001d50 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     5327        M 0x80001d54 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5328        M 0x80001d58 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     5329        M 0x80001d5c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5330        M 0x80001d60 jalr    s7                     #; s7  = 0x80001678, (wrb) ra  <-- 0x80001d64, goto 0x80001678
       0     5331        M                                           #; (lsu) a0  <-- 48
       0     5333        M 0x80001678 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5334        M 0x8000167c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5336        M 0x80001680 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5337        M 0x80001684 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5338        M 0x80001688 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003688
       0     5339        M 0x8000168c addi    a3, a3, -1500          #; a3  = 0x80003688, (wrb) a3  <-- 0x800030ac
       0     5340        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5341        M 0x80001690 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     5342        M 0x80001694 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5353        M                                           #; (lsu) a4  <-- 12
       0     5354        M 0x80001698 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     5355        M 0x8000169c sw      a5, 0(a1)              #; a1  = 0x800030ac, 13 ~~> Word[0x800030ac]
       0     5356        M 0x800016a0 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 12, (wrb) a4  <-- 0x800030b8
       0     5357        M 0x800016a4 sb      a0, 72(a4)             #; a4  = 0x800030b8, 48 ~~> Byte[0x80003100]
       0     5358        M 0x800016a8 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5379        M                                           #; (lsu) a4  <-- 13
       0     5380        M 0x800016ac addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     5381        M 0x800016b0 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     5382        M 0x800016b4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5383        M 0x800016b8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5384        M 0x800016bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5385        M 0x800016c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001720
       0     5390        M 0x80001720 ret                            #; ra  = 0x80001d64, goto 0x80001d64
       0     5395        M 0x80001d64 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     5396        M 0x80001d68 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     5397        M 0x80001d6c bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001d44
       0     5398        M 0x80001d44 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     5399        M 0x80001d48 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     5400        M 0x80001d4c addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     5401        M 0x80001d50 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     5402        M 0x80001d54 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5403        M 0x80001d58 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     5404        M 0x80001d5c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5405        M 0x80001d60 jalr    s7                     #; s7  = 0x80001678, (wrb) ra  <-- 0x80001d64, goto 0x80001678
       0     5406        M                                           #; (lsu) a0  <-- 48
       0     5408        M 0x80001678 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5409        M 0x8000167c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5411        M 0x80001680 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5412        M 0x80001684 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5413        M 0x80001688 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003688
       0     5414        M 0x8000168c addi    a3, a3, -1500          #; a3  = 0x80003688, (wrb) a3  <-- 0x800030ac
       0     5415        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5416        M 0x80001690 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     5417        M 0x80001694 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5428        M                                           #; (lsu) a4  <-- 13
       0     5429        M 0x80001698 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     5430        M 0x8000169c sw      a5, 0(a1)              #; a1  = 0x800030ac, 14 ~~> Word[0x800030ac]
       0     5431        M 0x800016a0 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 13, (wrb) a4  <-- 0x800030b9
       0     5432        M 0x800016a4 sb      a0, 72(a4)             #; a4  = 0x800030b9, 48 ~~> Byte[0x80003101]
       0     5433        M 0x800016a8 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5454        M                                           #; (lsu) a4  <-- 14
       0     5455        M 0x800016ac addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     5456        M 0x800016b0 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     5457        M 0x800016b4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5458        M 0x800016b8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5459        M 0x800016bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5460        M 0x800016c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001720
       0     5465        M 0x80001720 ret                            #; ra  = 0x80001d64, goto 0x80001d64
       0     5470        M 0x80001d64 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     5471        M 0x80001d68 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     5472        M 0x80001d6c bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001d44
       0     5473        M 0x80001d44 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     5474        M 0x80001d48 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     5475        M 0x80001d4c addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     5476        M 0x80001d50 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     5477        M 0x80001d54 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5478        M 0x80001d58 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     5479        M 0x80001d5c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5480        M 0x80001d60 jalr    s7                     #; s7  = 0x80001678, (wrb) ra  <-- 0x80001d64, goto 0x80001678
       0     5481        M                                           #; (lsu) a0  <-- 48
       0     5483        M 0x80001678 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5484        M 0x8000167c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5486        M 0x80001680 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5487        M 0x80001684 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5488        M 0x80001688 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003688
       0     5489        M 0x8000168c addi    a3, a3, -1500          #; a3  = 0x80003688, (wrb) a3  <-- 0x800030ac
       0     5490        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5491        M 0x80001690 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     5492        M 0x80001694 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5503        M                                           #; (lsu) a4  <-- 14
       0     5504        M 0x80001698 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     5505        M 0x8000169c sw      a5, 0(a1)              #; a1  = 0x800030ac, 15 ~~> Word[0x800030ac]
       0     5506        M 0x800016a0 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 14, (wrb) a4  <-- 0x800030ba
       0     5507        M 0x800016a4 sb      a0, 72(a4)             #; a4  = 0x800030ba, 48 ~~> Byte[0x80003102]
       0     5508        M 0x800016a8 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5529        M                                           #; (lsu) a4  <-- 15
       0     5530        M 0x800016ac addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     5531        M 0x800016b0 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     5532        M 0x800016b4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5533        M 0x800016b8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5534        M 0x800016bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5535        M 0x800016c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001720
       0     5540        M 0x80001720 ret                            #; ra  = 0x80001d64, goto 0x80001d64
       0     5545        M 0x80001d64 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     5546        M 0x80001d68 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     5547        M 0x80001d6c bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001d44
       0     5548        M 0x80001d44 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     5549        M 0x80001d48 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     5550        M 0x80001d4c addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     5551        M 0x80001d50 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     5552        M 0x80001d54 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5553        M 0x80001d58 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     5554        M 0x80001d5c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5555        M 0x80001d60 jalr    s7                     #; s7  = 0x80001678, (wrb) ra  <-- 0x80001d64, goto 0x80001678
       0     5556        M                                           #; (lsu) a0  <-- 48
       0     5558        M 0x80001678 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5559        M 0x8000167c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5561        M 0x80001680 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5562        M 0x80001684 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5563        M 0x80001688 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003688
       0     5564        M 0x8000168c addi    a3, a3, -1500          #; a3  = 0x80003688, (wrb) a3  <-- 0x800030ac
       0     5565        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5566        M 0x80001690 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     5567        M 0x80001694 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5578        M                                           #; (lsu) a4  <-- 15
       0     5579        M 0x80001698 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     5580        M 0x8000169c sw      a5, 0(a1)              #; a1  = 0x800030ac, 16 ~~> Word[0x800030ac]
       0     5581        M 0x800016a0 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 15, (wrb) a4  <-- 0x800030bb
       0     5582        M 0x800016a4 sb      a0, 72(a4)             #; a4  = 0x800030bb, 48 ~~> Byte[0x80003103]
       0     5583        M 0x800016a8 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5604        M                                           #; (lsu) a4  <-- 16
       0     5605        M 0x800016ac addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     5606        M 0x800016b0 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     5607        M 0x800016b4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5608        M 0x800016b8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5609        M 0x800016bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5610        M 0x800016c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001720
       0     5615        M 0x80001720 ret                            #; ra  = 0x80001d64, goto 0x80001d64
       0     5620        M 0x80001d64 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     5621        M 0x80001d68 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     5622        M 0x80001d6c bnez    s10, pc - 40           #; s10 = 0, not taken
       0     5634        M 0x80001d70 j       pc + 0x8               #; goto 0x80001d78
       0     5635        M 0x80001d78 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     5636        M 0x80001d7c sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     5647        M 0x80001d80 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     5648        M 0x80001d84 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     5649        M 0x80001d88 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     5650        M 0x80001d8c bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001dbc
       0     5670        M 0x80001dbc mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     5682        M 0x80001dc0 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     5685        M 0x80001dc4 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     5686        M 0x80001dc8 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0     5687        M 0x80001dcc fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
       0     5688        M                                           #; (f:lsu) fs0  <-- 0.0000000
       0     5694        M 0x80001dd0 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
       0     5697        M                                           #; (lsu) s10 <-- 0x80002d2e
       0     5698        M 0x80001dd4 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     5701        M                                           #; (lsu) s9  <-- 8
       0     5702        M 0x80001dd8 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     5705        M                                           #; (lsu) s8  <-- 16
       0     5706        M 0x80001ddc lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     5709        M                                           #; (lsu) s7  <-- 0
       0     5710        M 0x80001de0 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     5713        M                                           #; (lsu) s6  <-- 0
       0     5714        M 0x80001de4 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     5717        M                                           #; (lsu) s5  <-- -1
       0     5718        M 0x80001de8 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     5721        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     5722        M 0x80001dec lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     5725        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     5726        M 0x80001df0 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     5729        M                                           #; (lsu) s2  <-- 0x80001678
       0     5730        M 0x80001df4 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     5733        M                                           #; (lsu) s1  <-- 8
       0     5734        M 0x80001df8 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     5737        M                                           #; (lsu) s0  <-- 0
       0     5738        M 0x80001dfc lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     5739        M 0x80001e00 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     5741        M                                           #; (lsu) ra  <-- 0x80000da8
       0     5742        M 0x80001e04 ret                            #; ra  = 0x80000da8, goto 0x80000da8
       0     5753        M 0x80000da8 j       pc + 0x7c0             #; goto 0x80001568
       0     5756        M 0x80001568 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     5757        M 0x8000156c li      s6, 37                 #; (wrb) s6  <-- 37
       0     5768        M 0x80001570 li      s7, 46                 #; (wrb) s7  <-- 46
       0     5769        M 0x80001574 addi    s0, s10, 1             #; s10 = 0x80002d2e, (wrb) s0  <-- 0x80002d2f
       0     5770        M 0x80001578 j       pc - 0xa74             #; goto 0x80000b04
       0     5771        M 0x80000b04 addi    s10, s0, 2             #; s0  = 0x80002d2f, (wrb) s10 <-- 0x80002d31
       0     5772        M 0x80000b08 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     5773        M 0x80000b0c li      s8, 10                 #; (wrb) s8  <-- 10
       0     5774        M 0x80000b10 lbu     a0, 0(s0)              #; s0  = 0x80002d2f, a0  <~~ Byte[0x80002d2f]
       0     5785        M                                           #; (lsu) a0  <-- 10
       0     5786        M 0x80000b14 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     5787        M 0x80000b18 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     5788        M 0x80000b1c addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     5789        M 0x80000b20 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5790        M 0x80000b24 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     5791        M 0x80000b28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5792        M 0x80000b2c jalr    s2                     #; s2  = 0x80001678, (wrb) ra  <-- 0x80000b30, goto 0x80001678
       0     5795        M 0x80001678 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     5796        M 0x8000167c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5798        M 0x80001680 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5799        M 0x80001684 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5800        M 0x80001688 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003688
       0     5801        M 0x8000168c addi    a3, a3, -1500          #; a3  = 0x80003688, (wrb) a3  <-- 0x800030ac
       0     5802        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5803        M 0x80001690 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030ac, (wrb) a1  <-- 0x800030ac
       0     5804        M 0x80001694 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5815        M                                           #; (lsu) a4  <-- 16
       0     5816        M 0x80001698 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     5817        M 0x8000169c sw      a5, 0(a1)              #; a1  = 0x800030ac, 17 ~~> Word[0x800030ac]
       0     5818        M 0x800016a0 add     a4, a1, a4             #; a1  = 0x800030ac, a4  = 16, (wrb) a4  <-- 0x800030bc
       0     5819        M 0x800016a4 sb      a0, 72(a4)             #; a4  = 0x800030bc, 10 ~~> Byte[0x80003104]
       0     5820        M 0x800016a8 lw      a4, 0(a1)              #; a1  = 0x800030ac, a4  <~~ Word[0x800030ac]
       0     5841        M                                           #; (lsu) a4  <-- 17
       0     5842        M 0x800016ac addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     5843        M 0x800016b0 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     5844        M 0x800016b4 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     5845        M 0x800016b8 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     5846        M 0x800016bc and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     5847        M 0x800016c0 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     5848        M 0x800016c4 add     a0, a3, a2             #; a3  = 0x800030ac, a2  = 0, (wrb) a0  <-- 0x800030ac
       0     5849        M 0x800016c8 addi    a2, a0, 72             #; a0  = 0x800030ac, (wrb) a2  <-- 0x800030f4
       0     5850        M 0x800016cc sw      zero, 12(a0)           #; a0  = 0x800030ac, 0 ~~> Word[0x800030b8]
       0     5851        M 0x800016d0 li      a3, 64                 #; (wrb) a3  <-- 64
       0     5852        M 0x800016d4 sw      a3, 8(a0)              #; a0  = 0x800030ac, 64 ~~> Word[0x800030b4]
       0     5853        M 0x800016d8 sw      zero, 20(a0)           #; a0  = 0x800030ac, 0 ~~> Word[0x800030c0]
       0     5854        M 0x800016dc li      a3, 1                  #; (wrb) a3  <-- 1
       0     5863        M 0x800016e0 sw      a3, 16(a0)             #; a0  = 0x800030ac, 1 ~~> Word[0x800030bc]
       0     5864        M 0x800016e4 sw      zero, 28(a0)           #; a0  = 0x800030ac, 0 ~~> Word[0x800030c8]
       0     5866        M 0x800016e8 sw      a2, 24(a0)             #; a0  = 0x800030ac, 0x800030f4 ~~> Word[0x800030c4]
       0     5876        M 0x800016ec lw      a2, 0(a1)              #; a1  = 0x800030ac, a2  <~~ Word[0x800030ac]
       0     5877        M 0x800016f0 addi    a3, a0, 8              #; a0  = 0x800030ac, (wrb) a3  <-- 0x800030b4
       0     5878        M 0x800016f4 sw      zero, 36(a0)           #; a0  = 0x800030ac, 0 ~~> Word[0x800030d0]
       0     5898        M                                           #; (lsu) a2  <-- 17
       0     5899        M 0x800016f8 sw      a2, 32(a0)             #; a0  = 0x800030ac, 17 ~~> Word[0x800030cc]
       0     5900        M 0x800016fc auipc   a0, 0x2                #; (wrb) a0  <-- 0x800036fc
       0     5901        M 0x80001700 addi    a0, a0, -1916          #; a0  = 0x800036fc, (wrb) a0  <-- 0x80002f80
       0     5902        M 0x80001704 sw      a3, 0(a0)              #; a0  = 0x80002f80, 0x800030b4 ~~> Word[0x80002f80]
       0     5903        M 0x80001708 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003708
       0     5904        M 0x8000170c addi    a0, a0, -1864          #; a0  = 0x80003708, (wrb) a0  <-- 0x80002fc0
       0     5913        M 0x80001710 lw      a2, 0(a0)              #; a0  = 0x80002fc0, a2  <~~ Word[0x80002fc0]
       0     5928        M                                           #; (lsu) a2  <-- 0
       0     5929        M 0x80001714 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001710
       0     5930        M 0x80001710 lw      a2, 0(a0)              #; a0  = 0x80002fc0, a2  <~~ Word[0x80002fc0]
       0     5941        M                                           #; (lsu) a2  <-- 0
       0     5942        M 0x80001714 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001710
       0     5943        M 0x80001710 lw      a2, 0(a0)              #; a0  = 0x80002fc0, a2  <~~ Word[0x80002fc0]
       0     5954        M                                           #; (lsu) a2  <-- 0
       0     5955        M 0x80001714 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001710
       0     5956        M 0x80001710 lw      a2, 0(a0)              #; a0  = 0x80002fc0, a2  <~~ Word[0x80002fc0]
       0     5967        M                                           #; (lsu) a2  <-- 0
       0     5968        M 0x80001714 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001710
       0     5969        M 0x80001710 lw      a2, 0(a0)              #; a0  = 0x80002fc0, a2  <~~ Word[0x80002fc0]
       0     5980        M                                           #; (lsu) a2  <-- 0
       0     5981        M 0x80001714 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001710
       0     5982        M 0x80001710 lw      a2, 0(a0)              #; a0  = 0x80002fc0, a2  <~~ Word[0x80002fc0]
       0     5993        M                                           #; (lsu) a2  <-- 0
       0     5994        M 0x80001714 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001710
       0     5995        M 0x80001710 lw      a2, 0(a0)              #; a0  = 0x80002fc0, a2  <~~ Word[0x80002fc0]
       0     6006        M                                           #; (lsu) a2  <-- 1
       0     6007        M 0x80001714 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     6008        M 0x80001718 sw      zero, 0(a0)            #; a0  = 0x80002fc0, 0 ~~> Word[0x80002fc0]
       0     6009        M 0x8000171c sw      zero, 0(a1)            #; a1  = 0x800030ac, 0 ~~> Word[0x800030ac]
       0     6011        M 0x80001720 ret                            #; ra  = 0x80000b30, goto 0x80000b30
       0     6016        M 0x80000b30 addi    s0, s0, 1              #; s0  = 0x80002d2f, (wrb) s0  <-- 0x80002d30
       0     6017        M 0x80000b34 addi    s10, s10, 1            #; s10 = 0x80002d31, (wrb) s10 <-- 0x80002d32
       0     6018        M 0x80000b38 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     6019        M 0x80000b3c lbu     a0, 0(s0)              #; s0  = 0x80002d30, a0  <~~ Byte[0x80002d30]
       0     6031        M                                           #; (lsu) a0  <-- 0
       0     6032        M 0x80000b40 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     6033        M 0x80000b44 j       pc + 0xad8             #; goto 0x8000161c
       0     6045        M 0x8000161c mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     6057        M 0x80001620 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001628
       0     6058        M 0x80001628 li      a0, 0                  #; (wrb) a0  <-- 0
       0     6059        M 0x8000162c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6069        M 0x80001630 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6070        M 0x80001634 jalr    s2                     #; s2  = 0x80001678, (wrb) ra  <-- 0x80001638, goto 0x80001678
       0     6083        M 0x80001678 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001720
       0     6088        M 0x80001720 ret                            #; ra  = 0x80001638, goto 0x80001638
       0     6089        M 0x80001638 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     6090        M 0x8000163c lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     6093        M                                           #; (lsu) s11 <-- 0
       0     6094        M 0x80001640 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     6097        M                                           #; (lsu) s10 <-- 0
       0     6098        M 0x80001644 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     6101        M                                           #; (lsu) s9  <-- 0
       0     6102        M 0x80001648 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     6105        M                                           #; (lsu) s8  <-- 0
       0     6106        M 0x8000164c lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     6109        M                                           #; (lsu) s7  <-- 0
       0     6110        M 0x80001650 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     6113        M                                           #; (lsu) s6  <-- 0
       0     6114        M 0x80001654 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     6117        M                                           #; (lsu) s5  <-- 0
       0     6118        M 0x80001658 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     6121        M                                           #; (lsu) s4  <-- 0
       0     6122        M 0x8000165c lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     6125        M                                           #; (lsu) s3  <-- 0
       0     6126        M 0x80001660 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     6129        M                                           #; (lsu) s2  <-- 0
       0     6130        M 0x80001664 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     6133        M                                           #; (lsu) s1  <-- 0
       0     6134        M 0x80001668 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     6137        M                                           #; (lsu) s0  <-- 0
       0     6138        M 0x8000166c lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     6139        M 0x80001670 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     6141        M                                           #; (lsu) ra  <-- 0x80000a74
       0     6142        M 0x80001674 ret                            #; ra  = 0x80000a74, goto 0x80000a74
       0     6145        M 0x80000a74 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     6146        M 0x80000a78 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     6148        M                                           #; (lsu) ra  <-- 0x80000a04
       0     6149        M 0x80000a7c ret                            #; ra  = 0x80000a04, goto 0x80000a04
       0     6152        M 0x80000a04 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a04
       0     6153        M 0x80000a08 addi    a0, a0, 1524           #; a0  = 0x80002a04, (wrb) a0  <-- 0x80002ff8
       0     6156        M 0x80000a0c fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002ff8]
       0     6157        M 0x80000a18 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
       0     6158        M 0x80000a1c addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
       0     6165        M                                           #; (f:lsu) ft3  <-- 0.0001
       0     6166        M 0x80000a10 flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0000000
       0     6167        M                                           #; (lsu) ra  <-- 0x80002aa0
       0     6168        M 0x80000a20 ret                            #; ra  = 0x80002aa0, goto 0x80002aa0
                         M 0x80000a14 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
       0     6169        M                                           #; (f:lsu) fs0  <-- 0.0
       0     6180        M 0x80002aa0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     6181        M 0x80002aa4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002aa4
       0     6182        M 0x80002aa8 jalr    ra, ra, 524            #; ra  = 0x80002aa4, (wrb) ra  <-- 0x80002aac, goto 0x80002cb0
       0     6203        M 0x80002cb0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     6204        M 0x80002cb4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002aac ~~> Word[0x0011ff5c]
       0     6205        M 0x80002cb8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000cb8
       0     6206        M 0x80002cbc jalr    ra, ra, -1600          #; ra  = 0x80000cb8, (wrb) ra  <-- 0x80002cc0, goto 0x80000678
       0     6226        M 0x80000678 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     6227        M 0x8000067c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     6238        M 0x80000680 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     6241        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6242        M 0x80000684 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     6245        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6246        M 0x80000688 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     6247        M 0x8000068c ret                            #; ra  = 0x80002cc0, goto 0x80002cc0
       0     6249        M                                           #; (lsu) a0  <-- 0x00120190
       0     6250        M 0x80002cc0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     6260        M                                           #; (lsu) a0  <-- 0
       0     6261        M 0x80002cc4 mv      zero, a0               #; a0  = 0
       0     6262        M 0x80002cc8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     6263        M 0x80002ccc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     6265        M                                           #; (lsu) ra  <-- 0x80002aac
       0     6266        M 0x80002cd0 ret                            #; ra  = 0x80002aac, goto 0x80002aac
       0     6269        M 0x80002aac mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     6273        M 0x80002ab0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ab0
       0     6274        M 0x80002ab4 jalr    ra, ra, 556            #; ra  = 0x80002ab0, (wrb) ra  <-- 0x80002ab8, goto 0x80002cdc
       0     6275        M 0x80002cdc addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     6276        M 0x80002ce0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     6277        M 0x80002ce4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002ab8 ~~> Word[0x0011ff5c]
       0     6278        M 0x80002ce8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000ce8
       0     6279        M 0x80002cec jalr    ra, ra, -1680          #; ra  = 0x80000ce8, (wrb) ra  <-- 0x80002cf0, goto 0x80000658
       0     6292        M 0x80000658 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     6293        M 0x8000065c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     6304        M 0x80000660 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     6307        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6308        M 0x80000664 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     6311        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6312        M 0x80000668 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     6313        M 0x8000066c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6315        M                                           #; (lsu) a0  <-- 0
       0     6316        M 0x80000670 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     6317        M 0x80000674 ret                            #; ra  = 0x80002cf0, goto 0x80002cf0
       0     6318        M 0x80002cf0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     6321        M                                           #; (lsu) t0  <-- 0
       0     6322        M 0x80002cf4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     6323        M 0x80002cf8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     6324        M 0x80002cfc bnez    a0, pc + 24            #; a0  = 0, not taken
       0     6325        M                                           #; (lsu) ra  <-- 0x80002ab8
       0     6330        M 0x80002d00 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     6331        M 0x80002d04 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     6332        M 0x80002d08 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002d08
       0     6333        M 0x80002d0c addi    t1, t1, 632            #; t1  = 0x80002d08, (wrb) t1  <-- 0x80002f80
       0     6341        M 0x80002d10 sw      t0, 0(t1)              #; t1  = 0x80002f80, 1 ~~> Word[0x80002f80]
       0     6342        M 0x80002d14 ret                            #; ra  = 0x80002ab8, goto 0x80002ab8
       0     6356        M 0x80002ab8 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 6356):
snitch_loads                                   140
snitch_stores                                  142
fpss_stores                                      5
fpss_loads                                      29
snitch_avg_load_latency                    11.9214
snitch_occupancy                            0.2890
snitch_fseq_rel_offloads                    0.1225
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        1.9766
fpss_avg_load_latency                       4.0690
fpss_occupancy                              0.0403
fpss_fpu_occupancy                          0.0337
fpss_fpu_rel_occupancy                      0.8359
cycles                                        6345
total_ipc                                   0.3294
