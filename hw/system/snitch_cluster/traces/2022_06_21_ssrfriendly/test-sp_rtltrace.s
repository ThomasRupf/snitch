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
       0      551        M 0x800028e8 addi    t0, t0, 2044           #; t0  = 0x800028e4, (wrb) t0  <-- 0x800030e0
       0      552        M 0x800028ec auipc   t1, 0x0                #; (wrb) t1  <-- 0x800028ec
       0      562        M 0x800028f0 addi    t1, t1, 2040           #; t1  = 0x800028ec, (wrb) t1  <-- 0x800030e4
       0      563        M 0x800028f4 bge     t0, t1, pc + 16        #; t0  = 0x800030e0, t1  = 0x800030e4, not taken
       0      564        M 0x800028f8 sw      zero, 0(t0)            #; t0  = 0x800030e0, 0 ~~> Word[0x800030e0]
       0      565        M 0x800028fc addi    t0, t0, 4              #; t0  = 0x800030e0, (wrb) t0  <-- 0x800030e4
       0      573        M 0x80002900 blt     t0, t1, pc - 8         #; t0  = 0x800030e4, t1  = 0x800030e4, not taken
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
       0      684        M 0x8000299c lw      t0, 900(t0)            #; t0  = 0x80002998, t0  <~~ Word[0x80002d1c]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x800029a0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x800029a4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x800029a8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800029a8
       0      708        M 0x800029ac lw      t2, 880(t2)            #; t2  = 0x800029a8, t2  <~~ Word[0x80002d18]
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
       0      877        M 0x80002a68 jalr    ra, ra, -1056          #; ra  = 0x80002a64, (wrb) ra  <-- 0x80002a6c, goto 0x80002644
       0      899        M 0x80002644 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      900        M 0x80002648 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      902        M 0x8000264c lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      923        M                                           #; (lsu) t1  <-- 0
       0      924        M 0x80002650 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      925        M 0x80002654 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      963        M                                           #; (lsu) a6  <-- 1
       0      964        M 0x80002658 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1003        M                                           #; (lsu) a7  <-- 1
       0     1004        M 0x8000265c lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1005        M 0x80002660 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1008        M                                           #; (acc) a0  <-- 0x02580533
       0     1043        M                                           #; (lsu) t0  <-- 8
       0     1044        M 0x80002664 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1047        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1048        M 0x80002668 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1049        M 0x8000266c csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1050        M 0x80002670 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1051        M 0x80002674 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1055        M 0x80002678 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1056        M 0x8000267c sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1062        M 0x80002680 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1063        M 0x80002684 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1064        M 0x80002688 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1065        M 0x8000268c lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1083        M                                           #; (lsu) a0  <-- 0x80000000
       0     1084        M 0x80002690 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1085        M 0x80002694 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1086        M 0x80002698 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1087        M 0x8000269c lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1123        M                                           #; (lsu) a0  <-- 0
       0     1124        M 0x800026a0 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1125        M 0x800026a4 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1163        M                                           #; (lsu) a1  <-- 1
       0     1164        M 0x800026a8 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1165        M 0x800026ac sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1166        M 0x800026b0 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1167        M 0x800026b4 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1168        M 0x800026b8 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1169        M 0x800026bc lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1190        M                                           #; (lsu) a0  <-- 0x00020000
       0     1191        M 0x800026c0 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1192        M 0x800026c4 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1193        M 0x800026c8 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1194        M 0x800026cc sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1195        M 0x800026d0 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1196        M 0x800026d4 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1197        M 0x800026d8 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1198        M 0x800026dc add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1208        M 0x800026e0 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1209        M 0x800026e4 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1210        M 0x800026e8 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1211        M 0x800026ec add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1222        M 0x800026f0 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1223        M 0x800026f4 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1224        M 0x800026f8 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1226        M 0x800026fc sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1234        M 0x80002700 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1235        M 0x80002704 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1236        M 0x80002708 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1237        M 0x8000270c sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1246        M 0x80002710 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1250        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1251        M 0x80002714 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1254        M                                           #; (lsu) a1  <-- 0
       0     1255        M 0x80002718 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1256        M 0x8000271c sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1258        M                                           #; (lsu) a0  <-- 8
       0     1259        M 0x80002720 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1260        M 0x80002724 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1261        M 0x80002728 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1263        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1264        M 0x8000272c sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1270        M 0x80002730 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1271        M 0x80002734 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1272        M 0x80002738 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003738
       0     1273        M 0x8000273c addi    a1, a1, -1620          #; a1  = 0x80003738, (wrb) a1  <-- 0x800030e4
       0     1282        M 0x80002740 add     a0, a0, a1             #; a0  = 0, a1  = 0x800030e4, (wrb) a0  <-- 0x800030e4
       0     1283        M 0x80002744 sw      zero, 0(a0)            #; a0  = 0x800030e4, 0 ~~> Word[0x800030e4]
       0     1284        M 0x80002748 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1354        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1355        M 0x8000274c sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1356        M 0x80002750 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1357        M 0x80002754 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1358        M 0x80002758 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1359        M 0x8000275c sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1360        M 0x80002760 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1361        M 0x80002764 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1362        M 0x80002768 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1363        M 0x8000276c sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1364        M 0x80002770 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1365        M 0x80002774 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1366        M 0x80002778 lw      a0, 0(a1)              #; a1  = 0x800030e4, a0  <~~ Word[0x800030e4]
       0     1377        M                                           #; (lsu) a0  <-- 0
       0     1378        M 0x8000277c addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1379        M 0x80002780 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1380        M 0x80002784 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1381        M 0x80002788 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1382        M 0x8000278c sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1383        M 0x80002790 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1384        M 0x80002794 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1385        M 0x80002798 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1386        M 0x8000279c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1391        M 0x800027a0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1392        M 0x800027a4 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1393        M 0x800027a8 ret                            #; ra  = 0x80002a6c, goto 0x80002a6c
       0     1406        M 0x80002a6c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1409        M                                           #; (lsu) a0  <-- 0
       0     1410        M 0x80002a70 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1413        M                                           #; (lsu) a1  <-- 8
       0     1414        M 0x80002a74 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1417        M                                           #; (lsu) a2  <-- 0x00100000
       0     1418        M 0x80002a78 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1421        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1422        M 0x80002a7c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1423        M 0x80002a80 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1424        M 0x80002a84 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a84
       0     1425        M 0x80002a88 addi    t0, t0, 60             #; t0  = 0x80002a84, (wrb) t0  <-- 0x80002ac0
       0     1426        M 0x80002a8c csrw    mtvec, t0              #; t0  = 0x80002ac0, (lsu) a4  <-- 4132
       0     1434        M 0x80002a90 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a90
       0     1435        M 0x80002a94 jalr    ra, ra, 544            #; ra  = 0x80002a90, (wrb) ra  <-- 0x80002a98, goto 0x80002cb0
       0     1451        M 0x80002cb0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1452        M 0x80002cb4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002a98 ~~> Word[0x0011ff5c]
       0     1453        M 0x80002cb8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002cb8
       0     1454        M 0x80002cbc jalr    ra, ra, -1260          #; ra  = 0x80002cb8, (wrb) ra  <-- 0x80002cc0, goto 0x800027cc
       0     1472        M 0x800027cc lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1484        M 0x800027d0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1485        M 0x800027d4 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1488        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1489        M 0x800027d8 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1493        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1494        M 0x800027dc lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1496        M 0x800027e0 ret                            #; ra  = 0x80002cc0, goto 0x80002cc0
       0     1497        M                                           #; (lsu) a0  <-- 0x00120190
       0     1498        M 0x80002cc0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1527        M                                           #; (lsu) a0  <-- 0
       0     1528        M 0x80002cc4 mv      zero, a0               #; a0  = 0
       0     1529        M 0x80002cc8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1530        M 0x80002ccc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1532        M                                           #; (lsu) ra  <-- 0x80002a98
       0     1533        M 0x80002cd0 ret                            #; ra  = 0x80002a98, goto 0x80002a98
       0     1537        M 0x80002a98 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000a98
       0     1538        M 0x80002a9c jalr    ra, ra, -684           #; ra  = 0x80000a98, (wrb) ra  <-- 0x80002aa0, goto 0x800007ec
       0     1543        M 0x800007ec addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1549        M 0x800007f0 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002aa0 ~~> Word[0x0011ff5c]
       0     1550        M 0x800007f4 sw      s0, 24(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff58]
       0     1551        M 0x800007f8 sw      s1, 20(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff54]
       0     1554        M 0x800007fc fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
       0     1561        M 0x80000800 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1562        M 0x80000804 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1563        M 0x80000808 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1564        M 0x8000080c li      a0, 0                  #; (wrb) a0  <-- 0
       0     1566        M                                           #; (lsu) a1  <-- 0
       0     1573        M 0x80000810 bnez    a1, pc + 224           #; a1  = 0, not taken
       0     1574        M 0x80000814 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1575        M 0x80000818 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1576        M 0x8000081c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1579        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1585        M 0x80000820 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1588        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1589        M 0x80000824 lw      s0, 88(a0)             #; a0  = 0x0011ff70, s0  <~~ Word[0x0011ffc8]
       0     1592        M                                           #; (lsu) s0  <-- 0x00100000
       0     1593        M 0x80000828 lw      a1, 80(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
       0     1596        M                                           #; (lsu) a1  <-- 0x00100000
       0     1597        M 0x8000082c lw      a3, 84(a0)             #; a0  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
       0     1598        M 0x80000830 addi    a2, s0, 80             #; s0  = 0x00100000, (wrb) a2  <-- 0x00100050
       0     1600        M                                           #; (lsu) a3  <-- 0x0001df30
       0     1601        M 0x80000834 add     a1, a3, a1             #; a3  = 0x0001df30, a1  = 0x00100000, (wrb) a1  <-- 0x0011df30
       0     1602        M 0x80000838 bgeu    a1, a2, pc + 24        #; a1  = 0x0011df30, a2  = 0x00100050, taken, goto 0x80000850
       0     1627        M 0x80000850 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
       0     1628        M 0x80000854 mv      s1, s0                 #; s0  = 0x00100000, (wrb) s1  <-- 0x00100000
       0     1629        M 0x80000858 addi    a3, s0, 160            #; s0  = 0x00100000, (wrb) a3  <-- 0x001000a0
       0     1630        M 0x8000085c mv      s0, a2                 #; a2  = 0x00100050, (wrb) s0  <-- 0x00100050
       0     1654        M 0x80000860 bgeu    a1, a3, pc - 24        #; a1  = 0x0011df30, a3  = 0x001000a0, taken, goto 0x80000848
       0     1655        M 0x80000848 sw      a3, 88(a0)             #; a0  = 0x0011ff70, 0x001000a0 ~~> Word[0x0011ffc8]
       0     1656        M 0x8000084c j       pc + 0x1c              #; goto 0x80000868
       0     1657        M 0x80000868 mv      a0, s1                 #; s1  = 0x00100000, (wrb) a0  <-- 0x00100000
       0     1658        M 0x8000086c auipc   ra, 0x0                #; (wrb) ra  <-- 0x8000086c
       0     1669        M 0x80000870 jalr    ra, ra, -568           #; ra  = 0x8000086c, (wrb) ra  <-- 0x80000874, goto 0x80000634
       0     1692        M 0x80000634 srli    a1, a0, 20             #; a0  = 0x00100000, (wrb) a1  <-- 1
       0     1693        M 0x80000638 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     1694        M 0x8000063c lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     1704        M 0x80000640 addi    a2, a2, -71            #; a2  = 0x00120000, (wrb) a2  <-- 0x0011ffb9
       0     1705        M 0x80000644 sltu    a2, a0, a2             #; a0  = 0x00100000, a2  = 0x0011ffb9, (wrb) a2  <-- 1
       0     1706        M 0x80000648 and     a1, a1, a2             #; a1  = 1, a2  = 1, (wrb) a1  <-- 1
       0     1707        M 0x8000064c beqz    a1, pc + 212           #; a1  = 1, not taken
       0     1716        M 0x80000650 li      a1, 8                  #; (wrb) a1  <-- 8
       0     1717        M 0x80000654 li      a2, 9                  #; (wrb) a2  <-- 9
       0     1718        M 0x80000658 li      a3, 64                 #; (wrb) a3  <-- 64
       0     1719        M 0x8000065c li      a4, 192                #; (wrb) a4  <-- 192
       0     1728        M 0x80000660 scfgw   a2, a3                 #; a2  = 9, a3  = 64
       0     1729        M 0x80000664 scfgw   a1, a4                 #; a1  = 8, a4  = 192
       0     1730        M 0x80000668 li      a1, 32                 #; (wrb) a1  <-- 32
       0     1731        M 0x8000066c scfgw   zero, a1               #; a1  = 32, (acc) ra  <-- 0x00b020ab
       0     1740        M 0x80000670 scfgwi  a0, 896                #; a0  = 0x00100000
       0     1742        M 0x80000678 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003678
                         M 0x80000674 csrrsi  a0, ssr, 1             #; 
       0     1743        M 0x8000067c addi    a0, a0, -1696          #; a0  = 0x80003678, (wrb) a0  <-- 0x80002fd8
       0     1753        M 0x80000684 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003684
       0     1754        M 0x80000688 addi    a0, a0, -1700          #; a0  = 0x80003684, (wrb) a0  <-- 0x80002fe0
                         M 0x80000680 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002fd8]
       0     1757        M 0x8000068c fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002fe0]
       0     1763        M                                           #; (f:lsu) ft3  <-- 3.141
       0     1766        M 0x80000698 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003698
                         M 0x80000690 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.141, ft3  = 3.141, (f:lsu) ft4  <-- 6.282
       0     1767        M 0x8000069c addi    a0, a0, -1712          #; a0  = 0x80003698, (wrb) a0  <-- 0x80002fe8
                         M 0x80000694 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282, (f:fpu) ft0  <-- 3.141
       0     1768        M                                           #; (f:fpu) ft0  <-- 6.282
       0     1777        M 0x800006a4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036a4
       0     1778        M 0x800006a8 addi    a0, a0, -1716          #; a0  = 0x800036a4, (wrb) a0  <-- 0x80002ff0
                         M 0x800006a0 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002fe8]
       0     1781        M 0x800006ac fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002ff0]
       0     1787        M                                           #; (f:lsu) ft3  <-- 9.423
       0     1790        M 0x800006b8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036b8
                         M 0x800006b0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.423, ft3  = 9.423, (f:lsu) ft4  <-- 12.564
       0     1791        M 0x800006bc addi    a0, a0, -1728          #; a0  = 0x800036b8, (wrb) a0  <-- 0x80002ff8
                         M 0x800006b4 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564, (f:fpu) ft0  <-- 9.423
       0     1792        M                                           #; (f:fpu) ft0  <-- 12.564
       0     1801        M 0x800006c4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036c4
       0     1802        M 0x800006c8 addi    a0, a0, -1732          #; a0  = 0x800036c4, (wrb) a0  <-- 0x80003000
                         M 0x800006c0 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002ff8]
       0     1805        M 0x800006cc fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003000]
       0     1811        M                                           #; (f:lsu) ft3  <-- 15.705
       0     1814        M 0x800006d8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036d8
                         M 0x800006d0 fsgnj.d ft0, ft3, ft3          #; ft3  = 15.705, ft3  = 15.705, (f:lsu) ft4  <-- 18.846
       0     1815        M 0x800006dc addi    a0, a0, -1744          #; a0  = 0x800036d8, (wrb) a0  <-- 0x80003008
                         M 0x800006d4 fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846, (f:fpu) ft0  <-- 15.705
       0     1816        M                                           #; (f:fpu) ft0  <-- 18.846
       0     1825        M 0x800006e4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036e4
       0     1826        M 0x800006e8 addi    a0, a0, -1748          #; a0  = 0x800036e4, (wrb) a0  <-- 0x80003010
                         M 0x800006e0 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003008]
       0     1829        M 0x800006ec fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003010]
       0     1835        M                                           #; (f:lsu) ft3  <-- 21.9870000
       0     1838        M 0x800006f8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036f8
                         M 0x800006f0 fsgnj.d ft0, ft3, ft3          #; ft3  = 21.9870000, ft3  = 21.9870000, (f:lsu) ft4  <-- 25.128
       0     1839        M 0x800006fc addi    a0, a0, -1760          #; a0  = 0x800036f8, (wrb) a0  <-- 0x80003018
                         M 0x800006f4 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128, (f:fpu) ft0  <-- 21.9870000
       0     1840        M                                           #; (f:fpu) ft0  <-- 25.128
       0     1849        M 0x80000704 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003704
       0     1850        M 0x80000708 addi    a0, a0, -1764          #; a0  = 0x80003704, (wrb) a0  <-- 0x80003020
                         M 0x80000700 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003018]
       0     1853        M 0x8000070c fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003020]
       0     1859        M                                           #; (f:lsu) ft3  <-- 28.269
       0     1862        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 28.269, ft3  = 28.269, (f:lsu) ft4  <-- 31.41
       0     1863        M 0x8000071c ret                            #; ra  = 0x80000874, goto 0x80000874
                         M 0x80000714 fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41, (f:fpu) ft0  <-- 28.269
       0     1864        M 0x80000718 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 31.41
       0     1874        M 0x80000874 mv      a0, s0                 #; s0  = 0x00100050, (wrb) a0  <-- 0x00100050
       0     1875        M 0x80000878 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000878
       0     1876        M 0x8000087c jalr    ra, ra, -580           #; ra  = 0x80000878, (wrb) ra  <-- 0x80000880, goto 0x80000634
       0     1879        M 0x80000634 srli    a1, a0, 20             #; a0  = 0x00100050, (wrb) a1  <-- 1
       0     1880        M 0x80000638 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     1881        M 0x8000063c lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     1882        M 0x80000640 addi    a2, a2, -71            #; a2  = 0x00120000, (wrb) a2  <-- 0x0011ffb9
       0     1883        M 0x80000644 sltu    a2, a0, a2             #; a0  = 0x00100050, a2  = 0x0011ffb9, (wrb) a2  <-- 1
       0     1884        M 0x80000648 and     a1, a1, a2             #; a1  = 1, a2  = 1, (wrb) a1  <-- 1
       0     1885        M 0x8000064c beqz    a1, pc + 212           #; a1  = 1, not taken
       0     1886        M 0x80000650 li      a1, 8                  #; (wrb) a1  <-- 8
       0     1887        M 0x80000654 li      a2, 9                  #; (wrb) a2  <-- 9
       0     1888        M 0x80000658 li      a3, 64                 #; (wrb) a3  <-- 64
       0     1889        M 0x8000065c li      a4, 192                #; (wrb) a4  <-- 192
       0     1890        M 0x80000660 scfgw   a2, a3                 #; a2  = 9, a3  = 64
       0     1891        M 0x80000664 scfgw   a1, a4                 #; a1  = 8, a4  = 192
       0     1892        M 0x80000668 li      a1, 32                 #; (wrb) a1  <-- 32
       0     1893        M 0x8000066c scfgw   zero, a1               #; a1  = 32, (acc) ra  <-- 0x00b020ab
       0     1894        M 0x80000670 scfgwi  a0, 896                #; a0  = 0x00100050
       0     1896        M 0x80000678 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003678
                         M 0x80000674 csrrsi  a0, ssr, 1             #; 
       0     1897        M 0x8000067c addi    a0, a0, -1696          #; a0  = 0x80003678, (wrb) a0  <-- 0x80002fd8
       0     1898        M                                           #; (acc) gp  <-- 0x00053187
       0     1899        M 0x80000684 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003684
       0     1900        M 0x80000688 addi    a0, a0, -1700          #; a0  = 0x80003684, (wrb) a0  <-- 0x80002fe0
                         M 0x80000680 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002fd8]
       0     1901        M                                           #; (acc) tp  <-- 0x00053207
       0     1903        M 0x8000068c fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002fe0]
       0     1904        M 0x80000698 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003698
       0     1905        M 0x8000069c addi    a0, a0, -1712          #; a0  = 0x80003698, (wrb) a0  <-- 0x80002fe8
       0     1907        M 0x800006a4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036a4
       0     1908        M 0x800006a8 addi    a0, a0, -1716          #; a0  = 0x800036a4, (wrb) a0  <-- 0x80002ff0
       0     1909        M                                           #; (f:lsu) ft3  <-- 3.141
       0     1910        M 0x80000690 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.141, ft3  = 3.141
       0     1911        M                                           #; (f:fpu) ft0  <-- 3.141
       0     1912        M 0x800006b8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036b8
                         M                                           #; (f:lsu) ft4  <-- 6.282
       0     1913        M 0x800006bc addi    a0, a0, -1728          #; a0  = 0x800036b8, (wrb) a0  <-- 0x80002ff8
                         M 0x80000694 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
       0     1914        M 0x800006a0 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002fe8], (f:fpu) ft0  <-- 6.282
       0     1915        M 0x800006c4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036c4
                         M 0x800006ac fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002ff0]
       0     1916        M 0x800006c8 addi    a0, a0, -1732          #; a0  = 0x800036c4, (wrb) a0  <-- 0x80003000
       0     1920        M 0x800006d8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036d8
       0     1921        M 0x800006dc addi    a0, a0, -1744          #; a0  = 0x800036d8, (wrb) a0  <-- 0x80003008
       0     1923        M 0x800006e4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036e4
                         M                                           #; (f:lsu) ft3  <-- 9.423
       0     1924        M 0x800006e8 addi    a0, a0, -1748          #; a0  = 0x800036e4, (wrb) a0  <-- 0x80003010
                         M 0x800006b0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.423, ft3  = 9.423, (f:lsu) ft4  <-- 12.564
       0     1925        M 0x800006b4 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564, (f:fpu) ft0  <-- 9.423
       0     1926        M 0x800006c0 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002ff8], (f:fpu) ft0  <-- 12.564
       0     1927        M 0x800006cc fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003000]
       0     1928        M 0x800006f8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036f8
       0     1929        M 0x800006fc addi    a0, a0, -1760          #; a0  = 0x800036f8, (wrb) a0  <-- 0x80003018
       0     1931        M 0x80000704 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003704
       0     1932        M 0x80000708 addi    a0, a0, -1764          #; a0  = 0x80003704, (wrb) a0  <-- 0x80003020
       0     1935        M                                           #; (f:lsu) ft3  <-- 15.705
       0     1936        M 0x800006d0 fsgnj.d ft0, ft3, ft3          #; ft3  = 15.705, ft3  = 15.705, (f:lsu) ft4  <-- 18.846
       0     1937        M 0x8000071c ret                            #; ra  = 0x80000880, goto 0x80000880
                         M 0x800006d4 fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846, (f:fpu) ft0  <-- 15.705
       0     1938        M 0x800006e0 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003008], (f:fpu) ft0  <-- 18.846
       0     1939        M 0x800006ec fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003010]
       0     1940        M 0x80000880 li      a2, 10                 #; (wrb) a2  <-- 10
       0     1941        M 0x80000884 mv      a0, s1                 #; s1  = 0x00100000, (wrb) a0  <-- 0x00100000
       0     1942        M 0x80000888 mv      a1, s0                 #; s0  = 0x00100050, (wrb) a1  <-- 0x00100050
       0     1943        M 0x8000088c auipc   ra, 0x0                #; (wrb) ra  <-- 0x8000088c
       0     1947        M                                           #; (f:lsu) ft3  <-- 21.9870000
       0     1948        M 0x800006f0 fsgnj.d ft0, ft3, ft3          #; ft3  = 21.9870000, ft3  = 21.9870000, (f:lsu) ft4  <-- 25.128
       0     1949        M 0x800006f4 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128, (f:fpu) ft0  <-- 21.9870000
       0     1950        M 0x80000700 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003018], (f:fpu) ft0  <-- 25.128
       0     1951        M 0x8000070c fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003020]
       0     1952        M 0x80000890 jalr    ra, ra, 124            #; ra  = 0x8000088c, (wrb) ra  <-- 0x80000894, goto 0x80000908
       0     1959        M                                           #; (f:lsu) ft3  <-- 28.269
       0     1960        M 0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 28.269, ft3  = 28.269, (f:lsu) ft4  <-- 31.41
       0     1961        M 0x80000714 fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41, (f:fpu) ft0  <-- 28.269
       0     1962        M 0x80000718 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 31.41
       0     1966        M 0x80000908 li      a3, 1                  #; (wrb) a3  <-- 1
       0     1967        M 0x8000090c blt     a2, a3, pc + 48        #; a2  = 10, a3  = 1, not taken
       0     1969        M 0x80000910 addi    a6, a2, -1             #; a2  = 10, (wrb) a6  <-- 9
       0     1970        M 0x80000914 slli    a4, a6, 3              #; a6  = 9, (wrb) a4  <-- 72
       0     1971        M 0x80000918 add     a3, a4, a0             #; a4  = 72, a0  = 0x00100000, (wrb) a3  <-- 0x00100048
       0     1972        M 0x8000091c add     t1, a4, a1             #; a4  = 72, a1  = 0x00100050, (wrb) t1  <-- 0x00100098
       0     1981        M 0x80000920 srli    a5, a0, 20             #; a0  = 0x00100000, (wrb) a5  <-- 1
       0     1982        M 0x80000924 snez    t0, a5                 #; a5  = 1, (wrb) t0  <-- 1
       0     1983        M 0x80000928 lui     a5, 0x120              #; (wrb) a5  <-- 0x00120000
       0     1984        M 0x8000092c addi    a7, a5, 1              #; a5  = 0x00120000, (wrb) a7  <-- 0x00120001
       0     1993        M 0x80000930 bgeu    a3, a4, pc + 20        #; a3  = 0x00100048, a4  = 72, taken, goto 0x80000944
       0     2005        M 0x80000944 sltu    a3, a3, a7             #; a3  = 0x00100048, a7  = 0x00120001, (wrb) a3  <-- 1
       0     2006        M 0x80000948 and     t0, t0, a3             #; t0  = 1, a3  = 1, (wrb) t0  <-- 1
       0     2007        M 0x8000094c srli    a3, a1, 20             #; a1  = 0x00100050, (wrb) a3  <-- 1
       0     2017        M 0x80000950 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
       0     2018        M 0x80000954 bgeu    t1, a4, pc + 12        #; t1  = 0x00100098, a4  = 72, taken, goto 0x80000960
       0     2029        M 0x80000960 sltu    a4, t1, a7             #; t1  = 0x00100098, a7  = 0x00120001, (wrb) a4  <-- 1
       0     2030        M 0x80000964 and     a3, a3, a4             #; a3  = 1, a4  = 1, (wrb) a3  <-- 1
       0     2031        M 0x80000968 and     a3, t0, a3             #; t0  = 1, a3  = 1, (wrb) a3  <-- 1
       0     2032        M 0x8000096c beqz    a3, pc + 96            #; a3  = 1, not taken
       0     2041        M 0x80000970 li      a3, 8                  #; (wrb) a3  <-- 8
       0     2042        M 0x80000974 li      a4, 64                 #; (wrb) a4  <-- 64
       0     2043        M 0x80000978 li      a5, 192                #; (wrb) a5  <-- 192
       0     2044        M 0x8000097c scfgw   a6, a4                 #; a6  = 9, a4  = 64
       0     2053        M 0x80000980 scfgw   a3, a5                 #; a3  = 8, a5  = 192
       0     2054        M 0x80000984 li      a4, 32                 #; (wrb) a4  <-- 32
       0     2055        M 0x80000988 scfgw   zero, a4               #; a4  = 32
       0     2056        M 0x8000098c scfgwi  a0, 768                #; a0  = 0x00100000
       0     2065        M 0x80000990 li      a0, 1                  #; (wrb) a0  <-- 1
       0     2066        M 0x80000994 addi    a4, a0, 64             #; a0  = 1, (wrb) a4  <-- 65
       0     2067        M 0x80000998 addi    a5, a0, 192            #; a0  = 1, (wrb) a5  <-- 193
       0     2068        M 0x8000099c scfgw   a6, a4                 #; a6  = 9, a4  = 65
       0     2077        M 0x800009a0 scfgw   a3, a5                 #; a3  = 8, a5  = 193
       0     2078        M 0x800009a4 addi    a0, a0, 32             #; a0  = 1, (wrb) a0  <-- 33
       0     2079        M 0x800009a8 scfgw   zero, a0               #; a0  = 33
       0     2080        M 0x800009ac scfgwi  a1, 769                #; a1  = 0x00100050
       0     2090        M 0x800009b0 csrrsi  a0, ssr, 1             #; 
       0     2091        M 0x800009b8 addi    a2, a2, -1             #; a2  = 10, (wrb) a2  <-- 9
                         M 0x800009b4 fcvt.d.w fa0, zero             #; ac1  = 0
       0     2092        M                                           #; (f:fpu) fa0  <-- 0.0
       0     2094        M 0x800009bc fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 3.141, ft0  = 3.141, fa0  = 0.0
       0     2097        M                                           #; (f:fpu) fa0  <-- 9.865881
       0     2101        M 0x800009c0 bnez    a2, pc - 8             #; a2  = 9, taken, goto 0x800009b8
       0     2102        M 0x800009b8 addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
       0     2104        M 0x800009c0 bnez    a2, pc - 8             #; a2  = 8, taken, goto 0x800009b8
       0     2105        M 0x800009b8 addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
                         M 0x800009bc fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 6.282, ft0  = 6.282, fa0  = 9.865881
       0     2107        M 0x800009c0 bnez    a2, pc - 8             #; a2  = 7, taken, goto 0x800009b8
       0     2108        M 0x800009b8 addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
                         M                                           #; (f:fpu) fa0  <-- 49.3294050
       0     2109        M 0x800009bc fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 9.423, ft0  = 9.423, fa0  = 49.3294050
       0     2110        M 0x800009c0 bnez    a2, pc - 8             #; a2  = 6, taken, goto 0x800009b8
       0     2111        M 0x800009b8 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
       0     2112        M                                           #; (f:fpu) fa0  <-- 138.1223340
       0     2113        M 0x800009c0 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x800009b8
                         M 0x800009bc fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 12.564, ft0  = 12.564, fa0  = 138.1223340
       0     2114        M 0x800009b8 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     2116        M 0x800009c0 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x800009b8
                         M                                           #; (f:fpu) fa0  <-- 295.9764300
       0     2117        M 0x800009b8 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800009bc fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 15.705, ft0  = 15.705, fa0  = 295.9764300
       0     2119        M 0x800009c0 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x800009b8
       0     2120        M 0x800009b8 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) fa0  <-- 542.6234550
       0     2121        M 0x800009bc fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 18.846, ft0  = 18.846, fa0  = 542.6234550
       0     2122        M 0x800009c0 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x800009b8
       0     2123        M 0x800009b8 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     2124        M                                           #; (f:fpu) fa0  <-- 897.7951710
       0     2125        M 0x800009c0 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x800009b8
                         M 0x800009bc fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 21.9870000, ft0  = 21.9870000, fa0  = 897.7951710
       0     2126        M 0x800009b8 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     2128        M 0x800009c0 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) fa0  <-- 1381.2233400
       0     2129        M 0x800009bc fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 25.128, ft0  = 25.128, fa0  = 1381.2233400
       0     2130        M 0x800009c8 j       pc + 0x24              #; goto 0x800009ec
       0     2132        M                                           #; (f:fpu) fa0  <-- 2012.6397240
       0     2133        M 0x800009bc fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 28.269, ft0  = 28.269, fa0  = 2012.6397240
       0     2136        M                                           #; (f:fpu) fa0  <-- 2811.7760850
       0     2137        M 0x800009bc fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 31.41, ft0  = 31.41, fa0  = 2811.7760850
       0     2138        M 0x800009c4 csrrci  a0, ssr, 1             #; 
       0     2140        M                                           #; (f:fpu) fa0  <-- 3798.3641850
       0     2141        M 0x800009ec ret                            #; ra  = 0x80000894, goto 0x80000894
       0     2156        M 0x80000898 mv      a0, s1                 #; s1  = 0x00100000, (wrb) a0  <-- 0x00100000
       0     2157        M 0x8000089c mv      a1, s0                 #; s0  = 0x00100050, (wrb) a1  <-- 0x00100050
                         M 0x80000894 fsgnj.d fs0, fa0, fa0          #; fa0  = 3798.3641850, fa0  = 3798.3641850
       0     2158        M 0x800008a0 li      a2, 0                  #; (wrb) a2  <-- 0
                         M                                           #; (f:fpu) fs0  <-- 3798.3641850
       0     2159        M 0x800008a4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008a4
       0     2160        M 0x800008a8 jalr    ra, ra, 100            #; ra  = 0x800008a4, (wrb) ra  <-- 0x800008ac, goto 0x80000908
       0     2172        M 0x80000908 li      a3, 1                  #; (wrb) a3  <-- 1
       0     2173        M 0x8000090c blt     a2, a3, pc + 48        #; a2  = 0, a3  = 1, taken, goto 0x8000093c
       0     2178        M 0x8000093c fcvt.d.w fa0, zero             #; ac1  = 0
       0     2179        M                                           #; (f:fpu) fa0  <-- 0.0
       0     2180        M 0x80000940 ret                            #; ra  = 0x800008ac, goto 0x800008ac
       0     2181        M 0x800008ac auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028ac
       0     2182        M 0x800008b0 addi    a0, a0, 1916           #; a0  = 0x800028ac, (wrb) a0  <-- 0x80003028
       0     2185        M 0x800008b4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003028]
       0     2194        M                                           #; (f:lsu) ft0  <-- -3798.3641850
       0     2195        M 0x800008b8 fadd.d  ft0, fs0, ft0          #; fs0  = 3798.3641850, ft0  = -3798.3641850
       0     2197        M 0x800008c8 lw      a2, 0(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff40]
       0     2198        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2199        M 0x800008bc fadd.d  ft0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     2200        M                                           #; (lsu) a2  <-- 0
       0     2201        M 0x800008cc lw      a3, 4(sp)              #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff44]
       0     2202        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2203        M 0x800008c0 fsgnjx.d fs0, ft0, ft0         #; ft0  = 0.0, ft0  = 0.0
       0     2204        M                                           #; (lsu) a3  <-- 0
                         M                                           #; (f:fpu) fs0  <-- 0.0
       0     2205        M 0x800008c4 fsd     fs0, 0(sp)             #; 0.0 ~~> Doub[0x0011ff40]
       0     2207        M 0x800008d0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028d0
       0     2208        M 0x800008d4 addi    a0, a0, 1109           #; a0  = 0x800028d0, (wrb) a0  <-- 0x80002d25
       0     2209        M 0x800008d8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008d8
       0     2210        M 0x800008dc jalr    ra, ra, 280            #; ra  = 0x800008d8, (wrb) ra  <-- 0x800008e0, goto 0x800009f0
       0     2221        M 0x800009f0 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     2222        M 0x800009f4 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x800008e0 ~~> Word[0x0011ff1c]
       0     2223        M 0x800009f8 mv      t0, a0                 #; a0  = 0x80002d25, (wrb) t0  <-- 0x80002d25
       0     2224        M 0x800009fc sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0x00120001 ~~> Word[0x0011ff3c]
       0     2233        M 0x80000a00 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 9 ~~> Word[0x0011ff38]
       0     2234        M 0x80000a04 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 193 ~~> Word[0x0011ff34]
       0     2235        M 0x80000a08 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 65 ~~> Word[0x0011ff30]
       0     2236        M 0x80000a0c sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
       0     2245        M 0x80000a10 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     2246        M 0x80000a14 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 0x00100050 ~~> Word[0x0011ff24]
       0     2247        M 0x80000a18 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     2248        M 0x80000a1c sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     2257        M 0x80000a20 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001a20
       0     2258        M 0x80000a24 addi    a0, a0, -988           #; a0  = 0x80001a20, (wrb) a0  <-- 0x80001644
       0     2259        M 0x80000a28 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     2260        M 0x80000a2c li      a2, -1                 #; (wrb) a2  <-- -1
       0     2269        M 0x80000a30 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     2270        M 0x80000a34 mv      a3, t0                 #; t0  = 0x80002d25, (wrb) a3  <-- 0x80002d25
       0     2271        M 0x80000a38 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a38
       0     2272        M 0x80000a3c jalr    ra, ra, 20             #; ra  = 0x80000a38, (wrb) ra  <-- 0x80000a40, goto 0x80000a4c
       0     2281        M 0x80000a4c addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     2293        M 0x80000a50 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000a40 ~~> Word[0x0011ff0c]
       0     2294        M 0x80000a54 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0x00100050 ~~> Word[0x0011ff08]
       0     2295        M 0x80000a58 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0x00100000 ~~> Word[0x0011ff04]
       0     2296        M 0x80000a5c sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     2305        M 0x80000a60 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     2306        M 0x80000a64 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     2307        M 0x80000a68 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     2308        M 0x80000a6c sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     2317        M 0x80000a70 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     2318        M 0x80000a74 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     2319        M 0x80000a78 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     2320        M 0x80000a7c sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     2329        M 0x80000a80 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     2330        M 0x80000a84 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     2331        M 0x80000a88 mv      s0, a3                 #; a3  = 0x80002d25, (wrb) s0  <-- 0x80002d25
       0     2332        M 0x80000a8c mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     2341        M 0x80000a90 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     2342        M 0x80000a94 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     2343        M 0x80000a98 mv      s2, a0                 #; a0  = 0x80001644, (wrb) s2  <-- 0x80001644
       0     2344        M 0x80000a9c j       pc + 0xc               #; goto 0x80000aa8
       0     2353        M 0x80000aa8 li      s8, 0                  #; (wrb) s8  <-- 0
       0     2354        M 0x80000aac li      s6, 37                 #; (wrb) s6  <-- 37
       0     2365        M 0x80000ab0 li      s11, 16                #; (wrb) s11 <-- 16
       0     2366        M 0x80000ab4 li      s7, 46                 #; (wrb) s7  <-- 46
       0     2367        M 0x80000ab8 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     2368        M 0x80000abc addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     2377        M 0x80000ac0 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     2378        M 0x80000ac4 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     2379        M 0x80000ac8 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     2380        M 0x80000acc sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     2389        M 0x80000ad0 addi    s10, s0, 2             #; s0  = 0x80002d25, (wrb) s10 <-- 0x80002d27
       0     2390        M 0x80000ad4 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     2391        M 0x80000ad8 li      s8, 10                 #; (wrb) s8  <-- 10
       0     2392        M 0x80000adc lbu     a0, 0(s0)              #; s0  = 0x80002d25, a0  <~~ Byte[0x80002d25]
       0     2403        M                                           #; (lsu) a0  <-- 101
       0     2404        M 0x80000ae0 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     2405        M 0x80000ae4 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     2406        M 0x80000ae8 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     2407        M 0x80000aec mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2413        M 0x80000af0 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     2414        M 0x80000af4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2415        M 0x80000af8 jalr    s2                     #; s2  = 0x80001644, (wrb) ra  <-- 0x80000afc, goto 0x80001644
       0     2436        M 0x80001644 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     2437        M 0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2438        M 0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2448        M 0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2449        M 0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
       0     2450        M 0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
       0     2451        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2452        M 0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
       0     2460        M 0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     2471        M                                           #; (lsu) a4  <-- 0
       0     2472        M 0x80001664 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     2473        M 0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 1 ~~> Word[0x800030e4]
       0     2474        M 0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 0, (wrb) a4  <-- 0x800030e4
       0     2475        M 0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030e4, 101 ~~> Byte[0x8000312c]
       0     2476        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     2497        M                                           #; (lsu) a4  <-- 1
       0     2498        M 0x80001678 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     2499        M 0x8000167c snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     2500        M 0x80001680 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     2501        M 0x80001684 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     2502        M 0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2503        M 0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
       0     2523        M 0x800016ec ret                            #; ra  = 0x80000afc, goto 0x80000afc
       0     2537        M 0x80000afc addi    s0, s0, 1              #; s0  = 0x80002d25, (wrb) s0  <-- 0x80002d26
       0     2540        M 0x80000b00 addi    s10, s10, 1            #; s10 = 0x80002d27, (wrb) s10 <-- 0x80002d28
       0     2541        M 0x80000b04 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     2542        M 0x80000b08 lbu     a0, 0(s0)              #; s0  = 0x80002d26, a0  <~~ Byte[0x80002d26]
       0     2553        M                                           #; (lsu) a0  <-- 114
       0     2554        M 0x80000b0c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ae4
       0     2555        M 0x80000ae4 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2556        M 0x80000ae8 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     2557        M 0x80000aec mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2558        M 0x80000af0 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     2559        M 0x80000af4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2560        M 0x80000af8 jalr    s2                     #; s2  = 0x80001644, (wrb) ra  <-- 0x80000afc, goto 0x80001644
       0     2563        M 0x80001644 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2564        M 0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2565        M 0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2566        M 0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2567        M 0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
       0     2568        M 0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
       0     2569        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2570        M 0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
       0     2571        M 0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     2582        M                                           #; (lsu) a4  <-- 1
       0     2583        M 0x80001664 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     2584        M 0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 2 ~~> Word[0x800030e4]
       0     2585        M 0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 1, (wrb) a4  <-- 0x800030e5
       0     2586        M 0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030e5, 114 ~~> Byte[0x8000312d]
       0     2587        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     2608        M                                           #; (lsu) a4  <-- 2
       0     2609        M 0x80001678 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     2610        M 0x8000167c snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     2611        M 0x80001680 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2612        M 0x80001684 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2613        M 0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2614        M 0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
       0     2617        M 0x800016ec ret                            #; ra  = 0x80000afc, goto 0x80000afc
       0     2622        M 0x80000afc addi    s0, s0, 1              #; s0  = 0x80002d26, (wrb) s0  <-- 0x80002d27
       0     2625        M 0x80000b00 addi    s10, s10, 1            #; s10 = 0x80002d28, (wrb) s10 <-- 0x80002d29
       0     2626        M 0x80000b04 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     2627        M 0x80000b08 lbu     a0, 0(s0)              #; s0  = 0x80002d27, a0  <~~ Byte[0x80002d27]
       0     2638        M                                           #; (lsu) a0  <-- 114
       0     2639        M 0x80000b0c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ae4
       0     2640        M 0x80000ae4 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2641        M 0x80000ae8 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     2642        M 0x80000aec mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2643        M 0x80000af0 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     2644        M 0x80000af4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2645        M 0x80000af8 jalr    s2                     #; s2  = 0x80001644, (wrb) ra  <-- 0x80000afc, goto 0x80001644
       0     2648        M 0x80001644 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2649        M 0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2650        M 0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2651        M 0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2652        M 0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
       0     2653        M 0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
       0     2654        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2655        M 0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
       0     2656        M 0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     2667        M                                           #; (lsu) a4  <-- 2
       0     2668        M 0x80001664 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     2669        M 0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 3 ~~> Word[0x800030e4]
       0     2670        M 0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 2, (wrb) a4  <-- 0x800030e6
       0     2671        M 0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030e6, 114 ~~> Byte[0x8000312e]
       0     2672        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     2693        M                                           #; (lsu) a4  <-- 3
       0     2694        M 0x80001678 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     2695        M 0x8000167c snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     2696        M 0x80001680 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2697        M 0x80001684 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2698        M 0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2699        M 0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
       0     2702        M 0x800016ec ret                            #; ra  = 0x80000afc, goto 0x80000afc
       0     2707        M 0x80000afc addi    s0, s0, 1              #; s0  = 0x80002d27, (wrb) s0  <-- 0x80002d28
       0     2710        M 0x80000b00 addi    s10, s10, 1            #; s10 = 0x80002d29, (wrb) s10 <-- 0x80002d2a
       0     2711        M 0x80000b04 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     2712        M 0x80000b08 lbu     a0, 0(s0)              #; s0  = 0x80002d28, a0  <~~ Byte[0x80002d28]
       0     2723        M                                           #; (lsu) a0  <-- 111
       0     2724        M 0x80000b0c bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000ae4
       0     2725        M 0x80000ae4 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     2726        M 0x80000ae8 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     2727        M 0x80000aec mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2728        M 0x80000af0 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     2729        M 0x80000af4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2730        M 0x80000af8 jalr    s2                     #; s2  = 0x80001644, (wrb) ra  <-- 0x80000afc, goto 0x80001644
       0     2733        M 0x80001644 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     2734        M 0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2735        M 0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2736        M 0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2737        M 0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
       0     2738        M 0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
       0     2739        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2740        M 0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
       0     2741        M 0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     2752        M                                           #; (lsu) a4  <-- 3
       0     2753        M 0x80001664 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     2754        M 0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 4 ~~> Word[0x800030e4]
       0     2755        M 0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 3, (wrb) a4  <-- 0x800030e7
       0     2756        M 0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030e7, 111 ~~> Byte[0x8000312f]
       0     2757        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     2778        M                                           #; (lsu) a4  <-- 4
       0     2779        M 0x80001678 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     2780        M 0x8000167c snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     2781        M 0x80001680 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     2782        M 0x80001684 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     2783        M 0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2784        M 0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
       0     2787        M 0x800016ec ret                            #; ra  = 0x80000afc, goto 0x80000afc
       0     2792        M 0x80000afc addi    s0, s0, 1              #; s0  = 0x80002d28, (wrb) s0  <-- 0x80002d29
       0     2795        M 0x80000b00 addi    s10, s10, 1            #; s10 = 0x80002d2a, (wrb) s10 <-- 0x80002d2b
       0     2796        M 0x80000b04 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     2797        M 0x80000b08 lbu     a0, 0(s0)              #; s0  = 0x80002d29, a0  <~~ Byte[0x80002d29]
       0     2808        M                                           #; (lsu) a0  <-- 114
       0     2809        M 0x80000b0c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ae4
       0     2810        M 0x80000ae4 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2811        M 0x80000ae8 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     2812        M 0x80000aec mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2813        M 0x80000af0 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     2814        M 0x80000af4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2815        M 0x80000af8 jalr    s2                     #; s2  = 0x80001644, (wrb) ra  <-- 0x80000afc, goto 0x80001644
       0     2818        M 0x80001644 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2819        M 0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2820        M 0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2821        M 0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2822        M 0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
       0     2823        M 0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
       0     2824        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2825        M 0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
       0     2826        M 0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     2837        M                                           #; (lsu) a4  <-- 4
       0     2838        M 0x80001664 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     2839        M 0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 5 ~~> Word[0x800030e4]
       0     2840        M 0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 4, (wrb) a4  <-- 0x800030e8
       0     2841        M 0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030e8, 114 ~~> Byte[0x80003130]
       0     2842        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     2863        M                                           #; (lsu) a4  <-- 5
       0     2864        M 0x80001678 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     2865        M 0x8000167c snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     2866        M 0x80001680 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2867        M 0x80001684 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2868        M 0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2869        M 0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
       0     2872        M 0x800016ec ret                            #; ra  = 0x80000afc, goto 0x80000afc
       0     2877        M 0x80000afc addi    s0, s0, 1              #; s0  = 0x80002d29, (wrb) s0  <-- 0x80002d2a
       0     2880        M 0x80000b00 addi    s10, s10, 1            #; s10 = 0x80002d2b, (wrb) s10 <-- 0x80002d2c
       0     2881        M 0x80000b04 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     2882        M 0x80000b08 lbu     a0, 0(s0)              #; s0  = 0x80002d2a, a0  <~~ Byte[0x80002d2a]
       0     2893        M                                           #; (lsu) a0  <-- 32
       0     2894        M 0x80000b0c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000ae4
       0     2895        M 0x80000ae4 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     2896        M 0x80000ae8 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     2897        M 0x80000aec mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2898        M 0x80000af0 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     2899        M 0x80000af4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2900        M 0x80000af8 jalr    s2                     #; s2  = 0x80001644, (wrb) ra  <-- 0x80000afc, goto 0x80001644
       0     2903        M 0x80001644 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     2904        M 0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2905        M 0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2906        M 0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2907        M 0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
       0     2908        M 0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
       0     2909        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2910        M 0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
       0     2911        M 0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     2922        M                                           #; (lsu) a4  <-- 5
       0     2923        M 0x80001664 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     2924        M 0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 6 ~~> Word[0x800030e4]
       0     2925        M 0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 5, (wrb) a4  <-- 0x800030e9
       0     2926        M 0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030e9, 32 ~~> Byte[0x80003131]
       0     2927        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     2948        M                                           #; (lsu) a4  <-- 6
       0     2949        M 0x80001678 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     2950        M 0x8000167c snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     2951        M 0x80001680 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     2952        M 0x80001684 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     2953        M 0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2954        M 0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
       0     2957        M 0x800016ec ret                            #; ra  = 0x80000afc, goto 0x80000afc
       0     2962        M 0x80000afc addi    s0, s0, 1              #; s0  = 0x80002d2a, (wrb) s0  <-- 0x80002d2b
       0     2965        M 0x80000b00 addi    s10, s10, 1            #; s10 = 0x80002d2c, (wrb) s10 <-- 0x80002d2d
       0     2966        M 0x80000b04 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     2967        M 0x80000b08 lbu     a0, 0(s0)              #; s0  = 0x80002d2b, a0  <~~ Byte[0x80002d2b]
       0     2978        M                                           #; (lsu) a0  <-- 61
       0     2979        M 0x80000b0c bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000ae4
       0     2980        M 0x80000ae4 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     2981        M 0x80000ae8 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     2982        M 0x80000aec mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2983        M 0x80000af0 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     2984        M 0x80000af4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2985        M 0x80000af8 jalr    s2                     #; s2  = 0x80001644, (wrb) ra  <-- 0x80000afc, goto 0x80001644
       0     2988        M 0x80001644 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     2989        M 0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2990        M 0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2991        M 0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2992        M 0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
       0     2993        M 0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
       0     2994        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2995        M 0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
       0     2996        M 0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     3007        M                                           #; (lsu) a4  <-- 6
       0     3008        M 0x80001664 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     3009        M 0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 7 ~~> Word[0x800030e4]
       0     3010        M 0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 6, (wrb) a4  <-- 0x800030ea
       0     3011        M 0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030ea, 61 ~~> Byte[0x80003132]
       0     3012        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     3033        M                                           #; (lsu) a4  <-- 7
       0     3034        M 0x80001678 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     3035        M 0x8000167c snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     3036        M 0x80001680 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     3037        M 0x80001684 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     3038        M 0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3039        M 0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
       0     3042        M 0x800016ec ret                            #; ra  = 0x80000afc, goto 0x80000afc
       0     3047        M 0x80000afc addi    s0, s0, 1              #; s0  = 0x80002d2b, (wrb) s0  <-- 0x80002d2c
       0     3050        M 0x80000b00 addi    s10, s10, 1            #; s10 = 0x80002d2d, (wrb) s10 <-- 0x80002d2e
       0     3051        M 0x80000b04 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     3052        M 0x80000b08 lbu     a0, 0(s0)              #; s0  = 0x80002d2c, a0  <~~ Byte[0x80002d2c]
       0     3063        M                                           #; (lsu) a0  <-- 32
       0     3064        M 0x80000b0c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000ae4
       0     3065        M 0x80000ae4 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3066        M 0x80000ae8 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     3067        M 0x80000aec mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3068        M 0x80000af0 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     3069        M 0x80000af4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3070        M 0x80000af8 jalr    s2                     #; s2  = 0x80001644, (wrb) ra  <-- 0x80000afc, goto 0x80001644
       0     3073        M 0x80001644 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3074        M 0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3075        M 0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3076        M 0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3077        M 0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
       0     3078        M 0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
       0     3079        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3080        M 0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
       0     3081        M 0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     3092        M                                           #; (lsu) a4  <-- 7
       0     3093        M 0x80001664 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     3094        M 0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 8 ~~> Word[0x800030e4]
       0     3095        M 0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 7, (wrb) a4  <-- 0x800030eb
       0     3096        M 0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030eb, 32 ~~> Byte[0x80003133]
       0     3097        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     3118        M                                           #; (lsu) a4  <-- 8
       0     3119        M 0x80001678 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     3120        M 0x8000167c snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     3121        M 0x80001680 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3122        M 0x80001684 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3123        M 0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3124        M 0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
       0     3127        M 0x800016ec ret                            #; ra  = 0x80000afc, goto 0x80000afc
       0     3132        M 0x80000afc addi    s0, s0, 1              #; s0  = 0x80002d2c, (wrb) s0  <-- 0x80002d2d
       0     3135        M 0x80000b00 addi    s10, s10, 1            #; s10 = 0x80002d2e, (wrb) s10 <-- 0x80002d2f
       0     3136        M 0x80000b04 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     3137        M 0x80000b08 lbu     a0, 0(s0)              #; s0  = 0x80002d2d, a0  <~~ Byte[0x80002d2d]
       0     3148        M                                           #; (lsu) a0  <-- 37
       0     3149        M 0x80000b0c bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000ae4
       0     3150        M 0x80000ae4 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000b14
       0     3162        M 0x80000b14 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3163        M 0x80000b18 j       pc + 0x10              #; goto 0x80000b28
       0     3174        M 0x80000b28 lbu     a0, -1(s10)            #; s10 = 0x80002d2f, a0  <~~ Byte[0x80002d2e]
       0     3185        M                                           #; (lsu) a0  <-- 102
       0     3186        M 0x80000b2c addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     3187        M 0x80000b30 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000b68
       0     3210        M 0x80000b68 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     3211        M 0x80000b6c andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     3222        M 0x80000b70 addi    a1, s10, -1            #; s10 = 0x80002d2f, (wrb) a1  <-- 0x80002d2e
       0     3223        M 0x80000b74 li      a3, 9                  #; (wrb) a3  <-- 9
       0     3224        M 0x80000b78 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000bf4
       0     3245        M 0x80000bf4 li      a2, 42                 #; (wrb) a2  <-- 42
       0     3246        M 0x80000bf8 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000c48
       0     3268        M 0x80000c48 li      s6, 0                  #; (wrb) s6  <-- 0
       0     3269        M 0x80000c4c mv      s10, a1                #; a1  = 0x80002d2e, (wrb) s10 <-- 0x80002d2e
       0     3280        M 0x80000c50 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     3281        M 0x80000c54 li      s7, 0                  #; (wrb) s7  <-- 0
       0     3282        M 0x80000c58 j       pc + 0xc               #; goto 0x80000c64
       0     3303        M 0x80000c64 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     3304        M 0x80000c68 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     3305        M 0x80000c6c slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     3315        M 0x80000c70 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     3316        M 0x80000c74 li      a2, 9                  #; (wrb) a2  <-- 9
       0     3317        M 0x80000c78 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000cdc
       0     3338        M 0x80000cdc addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     3350        M 0x80000ce0 li      a2, 83                 #; (wrb) a2  <-- 83
       0     3351        M 0x80000ce4 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     3352        M 0x80000ce8 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     3353        M 0x80000cec auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002cec
       0     3362        M 0x80000cf0 addi    a2, a2, 184            #; a2  = 0x80002cec, (wrb) a2  <-- 0x80002da4
       0     3363        M 0x80000cf4 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002da4, (wrb) a1  <-- 0x80002ea8
       0     3364        M 0x80000cf8 lw      a2, 0(a1)              #; a1  = 0x80002ea8, a2  <~~ Word[0x80002ea8]
       0     3365        M 0x80000cfc li      a1, 8                  #; (wrb) a1  <-- 8
       0     3374        M 0x80000d00 li      s8, 16                 #; (wrb) s8  <-- 16
       0     3375        M                                           #; (lsu) a2  <-- 0x80000d34
       0     3376        M 0x80000d04 jr      a2                     #; a2  = 0x80000d34, goto 0x80000d34
       0     3397        M 0x80000d34 li      a1, 70                 #; (wrb) a1  <-- 70
       0     3398        M 0x80000d38 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000d40
       0     3409        M 0x80000d40 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     3410        M 0x80000d44 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     3412        M 0x80000d4c addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     3413        M 0x80000d48 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     3414        M                                           #; (f:lsu) fa0  <-- 0.0
       0     3421        M 0x80000d50 mv      a0, s2                 #; s2  = 0x80001644, (wrb) a0  <-- 0x80001644
       0     3422        M 0x80000d54 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3423        M 0x80000d58 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     3424        M 0x80000d5c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3433        M 0x80000d60 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     3434        M 0x80000d64 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     3435        M 0x80000d68 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     3436        M 0x80000d6c auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001d6c
       0     3445        M 0x80000d70 jalr    ra, ra, -1656          #; ra  = 0x80001d6c, (wrb) ra  <-- 0x80000d74, goto 0x800016f4
       0     3459        M 0x800016f4 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     3460        M 0x800016f8 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000d74 ~~> Word[0x0011fe9c]
       0     3461        M 0x800016fc sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     3471        M 0x80001700 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     3472        M 0x80001704 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001644 ~~> Word[0x0011fe90]
       0     3473        M 0x80001708 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     3474        M 0x8000170c sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     3483        M 0x80001710 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     3484        M 0x80001714 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     3485        M 0x80001718 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     3486        M 0x8000171c sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     3495        M 0x80001720 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     3496        M 0x80001724 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002d2e ~~> Word[0x0011fe70]
       0     3499        M 0x80001728 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe68]
       0     3500        M 0x8000172c fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     3508        M 0x80001734 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003734
       0     3509        M 0x80001738 addi    s1, s1, -1788          #; s1  = 0x80003734, (wrb) s1  <-- 0x80003038
                         M 0x80001730 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     3512        M 0x8000173c fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003038]
       0     3520        M 0x80001744 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     3521        M 0x80001748 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3522        M 0x8000174c mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x80001740 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     3531        M 0x80001750 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     3532        M 0x80001754 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     3533        M 0x80001758 mv      s7, a0                 #; a0  = 0x80001644, (wrb) s7  <-- 0x80001644
       0     3534        M 0x8000175c bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x8000184c
       0     3556        M 0x8000184c fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     3557        M                                           #; (f:fpu) fs0  <-- 0.0
       0     3566        M 0x80001850 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002850
       0     3567        M 0x80001854 addi    a0, a0, 2032           #; a0  = 0x80002850, (wrb) a0  <-- 0x80003040
       0     3570        M 0x80001858 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003040]
       0     3579        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3580        M 0x8000185c fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3582        M                                           #; (acc) t3  <-- 0x00051e63
       0     3583        M 0x80001860 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x8000187c
       0     3590        M 0x8000187c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000287c
       0     3602        M 0x80001880 addi    a0, a0, 1996           #; a0  = 0x8000287c, (wrb) a0  <-- 0x80003048
       0     3604        M 0x80001888 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002888
       0     3605        M 0x8000188c addi    a0, a0, 1992           #; a0  = 0x80002888, (wrb) a0  <-- 0x80003050
                         M 0x80001884 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003048]
       0     3614        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     3616        M 0x80001890 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003050]
       0     3617        M 0x80001894 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     3619        M                                           #; (acc) a0  <-- 0x00b57533
       0     3625        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     3626        M 0x80001898 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     3628        M                                           #; (acc) a0  <-- 0x00b57533
       0     3629        M 0x8000189c and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     3630        M 0x800018a0 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x8000199c
       0     3653        M 0x8000199c andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     3665        M 0x800019a0 li      s8, 6                  #; (wrb) s8  <-- 6
       0     3666        M 0x800019a4 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x800019ac
       0     3667        M 0x800019ac li      a0, 10                 #; (wrb) a0  <-- 10
       0     3678        M 0x800019b4 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x800019ec
       0     3679        M 0x800019b0 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     3680        M                                           #; (f:fpu) fs2  <-- 0.0
       0     3700        M 0x800019ec li      s0, 0                  #; (wrb) s0  <-- 0
       0     3712        M 0x800019f0 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     3713        M 0x800019f4 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800029f4
       0     3714        M 0x800019f8 addi    a1, a1, 1284           #; a1  = 0x800029f4, (wrb) a1  <-- 0x80002ef8
       0     3715        M 0x800019fc add     a0, a0, a1             #; a0  = 48, a1  = 0x80002ef8, (wrb) a0  <-- 0x80002f28
       0     3726        M 0x80001a00 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f28]
       0     3727        M 0x80001a04 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     3731        M 0x80001a08 fcvt.d.w ft0, s1               #; ac1  = 0
       0     3732        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3733        M 0x80001a0c fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     3735        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     3736        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3737        M 0x80001a14 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002a14
       0     3738        M 0x80001a18 addi    a0, a0, 1604           #; a0  = 0x80002a14, (wrb) a0  <-- 0x80003058
                         M 0x80001a10 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     3741        M 0x80001a1c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003058], (f:fpu) ft2  <-- 0.0
       0     3749        M 0x80001a20 fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     3750        M                                           #; (f:lsu) ft0  <-- 0.5
       0     3751        M                                           #; (acc) gp  <-- 0xd21501d3
       0     3753        M 0x80001a24 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     3754        M                                           #; (f:fpu) ft3  <-- 0.0
       0     3755        M 0x80001a28 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     3758        M                                           #; (f:fpu) ft2  <-- 0.0
       0     3759        M 0x80001a2c fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3762        M 0x80001a30 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001a50
       0     3784        M 0x80001a50 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3786        M                                           #; (acc) s4  <-- 0x00059a63
       0     3787        M 0x80001a54 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001a68
       0     3796        M 0x80001a6c beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001a68 fcvt.d.w fs1, zero             #; ac1  = 0
       0     3797        M                                           #; (f:fpu) fs1  <-- 0.0
       0     3807        M 0x80001a70 li      a2, 0                  #; (wrb) a2  <-- 0
       0     3808        M 0x80001a74 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     3809        M 0x80001a78 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     3810        M 0x80001a7c li      t0, 32                 #; (wrb) t0  <-- 32
       0     3819        M 0x80001a80 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     3820        M 0x80001a84 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     3821        M 0x80001a88 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     3822        M 0x80001a8c li      a6, 10                 #; (wrb) a6  <-- 10
       0     3831        M 0x80001a90 li      a7, 9                  #; (wrb) a7  <-- 9
       0     3832        M 0x80001a94 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     3833        M 0x80001a98 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     3834        M 0x80001a9c mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     3843        M 0x80001aa0 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     3844        M 0x80001aa4 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     3847        M                                           #; (acc) a3  <-- 0x40d586b3
       0     3848        M 0x80001aa8 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     3849        M 0x80001aac ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     3855        M 0x80001ab0 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     3856        M 0x80001ab4 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     3857        M 0x80001ab8 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     3858        M 0x80001abc bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     3870        M 0x80001ac0 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     3871        M 0x80001ac4 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     3872        M 0x80001ac8 li      a3, 30                 #; (wrb) a3  <-- 30
       0     3873        M 0x80001acc sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     3882        M 0x80001ad0 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     3883        M 0x80001ad4 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     3884        M 0x80001ad8 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     3885        M 0x80001adc bnez    a3, pc + 136           #; a3  = 0, not taken
       0     3894        M 0x80001ae0 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     3895        M 0x80001ae4 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     3896        M 0x80001ae8 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     3897        M 0x80001aec add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     3906        M 0x80001af0 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     3907        M 0x80001af4 li      a1, 31                 #; (wrb) a1  <-- 31
       0     3908        M 0x80001af8 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     3909        M 0x80001afc add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     3918        M 0x80001b00 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     3919        M 0x80001b04 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001b0c
       0     3920        M 0x80001b0c addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     3930        M 0x80001b10 li      a1, 48                 #; (wrb) a1  <-- 48
       0     3931        M 0x80001b14 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000b14
       0     3932        M 0x80001b18 jalr    ra, ra, -1468          #; ra  = 0x80000b14, (wrb) ra  <-- 0x80001b1c, goto 0x80000558
       0     3953        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     3954        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     3965        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     3988        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     4000        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     4001        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     4002        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     4003        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     4023        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     4024        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     4035        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     4036        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     4037        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     4038        M 0x800005ec ret                            #; ra  = 0x80001b1c, goto 0x80001b1c
       0     4049        M 0x80001b1c li      a0, 0                  #; (wrb) a0  <-- 0
       0     4052        M 0x80001b20 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     4053        M 0x80001b24 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     4054        M 0x80001b28 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     4055        M 0x80001b2c snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     4064        M 0x80001b30 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4065        M 0x80001b34 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4066        M 0x80001b38 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b20
       0     4067        M 0x80001b20 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     4068        M 0x80001b24 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     4069        M 0x80001b28 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     4070        M 0x80001b2c snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     4071        M 0x80001b30 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4072        M 0x80001b34 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     4073        M 0x80001b38 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b20
       0     4074        M 0x80001b20 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     4075        M 0x80001b24 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     4076        M 0x80001b28 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     4077        M 0x80001b2c snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     4078        M 0x80001b30 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4079        M 0x80001b34 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     4080        M 0x80001b38 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b20
       0     4081        M 0x80001b20 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     4082        M 0x80001b24 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     4083        M 0x80001b28 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     4084        M 0x80001b2c snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     4085        M 0x80001b30 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4086        M 0x80001b34 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     4087        M 0x80001b38 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001b20
       0     4088        M 0x80001b20 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     4089        M 0x80001b24 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     4090        M 0x80001b28 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     4091        M 0x80001b2c snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     4092        M 0x80001b30 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     4093        M 0x80001b34 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     4094        M 0x80001b38 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     4095        M 0x80001b3c add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     4107        M 0x80001b40 j       pc + 0x28              #; goto 0x80001b68
       0     4119        M 0x80001b68 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     4120        M 0x80001b6c addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     4131        M 0x80001b70 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     4132        M 0x80001b74 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     4133        M 0x80001b78 li      a1, 46                 #; (wrb) a1  <-- 46
       0     4134        M 0x80001b7c sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     4143        M 0x80001b80 j       pc + 0x8               #; goto 0x80001b88
       0     4144        M 0x80001b88 li      a0, 32                 #; (wrb) a0  <-- 32
       0     4145        M 0x80001b8c mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     4156        M 0x80001b90 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     4157        M 0x80001b94 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4159        M 0x80001b9c lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001b98 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     4168        M 0x80001ba0 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     4169        M 0x80001ba4 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4170        M 0x80001ba8 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     4171        M 0x80001bac li      a4, 18                 #; (wrb) a4  <-- 18
       0     4180        M 0x80001bb0 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     4181        M 0x80001bb4 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     4184        M                                           #; (acc) a5  <-- 0x01f55793
       0     4185        M 0x80001bb8 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     4186        M 0x80001bbc srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     4192        M 0x80001bc0 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     4193        M 0x80001bc4 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     4196        M                                           #; (acc) a5  <-- 0x40f487b3
       0     4197        M 0x80001bc8 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     4198        M 0x80001bcc addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     4204        M 0x80001bd0 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     4205        M 0x80001bd4 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     4206        M 0x80001bd8 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     4207        M 0x80001bdc sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     4216        M 0x80001be0 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     4217        M 0x80001be4 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     4218        M 0x80001be8 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     4219        M 0x80001bec j       pc + 0x8               #; goto 0x80001bf4
       0     4231        M 0x80001bf4 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     4232        M 0x80001bf8 li      a0, 1                  #; (wrb) a0  <-- 1
       0     4233        M 0x80001bfc bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001c68
       0     4254        M 0x80001c68 li      a0, 31                 #; (wrb) a0  <-- 31
       0     4255        M 0x80001c6c bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     4266        M 0x80001c70 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001c88
       0     4278        M 0x80001c88 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     4279        M 0x80001c8c bnez    a0, pc + 32            #; a0  = 0, not taken
       0     4290        M 0x80001c90 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     4291        M 0x80001c94 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001cc0
       0     4313        M 0x80001cc0 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     4314        M 0x80001cc4 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     4315        M 0x80001cc8 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     4316        M 0x80001ccc or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     4325        M 0x80001cd0 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     4326        M 0x80001cd4 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     4327        M 0x80001cd8 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001d04
       0     4348        M 0x80001d04 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     4349        M 0x80001d08 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     4350        M 0x80001d0c addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     4360        M 0x80001d10 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     4361        M 0x80001d14 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     4362        M 0x80001d18 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     4363        M 0x80001d1c addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     4364        M                                           #; (lsu) a0  <-- 48
       0     4372        M 0x80001d20 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4373        M 0x80001d24 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     4374        M 0x80001d28 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4375        M 0x80001d2c jalr    s7                     #; s7  = 0x80001644, (wrb) ra  <-- 0x80001d30, goto 0x80001644
       0     4386        M 0x80001644 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4387        M 0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4388        M 0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4389        M 0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4390        M 0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
       0     4391        M 0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
       0     4392        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4393        M 0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
       0     4394        M 0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     4405        M                                           #; (lsu) a4  <-- 8
       0     4406        M 0x80001664 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     4407        M 0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 9 ~~> Word[0x800030e4]
       0     4408        M 0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 8, (wrb) a4  <-- 0x800030ec
       0     4409        M 0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030ec, 48 ~~> Byte[0x80003134]
       0     4410        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     4431        M                                           #; (lsu) a4  <-- 9
       0     4432        M 0x80001678 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     4433        M 0x8000167c snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     4434        M 0x80001680 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4435        M 0x80001684 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4436        M 0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4437        M 0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
       0     4440        M 0x800016ec ret                            #; ra  = 0x80001d30, goto 0x80001d30
       0     4445        M 0x80001d30 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     4446        M 0x80001d34 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     4447        M 0x80001d38 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001d10
       0     4448        M 0x80001d10 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     4449        M 0x80001d14 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     4450        M 0x80001d18 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     4451        M 0x80001d1c addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     4452        M 0x80001d20 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4453        M 0x80001d24 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     4454        M 0x80001d28 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4455        M 0x80001d2c jalr    s7                     #; s7  = 0x80001644, (wrb) ra  <-- 0x80001d30, goto 0x80001644
       0     4456        M                                           #; (lsu) a0  <-- 46
       0     4458        M 0x80001644 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     4459        M 0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4460        M 0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4461        M 0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4462        M 0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
       0     4463        M 0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
       0     4464        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4465        M 0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
       0     4466        M 0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     4477        M                                           #; (lsu) a4  <-- 9
       0     4478        M 0x80001664 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     4479        M 0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 10 ~~> Word[0x800030e4]
       0     4480        M 0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 9, (wrb) a4  <-- 0x800030ed
       0     4481        M 0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030ed, 46 ~~> Byte[0x80003135]
       0     4482        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     4503        M                                           #; (lsu) a4  <-- 10
       0     4504        M 0x80001678 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     4505        M 0x8000167c snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     4506        M 0x80001680 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     4507        M 0x80001684 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     4508        M 0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4509        M 0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
       0     4512        M 0x800016ec ret                            #; ra  = 0x80001d30, goto 0x80001d30
       0     4517        M 0x80001d30 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     4518        M 0x80001d34 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     4519        M 0x80001d38 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001d10
       0     4520        M 0x80001d10 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     4521        M 0x80001d14 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     4522        M 0x80001d18 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     4523        M 0x80001d1c addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     4524        M 0x80001d20 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4525        M 0x80001d24 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     4526        M 0x80001d28 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4527        M 0x80001d2c jalr    s7                     #; s7  = 0x80001644, (wrb) ra  <-- 0x80001d30, goto 0x80001644
       0     4528        M                                           #; (lsu) a0  <-- 48
       0     4530        M 0x80001644 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4531        M 0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4532        M 0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4533        M 0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4534        M 0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
       0     4535        M 0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
       0     4536        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4537        M 0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
       0     4538        M 0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     4549        M                                           #; (lsu) a4  <-- 10
       0     4550        M 0x80001664 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     4551        M 0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 11 ~~> Word[0x800030e4]
       0     4552        M 0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 10, (wrb) a4  <-- 0x800030ee
       0     4553        M 0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030ee, 48 ~~> Byte[0x80003136]
       0     4554        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     4575        M                                           #; (lsu) a4  <-- 11
       0     4576        M 0x80001678 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     4577        M 0x8000167c snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     4578        M 0x80001680 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4579        M 0x80001684 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4580        M 0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4581        M 0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
       0     4584        M 0x800016ec ret                            #; ra  = 0x80001d30, goto 0x80001d30
       0     4589        M 0x80001d30 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     4590        M 0x80001d34 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     4591        M 0x80001d38 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001d10
       0     4592        M 0x80001d10 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     4593        M 0x80001d14 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     4594        M 0x80001d18 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     4595        M 0x80001d1c addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     4596        M 0x80001d20 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4597        M 0x80001d24 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     4598        M 0x80001d28 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4599        M 0x80001d2c jalr    s7                     #; s7  = 0x80001644, (wrb) ra  <-- 0x80001d30, goto 0x80001644
       0     4600        M                                           #; (lsu) a0  <-- 48
       0     4602        M 0x80001644 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4603        M 0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4604        M 0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4605        M 0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4606        M 0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
       0     4607        M 0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
       0     4608        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4609        M 0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
       0     4610        M 0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     4621        M                                           #; (lsu) a4  <-- 11
       0     4622        M 0x80001664 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     4623        M 0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 12 ~~> Word[0x800030e4]
       0     4624        M 0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 11, (wrb) a4  <-- 0x800030ef
       0     4625        M 0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030ef, 48 ~~> Byte[0x80003137]
       0     4626        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     4647        M                                           #; (lsu) a4  <-- 12
       0     4648        M 0x80001678 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     4649        M 0x8000167c snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     4650        M 0x80001680 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4651        M 0x80001684 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4652        M 0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4653        M 0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
       0     4656        M 0x800016ec ret                            #; ra  = 0x80001d30, goto 0x80001d30
       0     4661        M 0x80001d30 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     4662        M 0x80001d34 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     4663        M 0x80001d38 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001d10
       0     4664        M 0x80001d10 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     4665        M 0x80001d14 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     4666        M 0x80001d18 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     4667        M 0x80001d1c addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     4668        M 0x80001d20 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4669        M 0x80001d24 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     4670        M 0x80001d28 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4671        M 0x80001d2c jalr    s7                     #; s7  = 0x80001644, (wrb) ra  <-- 0x80001d30, goto 0x80001644
       0     4672        M                                           #; (lsu) a0  <-- 48
       0     4674        M 0x80001644 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4675        M 0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4676        M 0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4677        M 0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4678        M 0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
       0     4679        M 0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
       0     4680        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4681        M 0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
       0     4682        M 0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     4693        M                                           #; (lsu) a4  <-- 12
       0     4694        M 0x80001664 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     4695        M 0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 13 ~~> Word[0x800030e4]
       0     4696        M 0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 12, (wrb) a4  <-- 0x800030f0
       0     4697        M 0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030f0, 48 ~~> Byte[0x80003138]
       0     4698        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     4719        M                                           #; (lsu) a4  <-- 13
       0     4720        M 0x80001678 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     4721        M 0x8000167c snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     4722        M 0x80001680 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4723        M 0x80001684 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4724        M 0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4725        M 0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
       0     4728        M 0x800016ec ret                            #; ra  = 0x80001d30, goto 0x80001d30
       0     4733        M 0x80001d30 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     4734        M 0x80001d34 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     4735        M 0x80001d38 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001d10
       0     4736        M 0x80001d10 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     4737        M 0x80001d14 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     4738        M 0x80001d18 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     4739        M 0x80001d1c addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     4740        M 0x80001d20 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4741        M 0x80001d24 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     4742        M 0x80001d28 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4743        M 0x80001d2c jalr    s7                     #; s7  = 0x80001644, (wrb) ra  <-- 0x80001d30, goto 0x80001644
       0     4744        M                                           #; (lsu) a0  <-- 48
       0     4746        M 0x80001644 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4747        M 0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4748        M 0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4749        M 0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4750        M 0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
       0     4751        M 0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
       0     4752        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4753        M 0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
       0     4754        M 0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     4765        M                                           #; (lsu) a4  <-- 13
       0     4766        M 0x80001664 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     4767        M 0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 14 ~~> Word[0x800030e4]
       0     4768        M 0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 13, (wrb) a4  <-- 0x800030f1
       0     4769        M 0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030f1, 48 ~~> Byte[0x80003139]
       0     4770        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     4791        M                                           #; (lsu) a4  <-- 14
       0     4792        M 0x80001678 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     4793        M 0x8000167c snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     4794        M 0x80001680 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4795        M 0x80001684 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4796        M 0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4797        M 0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
       0     4800        M 0x800016ec ret                            #; ra  = 0x80001d30, goto 0x80001d30
       0     4805        M 0x80001d30 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     4806        M 0x80001d34 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     4807        M 0x80001d38 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001d10
       0     4808        M 0x80001d10 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     4809        M 0x80001d14 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     4810        M 0x80001d18 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     4811        M 0x80001d1c addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     4812        M 0x80001d20 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4813        M 0x80001d24 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     4814        M 0x80001d28 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4815        M 0x80001d2c jalr    s7                     #; s7  = 0x80001644, (wrb) ra  <-- 0x80001d30, goto 0x80001644
       0     4816        M                                           #; (lsu) a0  <-- 48
       0     4818        M 0x80001644 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4819        M 0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4820        M 0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4821        M 0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4822        M 0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
       0     4823        M 0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
       0     4824        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4825        M 0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
       0     4826        M 0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     4837        M                                           #; (lsu) a4  <-- 14
       0     4838        M 0x80001664 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     4839        M 0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 15 ~~> Word[0x800030e4]
       0     4840        M 0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 14, (wrb) a4  <-- 0x800030f2
       0     4841        M 0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030f2, 48 ~~> Byte[0x8000313a]
       0     4842        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     4863        M                                           #; (lsu) a4  <-- 15
       0     4864        M 0x80001678 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     4865        M 0x8000167c snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     4866        M 0x80001680 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4867        M 0x80001684 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4868        M 0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4869        M 0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
       0     4872        M 0x800016ec ret                            #; ra  = 0x80001d30, goto 0x80001d30
       0     4877        M 0x80001d30 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     4878        M 0x80001d34 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     4879        M 0x80001d38 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001d10
       0     4880        M 0x80001d10 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     4881        M 0x80001d14 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     4882        M 0x80001d18 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     4883        M 0x80001d1c addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     4884        M 0x80001d20 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4885        M 0x80001d24 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     4886        M 0x80001d28 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4887        M 0x80001d2c jalr    s7                     #; s7  = 0x80001644, (wrb) ra  <-- 0x80001d30, goto 0x80001644
       0     4888        M                                           #; (lsu) a0  <-- 48
       0     4890        M 0x80001644 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4891        M 0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4892        M 0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4893        M 0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4894        M 0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
       0     4895        M 0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
       0     4896        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4897        M 0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
       0     4898        M 0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     4909        M                                           #; (lsu) a4  <-- 15
       0     4910        M 0x80001664 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     4911        M 0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 16 ~~> Word[0x800030e4]
       0     4912        M 0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 15, (wrb) a4  <-- 0x800030f3
       0     4913        M 0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030f3, 48 ~~> Byte[0x8000313b]
       0     4914        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     4935        M                                           #; (lsu) a4  <-- 16
       0     4936        M 0x80001678 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     4937        M 0x8000167c snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     4938        M 0x80001680 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4939        M 0x80001684 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4940        M 0x80001688 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4941        M 0x8000168c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800016ec
       0     4944        M 0x800016ec ret                            #; ra  = 0x80001d30, goto 0x80001d30
       0     4949        M 0x80001d30 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     4950        M 0x80001d34 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     4951        M 0x80001d38 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     4952        M 0x80001d3c j       pc + 0x8               #; goto 0x80001d44
       0     4964        M 0x80001d44 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     4965        M 0x80001d48 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     4966        M 0x80001d4c xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4976        M 0x80001d50 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     4977        M 0x80001d54 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     4978        M 0x80001d58 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001d88
       0     4999        M 0x80001d88 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     5000        M 0x80001d8c mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     5013        M 0x80001d90 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     5014        M 0x80001d9c lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
                         M 0x80001d94 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0     5015        M 0x80001d98 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
       0     5016        M                                           #; (f:lsu) fs0  <-- 0.0
       0     5018        M                                           #; (lsu) s10 <-- 0x80002d2e
       0     5023        M 0x80001da0 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     5026        M                                           #; (lsu) s9  <-- 8
       0     5027        M 0x80001da4 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     5030        M                                           #; (lsu) s8  <-- 16
       0     5031        M 0x80001da8 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     5034        M                                           #; (lsu) s7  <-- 0
       0     5035        M 0x80001dac lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     5038        M                                           #; (lsu) s6  <-- 0
       0     5039        M 0x80001db0 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     5042        M                                           #; (lsu) s5  <-- -1
       0     5043        M 0x80001db4 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     5046        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     5047        M 0x80001db8 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     5050        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     5051        M 0x80001dbc lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     5054        M                                           #; (lsu) s2  <-- 0x80001644
       0     5055        M 0x80001dc0 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     5058        M                                           #; (lsu) s1  <-- 8
       0     5059        M 0x80001dc4 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     5062        M                                           #; (lsu) s0  <-- 0
       0     5063        M 0x80001dc8 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     5064        M 0x80001dcc addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     5066        M                                           #; (lsu) ra  <-- 0x80000d74
       0     5067        M 0x80001dd0 ret                            #; ra  = 0x80000d74, goto 0x80000d74
       0     5079        M 0x80000d74 j       pc + 0x7c0             #; goto 0x80001534
       0     5082        M 0x80001534 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     5083        M 0x80001538 li      s6, 37                 #; (wrb) s6  <-- 37
       0     5084        M 0x8000153c li      s7, 46                 #; (wrb) s7  <-- 46
       0     5094        M 0x80001540 addi    s0, s10, 1             #; s10 = 0x80002d2e, (wrb) s0  <-- 0x80002d2f
       0     5095        M 0x80001544 j       pc - 0xa74             #; goto 0x80000ad0
       0     5106        M 0x80000ad0 addi    s10, s0, 2             #; s0  = 0x80002d2f, (wrb) s10 <-- 0x80002d31
       0     5107        M 0x80000ad4 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     5108        M 0x80000ad8 li      s8, 10                 #; (wrb) s8  <-- 10
       0     5109        M 0x80000adc lbu     a0, 0(s0)              #; s0  = 0x80002d2f, a0  <~~ Byte[0x80002d2f]
       0     5120        M                                           #; (lsu) a0  <-- 10
       0     5121        M 0x80000ae0 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     5122        M 0x80000ae4 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     5123        M 0x80000ae8 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     5124        M 0x80000aec mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5130        M 0x80000af0 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     5131        M 0x80000af4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5132        M 0x80000af8 jalr    s2                     #; s2  = 0x80001644, (wrb) ra  <-- 0x80000afc, goto 0x80001644
       0     5144        M 0x80001644 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     5145        M 0x80001648 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5146        M 0x8000164c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5147        M 0x80001650 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5148        M 0x80001654 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003654
       0     5149        M 0x80001658 addi    a3, a3, -1392          #; a3  = 0x80003654, (wrb) a3  <-- 0x800030e4
       0     5150        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5151        M 0x8000165c add     a1, a2, a3             #; a2  = 0, a3  = 0x800030e4, (wrb) a1  <-- 0x800030e4
       0     5152        M 0x80001660 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     5163        M                                           #; (lsu) a4  <-- 16
       0     5164        M 0x80001664 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     5165        M 0x80001668 sw      a5, 0(a1)              #; a1  = 0x800030e4, 17 ~~> Word[0x800030e4]
       0     5166        M 0x8000166c add     a4, a1, a4             #; a1  = 0x800030e4, a4  = 16, (wrb) a4  <-- 0x800030f4
       0     5167        M 0x80001670 sb      a0, 72(a4)             #; a4  = 0x800030f4, 10 ~~> Byte[0x8000313c]
       0     5168        M 0x80001674 lw      a4, 0(a1)              #; a1  = 0x800030e4, a4  <~~ Word[0x800030e4]
       0     5189        M                                           #; (lsu) a4  <-- 17
       0     5190        M 0x80001678 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     5191        M 0x8000167c snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     5192        M 0x80001680 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     5193        M 0x80001684 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     5194        M 0x80001688 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     5195        M 0x8000168c bnez    a0, pc + 96            #; a0  = 0, not taken
       0     5196        M 0x80001690 add     a0, a3, a2             #; a3  = 0x800030e4, a2  = 0, (wrb) a0  <-- 0x800030e4
       0     5197        M 0x80001694 addi    a2, a0, 72             #; a0  = 0x800030e4, (wrb) a2  <-- 0x8000312c
       0     5198        M 0x80001698 sw      zero, 12(a0)           #; a0  = 0x800030e4, 0 ~~> Word[0x800030f0]
       0     5199        M 0x8000169c li      a3, 64                 #; (wrb) a3  <-- 64
       0     5208        M 0x800016a0 sw      a3, 8(a0)              #; a0  = 0x800030e4, 64 ~~> Word[0x800030ec]
       0     5209        M 0x800016a4 sw      zero, 20(a0)           #; a0  = 0x800030e4, 0 ~~> Word[0x800030f8]
       0     5210        M 0x800016a8 li      a3, 1                  #; (wrb) a3  <-- 1
       0     5211        M 0x800016ac sw      a3, 16(a0)             #; a0  = 0x800030e4, 1 ~~> Word[0x800030f4]
       0     5220        M 0x800016b0 sw      zero, 28(a0)           #; a0  = 0x800030e4, 0 ~~> Word[0x80003100]
       0     5221        M 0x800016b4 sw      a2, 24(a0)             #; a0  = 0x800030e4, 0x8000312c ~~> Word[0x800030fc]
       0     5223        M 0x800016b8 lw      a2, 0(a1)              #; a1  = 0x800030e4, a2  <~~ Word[0x800030e4]
       0     5224        M 0x800016bc addi    a3, a0, 8              #; a0  = 0x800030e4, (wrb) a3  <-- 0x800030ec
       0     5233        M 0x800016c0 sw      zero, 36(a0)           #; a0  = 0x800030e4, 0 ~~> Word[0x80003108]
       0     5252        M                                           #; (lsu) a2  <-- 17
       0     5253        M 0x800016c4 sw      a2, 32(a0)             #; a0  = 0x800030e4, 17 ~~> Word[0x80003104]
       0     5254        M 0x800016c8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800036c8
       0     5255        M 0x800016cc addi    a0, a0, -1864          #; a0  = 0x800036c8, (wrb) a0  <-- 0x80002f80
       0     5256        M 0x800016d0 sw      a3, 0(a0)              #; a0  = 0x80002f80, 0x800030ec ~~> Word[0x80002f80]
       0     5257        M 0x800016d4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800036d4
       0     5258        M 0x800016d8 addi    a0, a0, -1812          #; a0  = 0x800036d4, (wrb) a0  <-- 0x80002fc0
       0     5259        M 0x800016dc lw      a2, 0(a0)              #; a0  = 0x80002fc0, a2  <~~ Word[0x80002fc0]
       0     5282        M                                           #; (lsu) a2  <-- 0
       0     5283        M 0x800016e0 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800016dc
       0     5284        M 0x800016dc lw      a2, 0(a0)              #; a0  = 0x80002fc0, a2  <~~ Word[0x80002fc0]
       0     5295        M                                           #; (lsu) a2  <-- 0
       0     5296        M 0x800016e0 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800016dc
       0     5297        M 0x800016dc lw      a2, 0(a0)              #; a0  = 0x80002fc0, a2  <~~ Word[0x80002fc0]
       0     5308        M                                           #; (lsu) a2  <-- 1
       0     5309        M 0x800016e0 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     5310        M 0x800016e4 sw      zero, 0(a0)            #; a0  = 0x80002fc0, 0 ~~> Word[0x80002fc0]
       0     5311        M 0x800016e8 sw      zero, 0(a1)            #; a1  = 0x800030e4, 0 ~~> Word[0x800030e4]
       0     5312        M 0x800016ec ret                            #; ra  = 0x80000afc, goto 0x80000afc
       0     5315        M 0x80000afc addi    s0, s0, 1              #; s0  = 0x80002d2f, (wrb) s0  <-- 0x80002d30
       0     5318        M 0x80000b00 addi    s10, s10, 1            #; s10 = 0x80002d31, (wrb) s10 <-- 0x80002d32
       0     5319        M 0x80000b04 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     5320        M 0x80000b08 lbu     a0, 0(s0)              #; s0  = 0x80002d30, a0  <~~ Byte[0x80002d30]
       0     5333        M                                           #; (lsu) a0  <-- 0
       0     5334        M 0x80000b0c bnez    a0, pc - 40            #; a0  = 0, not taken
       0     5346        M 0x80000b10 j       pc + 0xad8             #; goto 0x800015e8
       0     5358        M 0x800015e8 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     5359        M 0x800015ec bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x800015f4
       0     5370        M 0x800015f4 li      a0, 0                  #; (wrb) a0  <-- 0
       0     5371        M 0x800015f8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5372        M 0x800015fc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5382        M 0x80001600 jalr    s2                     #; s2  = 0x80001644, (wrb) ra  <-- 0x80001604, goto 0x80001644
       0     5396        M 0x80001644 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800016ec
       0     5401        M 0x800016ec ret                            #; ra  = 0x80001604, goto 0x80001604
       0     5402        M 0x80001604 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     5403        M 0x80001608 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     5406        M                                           #; (lsu) s11 <-- 0
       0     5407        M 0x8000160c lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     5410        M                                           #; (lsu) s10 <-- 0
       0     5411        M 0x80001610 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     5414        M                                           #; (lsu) s9  <-- 0
       0     5415        M 0x80001614 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     5418        M                                           #; (lsu) s8  <-- 0
       0     5419        M 0x80001618 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     5422        M                                           #; (lsu) s7  <-- 0
       0     5423        M 0x8000161c lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     5426        M                                           #; (lsu) s6  <-- 0
       0     5427        M 0x80001620 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     5430        M                                           #; (lsu) s5  <-- 0
       0     5431        M 0x80001624 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     5434        M                                           #; (lsu) s4  <-- 0
       0     5435        M 0x80001628 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     5438        M                                           #; (lsu) s3  <-- 0
       0     5439        M 0x8000162c lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     5442        M                                           #; (lsu) s2  <-- 0
       0     5443        M 0x80001630 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     5446        M                                           #; (lsu) s1  <-- 0x00100000
       0     5447        M 0x80001634 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     5450        M                                           #; (lsu) s0  <-- 0x00100050
       0     5451        M 0x80001638 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     5452        M 0x8000163c addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     5454        M                                           #; (lsu) ra  <-- 0x80000a40
       0     5455        M 0x80001640 ret                            #; ra  = 0x80000a40, goto 0x80000a40
       0     5467        M 0x80000a40 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     5468        M 0x80000a44 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     5470        M                                           #; (lsu) ra  <-- 0x800008e0
       0     5471        M 0x80000a48 ret                            #; ra  = 0x800008e0, goto 0x800008e0
       0     5481        M 0x800008e0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028e0
       0     5482        M 0x800008e4 addi    a0, a0, 1872           #; a0  = 0x800028e0, (wrb) a0  <-- 0x80003030
       0     5485        M 0x800008e8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003030]
       0     5486        M 0x800008f4 lw      s1, 20(sp)             #; sp  = 0x0011ff40, s1  <~~ Word[0x0011ff54]
       0     5494        M                                           #; (f:lsu) ft0  <-- 0.0001
       0     5495        M 0x800008ec flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0
       0     5496        M                                           #; (lsu) s1  <-- 0
       0     5497        M 0x800008f8 lw      s0, 24(sp)             #; sp  = 0x0011ff40, s0  <~~ Word[0x0011ff58], (acc) s0  <-- 0x01812403
                         M 0x800008f0 fld     fs0, 8(sp)             #; fs0  <~~ Doub[0x0011ff48]
       0     5498        M                                           #; (f:lsu) fs0  <-- 0.0
       0     5500        M                                           #; (lsu) s0  <-- 0
       0     5501        M 0x800008fc lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
       0     5502        M 0x80000900 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
       0     5504        M                                           #; (lsu) ra  <-- 0x80002aa0
       0     5505        M 0x80000904 ret                            #; ra  = 0x80002aa0, goto 0x80002aa0
       0     5508        M 0x80002aa0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     5509        M 0x80002aa4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002aa4
       0     5510        M 0x80002aa8 jalr    ra, ra, 524            #; ra  = 0x80002aa4, (wrb) ra  <-- 0x80002aac, goto 0x80002cb0
       0     5522        M 0x80002cb0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     5523        M 0x80002cb4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002aac ~~> Word[0x0011ff5c]
       0     5524        M 0x80002cb8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002cb8
       0     5525        M 0x80002cbc jalr    ra, ra, -1260          #; ra  = 0x80002cb8, (wrb) ra  <-- 0x80002cc0, goto 0x800027cc
       0     5536        M 0x800027cc lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5539        M 0x800027d0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5540        M 0x800027d4 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5543        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5544        M 0x800027d8 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5547        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5548        M 0x800027dc lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     5549        M 0x800027e0 ret                            #; ra  = 0x80002cc0, goto 0x80002cc0
       0     5551        M                                           #; (lsu) a0  <-- 0x00120190
       0     5552        M 0x80002cc0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     5562        M                                           #; (lsu) a0  <-- 0
       0     5563        M 0x80002cc4 mv      zero, a0               #; a0  = 0
       0     5564        M 0x80002cc8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     5565        M 0x80002ccc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     5567        M                                           #; (lsu) ra  <-- 0x80002aac
       0     5568        M 0x80002cd0 ret                            #; ra  = 0x80002aac, goto 0x80002aac
       0     5582        M 0x80002aac mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     5586        M 0x80002ab0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ab0
       0     5587        M 0x80002ab4 jalr    ra, ra, 556            #; ra  = 0x80002ab0, (wrb) ra  <-- 0x80002ab8, goto 0x80002cdc
       0     5588        M 0x80002cdc addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     5589        M 0x80002ce0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     5590        M 0x80002ce4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002ab8 ~~> Word[0x0011ff5c]
       0     5591        M 0x80002ce8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ce8
       0     5592        M 0x80002cec jalr    ra, ra, -1340          #; ra  = 0x80002ce8, (wrb) ra  <-- 0x80002cf0, goto 0x800027ac
       0     5603        M 0x800027ac lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5607        M 0x800027b0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5608        M 0x800027b4 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5611        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5612        M 0x800027b8 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5615        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5616        M 0x800027bc lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     5617        M 0x800027c0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5619        M                                           #; (lsu) a0  <-- 0
       0     5620        M 0x800027c4 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     5621        M 0x800027c8 ret                            #; ra  = 0x80002cf0, goto 0x80002cf0
       0     5622        M 0x80002cf0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     5625        M                                           #; (lsu) t0  <-- 0
       0     5626        M 0x80002cf4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     5627        M 0x80002cf8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     5628        M 0x80002cfc bnez    a0, pc + 24            #; a0  = 0, not taken
       0     5629        M                                           #; (lsu) ra  <-- 0x80002ab8
       0     5633        M 0x80002d00 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     5634        M 0x80002d04 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     5635        M 0x80002d08 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002d08
       0     5636        M 0x80002d0c addi    t1, t1, 632            #; t1  = 0x80002d08, (wrb) t1  <-- 0x80002f80
       0     5644        M 0x80002d10 sw      t0, 0(t1)              #; t1  = 0x80002f80, 1 ~~> Word[0x80002f80]
       0     5645        M 0x80002d14 ret                            #; ra  = 0x80002ab8, goto 0x80002ab8
       0     5658        M 0x80002ab8 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 5658):
snitch_loads                                   138
snitch_stores                                  145
fpss_stores                                      5
fpss_loads                                      33
snitch_avg_load_latency                    11.9203
snitch_occupancy                            0.2414
snitch_fseq_rel_offloads                    0.0871
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        1.2326
fpss_avg_load_latency                       7.7879
fpss_occupancy                              0.0230
fpss_fpu_occupancy                          0.0152
fpss_fpu_rel_occupancy                      0.6615
cycles                                        5647
total_ipc                                   0.2644
