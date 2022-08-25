       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x800027b0
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x800027b0, (wrb) ra  <-- 4120, goto 0x800027b0
       0      269        M 0x800027b0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x800037b0
       0      270        M 0x800027b4 addi    gp, gp, -232           #; gp  = 0x800037b0, (wrb) gp  <-- 0x800036c8
       0      271        M 0x800027b8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800027b8
       0      272        M 0x800027bc jalr    ra, ra, 964            #; ra  = 0x800027b8, (wrb) ra  <-- 0x800027c0, goto 0x80002b7c
       0      292        M 0x80002b7c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002b80 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002b84 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002b88 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80002b8c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80002b90 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80002b94 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80002b98 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80002b9c mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80002ba0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80002ba4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80002ba8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80002bac ret                            #; ra  = 0x800027c0, goto 0x800027c0
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x800027c0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x800027c4 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x800027c8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800027c8
       0      508        M 0x800027cc jalr    ra, ra, 1036           #; ra  = 0x800027c8, (wrb) ra  <-- 0x800027d0, goto 0x80002bd4
       0      523        M 0x80002bd4 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80002bd8 ret                            #; ra  = 0x800027d0, goto 0x800027d0
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x800027d0 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x800027d4 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x800027d8 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x800027dc sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x800027e0 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x800027e4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800027e4
       0      551        M 0x800027e8 addi    t0, t0, 1964           #; t0  = 0x800027e4, (wrb) t0  <-- 0x80002f90
       0      552        M 0x800027ec auipc   t1, 0x0                #; (wrb) t1  <-- 0x800027ec
       0      562        M 0x800027f0 addi    t1, t1, 1960           #; t1  = 0x800027ec, (wrb) t1  <-- 0x80002f94
       0      563        M 0x800027f4 bge     t0, t1, pc + 16        #; t0  = 0x80002f90, t1  = 0x80002f94, not taken
       0      564        M 0x800027f8 sw      zero, 0(t0)            #; t0  = 0x80002f90, 0 ~~> Word[0x80002f90]
       0      565        M 0x800027fc addi    t0, t0, 4              #; t0  = 0x80002f90, (wrb) t0  <-- 0x80002f94
       0      573        M 0x80002800 blt     t0, t1, pc - 8         #; t0  = 0x80002f94, t1  = 0x80002f94, not taken
       0      574        M 0x80002804 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80002808 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x8000280c beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80002810 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80002814 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80002818 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x8000281c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80002820 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80002824 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80002828 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x8000282c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80002830 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80002834 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80002838 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x8000283c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80002840 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80002844 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80002848 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x8000284c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80002850 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80002854 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80002858 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x8000285c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80002860 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80002864 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80002868 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x8000286c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x80002870 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x80002874 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x80002878 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x8000287c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x80002880 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x80002884 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x80002888 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x8000288c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x80002890 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x80002894 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x80002898 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002898
       0      684        M 0x8000289c lw      t0, 900(t0)            #; t0  = 0x80002898, t0  <~~ Word[0x80002c1c]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x800028a0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x800028a4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x800028a8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800028a8
       0      708        M 0x800028ac lw      t2, 880(t2)            #; t2  = 0x800028a8, t2  <~~ Word[0x80002c18]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x800028b0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x800028b4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x800028b8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x800028bc sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x800028c0 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x800028c4 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x800028c8 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x800028cc sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x800028d0 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800028d0
       0      762        M 0x800028d4 addi    t0, t0, 1528           #; t0  = 0x800028d0, (wrb) t0  <-- 0x80002ec8
       0      763        M 0x800028d8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800028d8
       0      764        M 0x800028dc addi    t1, t1, 1520           #; t1  = 0x800028d8, (wrb) t1  <-- 0x80002ec8
       0      775        M 0x800028e0 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800028e0
       0      776        M 0x800028e4 addi    t2, t2, 1512           #; t2  = 0x800028e0, (wrb) t2  <-- 0x80002ec8
       0      777        M 0x800028e8 auipc   t3, 0x0                #; (wrb) t3  <-- 0x800028e8
       0      778        M 0x800028ec addi    t3, t3, 1520           #; t3  = 0x800028e8, (wrb) t3  <-- 0x80002ed8
       0      787        M 0x800028f0 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002ec8, (wrb) sp  <-- 0x80122e38
       0      788        M 0x800028f4 sub     sp, sp, t1             #; sp  = 0x80122e38, t1  = 0x80002ec8, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x800028f8 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002ec8, (wrb) sp  <-- 0x80122e38
       0      790        M 0x800028fc sub     sp, sp, t3             #; sp  = 0x80122e38, t3  = 0x80002ed8, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80002900 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80002904 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80002908 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x8000290c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80002910 bge     t0, t1, pc + 24        #; t0  = 0x80002ec8, t1  = 0x80002ec8, taken, goto 0x80002928
       0      823        M 0x80002928 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002928
       0      824        M 0x8000292c addi    t0, t0, 1440           #; t0  = 0x80002928, (wrb) t0  <-- 0x80002ec8
       0      835        M 0x80002930 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002930
       0      836        M 0x80002934 addi    t1, t1, 1448           #; t1  = 0x80002930, (wrb) t1  <-- 0x80002ed8
       0      837        M 0x80002938 bge     t0, t1, pc + 20        #; t0  = 0x80002ec8, t1  = 0x80002ed8, not taken
       0      838        M 0x8000293c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002940 addi    t0, t0, 4              #; t0  = 0x80002ec8, (wrb) t0  <-- 0x80002ecc
       0      848        M 0x80002944 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002948 blt     t0, t2, pc - 12        #; t0  = 0x80002ecc, t2  = 0x80002ec8, not taken
       0      850        M 0x8000294c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80002950 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80002954 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80002958 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x8000295c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80002960 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80002964 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002964
       0      877        M 0x80002968 jalr    ra, ra, -1380          #; ra  = 0x80002964, (wrb) ra  <-- 0x8000296c, goto 0x80002400
       0      898        M 0x80002400 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      899        M 0x80002404 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      901        M 0x80002408 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      923        M                                           #; (lsu) t1  <-- 0
       0      924        M 0x8000240c sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      925        M 0x80002410 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      963        M                                           #; (lsu) a6  <-- 1
       0      964        M 0x80002414 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1003        M                                           #; (lsu) a7  <-- 1
       0     1004        M 0x80002418 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1005        M 0x8000241c mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1008        M                                           #; (acc) a0  <-- 0x02580533
       0     1043        M                                           #; (lsu) t0  <-- 8
       0     1044        M 0x80002420 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1047        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1048        M 0x80002424 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1049        M 0x80002428 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1050        M 0x8000242c sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1051        M 0x80002430 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1055        M 0x80002434 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1056        M 0x80002438 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1057        M 0x8000243c sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1063        M 0x80002440 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1064        M 0x80002444 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1065        M 0x80002448 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1083        M                                           #; (lsu) a0  <-- 0x80000000
       0     1084        M 0x8000244c add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1085        M 0x80002450 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1086        M 0x80002454 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1087        M 0x80002458 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1123        M                                           #; (lsu) a0  <-- 0
       0     1124        M 0x8000245c lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1125        M 0x80002460 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1163        M                                           #; (lsu) a1  <-- 1
       0     1164        M 0x80002464 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1165        M 0x80002468 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1166        M 0x8000246c sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1167        M 0x80002470 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1168        M 0x80002474 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1169        M 0x80002478 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1190        M                                           #; (lsu) a0  <-- 0x00020000
       0     1191        M 0x8000247c add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1192        M 0x80002480 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1193        M 0x80002484 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1194        M 0x80002488 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1195        M 0x8000248c srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1205        M 0x80002490 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1206        M 0x80002494 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1207        M 0x80002498 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1208        M 0x8000249c sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1219        M 0x800024a0 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1220        M 0x800024a4 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1221        M 0x800024a8 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1222        M 0x800024ac sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1231        M 0x800024b0 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1232        M 0x800024b4 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1234        M 0x800024b8 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1238        M 0x800024bc sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1243        M 0x800024c0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1244        M 0x800024c4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1245        M 0x800024c8 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1246        M 0x800024cc lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1250        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1255        M 0x800024d0 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1259        M                                           #; (lsu) a1  <-- 0
       0     1260        M 0x800024d4 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1261        M 0x800024d8 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1263        M                                           #; (lsu) a0  <-- 8
       0     1264        M 0x800024dc remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1267        M 0x800024e0 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1268        M 0x800024e4 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1269        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1270        M 0x800024e8 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1271        M 0x800024ec li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1279        M 0x800024f0 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1280        M 0x800024f4 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800034f4
       0     1281        M 0x800024f8 addi    a1, a1, -1376          #; a1  = 0x800034f4, (wrb) a1  <-- 0x80002f94
       0     1283        M                                           #; (acc) a0  <-- 0x00b50533
       0     1284        M 0x800024fc add     a0, a0, a1             #; a0  = 0, a1  = 0x80002f94, (wrb) a0  <-- 0x80002f94
       0     1291        M 0x80002500 sw      zero, 0(a0)            #; a0  = 0x80002f94, 0 ~~> Word[0x80002f94]
       0     1292        M 0x80002504 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1362        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1363        M 0x80002508 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1364        M 0x8000250c sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1365        M 0x80002510 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1366        M 0x80002514 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1367        M 0x80002518 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1368        M 0x8000251c addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1369        M 0x80002520 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1370        M 0x80002524 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1371        M 0x80002528 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1372        M 0x8000252c sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1373        M 0x80002530 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1374        M 0x80002534 lw      a0, 0(a1)              #; a1  = 0x80002f94, a0  <~~ Word[0x80002f94]
       0     1385        M                                           #; (lsu) a0  <-- 0
       0     1386        M 0x80002538 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1387        M 0x8000253c andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1388        M 0x80002540 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1389        M 0x80002544 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1390        M 0x80002548 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1391        M 0x8000254c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1392        M 0x80002550 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1393        M 0x80002554 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1394        M 0x80002558 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1395        M 0x8000255c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1400        M 0x80002560 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1401        M 0x80002564 ret                            #; ra  = 0x8000296c, goto 0x8000296c
       0     1415        M 0x8000296c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1418        M                                           #; (lsu) a0  <-- 0
       0     1419        M 0x80002970 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1422        M                                           #; (lsu) a1  <-- 8
       0     1423        M 0x80002974 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1426        M                                           #; (lsu) a2  <-- 0x00100000
       0     1427        M 0x80002978 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1430        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1431        M 0x8000297c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1432        M 0x80002980 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1433        M 0x80002984 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002984
       0     1434        M 0x80002988 addi    t0, t0, 60             #; t0  = 0x80002984, (wrb) t0  <-- 0x800029c0
       0     1435        M 0x8000298c csrw    mtvec, t0              #; t0  = 0x800029c0, (lsu) a4  <-- 4132
       0     1443        M 0x80002990 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002990
       0     1444        M 0x80002994 jalr    ra, ra, 544            #; ra  = 0x80002990, (wrb) ra  <-- 0x80002998, goto 0x80002bb0
       0     1460        M 0x80002bb0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1461        M 0x80002bb4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002998 ~~> Word[0x0011ff5c]
       0     1462        M 0x80002bb8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bb8
       0     1463        M 0x80002bbc jalr    ra, ra, -1584          #; ra  = 0x80002bb8, (wrb) ra  <-- 0x80002bc0, goto 0x80002588
       0     1481        M 0x80002588 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1482        M 0x8000258c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1493        M 0x80002590 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1496        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1497        M 0x80002594 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1501        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1502        M 0x80002598 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1503        M 0x8000259c ret                            #; ra  = 0x80002bc0, goto 0x80002bc0
       0     1505        M                                           #; (lsu) a0  <-- 0x00120190
       0     1506        M 0x80002bc0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1535        M                                           #; (lsu) a0  <-- 0
       0     1536        M 0x80002bc4 mv      zero, a0               #; a0  = 0
       0     1537        M 0x80002bc8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1538        M 0x80002bcc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1540        M                                           #; (lsu) ra  <-- 0x80002998
       0     1541        M 0x80002bd0 ret                            #; ra  = 0x80002998, goto 0x80002998
       0     1545        M 0x80002998 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000998
       0     1546        M 0x8000299c jalr    ra, ra, -868           #; ra  = 0x80000998, (wrb) ra  <-- 0x800029a0, goto 0x80000634
       0     1551        M 0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1552        M 0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x800029a0 ~~> Word[0x0011ff5c]
       0     1553        M 0x8000063c sw      s0, 24(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff58]
       0     1555        M 0x80000644 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1556        M 0x80000648 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
                         M 0x80000640 fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
       0     1557        M 0x8000064c lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1560        M                                           #; (lsu) a1  <-- 0
       0     1567        M 0x80000650 li      a0, 0                  #; (wrb) a0  <-- 0
       0     1568        M 0x80000654 bnez    a1, pc + 324           #; a1  = 0, not taken
       0     1569        M 0x80000658 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1570        M 0x8000065c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1579        M 0x80000660 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1582        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1583        M 0x80000664 lw      a2, 0(a0)              #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ff70]
       0     1586        M                                           #; (lsu) a2  <-- 0x0011ff70
       0     1587        M 0x80000668 lw      a1, 88(a2)             #; a2  = 0x0011ff70, a1  <~~ Word[0x0011ffc8]
       0     1590        M                                           #; (lsu) a1  <-- 0x00100000
       0     1591        M 0x8000066c lw      a0, 80(a2)             #; a2  = 0x0011ff70, a0  <~~ Word[0x0011ffc0]
       0     1594        M                                           #; (lsu) a0  <-- 0x00100000
       0     1595        M 0x80000670 lw      a3, 84(a2)             #; a2  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
       0     1596        M 0x80000674 addi    a4, a1, 800            #; a1  = 0x00100000, (wrb) a4  <-- 0x00100320
       0     1598        M                                           #; (lsu) a3  <-- 0x0001df30
       0     1599        M 0x80000678 add     a3, a3, a0             #; a3  = 0x0001df30, a0  = 0x00100000, (wrb) a3  <-- 0x0011df30
       0     1600        M 0x8000067c bgeu    a3, a4, pc + 24        #; a3  = 0x0011df30, a4  = 0x00100320, taken, goto 0x80000694
       0     1633        M 0x80000694 sw      a4, 88(a2)             #; a2  = 0x0011ff70, 0x00100320 ~~> Word[0x0011ffc8]
       0     1634        M 0x80000698 mv      a0, a1                 #; a1  = 0x00100000, (wrb) a0  <-- 0x00100000
       0     1635        M 0x8000069c addi    a5, a1, 1600           #; a1  = 0x00100000, (wrb) a5  <-- 0x00100640
       0     1645        M 0x800006a0 mv      a1, a4                 #; a4  = 0x00100320, (wrb) a1  <-- 0x00100320
       0     1646        M 0x800006a4 bgeu    a3, a5, pc - 24        #; a3  = 0x0011df30, a5  = 0x00100640, taken, goto 0x8000068c
       0     1647        M 0x8000068c sw      a5, 88(a2)             #; a2  = 0x0011ff70, 0x00100640 ~~> Word[0x0011ffc8]
       0     1648        M 0x80000690 j       pc + 0x1c              #; goto 0x800006ac
       0     1649        M 0x800006ac li      a2, 0                  #; (wrb) a2  <-- 0
       0     1661        M 0x800006b0 li      a3, 0                  #; (wrb) a3  <-- 0
       0     1662        M 0x800006b4 lui     a4, 0xccccd            #; (wrb) a4  <-- 0xccccd000
       0     1663        M 0x800006b8 addi    a4, a4, -819           #; a4  = 0xccccd000, (wrb) a4  <-- 0xcccccccd
       0     1664        M 0x800006bc li      a6, 10                 #; (wrb) a6  <-- 10
       0     1673        M 0x800006c0 li      a7, 800                #; (wrb) a7  <-- 800
       0     1674        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 0, a4  = 0xcccccccd
       0     1677        M                                           #; (acc) a5  <-- 0x0037d793
       0     1678        M 0x800006c8 srli    a5, a5, 3              #; a5  = 0, (wrb) a5  <-- 0
       0     1679        M 0x800006cc mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1685        M 0x800006d0 sub     a5, a3, a5             #; a3  = 0, a5  = 0, (wrb) a5  <-- 0
       0     1687        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 0, (wrb) a5  <-- 0x00100000
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     1688        M                                           #; (f:fpu) ft0  <-- 0.0
       0     1690        M 0x800006dc fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100000]
       0     1697        M 0x800006e0 addi    a2, a2, 8              #; a2  = 0, (wrb) a2  <-- 8
       0     1698        M 0x800006e4 addi    a3, a3, 1              #; a3  = 0, (wrb) a3  <-- 1
       0     1699        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 8, a7  = 800, taken, goto 0x800006c4
       0     1700        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 1, a4  = 0xcccccccd
       0     1703        M                                           #; (acc) a5  <-- 0x0037d793
       0     1704        M 0x800006c8 srli    a5, a5, 3              #; a5  = 0, (wrb) a5  <-- 0
       0     1705        M 0x800006cc mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1708        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1709        M 0x800006d0 sub     a5, a3, a5             #; a3  = 1, a5  = 0, (wrb) a5  <-- 1
       0     1711        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 8, (wrb) a5  <-- 0x00100008
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     1712        M                                           #; (f:fpu) ft0  <-- 1.0
       0     1713        M 0x800006e0 addi    a2, a2, 8              #; a2  = 8, (wrb) a2  <-- 16
       0     1714        M 0x800006e4 addi    a3, a3, 1              #; a3  = 1, (wrb) a3  <-- 2
                         M 0x800006dc fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100008]
       0     1715        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 16, a7  = 800, taken, goto 0x800006c4
       0     1716        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 2, a4  = 0xcccccccd
       0     1719        M                                           #; (acc) a5  <-- 0x0037d793
       0     1720        M 0x800006c8 srli    a5, a5, 3              #; a5  = 1, (wrb) a5  <-- 0
       0     1721        M 0x800006cc mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1724        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1725        M 0x800006d0 sub     a5, a3, a5             #; a3  = 2, a5  = 0, (wrb) a5  <-- 2
       0     1727        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 16, (wrb) a5  <-- 0x00100010
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     1728        M                                           #; (f:fpu) ft0  <-- 2.0
       0     1729        M 0x800006e0 addi    a2, a2, 8              #; a2  = 16, (wrb) a2  <-- 24
       0     1730        M 0x800006e4 addi    a3, a3, 1              #; a3  = 2, (wrb) a3  <-- 3
                         M 0x800006dc fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100010]
       0     1731        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 24, a7  = 800, taken, goto 0x800006c4
       0     1732        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 3, a4  = 0xcccccccd
       0     1735        M                                           #; (acc) a5  <-- 0x0037d793
       0     1736        M 0x800006c8 srli    a5, a5, 3              #; a5  = 2, (wrb) a5  <-- 0
       0     1737        M 0x800006cc mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1740        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1741        M 0x800006d0 sub     a5, a3, a5             #; a3  = 3, a5  = 0, (wrb) a5  <-- 3
       0     1743        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 24, (wrb) a5  <-- 0x00100018
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     1744        M                                           #; (f:fpu) ft0  <-- 3.0
       0     1745        M 0x800006e0 addi    a2, a2, 8              #; a2  = 24, (wrb) a2  <-- 32
       0     1746        M 0x800006e4 addi    a3, a3, 1              #; a3  = 3, (wrb) a3  <-- 4
                         M 0x800006dc fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100018]
       0     1747        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 32, a7  = 800, taken, goto 0x800006c4
       0     1748        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 4, a4  = 0xcccccccd
       0     1751        M                                           #; (acc) a5  <-- 0x0037d793
       0     1752        M 0x800006c8 srli    a5, a5, 3              #; a5  = 3, (wrb) a5  <-- 0
       0     1753        M 0x800006cc mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1756        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1757        M 0x800006d0 sub     a5, a3, a5             #; a3  = 4, a5  = 0, (wrb) a5  <-- 4
       0     1759        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 32, (wrb) a5  <-- 0x00100020
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     1760        M                                           #; (f:fpu) ft0  <-- 4.0
       0     1761        M 0x800006e0 addi    a2, a2, 8              #; a2  = 32, (wrb) a2  <-- 40
       0     1762        M 0x800006e4 addi    a3, a3, 1              #; a3  = 4, (wrb) a3  <-- 5
                         M 0x800006dc fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100020]
       0     1763        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 40, a7  = 800, taken, goto 0x800006c4
       0     1764        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 5, a4  = 0xcccccccd
       0     1767        M                                           #; (acc) a5  <-- 0x0037d793
       0     1768        M 0x800006c8 srli    a5, a5, 3              #; a5  = 4, (wrb) a5  <-- 0
       0     1769        M 0x800006cc mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1772        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1773        M 0x800006d0 sub     a5, a3, a5             #; a3  = 5, a5  = 0, (wrb) a5  <-- 5
       0     1775        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 40, (wrb) a5  <-- 0x00100028
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     1776        M                                           #; (f:fpu) ft0  <-- 5.0
       0     1777        M 0x800006e0 addi    a2, a2, 8              #; a2  = 40, (wrb) a2  <-- 48
       0     1778        M 0x800006e4 addi    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 6
                         M 0x800006dc fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100028]
       0     1779        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 48, a7  = 800, taken, goto 0x800006c4
       0     1780        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 6, a4  = 0xcccccccd
       0     1783        M                                           #; (acc) a5  <-- 0x0037d793
       0     1784        M 0x800006c8 srli    a5, a5, 3              #; a5  = 4, (wrb) a5  <-- 0
       0     1785        M 0x800006cc mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1788        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1789        M 0x800006d0 sub     a5, a3, a5             #; a3  = 6, a5  = 0, (wrb) a5  <-- 6
       0     1791        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 48, (wrb) a5  <-- 0x00100030
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     1792        M                                           #; (f:fpu) ft0  <-- 6.0
       0     1793        M 0x800006e0 addi    a2, a2, 8              #; a2  = 48, (wrb) a2  <-- 56
       0     1794        M 0x800006e4 addi    a3, a3, 1              #; a3  = 6, (wrb) a3  <-- 7
                         M 0x800006dc fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100030]
       0     1795        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 56, a7  = 800, taken, goto 0x800006c4
       0     1796        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 7, a4  = 0xcccccccd
       0     1799        M                                           #; (acc) a5  <-- 0x0037d793
       0     1800        M 0x800006c8 srli    a5, a5, 3              #; a5  = 5, (wrb) a5  <-- 0
       0     1801        M 0x800006cc mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1804        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1805        M 0x800006d0 sub     a5, a3, a5             #; a3  = 7, a5  = 0, (wrb) a5  <-- 7
       0     1807        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 56, (wrb) a5  <-- 0x00100038
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     1808        M                                           #; (f:fpu) ft0  <-- 7.0
       0     1809        M 0x800006e0 addi    a2, a2, 8              #; a2  = 56, (wrb) a2  <-- 64
       0     1810        M 0x800006e4 addi    a3, a3, 1              #; a3  = 7, (wrb) a3  <-- 8
                         M 0x800006dc fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100038]
       0     1811        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 64, a7  = 800, taken, goto 0x800006c4
       0     1812        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 8, a4  = 0xcccccccd
       0     1815        M                                           #; (acc) a5  <-- 0x0037d793
       0     1816        M 0x800006c8 srli    a5, a5, 3              #; a5  = 6, (wrb) a5  <-- 0
       0     1817        M 0x800006cc mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1820        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1821        M 0x800006d0 sub     a5, a3, a5             #; a3  = 8, a5  = 0, (wrb) a5  <-- 8
       0     1823        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 64, (wrb) a5  <-- 0x00100040
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     1824        M                                           #; (f:fpu) ft0  <-- 8.0
       0     1825        M 0x800006e0 addi    a2, a2, 8              #; a2  = 64, (wrb) a2  <-- 72
       0     1826        M 0x800006e4 addi    a3, a3, 1              #; a3  = 8, (wrb) a3  <-- 9
                         M 0x800006dc fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100040]
       0     1827        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 72, a7  = 800, taken, goto 0x800006c4
       0     1828        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 9, a4  = 0xcccccccd
       0     1831        M                                           #; (acc) a5  <-- 0x0037d793
       0     1832        M 0x800006c8 srli    a5, a5, 3              #; a5  = 7, (wrb) a5  <-- 0
       0     1833        M 0x800006cc mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1836        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1837        M 0x800006d0 sub     a5, a3, a5             #; a3  = 9, a5  = 0, (wrb) a5  <-- 9
       0     1839        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 72, (wrb) a5  <-- 0x00100048
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     1840        M                                           #; (f:fpu) ft0  <-- 9.0
       0     1841        M 0x800006e0 addi    a2, a2, 8              #; a2  = 72, (wrb) a2  <-- 80
       0     1842        M 0x800006e4 addi    a3, a3, 1              #; a3  = 9, (wrb) a3  <-- 10
                         M 0x800006dc fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100048]
       0     1843        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 80, a7  = 800, taken, goto 0x800006c4
       0     1844        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 10, a4  = 0xcccccccd
       0     1847        M                                           #; (acc) a5  <-- 0x0037d793
       0     1848        M 0x800006c8 srli    a5, a5, 3              #; a5  = 8, (wrb) a5  <-- 1
       0     1849        M 0x800006cc mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1852        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1853        M 0x800006d0 sub     a5, a3, a5             #; a3  = 10, a5  = 10, (wrb) a5  <-- 0
       0     1855        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 80, (wrb) a5  <-- 0x00100050
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     1856        M                                           #; (f:fpu) ft0  <-- 0.0
       0     1857        M 0x800006e0 addi    a2, a2, 8              #; a2  = 80, (wrb) a2  <-- 88
       0     1858        M 0x800006e4 addi    a3, a3, 1              #; a3  = 10, (wrb) a3  <-- 11
                         M 0x800006dc fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100050]
       0     1859        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 88, a7  = 800, taken, goto 0x800006c4
       0     1860        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 11, a4  = 0xcccccccd
       0     1863        M                                           #; (acc) a5  <-- 0x0037d793
       0     1864        M 0x800006c8 srli    a5, a5, 3              #; a5  = 8, (wrb) a5  <-- 1
       0     1865        M 0x800006cc mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1868        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1869        M 0x800006d0 sub     a5, a3, a5             #; a3  = 11, a5  = 10, (wrb) a5  <-- 1
       0     1871        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 88, (wrb) a5  <-- 0x00100058
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     1872        M                                           #; (f:fpu) ft0  <-- 1.0
       0     1873        M 0x800006e0 addi    a2, a2, 8              #; a2  = 88, (wrb) a2  <-- 96
       0     1874        M 0x800006e4 addi    a3, a3, 1              #; a3  = 11, (wrb) a3  <-- 12
                         M 0x800006dc fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100058]
       0     1875        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 96, a7  = 800, taken, goto 0x800006c4
       0     1876        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 12, a4  = 0xcccccccd
       0     1879        M                                           #; (acc) a5  <-- 0x0037d793
       0     1880        M 0x800006c8 srli    a5, a5, 3              #; a5  = 9, (wrb) a5  <-- 1
       0     1881        M 0x800006cc mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1884        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1885        M 0x800006d0 sub     a5, a3, a5             #; a3  = 12, a5  = 10, (wrb) a5  <-- 2
       0     1887        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 96, (wrb) a5  <-- 0x00100060
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     1888        M                                           #; (f:fpu) ft0  <-- 2.0
       0     1889        M 0x800006e0 addi    a2, a2, 8              #; a2  = 96, (wrb) a2  <-- 104
       0     1890        M 0x800006e4 addi    a3, a3, 1              #; a3  = 12, (wrb) a3  <-- 13
                         M 0x800006dc fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100060]
       0     1891        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 104, a7  = 800, taken, goto 0x800006c4
       0     1892        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 13, a4  = 0xcccccccd
       0     1895        M                                           #; (acc) a5  <-- 0x0037d793
       0     1896        M 0x800006c8 srli    a5, a5, 3              #; a5  = 10, (wrb) a5  <-- 1
       0     1897        M 0x800006cc mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1900        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1901        M 0x800006d0 sub     a5, a3, a5             #; a3  = 13, a5  = 10, (wrb) a5  <-- 3
       0     1903        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 104, (wrb) a5  <-- 0x00100068
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     1904        M                                           #; (f:fpu) ft0  <-- 3.0
       0     1905        M 0x800006e0 addi    a2, a2, 8              #; a2  = 104, (wrb) a2  <-- 112
       0     1906        M 0x800006e4 addi    a3, a3, 1              #; a3  = 13, (wrb) a3  <-- 14
                         M 0x800006dc fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100068]
       0     1907        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 112, a7  = 800, taken, goto 0x800006c4
       0     1908        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 14, a4  = 0xcccccccd
       0     1911        M                                           #; (acc) a5  <-- 0x0037d793
       0     1912        M 0x800006c8 srli    a5, a5, 3              #; a5  = 11, (wrb) a5  <-- 1
       0     1913        M 0x800006cc mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1916        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1917        M 0x800006d0 sub     a5, a3, a5             #; a3  = 14, a5  = 10, (wrb) a5  <-- 4
       0     1919        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 112, (wrb) a5  <-- 0x00100070
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     1920        M                                           #; (f:fpu) ft0  <-- 4.0
       0     1921        M 0x800006e0 addi    a2, a2, 8              #; a2  = 112, (wrb) a2  <-- 120
       0     1922        M 0x800006e4 addi    a3, a3, 1              #; a3  = 14, (wrb) a3  <-- 15
                         M 0x800006dc fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100070]
       0     1923        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 120, a7  = 800, taken, goto 0x800006c4
       0     1924        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 15, a4  = 0xcccccccd
       0     1927        M                                           #; (acc) a5  <-- 0x0037d793
       0     1928        M 0x800006c8 srli    a5, a5, 3              #; a5  = 12, (wrb) a5  <-- 1
       0     1929        M 0x800006cc mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1932        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1933        M 0x800006d0 sub     a5, a3, a5             #; a3  = 15, a5  = 10, (wrb) a5  <-- 5
       0     1935        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 120, (wrb) a5  <-- 0x00100078
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     1936        M                                           #; (f:fpu) ft0  <-- 5.0
       0     1937        M 0x800006e0 addi    a2, a2, 8              #; a2  = 120, (wrb) a2  <-- 128
       0     1938        M 0x800006e4 addi    a3, a3, 1              #; a3  = 15, (wrb) a3  <-- 16
                         M 0x800006dc fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100078]
       0     1939        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 128, a7  = 800, taken, goto 0x800006c4
       0     1940        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 16, a4  = 0xcccccccd
       0     1943        M                                           #; (acc) a5  <-- 0x0037d793
       0     1944        M 0x800006c8 srli    a5, a5, 3              #; a5  = 12, (wrb) a5  <-- 1
       0     1945        M 0x800006cc mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1948        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1949        M 0x800006d0 sub     a5, a3, a5             #; a3  = 16, a5  = 10, (wrb) a5  <-- 6
       0     1951        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 128, (wrb) a5  <-- 0x00100080
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     1952        M                                           #; (f:fpu) ft0  <-- 6.0
       0     1953        M 0x800006e0 addi    a2, a2, 8              #; a2  = 128, (wrb) a2  <-- 136
       0     1954        M 0x800006e4 addi    a3, a3, 1              #; a3  = 16, (wrb) a3  <-- 17
                         M 0x800006dc fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100080]
       0     1955        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 136, a7  = 800, taken, goto 0x800006c4
       0     1956        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 17, a4  = 0xcccccccd
       0     1959        M                                           #; (acc) a5  <-- 0x0037d793
       0     1960        M 0x800006c8 srli    a5, a5, 3              #; a5  = 13, (wrb) a5  <-- 1
       0     1961        M 0x800006cc mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1964        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1965        M 0x800006d0 sub     a5, a3, a5             #; a3  = 17, a5  = 10, (wrb) a5  <-- 7
       0     1967        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 136, (wrb) a5  <-- 0x00100088
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     1968        M                                           #; (f:fpu) ft0  <-- 7.0
       0     1969        M 0x800006e0 addi    a2, a2, 8              #; a2  = 136, (wrb) a2  <-- 144
       0     1970        M 0x800006e4 addi    a3, a3, 1              #; a3  = 17, (wrb) a3  <-- 18
                         M 0x800006dc fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100088]
       0     1971        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 144, a7  = 800, taken, goto 0x800006c4
       0     1972        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 18, a4  = 0xcccccccd
       0     1975        M                                           #; (acc) a5  <-- 0x0037d793
       0     1976        M 0x800006c8 srli    a5, a5, 3              #; a5  = 14, (wrb) a5  <-- 1
       0     1977        M 0x800006cc mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1980        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1981        M 0x800006d0 sub     a5, a3, a5             #; a3  = 18, a5  = 10, (wrb) a5  <-- 8
       0     1983        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 144, (wrb) a5  <-- 0x00100090
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     1984        M                                           #; (f:fpu) ft0  <-- 8.0
       0     1985        M 0x800006e0 addi    a2, a2, 8              #; a2  = 144, (wrb) a2  <-- 152
       0     1986        M 0x800006e4 addi    a3, a3, 1              #; a3  = 18, (wrb) a3  <-- 19
                         M 0x800006dc fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100090]
       0     1987        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 152, a7  = 800, taken, goto 0x800006c4
       0     1988        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 19, a4  = 0xcccccccd
       0     1991        M                                           #; (acc) a5  <-- 0x0037d793
       0     1992        M 0x800006c8 srli    a5, a5, 3              #; a5  = 15, (wrb) a5  <-- 1
       0     1993        M 0x800006cc mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1996        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1997        M 0x800006d0 sub     a5, a3, a5             #; a3  = 19, a5  = 10, (wrb) a5  <-- 9
       0     1999        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 152, (wrb) a5  <-- 0x00100098
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     2000        M                                           #; (f:fpu) ft0  <-- 9.0
       0     2001        M 0x800006e0 addi    a2, a2, 8              #; a2  = 152, (wrb) a2  <-- 160
       0     2002        M 0x800006e4 addi    a3, a3, 1              #; a3  = 19, (wrb) a3  <-- 20
                         M 0x800006dc fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100098]
       0     2003        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 160, a7  = 800, taken, goto 0x800006c4
       0     2004        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 20, a4  = 0xcccccccd
       0     2007        M                                           #; (acc) a5  <-- 0x0037d793
       0     2008        M 0x800006c8 srli    a5, a5, 3              #; a5  = 16, (wrb) a5  <-- 2
       0     2009        M 0x800006cc mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2012        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2013        M 0x800006d0 sub     a5, a3, a5             #; a3  = 20, a5  = 20, (wrb) a5  <-- 0
       0     2015        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 160, (wrb) a5  <-- 0x001000a0
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     2016        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2017        M 0x800006e0 addi    a2, a2, 8              #; a2  = 160, (wrb) a2  <-- 168
       0     2018        M 0x800006e4 addi    a3, a3, 1              #; a3  = 20, (wrb) a3  <-- 21
                         M 0x800006dc fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x001000a0]
       0     2019        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 168, a7  = 800, taken, goto 0x800006c4
       0     2020        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 21, a4  = 0xcccccccd
       0     2023        M                                           #; (acc) a5  <-- 0x0037d793
       0     2024        M 0x800006c8 srli    a5, a5, 3              #; a5  = 16, (wrb) a5  <-- 2
       0     2025        M 0x800006cc mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2028        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2029        M 0x800006d0 sub     a5, a3, a5             #; a3  = 21, a5  = 20, (wrb) a5  <-- 1
       0     2031        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 168, (wrb) a5  <-- 0x001000a8
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     2032        M                                           #; (f:fpu) ft0  <-- 1.0
       0     2033        M 0x800006e0 addi    a2, a2, 8              #; a2  = 168, (wrb) a2  <-- 176
       0     2034        M 0x800006e4 addi    a3, a3, 1              #; a3  = 21, (wrb) a3  <-- 22
                         M 0x800006dc fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x001000a8]
       0     2035        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 176, a7  = 800, taken, goto 0x800006c4
       0     2036        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 22, a4  = 0xcccccccd
       0     2039        M                                           #; (acc) a5  <-- 0x0037d793
       0     2040        M 0x800006c8 srli    a5, a5, 3              #; a5  = 17, (wrb) a5  <-- 2
       0     2041        M 0x800006cc mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2044        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2045        M 0x800006d0 sub     a5, a3, a5             #; a3  = 22, a5  = 20, (wrb) a5  <-- 2
       0     2047        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 176, (wrb) a5  <-- 0x001000b0
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     2048        M                                           #; (f:fpu) ft0  <-- 2.0
       0     2049        M 0x800006e0 addi    a2, a2, 8              #; a2  = 176, (wrb) a2  <-- 184
       0     2050        M 0x800006e4 addi    a3, a3, 1              #; a3  = 22, (wrb) a3  <-- 23
                         M 0x800006dc fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x001000b0]
       0     2051        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 184, a7  = 800, taken, goto 0x800006c4
       0     2052        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 23, a4  = 0xcccccccd
       0     2055        M                                           #; (acc) a5  <-- 0x0037d793
       0     2056        M 0x800006c8 srli    a5, a5, 3              #; a5  = 18, (wrb) a5  <-- 2
       0     2057        M 0x800006cc mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2060        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2061        M 0x800006d0 sub     a5, a3, a5             #; a3  = 23, a5  = 20, (wrb) a5  <-- 3
       0     2063        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 184, (wrb) a5  <-- 0x001000b8
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     2064        M                                           #; (f:fpu) ft0  <-- 3.0
       0     2065        M 0x800006e0 addi    a2, a2, 8              #; a2  = 184, (wrb) a2  <-- 192
       0     2066        M 0x800006e4 addi    a3, a3, 1              #; a3  = 23, (wrb) a3  <-- 24
                         M 0x800006dc fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x001000b8]
       0     2067        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 192, a7  = 800, taken, goto 0x800006c4
       0     2068        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 24, a4  = 0xcccccccd
       0     2071        M                                           #; (acc) a5  <-- 0x0037d793
       0     2072        M 0x800006c8 srli    a5, a5, 3              #; a5  = 19, (wrb) a5  <-- 2
       0     2073        M 0x800006cc mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2076        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2077        M 0x800006d0 sub     a5, a3, a5             #; a3  = 24, a5  = 20, (wrb) a5  <-- 4
       0     2079        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 192, (wrb) a5  <-- 0x001000c0
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     2080        M                                           #; (f:fpu) ft0  <-- 4.0
       0     2081        M 0x800006e0 addi    a2, a2, 8              #; a2  = 192, (wrb) a2  <-- 200
       0     2082        M 0x800006e4 addi    a3, a3, 1              #; a3  = 24, (wrb) a3  <-- 25
                         M 0x800006dc fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x001000c0]
       0     2083        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 200, a7  = 800, taken, goto 0x800006c4
       0     2084        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 25, a4  = 0xcccccccd
       0     2087        M                                           #; (acc) a5  <-- 0x0037d793
       0     2088        M 0x800006c8 srli    a5, a5, 3              #; a5  = 20, (wrb) a5  <-- 2
       0     2089        M 0x800006cc mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2092        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2093        M 0x800006d0 sub     a5, a3, a5             #; a3  = 25, a5  = 20, (wrb) a5  <-- 5
       0     2095        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 200, (wrb) a5  <-- 0x001000c8
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     2096        M                                           #; (f:fpu) ft0  <-- 5.0
       0     2097        M 0x800006e0 addi    a2, a2, 8              #; a2  = 200, (wrb) a2  <-- 208
       0     2098        M 0x800006e4 addi    a3, a3, 1              #; a3  = 25, (wrb) a3  <-- 26
                         M 0x800006dc fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x001000c8]
       0     2099        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 208, a7  = 800, taken, goto 0x800006c4
       0     2100        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 26, a4  = 0xcccccccd
       0     2103        M                                           #; (acc) a5  <-- 0x0037d793
       0     2104        M 0x800006c8 srli    a5, a5, 3              #; a5  = 20, (wrb) a5  <-- 2
       0     2105        M 0x800006cc mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2108        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2109        M 0x800006d0 sub     a5, a3, a5             #; a3  = 26, a5  = 20, (wrb) a5  <-- 6
       0     2111        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 208, (wrb) a5  <-- 0x001000d0
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     2112        M                                           #; (f:fpu) ft0  <-- 6.0
       0     2113        M 0x800006e0 addi    a2, a2, 8              #; a2  = 208, (wrb) a2  <-- 216
       0     2114        M 0x800006e4 addi    a3, a3, 1              #; a3  = 26, (wrb) a3  <-- 27
                         M 0x800006dc fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x001000d0]
       0     2115        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 216, a7  = 800, taken, goto 0x800006c4
       0     2116        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 27, a4  = 0xcccccccd
       0     2119        M                                           #; (acc) a5  <-- 0x0037d793
       0     2120        M 0x800006c8 srli    a5, a5, 3              #; a5  = 21, (wrb) a5  <-- 2
       0     2121        M 0x800006cc mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2124        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2125        M 0x800006d0 sub     a5, a3, a5             #; a3  = 27, a5  = 20, (wrb) a5  <-- 7
       0     2127        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 216, (wrb) a5  <-- 0x001000d8
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     2128        M                                           #; (f:fpu) ft0  <-- 7.0
       0     2129        M 0x800006e0 addi    a2, a2, 8              #; a2  = 216, (wrb) a2  <-- 224
       0     2130        M 0x800006e4 addi    a3, a3, 1              #; a3  = 27, (wrb) a3  <-- 28
                         M 0x800006dc fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x001000d8]
       0     2131        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 224, a7  = 800, taken, goto 0x800006c4
       0     2132        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 28, a4  = 0xcccccccd
       0     2135        M                                           #; (acc) a5  <-- 0x0037d793
       0     2136        M 0x800006c8 srli    a5, a5, 3              #; a5  = 22, (wrb) a5  <-- 2
       0     2137        M 0x800006cc mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2140        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2141        M 0x800006d0 sub     a5, a3, a5             #; a3  = 28, a5  = 20, (wrb) a5  <-- 8
       0     2143        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 224, (wrb) a5  <-- 0x001000e0
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     2144        M                                           #; (f:fpu) ft0  <-- 8.0
       0     2145        M 0x800006e0 addi    a2, a2, 8              #; a2  = 224, (wrb) a2  <-- 232
       0     2146        M 0x800006e4 addi    a3, a3, 1              #; a3  = 28, (wrb) a3  <-- 29
                         M 0x800006dc fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x001000e0]
       0     2147        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 232, a7  = 800, taken, goto 0x800006c4
       0     2148        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 29, a4  = 0xcccccccd
       0     2151        M                                           #; (acc) a5  <-- 0x0037d793
       0     2152        M 0x800006c8 srli    a5, a5, 3              #; a5  = 23, (wrb) a5  <-- 2
       0     2153        M 0x800006cc mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2156        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2157        M 0x800006d0 sub     a5, a3, a5             #; a3  = 29, a5  = 20, (wrb) a5  <-- 9
       0     2159        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 232, (wrb) a5  <-- 0x001000e8
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     2160        M                                           #; (f:fpu) ft0  <-- 9.0
       0     2161        M 0x800006e0 addi    a2, a2, 8              #; a2  = 232, (wrb) a2  <-- 240
       0     2162        M 0x800006e4 addi    a3, a3, 1              #; a3  = 29, (wrb) a3  <-- 30
                         M 0x800006dc fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x001000e8]
       0     2163        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 240, a7  = 800, taken, goto 0x800006c4
       0     2164        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 30, a4  = 0xcccccccd
       0     2167        M                                           #; (acc) a5  <-- 0x0037d793
       0     2168        M 0x800006c8 srli    a5, a5, 3              #; a5  = 24, (wrb) a5  <-- 3
       0     2169        M 0x800006cc mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2172        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2173        M 0x800006d0 sub     a5, a3, a5             #; a3  = 30, a5  = 30, (wrb) a5  <-- 0
       0     2175        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 240, (wrb) a5  <-- 0x001000f0
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     2176        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2177        M 0x800006e0 addi    a2, a2, 8              #; a2  = 240, (wrb) a2  <-- 248
       0     2178        M 0x800006e4 addi    a3, a3, 1              #; a3  = 30, (wrb) a3  <-- 31
                         M 0x800006dc fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x001000f0]
       0     2179        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 248, a7  = 800, taken, goto 0x800006c4
       0     2180        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 31, a4  = 0xcccccccd
       0     2183        M                                           #; (acc) a5  <-- 0x0037d793
       0     2184        M 0x800006c8 srli    a5, a5, 3              #; a5  = 24, (wrb) a5  <-- 3
       0     2185        M 0x800006cc mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2188        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2189        M 0x800006d0 sub     a5, a3, a5             #; a3  = 31, a5  = 30, (wrb) a5  <-- 1
       0     2191        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 248, (wrb) a5  <-- 0x001000f8
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     2192        M                                           #; (f:fpu) ft0  <-- 1.0
       0     2193        M 0x800006e0 addi    a2, a2, 8              #; a2  = 248, (wrb) a2  <-- 256
       0     2194        M 0x800006e4 addi    a3, a3, 1              #; a3  = 31, (wrb) a3  <-- 32
                         M 0x800006dc fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x001000f8]
       0     2195        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 256, a7  = 800, taken, goto 0x800006c4
       0     2196        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 32, a4  = 0xcccccccd
       0     2199        M                                           #; (acc) a5  <-- 0x0037d793
       0     2200        M 0x800006c8 srli    a5, a5, 3              #; a5  = 25, (wrb) a5  <-- 3
       0     2201        M 0x800006cc mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2204        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2205        M 0x800006d0 sub     a5, a3, a5             #; a3  = 32, a5  = 30, (wrb) a5  <-- 2
       0     2207        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 256, (wrb) a5  <-- 0x00100100
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     2208        M                                           #; (f:fpu) ft0  <-- 2.0
       0     2209        M 0x800006e0 addi    a2, a2, 8              #; a2  = 256, (wrb) a2  <-- 264
       0     2210        M 0x800006e4 addi    a3, a3, 1              #; a3  = 32, (wrb) a3  <-- 33
                         M 0x800006dc fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100100]
       0     2211        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 264, a7  = 800, taken, goto 0x800006c4
       0     2212        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 33, a4  = 0xcccccccd
       0     2215        M                                           #; (acc) a5  <-- 0x0037d793
       0     2216        M 0x800006c8 srli    a5, a5, 3              #; a5  = 26, (wrb) a5  <-- 3
       0     2217        M 0x800006cc mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2220        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2221        M 0x800006d0 sub     a5, a3, a5             #; a3  = 33, a5  = 30, (wrb) a5  <-- 3
       0     2223        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 264, (wrb) a5  <-- 0x00100108
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     2224        M                                           #; (f:fpu) ft0  <-- 3.0
       0     2225        M 0x800006e0 addi    a2, a2, 8              #; a2  = 264, (wrb) a2  <-- 272
       0     2226        M 0x800006e4 addi    a3, a3, 1              #; a3  = 33, (wrb) a3  <-- 34
                         M 0x800006dc fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100108]
       0     2227        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 272, a7  = 800, taken, goto 0x800006c4
       0     2228        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 34, a4  = 0xcccccccd
       0     2231        M                                           #; (acc) a5  <-- 0x0037d793
       0     2232        M 0x800006c8 srli    a5, a5, 3              #; a5  = 27, (wrb) a5  <-- 3
       0     2233        M 0x800006cc mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2236        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2237        M 0x800006d0 sub     a5, a3, a5             #; a3  = 34, a5  = 30, (wrb) a5  <-- 4
       0     2239        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 272, (wrb) a5  <-- 0x00100110
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     2240        M                                           #; (f:fpu) ft0  <-- 4.0
       0     2241        M 0x800006e0 addi    a2, a2, 8              #; a2  = 272, (wrb) a2  <-- 280
       0     2242        M 0x800006e4 addi    a3, a3, 1              #; a3  = 34, (wrb) a3  <-- 35
                         M 0x800006dc fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100110]
       0     2243        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 280, a7  = 800, taken, goto 0x800006c4
       0     2244        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 35, a4  = 0xcccccccd
       0     2247        M                                           #; (acc) a5  <-- 0x0037d793
       0     2248        M 0x800006c8 srli    a5, a5, 3              #; a5  = 28, (wrb) a5  <-- 3
       0     2249        M 0x800006cc mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2252        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2253        M 0x800006d0 sub     a5, a3, a5             #; a3  = 35, a5  = 30, (wrb) a5  <-- 5
       0     2255        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 280, (wrb) a5  <-- 0x00100118
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     2256        M                                           #; (f:fpu) ft0  <-- 5.0
       0     2257        M 0x800006e0 addi    a2, a2, 8              #; a2  = 280, (wrb) a2  <-- 288
       0     2258        M 0x800006e4 addi    a3, a3, 1              #; a3  = 35, (wrb) a3  <-- 36
                         M 0x800006dc fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100118]
       0     2259        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 288, a7  = 800, taken, goto 0x800006c4
       0     2260        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 36, a4  = 0xcccccccd
       0     2263        M                                           #; (acc) a5  <-- 0x0037d793
       0     2264        M 0x800006c8 srli    a5, a5, 3              #; a5  = 28, (wrb) a5  <-- 3
       0     2265        M 0x800006cc mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2268        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2269        M 0x800006d0 sub     a5, a3, a5             #; a3  = 36, a5  = 30, (wrb) a5  <-- 6
       0     2271        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 288, (wrb) a5  <-- 0x00100120
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     2272        M                                           #; (f:fpu) ft0  <-- 6.0
       0     2273        M 0x800006e0 addi    a2, a2, 8              #; a2  = 288, (wrb) a2  <-- 296
       0     2274        M 0x800006e4 addi    a3, a3, 1              #; a3  = 36, (wrb) a3  <-- 37
                         M 0x800006dc fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100120]
       0     2275        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 296, a7  = 800, taken, goto 0x800006c4
       0     2276        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 37, a4  = 0xcccccccd
       0     2279        M                                           #; (acc) a5  <-- 0x0037d793
       0     2280        M 0x800006c8 srli    a5, a5, 3              #; a5  = 29, (wrb) a5  <-- 3
       0     2281        M 0x800006cc mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2284        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2285        M 0x800006d0 sub     a5, a3, a5             #; a3  = 37, a5  = 30, (wrb) a5  <-- 7
       0     2287        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 296, (wrb) a5  <-- 0x00100128
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     2288        M                                           #; (f:fpu) ft0  <-- 7.0
       0     2289        M 0x800006e0 addi    a2, a2, 8              #; a2  = 296, (wrb) a2  <-- 304
       0     2290        M 0x800006e4 addi    a3, a3, 1              #; a3  = 37, (wrb) a3  <-- 38
                         M 0x800006dc fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100128]
       0     2291        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 304, a7  = 800, taken, goto 0x800006c4
       0     2292        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 38, a4  = 0xcccccccd
       0     2295        M                                           #; (acc) a5  <-- 0x0037d793
       0     2296        M 0x800006c8 srli    a5, a5, 3              #; a5  = 30, (wrb) a5  <-- 3
       0     2297        M 0x800006cc mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2300        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2301        M 0x800006d0 sub     a5, a3, a5             #; a3  = 38, a5  = 30, (wrb) a5  <-- 8
       0     2303        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 304, (wrb) a5  <-- 0x00100130
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     2304        M                                           #; (f:fpu) ft0  <-- 8.0
       0     2305        M 0x800006e0 addi    a2, a2, 8              #; a2  = 304, (wrb) a2  <-- 312
       0     2306        M 0x800006e4 addi    a3, a3, 1              #; a3  = 38, (wrb) a3  <-- 39
                         M 0x800006dc fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100130]
       0     2307        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 312, a7  = 800, taken, goto 0x800006c4
       0     2308        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 39, a4  = 0xcccccccd
       0     2311        M                                           #; (acc) a5  <-- 0x0037d793
       0     2312        M 0x800006c8 srli    a5, a5, 3              #; a5  = 31, (wrb) a5  <-- 3
       0     2313        M 0x800006cc mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2316        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2317        M 0x800006d0 sub     a5, a3, a5             #; a3  = 39, a5  = 30, (wrb) a5  <-- 9
       0     2319        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 312, (wrb) a5  <-- 0x00100138
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     2320        M                                           #; (f:fpu) ft0  <-- 9.0
       0     2321        M 0x800006e0 addi    a2, a2, 8              #; a2  = 312, (wrb) a2  <-- 320
       0     2322        M 0x800006e4 addi    a3, a3, 1              #; a3  = 39, (wrb) a3  <-- 40
                         M 0x800006dc fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100138]
       0     2323        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 320, a7  = 800, taken, goto 0x800006c4
       0     2324        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 40, a4  = 0xcccccccd
       0     2327        M                                           #; (acc) a5  <-- 0x0037d793
       0     2328        M 0x800006c8 srli    a5, a5, 3              #; a5  = 32, (wrb) a5  <-- 4
       0     2329        M 0x800006cc mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2332        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2333        M 0x800006d0 sub     a5, a3, a5             #; a3  = 40, a5  = 40, (wrb) a5  <-- 0
       0     2335        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 320, (wrb) a5  <-- 0x00100140
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     2336        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2337        M 0x800006e0 addi    a2, a2, 8              #; a2  = 320, (wrb) a2  <-- 328
       0     2338        M 0x800006e4 addi    a3, a3, 1              #; a3  = 40, (wrb) a3  <-- 41
                         M 0x800006dc fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100140]
       0     2339        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 328, a7  = 800, taken, goto 0x800006c4
       0     2340        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 41, a4  = 0xcccccccd
       0     2343        M                                           #; (acc) a5  <-- 0x0037d793
       0     2344        M 0x800006c8 srli    a5, a5, 3              #; a5  = 32, (wrb) a5  <-- 4
       0     2345        M 0x800006cc mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2348        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2349        M 0x800006d0 sub     a5, a3, a5             #; a3  = 41, a5  = 40, (wrb) a5  <-- 1
       0     2351        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 328, (wrb) a5  <-- 0x00100148
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     2352        M                                           #; (f:fpu) ft0  <-- 1.0
       0     2353        M 0x800006e0 addi    a2, a2, 8              #; a2  = 328, (wrb) a2  <-- 336
       0     2354        M 0x800006e4 addi    a3, a3, 1              #; a3  = 41, (wrb) a3  <-- 42
                         M 0x800006dc fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100148]
       0     2355        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 336, a7  = 800, taken, goto 0x800006c4
       0     2356        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 42, a4  = 0xcccccccd
       0     2359        M                                           #; (acc) a5  <-- 0x0037d793
       0     2360        M 0x800006c8 srli    a5, a5, 3              #; a5  = 33, (wrb) a5  <-- 4
       0     2361        M 0x800006cc mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2364        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2365        M 0x800006d0 sub     a5, a3, a5             #; a3  = 42, a5  = 40, (wrb) a5  <-- 2
       0     2367        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 336, (wrb) a5  <-- 0x00100150
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     2368        M                                           #; (f:fpu) ft0  <-- 2.0
       0     2369        M 0x800006e0 addi    a2, a2, 8              #; a2  = 336, (wrb) a2  <-- 344
       0     2370        M 0x800006e4 addi    a3, a3, 1              #; a3  = 42, (wrb) a3  <-- 43
                         M 0x800006dc fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100150]
       0     2371        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 344, a7  = 800, taken, goto 0x800006c4
       0     2372        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 43, a4  = 0xcccccccd
       0     2375        M                                           #; (acc) a5  <-- 0x0037d793
       0     2376        M 0x800006c8 srli    a5, a5, 3              #; a5  = 34, (wrb) a5  <-- 4
       0     2377        M 0x800006cc mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2380        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2381        M 0x800006d0 sub     a5, a3, a5             #; a3  = 43, a5  = 40, (wrb) a5  <-- 3
       0     2383        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 344, (wrb) a5  <-- 0x00100158
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     2384        M                                           #; (f:fpu) ft0  <-- 3.0
       0     2385        M 0x800006e0 addi    a2, a2, 8              #; a2  = 344, (wrb) a2  <-- 352
       0     2386        M 0x800006e4 addi    a3, a3, 1              #; a3  = 43, (wrb) a3  <-- 44
                         M 0x800006dc fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100158]
       0     2387        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 352, a7  = 800, taken, goto 0x800006c4
       0     2388        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 44, a4  = 0xcccccccd
       0     2391        M                                           #; (acc) a5  <-- 0x0037d793
       0     2392        M 0x800006c8 srli    a5, a5, 3              #; a5  = 35, (wrb) a5  <-- 4
       0     2393        M 0x800006cc mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2396        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2397        M 0x800006d0 sub     a5, a3, a5             #; a3  = 44, a5  = 40, (wrb) a5  <-- 4
       0     2399        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 352, (wrb) a5  <-- 0x00100160
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     2400        M                                           #; (f:fpu) ft0  <-- 4.0
       0     2401        M 0x800006e0 addi    a2, a2, 8              #; a2  = 352, (wrb) a2  <-- 360
       0     2402        M 0x800006e4 addi    a3, a3, 1              #; a3  = 44, (wrb) a3  <-- 45
                         M 0x800006dc fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100160]
       0     2403        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 360, a7  = 800, taken, goto 0x800006c4
       0     2404        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 45, a4  = 0xcccccccd
       0     2407        M                                           #; (acc) a5  <-- 0x0037d793
       0     2408        M 0x800006c8 srli    a5, a5, 3              #; a5  = 36, (wrb) a5  <-- 4
       0     2409        M 0x800006cc mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2412        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2413        M 0x800006d0 sub     a5, a3, a5             #; a3  = 45, a5  = 40, (wrb) a5  <-- 5
       0     2415        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 360, (wrb) a5  <-- 0x00100168
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     2416        M                                           #; (f:fpu) ft0  <-- 5.0
       0     2417        M 0x800006e0 addi    a2, a2, 8              #; a2  = 360, (wrb) a2  <-- 368
       0     2418        M 0x800006e4 addi    a3, a3, 1              #; a3  = 45, (wrb) a3  <-- 46
                         M 0x800006dc fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100168]
       0     2419        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 368, a7  = 800, taken, goto 0x800006c4
       0     2420        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 46, a4  = 0xcccccccd
       0     2423        M                                           #; (acc) a5  <-- 0x0037d793
       0     2424        M 0x800006c8 srli    a5, a5, 3              #; a5  = 36, (wrb) a5  <-- 4
       0     2425        M 0x800006cc mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2428        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2429        M 0x800006d0 sub     a5, a3, a5             #; a3  = 46, a5  = 40, (wrb) a5  <-- 6
       0     2431        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 368, (wrb) a5  <-- 0x00100170
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     2432        M                                           #; (f:fpu) ft0  <-- 6.0
       0     2433        M 0x800006e0 addi    a2, a2, 8              #; a2  = 368, (wrb) a2  <-- 376
       0     2434        M 0x800006e4 addi    a3, a3, 1              #; a3  = 46, (wrb) a3  <-- 47
                         M 0x800006dc fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100170]
       0     2435        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 376, a7  = 800, taken, goto 0x800006c4
       0     2436        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 47, a4  = 0xcccccccd
       0     2439        M                                           #; (acc) a5  <-- 0x0037d793
       0     2440        M 0x800006c8 srli    a5, a5, 3              #; a5  = 37, (wrb) a5  <-- 4
       0     2441        M 0x800006cc mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2444        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2445        M 0x800006d0 sub     a5, a3, a5             #; a3  = 47, a5  = 40, (wrb) a5  <-- 7
       0     2447        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 376, (wrb) a5  <-- 0x00100178
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     2448        M                                           #; (f:fpu) ft0  <-- 7.0
       0     2449        M 0x800006e0 addi    a2, a2, 8              #; a2  = 376, (wrb) a2  <-- 384
       0     2450        M 0x800006e4 addi    a3, a3, 1              #; a3  = 47, (wrb) a3  <-- 48
                         M 0x800006dc fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100178]
       0     2451        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 384, a7  = 800, taken, goto 0x800006c4
       0     2452        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 48, a4  = 0xcccccccd
       0     2455        M                                           #; (acc) a5  <-- 0x0037d793
       0     2456        M 0x800006c8 srli    a5, a5, 3              #; a5  = 38, (wrb) a5  <-- 4
       0     2457        M 0x800006cc mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2460        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2461        M 0x800006d0 sub     a5, a3, a5             #; a3  = 48, a5  = 40, (wrb) a5  <-- 8
       0     2463        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 384, (wrb) a5  <-- 0x00100180
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     2464        M                                           #; (f:fpu) ft0  <-- 8.0
       0     2465        M 0x800006e0 addi    a2, a2, 8              #; a2  = 384, (wrb) a2  <-- 392
       0     2466        M 0x800006e4 addi    a3, a3, 1              #; a3  = 48, (wrb) a3  <-- 49
                         M 0x800006dc fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100180]
       0     2467        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 392, a7  = 800, taken, goto 0x800006c4
       0     2468        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 49, a4  = 0xcccccccd
       0     2471        M                                           #; (acc) a5  <-- 0x0037d793
       0     2472        M 0x800006c8 srli    a5, a5, 3              #; a5  = 39, (wrb) a5  <-- 4
       0     2473        M 0x800006cc mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2476        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2477        M 0x800006d0 sub     a5, a3, a5             #; a3  = 49, a5  = 40, (wrb) a5  <-- 9
       0     2479        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 392, (wrb) a5  <-- 0x00100188
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     2480        M                                           #; (f:fpu) ft0  <-- 9.0
       0     2481        M 0x800006e0 addi    a2, a2, 8              #; a2  = 392, (wrb) a2  <-- 400
       0     2482        M 0x800006e4 addi    a3, a3, 1              #; a3  = 49, (wrb) a3  <-- 50
                         M 0x800006dc fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100188]
       0     2483        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 400, a7  = 800, taken, goto 0x800006c4
       0     2484        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 50, a4  = 0xcccccccd
       0     2487        M                                           #; (acc) a5  <-- 0x0037d793
       0     2488        M 0x800006c8 srli    a5, a5, 3              #; a5  = 40, (wrb) a5  <-- 5
       0     2489        M 0x800006cc mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2492        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2493        M 0x800006d0 sub     a5, a3, a5             #; a3  = 50, a5  = 50, (wrb) a5  <-- 0
       0     2495        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 400, (wrb) a5  <-- 0x00100190
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     2496        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2497        M 0x800006e0 addi    a2, a2, 8              #; a2  = 400, (wrb) a2  <-- 408
       0     2498        M 0x800006e4 addi    a3, a3, 1              #; a3  = 50, (wrb) a3  <-- 51
                         M 0x800006dc fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100190]
       0     2499        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 408, a7  = 800, taken, goto 0x800006c4
       0     2500        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 51, a4  = 0xcccccccd
       0     2503        M                                           #; (acc) a5  <-- 0x0037d793
       0     2504        M 0x800006c8 srli    a5, a5, 3              #; a5  = 40, (wrb) a5  <-- 5
       0     2505        M 0x800006cc mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2508        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2509        M 0x800006d0 sub     a5, a3, a5             #; a3  = 51, a5  = 50, (wrb) a5  <-- 1
       0     2511        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 408, (wrb) a5  <-- 0x00100198
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     2512        M                                           #; (f:fpu) ft0  <-- 1.0
       0     2513        M 0x800006e0 addi    a2, a2, 8              #; a2  = 408, (wrb) a2  <-- 416
       0     2514        M 0x800006e4 addi    a3, a3, 1              #; a3  = 51, (wrb) a3  <-- 52
                         M 0x800006dc fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100198]
       0     2515        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 416, a7  = 800, taken, goto 0x800006c4
       0     2516        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 52, a4  = 0xcccccccd
       0     2519        M                                           #; (acc) a5  <-- 0x0037d793
       0     2520        M 0x800006c8 srli    a5, a5, 3              #; a5  = 41, (wrb) a5  <-- 5
       0     2521        M 0x800006cc mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2524        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2525        M 0x800006d0 sub     a5, a3, a5             #; a3  = 52, a5  = 50, (wrb) a5  <-- 2
       0     2527        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 416, (wrb) a5  <-- 0x001001a0
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     2528        M                                           #; (f:fpu) ft0  <-- 2.0
       0     2529        M 0x800006e0 addi    a2, a2, 8              #; a2  = 416, (wrb) a2  <-- 424
       0     2530        M 0x800006e4 addi    a3, a3, 1              #; a3  = 52, (wrb) a3  <-- 53
                         M 0x800006dc fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x001001a0]
       0     2531        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 424, a7  = 800, taken, goto 0x800006c4
       0     2532        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 53, a4  = 0xcccccccd
       0     2535        M                                           #; (acc) a5  <-- 0x0037d793
       0     2536        M 0x800006c8 srli    a5, a5, 3              #; a5  = 42, (wrb) a5  <-- 5
       0     2537        M 0x800006cc mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2540        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2541        M 0x800006d0 sub     a5, a3, a5             #; a3  = 53, a5  = 50, (wrb) a5  <-- 3
       0     2543        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 424, (wrb) a5  <-- 0x001001a8
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     2544        M                                           #; (f:fpu) ft0  <-- 3.0
       0     2545        M 0x800006e0 addi    a2, a2, 8              #; a2  = 424, (wrb) a2  <-- 432
       0     2546        M 0x800006e4 addi    a3, a3, 1              #; a3  = 53, (wrb) a3  <-- 54
                         M 0x800006dc fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x001001a8]
       0     2547        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 432, a7  = 800, taken, goto 0x800006c4
       0     2548        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 54, a4  = 0xcccccccd
       0     2551        M                                           #; (acc) a5  <-- 0x0037d793
       0     2552        M 0x800006c8 srli    a5, a5, 3              #; a5  = 43, (wrb) a5  <-- 5
       0     2553        M 0x800006cc mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2556        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2557        M 0x800006d0 sub     a5, a3, a5             #; a3  = 54, a5  = 50, (wrb) a5  <-- 4
       0     2559        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 432, (wrb) a5  <-- 0x001001b0
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     2560        M                                           #; (f:fpu) ft0  <-- 4.0
       0     2561        M 0x800006e0 addi    a2, a2, 8              #; a2  = 432, (wrb) a2  <-- 440
       0     2562        M 0x800006e4 addi    a3, a3, 1              #; a3  = 54, (wrb) a3  <-- 55
                         M 0x800006dc fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x001001b0]
       0     2563        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 440, a7  = 800, taken, goto 0x800006c4
       0     2564        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 55, a4  = 0xcccccccd
       0     2567        M                                           #; (acc) a5  <-- 0x0037d793
       0     2568        M 0x800006c8 srli    a5, a5, 3              #; a5  = 44, (wrb) a5  <-- 5
       0     2569        M 0x800006cc mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2572        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2573        M 0x800006d0 sub     a5, a3, a5             #; a3  = 55, a5  = 50, (wrb) a5  <-- 5
       0     2575        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 440, (wrb) a5  <-- 0x001001b8
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     2576        M                                           #; (f:fpu) ft0  <-- 5.0
       0     2577        M 0x800006e0 addi    a2, a2, 8              #; a2  = 440, (wrb) a2  <-- 448
       0     2578        M 0x800006e4 addi    a3, a3, 1              #; a3  = 55, (wrb) a3  <-- 56
                         M 0x800006dc fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x001001b8]
       0     2579        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 448, a7  = 800, taken, goto 0x800006c4
       0     2580        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 56, a4  = 0xcccccccd
       0     2583        M                                           #; (acc) a5  <-- 0x0037d793
       0     2584        M 0x800006c8 srli    a5, a5, 3              #; a5  = 44, (wrb) a5  <-- 5
       0     2585        M 0x800006cc mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2588        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2589        M 0x800006d0 sub     a5, a3, a5             #; a3  = 56, a5  = 50, (wrb) a5  <-- 6
       0     2591        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 448, (wrb) a5  <-- 0x001001c0
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     2592        M                                           #; (f:fpu) ft0  <-- 6.0
       0     2593        M 0x800006e0 addi    a2, a2, 8              #; a2  = 448, (wrb) a2  <-- 456
       0     2594        M 0x800006e4 addi    a3, a3, 1              #; a3  = 56, (wrb) a3  <-- 57
                         M 0x800006dc fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x001001c0]
       0     2595        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 456, a7  = 800, taken, goto 0x800006c4
       0     2596        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 57, a4  = 0xcccccccd
       0     2599        M                                           #; (acc) a5  <-- 0x0037d793
       0     2600        M 0x800006c8 srli    a5, a5, 3              #; a5  = 45, (wrb) a5  <-- 5
       0     2601        M 0x800006cc mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2604        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2605        M 0x800006d0 sub     a5, a3, a5             #; a3  = 57, a5  = 50, (wrb) a5  <-- 7
       0     2607        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 456, (wrb) a5  <-- 0x001001c8
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     2608        M                                           #; (f:fpu) ft0  <-- 7.0
       0     2609        M 0x800006e0 addi    a2, a2, 8              #; a2  = 456, (wrb) a2  <-- 464
       0     2610        M 0x800006e4 addi    a3, a3, 1              #; a3  = 57, (wrb) a3  <-- 58
                         M 0x800006dc fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x001001c8]
       0     2611        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 464, a7  = 800, taken, goto 0x800006c4
       0     2612        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 58, a4  = 0xcccccccd
       0     2615        M                                           #; (acc) a5  <-- 0x0037d793
       0     2616        M 0x800006c8 srli    a5, a5, 3              #; a5  = 46, (wrb) a5  <-- 5
       0     2617        M 0x800006cc mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2620        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2621        M 0x800006d0 sub     a5, a3, a5             #; a3  = 58, a5  = 50, (wrb) a5  <-- 8
       0     2623        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 464, (wrb) a5  <-- 0x001001d0
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     2624        M                                           #; (f:fpu) ft0  <-- 8.0
       0     2625        M 0x800006e0 addi    a2, a2, 8              #; a2  = 464, (wrb) a2  <-- 472
       0     2626        M 0x800006e4 addi    a3, a3, 1              #; a3  = 58, (wrb) a3  <-- 59
                         M 0x800006dc fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x001001d0]
       0     2627        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 472, a7  = 800, taken, goto 0x800006c4
       0     2628        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 59, a4  = 0xcccccccd
       0     2631        M                                           #; (acc) a5  <-- 0x0037d793
       0     2632        M 0x800006c8 srli    a5, a5, 3              #; a5  = 47, (wrb) a5  <-- 5
       0     2633        M 0x800006cc mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2636        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2637        M 0x800006d0 sub     a5, a3, a5             #; a3  = 59, a5  = 50, (wrb) a5  <-- 9
       0     2639        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 472, (wrb) a5  <-- 0x001001d8
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     2640        M                                           #; (f:fpu) ft0  <-- 9.0
       0     2641        M 0x800006e0 addi    a2, a2, 8              #; a2  = 472, (wrb) a2  <-- 480
       0     2642        M 0x800006e4 addi    a3, a3, 1              #; a3  = 59, (wrb) a3  <-- 60
                         M 0x800006dc fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x001001d8]
       0     2643        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 480, a7  = 800, taken, goto 0x800006c4
       0     2644        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 60, a4  = 0xcccccccd
       0     2647        M                                           #; (acc) a5  <-- 0x0037d793
       0     2648        M 0x800006c8 srli    a5, a5, 3              #; a5  = 48, (wrb) a5  <-- 6
       0     2649        M 0x800006cc mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2652        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2653        M 0x800006d0 sub     a5, a3, a5             #; a3  = 60, a5  = 60, (wrb) a5  <-- 0
       0     2655        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 480, (wrb) a5  <-- 0x001001e0
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     2656        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2657        M 0x800006e0 addi    a2, a2, 8              #; a2  = 480, (wrb) a2  <-- 488
       0     2658        M 0x800006e4 addi    a3, a3, 1              #; a3  = 60, (wrb) a3  <-- 61
                         M 0x800006dc fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x001001e0]
       0     2659        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 488, a7  = 800, taken, goto 0x800006c4
       0     2660        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 61, a4  = 0xcccccccd
       0     2663        M                                           #; (acc) a5  <-- 0x0037d793
       0     2664        M 0x800006c8 srli    a5, a5, 3              #; a5  = 48, (wrb) a5  <-- 6
       0     2665        M 0x800006cc mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2668        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2669        M 0x800006d0 sub     a5, a3, a5             #; a3  = 61, a5  = 60, (wrb) a5  <-- 1
       0     2671        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 488, (wrb) a5  <-- 0x001001e8
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     2672        M                                           #; (f:fpu) ft0  <-- 1.0
       0     2673        M 0x800006e0 addi    a2, a2, 8              #; a2  = 488, (wrb) a2  <-- 496
       0     2674        M 0x800006e4 addi    a3, a3, 1              #; a3  = 61, (wrb) a3  <-- 62
                         M 0x800006dc fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x001001e8]
       0     2675        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 496, a7  = 800, taken, goto 0x800006c4
       0     2676        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 62, a4  = 0xcccccccd
       0     2679        M                                           #; (acc) a5  <-- 0x0037d793
       0     2680        M 0x800006c8 srli    a5, a5, 3              #; a5  = 49, (wrb) a5  <-- 6
       0     2681        M 0x800006cc mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2684        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2685        M 0x800006d0 sub     a5, a3, a5             #; a3  = 62, a5  = 60, (wrb) a5  <-- 2
       0     2687        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 496, (wrb) a5  <-- 0x001001f0
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     2688        M                                           #; (f:fpu) ft0  <-- 2.0
       0     2689        M 0x800006e0 addi    a2, a2, 8              #; a2  = 496, (wrb) a2  <-- 504
       0     2690        M 0x800006e4 addi    a3, a3, 1              #; a3  = 62, (wrb) a3  <-- 63
                         M 0x800006dc fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x001001f0]
       0     2691        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 504, a7  = 800, taken, goto 0x800006c4
       0     2692        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 63, a4  = 0xcccccccd
       0     2695        M                                           #; (acc) a5  <-- 0x0037d793
       0     2696        M 0x800006c8 srli    a5, a5, 3              #; a5  = 50, (wrb) a5  <-- 6
       0     2697        M 0x800006cc mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2700        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2701        M 0x800006d0 sub     a5, a3, a5             #; a3  = 63, a5  = 60, (wrb) a5  <-- 3
       0     2703        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 504, (wrb) a5  <-- 0x001001f8
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     2704        M                                           #; (f:fpu) ft0  <-- 3.0
       0     2705        M 0x800006e0 addi    a2, a2, 8              #; a2  = 504, (wrb) a2  <-- 512
       0     2706        M 0x800006e4 addi    a3, a3, 1              #; a3  = 63, (wrb) a3  <-- 64
                         M 0x800006dc fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x001001f8]
       0     2707        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 512, a7  = 800, taken, goto 0x800006c4
       0     2708        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 64, a4  = 0xcccccccd
       0     2711        M                                           #; (acc) a5  <-- 0x0037d793
       0     2712        M 0x800006c8 srli    a5, a5, 3              #; a5  = 51, (wrb) a5  <-- 6
       0     2713        M 0x800006cc mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2716        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2717        M 0x800006d0 sub     a5, a3, a5             #; a3  = 64, a5  = 60, (wrb) a5  <-- 4
       0     2719        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 512, (wrb) a5  <-- 0x00100200
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     2720        M                                           #; (f:fpu) ft0  <-- 4.0
       0     2721        M 0x800006e0 addi    a2, a2, 8              #; a2  = 512, (wrb) a2  <-- 520
       0     2722        M 0x800006e4 addi    a3, a3, 1              #; a3  = 64, (wrb) a3  <-- 65
                         M 0x800006dc fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100200]
       0     2723        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 520, a7  = 800, taken, goto 0x800006c4
       0     2724        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 65, a4  = 0xcccccccd
       0     2727        M                                           #; (acc) a5  <-- 0x0037d793
       0     2728        M 0x800006c8 srli    a5, a5, 3              #; a5  = 52, (wrb) a5  <-- 6
       0     2729        M 0x800006cc mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2732        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2733        M 0x800006d0 sub     a5, a3, a5             #; a3  = 65, a5  = 60, (wrb) a5  <-- 5
       0     2735        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 520, (wrb) a5  <-- 0x00100208
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     2736        M                                           #; (f:fpu) ft0  <-- 5.0
       0     2737        M 0x800006e0 addi    a2, a2, 8              #; a2  = 520, (wrb) a2  <-- 528
       0     2738        M 0x800006e4 addi    a3, a3, 1              #; a3  = 65, (wrb) a3  <-- 66
                         M 0x800006dc fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100208]
       0     2739        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 528, a7  = 800, taken, goto 0x800006c4
       0     2740        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 66, a4  = 0xcccccccd
       0     2743        M                                           #; (acc) a5  <-- 0x0037d793
       0     2744        M 0x800006c8 srli    a5, a5, 3              #; a5  = 52, (wrb) a5  <-- 6
       0     2745        M 0x800006cc mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2748        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2749        M 0x800006d0 sub     a5, a3, a5             #; a3  = 66, a5  = 60, (wrb) a5  <-- 6
       0     2751        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 528, (wrb) a5  <-- 0x00100210
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     2752        M                                           #; (f:fpu) ft0  <-- 6.0
       0     2753        M 0x800006e0 addi    a2, a2, 8              #; a2  = 528, (wrb) a2  <-- 536
       0     2754        M 0x800006e4 addi    a3, a3, 1              #; a3  = 66, (wrb) a3  <-- 67
                         M 0x800006dc fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100210]
       0     2755        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 536, a7  = 800, taken, goto 0x800006c4
       0     2756        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 67, a4  = 0xcccccccd
       0     2759        M                                           #; (acc) a5  <-- 0x0037d793
       0     2760        M 0x800006c8 srli    a5, a5, 3              #; a5  = 53, (wrb) a5  <-- 6
       0     2761        M 0x800006cc mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2764        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2765        M 0x800006d0 sub     a5, a3, a5             #; a3  = 67, a5  = 60, (wrb) a5  <-- 7
       0     2767        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 536, (wrb) a5  <-- 0x00100218
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     2768        M                                           #; (f:fpu) ft0  <-- 7.0
       0     2769        M 0x800006e0 addi    a2, a2, 8              #; a2  = 536, (wrb) a2  <-- 544
       0     2770        M 0x800006e4 addi    a3, a3, 1              #; a3  = 67, (wrb) a3  <-- 68
                         M 0x800006dc fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100218]
       0     2771        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 544, a7  = 800, taken, goto 0x800006c4
       0     2772        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 68, a4  = 0xcccccccd
       0     2775        M                                           #; (acc) a5  <-- 0x0037d793
       0     2776        M 0x800006c8 srli    a5, a5, 3              #; a5  = 54, (wrb) a5  <-- 6
       0     2777        M 0x800006cc mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2780        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2781        M 0x800006d0 sub     a5, a3, a5             #; a3  = 68, a5  = 60, (wrb) a5  <-- 8
       0     2783        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 544, (wrb) a5  <-- 0x00100220
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     2784        M                                           #; (f:fpu) ft0  <-- 8.0
       0     2785        M 0x800006e0 addi    a2, a2, 8              #; a2  = 544, (wrb) a2  <-- 552
       0     2786        M 0x800006e4 addi    a3, a3, 1              #; a3  = 68, (wrb) a3  <-- 69
                         M 0x800006dc fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100220]
       0     2787        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 552, a7  = 800, taken, goto 0x800006c4
       0     2788        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 69, a4  = 0xcccccccd
       0     2791        M                                           #; (acc) a5  <-- 0x0037d793
       0     2792        M 0x800006c8 srli    a5, a5, 3              #; a5  = 55, (wrb) a5  <-- 6
       0     2793        M 0x800006cc mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2796        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2797        M 0x800006d0 sub     a5, a3, a5             #; a3  = 69, a5  = 60, (wrb) a5  <-- 9
       0     2799        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 552, (wrb) a5  <-- 0x00100228
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     2800        M                                           #; (f:fpu) ft0  <-- 9.0
       0     2801        M 0x800006e0 addi    a2, a2, 8              #; a2  = 552, (wrb) a2  <-- 560
       0     2802        M 0x800006e4 addi    a3, a3, 1              #; a3  = 69, (wrb) a3  <-- 70
                         M 0x800006dc fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100228]
       0     2803        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 560, a7  = 800, taken, goto 0x800006c4
       0     2804        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 70, a4  = 0xcccccccd
       0     2807        M                                           #; (acc) a5  <-- 0x0037d793
       0     2808        M 0x800006c8 srli    a5, a5, 3              #; a5  = 56, (wrb) a5  <-- 7
       0     2809        M 0x800006cc mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2812        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2813        M 0x800006d0 sub     a5, a3, a5             #; a3  = 70, a5  = 70, (wrb) a5  <-- 0
       0     2815        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 560, (wrb) a5  <-- 0x00100230
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     2816        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2817        M 0x800006e0 addi    a2, a2, 8              #; a2  = 560, (wrb) a2  <-- 568
       0     2818        M 0x800006e4 addi    a3, a3, 1              #; a3  = 70, (wrb) a3  <-- 71
                         M 0x800006dc fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100230]
       0     2819        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 568, a7  = 800, taken, goto 0x800006c4
       0     2820        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 71, a4  = 0xcccccccd
       0     2823        M                                           #; (acc) a5  <-- 0x0037d793
       0     2824        M 0x800006c8 srli    a5, a5, 3              #; a5  = 56, (wrb) a5  <-- 7
       0     2825        M 0x800006cc mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2828        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2829        M 0x800006d0 sub     a5, a3, a5             #; a3  = 71, a5  = 70, (wrb) a5  <-- 1
       0     2831        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 568, (wrb) a5  <-- 0x00100238
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     2832        M                                           #; (f:fpu) ft0  <-- 1.0
       0     2833        M 0x800006e0 addi    a2, a2, 8              #; a2  = 568, (wrb) a2  <-- 576
       0     2834        M 0x800006e4 addi    a3, a3, 1              #; a3  = 71, (wrb) a3  <-- 72
                         M 0x800006dc fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100238]
       0     2835        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 576, a7  = 800, taken, goto 0x800006c4
       0     2836        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 72, a4  = 0xcccccccd
       0     2839        M                                           #; (acc) a5  <-- 0x0037d793
       0     2840        M 0x800006c8 srli    a5, a5, 3              #; a5  = 57, (wrb) a5  <-- 7
       0     2841        M 0x800006cc mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2844        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2845        M 0x800006d0 sub     a5, a3, a5             #; a3  = 72, a5  = 70, (wrb) a5  <-- 2
       0     2847        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 576, (wrb) a5  <-- 0x00100240
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     2848        M                                           #; (f:fpu) ft0  <-- 2.0
       0     2849        M 0x800006e0 addi    a2, a2, 8              #; a2  = 576, (wrb) a2  <-- 584
       0     2850        M 0x800006e4 addi    a3, a3, 1              #; a3  = 72, (wrb) a3  <-- 73
                         M 0x800006dc fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100240]
       0     2851        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 584, a7  = 800, taken, goto 0x800006c4
       0     2852        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 73, a4  = 0xcccccccd
       0     2855        M                                           #; (acc) a5  <-- 0x0037d793
       0     2856        M 0x800006c8 srli    a5, a5, 3              #; a5  = 58, (wrb) a5  <-- 7
       0     2857        M 0x800006cc mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2860        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2861        M 0x800006d0 sub     a5, a3, a5             #; a3  = 73, a5  = 70, (wrb) a5  <-- 3
       0     2863        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 584, (wrb) a5  <-- 0x00100248
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     2864        M                                           #; (f:fpu) ft0  <-- 3.0
       0     2865        M 0x800006e0 addi    a2, a2, 8              #; a2  = 584, (wrb) a2  <-- 592
       0     2866        M 0x800006e4 addi    a3, a3, 1              #; a3  = 73, (wrb) a3  <-- 74
                         M 0x800006dc fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100248]
       0     2867        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 592, a7  = 800, taken, goto 0x800006c4
       0     2868        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 74, a4  = 0xcccccccd
       0     2871        M                                           #; (acc) a5  <-- 0x0037d793
       0     2872        M 0x800006c8 srli    a5, a5, 3              #; a5  = 59, (wrb) a5  <-- 7
       0     2873        M 0x800006cc mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2876        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2877        M 0x800006d0 sub     a5, a3, a5             #; a3  = 74, a5  = 70, (wrb) a5  <-- 4
       0     2879        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 592, (wrb) a5  <-- 0x00100250
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     2880        M                                           #; (f:fpu) ft0  <-- 4.0
       0     2881        M 0x800006e0 addi    a2, a2, 8              #; a2  = 592, (wrb) a2  <-- 600
       0     2882        M 0x800006e4 addi    a3, a3, 1              #; a3  = 74, (wrb) a3  <-- 75
                         M 0x800006dc fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100250]
       0     2883        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 600, a7  = 800, taken, goto 0x800006c4
       0     2884        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 75, a4  = 0xcccccccd
       0     2887        M                                           #; (acc) a5  <-- 0x0037d793
       0     2888        M 0x800006c8 srli    a5, a5, 3              #; a5  = 60, (wrb) a5  <-- 7
       0     2889        M 0x800006cc mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2892        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2893        M 0x800006d0 sub     a5, a3, a5             #; a3  = 75, a5  = 70, (wrb) a5  <-- 5
       0     2895        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 600, (wrb) a5  <-- 0x00100258
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     2896        M                                           #; (f:fpu) ft0  <-- 5.0
       0     2897        M 0x800006e0 addi    a2, a2, 8              #; a2  = 600, (wrb) a2  <-- 608
       0     2898        M 0x800006e4 addi    a3, a3, 1              #; a3  = 75, (wrb) a3  <-- 76
                         M 0x800006dc fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100258]
       0     2899        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 608, a7  = 800, taken, goto 0x800006c4
       0     2900        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 76, a4  = 0xcccccccd
       0     2903        M                                           #; (acc) a5  <-- 0x0037d793
       0     2904        M 0x800006c8 srli    a5, a5, 3              #; a5  = 60, (wrb) a5  <-- 7
       0     2905        M 0x800006cc mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2908        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2909        M 0x800006d0 sub     a5, a3, a5             #; a3  = 76, a5  = 70, (wrb) a5  <-- 6
       0     2911        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 608, (wrb) a5  <-- 0x00100260
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     2912        M                                           #; (f:fpu) ft0  <-- 6.0
       0     2913        M 0x800006e0 addi    a2, a2, 8              #; a2  = 608, (wrb) a2  <-- 616
       0     2914        M 0x800006e4 addi    a3, a3, 1              #; a3  = 76, (wrb) a3  <-- 77
                         M 0x800006dc fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100260]
       0     2915        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 616, a7  = 800, taken, goto 0x800006c4
       0     2916        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 77, a4  = 0xcccccccd
       0     2919        M                                           #; (acc) a5  <-- 0x0037d793
       0     2920        M 0x800006c8 srli    a5, a5, 3              #; a5  = 61, (wrb) a5  <-- 7
       0     2921        M 0x800006cc mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2924        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2925        M 0x800006d0 sub     a5, a3, a5             #; a3  = 77, a5  = 70, (wrb) a5  <-- 7
       0     2927        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 616, (wrb) a5  <-- 0x00100268
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     2928        M                                           #; (f:fpu) ft0  <-- 7.0
       0     2929        M 0x800006e0 addi    a2, a2, 8              #; a2  = 616, (wrb) a2  <-- 624
       0     2930        M 0x800006e4 addi    a3, a3, 1              #; a3  = 77, (wrb) a3  <-- 78
                         M 0x800006dc fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100268]
       0     2931        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 624, a7  = 800, taken, goto 0x800006c4
       0     2932        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 78, a4  = 0xcccccccd
       0     2935        M                                           #; (acc) a5  <-- 0x0037d793
       0     2936        M 0x800006c8 srli    a5, a5, 3              #; a5  = 62, (wrb) a5  <-- 7
       0     2937        M 0x800006cc mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2940        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2941        M 0x800006d0 sub     a5, a3, a5             #; a3  = 78, a5  = 70, (wrb) a5  <-- 8
       0     2943        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 624, (wrb) a5  <-- 0x00100270
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     2944        M                                           #; (f:fpu) ft0  <-- 8.0
       0     2945        M 0x800006e0 addi    a2, a2, 8              #; a2  = 624, (wrb) a2  <-- 632
       0     2946        M 0x800006e4 addi    a3, a3, 1              #; a3  = 78, (wrb) a3  <-- 79
                         M 0x800006dc fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100270]
       0     2947        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 632, a7  = 800, taken, goto 0x800006c4
       0     2948        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 79, a4  = 0xcccccccd
       0     2951        M                                           #; (acc) a5  <-- 0x0037d793
       0     2952        M 0x800006c8 srli    a5, a5, 3              #; a5  = 63, (wrb) a5  <-- 7
       0     2953        M 0x800006cc mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2956        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2957        M 0x800006d0 sub     a5, a3, a5             #; a3  = 79, a5  = 70, (wrb) a5  <-- 9
       0     2959        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 632, (wrb) a5  <-- 0x00100278
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     2960        M                                           #; (f:fpu) ft0  <-- 9.0
       0     2961        M 0x800006e0 addi    a2, a2, 8              #; a2  = 632, (wrb) a2  <-- 640
       0     2962        M 0x800006e4 addi    a3, a3, 1              #; a3  = 79, (wrb) a3  <-- 80
                         M 0x800006dc fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100278]
       0     2963        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 640, a7  = 800, taken, goto 0x800006c4
       0     2964        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 80, a4  = 0xcccccccd
       0     2967        M                                           #; (acc) a5  <-- 0x0037d793
       0     2968        M 0x800006c8 srli    a5, a5, 3              #; a5  = 64, (wrb) a5  <-- 8
       0     2969        M 0x800006cc mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     2972        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2973        M 0x800006d0 sub     a5, a3, a5             #; a3  = 80, a5  = 80, (wrb) a5  <-- 0
       0     2975        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 640, (wrb) a5  <-- 0x00100280
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     2976        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2977        M 0x800006e0 addi    a2, a2, 8              #; a2  = 640, (wrb) a2  <-- 648
       0     2978        M 0x800006e4 addi    a3, a3, 1              #; a3  = 80, (wrb) a3  <-- 81
                         M 0x800006dc fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100280]
       0     2979        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 648, a7  = 800, taken, goto 0x800006c4
       0     2980        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 81, a4  = 0xcccccccd
       0     2983        M                                           #; (acc) a5  <-- 0x0037d793
       0     2984        M 0x800006c8 srli    a5, a5, 3              #; a5  = 64, (wrb) a5  <-- 8
       0     2985        M 0x800006cc mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     2988        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2989        M 0x800006d0 sub     a5, a3, a5             #; a3  = 81, a5  = 80, (wrb) a5  <-- 1
       0     2991        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 648, (wrb) a5  <-- 0x00100288
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     2992        M                                           #; (f:fpu) ft0  <-- 1.0
       0     2993        M 0x800006e0 addi    a2, a2, 8              #; a2  = 648, (wrb) a2  <-- 656
       0     2994        M 0x800006e4 addi    a3, a3, 1              #; a3  = 81, (wrb) a3  <-- 82
                         M 0x800006dc fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100288]
       0     2995        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 656, a7  = 800, taken, goto 0x800006c4
       0     2996        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 82, a4  = 0xcccccccd
       0     2999        M                                           #; (acc) a5  <-- 0x0037d793
       0     3000        M 0x800006c8 srli    a5, a5, 3              #; a5  = 65, (wrb) a5  <-- 8
       0     3001        M 0x800006cc mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     3004        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3005        M 0x800006d0 sub     a5, a3, a5             #; a3  = 82, a5  = 80, (wrb) a5  <-- 2
       0     3007        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 656, (wrb) a5  <-- 0x00100290
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     3008        M                                           #; (f:fpu) ft0  <-- 2.0
       0     3009        M 0x800006e0 addi    a2, a2, 8              #; a2  = 656, (wrb) a2  <-- 664
       0     3010        M 0x800006e4 addi    a3, a3, 1              #; a3  = 82, (wrb) a3  <-- 83
                         M 0x800006dc fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100290]
       0     3011        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 664, a7  = 800, taken, goto 0x800006c4
       0     3012        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 83, a4  = 0xcccccccd
       0     3015        M                                           #; (acc) a5  <-- 0x0037d793
       0     3016        M 0x800006c8 srli    a5, a5, 3              #; a5  = 66, (wrb) a5  <-- 8
       0     3017        M 0x800006cc mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     3020        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3021        M 0x800006d0 sub     a5, a3, a5             #; a3  = 83, a5  = 80, (wrb) a5  <-- 3
       0     3023        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 664, (wrb) a5  <-- 0x00100298
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     3024        M                                           #; (f:fpu) ft0  <-- 3.0
       0     3025        M 0x800006e0 addi    a2, a2, 8              #; a2  = 664, (wrb) a2  <-- 672
       0     3026        M 0x800006e4 addi    a3, a3, 1              #; a3  = 83, (wrb) a3  <-- 84
                         M 0x800006dc fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100298]
       0     3027        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 672, a7  = 800, taken, goto 0x800006c4
       0     3028        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 84, a4  = 0xcccccccd
       0     3031        M                                           #; (acc) a5  <-- 0x0037d793
       0     3032        M 0x800006c8 srli    a5, a5, 3              #; a5  = 67, (wrb) a5  <-- 8
       0     3033        M 0x800006cc mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     3036        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3037        M 0x800006d0 sub     a5, a3, a5             #; a3  = 84, a5  = 80, (wrb) a5  <-- 4
       0     3039        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 672, (wrb) a5  <-- 0x001002a0
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     3040        M                                           #; (f:fpu) ft0  <-- 4.0
       0     3041        M 0x800006e0 addi    a2, a2, 8              #; a2  = 672, (wrb) a2  <-- 680
       0     3042        M 0x800006e4 addi    a3, a3, 1              #; a3  = 84, (wrb) a3  <-- 85
                         M 0x800006dc fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x001002a0]
       0     3043        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 680, a7  = 800, taken, goto 0x800006c4
       0     3044        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 85, a4  = 0xcccccccd
       0     3047        M                                           #; (acc) a5  <-- 0x0037d793
       0     3048        M 0x800006c8 srli    a5, a5, 3              #; a5  = 68, (wrb) a5  <-- 8
       0     3049        M 0x800006cc mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     3052        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3053        M 0x800006d0 sub     a5, a3, a5             #; a3  = 85, a5  = 80, (wrb) a5  <-- 5
       0     3055        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 680, (wrb) a5  <-- 0x001002a8
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     3056        M                                           #; (f:fpu) ft0  <-- 5.0
       0     3057        M 0x800006e0 addi    a2, a2, 8              #; a2  = 680, (wrb) a2  <-- 688
       0     3058        M 0x800006e4 addi    a3, a3, 1              #; a3  = 85, (wrb) a3  <-- 86
                         M 0x800006dc fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x001002a8]
       0     3059        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 688, a7  = 800, taken, goto 0x800006c4
       0     3060        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 86, a4  = 0xcccccccd
       0     3063        M                                           #; (acc) a5  <-- 0x0037d793
       0     3064        M 0x800006c8 srli    a5, a5, 3              #; a5  = 68, (wrb) a5  <-- 8
       0     3065        M 0x800006cc mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     3068        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3069        M 0x800006d0 sub     a5, a3, a5             #; a3  = 86, a5  = 80, (wrb) a5  <-- 6
       0     3071        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 688, (wrb) a5  <-- 0x001002b0
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     3072        M                                           #; (f:fpu) ft0  <-- 6.0
       0     3073        M 0x800006e0 addi    a2, a2, 8              #; a2  = 688, (wrb) a2  <-- 696
       0     3074        M 0x800006e4 addi    a3, a3, 1              #; a3  = 86, (wrb) a3  <-- 87
                         M 0x800006dc fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x001002b0]
       0     3075        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 696, a7  = 800, taken, goto 0x800006c4
       0     3076        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 87, a4  = 0xcccccccd
       0     3079        M                                           #; (acc) a5  <-- 0x0037d793
       0     3080        M 0x800006c8 srli    a5, a5, 3              #; a5  = 69, (wrb) a5  <-- 8
       0     3081        M 0x800006cc mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     3084        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3085        M 0x800006d0 sub     a5, a3, a5             #; a3  = 87, a5  = 80, (wrb) a5  <-- 7
       0     3087        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 696, (wrb) a5  <-- 0x001002b8
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     3088        M                                           #; (f:fpu) ft0  <-- 7.0
       0     3089        M 0x800006e0 addi    a2, a2, 8              #; a2  = 696, (wrb) a2  <-- 704
       0     3090        M 0x800006e4 addi    a3, a3, 1              #; a3  = 87, (wrb) a3  <-- 88
                         M 0x800006dc fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x001002b8]
       0     3091        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 704, a7  = 800, taken, goto 0x800006c4
       0     3092        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 88, a4  = 0xcccccccd
       0     3095        M                                           #; (acc) a5  <-- 0x0037d793
       0     3096        M 0x800006c8 srli    a5, a5, 3              #; a5  = 70, (wrb) a5  <-- 8
       0     3097        M 0x800006cc mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     3100        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3101        M 0x800006d0 sub     a5, a3, a5             #; a3  = 88, a5  = 80, (wrb) a5  <-- 8
       0     3103        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 704, (wrb) a5  <-- 0x001002c0
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     3104        M                                           #; (f:fpu) ft0  <-- 8.0
       0     3105        M 0x800006e0 addi    a2, a2, 8              #; a2  = 704, (wrb) a2  <-- 712
       0     3106        M 0x800006e4 addi    a3, a3, 1              #; a3  = 88, (wrb) a3  <-- 89
                         M 0x800006dc fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x001002c0]
       0     3107        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 712, a7  = 800, taken, goto 0x800006c4
       0     3108        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 89, a4  = 0xcccccccd
       0     3111        M                                           #; (acc) a5  <-- 0x0037d793
       0     3112        M 0x800006c8 srli    a5, a5, 3              #; a5  = 71, (wrb) a5  <-- 8
       0     3113        M 0x800006cc mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     3116        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3117        M 0x800006d0 sub     a5, a3, a5             #; a3  = 89, a5  = 80, (wrb) a5  <-- 9
       0     3119        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 712, (wrb) a5  <-- 0x001002c8
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     3120        M                                           #; (f:fpu) ft0  <-- 9.0
       0     3121        M 0x800006e0 addi    a2, a2, 8              #; a2  = 712, (wrb) a2  <-- 720
       0     3122        M 0x800006e4 addi    a3, a3, 1              #; a3  = 89, (wrb) a3  <-- 90
                         M 0x800006dc fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x001002c8]
       0     3123        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 720, a7  = 800, taken, goto 0x800006c4
       0     3124        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 90, a4  = 0xcccccccd
       0     3127        M                                           #; (acc) a5  <-- 0x0037d793
       0     3128        M 0x800006c8 srli    a5, a5, 3              #; a5  = 72, (wrb) a5  <-- 9
       0     3129        M 0x800006cc mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3132        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3133        M 0x800006d0 sub     a5, a3, a5             #; a3  = 90, a5  = 90, (wrb) a5  <-- 0
       0     3135        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 720, (wrb) a5  <-- 0x001002d0
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     3136        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3137        M 0x800006e0 addi    a2, a2, 8              #; a2  = 720, (wrb) a2  <-- 728
       0     3138        M 0x800006e4 addi    a3, a3, 1              #; a3  = 90, (wrb) a3  <-- 91
                         M 0x800006dc fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x001002d0]
       0     3139        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 728, a7  = 800, taken, goto 0x800006c4
       0     3140        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 91, a4  = 0xcccccccd
       0     3143        M                                           #; (acc) a5  <-- 0x0037d793
       0     3144        M 0x800006c8 srli    a5, a5, 3              #; a5  = 72, (wrb) a5  <-- 9
       0     3145        M 0x800006cc mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3148        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3149        M 0x800006d0 sub     a5, a3, a5             #; a3  = 91, a5  = 90, (wrb) a5  <-- 1
       0     3151        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 728, (wrb) a5  <-- 0x001002d8
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     3152        M                                           #; (f:fpu) ft0  <-- 1.0
       0     3153        M 0x800006e0 addi    a2, a2, 8              #; a2  = 728, (wrb) a2  <-- 736
       0     3154        M 0x800006e4 addi    a3, a3, 1              #; a3  = 91, (wrb) a3  <-- 92
                         M 0x800006dc fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x001002d8]
       0     3155        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 736, a7  = 800, taken, goto 0x800006c4
       0     3156        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 92, a4  = 0xcccccccd
       0     3159        M                                           #; (acc) a5  <-- 0x0037d793
       0     3160        M 0x800006c8 srli    a5, a5, 3              #; a5  = 73, (wrb) a5  <-- 9
       0     3161        M 0x800006cc mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3164        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3165        M 0x800006d0 sub     a5, a3, a5             #; a3  = 92, a5  = 90, (wrb) a5  <-- 2
       0     3167        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 736, (wrb) a5  <-- 0x001002e0
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     3168        M                                           #; (f:fpu) ft0  <-- 2.0
       0     3169        M 0x800006e0 addi    a2, a2, 8              #; a2  = 736, (wrb) a2  <-- 744
       0     3170        M 0x800006e4 addi    a3, a3, 1              #; a3  = 92, (wrb) a3  <-- 93
                         M 0x800006dc fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x001002e0]
       0     3171        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 744, a7  = 800, taken, goto 0x800006c4
       0     3172        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 93, a4  = 0xcccccccd
       0     3175        M                                           #; (acc) a5  <-- 0x0037d793
       0     3176        M 0x800006c8 srli    a5, a5, 3              #; a5  = 74, (wrb) a5  <-- 9
       0     3177        M 0x800006cc mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3180        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3181        M 0x800006d0 sub     a5, a3, a5             #; a3  = 93, a5  = 90, (wrb) a5  <-- 3
       0     3183        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 744, (wrb) a5  <-- 0x001002e8
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     3184        M                                           #; (f:fpu) ft0  <-- 3.0
       0     3185        M 0x800006e0 addi    a2, a2, 8              #; a2  = 744, (wrb) a2  <-- 752
       0     3186        M 0x800006e4 addi    a3, a3, 1              #; a3  = 93, (wrb) a3  <-- 94
                         M 0x800006dc fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x001002e8]
       0     3187        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 752, a7  = 800, taken, goto 0x800006c4
       0     3188        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 94, a4  = 0xcccccccd
       0     3191        M                                           #; (acc) a5  <-- 0x0037d793
       0     3192        M 0x800006c8 srli    a5, a5, 3              #; a5  = 75, (wrb) a5  <-- 9
       0     3193        M 0x800006cc mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3196        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3197        M 0x800006d0 sub     a5, a3, a5             #; a3  = 94, a5  = 90, (wrb) a5  <-- 4
       0     3199        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 752, (wrb) a5  <-- 0x001002f0
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     3200        M                                           #; (f:fpu) ft0  <-- 4.0
       0     3201        M 0x800006e0 addi    a2, a2, 8              #; a2  = 752, (wrb) a2  <-- 760
       0     3202        M 0x800006e4 addi    a3, a3, 1              #; a3  = 94, (wrb) a3  <-- 95
                         M 0x800006dc fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x001002f0]
       0     3203        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 760, a7  = 800, taken, goto 0x800006c4
       0     3204        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 95, a4  = 0xcccccccd
       0     3207        M                                           #; (acc) a5  <-- 0x0037d793
       0     3208        M 0x800006c8 srli    a5, a5, 3              #; a5  = 76, (wrb) a5  <-- 9
       0     3209        M 0x800006cc mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3212        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3213        M 0x800006d0 sub     a5, a3, a5             #; a3  = 95, a5  = 90, (wrb) a5  <-- 5
       0     3215        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 760, (wrb) a5  <-- 0x001002f8
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     3216        M                                           #; (f:fpu) ft0  <-- 5.0
       0     3217        M 0x800006e0 addi    a2, a2, 8              #; a2  = 760, (wrb) a2  <-- 768
       0     3218        M 0x800006e4 addi    a3, a3, 1              #; a3  = 95, (wrb) a3  <-- 96
                         M 0x800006dc fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x001002f8]
       0     3219        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 768, a7  = 800, taken, goto 0x800006c4
       0     3220        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 96, a4  = 0xcccccccd
       0     3223        M                                           #; (acc) a5  <-- 0x0037d793
       0     3224        M 0x800006c8 srli    a5, a5, 3              #; a5  = 76, (wrb) a5  <-- 9
       0     3225        M 0x800006cc mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3228        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3229        M 0x800006d0 sub     a5, a3, a5             #; a3  = 96, a5  = 90, (wrb) a5  <-- 6
       0     3231        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 768, (wrb) a5  <-- 0x00100300
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     3232        M                                           #; (f:fpu) ft0  <-- 6.0
       0     3233        M 0x800006e0 addi    a2, a2, 8              #; a2  = 768, (wrb) a2  <-- 776
       0     3234        M 0x800006e4 addi    a3, a3, 1              #; a3  = 96, (wrb) a3  <-- 97
                         M 0x800006dc fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100300]
       0     3235        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 776, a7  = 800, taken, goto 0x800006c4
       0     3236        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 97, a4  = 0xcccccccd
       0     3239        M                                           #; (acc) a5  <-- 0x0037d793
       0     3240        M 0x800006c8 srli    a5, a5, 3              #; a5  = 77, (wrb) a5  <-- 9
       0     3241        M 0x800006cc mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3244        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3245        M 0x800006d0 sub     a5, a3, a5             #; a3  = 97, a5  = 90, (wrb) a5  <-- 7
       0     3247        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 776, (wrb) a5  <-- 0x00100308
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     3248        M                                           #; (f:fpu) ft0  <-- 7.0
       0     3249        M 0x800006e0 addi    a2, a2, 8              #; a2  = 776, (wrb) a2  <-- 784
       0     3250        M 0x800006e4 addi    a3, a3, 1              #; a3  = 97, (wrb) a3  <-- 98
                         M 0x800006dc fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100308]
       0     3251        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 784, a7  = 800, taken, goto 0x800006c4
       0     3252        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 98, a4  = 0xcccccccd
       0     3255        M                                           #; (acc) a5  <-- 0x0037d793
       0     3256        M 0x800006c8 srli    a5, a5, 3              #; a5  = 78, (wrb) a5  <-- 9
       0     3257        M 0x800006cc mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3260        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3261        M 0x800006d0 sub     a5, a3, a5             #; a3  = 98, a5  = 90, (wrb) a5  <-- 8
       0     3263        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 784, (wrb) a5  <-- 0x00100310
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     3264        M                                           #; (f:fpu) ft0  <-- 8.0
       0     3265        M 0x800006e0 addi    a2, a2, 8              #; a2  = 784, (wrb) a2  <-- 792
       0     3266        M 0x800006e4 addi    a3, a3, 1              #; a3  = 98, (wrb) a3  <-- 99
                         M 0x800006dc fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100310]
       0     3267        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 792, a7  = 800, taken, goto 0x800006c4
       0     3268        M 0x800006c4 mulhu   a5, a3, a4             #; a3  = 99, a4  = 0xcccccccd
       0     3271        M                                           #; (acc) a5  <-- 0x0037d793
       0     3272        M 0x800006c8 srli    a5, a5, 3              #; a5  = 79, (wrb) a5  <-- 9
       0     3273        M 0x800006cc mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3276        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3277        M 0x800006d0 sub     a5, a3, a5             #; a3  = 99, a5  = 90, (wrb) a5  <-- 9
       0     3279        M 0x800006d8 add     a5, a0, a2             #; a0  = 0x00100000, a2  = 792, (wrb) a5  <-- 0x00100318
                         M 0x800006d4 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     3280        M                                           #; (f:fpu) ft0  <-- 9.0
       0     3281        M 0x800006e0 addi    a2, a2, 8              #; a2  = 792, (wrb) a2  <-- 800
       0     3282        M 0x800006e4 addi    a3, a3, 1              #; a3  = 99, (wrb) a3  <-- 100
                         M 0x800006dc fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100318]
       0     3283        M 0x800006e8 bne     a2, a7, pc - 36        #; a2  = 800, a7  = 800, not taken
       0     3284        M 0x800006ec li      a2, 0                  #; (wrb) a2  <-- 0
       0     3296        M 0x800006f0 li      a3, 0                  #; (wrb) a3  <-- 0
       0     3297        M 0x800006f4 lui     a4, 0xccccd            #; (wrb) a4  <-- 0xccccd000
       0     3298        M 0x800006f8 addi    a4, a4, -819           #; a4  = 0xccccd000, (wrb) a4  <-- 0xcccccccd
       0     3299        M 0x800006fc li      a6, 10                 #; (wrb) a6  <-- 10
       0     3308        M 0x80000700 li      a7, 800                #; (wrb) a7  <-- 800
       0     3309        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 0, a4  = 0xcccccccd
       0     3312        M                                           #; (acc) a5  <-- 0x0037d793
       0     3313        M 0x80000708 srli    a5, a5, 3              #; a5  = 0, (wrb) a5  <-- 0
       0     3314        M 0x8000070c mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3320        M 0x80000710 sub     a5, a3, a5             #; a3  = 0, a5  = 0, (wrb) a5  <-- 0
       0     3322        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 0, (wrb) a5  <-- 0x00100320
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     3323        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3325        M 0x8000071c fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100320]
       0     3332        M 0x80000720 addi    a2, a2, 8              #; a2  = 0, (wrb) a2  <-- 8
       0     3333        M 0x80000724 addi    a3, a3, 1              #; a3  = 0, (wrb) a3  <-- 1
       0     3334        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 8, a7  = 800, taken, goto 0x80000704
       0     3335        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 1, a4  = 0xcccccccd
       0     3338        M                                           #; (acc) a5  <-- 0x0037d793
       0     3339        M 0x80000708 srli    a5, a5, 3              #; a5  = 0, (wrb) a5  <-- 0
       0     3340        M 0x8000070c mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3343        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3344        M 0x80000710 sub     a5, a3, a5             #; a3  = 1, a5  = 0, (wrb) a5  <-- 1
       0     3346        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 8, (wrb) a5  <-- 0x00100328
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     3347        M                                           #; (f:fpu) ft0  <-- 1.0
       0     3348        M 0x80000720 addi    a2, a2, 8              #; a2  = 8, (wrb) a2  <-- 16
       0     3349        M 0x80000724 addi    a3, a3, 1              #; a3  = 1, (wrb) a3  <-- 2
                         M 0x8000071c fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100328]
       0     3350        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 16, a7  = 800, taken, goto 0x80000704
       0     3351        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 2, a4  = 0xcccccccd
       0     3354        M                                           #; (acc) a5  <-- 0x0037d793
       0     3355        M 0x80000708 srli    a5, a5, 3              #; a5  = 1, (wrb) a5  <-- 0
       0     3356        M 0x8000070c mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3359        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3360        M 0x80000710 sub     a5, a3, a5             #; a3  = 2, a5  = 0, (wrb) a5  <-- 2
       0     3362        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 16, (wrb) a5  <-- 0x00100330
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     3363        M                                           #; (f:fpu) ft0  <-- 2.0
       0     3364        M 0x80000720 addi    a2, a2, 8              #; a2  = 16, (wrb) a2  <-- 24
       0     3365        M 0x80000724 addi    a3, a3, 1              #; a3  = 2, (wrb) a3  <-- 3
                         M 0x8000071c fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100330]
       0     3366        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 24, a7  = 800, taken, goto 0x80000704
       0     3367        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 3, a4  = 0xcccccccd
       0     3370        M                                           #; (acc) a5  <-- 0x0037d793
       0     3371        M 0x80000708 srli    a5, a5, 3              #; a5  = 2, (wrb) a5  <-- 0
       0     3372        M 0x8000070c mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3375        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3376        M 0x80000710 sub     a5, a3, a5             #; a3  = 3, a5  = 0, (wrb) a5  <-- 3
       0     3378        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 24, (wrb) a5  <-- 0x00100338
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     3379        M                                           #; (f:fpu) ft0  <-- 3.0
       0     3380        M 0x80000720 addi    a2, a2, 8              #; a2  = 24, (wrb) a2  <-- 32
       0     3381        M 0x80000724 addi    a3, a3, 1              #; a3  = 3, (wrb) a3  <-- 4
                         M 0x8000071c fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100338]
       0     3382        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 32, a7  = 800, taken, goto 0x80000704
       0     3383        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 4, a4  = 0xcccccccd
       0     3386        M                                           #; (acc) a5  <-- 0x0037d793
       0     3387        M 0x80000708 srli    a5, a5, 3              #; a5  = 3, (wrb) a5  <-- 0
       0     3388        M 0x8000070c mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3391        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3392        M 0x80000710 sub     a5, a3, a5             #; a3  = 4, a5  = 0, (wrb) a5  <-- 4
       0     3394        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 32, (wrb) a5  <-- 0x00100340
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     3395        M                                           #; (f:fpu) ft0  <-- 4.0
       0     3396        M 0x80000720 addi    a2, a2, 8              #; a2  = 32, (wrb) a2  <-- 40
       0     3397        M 0x80000724 addi    a3, a3, 1              #; a3  = 4, (wrb) a3  <-- 5
                         M 0x8000071c fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100340]
       0     3398        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 40, a7  = 800, taken, goto 0x80000704
       0     3399        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 5, a4  = 0xcccccccd
       0     3402        M                                           #; (acc) a5  <-- 0x0037d793
       0     3403        M 0x80000708 srli    a5, a5, 3              #; a5  = 4, (wrb) a5  <-- 0
       0     3404        M 0x8000070c mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3407        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3408        M 0x80000710 sub     a5, a3, a5             #; a3  = 5, a5  = 0, (wrb) a5  <-- 5
       0     3410        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 40, (wrb) a5  <-- 0x00100348
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     3411        M                                           #; (f:fpu) ft0  <-- 5.0
       0     3412        M 0x80000720 addi    a2, a2, 8              #; a2  = 40, (wrb) a2  <-- 48
       0     3413        M 0x80000724 addi    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 6
                         M 0x8000071c fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100348]
       0     3414        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 48, a7  = 800, taken, goto 0x80000704
       0     3415        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 6, a4  = 0xcccccccd
       0     3418        M                                           #; (acc) a5  <-- 0x0037d793
       0     3419        M 0x80000708 srli    a5, a5, 3              #; a5  = 4, (wrb) a5  <-- 0
       0     3420        M 0x8000070c mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3423        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3424        M 0x80000710 sub     a5, a3, a5             #; a3  = 6, a5  = 0, (wrb) a5  <-- 6
       0     3426        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 48, (wrb) a5  <-- 0x00100350
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     3427        M                                           #; (f:fpu) ft0  <-- 6.0
       0     3428        M 0x80000720 addi    a2, a2, 8              #; a2  = 48, (wrb) a2  <-- 56
       0     3429        M 0x80000724 addi    a3, a3, 1              #; a3  = 6, (wrb) a3  <-- 7
                         M 0x8000071c fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100350]
       0     3430        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 56, a7  = 800, taken, goto 0x80000704
       0     3431        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 7, a4  = 0xcccccccd
       0     3434        M                                           #; (acc) a5  <-- 0x0037d793
       0     3435        M 0x80000708 srli    a5, a5, 3              #; a5  = 5, (wrb) a5  <-- 0
       0     3436        M 0x8000070c mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3439        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3440        M 0x80000710 sub     a5, a3, a5             #; a3  = 7, a5  = 0, (wrb) a5  <-- 7
       0     3442        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 56, (wrb) a5  <-- 0x00100358
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     3443        M                                           #; (f:fpu) ft0  <-- 7.0
       0     3444        M 0x80000720 addi    a2, a2, 8              #; a2  = 56, (wrb) a2  <-- 64
       0     3445        M 0x80000724 addi    a3, a3, 1              #; a3  = 7, (wrb) a3  <-- 8
                         M 0x8000071c fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100358]
       0     3446        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 64, a7  = 800, taken, goto 0x80000704
       0     3447        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 8, a4  = 0xcccccccd
       0     3450        M                                           #; (acc) a5  <-- 0x0037d793
       0     3451        M 0x80000708 srli    a5, a5, 3              #; a5  = 6, (wrb) a5  <-- 0
       0     3452        M 0x8000070c mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3455        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3456        M 0x80000710 sub     a5, a3, a5             #; a3  = 8, a5  = 0, (wrb) a5  <-- 8
       0     3458        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 64, (wrb) a5  <-- 0x00100360
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     3459        M                                           #; (f:fpu) ft0  <-- 8.0
       0     3460        M 0x80000720 addi    a2, a2, 8              #; a2  = 64, (wrb) a2  <-- 72
       0     3461        M 0x80000724 addi    a3, a3, 1              #; a3  = 8, (wrb) a3  <-- 9
                         M 0x8000071c fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100360]
       0     3462        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 72, a7  = 800, taken, goto 0x80000704
       0     3463        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 9, a4  = 0xcccccccd
       0     3466        M                                           #; (acc) a5  <-- 0x0037d793
       0     3467        M 0x80000708 srli    a5, a5, 3              #; a5  = 7, (wrb) a5  <-- 0
       0     3468        M 0x8000070c mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3471        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3472        M 0x80000710 sub     a5, a3, a5             #; a3  = 9, a5  = 0, (wrb) a5  <-- 9
       0     3474        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 72, (wrb) a5  <-- 0x00100368
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     3475        M                                           #; (f:fpu) ft0  <-- 9.0
       0     3476        M 0x80000720 addi    a2, a2, 8              #; a2  = 72, (wrb) a2  <-- 80
       0     3477        M 0x80000724 addi    a3, a3, 1              #; a3  = 9, (wrb) a3  <-- 10
                         M 0x8000071c fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100368]
       0     3478        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 80, a7  = 800, taken, goto 0x80000704
       0     3479        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 10, a4  = 0xcccccccd
       0     3482        M                                           #; (acc) a5  <-- 0x0037d793
       0     3483        M 0x80000708 srli    a5, a5, 3              #; a5  = 8, (wrb) a5  <-- 1
       0     3484        M 0x8000070c mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3487        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3488        M 0x80000710 sub     a5, a3, a5             #; a3  = 10, a5  = 10, (wrb) a5  <-- 0
       0     3490        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 80, (wrb) a5  <-- 0x00100370
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     3491        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3492        M 0x80000720 addi    a2, a2, 8              #; a2  = 80, (wrb) a2  <-- 88
       0     3493        M 0x80000724 addi    a3, a3, 1              #; a3  = 10, (wrb) a3  <-- 11
                         M 0x8000071c fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100370]
       0     3494        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 88, a7  = 800, taken, goto 0x80000704
       0     3495        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 11, a4  = 0xcccccccd
       0     3498        M                                           #; (acc) a5  <-- 0x0037d793
       0     3499        M 0x80000708 srli    a5, a5, 3              #; a5  = 8, (wrb) a5  <-- 1
       0     3500        M 0x8000070c mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3503        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3504        M 0x80000710 sub     a5, a3, a5             #; a3  = 11, a5  = 10, (wrb) a5  <-- 1
       0     3506        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 88, (wrb) a5  <-- 0x00100378
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     3507        M                                           #; (f:fpu) ft0  <-- 1.0
       0     3508        M 0x80000720 addi    a2, a2, 8              #; a2  = 88, (wrb) a2  <-- 96
       0     3509        M 0x80000724 addi    a3, a3, 1              #; a3  = 11, (wrb) a3  <-- 12
                         M 0x8000071c fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100378]
       0     3510        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 96, a7  = 800, taken, goto 0x80000704
       0     3511        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 12, a4  = 0xcccccccd
       0     3514        M                                           #; (acc) a5  <-- 0x0037d793
       0     3515        M 0x80000708 srli    a5, a5, 3              #; a5  = 9, (wrb) a5  <-- 1
       0     3516        M 0x8000070c mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3519        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3520        M 0x80000710 sub     a5, a3, a5             #; a3  = 12, a5  = 10, (wrb) a5  <-- 2
       0     3522        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 96, (wrb) a5  <-- 0x00100380
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     3523        M                                           #; (f:fpu) ft0  <-- 2.0
       0     3524        M 0x80000720 addi    a2, a2, 8              #; a2  = 96, (wrb) a2  <-- 104
       0     3525        M 0x80000724 addi    a3, a3, 1              #; a3  = 12, (wrb) a3  <-- 13
                         M 0x8000071c fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100380]
       0     3526        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 104, a7  = 800, taken, goto 0x80000704
       0     3527        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 13, a4  = 0xcccccccd
       0     3530        M                                           #; (acc) a5  <-- 0x0037d793
       0     3531        M 0x80000708 srli    a5, a5, 3              #; a5  = 10, (wrb) a5  <-- 1
       0     3532        M 0x8000070c mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3535        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3536        M 0x80000710 sub     a5, a3, a5             #; a3  = 13, a5  = 10, (wrb) a5  <-- 3
       0     3538        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 104, (wrb) a5  <-- 0x00100388
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     3539        M                                           #; (f:fpu) ft0  <-- 3.0
       0     3540        M 0x80000720 addi    a2, a2, 8              #; a2  = 104, (wrb) a2  <-- 112
       0     3541        M 0x80000724 addi    a3, a3, 1              #; a3  = 13, (wrb) a3  <-- 14
                         M 0x8000071c fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100388]
       0     3542        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 112, a7  = 800, taken, goto 0x80000704
       0     3543        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 14, a4  = 0xcccccccd
       0     3546        M                                           #; (acc) a5  <-- 0x0037d793
       0     3547        M 0x80000708 srli    a5, a5, 3              #; a5  = 11, (wrb) a5  <-- 1
       0     3548        M 0x8000070c mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3551        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3552        M 0x80000710 sub     a5, a3, a5             #; a3  = 14, a5  = 10, (wrb) a5  <-- 4
       0     3554        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 112, (wrb) a5  <-- 0x00100390
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     3555        M                                           #; (f:fpu) ft0  <-- 4.0
       0     3556        M 0x80000720 addi    a2, a2, 8              #; a2  = 112, (wrb) a2  <-- 120
       0     3557        M 0x80000724 addi    a3, a3, 1              #; a3  = 14, (wrb) a3  <-- 15
                         M 0x8000071c fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100390]
       0     3558        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 120, a7  = 800, taken, goto 0x80000704
       0     3559        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 15, a4  = 0xcccccccd
       0     3562        M                                           #; (acc) a5  <-- 0x0037d793
       0     3563        M 0x80000708 srli    a5, a5, 3              #; a5  = 12, (wrb) a5  <-- 1
       0     3564        M 0x8000070c mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3567        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3568        M 0x80000710 sub     a5, a3, a5             #; a3  = 15, a5  = 10, (wrb) a5  <-- 5
       0     3570        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 120, (wrb) a5  <-- 0x00100398
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     3571        M                                           #; (f:fpu) ft0  <-- 5.0
       0     3572        M 0x80000720 addi    a2, a2, 8              #; a2  = 120, (wrb) a2  <-- 128
       0     3573        M 0x80000724 addi    a3, a3, 1              #; a3  = 15, (wrb) a3  <-- 16
                         M 0x8000071c fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100398]
       0     3574        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 128, a7  = 800, taken, goto 0x80000704
       0     3575        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 16, a4  = 0xcccccccd
       0     3578        M                                           #; (acc) a5  <-- 0x0037d793
       0     3579        M 0x80000708 srli    a5, a5, 3              #; a5  = 12, (wrb) a5  <-- 1
       0     3580        M 0x8000070c mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3583        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3584        M 0x80000710 sub     a5, a3, a5             #; a3  = 16, a5  = 10, (wrb) a5  <-- 6
       0     3586        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 128, (wrb) a5  <-- 0x001003a0
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     3587        M                                           #; (f:fpu) ft0  <-- 6.0
       0     3588        M 0x80000720 addi    a2, a2, 8              #; a2  = 128, (wrb) a2  <-- 136
       0     3589        M 0x80000724 addi    a3, a3, 1              #; a3  = 16, (wrb) a3  <-- 17
                         M 0x8000071c fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x001003a0]
       0     3590        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 136, a7  = 800, taken, goto 0x80000704
       0     3591        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 17, a4  = 0xcccccccd
       0     3594        M                                           #; (acc) a5  <-- 0x0037d793
       0     3595        M 0x80000708 srli    a5, a5, 3              #; a5  = 13, (wrb) a5  <-- 1
       0     3596        M 0x8000070c mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3599        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3600        M 0x80000710 sub     a5, a3, a5             #; a3  = 17, a5  = 10, (wrb) a5  <-- 7
       0     3602        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 136, (wrb) a5  <-- 0x001003a8
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     3603        M                                           #; (f:fpu) ft0  <-- 7.0
       0     3604        M 0x80000720 addi    a2, a2, 8              #; a2  = 136, (wrb) a2  <-- 144
       0     3605        M 0x80000724 addi    a3, a3, 1              #; a3  = 17, (wrb) a3  <-- 18
                         M 0x8000071c fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x001003a8]
       0     3606        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 144, a7  = 800, taken, goto 0x80000704
       0     3607        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 18, a4  = 0xcccccccd
       0     3610        M                                           #; (acc) a5  <-- 0x0037d793
       0     3611        M 0x80000708 srli    a5, a5, 3              #; a5  = 14, (wrb) a5  <-- 1
       0     3612        M 0x8000070c mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3615        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3616        M 0x80000710 sub     a5, a3, a5             #; a3  = 18, a5  = 10, (wrb) a5  <-- 8
       0     3618        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 144, (wrb) a5  <-- 0x001003b0
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     3619        M                                           #; (f:fpu) ft0  <-- 8.0
       0     3620        M 0x80000720 addi    a2, a2, 8              #; a2  = 144, (wrb) a2  <-- 152
       0     3621        M 0x80000724 addi    a3, a3, 1              #; a3  = 18, (wrb) a3  <-- 19
                         M 0x8000071c fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x001003b0]
       0     3622        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 152, a7  = 800, taken, goto 0x80000704
       0     3623        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 19, a4  = 0xcccccccd
       0     3626        M                                           #; (acc) a5  <-- 0x0037d793
       0     3627        M 0x80000708 srli    a5, a5, 3              #; a5  = 15, (wrb) a5  <-- 1
       0     3628        M 0x8000070c mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3631        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3632        M 0x80000710 sub     a5, a3, a5             #; a3  = 19, a5  = 10, (wrb) a5  <-- 9
       0     3634        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 152, (wrb) a5  <-- 0x001003b8
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     3635        M                                           #; (f:fpu) ft0  <-- 9.0
       0     3636        M 0x80000720 addi    a2, a2, 8              #; a2  = 152, (wrb) a2  <-- 160
       0     3637        M 0x80000724 addi    a3, a3, 1              #; a3  = 19, (wrb) a3  <-- 20
                         M 0x8000071c fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x001003b8]
       0     3638        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 160, a7  = 800, taken, goto 0x80000704
       0     3639        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 20, a4  = 0xcccccccd
       0     3642        M                                           #; (acc) a5  <-- 0x0037d793
       0     3643        M 0x80000708 srli    a5, a5, 3              #; a5  = 16, (wrb) a5  <-- 2
       0     3644        M 0x8000070c mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3647        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3648        M 0x80000710 sub     a5, a3, a5             #; a3  = 20, a5  = 20, (wrb) a5  <-- 0
       0     3650        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 160, (wrb) a5  <-- 0x001003c0
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     3651        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3652        M 0x80000720 addi    a2, a2, 8              #; a2  = 160, (wrb) a2  <-- 168
       0     3653        M 0x80000724 addi    a3, a3, 1              #; a3  = 20, (wrb) a3  <-- 21
                         M 0x8000071c fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x001003c0]
       0     3654        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 168, a7  = 800, taken, goto 0x80000704
       0     3655        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 21, a4  = 0xcccccccd
       0     3658        M                                           #; (acc) a5  <-- 0x0037d793
       0     3659        M 0x80000708 srli    a5, a5, 3              #; a5  = 16, (wrb) a5  <-- 2
       0     3660        M 0x8000070c mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3663        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3664        M 0x80000710 sub     a5, a3, a5             #; a3  = 21, a5  = 20, (wrb) a5  <-- 1
       0     3666        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 168, (wrb) a5  <-- 0x001003c8
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     3667        M                                           #; (f:fpu) ft0  <-- 1.0
       0     3668        M 0x80000720 addi    a2, a2, 8              #; a2  = 168, (wrb) a2  <-- 176
       0     3669        M 0x80000724 addi    a3, a3, 1              #; a3  = 21, (wrb) a3  <-- 22
                         M 0x8000071c fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x001003c8]
       0     3670        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 176, a7  = 800, taken, goto 0x80000704
       0     3671        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 22, a4  = 0xcccccccd
       0     3674        M                                           #; (acc) a5  <-- 0x0037d793
       0     3675        M 0x80000708 srli    a5, a5, 3              #; a5  = 17, (wrb) a5  <-- 2
       0     3676        M 0x8000070c mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3679        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3680        M 0x80000710 sub     a5, a3, a5             #; a3  = 22, a5  = 20, (wrb) a5  <-- 2
       0     3682        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 176, (wrb) a5  <-- 0x001003d0
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     3683        M                                           #; (f:fpu) ft0  <-- 2.0
       0     3684        M 0x80000720 addi    a2, a2, 8              #; a2  = 176, (wrb) a2  <-- 184
       0     3685        M 0x80000724 addi    a3, a3, 1              #; a3  = 22, (wrb) a3  <-- 23
                         M 0x8000071c fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x001003d0]
       0     3686        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 184, a7  = 800, taken, goto 0x80000704
       0     3687        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 23, a4  = 0xcccccccd
       0     3690        M                                           #; (acc) a5  <-- 0x0037d793
       0     3691        M 0x80000708 srli    a5, a5, 3              #; a5  = 18, (wrb) a5  <-- 2
       0     3692        M 0x8000070c mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3695        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3696        M 0x80000710 sub     a5, a3, a5             #; a3  = 23, a5  = 20, (wrb) a5  <-- 3
       0     3698        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 184, (wrb) a5  <-- 0x001003d8
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     3699        M                                           #; (f:fpu) ft0  <-- 3.0
       0     3700        M 0x80000720 addi    a2, a2, 8              #; a2  = 184, (wrb) a2  <-- 192
       0     3701        M 0x80000724 addi    a3, a3, 1              #; a3  = 23, (wrb) a3  <-- 24
                         M 0x8000071c fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x001003d8]
       0     3702        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 192, a7  = 800, taken, goto 0x80000704
       0     3703        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 24, a4  = 0xcccccccd
       0     3706        M                                           #; (acc) a5  <-- 0x0037d793
       0     3707        M 0x80000708 srli    a5, a5, 3              #; a5  = 19, (wrb) a5  <-- 2
       0     3708        M 0x8000070c mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3711        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3712        M 0x80000710 sub     a5, a3, a5             #; a3  = 24, a5  = 20, (wrb) a5  <-- 4
       0     3714        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 192, (wrb) a5  <-- 0x001003e0
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     3715        M                                           #; (f:fpu) ft0  <-- 4.0
       0     3716        M 0x80000720 addi    a2, a2, 8              #; a2  = 192, (wrb) a2  <-- 200
       0     3717        M 0x80000724 addi    a3, a3, 1              #; a3  = 24, (wrb) a3  <-- 25
                         M 0x8000071c fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x001003e0]
       0     3718        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 200, a7  = 800, taken, goto 0x80000704
       0     3719        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 25, a4  = 0xcccccccd
       0     3722        M                                           #; (acc) a5  <-- 0x0037d793
       0     3723        M 0x80000708 srli    a5, a5, 3              #; a5  = 20, (wrb) a5  <-- 2
       0     3724        M 0x8000070c mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3727        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3728        M 0x80000710 sub     a5, a3, a5             #; a3  = 25, a5  = 20, (wrb) a5  <-- 5
       0     3730        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 200, (wrb) a5  <-- 0x001003e8
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     3731        M                                           #; (f:fpu) ft0  <-- 5.0
       0     3732        M 0x80000720 addi    a2, a2, 8              #; a2  = 200, (wrb) a2  <-- 208
       0     3733        M 0x80000724 addi    a3, a3, 1              #; a3  = 25, (wrb) a3  <-- 26
                         M 0x8000071c fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x001003e8]
       0     3734        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 208, a7  = 800, taken, goto 0x80000704
       0     3735        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 26, a4  = 0xcccccccd
       0     3738        M                                           #; (acc) a5  <-- 0x0037d793
       0     3739        M 0x80000708 srli    a5, a5, 3              #; a5  = 20, (wrb) a5  <-- 2
       0     3740        M 0x8000070c mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3743        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3744        M 0x80000710 sub     a5, a3, a5             #; a3  = 26, a5  = 20, (wrb) a5  <-- 6
       0     3746        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 208, (wrb) a5  <-- 0x001003f0
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     3747        M                                           #; (f:fpu) ft0  <-- 6.0
       0     3748        M 0x80000720 addi    a2, a2, 8              #; a2  = 208, (wrb) a2  <-- 216
       0     3749        M 0x80000724 addi    a3, a3, 1              #; a3  = 26, (wrb) a3  <-- 27
                         M 0x8000071c fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x001003f0]
       0     3750        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 216, a7  = 800, taken, goto 0x80000704
       0     3751        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 27, a4  = 0xcccccccd
       0     3754        M                                           #; (acc) a5  <-- 0x0037d793
       0     3755        M 0x80000708 srli    a5, a5, 3              #; a5  = 21, (wrb) a5  <-- 2
       0     3756        M 0x8000070c mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3759        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3760        M 0x80000710 sub     a5, a3, a5             #; a3  = 27, a5  = 20, (wrb) a5  <-- 7
       0     3762        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 216, (wrb) a5  <-- 0x001003f8
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     3763        M                                           #; (f:fpu) ft0  <-- 7.0
       0     3764        M 0x80000720 addi    a2, a2, 8              #; a2  = 216, (wrb) a2  <-- 224
       0     3765        M 0x80000724 addi    a3, a3, 1              #; a3  = 27, (wrb) a3  <-- 28
                         M 0x8000071c fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x001003f8]
       0     3766        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 224, a7  = 800, taken, goto 0x80000704
       0     3767        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 28, a4  = 0xcccccccd
       0     3770        M                                           #; (acc) a5  <-- 0x0037d793
       0     3771        M 0x80000708 srli    a5, a5, 3              #; a5  = 22, (wrb) a5  <-- 2
       0     3772        M 0x8000070c mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3775        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3776        M 0x80000710 sub     a5, a3, a5             #; a3  = 28, a5  = 20, (wrb) a5  <-- 8
       0     3778        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 224, (wrb) a5  <-- 0x00100400
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     3779        M                                           #; (f:fpu) ft0  <-- 8.0
       0     3780        M 0x80000720 addi    a2, a2, 8              #; a2  = 224, (wrb) a2  <-- 232
       0     3781        M 0x80000724 addi    a3, a3, 1              #; a3  = 28, (wrb) a3  <-- 29
                         M 0x8000071c fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100400]
       0     3782        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 232, a7  = 800, taken, goto 0x80000704
       0     3783        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 29, a4  = 0xcccccccd
       0     3786        M                                           #; (acc) a5  <-- 0x0037d793
       0     3787        M 0x80000708 srli    a5, a5, 3              #; a5  = 23, (wrb) a5  <-- 2
       0     3788        M 0x8000070c mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3791        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3792        M 0x80000710 sub     a5, a3, a5             #; a3  = 29, a5  = 20, (wrb) a5  <-- 9
       0     3794        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 232, (wrb) a5  <-- 0x00100408
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     3795        M                                           #; (f:fpu) ft0  <-- 9.0
       0     3796        M 0x80000720 addi    a2, a2, 8              #; a2  = 232, (wrb) a2  <-- 240
       0     3797        M 0x80000724 addi    a3, a3, 1              #; a3  = 29, (wrb) a3  <-- 30
                         M 0x8000071c fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100408]
       0     3798        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 240, a7  = 800, taken, goto 0x80000704
       0     3799        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 30, a4  = 0xcccccccd
       0     3802        M                                           #; (acc) a5  <-- 0x0037d793
       0     3803        M 0x80000708 srli    a5, a5, 3              #; a5  = 24, (wrb) a5  <-- 3
       0     3804        M 0x8000070c mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3807        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3808        M 0x80000710 sub     a5, a3, a5             #; a3  = 30, a5  = 30, (wrb) a5  <-- 0
       0     3810        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 240, (wrb) a5  <-- 0x00100410
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     3811        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3812        M 0x80000720 addi    a2, a2, 8              #; a2  = 240, (wrb) a2  <-- 248
       0     3813        M 0x80000724 addi    a3, a3, 1              #; a3  = 30, (wrb) a3  <-- 31
                         M 0x8000071c fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100410]
       0     3814        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 248, a7  = 800, taken, goto 0x80000704
       0     3815        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 31, a4  = 0xcccccccd
       0     3818        M                                           #; (acc) a5  <-- 0x0037d793
       0     3819        M 0x80000708 srli    a5, a5, 3              #; a5  = 24, (wrb) a5  <-- 3
       0     3820        M 0x8000070c mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3823        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3824        M 0x80000710 sub     a5, a3, a5             #; a3  = 31, a5  = 30, (wrb) a5  <-- 1
       0     3826        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 248, (wrb) a5  <-- 0x00100418
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     3827        M                                           #; (f:fpu) ft0  <-- 1.0
       0     3828        M 0x80000720 addi    a2, a2, 8              #; a2  = 248, (wrb) a2  <-- 256
       0     3829        M 0x80000724 addi    a3, a3, 1              #; a3  = 31, (wrb) a3  <-- 32
                         M 0x8000071c fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100418]
       0     3830        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 256, a7  = 800, taken, goto 0x80000704
       0     3831        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 32, a4  = 0xcccccccd
       0     3834        M                                           #; (acc) a5  <-- 0x0037d793
       0     3835        M 0x80000708 srli    a5, a5, 3              #; a5  = 25, (wrb) a5  <-- 3
       0     3836        M 0x8000070c mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3839        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3840        M 0x80000710 sub     a5, a3, a5             #; a3  = 32, a5  = 30, (wrb) a5  <-- 2
       0     3842        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 256, (wrb) a5  <-- 0x00100420
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     3843        M                                           #; (f:fpu) ft0  <-- 2.0
       0     3844        M 0x80000720 addi    a2, a2, 8              #; a2  = 256, (wrb) a2  <-- 264
       0     3845        M 0x80000724 addi    a3, a3, 1              #; a3  = 32, (wrb) a3  <-- 33
                         M 0x8000071c fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100420]
       0     3846        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 264, a7  = 800, taken, goto 0x80000704
       0     3847        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 33, a4  = 0xcccccccd
       0     3850        M                                           #; (acc) a5  <-- 0x0037d793
       0     3851        M 0x80000708 srli    a5, a5, 3              #; a5  = 26, (wrb) a5  <-- 3
       0     3852        M 0x8000070c mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3855        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3856        M 0x80000710 sub     a5, a3, a5             #; a3  = 33, a5  = 30, (wrb) a5  <-- 3
       0     3858        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 264, (wrb) a5  <-- 0x00100428
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     3859        M                                           #; (f:fpu) ft0  <-- 3.0
       0     3860        M 0x80000720 addi    a2, a2, 8              #; a2  = 264, (wrb) a2  <-- 272
       0     3861        M 0x80000724 addi    a3, a3, 1              #; a3  = 33, (wrb) a3  <-- 34
                         M 0x8000071c fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100428]
       0     3862        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 272, a7  = 800, taken, goto 0x80000704
       0     3863        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 34, a4  = 0xcccccccd
       0     3866        M                                           #; (acc) a5  <-- 0x0037d793
       0     3867        M 0x80000708 srli    a5, a5, 3              #; a5  = 27, (wrb) a5  <-- 3
       0     3868        M 0x8000070c mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3871        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3872        M 0x80000710 sub     a5, a3, a5             #; a3  = 34, a5  = 30, (wrb) a5  <-- 4
       0     3874        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 272, (wrb) a5  <-- 0x00100430
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     3875        M                                           #; (f:fpu) ft0  <-- 4.0
       0     3876        M 0x80000720 addi    a2, a2, 8              #; a2  = 272, (wrb) a2  <-- 280
       0     3877        M 0x80000724 addi    a3, a3, 1              #; a3  = 34, (wrb) a3  <-- 35
                         M 0x8000071c fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100430]
       0     3878        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 280, a7  = 800, taken, goto 0x80000704
       0     3879        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 35, a4  = 0xcccccccd
       0     3882        M                                           #; (acc) a5  <-- 0x0037d793
       0     3883        M 0x80000708 srli    a5, a5, 3              #; a5  = 28, (wrb) a5  <-- 3
       0     3884        M 0x8000070c mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3887        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3888        M 0x80000710 sub     a5, a3, a5             #; a3  = 35, a5  = 30, (wrb) a5  <-- 5
       0     3890        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 280, (wrb) a5  <-- 0x00100438
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     3891        M                                           #; (f:fpu) ft0  <-- 5.0
       0     3892        M 0x80000720 addi    a2, a2, 8              #; a2  = 280, (wrb) a2  <-- 288
       0     3893        M 0x80000724 addi    a3, a3, 1              #; a3  = 35, (wrb) a3  <-- 36
                         M 0x8000071c fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100438]
       0     3894        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 288, a7  = 800, taken, goto 0x80000704
       0     3895        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 36, a4  = 0xcccccccd
       0     3898        M                                           #; (acc) a5  <-- 0x0037d793
       0     3899        M 0x80000708 srli    a5, a5, 3              #; a5  = 28, (wrb) a5  <-- 3
       0     3900        M 0x8000070c mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3903        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3904        M 0x80000710 sub     a5, a3, a5             #; a3  = 36, a5  = 30, (wrb) a5  <-- 6
       0     3906        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 288, (wrb) a5  <-- 0x00100440
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     3907        M                                           #; (f:fpu) ft0  <-- 6.0
       0     3908        M 0x80000720 addi    a2, a2, 8              #; a2  = 288, (wrb) a2  <-- 296
       0     3909        M 0x80000724 addi    a3, a3, 1              #; a3  = 36, (wrb) a3  <-- 37
                         M 0x8000071c fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100440]
       0     3910        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 296, a7  = 800, taken, goto 0x80000704
       0     3911        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 37, a4  = 0xcccccccd
       0     3914        M                                           #; (acc) a5  <-- 0x0037d793
       0     3915        M 0x80000708 srli    a5, a5, 3              #; a5  = 29, (wrb) a5  <-- 3
       0     3916        M 0x8000070c mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3919        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3920        M 0x80000710 sub     a5, a3, a5             #; a3  = 37, a5  = 30, (wrb) a5  <-- 7
       0     3922        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 296, (wrb) a5  <-- 0x00100448
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     3923        M                                           #; (f:fpu) ft0  <-- 7.0
       0     3924        M 0x80000720 addi    a2, a2, 8              #; a2  = 296, (wrb) a2  <-- 304
       0     3925        M 0x80000724 addi    a3, a3, 1              #; a3  = 37, (wrb) a3  <-- 38
                         M 0x8000071c fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100448]
       0     3926        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 304, a7  = 800, taken, goto 0x80000704
       0     3927        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 38, a4  = 0xcccccccd
       0     3930        M                                           #; (acc) a5  <-- 0x0037d793
       0     3931        M 0x80000708 srli    a5, a5, 3              #; a5  = 30, (wrb) a5  <-- 3
       0     3932        M 0x8000070c mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3935        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3936        M 0x80000710 sub     a5, a3, a5             #; a3  = 38, a5  = 30, (wrb) a5  <-- 8
       0     3938        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 304, (wrb) a5  <-- 0x00100450
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     3939        M                                           #; (f:fpu) ft0  <-- 8.0
       0     3940        M 0x80000720 addi    a2, a2, 8              #; a2  = 304, (wrb) a2  <-- 312
       0     3941        M 0x80000724 addi    a3, a3, 1              #; a3  = 38, (wrb) a3  <-- 39
                         M 0x8000071c fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100450]
       0     3942        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 312, a7  = 800, taken, goto 0x80000704
       0     3943        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 39, a4  = 0xcccccccd
       0     3946        M                                           #; (acc) a5  <-- 0x0037d793
       0     3947        M 0x80000708 srli    a5, a5, 3              #; a5  = 31, (wrb) a5  <-- 3
       0     3948        M 0x8000070c mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3951        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3952        M 0x80000710 sub     a5, a3, a5             #; a3  = 39, a5  = 30, (wrb) a5  <-- 9
       0     3954        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 312, (wrb) a5  <-- 0x00100458
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     3955        M                                           #; (f:fpu) ft0  <-- 9.0
       0     3956        M 0x80000720 addi    a2, a2, 8              #; a2  = 312, (wrb) a2  <-- 320
       0     3957        M 0x80000724 addi    a3, a3, 1              #; a3  = 39, (wrb) a3  <-- 40
                         M 0x8000071c fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100458]
       0     3958        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 320, a7  = 800, taken, goto 0x80000704
       0     3959        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 40, a4  = 0xcccccccd
       0     3962        M                                           #; (acc) a5  <-- 0x0037d793
       0     3963        M 0x80000708 srli    a5, a5, 3              #; a5  = 32, (wrb) a5  <-- 4
       0     3964        M 0x8000070c mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     3967        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3968        M 0x80000710 sub     a5, a3, a5             #; a3  = 40, a5  = 40, (wrb) a5  <-- 0
       0     3970        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 320, (wrb) a5  <-- 0x00100460
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     3971        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3972        M 0x80000720 addi    a2, a2, 8              #; a2  = 320, (wrb) a2  <-- 328
       0     3973        M 0x80000724 addi    a3, a3, 1              #; a3  = 40, (wrb) a3  <-- 41
                         M 0x8000071c fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100460]
       0     3974        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 328, a7  = 800, taken, goto 0x80000704
       0     3975        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 41, a4  = 0xcccccccd
       0     3978        M                                           #; (acc) a5  <-- 0x0037d793
       0     3979        M 0x80000708 srli    a5, a5, 3              #; a5  = 32, (wrb) a5  <-- 4
       0     3980        M 0x8000070c mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     3983        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3984        M 0x80000710 sub     a5, a3, a5             #; a3  = 41, a5  = 40, (wrb) a5  <-- 1
       0     3986        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 328, (wrb) a5  <-- 0x00100468
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     3987        M                                           #; (f:fpu) ft0  <-- 1.0
       0     3988        M 0x80000720 addi    a2, a2, 8              #; a2  = 328, (wrb) a2  <-- 336
       0     3989        M 0x80000724 addi    a3, a3, 1              #; a3  = 41, (wrb) a3  <-- 42
                         M 0x8000071c fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100468]
       0     3990        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 336, a7  = 800, taken, goto 0x80000704
       0     3991        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 42, a4  = 0xcccccccd
       0     3994        M                                           #; (acc) a5  <-- 0x0037d793
       0     3995        M 0x80000708 srli    a5, a5, 3              #; a5  = 33, (wrb) a5  <-- 4
       0     3996        M 0x8000070c mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     3999        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4000        M 0x80000710 sub     a5, a3, a5             #; a3  = 42, a5  = 40, (wrb) a5  <-- 2
       0     4002        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 336, (wrb) a5  <-- 0x00100470
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     4003        M                                           #; (f:fpu) ft0  <-- 2.0
       0     4004        M 0x80000720 addi    a2, a2, 8              #; a2  = 336, (wrb) a2  <-- 344
       0     4005        M 0x80000724 addi    a3, a3, 1              #; a3  = 42, (wrb) a3  <-- 43
                         M 0x8000071c fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100470]
       0     4006        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 344, a7  = 800, taken, goto 0x80000704
       0     4007        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 43, a4  = 0xcccccccd
       0     4010        M                                           #; (acc) a5  <-- 0x0037d793
       0     4011        M 0x80000708 srli    a5, a5, 3              #; a5  = 34, (wrb) a5  <-- 4
       0     4012        M 0x8000070c mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     4015        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4016        M 0x80000710 sub     a5, a3, a5             #; a3  = 43, a5  = 40, (wrb) a5  <-- 3
       0     4018        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 344, (wrb) a5  <-- 0x00100478
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     4019        M                                           #; (f:fpu) ft0  <-- 3.0
       0     4020        M 0x80000720 addi    a2, a2, 8              #; a2  = 344, (wrb) a2  <-- 352
       0     4021        M 0x80000724 addi    a3, a3, 1              #; a3  = 43, (wrb) a3  <-- 44
                         M 0x8000071c fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100478]
       0     4022        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 352, a7  = 800, taken, goto 0x80000704
       0     4023        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 44, a4  = 0xcccccccd
       0     4026        M                                           #; (acc) a5  <-- 0x0037d793
       0     4027        M 0x80000708 srli    a5, a5, 3              #; a5  = 35, (wrb) a5  <-- 4
       0     4028        M 0x8000070c mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     4031        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4032        M 0x80000710 sub     a5, a3, a5             #; a3  = 44, a5  = 40, (wrb) a5  <-- 4
       0     4034        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 352, (wrb) a5  <-- 0x00100480
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     4035        M                                           #; (f:fpu) ft0  <-- 4.0
       0     4036        M 0x80000720 addi    a2, a2, 8              #; a2  = 352, (wrb) a2  <-- 360
       0     4037        M 0x80000724 addi    a3, a3, 1              #; a3  = 44, (wrb) a3  <-- 45
                         M 0x8000071c fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100480]
       0     4038        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 360, a7  = 800, taken, goto 0x80000704
       0     4039        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 45, a4  = 0xcccccccd
       0     4042        M                                           #; (acc) a5  <-- 0x0037d793
       0     4043        M 0x80000708 srli    a5, a5, 3              #; a5  = 36, (wrb) a5  <-- 4
       0     4044        M 0x8000070c mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     4047        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4048        M 0x80000710 sub     a5, a3, a5             #; a3  = 45, a5  = 40, (wrb) a5  <-- 5
       0     4050        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 360, (wrb) a5  <-- 0x00100488
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     4051        M                                           #; (f:fpu) ft0  <-- 5.0
       0     4052        M 0x80000720 addi    a2, a2, 8              #; a2  = 360, (wrb) a2  <-- 368
       0     4053        M 0x80000724 addi    a3, a3, 1              #; a3  = 45, (wrb) a3  <-- 46
                         M 0x8000071c fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100488]
       0     4054        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 368, a7  = 800, taken, goto 0x80000704
       0     4055        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 46, a4  = 0xcccccccd
       0     4058        M                                           #; (acc) a5  <-- 0x0037d793
       0     4059        M 0x80000708 srli    a5, a5, 3              #; a5  = 36, (wrb) a5  <-- 4
       0     4060        M 0x8000070c mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     4063        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4064        M 0x80000710 sub     a5, a3, a5             #; a3  = 46, a5  = 40, (wrb) a5  <-- 6
       0     4066        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 368, (wrb) a5  <-- 0x00100490
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     4067        M                                           #; (f:fpu) ft0  <-- 6.0
       0     4068        M 0x80000720 addi    a2, a2, 8              #; a2  = 368, (wrb) a2  <-- 376
       0     4069        M 0x80000724 addi    a3, a3, 1              #; a3  = 46, (wrb) a3  <-- 47
                         M 0x8000071c fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100490]
       0     4070        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 376, a7  = 800, taken, goto 0x80000704
       0     4071        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 47, a4  = 0xcccccccd
       0     4074        M                                           #; (acc) a5  <-- 0x0037d793
       0     4075        M 0x80000708 srli    a5, a5, 3              #; a5  = 37, (wrb) a5  <-- 4
       0     4076        M 0x8000070c mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     4079        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4080        M 0x80000710 sub     a5, a3, a5             #; a3  = 47, a5  = 40, (wrb) a5  <-- 7
       0     4082        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 376, (wrb) a5  <-- 0x00100498
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     4083        M                                           #; (f:fpu) ft0  <-- 7.0
       0     4084        M 0x80000720 addi    a2, a2, 8              #; a2  = 376, (wrb) a2  <-- 384
       0     4085        M 0x80000724 addi    a3, a3, 1              #; a3  = 47, (wrb) a3  <-- 48
                         M 0x8000071c fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100498]
       0     4086        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 384, a7  = 800, taken, goto 0x80000704
       0     4087        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 48, a4  = 0xcccccccd
       0     4090        M                                           #; (acc) a5  <-- 0x0037d793
       0     4091        M 0x80000708 srli    a5, a5, 3              #; a5  = 38, (wrb) a5  <-- 4
       0     4092        M 0x8000070c mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     4095        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4096        M 0x80000710 sub     a5, a3, a5             #; a3  = 48, a5  = 40, (wrb) a5  <-- 8
       0     4098        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 384, (wrb) a5  <-- 0x001004a0
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     4099        M                                           #; (f:fpu) ft0  <-- 8.0
       0     4100        M 0x80000720 addi    a2, a2, 8              #; a2  = 384, (wrb) a2  <-- 392
       0     4101        M 0x80000724 addi    a3, a3, 1              #; a3  = 48, (wrb) a3  <-- 49
                         M 0x8000071c fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x001004a0]
       0     4102        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 392, a7  = 800, taken, goto 0x80000704
       0     4103        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 49, a4  = 0xcccccccd
       0     4106        M                                           #; (acc) a5  <-- 0x0037d793
       0     4107        M 0x80000708 srli    a5, a5, 3              #; a5  = 39, (wrb) a5  <-- 4
       0     4108        M 0x8000070c mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     4111        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4112        M 0x80000710 sub     a5, a3, a5             #; a3  = 49, a5  = 40, (wrb) a5  <-- 9
       0     4114        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 392, (wrb) a5  <-- 0x001004a8
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     4115        M                                           #; (f:fpu) ft0  <-- 9.0
       0     4116        M 0x80000720 addi    a2, a2, 8              #; a2  = 392, (wrb) a2  <-- 400
       0     4117        M 0x80000724 addi    a3, a3, 1              #; a3  = 49, (wrb) a3  <-- 50
                         M 0x8000071c fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x001004a8]
       0     4118        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 400, a7  = 800, taken, goto 0x80000704
       0     4119        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 50, a4  = 0xcccccccd
       0     4122        M                                           #; (acc) a5  <-- 0x0037d793
       0     4123        M 0x80000708 srli    a5, a5, 3              #; a5  = 40, (wrb) a5  <-- 5
       0     4124        M 0x8000070c mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4127        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4128        M 0x80000710 sub     a5, a3, a5             #; a3  = 50, a5  = 50, (wrb) a5  <-- 0
       0     4130        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 400, (wrb) a5  <-- 0x001004b0
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     4131        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4132        M 0x80000720 addi    a2, a2, 8              #; a2  = 400, (wrb) a2  <-- 408
       0     4133        M 0x80000724 addi    a3, a3, 1              #; a3  = 50, (wrb) a3  <-- 51
                         M 0x8000071c fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x001004b0]
       0     4134        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 408, a7  = 800, taken, goto 0x80000704
       0     4135        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 51, a4  = 0xcccccccd
       0     4138        M                                           #; (acc) a5  <-- 0x0037d793
       0     4139        M 0x80000708 srli    a5, a5, 3              #; a5  = 40, (wrb) a5  <-- 5
       0     4140        M 0x8000070c mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4143        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4144        M 0x80000710 sub     a5, a3, a5             #; a3  = 51, a5  = 50, (wrb) a5  <-- 1
       0     4146        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 408, (wrb) a5  <-- 0x001004b8
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     4147        M                                           #; (f:fpu) ft0  <-- 1.0
       0     4148        M 0x80000720 addi    a2, a2, 8              #; a2  = 408, (wrb) a2  <-- 416
       0     4149        M 0x80000724 addi    a3, a3, 1              #; a3  = 51, (wrb) a3  <-- 52
                         M 0x8000071c fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x001004b8]
       0     4150        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 416, a7  = 800, taken, goto 0x80000704
       0     4151        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 52, a4  = 0xcccccccd
       0     4154        M                                           #; (acc) a5  <-- 0x0037d793
       0     4155        M 0x80000708 srli    a5, a5, 3              #; a5  = 41, (wrb) a5  <-- 5
       0     4156        M 0x8000070c mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4159        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4160        M 0x80000710 sub     a5, a3, a5             #; a3  = 52, a5  = 50, (wrb) a5  <-- 2
       0     4162        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 416, (wrb) a5  <-- 0x001004c0
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     4163        M                                           #; (f:fpu) ft0  <-- 2.0
       0     4164        M 0x80000720 addi    a2, a2, 8              #; a2  = 416, (wrb) a2  <-- 424
       0     4165        M 0x80000724 addi    a3, a3, 1              #; a3  = 52, (wrb) a3  <-- 53
                         M 0x8000071c fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x001004c0]
       0     4166        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 424, a7  = 800, taken, goto 0x80000704
       0     4167        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 53, a4  = 0xcccccccd
       0     4170        M                                           #; (acc) a5  <-- 0x0037d793
       0     4171        M 0x80000708 srli    a5, a5, 3              #; a5  = 42, (wrb) a5  <-- 5
       0     4172        M 0x8000070c mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4175        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4176        M 0x80000710 sub     a5, a3, a5             #; a3  = 53, a5  = 50, (wrb) a5  <-- 3
       0     4178        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 424, (wrb) a5  <-- 0x001004c8
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     4179        M                                           #; (f:fpu) ft0  <-- 3.0
       0     4180        M 0x80000720 addi    a2, a2, 8              #; a2  = 424, (wrb) a2  <-- 432
       0     4181        M 0x80000724 addi    a3, a3, 1              #; a3  = 53, (wrb) a3  <-- 54
                         M 0x8000071c fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x001004c8]
       0     4182        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 432, a7  = 800, taken, goto 0x80000704
       0     4183        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 54, a4  = 0xcccccccd
       0     4186        M                                           #; (acc) a5  <-- 0x0037d793
       0     4187        M 0x80000708 srli    a5, a5, 3              #; a5  = 43, (wrb) a5  <-- 5
       0     4188        M 0x8000070c mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4191        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4192        M 0x80000710 sub     a5, a3, a5             #; a3  = 54, a5  = 50, (wrb) a5  <-- 4
       0     4194        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 432, (wrb) a5  <-- 0x001004d0
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     4195        M                                           #; (f:fpu) ft0  <-- 4.0
       0     4196        M 0x80000720 addi    a2, a2, 8              #; a2  = 432, (wrb) a2  <-- 440
       0     4197        M 0x80000724 addi    a3, a3, 1              #; a3  = 54, (wrb) a3  <-- 55
                         M 0x8000071c fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x001004d0]
       0     4198        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 440, a7  = 800, taken, goto 0x80000704
       0     4199        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 55, a4  = 0xcccccccd
       0     4202        M                                           #; (acc) a5  <-- 0x0037d793
       0     4203        M 0x80000708 srli    a5, a5, 3              #; a5  = 44, (wrb) a5  <-- 5
       0     4204        M 0x8000070c mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4207        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4208        M 0x80000710 sub     a5, a3, a5             #; a3  = 55, a5  = 50, (wrb) a5  <-- 5
       0     4210        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 440, (wrb) a5  <-- 0x001004d8
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     4211        M                                           #; (f:fpu) ft0  <-- 5.0
       0     4212        M 0x80000720 addi    a2, a2, 8              #; a2  = 440, (wrb) a2  <-- 448
       0     4213        M 0x80000724 addi    a3, a3, 1              #; a3  = 55, (wrb) a3  <-- 56
                         M 0x8000071c fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x001004d8]
       0     4214        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 448, a7  = 800, taken, goto 0x80000704
       0     4215        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 56, a4  = 0xcccccccd
       0     4218        M                                           #; (acc) a5  <-- 0x0037d793
       0     4219        M 0x80000708 srli    a5, a5, 3              #; a5  = 44, (wrb) a5  <-- 5
       0     4220        M 0x8000070c mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4223        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4224        M 0x80000710 sub     a5, a3, a5             #; a3  = 56, a5  = 50, (wrb) a5  <-- 6
       0     4226        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 448, (wrb) a5  <-- 0x001004e0
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     4227        M                                           #; (f:fpu) ft0  <-- 6.0
       0     4228        M 0x80000720 addi    a2, a2, 8              #; a2  = 448, (wrb) a2  <-- 456
       0     4229        M 0x80000724 addi    a3, a3, 1              #; a3  = 56, (wrb) a3  <-- 57
                         M 0x8000071c fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x001004e0]
       0     4230        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 456, a7  = 800, taken, goto 0x80000704
       0     4231        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 57, a4  = 0xcccccccd
       0     4234        M                                           #; (acc) a5  <-- 0x0037d793
       0     4235        M 0x80000708 srli    a5, a5, 3              #; a5  = 45, (wrb) a5  <-- 5
       0     4236        M 0x8000070c mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4239        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4240        M 0x80000710 sub     a5, a3, a5             #; a3  = 57, a5  = 50, (wrb) a5  <-- 7
       0     4242        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 456, (wrb) a5  <-- 0x001004e8
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     4243        M                                           #; (f:fpu) ft0  <-- 7.0
       0     4244        M 0x80000720 addi    a2, a2, 8              #; a2  = 456, (wrb) a2  <-- 464
       0     4245        M 0x80000724 addi    a3, a3, 1              #; a3  = 57, (wrb) a3  <-- 58
                         M 0x8000071c fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x001004e8]
       0     4246        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 464, a7  = 800, taken, goto 0x80000704
       0     4247        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 58, a4  = 0xcccccccd
       0     4250        M                                           #; (acc) a5  <-- 0x0037d793
       0     4251        M 0x80000708 srli    a5, a5, 3              #; a5  = 46, (wrb) a5  <-- 5
       0     4252        M 0x8000070c mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4255        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4256        M 0x80000710 sub     a5, a3, a5             #; a3  = 58, a5  = 50, (wrb) a5  <-- 8
       0     4258        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 464, (wrb) a5  <-- 0x001004f0
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     4259        M                                           #; (f:fpu) ft0  <-- 8.0
       0     4260        M 0x80000720 addi    a2, a2, 8              #; a2  = 464, (wrb) a2  <-- 472
       0     4261        M 0x80000724 addi    a3, a3, 1              #; a3  = 58, (wrb) a3  <-- 59
                         M 0x8000071c fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x001004f0]
       0     4262        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 472, a7  = 800, taken, goto 0x80000704
       0     4263        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 59, a4  = 0xcccccccd
       0     4266        M                                           #; (acc) a5  <-- 0x0037d793
       0     4267        M 0x80000708 srli    a5, a5, 3              #; a5  = 47, (wrb) a5  <-- 5
       0     4268        M 0x8000070c mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4271        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4272        M 0x80000710 sub     a5, a3, a5             #; a3  = 59, a5  = 50, (wrb) a5  <-- 9
       0     4274        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 472, (wrb) a5  <-- 0x001004f8
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     4275        M                                           #; (f:fpu) ft0  <-- 9.0
       0     4276        M 0x80000720 addi    a2, a2, 8              #; a2  = 472, (wrb) a2  <-- 480
       0     4277        M 0x80000724 addi    a3, a3, 1              #; a3  = 59, (wrb) a3  <-- 60
                         M 0x8000071c fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x001004f8]
       0     4278        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 480, a7  = 800, taken, goto 0x80000704
       0     4279        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 60, a4  = 0xcccccccd
       0     4282        M                                           #; (acc) a5  <-- 0x0037d793
       0     4283        M 0x80000708 srli    a5, a5, 3              #; a5  = 48, (wrb) a5  <-- 6
       0     4284        M 0x8000070c mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4287        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4288        M 0x80000710 sub     a5, a3, a5             #; a3  = 60, a5  = 60, (wrb) a5  <-- 0
       0     4290        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 480, (wrb) a5  <-- 0x00100500
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     4291        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4292        M 0x80000720 addi    a2, a2, 8              #; a2  = 480, (wrb) a2  <-- 488
       0     4293        M 0x80000724 addi    a3, a3, 1              #; a3  = 60, (wrb) a3  <-- 61
                         M 0x8000071c fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100500]
       0     4294        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 488, a7  = 800, taken, goto 0x80000704
       0     4295        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 61, a4  = 0xcccccccd
       0     4298        M                                           #; (acc) a5  <-- 0x0037d793
       0     4299        M 0x80000708 srli    a5, a5, 3              #; a5  = 48, (wrb) a5  <-- 6
       0     4300        M 0x8000070c mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4303        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4304        M 0x80000710 sub     a5, a3, a5             #; a3  = 61, a5  = 60, (wrb) a5  <-- 1
       0     4306        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 488, (wrb) a5  <-- 0x00100508
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     4307        M                                           #; (f:fpu) ft0  <-- 1.0
       0     4308        M 0x80000720 addi    a2, a2, 8              #; a2  = 488, (wrb) a2  <-- 496
       0     4309        M 0x80000724 addi    a3, a3, 1              #; a3  = 61, (wrb) a3  <-- 62
                         M 0x8000071c fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100508]
       0     4310        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 496, a7  = 800, taken, goto 0x80000704
       0     4311        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 62, a4  = 0xcccccccd
       0     4314        M                                           #; (acc) a5  <-- 0x0037d793
       0     4315        M 0x80000708 srli    a5, a5, 3              #; a5  = 49, (wrb) a5  <-- 6
       0     4316        M 0x8000070c mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4319        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4320        M 0x80000710 sub     a5, a3, a5             #; a3  = 62, a5  = 60, (wrb) a5  <-- 2
       0     4322        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 496, (wrb) a5  <-- 0x00100510
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     4323        M                                           #; (f:fpu) ft0  <-- 2.0
       0     4324        M 0x80000720 addi    a2, a2, 8              #; a2  = 496, (wrb) a2  <-- 504
       0     4325        M 0x80000724 addi    a3, a3, 1              #; a3  = 62, (wrb) a3  <-- 63
                         M 0x8000071c fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100510]
       0     4326        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 504, a7  = 800, taken, goto 0x80000704
       0     4327        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 63, a4  = 0xcccccccd
       0     4330        M                                           #; (acc) a5  <-- 0x0037d793
       0     4331        M 0x80000708 srli    a5, a5, 3              #; a5  = 50, (wrb) a5  <-- 6
       0     4332        M 0x8000070c mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4335        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4336        M 0x80000710 sub     a5, a3, a5             #; a3  = 63, a5  = 60, (wrb) a5  <-- 3
       0     4338        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 504, (wrb) a5  <-- 0x00100518
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     4339        M                                           #; (f:fpu) ft0  <-- 3.0
       0     4340        M 0x80000720 addi    a2, a2, 8              #; a2  = 504, (wrb) a2  <-- 512
       0     4341        M 0x80000724 addi    a3, a3, 1              #; a3  = 63, (wrb) a3  <-- 64
                         M 0x8000071c fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100518]
       0     4342        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 512, a7  = 800, taken, goto 0x80000704
       0     4343        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 64, a4  = 0xcccccccd
       0     4346        M                                           #; (acc) a5  <-- 0x0037d793
       0     4347        M 0x80000708 srli    a5, a5, 3              #; a5  = 51, (wrb) a5  <-- 6
       0     4348        M 0x8000070c mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4351        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4352        M 0x80000710 sub     a5, a3, a5             #; a3  = 64, a5  = 60, (wrb) a5  <-- 4
       0     4354        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 512, (wrb) a5  <-- 0x00100520
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     4355        M                                           #; (f:fpu) ft0  <-- 4.0
       0     4356        M 0x80000720 addi    a2, a2, 8              #; a2  = 512, (wrb) a2  <-- 520
       0     4357        M 0x80000724 addi    a3, a3, 1              #; a3  = 64, (wrb) a3  <-- 65
                         M 0x8000071c fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100520]
       0     4358        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 520, a7  = 800, taken, goto 0x80000704
       0     4359        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 65, a4  = 0xcccccccd
       0     4362        M                                           #; (acc) a5  <-- 0x0037d793
       0     4363        M 0x80000708 srli    a5, a5, 3              #; a5  = 52, (wrb) a5  <-- 6
       0     4364        M 0x8000070c mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4367        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4368        M 0x80000710 sub     a5, a3, a5             #; a3  = 65, a5  = 60, (wrb) a5  <-- 5
       0     4370        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 520, (wrb) a5  <-- 0x00100528
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     4371        M                                           #; (f:fpu) ft0  <-- 5.0
       0     4372        M 0x80000720 addi    a2, a2, 8              #; a2  = 520, (wrb) a2  <-- 528
       0     4373        M 0x80000724 addi    a3, a3, 1              #; a3  = 65, (wrb) a3  <-- 66
                         M 0x8000071c fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100528]
       0     4374        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 528, a7  = 800, taken, goto 0x80000704
       0     4375        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 66, a4  = 0xcccccccd
       0     4378        M                                           #; (acc) a5  <-- 0x0037d793
       0     4379        M 0x80000708 srli    a5, a5, 3              #; a5  = 52, (wrb) a5  <-- 6
       0     4380        M 0x8000070c mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4383        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4384        M 0x80000710 sub     a5, a3, a5             #; a3  = 66, a5  = 60, (wrb) a5  <-- 6
       0     4386        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 528, (wrb) a5  <-- 0x00100530
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     4387        M                                           #; (f:fpu) ft0  <-- 6.0
       0     4388        M 0x80000720 addi    a2, a2, 8              #; a2  = 528, (wrb) a2  <-- 536
       0     4389        M 0x80000724 addi    a3, a3, 1              #; a3  = 66, (wrb) a3  <-- 67
                         M 0x8000071c fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100530]
       0     4390        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 536, a7  = 800, taken, goto 0x80000704
       0     4391        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 67, a4  = 0xcccccccd
       0     4394        M                                           #; (acc) a5  <-- 0x0037d793
       0     4395        M 0x80000708 srli    a5, a5, 3              #; a5  = 53, (wrb) a5  <-- 6
       0     4396        M 0x8000070c mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4399        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4400        M 0x80000710 sub     a5, a3, a5             #; a3  = 67, a5  = 60, (wrb) a5  <-- 7
       0     4402        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 536, (wrb) a5  <-- 0x00100538
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     4403        M                                           #; (f:fpu) ft0  <-- 7.0
       0     4404        M 0x80000720 addi    a2, a2, 8              #; a2  = 536, (wrb) a2  <-- 544
       0     4405        M 0x80000724 addi    a3, a3, 1              #; a3  = 67, (wrb) a3  <-- 68
                         M 0x8000071c fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100538]
       0     4406        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 544, a7  = 800, taken, goto 0x80000704
       0     4407        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 68, a4  = 0xcccccccd
       0     4410        M                                           #; (acc) a5  <-- 0x0037d793
       0     4411        M 0x80000708 srli    a5, a5, 3              #; a5  = 54, (wrb) a5  <-- 6
       0     4412        M 0x8000070c mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4415        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4416        M 0x80000710 sub     a5, a3, a5             #; a3  = 68, a5  = 60, (wrb) a5  <-- 8
       0     4418        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 544, (wrb) a5  <-- 0x00100540
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     4419        M                                           #; (f:fpu) ft0  <-- 8.0
       0     4420        M 0x80000720 addi    a2, a2, 8              #; a2  = 544, (wrb) a2  <-- 552
       0     4421        M 0x80000724 addi    a3, a3, 1              #; a3  = 68, (wrb) a3  <-- 69
                         M 0x8000071c fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100540]
       0     4422        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 552, a7  = 800, taken, goto 0x80000704
       0     4423        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 69, a4  = 0xcccccccd
       0     4426        M                                           #; (acc) a5  <-- 0x0037d793
       0     4427        M 0x80000708 srli    a5, a5, 3              #; a5  = 55, (wrb) a5  <-- 6
       0     4428        M 0x8000070c mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4431        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4432        M 0x80000710 sub     a5, a3, a5             #; a3  = 69, a5  = 60, (wrb) a5  <-- 9
       0     4434        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 552, (wrb) a5  <-- 0x00100548
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     4435        M                                           #; (f:fpu) ft0  <-- 9.0
       0     4436        M 0x80000720 addi    a2, a2, 8              #; a2  = 552, (wrb) a2  <-- 560
       0     4437        M 0x80000724 addi    a3, a3, 1              #; a3  = 69, (wrb) a3  <-- 70
                         M 0x8000071c fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100548]
       0     4438        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 560, a7  = 800, taken, goto 0x80000704
       0     4439        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 70, a4  = 0xcccccccd
       0     4442        M                                           #; (acc) a5  <-- 0x0037d793
       0     4443        M 0x80000708 srli    a5, a5, 3              #; a5  = 56, (wrb) a5  <-- 7
       0     4444        M 0x8000070c mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4447        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4448        M 0x80000710 sub     a5, a3, a5             #; a3  = 70, a5  = 70, (wrb) a5  <-- 0
       0     4450        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 560, (wrb) a5  <-- 0x00100550
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     4451        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4452        M 0x80000720 addi    a2, a2, 8              #; a2  = 560, (wrb) a2  <-- 568
       0     4453        M 0x80000724 addi    a3, a3, 1              #; a3  = 70, (wrb) a3  <-- 71
                         M 0x8000071c fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100550]
       0     4454        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 568, a7  = 800, taken, goto 0x80000704
       0     4455        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 71, a4  = 0xcccccccd
       0     4458        M                                           #; (acc) a5  <-- 0x0037d793
       0     4459        M 0x80000708 srli    a5, a5, 3              #; a5  = 56, (wrb) a5  <-- 7
       0     4460        M 0x8000070c mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4463        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4464        M 0x80000710 sub     a5, a3, a5             #; a3  = 71, a5  = 70, (wrb) a5  <-- 1
       0     4466        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 568, (wrb) a5  <-- 0x00100558
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     4467        M                                           #; (f:fpu) ft0  <-- 1.0
       0     4468        M 0x80000720 addi    a2, a2, 8              #; a2  = 568, (wrb) a2  <-- 576
       0     4469        M 0x80000724 addi    a3, a3, 1              #; a3  = 71, (wrb) a3  <-- 72
                         M 0x8000071c fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100558]
       0     4470        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 576, a7  = 800, taken, goto 0x80000704
       0     4471        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 72, a4  = 0xcccccccd
       0     4474        M                                           #; (acc) a5  <-- 0x0037d793
       0     4475        M 0x80000708 srli    a5, a5, 3              #; a5  = 57, (wrb) a5  <-- 7
       0     4476        M 0x8000070c mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4479        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4480        M 0x80000710 sub     a5, a3, a5             #; a3  = 72, a5  = 70, (wrb) a5  <-- 2
       0     4482        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 576, (wrb) a5  <-- 0x00100560
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     4483        M                                           #; (f:fpu) ft0  <-- 2.0
       0     4484        M 0x80000720 addi    a2, a2, 8              #; a2  = 576, (wrb) a2  <-- 584
       0     4485        M 0x80000724 addi    a3, a3, 1              #; a3  = 72, (wrb) a3  <-- 73
                         M 0x8000071c fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100560]
       0     4486        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 584, a7  = 800, taken, goto 0x80000704
       0     4487        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 73, a4  = 0xcccccccd
       0     4490        M                                           #; (acc) a5  <-- 0x0037d793
       0     4491        M 0x80000708 srli    a5, a5, 3              #; a5  = 58, (wrb) a5  <-- 7
       0     4492        M 0x8000070c mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4495        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4496        M 0x80000710 sub     a5, a3, a5             #; a3  = 73, a5  = 70, (wrb) a5  <-- 3
       0     4498        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 584, (wrb) a5  <-- 0x00100568
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     4499        M                                           #; (f:fpu) ft0  <-- 3.0
       0     4500        M 0x80000720 addi    a2, a2, 8              #; a2  = 584, (wrb) a2  <-- 592
       0     4501        M 0x80000724 addi    a3, a3, 1              #; a3  = 73, (wrb) a3  <-- 74
                         M 0x8000071c fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100568]
       0     4502        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 592, a7  = 800, taken, goto 0x80000704
       0     4503        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 74, a4  = 0xcccccccd
       0     4506        M                                           #; (acc) a5  <-- 0x0037d793
       0     4507        M 0x80000708 srli    a5, a5, 3              #; a5  = 59, (wrb) a5  <-- 7
       0     4508        M 0x8000070c mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4511        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4512        M 0x80000710 sub     a5, a3, a5             #; a3  = 74, a5  = 70, (wrb) a5  <-- 4
       0     4514        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 592, (wrb) a5  <-- 0x00100570
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     4515        M                                           #; (f:fpu) ft0  <-- 4.0
       0     4516        M 0x80000720 addi    a2, a2, 8              #; a2  = 592, (wrb) a2  <-- 600
       0     4517        M 0x80000724 addi    a3, a3, 1              #; a3  = 74, (wrb) a3  <-- 75
                         M 0x8000071c fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100570]
       0     4518        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 600, a7  = 800, taken, goto 0x80000704
       0     4519        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 75, a4  = 0xcccccccd
       0     4522        M                                           #; (acc) a5  <-- 0x0037d793
       0     4523        M 0x80000708 srli    a5, a5, 3              #; a5  = 60, (wrb) a5  <-- 7
       0     4524        M 0x8000070c mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4527        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4528        M 0x80000710 sub     a5, a3, a5             #; a3  = 75, a5  = 70, (wrb) a5  <-- 5
       0     4530        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 600, (wrb) a5  <-- 0x00100578
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     4531        M                                           #; (f:fpu) ft0  <-- 5.0
       0     4532        M 0x80000720 addi    a2, a2, 8              #; a2  = 600, (wrb) a2  <-- 608
       0     4533        M 0x80000724 addi    a3, a3, 1              #; a3  = 75, (wrb) a3  <-- 76
                         M 0x8000071c fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100578]
       0     4534        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 608, a7  = 800, taken, goto 0x80000704
       0     4535        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 76, a4  = 0xcccccccd
       0     4538        M                                           #; (acc) a5  <-- 0x0037d793
       0     4539        M 0x80000708 srli    a5, a5, 3              #; a5  = 60, (wrb) a5  <-- 7
       0     4540        M 0x8000070c mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4543        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4544        M 0x80000710 sub     a5, a3, a5             #; a3  = 76, a5  = 70, (wrb) a5  <-- 6
       0     4546        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 608, (wrb) a5  <-- 0x00100580
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     4547        M                                           #; (f:fpu) ft0  <-- 6.0
       0     4548        M 0x80000720 addi    a2, a2, 8              #; a2  = 608, (wrb) a2  <-- 616
       0     4549        M 0x80000724 addi    a3, a3, 1              #; a3  = 76, (wrb) a3  <-- 77
                         M 0x8000071c fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100580]
       0     4550        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 616, a7  = 800, taken, goto 0x80000704
       0     4551        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 77, a4  = 0xcccccccd
       0     4554        M                                           #; (acc) a5  <-- 0x0037d793
       0     4555        M 0x80000708 srli    a5, a5, 3              #; a5  = 61, (wrb) a5  <-- 7
       0     4556        M 0x8000070c mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4559        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4560        M 0x80000710 sub     a5, a3, a5             #; a3  = 77, a5  = 70, (wrb) a5  <-- 7
       0     4562        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 616, (wrb) a5  <-- 0x00100588
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     4563        M                                           #; (f:fpu) ft0  <-- 7.0
       0     4564        M 0x80000720 addi    a2, a2, 8              #; a2  = 616, (wrb) a2  <-- 624
       0     4565        M 0x80000724 addi    a3, a3, 1              #; a3  = 77, (wrb) a3  <-- 78
                         M 0x8000071c fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100588]
       0     4566        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 624, a7  = 800, taken, goto 0x80000704
       0     4567        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 78, a4  = 0xcccccccd
       0     4570        M                                           #; (acc) a5  <-- 0x0037d793
       0     4571        M 0x80000708 srli    a5, a5, 3              #; a5  = 62, (wrb) a5  <-- 7
       0     4572        M 0x8000070c mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4575        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4576        M 0x80000710 sub     a5, a3, a5             #; a3  = 78, a5  = 70, (wrb) a5  <-- 8
       0     4578        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 624, (wrb) a5  <-- 0x00100590
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     4579        M                                           #; (f:fpu) ft0  <-- 8.0
       0     4580        M 0x80000720 addi    a2, a2, 8              #; a2  = 624, (wrb) a2  <-- 632
       0     4581        M 0x80000724 addi    a3, a3, 1              #; a3  = 78, (wrb) a3  <-- 79
                         M 0x8000071c fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100590]
       0     4582        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 632, a7  = 800, taken, goto 0x80000704
       0     4583        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 79, a4  = 0xcccccccd
       0     4586        M                                           #; (acc) a5  <-- 0x0037d793
       0     4587        M 0x80000708 srli    a5, a5, 3              #; a5  = 63, (wrb) a5  <-- 7
       0     4588        M 0x8000070c mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4591        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4592        M 0x80000710 sub     a5, a3, a5             #; a3  = 79, a5  = 70, (wrb) a5  <-- 9
       0     4594        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 632, (wrb) a5  <-- 0x00100598
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     4595        M                                           #; (f:fpu) ft0  <-- 9.0
       0     4596        M 0x80000720 addi    a2, a2, 8              #; a2  = 632, (wrb) a2  <-- 640
       0     4597        M 0x80000724 addi    a3, a3, 1              #; a3  = 79, (wrb) a3  <-- 80
                         M 0x8000071c fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100598]
       0     4598        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 640, a7  = 800, taken, goto 0x80000704
       0     4599        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 80, a4  = 0xcccccccd
       0     4602        M                                           #; (acc) a5  <-- 0x0037d793
       0     4603        M 0x80000708 srli    a5, a5, 3              #; a5  = 64, (wrb) a5  <-- 8
       0     4604        M 0x8000070c mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4607        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4608        M 0x80000710 sub     a5, a3, a5             #; a3  = 80, a5  = 80, (wrb) a5  <-- 0
       0     4610        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 640, (wrb) a5  <-- 0x001005a0
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     4611        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4612        M 0x80000720 addi    a2, a2, 8              #; a2  = 640, (wrb) a2  <-- 648
       0     4613        M 0x80000724 addi    a3, a3, 1              #; a3  = 80, (wrb) a3  <-- 81
                         M 0x8000071c fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x001005a0]
       0     4614        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 648, a7  = 800, taken, goto 0x80000704
       0     4615        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 81, a4  = 0xcccccccd
       0     4618        M                                           #; (acc) a5  <-- 0x0037d793
       0     4619        M 0x80000708 srli    a5, a5, 3              #; a5  = 64, (wrb) a5  <-- 8
       0     4620        M 0x8000070c mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4623        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4624        M 0x80000710 sub     a5, a3, a5             #; a3  = 81, a5  = 80, (wrb) a5  <-- 1
       0     4626        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 648, (wrb) a5  <-- 0x001005a8
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     4627        M                                           #; (f:fpu) ft0  <-- 1.0
       0     4628        M 0x80000720 addi    a2, a2, 8              #; a2  = 648, (wrb) a2  <-- 656
       0     4629        M 0x80000724 addi    a3, a3, 1              #; a3  = 81, (wrb) a3  <-- 82
                         M 0x8000071c fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x001005a8]
       0     4630        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 656, a7  = 800, taken, goto 0x80000704
       0     4631        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 82, a4  = 0xcccccccd
       0     4634        M                                           #; (acc) a5  <-- 0x0037d793
       0     4635        M 0x80000708 srli    a5, a5, 3              #; a5  = 65, (wrb) a5  <-- 8
       0     4636        M 0x8000070c mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4639        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4640        M 0x80000710 sub     a5, a3, a5             #; a3  = 82, a5  = 80, (wrb) a5  <-- 2
       0     4642        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 656, (wrb) a5  <-- 0x001005b0
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     4643        M                                           #; (f:fpu) ft0  <-- 2.0
       0     4644        M 0x80000720 addi    a2, a2, 8              #; a2  = 656, (wrb) a2  <-- 664
       0     4645        M 0x80000724 addi    a3, a3, 1              #; a3  = 82, (wrb) a3  <-- 83
                         M 0x8000071c fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x001005b0]
       0     4646        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 664, a7  = 800, taken, goto 0x80000704
       0     4647        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 83, a4  = 0xcccccccd
       0     4650        M                                           #; (acc) a5  <-- 0x0037d793
       0     4651        M 0x80000708 srli    a5, a5, 3              #; a5  = 66, (wrb) a5  <-- 8
       0     4652        M 0x8000070c mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4655        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4656        M 0x80000710 sub     a5, a3, a5             #; a3  = 83, a5  = 80, (wrb) a5  <-- 3
       0     4658        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 664, (wrb) a5  <-- 0x001005b8
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     4659        M                                           #; (f:fpu) ft0  <-- 3.0
       0     4660        M 0x80000720 addi    a2, a2, 8              #; a2  = 664, (wrb) a2  <-- 672
       0     4661        M 0x80000724 addi    a3, a3, 1              #; a3  = 83, (wrb) a3  <-- 84
                         M 0x8000071c fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x001005b8]
       0     4662        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 672, a7  = 800, taken, goto 0x80000704
       0     4663        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 84, a4  = 0xcccccccd
       0     4666        M                                           #; (acc) a5  <-- 0x0037d793
       0     4667        M 0x80000708 srli    a5, a5, 3              #; a5  = 67, (wrb) a5  <-- 8
       0     4668        M 0x8000070c mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4671        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4672        M 0x80000710 sub     a5, a3, a5             #; a3  = 84, a5  = 80, (wrb) a5  <-- 4
       0     4674        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 672, (wrb) a5  <-- 0x001005c0
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     4675        M                                           #; (f:fpu) ft0  <-- 4.0
       0     4676        M 0x80000720 addi    a2, a2, 8              #; a2  = 672, (wrb) a2  <-- 680
       0     4677        M 0x80000724 addi    a3, a3, 1              #; a3  = 84, (wrb) a3  <-- 85
                         M 0x8000071c fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x001005c0]
       0     4678        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 680, a7  = 800, taken, goto 0x80000704
       0     4679        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 85, a4  = 0xcccccccd
       0     4682        M                                           #; (acc) a5  <-- 0x0037d793
       0     4683        M 0x80000708 srli    a5, a5, 3              #; a5  = 68, (wrb) a5  <-- 8
       0     4684        M 0x8000070c mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4687        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4688        M 0x80000710 sub     a5, a3, a5             #; a3  = 85, a5  = 80, (wrb) a5  <-- 5
       0     4690        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 680, (wrb) a5  <-- 0x001005c8
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     4691        M                                           #; (f:fpu) ft0  <-- 5.0
       0     4692        M 0x80000720 addi    a2, a2, 8              #; a2  = 680, (wrb) a2  <-- 688
       0     4693        M 0x80000724 addi    a3, a3, 1              #; a3  = 85, (wrb) a3  <-- 86
                         M 0x8000071c fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x001005c8]
       0     4694        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 688, a7  = 800, taken, goto 0x80000704
       0     4695        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 86, a4  = 0xcccccccd
       0     4698        M                                           #; (acc) a5  <-- 0x0037d793
       0     4699        M 0x80000708 srli    a5, a5, 3              #; a5  = 68, (wrb) a5  <-- 8
       0     4700        M 0x8000070c mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4703        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4704        M 0x80000710 sub     a5, a3, a5             #; a3  = 86, a5  = 80, (wrb) a5  <-- 6
       0     4706        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 688, (wrb) a5  <-- 0x001005d0
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     4707        M                                           #; (f:fpu) ft0  <-- 6.0
       0     4708        M 0x80000720 addi    a2, a2, 8              #; a2  = 688, (wrb) a2  <-- 696
       0     4709        M 0x80000724 addi    a3, a3, 1              #; a3  = 86, (wrb) a3  <-- 87
                         M 0x8000071c fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x001005d0]
       0     4710        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 696, a7  = 800, taken, goto 0x80000704
       0     4711        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 87, a4  = 0xcccccccd
       0     4714        M                                           #; (acc) a5  <-- 0x0037d793
       0     4715        M 0x80000708 srli    a5, a5, 3              #; a5  = 69, (wrb) a5  <-- 8
       0     4716        M 0x8000070c mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4719        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4720        M 0x80000710 sub     a5, a3, a5             #; a3  = 87, a5  = 80, (wrb) a5  <-- 7
       0     4722        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 696, (wrb) a5  <-- 0x001005d8
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     4723        M                                           #; (f:fpu) ft0  <-- 7.0
       0     4724        M 0x80000720 addi    a2, a2, 8              #; a2  = 696, (wrb) a2  <-- 704
       0     4725        M 0x80000724 addi    a3, a3, 1              #; a3  = 87, (wrb) a3  <-- 88
                         M 0x8000071c fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x001005d8]
       0     4726        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 704, a7  = 800, taken, goto 0x80000704
       0     4727        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 88, a4  = 0xcccccccd
       0     4730        M                                           #; (acc) a5  <-- 0x0037d793
       0     4731        M 0x80000708 srli    a5, a5, 3              #; a5  = 70, (wrb) a5  <-- 8
       0     4732        M 0x8000070c mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4735        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4736        M 0x80000710 sub     a5, a3, a5             #; a3  = 88, a5  = 80, (wrb) a5  <-- 8
       0     4738        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 704, (wrb) a5  <-- 0x001005e0
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     4739        M                                           #; (f:fpu) ft0  <-- 8.0
       0     4740        M 0x80000720 addi    a2, a2, 8              #; a2  = 704, (wrb) a2  <-- 712
       0     4741        M 0x80000724 addi    a3, a3, 1              #; a3  = 88, (wrb) a3  <-- 89
                         M 0x8000071c fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x001005e0]
       0     4742        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 712, a7  = 800, taken, goto 0x80000704
       0     4743        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 89, a4  = 0xcccccccd
       0     4746        M                                           #; (acc) a5  <-- 0x0037d793
       0     4747        M 0x80000708 srli    a5, a5, 3              #; a5  = 71, (wrb) a5  <-- 8
       0     4748        M 0x8000070c mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4751        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4752        M 0x80000710 sub     a5, a3, a5             #; a3  = 89, a5  = 80, (wrb) a5  <-- 9
       0     4754        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 712, (wrb) a5  <-- 0x001005e8
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     4755        M                                           #; (f:fpu) ft0  <-- 9.0
       0     4756        M 0x80000720 addi    a2, a2, 8              #; a2  = 712, (wrb) a2  <-- 720
       0     4757        M 0x80000724 addi    a3, a3, 1              #; a3  = 89, (wrb) a3  <-- 90
                         M 0x8000071c fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x001005e8]
       0     4758        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 720, a7  = 800, taken, goto 0x80000704
       0     4759        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 90, a4  = 0xcccccccd
       0     4762        M                                           #; (acc) a5  <-- 0x0037d793
       0     4763        M 0x80000708 srli    a5, a5, 3              #; a5  = 72, (wrb) a5  <-- 9
       0     4764        M 0x8000070c mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4767        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4768        M 0x80000710 sub     a5, a3, a5             #; a3  = 90, a5  = 90, (wrb) a5  <-- 0
       0     4770        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 720, (wrb) a5  <-- 0x001005f0
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     4771        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4772        M 0x80000720 addi    a2, a2, 8              #; a2  = 720, (wrb) a2  <-- 728
       0     4773        M 0x80000724 addi    a3, a3, 1              #; a3  = 90, (wrb) a3  <-- 91
                         M 0x8000071c fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x001005f0]
       0     4774        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 728, a7  = 800, taken, goto 0x80000704
       0     4775        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 91, a4  = 0xcccccccd
       0     4778        M                                           #; (acc) a5  <-- 0x0037d793
       0     4779        M 0x80000708 srli    a5, a5, 3              #; a5  = 72, (wrb) a5  <-- 9
       0     4780        M 0x8000070c mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4783        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4784        M 0x80000710 sub     a5, a3, a5             #; a3  = 91, a5  = 90, (wrb) a5  <-- 1
       0     4786        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 728, (wrb) a5  <-- 0x001005f8
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     4787        M                                           #; (f:fpu) ft0  <-- 1.0
       0     4788        M 0x80000720 addi    a2, a2, 8              #; a2  = 728, (wrb) a2  <-- 736
       0     4789        M 0x80000724 addi    a3, a3, 1              #; a3  = 91, (wrb) a3  <-- 92
                         M 0x8000071c fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x001005f8]
       0     4790        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 736, a7  = 800, taken, goto 0x80000704
       0     4791        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 92, a4  = 0xcccccccd
       0     4794        M                                           #; (acc) a5  <-- 0x0037d793
       0     4795        M 0x80000708 srli    a5, a5, 3              #; a5  = 73, (wrb) a5  <-- 9
       0     4796        M 0x8000070c mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4799        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4800        M 0x80000710 sub     a5, a3, a5             #; a3  = 92, a5  = 90, (wrb) a5  <-- 2
       0     4802        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 736, (wrb) a5  <-- 0x00100600
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     4803        M                                           #; (f:fpu) ft0  <-- 2.0
       0     4804        M 0x80000720 addi    a2, a2, 8              #; a2  = 736, (wrb) a2  <-- 744
       0     4805        M 0x80000724 addi    a3, a3, 1              #; a3  = 92, (wrb) a3  <-- 93
                         M 0x8000071c fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100600]
       0     4806        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 744, a7  = 800, taken, goto 0x80000704
       0     4807        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 93, a4  = 0xcccccccd
       0     4810        M                                           #; (acc) a5  <-- 0x0037d793
       0     4811        M 0x80000708 srli    a5, a5, 3              #; a5  = 74, (wrb) a5  <-- 9
       0     4812        M 0x8000070c mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4815        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4816        M 0x80000710 sub     a5, a3, a5             #; a3  = 93, a5  = 90, (wrb) a5  <-- 3
       0     4818        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 744, (wrb) a5  <-- 0x00100608
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     4819        M                                           #; (f:fpu) ft0  <-- 3.0
       0     4820        M 0x80000720 addi    a2, a2, 8              #; a2  = 744, (wrb) a2  <-- 752
       0     4821        M 0x80000724 addi    a3, a3, 1              #; a3  = 93, (wrb) a3  <-- 94
                         M 0x8000071c fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100608]
       0     4822        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 752, a7  = 800, taken, goto 0x80000704
       0     4823        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 94, a4  = 0xcccccccd
       0     4826        M                                           #; (acc) a5  <-- 0x0037d793
       0     4827        M 0x80000708 srli    a5, a5, 3              #; a5  = 75, (wrb) a5  <-- 9
       0     4828        M 0x8000070c mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4831        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4832        M 0x80000710 sub     a5, a3, a5             #; a3  = 94, a5  = 90, (wrb) a5  <-- 4
       0     4834        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 752, (wrb) a5  <-- 0x00100610
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     4835        M                                           #; (f:fpu) ft0  <-- 4.0
       0     4836        M 0x80000720 addi    a2, a2, 8              #; a2  = 752, (wrb) a2  <-- 760
       0     4837        M 0x80000724 addi    a3, a3, 1              #; a3  = 94, (wrb) a3  <-- 95
                         M 0x8000071c fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100610]
       0     4838        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 760, a7  = 800, taken, goto 0x80000704
       0     4839        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 95, a4  = 0xcccccccd
       0     4842        M                                           #; (acc) a5  <-- 0x0037d793
       0     4843        M 0x80000708 srli    a5, a5, 3              #; a5  = 76, (wrb) a5  <-- 9
       0     4844        M 0x8000070c mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4847        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4848        M 0x80000710 sub     a5, a3, a5             #; a3  = 95, a5  = 90, (wrb) a5  <-- 5
       0     4850        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 760, (wrb) a5  <-- 0x00100618
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     4851        M                                           #; (f:fpu) ft0  <-- 5.0
       0     4852        M 0x80000720 addi    a2, a2, 8              #; a2  = 760, (wrb) a2  <-- 768
       0     4853        M 0x80000724 addi    a3, a3, 1              #; a3  = 95, (wrb) a3  <-- 96
                         M 0x8000071c fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100618]
       0     4854        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 768, a7  = 800, taken, goto 0x80000704
       0     4855        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 96, a4  = 0xcccccccd
       0     4858        M                                           #; (acc) a5  <-- 0x0037d793
       0     4859        M 0x80000708 srli    a5, a5, 3              #; a5  = 76, (wrb) a5  <-- 9
       0     4860        M 0x8000070c mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4863        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4864        M 0x80000710 sub     a5, a3, a5             #; a3  = 96, a5  = 90, (wrb) a5  <-- 6
       0     4866        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 768, (wrb) a5  <-- 0x00100620
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     4867        M                                           #; (f:fpu) ft0  <-- 6.0
       0     4868        M 0x80000720 addi    a2, a2, 8              #; a2  = 768, (wrb) a2  <-- 776
       0     4869        M 0x80000724 addi    a3, a3, 1              #; a3  = 96, (wrb) a3  <-- 97
                         M 0x8000071c fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100620]
       0     4870        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 776, a7  = 800, taken, goto 0x80000704
       0     4871        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 97, a4  = 0xcccccccd
       0     4874        M                                           #; (acc) a5  <-- 0x0037d793
       0     4875        M 0x80000708 srli    a5, a5, 3              #; a5  = 77, (wrb) a5  <-- 9
       0     4876        M 0x8000070c mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4879        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4880        M 0x80000710 sub     a5, a3, a5             #; a3  = 97, a5  = 90, (wrb) a5  <-- 7
       0     4882        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 776, (wrb) a5  <-- 0x00100628
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     4883        M                                           #; (f:fpu) ft0  <-- 7.0
       0     4884        M 0x80000720 addi    a2, a2, 8              #; a2  = 776, (wrb) a2  <-- 784
       0     4885        M 0x80000724 addi    a3, a3, 1              #; a3  = 97, (wrb) a3  <-- 98
                         M 0x8000071c fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100628]
       0     4886        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 784, a7  = 800, taken, goto 0x80000704
       0     4887        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 98, a4  = 0xcccccccd
       0     4890        M                                           #; (acc) a5  <-- 0x0037d793
       0     4891        M 0x80000708 srli    a5, a5, 3              #; a5  = 78, (wrb) a5  <-- 9
       0     4892        M 0x8000070c mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4895        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4896        M 0x80000710 sub     a5, a3, a5             #; a3  = 98, a5  = 90, (wrb) a5  <-- 8
       0     4898        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 784, (wrb) a5  <-- 0x00100630
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     4899        M                                           #; (f:fpu) ft0  <-- 8.0
       0     4900        M 0x80000720 addi    a2, a2, 8              #; a2  = 784, (wrb) a2  <-- 792
       0     4901        M 0x80000724 addi    a3, a3, 1              #; a3  = 98, (wrb) a3  <-- 99
                         M 0x8000071c fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100630]
       0     4902        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 792, a7  = 800, taken, goto 0x80000704
       0     4903        M 0x80000704 mulhu   a5, a3, a4             #; a3  = 99, a4  = 0xcccccccd
       0     4906        M                                           #; (acc) a5  <-- 0x0037d793
       0     4907        M 0x80000708 srli    a5, a5, 3              #; a5  = 79, (wrb) a5  <-- 9
       0     4908        M 0x8000070c mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4911        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4912        M 0x80000710 sub     a5, a3, a5             #; a3  = 99, a5  = 90, (wrb) a5  <-- 9
       0     4914        M 0x80000718 add     a5, a1, a2             #; a1  = 0x00100320, a2  = 792, (wrb) a5  <-- 0x00100638
                         M 0x80000714 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     4915        M                                           #; (f:fpu) ft0  <-- 9.0
       0     4916        M 0x80000720 addi    a2, a2, 8              #; a2  = 792, (wrb) a2  <-- 800
       0     4917        M 0x80000724 addi    a3, a3, 1              #; a3  = 99, (wrb) a3  <-- 100
                         M 0x8000071c fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100638]
       0     4918        M 0x80000728 bne     a2, a7, pc - 36        #; a2  = 800, a7  = 800, not taken
       0     4919        M 0x8000072c csrr    s0, mcycle             #; mcycle = 4918, (wrb) s0  <-- 4918
       0     4931        M 0x80000730 li      a2, 100                #; (wrb) a2  <-- 100
       0     4932        M 0x80000734 auipc   ra, 0x2                #; (wrb) ra  <-- 0x80002734
       0     4933        M 0x80000738 jalr    ra, ra, -204           #; ra  = 0x80002734, (wrb) ra  <-- 0x8000073c, goto 0x80002668
       0     4954        M 0x80002668 li      a3, 1                  #; (wrb) a3  <-- 1
       0     4955        M 0x8000266c blt     a2, a3, pc + 32        #; a2  = 100, a3  = 1, not taken
       0     4966        M 0x80002670 addi    a4, a2, -1             #; a2  = 100, (wrb) a4  <-- 99
       0     4967        M 0x80002674 li      a5, 15                 #; (wrb) a5  <-- 15
       0     4968        M 0x80002678 andi    a3, a2, 15             #; a2  = 100, (wrb) a3  <-- 4
       0     4969        M 0x8000267c bgeu    a4, a5, pc + 24        #; a4  = 99, a5  = 15, taken, goto 0x80002694
       0     4989        M 0x80002694 andi    a6, a2, -16            #; a2  = 100, (wrb) a6  <-- 96
       0     4990        M 0x80002698 sub     a4, zero, a6           #; a6  = 96, (wrb) a4  <-- -96
       0     4991        M 0x8000269c addi    a5, a0, 64             #; a0  = 0x00100000, (wrb) a5  <-- 0x00100040
       0     5001        M 0x800026a0 addi    a2, a1, 64             #; a1  = 0x00100320, (wrb) a2  <-- 0x00100360
       0     5003        M 0x800026a4 fcvt.d.w fa0, zero             #; ac1  = 0
       0     5004        M                                           #; (f:fpu) fa0  <-- 0.0
       0     5005        M 0x800026a8 fld     ft0, 4032(a5)          #; ft0  <~~ Doub[0x00100000]
       0     5006        M 0x800026ac fld     ft1, 4032(a2)          #; ft1  <~~ Doub[0x00100320], (f:lsu) ft0  <-- 0.0
       0     5007        M                                           #; (f:lsu) ft1  <-- 0.0
       0     5015        M 0x800026b0 fld     ft2, 4040(a5)          #; ft2  <~~ Doub[0x00100008]
       0     5016        M 0x800026b4 fld     ft3, 4040(a2)          #; ft3  <~~ Doub[0x00100328], (f:lsu) ft2  <-- 1.0
       0     5017        M 0x800026b8 fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x00100010], (f:lsu) ft3  <-- 1.0
       0     5018        M 0x800026bc fld     ft5, 4048(a2)          #; ft5  <~~ Doub[0x00100330], (f:lsu) ft4  <-- 2.0
       0     5019        M                                           #; (f:lsu) ft5  <-- 2.0
       0     5027        M 0x800026c0 fld     ft6, 4056(a5)          #; ft6  <~~ Doub[0x00100018]
       0     5028        M 0x800026c4 fld     ft7, 4056(a2)          #; ft7  <~~ Doub[0x00100338], (f:lsu) ft6  <-- 3.0
       0     5029        M 0x800026c8 fmadd.d ft0, ft1, ft0, fa0     #; ft1  = 0.0, ft0  = 0.0, fa0  = 0.0, (f:lsu) ft7  <-- 3.0
       0     5032        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5033        M 0x800026cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 1.0, ft2  = 1.0, ft0  = 0.0
       0     5036        M                                           #; (f:fpu) ft0  <-- 1.0
       0     5039        M 0x800026d0 fmadd.d ft0, ft5, ft4, ft0     #; ft5  = 2.0, ft4  = 2.0, ft0  = 1.0
       0     5042        M                                           #; (f:fpu) ft0  <-- 5.0
       0     5043        M 0x800026d4 fmadd.d ft0, ft7, ft6, ft0     #; ft7  = 3.0, ft6  = 3.0, ft0  = 5.0
       0     5044        M 0x800026d8 fld     ft1, 4064(a5)          #; ft1  <~~ Doub[0x00100020]
       0     5045        M 0x800026dc fld     ft2, 4064(a2)          #; ft2  <~~ Doub[0x00100340], (f:lsu) ft1  <-- 4.0
       0     5046        M                                           #; (f:fpu) ft0  <-- 14.0
       0     5047        M                                           #; (f:lsu) ft2  <-- 4.0
       0     5051        M 0x800026e0 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x00100028]
       0     5052        M 0x800026e4 fld     ft4, 4072(a2)          #; ft4  <~~ Doub[0x00100348], (f:lsu) ft3  <-- 5.0
       0     5053        M 0x800026e8 fld     ft5, 4080(a5)          #; ft5  <~~ Doub[0x00100030], (f:lsu) ft4  <-- 5.0
       0     5054        M 0x800026ec fld     ft6, 4080(a2)          #; ft6  <~~ Doub[0x00100350], (f:lsu) ft5  <-- 6.0
       0     5055        M                                           #; (f:lsu) ft6  <-- 6.0
       0     5063        M 0x800026f0 fld     ft7, 4088(a5)          #; ft7  <~~ Doub[0x00100038]
       0     5064        M 0x800026f4 fld     fa0, 4088(a2)          #; fa0  <~~ Doub[0x00100358], (f:lsu) ft7  <-- 7.0
       0     5065        M 0x800026f8 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 4.0, ft1  = 4.0, ft0  = 14.0, (f:lsu) fa0  <-- 7.0
       0     5068        M                                           #; (f:fpu) ft0  <-- 30.0
       0     5069        M 0x800026fc fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 5.0, ft3  = 5.0, ft0  = 30.0
       0     5072        M                                           #; (f:fpu) ft0  <-- 55.0
       0     5075        M 0x80002700 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 6.0, ft5  = 6.0, ft0  = 55.0
       0     5078        M                                           #; (f:fpu) ft0  <-- 91.0
       0     5079        M 0x80002704 fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 7.0, ft7  = 7.0, ft0  = 91.0
       0     5080        M 0x80002708 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100040]
       0     5081        M 0x8000270c fld     ft2, 0(a2)             #; ft2  <~~ Doub[0x00100360], (f:lsu) ft1  <-- 8.0
       0     5082        M                                           #; (f:fpu) ft0  <-- 140.0
       0     5083        M                                           #; (f:lsu) ft2  <-- 8.0
       0     5087        M 0x80002710 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x00100048]
       0     5088        M 0x80002714 fld     ft4, 8(a2)             #; ft4  <~~ Doub[0x00100368], (f:lsu) ft3  <-- 9.0
       0     5089        M 0x80002718 fld     ft5, 16(a5)            #; ft5  <~~ Doub[0x00100050], (f:lsu) ft4  <-- 9.0
       0     5090        M 0x8000271c fld     ft6, 16(a2)            #; ft6  <~~ Doub[0x00100370], (f:lsu) ft5  <-- 0.0
       0     5091        M                                           #; (f:lsu) ft6  <-- 0.0
       0     5099        M 0x80002720 fld     ft7, 24(a5)            #; ft7  <~~ Doub[0x00100058]
       0     5100        M 0x80002724 fld     fa0, 24(a2)            #; fa0  <~~ Doub[0x00100378], (f:lsu) ft7  <-- 1.0
       0     5101        M 0x80002728 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 8.0, ft1  = 8.0, ft0  = 140.0, (f:lsu) fa0  <-- 1.0
       0     5104        M                                           #; (f:fpu) ft0  <-- 204.0
       0     5105        M 0x8000272c fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 9.0, ft3  = 9.0, ft0  = 204.0
       0     5108        M                                           #; (f:fpu) ft0  <-- 285.0
       0     5111        M 0x80002730 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 0.0, ft5  = 0.0, ft0  = 285.0
       0     5114        M                                           #; (f:fpu) ft0  <-- 285.0
       0     5115        M 0x80002734 fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 1.0, ft7  = 1.0, ft0  = 285.0
       0     5116        M 0x80002738 fld     ft1, 32(a5)            #; ft1  <~~ Doub[0x00100060]
       0     5117        M 0x8000273c fld     ft2, 32(a2)            #; ft2  <~~ Doub[0x00100380], (f:lsu) ft1  <-- 2.0
       0     5118        M                                           #; (f:fpu) ft0  <-- 286.0
       0     5119        M                                           #; (f:lsu) ft2  <-- 2.0
       0     5123        M 0x80002740 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x00100068]
       0     5124        M 0x80002744 fld     ft4, 40(a2)            #; ft4  <~~ Doub[0x00100388], (f:lsu) ft3  <-- 3.0
       0     5125        M 0x80002748 fld     ft5, 48(a5)            #; ft5  <~~ Doub[0x00100070], (f:lsu) ft4  <-- 3.0
       0     5126        M 0x8000274c fld     ft6, 48(a2)            #; ft6  <~~ Doub[0x00100390], (f:lsu) ft5  <-- 4.0
       0     5127        M                                           #; (f:lsu) ft6  <-- 4.0
       0     5135        M 0x80002750 fld     ft7, 56(a5)            #; ft7  <~~ Doub[0x00100078]
       0     5136        M 0x80002754 fld     fa0, 56(a2)            #; fa0  <~~ Doub[0x00100398], (f:lsu) ft7  <-- 5.0
       0     5137        M 0x80002758 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 2.0, ft1  = 2.0, ft0  = 286.0, (f:lsu) fa0  <-- 5.0
       0     5140        M                                           #; (f:fpu) ft0  <-- 290.0
       0     5141        M 0x8000275c fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 3.0, ft3  = 3.0, ft0  = 290.0
       0     5144        M                                           #; (f:fpu) ft0  <-- 299.0
       0     5147        M 0x80002768 addi    a4, a4, 16             #; a4  = -96, (wrb) a4  <-- -80
                         M 0x80002760 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 4.0, ft5  = 4.0, ft0  = 299.0
       0     5148        M 0x8000276c addi    a5, a5, 128            #; a5  = 0x00100040, (wrb) a5  <-- 0x001000c0
       0     5150        M                                           #; (f:fpu) ft0  <-- 315.0
       0     5151        M 0x80002764 fmadd.d fa0, fa0, ft7, ft0     #; fa0  = 5.0, ft7  = 5.0, ft0  = 315.0
       0     5154        M                                           #; (f:fpu) fa0  <-- 340.0
       0     5157        M 0x80002770 addi    a2, a2, 128            #; a2  = 0x00100360, (wrb) a2  <-- 0x001003e0
       0     5158        M 0x80002774 bnez    a4, pc - 204           #; a4  = -80, taken, goto 0x800026a8
       0     5162        M 0x800026a8 fld     ft0, 4032(a5)          #; ft0  <~~ Doub[0x00100080]
       0     5163        M 0x800026ac fld     ft1, 4032(a2)          #; ft1  <~~ Doub[0x001003a0], (f:lsu) ft0  <-- 6.0
       0     5164        M                                           #; (f:lsu) ft1  <-- 6.0
       0     5165        M 0x800026b0 fld     ft2, 4040(a5)          #; ft2  <~~ Doub[0x00100088]
       0     5166        M 0x800026b4 fld     ft3, 4040(a2)          #; ft3  <~~ Doub[0x001003a8], (f:lsu) ft2  <-- 7.0
       0     5167        M 0x800026b8 fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x00100090], (f:lsu) ft3  <-- 7.0
       0     5168        M 0x800026bc fld     ft5, 4048(a2)          #; ft5  <~~ Doub[0x001003b0], (f:lsu) ft4  <-- 8.0
       0     5169        M 0x800026c0 fld     ft6, 4056(a5)          #; ft6  <~~ Doub[0x00100098], (f:lsu) ft5  <-- 8.0
       0     5170        M 0x800026c4 fld     ft7, 4056(a2)          #; ft7  <~~ Doub[0x001003b8], (f:lsu) ft6  <-- 9.0
       0     5171        M 0x800026c8 fmadd.d ft0, ft1, ft0, fa0     #; ft1  = 6.0, ft0  = 6.0, fa0  = 340.0, (f:lsu) ft7  <-- 9.0
       0     5174        M                                           #; (f:fpu) ft0  <-- 376.0
       0     5175        M 0x800026cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 7.0, ft2  = 7.0, ft0  = 376.0
       0     5178        M                                           #; (f:fpu) ft0  <-- 425.0
       0     5179        M 0x800026d0 fmadd.d ft0, ft5, ft4, ft0     #; ft5  = 8.0, ft4  = 8.0, ft0  = 425.0
       0     5182        M                                           #; (f:fpu) ft0  <-- 489.0
       0     5183        M 0x800026d4 fmadd.d ft0, ft7, ft6, ft0     #; ft7  = 9.0, ft6  = 9.0, ft0  = 489.0
       0     5184        M 0x800026d8 fld     ft1, 4064(a5)          #; ft1  <~~ Doub[0x001000a0]
       0     5185        M 0x800026dc fld     ft2, 4064(a2)          #; ft2  <~~ Doub[0x001003c0], (f:lsu) ft1  <-- 0.0
       0     5186        M 0x800026e0 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x001000a8], (f:fpu) ft0  <-- 570.0
       0     5187        M 0x800026e4 fld     ft4, 4072(a2)          #; ft4  <~~ Doub[0x001003c8], (f:lsu) ft2  <-- 0.0
       0     5188        M 0x800026e8 fld     ft5, 4080(a5)          #; ft5  <~~ Doub[0x001000b0], (f:lsu) ft3  <-- 1.0
       0     5189        M 0x800026ec fld     ft6, 4080(a2)          #; ft6  <~~ Doub[0x001003d0], (f:lsu) ft4  <-- 1.0
       0     5190        M 0x800026f0 fld     ft7, 4088(a5)          #; ft7  <~~ Doub[0x001000b8], (f:lsu) ft5  <-- 2.0
       0     5191        M 0x800026f4 fld     fa0, 4088(a2)          #; fa0  <~~ Doub[0x001003d8], (f:lsu) ft6  <-- 2.0
       0     5192        M 0x800026f8 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 0.0, ft1  = 0.0, ft0  = 570.0, (f:lsu) ft7  <-- 3.0
       0     5193        M                                           #; (f:lsu) fa0  <-- 3.0
       0     5195        M                                           #; (f:fpu) ft0  <-- 570.0
       0     5196        M 0x800026fc fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 1.0, ft3  = 1.0, ft0  = 570.0
       0     5199        M                                           #; (f:fpu) ft0  <-- 571.0
       0     5200        M 0x80002700 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 2.0, ft5  = 2.0, ft0  = 571.0
       0     5203        M                                           #; (f:fpu) ft0  <-- 575.0
       0     5204        M 0x80002704 fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 3.0, ft7  = 3.0, ft0  = 575.0
       0     5205        M 0x80002708 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001000c0]
       0     5206        M 0x8000270c fld     ft2, 0(a2)             #; ft2  <~~ Doub[0x001003e0], (f:lsu) ft1  <-- 4.0
       0     5207        M 0x80002710 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x001000c8], (f:fpu) ft0  <-- 584.0
       0     5208        M 0x80002714 fld     ft4, 8(a2)             #; ft4  <~~ Doub[0x001003e8], (f:lsu) ft2  <-- 4.0
       0     5209        M 0x80002718 fld     ft5, 16(a5)            #; ft5  <~~ Doub[0x001000d0], (f:lsu) ft3  <-- 5.0
       0     5210        M 0x8000271c fld     ft6, 16(a2)            #; ft6  <~~ Doub[0x001003f0], (f:lsu) ft4  <-- 5.0
       0     5211        M 0x80002720 fld     ft7, 24(a5)            #; ft7  <~~ Doub[0x001000d8], (f:lsu) ft5  <-- 6.0
       0     5212        M 0x80002724 fld     fa0, 24(a2)            #; fa0  <~~ Doub[0x001003f8], (f:lsu) ft6  <-- 6.0
       0     5213        M 0x80002768 addi    a4, a4, 16             #; a4  = -80, (wrb) a4  <-- -64
                         M 0x80002728 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 4.0, ft1  = 4.0, ft0  = 584.0, (f:lsu) ft7  <-- 7.0
       0     5214        M 0x8000276c addi    a5, a5, 128            #; a5  = 0x001000c0, (wrb) a5  <-- 0x00100140
                         M                                           #; (f:lsu) fa0  <-- 7.0
       0     5215        M 0x80002770 addi    a2, a2, 128            #; a2  = 0x001003e0, (wrb) a2  <-- 0x00100460
       0     5216        M 0x80002774 bnez    a4, pc - 204           #; a4  = -64, taken, goto 0x800026a8
                         M                                           #; (f:fpu) ft0  <-- 600.0
       0     5217        M 0x8000272c fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 5.0, ft3  = 5.0, ft0  = 600.0
       0     5220        M                                           #; (f:fpu) ft0  <-- 625.0
       0     5221        M 0x80002730 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 6.0, ft5  = 6.0, ft0  = 625.0
       0     5224        M                                           #; (f:fpu) ft0  <-- 661.0
       0     5225        M 0x80002734 fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 7.0, ft7  = 7.0, ft0  = 661.0
       0     5226        M 0x80002738 fld     ft1, 32(a5)            #; ft1  <~~ Doub[0x001000e0]
       0     5227        M 0x8000273c fld     ft2, 32(a2)            #; ft2  <~~ Doub[0x00100400], (f:lsu) ft1  <-- 8.0
       0     5228        M 0x80002740 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x001000e8], (f:fpu) ft0  <-- 710.0
       0     5229        M 0x80002744 fld     ft4, 40(a2)            #; ft4  <~~ Doub[0x00100408], (f:lsu) ft2  <-- 8.0
       0     5230        M 0x80002748 fld     ft5, 48(a5)            #; ft5  <~~ Doub[0x001000f0], (f:lsu) ft3  <-- 9.0
       0     5231        M 0x8000274c fld     ft6, 48(a2)            #; ft6  <~~ Doub[0x00100410], (f:lsu) ft4  <-- 9.0
       0     5232        M 0x80002750 fld     ft7, 56(a5)            #; ft7  <~~ Doub[0x001000f8], (f:lsu) ft5  <-- 0.0
       0     5233        M 0x80002754 fld     fa0, 56(a2)            #; fa0  <~~ Doub[0x00100418], (f:lsu) ft6  <-- 0.0
       0     5234        M 0x80002758 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 8.0, ft1  = 8.0, ft0  = 710.0, (f:lsu) ft7  <-- 1.0
       0     5235        M                                           #; (f:lsu) fa0  <-- 1.0
       0     5237        M                                           #; (f:fpu) ft0  <-- 774.0
       0     5238        M 0x8000275c fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 9.0, ft3  = 9.0, ft0  = 774.0
       0     5241        M                                           #; (f:fpu) ft0  <-- 855.0
       0     5242        M 0x80002760 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 0.0, ft5  = 0.0, ft0  = 855.0
       0     5245        M                                           #; (f:fpu) ft0  <-- 855.0
       0     5246        M 0x80002764 fmadd.d fa0, fa0, ft7, ft0     #; fa0  = 1.0, ft7  = 1.0, ft0  = 855.0
       0     5247        M 0x800026a8 fld     ft0, 4032(a5)          #; ft0  <~~ Doub[0x00100100]
       0     5248        M 0x800026ac fld     ft1, 4032(a2)          #; ft1  <~~ Doub[0x00100420], (f:lsu) ft0  <-- 2.0
       0     5249        M 0x800026b0 fld     ft2, 4040(a5)          #; ft2  <~~ Doub[0x00100108], (f:fpu) fa0  <-- 856.0
       0     5250        M 0x800026b4 fld     ft3, 4040(a2)          #; ft3  <~~ Doub[0x00100428], (f:lsu) ft1  <-- 2.0
       0     5251        M 0x800026b8 fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x00100110], (f:lsu) ft2  <-- 3.0
       0     5252        M 0x800026bc fld     ft5, 4048(a2)          #; ft5  <~~ Doub[0x00100430], (f:lsu) ft3  <-- 3.0
       0     5253        M 0x800026c0 fld     ft6, 4056(a5)          #; ft6  <~~ Doub[0x00100118], (f:lsu) ft4  <-- 4.0
       0     5254        M 0x800026c4 fld     ft7, 4056(a2)          #; ft7  <~~ Doub[0x00100438], (f:lsu) ft5  <-- 4.0
       0     5255        M 0x800026c8 fmadd.d ft0, ft1, ft0, fa0     #; ft1  = 2.0, ft0  = 2.0, fa0  = 856.0, (f:lsu) ft6  <-- 5.0
       0     5256        M                                           #; (f:lsu) ft7  <-- 5.0
       0     5258        M                                           #; (f:fpu) ft0  <-- 860.0
       0     5259        M 0x800026cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 3.0, ft2  = 3.0, ft0  = 860.0
       0     5262        M                                           #; (f:fpu) ft0  <-- 869.0
       0     5263        M 0x800026d0 fmadd.d ft0, ft5, ft4, ft0     #; ft5  = 4.0, ft4  = 4.0, ft0  = 869.0
       0     5266        M                                           #; (f:fpu) ft0  <-- 885.0
       0     5267        M 0x800026d4 fmadd.d ft0, ft7, ft6, ft0     #; ft7  = 5.0, ft6  = 5.0, ft0  = 885.0
       0     5268        M 0x800026d8 fld     ft1, 4064(a5)          #; ft1  <~~ Doub[0x00100120]
       0     5269        M 0x800026dc fld     ft2, 4064(a2)          #; ft2  <~~ Doub[0x00100440], (f:lsu) ft1  <-- 6.0
       0     5270        M 0x800026e0 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x00100128], (f:fpu) ft0  <-- 910.0
       0     5271        M 0x800026e4 fld     ft4, 4072(a2)          #; ft4  <~~ Doub[0x00100448], (f:lsu) ft2  <-- 6.0
       0     5272        M 0x800026e8 fld     ft5, 4080(a5)          #; ft5  <~~ Doub[0x00100130], (f:lsu) ft3  <-- 7.0
       0     5273        M 0x800026ec fld     ft6, 4080(a2)          #; ft6  <~~ Doub[0x00100450], (f:lsu) ft4  <-- 7.0
       0     5274        M 0x800026f0 fld     ft7, 4088(a5)          #; ft7  <~~ Doub[0x00100138], (f:lsu) ft5  <-- 8.0
       0     5275        M 0x800026f4 fld     fa0, 4088(a2)          #; fa0  <~~ Doub[0x00100458], (f:lsu) ft6  <-- 8.0
       0     5276        M 0x800026f8 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 6.0, ft1  = 6.0, ft0  = 910.0, (f:lsu) ft7  <-- 9.0
       0     5277        M                                           #; (f:lsu) fa0  <-- 9.0
       0     5279        M                                           #; (f:fpu) ft0  <-- 946.0
       0     5280        M 0x800026fc fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 7.0, ft3  = 7.0, ft0  = 946.0
       0     5283        M                                           #; (f:fpu) ft0  <-- 995.0
       0     5284        M 0x80002700 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 8.0, ft5  = 8.0, ft0  = 995.0
       0     5287        M                                           #; (f:fpu) ft0  <-- 1059.0
       0     5288        M 0x80002704 fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 9.0, ft7  = 9.0, ft0  = 1059.0
       0     5289        M 0x80002708 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100140]
       0     5290        M 0x8000270c fld     ft2, 0(a2)             #; ft2  <~~ Doub[0x00100460], (f:lsu) ft1  <-- 0.0
       0     5291        M 0x80002710 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x00100148], (f:fpu) ft0  <-- 1140.0
       0     5292        M 0x80002714 fld     ft4, 8(a2)             #; ft4  <~~ Doub[0x00100468], (f:lsu) ft2  <-- 0.0
       0     5293        M 0x80002718 fld     ft5, 16(a5)            #; ft5  <~~ Doub[0x00100150], (f:lsu) ft3  <-- 1.0
       0     5294        M 0x8000271c fld     ft6, 16(a2)            #; ft6  <~~ Doub[0x00100470], (f:lsu) ft4  <-- 1.0
       0     5295        M 0x80002720 fld     ft7, 24(a5)            #; ft7  <~~ Doub[0x00100158], (f:lsu) ft5  <-- 2.0
       0     5296        M 0x80002724 fld     fa0, 24(a2)            #; fa0  <~~ Doub[0x00100478], (f:lsu) ft6  <-- 2.0
       0     5297        M 0x80002768 addi    a4, a4, 16             #; a4  = -64, (wrb) a4  <-- -48
                         M 0x80002728 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 0.0, ft1  = 0.0, ft0  = 1140.0, (f:lsu) ft7  <-- 3.0
       0     5298        M 0x8000276c addi    a5, a5, 128            #; a5  = 0x00100140, (wrb) a5  <-- 0x001001c0
                         M                                           #; (f:lsu) fa0  <-- 3.0
       0     5299        M 0x80002770 addi    a2, a2, 128            #; a2  = 0x00100460, (wrb) a2  <-- 0x001004e0
       0     5300        M 0x80002774 bnez    a4, pc - 204           #; a4  = -48, taken, goto 0x800026a8
                         M                                           #; (f:fpu) ft0  <-- 1140.0
       0     5301        M 0x8000272c fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 1.0, ft3  = 1.0, ft0  = 1140.0
       0     5304        M                                           #; (f:fpu) ft0  <-- 1141.0
       0     5305        M 0x80002730 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 2.0, ft5  = 2.0, ft0  = 1141.0
       0     5308        M                                           #; (f:fpu) ft0  <-- 1145.0
       0     5309        M 0x80002734 fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 3.0, ft7  = 3.0, ft0  = 1145.0
       0     5310        M 0x80002738 fld     ft1, 32(a5)            #; ft1  <~~ Doub[0x00100160]
       0     5311        M 0x8000273c fld     ft2, 32(a2)            #; ft2  <~~ Doub[0x00100480], (f:lsu) ft1  <-- 4.0
       0     5312        M 0x80002740 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x00100168], (f:fpu) ft0  <-- 1154.0
       0     5313        M 0x80002744 fld     ft4, 40(a2)            #; ft4  <~~ Doub[0x00100488], (f:lsu) ft2  <-- 4.0
       0     5314        M 0x80002748 fld     ft5, 48(a5)            #; ft5  <~~ Doub[0x00100170], (f:lsu) ft3  <-- 5.0
       0     5315        M 0x8000274c fld     ft6, 48(a2)            #; ft6  <~~ Doub[0x00100490], (f:lsu) ft4  <-- 5.0
       0     5316        M 0x80002750 fld     ft7, 56(a5)            #; ft7  <~~ Doub[0x00100178], (f:lsu) ft5  <-- 6.0
       0     5317        M 0x80002754 fld     fa0, 56(a2)            #; fa0  <~~ Doub[0x00100498], (f:lsu) ft6  <-- 6.0
       0     5318        M 0x80002758 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 4.0, ft1  = 4.0, ft0  = 1154.0, (f:lsu) ft7  <-- 7.0
       0     5319        M                                           #; (f:lsu) fa0  <-- 7.0
       0     5321        M                                           #; (f:fpu) ft0  <-- 1170.0
       0     5322        M 0x8000275c fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 5.0, ft3  = 5.0, ft0  = 1170.0
       0     5325        M                                           #; (f:fpu) ft0  <-- 1195.0
       0     5326        M 0x80002760 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 6.0, ft5  = 6.0, ft0  = 1195.0
       0     5329        M                                           #; (f:fpu) ft0  <-- 1231.0
       0     5330        M 0x80002764 fmadd.d fa0, fa0, ft7, ft0     #; fa0  = 7.0, ft7  = 7.0, ft0  = 1231.0
       0     5331        M 0x800026a8 fld     ft0, 4032(a5)          #; ft0  <~~ Doub[0x00100180]
       0     5332        M 0x800026ac fld     ft1, 4032(a2)          #; ft1  <~~ Doub[0x001004a0], (f:lsu) ft0  <-- 8.0
       0     5333        M 0x800026b0 fld     ft2, 4040(a5)          #; ft2  <~~ Doub[0x00100188], (f:fpu) fa0  <-- 1280.0
       0     5334        M 0x800026b4 fld     ft3, 4040(a2)          #; ft3  <~~ Doub[0x001004a8], (f:lsu) ft1  <-- 8.0
       0     5335        M 0x800026b8 fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x00100190], (f:lsu) ft2  <-- 9.0
       0     5336        M 0x800026bc fld     ft5, 4048(a2)          #; ft5  <~~ Doub[0x001004b0], (f:lsu) ft3  <-- 9.0
       0     5337        M 0x800026c0 fld     ft6, 4056(a5)          #; ft6  <~~ Doub[0x00100198], (f:lsu) ft4  <-- 0.0
       0     5338        M 0x800026c4 fld     ft7, 4056(a2)          #; ft7  <~~ Doub[0x001004b8], (f:lsu) ft5  <-- 0.0
       0     5339        M 0x800026c8 fmadd.d ft0, ft1, ft0, fa0     #; ft1  = 8.0, ft0  = 8.0, fa0  = 1280.0, (f:lsu) ft6  <-- 1.0
       0     5340        M                                           #; (f:lsu) ft7  <-- 1.0
       0     5342        M                                           #; (f:fpu) ft0  <-- 1344.0
       0     5343        M 0x800026cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 9.0, ft2  = 9.0, ft0  = 1344.0
       0     5346        M                                           #; (f:fpu) ft0  <-- 1425.0
       0     5347        M 0x800026d0 fmadd.d ft0, ft5, ft4, ft0     #; ft5  = 0.0, ft4  = 0.0, ft0  = 1425.0
       0     5350        M                                           #; (f:fpu) ft0  <-- 1425.0
       0     5351        M 0x800026d4 fmadd.d ft0, ft7, ft6, ft0     #; ft7  = 1.0, ft6  = 1.0, ft0  = 1425.0
       0     5352        M 0x800026d8 fld     ft1, 4064(a5)          #; ft1  <~~ Doub[0x001001a0]
       0     5353        M 0x800026dc fld     ft2, 4064(a2)          #; ft2  <~~ Doub[0x001004c0], (f:lsu) ft1  <-- 2.0
       0     5354        M 0x800026e0 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x001001a8], (f:fpu) ft0  <-- 1426.0
       0     5355        M 0x800026e4 fld     ft4, 4072(a2)          #; ft4  <~~ Doub[0x001004c8], (f:lsu) ft2  <-- 2.0
       0     5356        M 0x800026e8 fld     ft5, 4080(a5)          #; ft5  <~~ Doub[0x001001b0], (f:lsu) ft3  <-- 3.0
       0     5357        M 0x800026ec fld     ft6, 4080(a2)          #; ft6  <~~ Doub[0x001004d0], (f:lsu) ft4  <-- 3.0
       0     5358        M 0x800026f0 fld     ft7, 4088(a5)          #; ft7  <~~ Doub[0x001001b8], (f:lsu) ft5  <-- 4.0
       0     5359        M 0x800026f4 fld     fa0, 4088(a2)          #; fa0  <~~ Doub[0x001004d8], (f:lsu) ft6  <-- 4.0
       0     5360        M 0x800026f8 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 2.0, ft1  = 2.0, ft0  = 1426.0, (f:lsu) ft7  <-- 5.0
       0     5361        M                                           #; (f:lsu) fa0  <-- 5.0
       0     5363        M                                           #; (f:fpu) ft0  <-- 1430.0
       0     5364        M 0x800026fc fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 3.0, ft3  = 3.0, ft0  = 1430.0
       0     5367        M                                           #; (f:fpu) ft0  <-- 1439.0
       0     5368        M 0x80002700 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 4.0, ft5  = 4.0, ft0  = 1439.0
       0     5371        M                                           #; (f:fpu) ft0  <-- 1455.0
       0     5372        M 0x80002704 fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 5.0, ft7  = 5.0, ft0  = 1455.0
       0     5373        M 0x80002708 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001001c0]
       0     5374        M 0x8000270c fld     ft2, 0(a2)             #; ft2  <~~ Doub[0x001004e0], (f:lsu) ft1  <-- 6.0
       0     5375        M 0x80002710 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x001001c8], (f:fpu) ft0  <-- 1480.0
       0     5376        M 0x80002714 fld     ft4, 8(a2)             #; ft4  <~~ Doub[0x001004e8], (f:lsu) ft2  <-- 6.0
       0     5377        M 0x80002718 fld     ft5, 16(a5)            #; ft5  <~~ Doub[0x001001d0], (f:lsu) ft3  <-- 7.0
       0     5378        M 0x8000271c fld     ft6, 16(a2)            #; ft6  <~~ Doub[0x001004f0], (f:lsu) ft4  <-- 7.0
       0     5379        M 0x80002720 fld     ft7, 24(a5)            #; ft7  <~~ Doub[0x001001d8], (f:lsu) ft5  <-- 8.0
       0     5380        M 0x80002724 fld     fa0, 24(a2)            #; fa0  <~~ Doub[0x001004f8], (f:lsu) ft6  <-- 8.0
       0     5381        M 0x80002768 addi    a4, a4, 16             #; a4  = -48, (wrb) a4  <-- -32
                         M 0x80002728 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 6.0, ft1  = 6.0, ft0  = 1480.0, (f:lsu) ft7  <-- 9.0
       0     5382        M 0x8000276c addi    a5, a5, 128            #; a5  = 0x001001c0, (wrb) a5  <-- 0x00100240
                         M                                           #; (f:lsu) fa0  <-- 9.0
       0     5383        M 0x80002770 addi    a2, a2, 128            #; a2  = 0x001004e0, (wrb) a2  <-- 0x00100560
       0     5384        M 0x80002774 bnez    a4, pc - 204           #; a4  = -32, taken, goto 0x800026a8
                         M                                           #; (f:fpu) ft0  <-- 1516.0
       0     5385        M 0x8000272c fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 7.0, ft3  = 7.0, ft0  = 1516.0
       0     5388        M                                           #; (f:fpu) ft0  <-- 1565.0
       0     5389        M 0x80002730 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 8.0, ft5  = 8.0, ft0  = 1565.0
       0     5392        M                                           #; (f:fpu) ft0  <-- 1629.0
       0     5393        M 0x80002734 fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 9.0, ft7  = 9.0, ft0  = 1629.0
       0     5394        M 0x80002738 fld     ft1, 32(a5)            #; ft1  <~~ Doub[0x001001e0]
       0     5395        M 0x8000273c fld     ft2, 32(a2)            #; ft2  <~~ Doub[0x00100500], (f:lsu) ft1  <-- 0.0
       0     5396        M 0x80002740 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x001001e8], (f:fpu) ft0  <-- 1710.0
       0     5397        M 0x80002744 fld     ft4, 40(a2)            #; ft4  <~~ Doub[0x00100508], (f:lsu) ft2  <-- 0.0
       0     5398        M 0x80002748 fld     ft5, 48(a5)            #; ft5  <~~ Doub[0x001001f0], (f:lsu) ft3  <-- 1.0
       0     5399        M 0x8000274c fld     ft6, 48(a2)            #; ft6  <~~ Doub[0x00100510], (f:lsu) ft4  <-- 1.0
       0     5400        M 0x80002750 fld     ft7, 56(a5)            #; ft7  <~~ Doub[0x001001f8], (f:lsu) ft5  <-- 2.0
       0     5401        M 0x80002754 fld     fa0, 56(a2)            #; fa0  <~~ Doub[0x00100518], (f:lsu) ft6  <-- 2.0
       0     5402        M 0x80002758 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 0.0, ft1  = 0.0, ft0  = 1710.0, (f:lsu) ft7  <-- 3.0
       0     5403        M                                           #; (f:lsu) fa0  <-- 3.0
       0     5405        M                                           #; (f:fpu) ft0  <-- 1710.0
       0     5406        M 0x8000275c fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 1.0, ft3  = 1.0, ft0  = 1710.0
       0     5409        M                                           #; (f:fpu) ft0  <-- 1711.0
       0     5410        M 0x80002760 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 2.0, ft5  = 2.0, ft0  = 1711.0
       0     5413        M                                           #; (f:fpu) ft0  <-- 1715.0
       0     5414        M 0x80002764 fmadd.d fa0, fa0, ft7, ft0     #; fa0  = 3.0, ft7  = 3.0, ft0  = 1715.0
       0     5415        M 0x800026a8 fld     ft0, 4032(a5)          #; ft0  <~~ Doub[0x00100200]
       0     5416        M 0x800026ac fld     ft1, 4032(a2)          #; ft1  <~~ Doub[0x00100520], (f:lsu) ft0  <-- 4.0
       0     5417        M 0x800026b0 fld     ft2, 4040(a5)          #; ft2  <~~ Doub[0x00100208], (f:fpu) fa0  <-- 1724.0
       0     5418        M 0x800026b4 fld     ft3, 4040(a2)          #; ft3  <~~ Doub[0x00100528], (f:lsu) ft1  <-- 4.0
       0     5419        M 0x800026b8 fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x00100210], (f:lsu) ft2  <-- 5.0
       0     5420        M 0x800026bc fld     ft5, 4048(a2)          #; ft5  <~~ Doub[0x00100530], (f:lsu) ft3  <-- 5.0
       0     5421        M 0x800026c0 fld     ft6, 4056(a5)          #; ft6  <~~ Doub[0x00100218], (f:lsu) ft4  <-- 6.0
       0     5422        M 0x800026c4 fld     ft7, 4056(a2)          #; ft7  <~~ Doub[0x00100538], (f:lsu) ft5  <-- 6.0
       0     5423        M 0x800026c8 fmadd.d ft0, ft1, ft0, fa0     #; ft1  = 4.0, ft0  = 4.0, fa0  = 1724.0, (f:lsu) ft6  <-- 7.0
       0     5424        M                                           #; (f:lsu) ft7  <-- 7.0
       0     5426        M                                           #; (f:fpu) ft0  <-- 1740.0
       0     5427        M 0x800026cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 5.0, ft2  = 5.0, ft0  = 1740.0
       0     5430        M                                           #; (f:fpu) ft0  <-- 1765.0
       0     5431        M 0x800026d0 fmadd.d ft0, ft5, ft4, ft0     #; ft5  = 6.0, ft4  = 6.0, ft0  = 1765.0
       0     5434        M                                           #; (f:fpu) ft0  <-- 1801.0
       0     5435        M 0x800026d4 fmadd.d ft0, ft7, ft6, ft0     #; ft7  = 7.0, ft6  = 7.0, ft0  = 1801.0
       0     5436        M 0x800026d8 fld     ft1, 4064(a5)          #; ft1  <~~ Doub[0x00100220]
       0     5437        M 0x800026dc fld     ft2, 4064(a2)          #; ft2  <~~ Doub[0x00100540], (f:lsu) ft1  <-- 8.0
       0     5438        M 0x800026e0 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x00100228], (f:fpu) ft0  <-- 1850.0
       0     5439        M 0x800026e4 fld     ft4, 4072(a2)          #; ft4  <~~ Doub[0x00100548], (f:lsu) ft2  <-- 8.0
       0     5440        M 0x800026e8 fld     ft5, 4080(a5)          #; ft5  <~~ Doub[0x00100230], (f:lsu) ft3  <-- 9.0
       0     5441        M 0x800026ec fld     ft6, 4080(a2)          #; ft6  <~~ Doub[0x00100550], (f:lsu) ft4  <-- 9.0
       0     5442        M 0x800026f0 fld     ft7, 4088(a5)          #; ft7  <~~ Doub[0x00100238], (f:lsu) ft5  <-- 0.0
       0     5443        M 0x800026f4 fld     fa0, 4088(a2)          #; fa0  <~~ Doub[0x00100558], (f:lsu) ft6  <-- 0.0
       0     5444        M 0x800026f8 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 8.0, ft1  = 8.0, ft0  = 1850.0, (f:lsu) ft7  <-- 1.0
       0     5445        M                                           #; (f:lsu) fa0  <-- 1.0
       0     5447        M                                           #; (f:fpu) ft0  <-- 1914.0
       0     5448        M 0x800026fc fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 9.0, ft3  = 9.0, ft0  = 1914.0
       0     5451        M                                           #; (f:fpu) ft0  <-- 1995.0
       0     5452        M 0x80002700 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 0.0, ft5  = 0.0, ft0  = 1995.0
       0     5455        M                                           #; (f:fpu) ft0  <-- 1995.0
       0     5456        M 0x80002704 fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 1.0, ft7  = 1.0, ft0  = 1995.0
       0     5457        M 0x80002708 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100240]
       0     5458        M 0x8000270c fld     ft2, 0(a2)             #; ft2  <~~ Doub[0x00100560], (f:lsu) ft1  <-- 2.0
       0     5459        M 0x80002710 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x00100248], (f:fpu) ft0  <-- 1996.0
       0     5460        M 0x80002714 fld     ft4, 8(a2)             #; ft4  <~~ Doub[0x00100568], (f:lsu) ft2  <-- 2.0
       0     5461        M 0x80002718 fld     ft5, 16(a5)            #; ft5  <~~ Doub[0x00100250], (f:lsu) ft3  <-- 3.0
       0     5462        M 0x8000271c fld     ft6, 16(a2)            #; ft6  <~~ Doub[0x00100570], (f:lsu) ft4  <-- 3.0
       0     5463        M 0x80002720 fld     ft7, 24(a5)            #; ft7  <~~ Doub[0x00100258], (f:lsu) ft5  <-- 4.0
       0     5464        M 0x80002724 fld     fa0, 24(a2)            #; fa0  <~~ Doub[0x00100578], (f:lsu) ft6  <-- 4.0
       0     5465        M 0x80002768 addi    a4, a4, 16             #; a4  = -32, (wrb) a4  <-- -16
                         M 0x80002728 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 2.0, ft1  = 2.0, ft0  = 1996.0, (f:lsu) ft7  <-- 5.0
       0     5466        M 0x8000276c addi    a5, a5, 128            #; a5  = 0x00100240, (wrb) a5  <-- 0x001002c0
                         M                                           #; (f:lsu) fa0  <-- 5.0
       0     5467        M 0x80002770 addi    a2, a2, 128            #; a2  = 0x00100560, (wrb) a2  <-- 0x001005e0
       0     5468        M 0x80002774 bnez    a4, pc - 204           #; a4  = -16, taken, goto 0x800026a8
                         M                                           #; (f:fpu) ft0  <-- 2000.0
       0     5469        M 0x8000272c fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 3.0, ft3  = 3.0, ft0  = 2000.0
       0     5472        M                                           #; (f:fpu) ft0  <-- 2009.0
       0     5473        M 0x80002730 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 4.0, ft5  = 4.0, ft0  = 2009.0
       0     5476        M                                           #; (f:fpu) ft0  <-- 2025.0
       0     5477        M 0x80002734 fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 5.0, ft7  = 5.0, ft0  = 2025.0
       0     5478        M 0x80002738 fld     ft1, 32(a5)            #; ft1  <~~ Doub[0x00100260]
       0     5479        M 0x8000273c fld     ft2, 32(a2)            #; ft2  <~~ Doub[0x00100580], (f:lsu) ft1  <-- 6.0
       0     5480        M 0x80002740 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x00100268], (f:fpu) ft0  <-- 2050.0
       0     5481        M 0x80002744 fld     ft4, 40(a2)            #; ft4  <~~ Doub[0x00100588], (f:lsu) ft2  <-- 6.0
       0     5482        M 0x80002748 fld     ft5, 48(a5)            #; ft5  <~~ Doub[0x00100270], (f:lsu) ft3  <-- 7.0
       0     5483        M 0x8000274c fld     ft6, 48(a2)            #; ft6  <~~ Doub[0x00100590], (f:lsu) ft4  <-- 7.0
       0     5484        M 0x80002750 fld     ft7, 56(a5)            #; ft7  <~~ Doub[0x00100278], (f:lsu) ft5  <-- 8.0
       0     5485        M 0x80002754 fld     fa0, 56(a2)            #; fa0  <~~ Doub[0x00100598], (f:lsu) ft6  <-- 8.0
       0     5486        M 0x80002758 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 6.0, ft1  = 6.0, ft0  = 2050.0, (f:lsu) ft7  <-- 9.0
       0     5487        M                                           #; (f:lsu) fa0  <-- 9.0
       0     5489        M                                           #; (f:fpu) ft0  <-- 2086.0
       0     5490        M 0x8000275c fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 7.0, ft3  = 7.0, ft0  = 2086.0
       0     5493        M                                           #; (f:fpu) ft0  <-- 2135.0
       0     5494        M 0x80002760 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 8.0, ft5  = 8.0, ft0  = 2135.0
       0     5497        M                                           #; (f:fpu) ft0  <-- 2199.0
       0     5498        M 0x80002764 fmadd.d fa0, fa0, ft7, ft0     #; fa0  = 9.0, ft7  = 9.0, ft0  = 2199.0
       0     5499        M 0x800026a8 fld     ft0, 4032(a5)          #; ft0  <~~ Doub[0x00100280]
       0     5500        M 0x800026ac fld     ft1, 4032(a2)          #; ft1  <~~ Doub[0x001005a0], (f:lsu) ft0  <-- 0.0
       0     5501        M 0x800026b0 fld     ft2, 4040(a5)          #; ft2  <~~ Doub[0x00100288], (f:fpu) fa0  <-- 2280.0
       0     5502        M 0x800026b4 fld     ft3, 4040(a2)          #; ft3  <~~ Doub[0x001005a8], (f:lsu) ft1  <-- 0.0
       0     5503        M 0x800026b8 fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x00100290], (f:lsu) ft2  <-- 1.0
       0     5504        M 0x800026bc fld     ft5, 4048(a2)          #; ft5  <~~ Doub[0x001005b0], (f:lsu) ft3  <-- 1.0
       0     5505        M 0x800026c0 fld     ft6, 4056(a5)          #; ft6  <~~ Doub[0x00100298], (f:lsu) ft4  <-- 2.0
       0     5506        M 0x800026c4 fld     ft7, 4056(a2)          #; ft7  <~~ Doub[0x001005b8], (f:lsu) ft5  <-- 2.0
       0     5507        M 0x800026c8 fmadd.d ft0, ft1, ft0, fa0     #; ft1  = 0.0, ft0  = 0.0, fa0  = 2280.0, (f:lsu) ft6  <-- 3.0
       0     5508        M                                           #; (f:lsu) ft7  <-- 3.0
       0     5510        M                                           #; (f:fpu) ft0  <-- 2280.0
       0     5511        M 0x800026cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 1.0, ft2  = 1.0, ft0  = 2280.0
       0     5514        M                                           #; (f:fpu) ft0  <-- 2281.0
       0     5515        M 0x800026d0 fmadd.d ft0, ft5, ft4, ft0     #; ft5  = 2.0, ft4  = 2.0, ft0  = 2281.0
       0     5518        M                                           #; (f:fpu) ft0  <-- 2285.0
       0     5519        M 0x800026d4 fmadd.d ft0, ft7, ft6, ft0     #; ft7  = 3.0, ft6  = 3.0, ft0  = 2285.0
       0     5520        M 0x800026d8 fld     ft1, 4064(a5)          #; ft1  <~~ Doub[0x001002a0]
       0     5521        M 0x800026dc fld     ft2, 4064(a2)          #; ft2  <~~ Doub[0x001005c0], (f:lsu) ft1  <-- 4.0
       0     5522        M 0x800026e0 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x001002a8], (f:fpu) ft0  <-- 2294.0
       0     5523        M 0x800026e4 fld     ft4, 4072(a2)          #; ft4  <~~ Doub[0x001005c8], (f:lsu) ft2  <-- 4.0
       0     5524        M 0x800026e8 fld     ft5, 4080(a5)          #; ft5  <~~ Doub[0x001002b0], (f:lsu) ft3  <-- 5.0
       0     5525        M 0x800026ec fld     ft6, 4080(a2)          #; ft6  <~~ Doub[0x001005d0], (f:lsu) ft4  <-- 5.0
       0     5526        M 0x800026f0 fld     ft7, 4088(a5)          #; ft7  <~~ Doub[0x001002b8], (f:lsu) ft5  <-- 6.0
       0     5527        M 0x800026f4 fld     fa0, 4088(a2)          #; fa0  <~~ Doub[0x001005d8], (f:lsu) ft6  <-- 6.0
       0     5528        M 0x800026f8 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 4.0, ft1  = 4.0, ft0  = 2294.0, (f:lsu) ft7  <-- 7.0
       0     5529        M                                           #; (f:lsu) fa0  <-- 7.0
       0     5531        M                                           #; (f:fpu) ft0  <-- 2310.0
       0     5532        M 0x800026fc fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 5.0, ft3  = 5.0, ft0  = 2310.0
       0     5535        M                                           #; (f:fpu) ft0  <-- 2335.0
       0     5536        M 0x80002700 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 6.0, ft5  = 6.0, ft0  = 2335.0
       0     5539        M                                           #; (f:fpu) ft0  <-- 2371.0
       0     5540        M 0x80002704 fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 7.0, ft7  = 7.0, ft0  = 2371.0
       0     5541        M 0x80002708 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001002c0]
       0     5542        M 0x8000270c fld     ft2, 0(a2)             #; ft2  <~~ Doub[0x001005e0], (f:lsu) ft1  <-- 8.0
       0     5543        M 0x80002710 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x001002c8], (f:fpu) ft0  <-- 2420.0
       0     5544        M 0x80002714 fld     ft4, 8(a2)             #; ft4  <~~ Doub[0x001005e8], (f:lsu) ft2  <-- 8.0
       0     5545        M 0x80002718 fld     ft5, 16(a5)            #; ft5  <~~ Doub[0x001002d0], (f:lsu) ft3  <-- 9.0
       0     5546        M 0x8000271c fld     ft6, 16(a2)            #; ft6  <~~ Doub[0x001005f0], (f:lsu) ft4  <-- 9.0
       0     5547        M 0x80002720 fld     ft7, 24(a5)            #; ft7  <~~ Doub[0x001002d8], (f:lsu) ft5  <-- 0.0
       0     5548        M 0x80002724 fld     fa0, 24(a2)            #; fa0  <~~ Doub[0x001005f8], (f:lsu) ft6  <-- 0.0
       0     5549        M 0x80002768 addi    a4, a4, 16             #; a4  = -16, (wrb) a4  <-- 0
                         M 0x80002728 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 8.0, ft1  = 8.0, ft0  = 2420.0, (f:lsu) ft7  <-- 1.0
       0     5550        M 0x8000276c addi    a5, a5, 128            #; a5  = 0x001002c0, (wrb) a5  <-- 0x00100340
                         M                                           #; (f:lsu) fa0  <-- 1.0
       0     5551        M 0x80002770 addi    a2, a2, 128            #; a2  = 0x001005e0, (wrb) a2  <-- 0x00100660
       0     5552        M 0x80002774 bnez    a4, pc - 204           #; a4  = 0, not taken
                         M                                           #; (f:fpu) ft0  <-- 2484.0
       0     5553        M 0x80002778 beqz    a3, pc + 44            #; a3  = 4, not taken
                         M 0x8000272c fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 9.0, ft3  = 9.0, ft0  = 2484.0
       0     5554        M 0x8000277c slli    a2, a6, 3              #; a6  = 96, (wrb) a2  <-- 768
       0     5556        M                                           #; (f:fpu) ft0  <-- 2565.0
       0     5557        M 0x80002730 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 0.0, ft5  = 0.0, ft0  = 2565.0
       0     5560        M                                           #; (f:fpu) ft0  <-- 2565.0
       0     5561        M 0x80002734 fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 1.0, ft7  = 1.0, ft0  = 2565.0
       0     5562        M 0x80002738 fld     ft1, 32(a5)            #; ft1  <~~ Doub[0x001002e0]
       0     5563        M 0x8000273c fld     ft2, 32(a2)            #; ft2  <~~ Doub[0x00100600], (f:lsu) ft1  <-- 2.0
       0     5564        M 0x80002740 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x001002e8], (f:fpu) ft0  <-- 2566.0
       0     5565        M 0x80002744 fld     ft4, 40(a2)            #; ft4  <~~ Doub[0x00100608], (f:lsu) ft2  <-- 2.0
       0     5566        M 0x80002780 add     a1, a1, a2             #; a1  = 0x00100320, a2  = 768, (wrb) a1  <-- 0x00100620
                         M 0x80002748 fld     ft5, 48(a5)            #; ft5  <~~ Doub[0x001002f0], (f:lsu) ft3  <-- 3.0
       0     5567        M 0x80002784 add     a0, a0, a2             #; a0  = 0x00100000, a2  = 768, (wrb) a0  <-- 0x00100300
                         M 0x8000274c fld     ft6, 48(a2)            #; ft6  <~~ Doub[0x00100610], (f:lsu) ft4  <-- 3.0
       0     5568        M 0x80002750 fld     ft7, 56(a5)            #; ft7  <~~ Doub[0x001002f8], (f:lsu) ft5  <-- 4.0
       0     5569        M 0x80002754 fld     fa0, 56(a2)            #; fa0  <~~ Doub[0x00100618], (f:lsu) ft6  <-- 4.0
       0     5570        M 0x80002758 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 2.0, ft1  = 2.0, ft0  = 2566.0, (f:lsu) ft7  <-- 5.0
       0     5571        M                                           #; (f:lsu) fa0  <-- 5.0
       0     5573        M                                           #; (f:fpu) ft0  <-- 2570.0
       0     5574        M 0x8000275c fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 3.0, ft3  = 3.0, ft0  = 2570.0
       0     5577        M                                           #; (f:fpu) ft0  <-- 2579.0
       0     5578        M 0x80002760 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 4.0, ft5  = 4.0, ft0  = 2579.0
       0     5579        M 0x80002794 addi    a3, a3, -1             #; a3  = 4, (wrb) a3  <-- 3
       0     5580        M 0x80002798 addi    a1, a1, 8              #; a1  = 0x00100620, (wrb) a1  <-- 0x00100628
       0     5581        M 0x8000279c addi    a0, a0, 8              #; a0  = 0x00100300, (wrb) a0  <-- 0x00100308
                         M                                           #; (f:fpu) ft0  <-- 2595.0
       0     5582        M 0x80002764 fmadd.d fa0, fa0, ft7, ft0     #; fa0  = 5.0, ft7  = 5.0, ft0  = 2595.0
       0     5583        M 0x80002788 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x00100300]
       0     5584        M 0x8000278c fld     ft1, 0(a1)             #; ft1  <~~ Doub[0x00100620], (f:lsu) ft0  <-- 6.0
       0     5585        M                                           #; (f:fpu) fa0  <-- 2620.0
       0     5586        M                                           #; (f:lsu) ft1  <-- 6.0
       0     5587        M 0x80002790 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 6.0, ft0  = 6.0, fa0  = 2620.0
       0     5590        M 0x800027a0 bnez    a3, pc - 24            #; a3  = 3, taken, goto 0x80002788
                         M                                           #; (f:fpu) fa0  <-- 2656.0
       0     5593        M 0x80002788 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x00100308]
       0     5594        M 0x80002794 addi    a3, a3, -1             #; a3  = 3, (wrb) a3  <-- 2
                         M 0x8000278c fld     ft1, 0(a1)             #; ft1  <~~ Doub[0x00100628], (f:lsu) ft0  <-- 7.0
       0     5595        M 0x80002798 addi    a1, a1, 8              #; a1  = 0x00100628, (wrb) a1  <-- 0x00100630
                         M                                           #; (f:lsu) ft1  <-- 7.0
       0     5596        M 0x8000279c addi    a0, a0, 8              #; a0  = 0x00100308, (wrb) a0  <-- 0x00100310
                         M 0x80002790 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 7.0, ft0  = 7.0, fa0  = 2656.0
       0     5597        M 0x800027a0 bnez    a3, pc - 24            #; a3  = 2, taken, goto 0x80002788
       0     5599        M                                           #; (f:fpu) fa0  <-- 2705.0
       0     5600        M 0x80002788 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x00100310]
       0     5601        M 0x80002794 addi    a3, a3, -1             #; a3  = 2, (wrb) a3  <-- 1
                         M 0x8000278c fld     ft1, 0(a1)             #; ft1  <~~ Doub[0x00100630], (f:lsu) ft0  <-- 8.0
       0     5602        M 0x80002798 addi    a1, a1, 8              #; a1  = 0x00100630, (wrb) a1  <-- 0x00100638
                         M                                           #; (f:lsu) ft1  <-- 8.0
       0     5603        M 0x8000279c addi    a0, a0, 8              #; a0  = 0x00100310, (wrb) a0  <-- 0x00100318
                         M 0x80002790 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 8.0, ft0  = 8.0, fa0  = 2705.0
       0     5604        M 0x800027a0 bnez    a3, pc - 24            #; a3  = 1, taken, goto 0x80002788
       0     5606        M                                           #; (f:fpu) fa0  <-- 2769.0
       0     5607        M 0x80002788 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x00100318]
       0     5608        M 0x80002794 addi    a3, a3, -1             #; a3  = 1, (wrb) a3  <-- 0
                         M 0x8000278c fld     ft1, 0(a1)             #; ft1  <~~ Doub[0x00100638], (f:lsu) ft0  <-- 9.0
       0     5609        M 0x80002798 addi    a1, a1, 8              #; a1  = 0x00100638, (wrb) a1  <-- 0x00100640
                         M                                           #; (f:lsu) ft1  <-- 9.0
       0     5610        M 0x8000279c addi    a0, a0, 8              #; a0  = 0x00100318, (wrb) a0  <-- 0x00100320
                         M 0x80002790 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 9.0, ft0  = 9.0, fa0  = 2769.0
       0     5611        M 0x800027a0 bnez    a3, pc - 24            #; a3  = 0, not taken
       0     5612        M 0x800027a4 ret                            #; ra  = 0x8000073c, goto 0x8000073c
       0     5613        M                                           #; (f:fpu) fa0  <-- 2850.0
       0     5619        M 0x8000073c fsgnj.d fs0, fa0, fa0          #; fa0  = 2850.0, fa0  = 2850.0
       0     5620        M 0x80000740 csrr    a0, mcycle             #; mcycle = 5619, (wrb) a0  <-- 5619
                         M                                           #; (f:fpu) fs0  <-- 2850.0
       0     5621        M 0x80000744 sub     a1, a0, s0             #; a0  = 5619, s0  = 4918, (wrb) a1  <-- 701
       0     5622        M 0x80000748 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002748
       0     5623        M 0x8000074c addi    a0, a0, 1257           #; a0  = 0x80002748, (wrb) a0  <-- 0x80002c31
       0     5632        M 0x80000750 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000750
       0     5633        M 0x80000754 jalr    ra, ra, 92             #; ra  = 0x80000750, (wrb) ra  <-- 0x80000758, goto 0x800007ac
       0     5647        M 0x800007ac addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     5651        M 0x800007b0 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000758 ~~> Word[0x0011ff1c]
       0     5652        M 0x800007b4 mv      t0, a0                 #; a0  = 0x80002c31, (wrb) t0  <-- 0x80002c31
       0     5653        M 0x800007b8 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 800 ~~> Word[0x0011ff3c]
       0     5654        M 0x800007bc sw      a6, 40(sp)             #; sp  = 0x0011ff10, 96 ~~> Word[0x0011ff38]
       0     5663        M 0x800007c0 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0x00100340 ~~> Word[0x0011ff34]
       0     5664        M 0x800007c4 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff30]
       0     5665        M 0x800007c8 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
       0     5666        M 0x800007cc sw      a2, 24(sp)             #; sp  = 0x0011ff10, 768 ~~> Word[0x0011ff28]
       0     5675        M 0x800007d0 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 701 ~~> Word[0x0011ff24]
       0     5676        M 0x800007d4 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     5677        M 0x800007d8 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     5678        M 0x800007dc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800017dc
       0     5687        M 0x800007e0 addi    a0, a0, -988           #; a0  = 0x800017dc, (wrb) a0  <-- 0x80001400
       0     5688        M 0x800007e4 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     5689        M 0x800007e8 li      a2, -1                 #; (wrb) a2  <-- -1
       0     5690        M 0x800007ec addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     5699        M 0x800007f0 mv      a3, t0                 #; t0  = 0x80002c31, (wrb) a3  <-- 0x80002c31
       0     5700        M 0x800007f4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800007f4
       0     5701        M 0x800007f8 jalr    ra, ra, 20             #; ra  = 0x800007f4, (wrb) ra  <-- 0x800007fc, goto 0x80000808
       0     5711        M 0x80000808 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     5712        M 0x8000080c sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x800007fc ~~> Word[0x0011ff0c]
       0     5723        M 0x80000810 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 4918 ~~> Word[0x0011ff08]
       0     5724        M 0x80000814 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     5725        M 0x80000818 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     5726        M 0x8000081c sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     5735        M 0x80000820 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     5736        M 0x80000824 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     5737        M 0x80000828 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     5738        M 0x8000082c sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     5747        M 0x80000830 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     5748        M 0x80000834 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     5749        M 0x80000838 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     5750        M 0x8000083c sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     5759        M 0x80000840 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     5760        M 0x80000844 mv      s0, a3                 #; a3  = 0x80002c31, (wrb) s0  <-- 0x80002c31
       0     5761        M 0x80000848 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     5762        M 0x8000084c mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     5771        M 0x80000850 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     5772        M 0x80000854 mv      s2, a0                 #; a0  = 0x80001400, (wrb) s2  <-- 0x80001400
       0     5773        M 0x80000858 j       pc + 0xc               #; goto 0x80000864
       0     5783        M 0x80000864 li      s8, 0                  #; (wrb) s8  <-- 0
       0     5784        M 0x80000868 li      s6, 37                 #; (wrb) s6  <-- 37
       0     5785        M 0x8000086c li      s11, 16                #; (wrb) s11 <-- 16
       0     5795        M 0x80000870 li      s7, 46                 #; (wrb) s7  <-- 46
       0     5796        M 0x80000874 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     5797        M 0x80000878 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     5798        M 0x8000087c sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     5807        M 0x80000880 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     5808        M 0x80000884 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     5809        M 0x80000888 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     5810        M 0x8000088c addi    s10, s0, 2             #; s0  = 0x80002c31, (wrb) s10 <-- 0x80002c33
       0     5819        M 0x80000890 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     5820        M 0x80000894 li      s8, 10                 #; (wrb) s8  <-- 10
       0     5821        M 0x80000898 lbu     a0, 0(s0)              #; s0  = 0x80002c31, a0  <~~ Byte[0x80002c31]
       0     5832        M                                           #; (lsu) a0  <-- 99
       0     5833        M 0x8000089c beqz    a0, pc + 2824          #; a0  = 99, not taken
       0     5834        M 0x800008a0 beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
       0     5835        M 0x800008a4 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     5836        M 0x800008a8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5837        M 0x800008ac mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     5846        M 0x800008b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5847        M 0x800008b4 jalr    s2                     #; s2  = 0x80001400, (wrb) ra  <-- 0x800008b8, goto 0x80001400
       0     5869        M 0x80001400 beqz    a0, pc + 168           #; a0  = 99, not taken
       0     5870        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5871        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5872        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5881        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0     5882        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0     5883        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     5884        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     5895        M                                           #; (lsu) a4  <-- 0
       0     5896        M 0x80001420 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     5897        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 1 ~~> Word[0x80002f94]
       0     5898        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 0, (wrb) a4  <-- 0x80002f94
       0     5899        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002f94, 99 ~~> Byte[0x80002fdc]
       0     5905        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     5921        M                                           #; (lsu) a4  <-- 1
       0     5922        M 0x80001434 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     5923        M 0x80001438 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     5924        M 0x8000143c addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
       0     5925        M 0x80001440 snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
       0     5926        M 0x80001444 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5927        M 0x80001448 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014a8
       0     5948        M 0x800014a8 ret                            #; ra  = 0x800008b8, goto 0x800008b8
       0     5962        M 0x800008b8 addi    s0, s0, 1              #; s0  = 0x80002c31, (wrb) s0  <-- 0x80002c32
       0     5963        M 0x800008bc addi    s10, s10, 1            #; s10 = 0x80002c33, (wrb) s10 <-- 0x80002c34
       0     5965        M 0x800008c0 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     5966        M 0x800008c4 lbu     a0, 0(s0)              #; s0  = 0x80002c32, a0  <~~ Byte[0x80002c32]
       0     5977        M                                           #; (lsu) a0  <-- 121
       0     5978        M 0x800008c8 bnez    a0, pc - 40            #; a0  = 121, taken, goto 0x800008a0
       0     5979        M 0x800008a0 beq     a0, s6, pc + 48        #; a0  = 121, s6  = 37, not taken
       0     5980        M 0x800008a4 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     5981        M 0x800008a8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5982        M 0x800008ac mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     5983        M 0x800008b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5984        M 0x800008b4 jalr    s2                     #; s2  = 0x80001400, (wrb) ra  <-- 0x800008b8, goto 0x80001400
       0     5987        M 0x80001400 beqz    a0, pc + 168           #; a0  = 121, not taken
       0     5988        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5989        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5990        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5991        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0     5992        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0     5993        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5994        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     5995        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6006        M                                           #; (lsu) a4  <-- 1
       0     6007        M 0x80001420 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     6008        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 2 ~~> Word[0x80002f94]
       0     6009        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 1, (wrb) a4  <-- 0x80002f95
       0     6010        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002f95, 121 ~~> Byte[0x80002fdd]
       0     6011        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6032        M                                           #; (lsu) a4  <-- 2
       0     6033        M 0x80001434 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     6034        M 0x80001438 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     6035        M 0x8000143c addi    a0, a0, -10            #; a0  = 121, (wrb) a0  <-- 111
       0     6036        M 0x80001440 snez    a0, a0                 #; a0  = 111, (wrb) a0  <-- 1
       0     6037        M 0x80001444 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6038        M 0x80001448 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014a8
       0     6041        M 0x800014a8 ret                            #; ra  = 0x800008b8, goto 0x800008b8
       0     6046        M 0x800008b8 addi    s0, s0, 1              #; s0  = 0x80002c32, (wrb) s0  <-- 0x80002c33
       0     6047        M 0x800008bc addi    s10, s10, 1            #; s10 = 0x80002c34, (wrb) s10 <-- 0x80002c35
       0     6049        M 0x800008c0 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     6050        M 0x800008c4 lbu     a0, 0(s0)              #; s0  = 0x80002c33, a0  <~~ Byte[0x80002c33]
       0     6061        M                                           #; (lsu) a0  <-- 99
       0     6062        M 0x800008c8 bnez    a0, pc - 40            #; a0  = 99, taken, goto 0x800008a0
       0     6063        M 0x800008a0 beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
       0     6064        M 0x800008a4 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     6065        M 0x800008a8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6066        M 0x800008ac mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     6067        M 0x800008b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6068        M 0x800008b4 jalr    s2                     #; s2  = 0x80001400, (wrb) ra  <-- 0x800008b8, goto 0x80001400
       0     6071        M 0x80001400 beqz    a0, pc + 168           #; a0  = 99, not taken
       0     6072        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6073        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6074        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6075        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0     6076        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0     6077        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6078        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     6079        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6090        M                                           #; (lsu) a4  <-- 2
       0     6091        M 0x80001420 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     6092        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 3 ~~> Word[0x80002f94]
       0     6093        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 2, (wrb) a4  <-- 0x80002f96
       0     6094        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002f96, 99 ~~> Byte[0x80002fde]
       0     6095        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6116        M                                           #; (lsu) a4  <-- 3
       0     6117        M 0x80001434 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     6118        M 0x80001438 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     6119        M 0x8000143c addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
       0     6120        M 0x80001440 snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
       0     6121        M 0x80001444 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6122        M 0x80001448 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014a8
       0     6125        M 0x800014a8 ret                            #; ra  = 0x800008b8, goto 0x800008b8
       0     6130        M 0x800008b8 addi    s0, s0, 1              #; s0  = 0x80002c33, (wrb) s0  <-- 0x80002c34
       0     6131        M 0x800008bc addi    s10, s10, 1            #; s10 = 0x80002c35, (wrb) s10 <-- 0x80002c36
       0     6133        M 0x800008c0 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     6134        M 0x800008c4 lbu     a0, 0(s0)              #; s0  = 0x80002c34, a0  <~~ Byte[0x80002c34]
       0     6145        M                                           #; (lsu) a0  <-- 108
       0     6146        M 0x800008c8 bnez    a0, pc - 40            #; a0  = 108, taken, goto 0x800008a0
       0     6147        M 0x800008a0 beq     a0, s6, pc + 48        #; a0  = 108, s6  = 37, not taken
       0     6148        M 0x800008a4 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     6149        M 0x800008a8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6150        M 0x800008ac mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     6151        M 0x800008b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6152        M 0x800008b4 jalr    s2                     #; s2  = 0x80001400, (wrb) ra  <-- 0x800008b8, goto 0x80001400
       0     6155        M 0x80001400 beqz    a0, pc + 168           #; a0  = 108, not taken
       0     6156        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6157        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6158        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6159        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0     6160        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0     6161        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6162        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     6163        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6174        M                                           #; (lsu) a4  <-- 3
       0     6175        M 0x80001420 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     6176        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 4 ~~> Word[0x80002f94]
       0     6177        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 3, (wrb) a4  <-- 0x80002f97
       0     6178        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002f97, 108 ~~> Byte[0x80002fdf]
       0     6179        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6200        M                                           #; (lsu) a4  <-- 4
       0     6201        M 0x80001434 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     6202        M 0x80001438 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     6203        M 0x8000143c addi    a0, a0, -10            #; a0  = 108, (wrb) a0  <-- 98
       0     6204        M 0x80001440 snez    a0, a0                 #; a0  = 98, (wrb) a0  <-- 1
       0     6205        M 0x80001444 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6206        M 0x80001448 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014a8
       0     6209        M 0x800014a8 ret                            #; ra  = 0x800008b8, goto 0x800008b8
       0     6214        M 0x800008b8 addi    s0, s0, 1              #; s0  = 0x80002c34, (wrb) s0  <-- 0x80002c35
       0     6215        M 0x800008bc addi    s10, s10, 1            #; s10 = 0x80002c36, (wrb) s10 <-- 0x80002c37
       0     6217        M 0x800008c0 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     6218        M 0x800008c4 lbu     a0, 0(s0)              #; s0  = 0x80002c35, a0  <~~ Byte[0x80002c35]
       0     6229        M                                           #; (lsu) a0  <-- 101
       0     6230        M 0x800008c8 bnez    a0, pc - 40            #; a0  = 101, taken, goto 0x800008a0
       0     6231        M 0x800008a0 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     6232        M 0x800008a4 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     6233        M 0x800008a8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6234        M 0x800008ac mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     6235        M 0x800008b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6236        M 0x800008b4 jalr    s2                     #; s2  = 0x80001400, (wrb) ra  <-- 0x800008b8, goto 0x80001400
       0     6239        M 0x80001400 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     6240        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6241        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6242        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6243        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0     6244        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0     6245        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6246        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     6247        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6258        M                                           #; (lsu) a4  <-- 4
       0     6259        M 0x80001420 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     6260        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 5 ~~> Word[0x80002f94]
       0     6261        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 4, (wrb) a4  <-- 0x80002f98
       0     6262        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002f98, 101 ~~> Byte[0x80002fe0]
       0     6263        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6284        M                                           #; (lsu) a4  <-- 5
       0     6285        M 0x80001434 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     6286        M 0x80001438 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     6287        M 0x8000143c addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     6288        M 0x80001440 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     6289        M 0x80001444 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6290        M 0x80001448 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014a8
       0     6293        M 0x800014a8 ret                            #; ra  = 0x800008b8, goto 0x800008b8
       0     6298        M 0x800008b8 addi    s0, s0, 1              #; s0  = 0x80002c35, (wrb) s0  <-- 0x80002c36
       0     6299        M 0x800008bc addi    s10, s10, 1            #; s10 = 0x80002c37, (wrb) s10 <-- 0x80002c38
       0     6301        M 0x800008c0 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     6302        M 0x800008c4 lbu     a0, 0(s0)              #; s0  = 0x80002c36, a0  <~~ Byte[0x80002c36]
       0     6313        M                                           #; (lsu) a0  <-- 115
       0     6314        M 0x800008c8 bnez    a0, pc - 40            #; a0  = 115, taken, goto 0x800008a0
       0     6315        M 0x800008a0 beq     a0, s6, pc + 48        #; a0  = 115, s6  = 37, not taken
       0     6316        M 0x800008a4 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     6317        M 0x800008a8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6318        M 0x800008ac mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     6319        M 0x800008b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6320        M 0x800008b4 jalr    s2                     #; s2  = 0x80001400, (wrb) ra  <-- 0x800008b8, goto 0x80001400
       0     6323        M 0x80001400 beqz    a0, pc + 168           #; a0  = 115, not taken
       0     6324        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6325        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6326        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6327        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0     6328        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0     6329        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6330        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     6331        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6342        M                                           #; (lsu) a4  <-- 5
       0     6343        M 0x80001420 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     6344        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 6 ~~> Word[0x80002f94]
       0     6345        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 5, (wrb) a4  <-- 0x80002f99
       0     6346        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002f99, 115 ~~> Byte[0x80002fe1]
       0     6347        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6368        M                                           #; (lsu) a4  <-- 6
       0     6369        M 0x80001434 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     6370        M 0x80001438 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     6371        M 0x8000143c addi    a0, a0, -10            #; a0  = 115, (wrb) a0  <-- 105
       0     6372        M 0x80001440 snez    a0, a0                 #; a0  = 105, (wrb) a0  <-- 1
       0     6373        M 0x80001444 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6374        M 0x80001448 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014a8
       0     6377        M 0x800014a8 ret                            #; ra  = 0x800008b8, goto 0x800008b8
       0     6382        M 0x800008b8 addi    s0, s0, 1              #; s0  = 0x80002c36, (wrb) s0  <-- 0x80002c37
       0     6383        M 0x800008bc addi    s10, s10, 1            #; s10 = 0x80002c38, (wrb) s10 <-- 0x80002c39
       0     6385        M 0x800008c0 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     6386        M 0x800008c4 lbu     a0, 0(s0)              #; s0  = 0x80002c37, a0  <~~ Byte[0x80002c37]
       0     6397        M                                           #; (lsu) a0  <-- 32
       0     6398        M 0x800008c8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800008a0
       0     6399        M 0x800008a0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     6400        M 0x800008a4 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     6401        M 0x800008a8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6402        M 0x800008ac mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     6403        M 0x800008b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6404        M 0x800008b4 jalr    s2                     #; s2  = 0x80001400, (wrb) ra  <-- 0x800008b8, goto 0x80001400
       0     6407        M 0x80001400 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     6408        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6409        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6410        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6411        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0     6412        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0     6413        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6414        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     6415        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6426        M                                           #; (lsu) a4  <-- 6
       0     6427        M 0x80001420 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     6428        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 7 ~~> Word[0x80002f94]
       0     6429        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 6, (wrb) a4  <-- 0x80002f9a
       0     6430        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002f9a, 32 ~~> Byte[0x80002fe2]
       0     6431        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6452        M                                           #; (lsu) a4  <-- 7
       0     6453        M 0x80001434 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     6454        M 0x80001438 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     6455        M 0x8000143c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     6456        M 0x80001440 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     6457        M 0x80001444 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6458        M 0x80001448 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014a8
       0     6461        M 0x800014a8 ret                            #; ra  = 0x800008b8, goto 0x800008b8
       0     6466        M 0x800008b8 addi    s0, s0, 1              #; s0  = 0x80002c37, (wrb) s0  <-- 0x80002c38
       0     6467        M 0x800008bc addi    s10, s10, 1            #; s10 = 0x80002c39, (wrb) s10 <-- 0x80002c3a
       0     6469        M 0x800008c0 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     6470        M 0x800008c4 lbu     a0, 0(s0)              #; s0  = 0x80002c38, a0  <~~ Byte[0x80002c38]
       0     6481        M                                           #; (lsu) a0  <-- 61
       0     6482        M 0x800008c8 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x800008a0
       0     6483        M 0x800008a0 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     6484        M 0x800008a4 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     6485        M 0x800008a8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6486        M 0x800008ac mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     6487        M 0x800008b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6488        M 0x800008b4 jalr    s2                     #; s2  = 0x80001400, (wrb) ra  <-- 0x800008b8, goto 0x80001400
       0     6491        M 0x80001400 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     6492        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6493        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6494        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6495        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0     6496        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0     6497        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6498        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     6499        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6510        M                                           #; (lsu) a4  <-- 7
       0     6511        M 0x80001420 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     6512        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 8 ~~> Word[0x80002f94]
       0     6513        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 7, (wrb) a4  <-- 0x80002f9b
       0     6514        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002f9b, 61 ~~> Byte[0x80002fe3]
       0     6515        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6536        M                                           #; (lsu) a4  <-- 8
       0     6537        M 0x80001434 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     6538        M 0x80001438 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     6539        M 0x8000143c addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     6540        M 0x80001440 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     6541        M 0x80001444 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6542        M 0x80001448 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014a8
       0     6545        M 0x800014a8 ret                            #; ra  = 0x800008b8, goto 0x800008b8
       0     6550        M 0x800008b8 addi    s0, s0, 1              #; s0  = 0x80002c38, (wrb) s0  <-- 0x80002c39
       0     6551        M 0x800008bc addi    s10, s10, 1            #; s10 = 0x80002c3a, (wrb) s10 <-- 0x80002c3b
       0     6553        M 0x800008c0 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     6554        M 0x800008c4 lbu     a0, 0(s0)              #; s0  = 0x80002c39, a0  <~~ Byte[0x80002c39]
       0     6565        M                                           #; (lsu) a0  <-- 32
       0     6566        M 0x800008c8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800008a0
       0     6567        M 0x800008a0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     6568        M 0x800008a4 addi    s1, s9, 1              #; s9  = 8, (wrb) s1  <-- 9
       0     6569        M 0x800008a8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6570        M 0x800008ac mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     6571        M 0x800008b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6572        M 0x800008b4 jalr    s2                     #; s2  = 0x80001400, (wrb) ra  <-- 0x800008b8, goto 0x80001400
       0     6575        M 0x80001400 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     6576        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6577        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6578        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6579        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0     6580        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0     6581        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6582        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     6583        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6594        M                                           #; (lsu) a4  <-- 8
       0     6595        M 0x80001420 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     6596        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 9 ~~> Word[0x80002f94]
       0     6597        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 8, (wrb) a4  <-- 0x80002f9c
       0     6598        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002f9c, 32 ~~> Byte[0x80002fe4]
       0     6599        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6620        M                                           #; (lsu) a4  <-- 9
       0     6621        M 0x80001434 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     6622        M 0x80001438 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     6623        M 0x8000143c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     6624        M 0x80001440 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     6625        M 0x80001444 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6626        M 0x80001448 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014a8
       0     6629        M 0x800014a8 ret                            #; ra  = 0x800008b8, goto 0x800008b8
       0     6634        M 0x800008b8 addi    s0, s0, 1              #; s0  = 0x80002c39, (wrb) s0  <-- 0x80002c3a
       0     6635        M 0x800008bc addi    s10, s10, 1            #; s10 = 0x80002c3b, (wrb) s10 <-- 0x80002c3c
       0     6637        M 0x800008c0 mv      s9, s1                 #; s1  = 9, (wrb) s9  <-- 9
       0     6638        M 0x800008c4 lbu     a0, 0(s0)              #; s0  = 0x80002c3a, a0  <~~ Byte[0x80002c3a]
       0     6649        M                                           #; (lsu) a0  <-- 37
       0     6650        M 0x800008c8 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x800008a0
       0     6651        M 0x800008a0 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x800008d0
       0     6663        M 0x800008d0 li      s0, 0                  #; (wrb) s0  <-- 0
       0     6664        M 0x800008d4 j       pc + 0x10              #; goto 0x800008e4
       0     6675        M 0x800008e4 lbu     a0, -1(s10)            #; s10 = 0x80002c3c, a0  <~~ Byte[0x80002c3b]
       0     6686        M                                           #; (lsu) a0  <-- 108
       0     6687        M 0x800008e8 addi    a1, a0, -32            #; a0  = 108, (wrb) a1  <-- 76
       0     6688        M 0x800008ec bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 76, taken, goto 0x80000924
       0     6700        M 0x80000924 addi    a1, a0, -48            #; a0  = 108, (wrb) a1  <-- 60
       0     6701        M 0x80000928 andi    a2, a1, 255            #; a1  = 60, (wrb) a2  <-- 60
       0     6702        M 0x8000092c addi    a1, s10, -1            #; s10 = 0x80002c3c, (wrb) a1  <-- 0x80002c3b
       0     6712        M 0x80000930 li      a3, 9                  #; (wrb) a3  <-- 9
       0     6713        M 0x80000934 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 60, taken, goto 0x800009b0
       0     6735        M 0x800009b0 li      a2, 42                 #; (wrb) a2  <-- 42
       0     6736        M 0x800009b4 bne     a0, a2, pc + 80        #; a0  = 108, a2  = 42, taken, goto 0x80000a04
       0     6758        M 0x80000a04 li      s6, 0                  #; (wrb) s6  <-- 0
       0     6759        M 0x80000a08 mv      s10, a1                #; a1  = 0x80002c3b, (wrb) s10 <-- 0x80002c3b
       0     6760        M 0x80000a0c beq     a0, s7, pc - 164       #; a0  = 108, s7  = 46, not taken
       0     6781        M 0x80000a10 li      s7, 0                  #; (wrb) s7  <-- 0
       0     6782        M 0x80000a14 j       pc + 0xc               #; goto 0x80000a20
       0     6793        M 0x80000a20 addi    a1, a0, -104           #; a0  = 108, (wrb) a1  <-- 4
       0     6794        M 0x80000a24 srli    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 2
       0     6795        M 0x80000a28 slli    a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 0
       0     6796        M 0x80000a2c or      a1, a1, a2             #; a1  = 0, a2  = 2, (wrb) a1  <-- 2
       0     6805        M 0x80000a30 li      a2, 9                  #; (wrb) a2  <-- 9
       0     6806        M 0x80000a34 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 2, not taken
       0     6807        M 0x80000a38 slli    a1, a1, 2              #; a1  = 2, (wrb) a1  <-- 8
       0     6808        M 0x80000a3c auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002a3c
       0     6817        M 0x80000a40 addi    a2, a2, 588            #; a2  = 0x80002a3c, (wrb) a2  <-- 0x80002c88
       0     6818        M 0x80000a44 add     a1, a1, a2             #; a1  = 8, a2  = 0x80002c88, (wrb) a1  <-- 0x80002c90
       0     6819        M 0x80000a48 lw      a3, 0(a1)              #; a1  = 0x80002c90, a3  <~~ Word[0x80002c90]
       0     6820        M 0x80000a4c li      a1, 1                  #; (wrb) a1  <-- 1
       0     6829        M 0x80000a50 li      a2, 256                #; (wrb) a2  <-- 256
       0     6830        M                                           #; (lsu) a3  <-- 0x80000a78
       0     6831        M 0x80000a54 jr      a3                     #; a3  = 0x80000a78, goto 0x80000a78
       0     6852        M 0x80000a78 lbu     a0, 1(s10)             #; s10 = 0x80002c3b, a0  <~~ Byte[0x80002c3c]
       0     6853        M 0x80000a7c li      a1, 108                #; (wrb) a1  <-- 108
       0     6863        M                                           #; (lsu) a0  <-- 117
       0     6864        M 0x80000a80 bne     a0, a1, pc + 272       #; a0  = 117, a1  = 108, taken, goto 0x80000b90
       0     6887        M 0x80000b90 ori     s0, s0, 256            #; s0  = 0, (wrb) s0  <-- 256
       0     6888        M 0x80000b94 addi    s10, s10, 1            #; s10 = 0x80002c3b, (wrb) s10 <-- 0x80002c3c
       0     6889        M 0x80000b98 j       pc - 0x100             #; goto 0x80000a98
       0     6890        M 0x80000a98 addi    a1, a0, -37            #; a0  = 117, (wrb) a1  <-- 80
       0     6891        M 0x80000a9c li      a2, 83                 #; (wrb) a2  <-- 83
       0     6902        M 0x80000aa0 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 80, not taken
       0     6903        M 0x80000aa4 slli    a1, a1, 2              #; a1  = 80, (wrb) a1  <-- 320
       0     6904        M 0x80000aa8 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002aa8
       0     6905        M 0x80000aac addi    a2, a2, 520            #; a2  = 0x80002aa8, (wrb) a2  <-- 0x80002cb0
       0     6914        M 0x80000ab0 add     a1, a1, a2             #; a1  = 320, a2  = 0x80002cb0, (wrb) a1  <-- 0x80002df0
       0     6915        M 0x80000ab4 lw      a2, 0(a1)              #; a1  = 0x80002df0, a2  <~~ Word[0x80002df0]
       0     6916        M 0x80000ab8 li      a1, 8                  #; (wrb) a1  <-- 8
       0     6917        M 0x80000abc li      s8, 16                 #; (wrb) s8  <-- 16
       0     6926        M                                           #; (lsu) a2  <-- 0x80000ac4
       0     6927        M 0x80000ac0 jr      a2                     #; a2  = 0x80000ac4
       0     6928        M 0x80000ac4 andi    s0, s0, -17            #; s0  = 256, (wrb) s0  <-- 256
       0     6929        M 0x80000ac8 li      s8, 10                 #; (wrb) s8  <-- 10
       0     6930        M 0x80000acc li      a1, 88                 #; (wrb) a1  <-- 88
       0     6938        M 0x80000ad0 bne     a0, a1, pc + 8         #; a0  = 117, a1  = 88, taken, goto 0x80000ad8
       0     6939        M 0x80000ad8 li      a1, 100                #; (wrb) a1  <-- 100
       0     6940        M 0x80000adc beq     a0, a1, pc + 240       #; a0  = 117, a1  = 100, not taken
       0     6950        M 0x80000ae0 mv      a1, s8                 #; s8  = 10, (wrb) a1  <-- 10
       0     6951        M 0x80000ae4 li      a2, 105                #; (wrb) a2  <-- 105
       0     6952        M 0x80000ae8 beq     a0, a2, pc + 228       #; a0  = 117, a2  = 105, not taken
       0     6953        M 0x80000aec j       pc + 0xd8              #; goto 0x80000bc4
       0     6962        M 0x80000bc4 andi    s0, s0, -13            #; s0  = 256, (wrb) s0  <-- 256
       0     6963        M 0x80000bc8 mv      s8, a1                 #; a1  = 10, (wrb) s8  <-- 10
       0     6964        M 0x80000bcc andi    a1, s0, 1024           #; s0  = 256, (wrb) a1  <-- 0
       0     6974        M 0x80000bd0 beqz    a1, pc + 8             #; a1  = 0, taken, goto 0x80000bd8
       0     6975        M 0x80000bd8 li      a1, 105                #; (wrb) a1  <-- 105
       0     6976        M 0x80000bdc beq     a0, a1, pc + 12        #; a0  = 117, a1  = 105, not taken
       0     6986        M 0x80000be0 li      a1, 100                #; (wrb) a1  <-- 100
       0     6987        M 0x80000be4 bne     a0, a1, pc + 312       #; a0  = 117, a1  = 100, taken, goto 0x80000d1c
       0     7009        M 0x80000d1c andi    a0, s0, 512            #; s0  = 256, (wrb) a0  <-- 0
       0     7021        M 0x80000d20 bnez    a0, pc + 196           #; a0  = 0, not taken
       0     7022        M 0x80000d24 andi    a0, s0, 256            #; s0  = 256, (wrb) a0  <-- 256
       0     7023        M 0x80000d28 bnez    a0, pc + 1148          #; a0  = 256, taken, goto 0x800011a4
       0     7044        M 0x800011a4 lw      a0, 0(s3)              #; s3  = 0x0011ff24, a0  <~~ Word[0x0011ff24]
       0     7047        M                                           #; (lsu) a0  <-- 701
       0     7048        M 0x800011a8 bnez    a0, pc + 8             #; a0  = 701, taken, goto 0x800011b0
       0     7056        M 0x800011b0 seqz    a1, a0                 #; a0  = 701, (wrb) a1  <-- 0
       0     7057        M 0x800011b4 andi    a2, s0, 1024           #; s0  = 256, (wrb) a2  <-- 0
       0     7058        M 0x800011b8 srli    a2, a2, 10             #; a2  = 0, (wrb) a2  <-- 0
       0     7059        M 0x800011bc and     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     7068        M 0x800011c0 li      a5, 0                  #; (wrb) a5  <-- 0
       0     7069        M 0x800011c4 bnez    a1, pc + 248           #; a1  = 0, not taken
       0     7070        M 0x800011c8 li      a2, 0                  #; (wrb) a2  <-- 0
       0     7071        M 0x800011cc andi    a1, s0, 32             #; s0  = 256, (wrb) a1  <-- 0
       0     7080        M 0x800011d0 xori    a1, a1, 97             #; a1  = 0, (wrb) a1  <-- 97
       0     7081        M 0x800011d4 addi    a6, a1, 246            #; a1  = 97, (wrb) a6  <-- 343
       0     7082        M 0x800011d8 j       pc + 0x34              #; goto 0x8000120c
       0     7092        M 0x8000120c divu    a3, a0, s8             #; a0  = 701, s8  = 10
       0     7104        M 0x80001210 mul     a4, a3, s8             #; a3  = 70, s8  = 10
       0     7107        M                                           #; (acc) a4  <-- 0x40e50733
       0     7108        M 0x80001214 sub     a4, a0, a4             #; a0  = 701, a4  = 700, (wrb) a4  <-- 1
       0     7109        M 0x80001218 andi    s1, a4, 254            #; a4  = 1, (wrb) s1  <-- 0
       0     7110        M 0x8000121c li      a5, 48                 #; (wrb) a5  <-- 48
       0     7116        M 0x80001220 li      a1, 10                 #; (wrb) a1  <-- 10
       0     7117        M 0x80001224 bltu    s1, a1, pc - 72        #; s1  = 0, a1  = 10, taken, goto 0x800011dc
       0     7118        M 0x800011dc add     a4, a5, a4             #; a5  = 48, a4  = 1, (wrb) a4  <-- 49
       0     7130        M 0x800011e0 addi    a5, a2, 1              #; a2  = 0, (wrb) a5  <-- 1
       0     7131        M 0x800011e4 addi    a1, sp, 28             #; sp  = 0x0011fea0, (wrb) a1  <-- 0x0011febc
       0     7132        M 0x800011e8 add     s1, a1, a2             #; a1  = 0x0011febc, a2  = 0, (wrb) s1  <-- 0x0011febc
       0     7133        M 0x800011ec sltu    a0, a0, s8             #; a0  = 701, s8  = 10, (wrb) a0  <-- 0
       0     7142        M 0x800011f0 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     7143        M 0x800011f4 sltiu   a2, a2, 31             #; a2  = 0, (wrb) a2  <-- 1
       0     7144        M 0x800011f8 and     a1, a2, a0             #; a2  = 1, a0  = 1, (wrb) a1  <-- 1
       0     7145        M 0x800011fc sb      a4, 0(s1)              #; s1  = 0x0011febc, 49 ~~> Byte[0x0011febc]
       0     7146        M 0x80001200 mv      a2, a5                 #; a5  = 1, (wrb) a2  <-- 1
       0     7147        M 0x80001204 mv      a0, a3                 #; a3  = 70, (wrb) a0  <-- 70
       0     7148        M 0x80001208 beqz    a1, pc + 180           #; a1  = 1, not taken
       0     7149        M 0x8000120c divu    a3, a0, s8             #; a0  = 70, s8  = 10
       0     7156        M                                           #; (acc) a4  <-- 0x03868733
       0     7157        M 0x80001210 mul     a4, a3, s8             #; a3  = 7, s8  = 10
       0     7160        M                                           #; (acc) a4  <-- 0x40e50733
       0     7161        M 0x80001214 sub     a4, a0, a4             #; a0  = 70, a4  = 70, (wrb) a4  <-- 0
       0     7162        M 0x80001218 andi    s1, a4, 254            #; a4  = 0, (wrb) s1  <-- 0
       0     7163        M 0x8000121c li      a5, 48                 #; (wrb) a5  <-- 48
       0     7164        M 0x80001220 li      a1, 10                 #; (wrb) a1  <-- 10
       0     7165        M 0x80001224 bltu    s1, a1, pc - 72        #; s1  = 0, a1  = 10, taken, goto 0x800011dc
       0     7166        M 0x800011dc add     a4, a5, a4             #; a5  = 48, a4  = 0, (wrb) a4  <-- 48
       0     7167        M 0x800011e0 addi    a5, a2, 1              #; a2  = 1, (wrb) a5  <-- 2
       0     7168        M 0x800011e4 addi    a1, sp, 28             #; sp  = 0x0011fea0, (wrb) a1  <-- 0x0011febc
       0     7169        M 0x800011e8 add     s1, a1, a2             #; a1  = 0x0011febc, a2  = 1, (wrb) s1  <-- 0x0011febd
       0     7170        M 0x800011ec sltu    a0, a0, s8             #; a0  = 70, s8  = 10, (wrb) a0  <-- 0
       0     7171        M 0x800011f0 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     7172        M 0x800011f4 sltiu   a2, a2, 31             #; a2  = 1, (wrb) a2  <-- 1
       0     7173        M 0x800011f8 and     a1, a2, a0             #; a2  = 1, a0  = 1, (wrb) a1  <-- 1
       0     7174        M 0x800011fc sb      a4, 0(s1)              #; s1  = 0x0011febd, 48 ~~> Byte[0x0011febd]
       0     7175        M 0x80001200 mv      a2, a5                 #; a5  = 2, (wrb) a2  <-- 2
       0     7176        M 0x80001204 mv      a0, a3                 #; a3  = 7, (wrb) a0  <-- 7
       0     7177        M 0x80001208 beqz    a1, pc + 180           #; a1  = 1, not taken
       0     7178        M 0x8000120c divu    a3, a0, s8             #; a0  = 7, s8  = 10
       0     7181        M                                           #; (acc) a4  <-- 0x03868733
       0     7182        M 0x80001210 mul     a4, a3, s8             #; a3  = 0, s8  = 10
       0     7185        M                                           #; (acc) a4  <-- 0x40e50733
       0     7186        M 0x80001214 sub     a4, a0, a4             #; a0  = 7, a4  = 0, (wrb) a4  <-- 7
       0     7187        M 0x80001218 andi    s1, a4, 254            #; a4  = 7, (wrb) s1  <-- 6
       0     7188        M 0x8000121c li      a5, 48                 #; (wrb) a5  <-- 48
       0     7189        M 0x80001220 li      a1, 10                 #; (wrb) a1  <-- 10
       0     7190        M 0x80001224 bltu    s1, a1, pc - 72        #; s1  = 6, a1  = 10, taken, goto 0x800011dc
       0     7191        M 0x800011dc add     a4, a5, a4             #; a5  = 48, a4  = 7, (wrb) a4  <-- 55
       0     7192        M 0x800011e0 addi    a5, a2, 1              #; a2  = 2, (wrb) a5  <-- 3
       0     7193        M 0x800011e4 addi    a1, sp, 28             #; sp  = 0x0011fea0, (wrb) a1  <-- 0x0011febc
       0     7194        M 0x800011e8 add     s1, a1, a2             #; a1  = 0x0011febc, a2  = 2, (wrb) s1  <-- 0x0011febe
       0     7195        M 0x800011ec sltu    a0, a0, s8             #; a0  = 7, s8  = 10, (wrb) a0  <-- 1
       0     7196        M 0x800011f0 xori    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 0
       0     7197        M 0x800011f4 sltiu   a2, a2, 31             #; a2  = 2, (wrb) a2  <-- 1
       0     7198        M 0x800011f8 and     a1, a2, a0             #; a2  = 1, a0  = 0, (wrb) a1  <-- 0
       0     7199        M 0x800011fc sb      a4, 0(s1)              #; s1  = 0x0011febe, 55 ~~> Byte[0x0011febe]
       0     7200        M 0x80001200 mv      a2, a5                 #; a5  = 3, (wrb) a2  <-- 3
       0     7201        M 0x80001204 mv      a0, a3                 #; a3  = 0, (wrb) a0  <-- 0
       0     7202        M 0x80001208 beqz    a1, pc + 180           #; a1  = 0, taken, goto 0x800012bc
       0     7214        M 0x800012bc addi    s3, s3, 4              #; s3  = 0x0011ff24, (wrb) s3  <-- 0x0011ff28
       0     7226        M 0x800012c0 addi    a4, sp, 28             #; sp  = 0x0011fea0, (wrb) a4  <-- 0x0011febc
       0     7227        M 0x800012c4 mv      a0, s2                 #; s2  = 0x80001400, (wrb) a0  <-- 0x80001400
       0     7228        M 0x800012c8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7229        M 0x800012cc mv      a2, s9                 #; s9  = 9, (wrb) a2  <-- 9
       0     7238        M 0x800012d0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     7239        M 0x800012d4 li      a6, 0                  #; (wrb) a6  <-- 0
       0     7240        M 0x800012d8 mv      a7, s8                 #; s8  = 10, (wrb) a7  <-- 10
       0     7241        M 0x800012dc mv      t2, s7                 #; s7  = 0, (wrb) t2  <-- 0
       0     7250        M 0x800012e0 mv      t3, s6                 #; s6  = 0, (wrb) t3  <-- 0
       0     7251        M 0x800012e4 mv      t4, s0                 #; s0  = 256, (wrb) t4  <-- 256
       0     7252        M 0x800012e8 auipc   ra, 0x1                #; (wrb) ra  <-- 0x800022e8
       0     7253        M 0x800012ec jalr    ra, ra, -620           #; ra  = 0x800022e8, (wrb) ra  <-- 0x800012f0, goto 0x8000207c
       0     7273        M 0x8000207c addi    sp, sp, -64            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe60
       0     7285        M 0x80002080 sw      ra, 60(sp)             #; sp  = 0x0011fe60, 0x800012f0 ~~> Word[0x0011fe9c]
       0     7286        M 0x80002084 sw      s0, 56(sp)             #; sp  = 0x0011fe60, 256 ~~> Word[0x0011fe98]
       0     7287        M 0x80002088 sw      s1, 52(sp)             #; sp  = 0x0011fe60, 0x0011febe ~~> Word[0x0011fe94]
       0     7288        M 0x8000208c sw      s2, 48(sp)             #; sp  = 0x0011fe60, 0x80001400 ~~> Word[0x0011fe90]
       0     7297        M 0x80002090 sw      s3, 44(sp)             #; sp  = 0x0011fe60, 0x0011ff28 ~~> Word[0x0011fe8c]
       0     7298        M 0x80002094 sw      s4, 40(sp)             #; sp  = 0x0011fe60, 0x0011ff17 ~~> Word[0x0011fe88]
       0     7299        M 0x80002098 sw      s5, 36(sp)             #; sp  = 0x0011fe60, -1 ~~> Word[0x0011fe84]
       0     7300        M 0x8000209c sw      s6, 32(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fe80]
       0     7309        M 0x800020a0 sw      s7, 28(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fe7c]
       0     7310        M 0x800020a4 sw      s8, 24(sp)             #; sp  = 0x0011fe60, 10 ~~> Word[0x0011fe78]
       0     7311        M 0x800020a8 sw      s9, 20(sp)             #; sp  = 0x0011fe60, 9 ~~> Word[0x0011fe74]
       0     7312        M 0x800020ac sw      s10, 16(sp)            #; sp  = 0x0011fe60, 0x80002c3c ~~> Word[0x0011fe70]
       0     7321        M 0x800020b0 sw      s11, 12(sp)            #; sp  = 0x0011fe60, 16 ~~> Word[0x0011fe6c]
       0     7322        M 0x800020b4 mv      s7, t4                 #; t4  = 256, (wrb) s7  <-- 256
       0     7323        M 0x800020b8 andi    s5, t4, 2              #; t4  = 256, (wrb) s5  <-- 0
       0     7324        M 0x800020bc mv      s2, t3                 #; t3  = 0, (wrb) s2  <-- 0
       0     7333        M 0x800020c0 mv      s10, t2                #; t2  = 0, (wrb) s10 <-- 0
       0     7334        M 0x800020c4 mv      s9, a7                 #; a7  = 10, (wrb) s9  <-- 10
       0     7335        M 0x800020c8 mv      s8, a5                 #; a5  = 3, (wrb) s8  <-- 3
       0     7336        M 0x800020cc mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
       0     7345        M 0x800020d0 mv      s4, a2                 #; a2  = 9, (wrb) s4  <-- 9
       0     7346        M 0x800020d4 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     7347        M 0x800020d8 mv      s11, a0                #; a0  = 0x80001400, (wrb) s11 <-- 0x80001400
       0     7348        M 0x800020dc sw      a4, 8(sp)              #; sp  = 0x0011fe60, 0x0011febc ~~> Word[0x0011fe68]
       0     7357        M 0x800020e0 bnez    s5, pc + 220           #; s5  = 0, not taken
       0     7358        M 0x800020e4 andi    s0, s7, 1              #; s7  = 256, (wrb) s0  <-- 0
       0     7359        M 0x800020e8 beqz    s2, pc + 28            #; s2  = 0, taken, goto 0x80002104
       0     7380        M 0x80002104 li      s2, 0                  #; (wrb) s2  <-- 0
       0     7381        M 0x80002108 sltu    a0, s8, s10            #; s8  = 3, s10 = 0, (wrb) a0  <-- 0
       0     7382        M 0x8000210c xori    a1, a0, 1              #; a0  = 0, (wrb) a1  <-- 1
       0     7392        M 0x80002110 li      a0, 31                 #; (wrb) a0  <-- 31
       0     7393        M 0x80002114 sltu    a2, a0, s8             #; a0  = 31, s8  = 3, (wrb) a2  <-- 0
       0     7394        M 0x80002118 or      a1, a2, a1             #; a2  = 0, a1  = 1, (wrb) a1  <-- 1
       0     7395        M 0x8000211c bnez    a1, pc + 72            #; a1  = 1, taken, goto 0x80002164
       0     7415        M 0x80002164 beqz    s0, pc + 88            #; s0  = 0, taken, goto 0x800021bc
       0     7438        M 0x800021bc andi    a0, s7, 16             #; s7  = 256, (wrb) a0  <-- 0
       0     7450        M 0x800021c0 beqz    a0, pc + 228           #; a0  = 0, taken, goto 0x800022a4
       0     7473        M 0x800022a4 li      a0, 31                 #; (wrb) a0  <-- 31
       0     7474        M 0x800022a8 bltu    a0, s8, pc + 72        #; a0  = 31, s8  = 3, not taken
       0     7475        M 0x800022ac beqz    a6, pc + 20            #; a6  = 0, taken, goto 0x800022c0
       0     7496        M 0x800022c0 andi    a0, s7, 4              #; s7  = 256, (wrb) a0  <-- 0
       0     7497        M 0x800022c4 bnez    a0, pc + 28            #; a0  = 0, not taken
       0     7498        M 0x800022c8 andi    a0, s7, 8              #; s7  = 256, (wrb) a0  <-- 0
       0     7499        M 0x800022cc beqz    a0, pc + 36            #; a0  = 0, taken, goto 0x800022f0
       0     7519        M 0x800022f0 andi    a0, s7, 3              #; s7  = 256, (wrb) a0  <-- 0
       0     7520        M 0x800022f4 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     7521        M 0x800022f8 sltu    a1, s8, s2             #; s8  = 3, s2  = 0, (wrb) a1  <-- 0
       0     7522        M 0x800022fc xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     7531        M 0x80002300 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     7532        M 0x80002304 mv      s0, s4                 #; s4  = 9, (wrb) s0  <-- 9
       0     7533        M 0x80002308 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80002334
       0     7554        M 0x80002334 snez    s5, s5                 #; s5  = 0, (wrb) s5  <-- 0
       0     7555        M 0x80002338 beqz    s8, pc + 60            #; s8  = 3, not taken
       0     7556        M 0x8000233c lw      a0, 8(sp)              #; sp  = 0x0011fe60, a0  <~~ Word[0x0011fe68]
       0     7559        M                                           #; (lsu) a0  <-- 0x0011febc
       0     7566        M 0x80002340 addi    s7, a0, -1             #; a0  = 0x0011febc, (wrb) s7  <-- 0x0011febb
       0     7567        M 0x80002344 add     a0, s7, s8             #; s7  = 0x0011febb, s8  = 3, (wrb) a0  <-- 0x0011febe
       0     7568        M 0x80002348 lbu     a0, 0(a0)              #; a0  = 0x0011febe, a0  <~~ Byte[0x0011febe]
       0     7569        M 0x8000234c addi    s9, s8, -1             #; s8  = 3, (wrb) s9  <-- 2
       0     7571        M                                           #; (lsu) a0  <-- 55
       0     7578        M 0x80002350 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     7579        M 0x80002354 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7580        M 0x80002358 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     7581        M 0x8000235c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7590        M 0x80002360 jalr    s11                    #; s11 = 0x80001400, (wrb) ra  <-- 0x80002364, goto 0x80001400
       0     7593        M 0x80001400 beqz    a0, pc + 168           #; a0  = 55, not taken
       0     7594        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7595        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7596        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7597        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0     7598        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0     7599        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7600        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     7601        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     7612        M                                           #; (lsu) a4  <-- 9
       0     7613        M 0x80001420 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     7614        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 10 ~~> Word[0x80002f94]
       0     7615        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 9, (wrb) a4  <-- 0x80002f9d
       0     7616        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002f9d, 55 ~~> Byte[0x80002fe5]
       0     7617        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     7638        M                                           #; (lsu) a4  <-- 10
       0     7639        M 0x80001434 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     7640        M 0x80001438 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     7641        M 0x8000143c addi    a0, a0, -10            #; a0  = 55, (wrb) a0  <-- 45
       0     7642        M 0x80001440 snez    a0, a0                 #; a0  = 45, (wrb) a0  <-- 1
       0     7643        M 0x80001444 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7644        M 0x80001448 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014a8
       0     7647        M 0x800014a8 ret                            #; ra  = 0x80002364, goto 0x80002364
       0     7652        M 0x80002364 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     7653        M 0x80002368 mv      s8, s9                 #; s9  = 2, (wrb) s8  <-- 2
       0     7654        M 0x8000236c bnez    s9, pc - 40            #; s9  = 2, taken, goto 0x80002344
       0     7655        M 0x80002344 add     a0, s7, s8             #; s7  = 0x0011febb, s8  = 2, (wrb) a0  <-- 0x0011febd
       0     7656        M 0x80002348 lbu     a0, 0(a0)              #; a0  = 0x0011febd, a0  <~~ Byte[0x0011febd]
       0     7657        M 0x8000234c addi    s9, s8, -1             #; s8  = 2, (wrb) s9  <-- 1
       0     7658        M 0x80002350 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     7659        M 0x80002354 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7660        M 0x80002358 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     7661        M 0x8000235c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7662        M 0x80002360 jalr    s11                    #; s11 = 0x80001400, (wrb) ra  <-- 0x80002364, goto 0x80001400
       0     7663        M                                           #; (lsu) a0  <-- 48
       0     7665        M 0x80001400 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7666        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7667        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7668        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7669        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0     7670        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0     7671        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7672        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     7673        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     7684        M                                           #; (lsu) a4  <-- 10
       0     7685        M 0x80001420 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     7686        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 11 ~~> Word[0x80002f94]
       0     7687        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 10, (wrb) a4  <-- 0x80002f9e
       0     7688        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002f9e, 48 ~~> Byte[0x80002fe6]
       0     7689        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     7710        M                                           #; (lsu) a4  <-- 11
       0     7711        M 0x80001434 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     7712        M 0x80001438 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     7713        M 0x8000143c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7714        M 0x80001440 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7715        M 0x80001444 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7716        M 0x80001448 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014a8
       0     7719        M 0x800014a8 ret                            #; ra  = 0x80002364, goto 0x80002364
       0     7724        M 0x80002364 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     7725        M 0x80002368 mv      s8, s9                 #; s9  = 1, (wrb) s8  <-- 1
       0     7726        M 0x8000236c bnez    s9, pc - 40            #; s9  = 1, taken, goto 0x80002344
       0     7727        M 0x80002344 add     a0, s7, s8             #; s7  = 0x0011febb, s8  = 1, (wrb) a0  <-- 0x0011febc
       0     7728        M 0x80002348 lbu     a0, 0(a0)              #; a0  = 0x0011febc, a0  <~~ Byte[0x0011febc]
       0     7729        M 0x8000234c addi    s9, s8, -1             #; s8  = 1, (wrb) s9  <-- 0
       0     7730        M 0x80002350 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     7731        M 0x80002354 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7732        M 0x80002358 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     7733        M 0x8000235c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7734        M 0x80002360 jalr    s11                    #; s11 = 0x80001400, (wrb) ra  <-- 0x80002364, goto 0x80001400
       0     7735        M                                           #; (lsu) a0  <-- 49
       0     7737        M 0x80001400 beqz    a0, pc + 168           #; a0  = 49, not taken
       0     7738        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7739        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7740        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7741        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0     7742        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0     7743        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7744        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     7745        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     7756        M                                           #; (lsu) a4  <-- 11
       0     7757        M 0x80001420 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     7758        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 12 ~~> Word[0x80002f94]
       0     7759        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 11, (wrb) a4  <-- 0x80002f9f
       0     7760        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002f9f, 49 ~~> Byte[0x80002fe7]
       0     7761        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     7782        M                                           #; (lsu) a4  <-- 12
       0     7783        M 0x80001434 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     7784        M 0x80001438 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     7785        M 0x8000143c addi    a0, a0, -10            #; a0  = 49, (wrb) a0  <-- 39
       0     7786        M 0x80001440 snez    a0, a0                 #; a0  = 39, (wrb) a0  <-- 1
       0     7787        M 0x80001444 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7788        M 0x80001448 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014a8
       0     7791        M 0x800014a8 ret                            #; ra  = 0x80002364, goto 0x80002364
       0     7796        M 0x80002364 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     7797        M 0x80002368 mv      s8, s9                 #; s9  = 0, (wrb) s8  <-- 0
       0     7798        M 0x8000236c bnez    s9, pc - 40            #; s9  = 0, not taken
       0     7810        M 0x80002370 j       pc + 0x8               #; goto 0x80002378
       0     7811        M 0x80002378 sub     a0, s1, s4             #; s1  = 12, s4  = 9, (wrb) a0  <-- 3
       0     7812        M 0x8000237c sltu    a0, a0, s2             #; a0  = 3, s2  = 0, (wrb) a0  <-- 0
       0     7823        M 0x80002380 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     7824        M 0x80002384 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     7825        M 0x80002388 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     7826        M 0x8000238c bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x800023bc
       0     7846        M 0x800023bc mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     7858        M 0x800023c0 mv      a0, s0                 #; s0  = 12, (wrb) a0  <-- 12
       0     7859        M 0x800023c4 lw      s11, 12(sp)            #; sp  = 0x0011fe60, s11 <~~ Word[0x0011fe6c]
       0     7862        M                                           #; (lsu) s11 <-- 16
       0     7863        M 0x800023c8 lw      s10, 16(sp)            #; sp  = 0x0011fe60, s10 <~~ Word[0x0011fe70]
       0     7866        M                                           #; (lsu) s10 <-- 0x80002c3c
       0     7867        M 0x800023cc lw      s9, 20(sp)             #; sp  = 0x0011fe60, s9  <~~ Word[0x0011fe74]
       0     7870        M                                           #; (lsu) s9  <-- 9
       0     7871        M 0x800023d0 lw      s8, 24(sp)             #; sp  = 0x0011fe60, s8  <~~ Word[0x0011fe78]
       0     7874        M                                           #; (lsu) s8  <-- 10
       0     7875        M 0x800023d4 lw      s7, 28(sp)             #; sp  = 0x0011fe60, s7  <~~ Word[0x0011fe7c]
       0     7878        M                                           #; (lsu) s7  <-- 0
       0     7879        M 0x800023d8 lw      s6, 32(sp)             #; sp  = 0x0011fe60, s6  <~~ Word[0x0011fe80]
       0     7882        M                                           #; (lsu) s6  <-- 0
       0     7883        M 0x800023dc lw      s5, 36(sp)             #; sp  = 0x0011fe60, s5  <~~ Word[0x0011fe84]
       0     7886        M                                           #; (lsu) s5  <-- -1
       0     7887        M 0x800023e0 lw      s4, 40(sp)             #; sp  = 0x0011fe60, s4  <~~ Word[0x0011fe88]
       0     7890        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     7891        M 0x800023e4 lw      s3, 44(sp)             #; sp  = 0x0011fe60, s3  <~~ Word[0x0011fe8c]
       0     7894        M                                           #; (lsu) s3  <-- 0x0011ff28
       0     7895        M 0x800023e8 lw      s2, 48(sp)             #; sp  = 0x0011fe60, s2  <~~ Word[0x0011fe90]
       0     7898        M                                           #; (lsu) s2  <-- 0x80001400
       0     7899        M 0x800023ec lw      s1, 52(sp)             #; sp  = 0x0011fe60, s1  <~~ Word[0x0011fe94]
       0     7902        M                                           #; (lsu) s1  <-- 0x0011febe
       0     7903        M 0x800023f0 lw      s0, 56(sp)             #; sp  = 0x0011fe60, s0  <~~ Word[0x0011fe98]
       0     7906        M                                           #; (lsu) s0  <-- 256
       0     7907        M 0x800023f4 lw      ra, 60(sp)             #; sp  = 0x0011fe60, ra  <~~ Word[0x0011fe9c]
       0     7908        M 0x800023f8 addi    sp, sp, 64             #; sp  = 0x0011fe60, (wrb) sp  <-- 0x0011fea0
       0     7910        M                                           #; (lsu) ra  <-- 0x800012f0
       0     7911        M 0x800023fc ret                            #; ra  = 0x800012f0, goto 0x800012f0
       0     7923        M 0x800012f0 mv      s8, a0                 #; a0  = 12, (wrb) s8  <-- 12
       0     7924        M 0x800012f4 li      s6, 37                 #; (wrb) s6  <-- 37
       0     7925        M 0x800012f8 li      s7, 46                 #; (wrb) s7  <-- 46
       0     7926        M 0x800012fc addi    s0, s10, 1             #; s10 = 0x80002c3c, (wrb) s0  <-- 0x80002c3d
       0     7935        M 0x80001300 j       pc - 0xa74             #; goto 0x8000088c
       0     7938        M 0x8000088c addi    s10, s0, 2             #; s0  = 0x80002c3d, (wrb) s10 <-- 0x80002c3f
       0     7941        M 0x80000890 mv      s9, s8                 #; s8  = 12, (wrb) s9  <-- 12
       0     7942        M 0x80000894 li      s8, 10                 #; (wrb) s8  <-- 10
       0     7943        M 0x80000898 lbu     a0, 0(s0)              #; s0  = 0x80002c3d, a0  <~~ Byte[0x80002c3d]
       0     7954        M                                           #; (lsu) a0  <-- 10
       0     7955        M 0x8000089c beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     7956        M 0x800008a0 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     7957        M 0x800008a4 addi    s1, s9, 1              #; s9  = 12, (wrb) s1  <-- 13
       0     7958        M 0x800008a8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7959        M 0x800008ac mv      a2, s9                 #; s9  = 12, (wrb) a2  <-- 12
       0     7960        M 0x800008b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     7961        M 0x800008b4 jalr    s2                     #; s2  = 0x80001400, (wrb) ra  <-- 0x800008b8, goto 0x80001400
       0     7975        M 0x80001400 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     7976        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7977        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7978        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7979        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0     7980        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0     7981        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7982        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     7983        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     7994        M                                           #; (lsu) a4  <-- 12
       0     7995        M 0x80001420 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     7996        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 13 ~~> Word[0x80002f94]
       0     7997        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 12, (wrb) a4  <-- 0x80002fa0
       0     7998        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002fa0, 10 ~~> Byte[0x80002fe8]
       0     7999        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8020        M                                           #; (lsu) a4  <-- 13
       0     8021        M 0x80001434 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     8022        M 0x80001438 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     8023        M 0x8000143c addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     8024        M 0x80001440 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     8025        M 0x80001444 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     8026        M 0x80001448 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     8027        M 0x8000144c add     a0, a3, a2             #; a3  = 0x80002f94, a2  = 0, (wrb) a0  <-- 0x80002f94
       0     8028        M 0x80001450 addi    a2, a0, 72             #; a0  = 0x80002f94, (wrb) a2  <-- 0x80002fdc
       0     8029        M 0x80001454 sw      zero, 12(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fa0]
       0     8030        M 0x80001458 li      a3, 64                 #; (wrb) a3  <-- 64
       0     8031        M 0x8000145c sw      a3, 8(a0)              #; a0  = 0x80002f94, 64 ~~> Word[0x80002f9c]
       0     8040        M 0x80001460 sw      zero, 20(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fa8]
       0     8041        M 0x80001464 li      a3, 1                  #; (wrb) a3  <-- 1
       0     8042        M 0x80001468 sw      a3, 16(a0)             #; a0  = 0x80002f94, 1 ~~> Word[0x80002fa4]
       0     8043        M 0x8000146c sw      zero, 28(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fb0]
       0     8052        M 0x80001470 sw      a2, 24(a0)             #; a0  = 0x80002f94, 0x80002fdc ~~> Word[0x80002fac]
       0     8055        M 0x80001474 lw      a2, 0(a1)              #; a1  = 0x80002f94, a2  <~~ Word[0x80002f94]
       0     8056        M 0x80001478 addi    a3, a0, 8              #; a0  = 0x80002f94, (wrb) a3  <-- 0x80002f9c
       0     8057        M 0x8000147c sw      zero, 36(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fb8]
       0     8077        M                                           #; (lsu) a2  <-- 13
       0     8078        M 0x80001480 sw      a2, 32(a0)             #; a0  = 0x80002f94, 13 ~~> Word[0x80002fb4]
       0     8079        M 0x80001484 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003484
       0     8080        M 0x80001488 addi    a0, a0, -1540          #; a0  = 0x80003484, (wrb) a0  <-- 0x80002e80
       0     8081        M 0x8000148c sw      a3, 0(a0)              #; a0  = 0x80002e80, 0x80002f9c ~~> Word[0x80002e80]
       0     8082        M 0x80001490 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003490
       0     8083        M 0x80001494 addi    a0, a0, -1488          #; a0  = 0x80003490, (wrb) a0  <-- 0x80002ec0
       0     8084        M 0x80001498 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
       0     8107        M                                           #; (lsu) a2  <-- 1
       0     8108        M 0x8000149c beqz    a2, pc - 4             #; a2  = 1, not taken
       0     8111        M 0x800014a0 sw      zero, 0(a0)            #; a0  = 0x80002ec0, 0 ~~> Word[0x80002ec0]
       0     8112        M 0x800014a4 sw      zero, 0(a1)            #; a1  = 0x80002f94, 0 ~~> Word[0x80002f94]
       0     8113        M 0x800014a8 ret                            #; ra  = 0x800008b8, goto 0x800008b8
       0     8116        M 0x800008b8 addi    s0, s0, 1              #; s0  = 0x80002c3d, (wrb) s0  <-- 0x80002c3e
       0     8117        M 0x800008bc addi    s10, s10, 1            #; s10 = 0x80002c3f, (wrb) s10 <-- 0x80002c40
       0     8119        M 0x800008c0 mv      s9, s1                 #; s1  = 13, (wrb) s9  <-- 13
       0     8120        M 0x800008c4 lbu     a0, 0(s0)              #; s0  = 0x80002c3e, a0  <~~ Byte[0x80002c3e]
       0     8134        M                                           #; (lsu) a0  <-- 0
       0     8135        M 0x800008c8 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     8136        M 0x800008cc j       pc + 0xad8             #; goto 0x800013a4
       0     8148        M 0x800013a4 mv      a2, s9                 #; s9  = 13, (wrb) a2  <-- 13
       0     8149        M 0x800013a8 bltu    s9, s5, pc + 8         #; s9  = 13, s5  = -1, taken, goto 0x800013b0
       0     8160        M 0x800013b0 li      a0, 0                  #; (wrb) a0  <-- 0
       0     8161        M 0x800013b4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8162        M 0x800013b8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8163        M 0x800013bc jalr    s2                     #; s2  = 0x80001400, (wrb) ra  <-- 0x800013c0, goto 0x80001400
       0     8174        M 0x80001400 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800014a8
       0     8179        M 0x800014a8 ret                            #; ra  = 0x800013c0, goto 0x800013c0
       0     8180        M 0x800013c0 mv      a0, s9                 #; s9  = 13, (wrb) a0  <-- 13
       0     8181        M 0x800013c4 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     8184        M                                           #; (lsu) s11 <-- 0
       0     8185        M 0x800013c8 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     8188        M                                           #; (lsu) s10 <-- 0
       0     8189        M 0x800013cc lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     8192        M                                           #; (lsu) s9  <-- 0
       0     8194        M 0x800013d0 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     8197        M                                           #; (lsu) s8  <-- 0
       0     8198        M 0x800013d4 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     8201        M                                           #; (lsu) s7  <-- 0
       0     8202        M 0x800013d8 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     8205        M                                           #; (lsu) s6  <-- 0
       0     8206        M 0x800013dc lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     8209        M                                           #; (lsu) s5  <-- 0
       0     8210        M 0x800013e0 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     8213        M                                           #; (lsu) s4  <-- 0
       0     8214        M 0x800013e4 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     8217        M                                           #; (lsu) s3  <-- 0
       0     8218        M 0x800013e8 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     8221        M                                           #; (lsu) s2  <-- 0
       0     8222        M 0x800013ec lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     8225        M                                           #; (lsu) s1  <-- 0
       0     8226        M 0x800013f0 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     8229        M                                           #; (lsu) s0  <-- 4918
       0     8230        M 0x800013f4 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     8231        M 0x800013f8 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     8233        M                                           #; (lsu) ra  <-- 0x800007fc
       0     8234        M 0x800013fc ret                            #; ra  = 0x800007fc, goto 0x800007fc
       0     8237        M 0x800007fc lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     8240        M 0x80000800 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     8241        M                                           #; (lsu) ra  <-- 0x80000758
       0     8242        M 0x80000804 ret                            #; ra  = 0x80000758, goto 0x80000758
       0     8245        M 0x80000758 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002758
       0     8246        M 0x8000075c addi    a0, a0, 1920           #; a0  = 0x80002758, (wrb) a0  <-- 0x80002ed8
       0     8250        M 0x80000760 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ed8]
       0     8259        M                                           #; (f:lsu) ft0  <-- -2850.0
       0     8260        M 0x80000770 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
                         M 0x80000764 fadd.d  ft0, fs0, ft0          #; fs0  = 2850.0, ft0  = -2850.0
       0     8263        M                                           #; (lsu) a2  <-- 0
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     8264        M 0x80000774 lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
                         M 0x80000768 fsgnjx.d fs0, ft0, ft0         #; ft0  = 0.0, ft0  = 0.0
       0     8265        M 0x80000778 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002778
                         M                                           #; (f:fpu) fs0  <-- 0.0
       0     8266        M 0x8000077c addi    a0, a0, 1197           #; a0  = 0x80002778, (wrb) a0  <-- 0x80002c25
                         M 0x8000076c fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
       0     8267        M                                           #; (lsu) a3  <-- 0
       0     8272        M 0x80000780 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000780
       0     8273        M 0x80000784 jalr    ra, ra, 44             #; ra  = 0x80000780, (wrb) ra  <-- 0x80000788, goto 0x800007ac
       0     8286        M 0x800007ac addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     8289        M 0x800007b0 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000788 ~~> Word[0x0011ff1c]
       0     8290        M 0x800007b4 mv      t0, a0                 #; a0  = 0x80002c25, (wrb) t0  <-- 0x80002c25
       0     8291        M 0x800007b8 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 10 ~~> Word[0x0011ff3c]
       0     8292        M 0x800007bc sw      a6, 40(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff38]
       0     8293        M 0x800007c0 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 13 ~~> Word[0x0011ff34]
       0     8294        M 0x800007c4 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff30]
       0     8295        M 0x800007c8 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
       0     8296        M 0x800007cc sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     8297        M 0x800007d0 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 0x0011ff17 ~~> Word[0x0011ff24]
       0     8298        M 0x800007d4 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     8299        M 0x800007d8 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     8300        M 0x800007dc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800017dc
       0     8301        M 0x800007e0 addi    a0, a0, -988           #; a0  = 0x800017dc, (wrb) a0  <-- 0x80001400
       0     8302        M 0x800007e4 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     8303        M 0x800007e8 li      a2, -1                 #; (wrb) a2  <-- -1
       0     8304        M 0x800007ec addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     8305        M 0x800007f0 mv      a3, t0                 #; t0  = 0x80002c25, (wrb) a3  <-- 0x80002c25
       0     8306        M 0x800007f4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800007f4
       0     8307        M 0x800007f8 jalr    ra, ra, 20             #; ra  = 0x800007f4, (wrb) ra  <-- 0x800007fc, goto 0x80000808
       0     8308        M 0x80000808 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     8309        M 0x8000080c sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x800007fc ~~> Word[0x0011ff0c]
       0     8311        M 0x80000810 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 4918 ~~> Word[0x0011ff08]
       0     8312        M 0x80000814 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     8313        M 0x80000818 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     8314        M 0x8000081c sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     8315        M 0x80000820 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     8316        M 0x80000824 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     8317        M 0x80000828 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     8318        M 0x8000082c sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     8319        M 0x80000830 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     8320        M 0x80000834 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     8321        M 0x80000838 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     8322        M 0x8000083c sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     8323        M 0x80000840 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     8324        M 0x80000844 mv      s0, a3                 #; a3  = 0x80002c25, (wrb) s0  <-- 0x80002c25
       0     8325        M 0x80000848 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     8326        M 0x8000084c mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     8327        M 0x80000850 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     8328        M 0x80000854 mv      s2, a0                 #; a0  = 0x80001400, (wrb) s2  <-- 0x80001400
       0     8329        M 0x80000858 j       pc + 0xc               #; goto 0x80000864
       0     8330        M 0x80000864 li      s8, 0                  #; (wrb) s8  <-- 0
       0     8331        M 0x80000868 li      s6, 37                 #; (wrb) s6  <-- 37
       0     8332        M 0x8000086c li      s11, 16                #; (wrb) s11 <-- 16
       0     8333        M 0x80000870 li      s7, 46                 #; (wrb) s7  <-- 46
       0     8334        M 0x80000874 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     8335        M 0x80000878 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     8336        M 0x8000087c sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     8337        M 0x80000880 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     8338        M 0x80000884 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     8339        M 0x80000888 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     8340        M 0x8000088c addi    s10, s0, 2             #; s0  = 0x80002c25, (wrb) s10 <-- 0x80002c27
       0     8341        M 0x80000890 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     8342        M 0x80000894 li      s8, 10                 #; (wrb) s8  <-- 10
       0     8343        M 0x80000898 lbu     a0, 0(s0)              #; s0  = 0x80002c25, a0  <~~ Byte[0x80002c25]
       0     8354        M                                           #; (lsu) a0  <-- 101
       0     8355        M 0x8000089c beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     8356        M 0x800008a0 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     8357        M 0x800008a4 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     8358        M 0x800008a8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8359        M 0x800008ac mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     8360        M 0x800008b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8361        M 0x800008b4 jalr    s2                     #; s2  = 0x80001400, (wrb) ra  <-- 0x800008b8, goto 0x80001400
       0     8365        M 0x80001400 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     8366        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8367        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8368        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8369        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0     8370        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0     8371        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8372        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     8373        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8384        M                                           #; (lsu) a4  <-- 0
       0     8385        M 0x80001420 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     8386        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 1 ~~> Word[0x80002f94]
       0     8387        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 0, (wrb) a4  <-- 0x80002f94
       0     8388        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002f94, 101 ~~> Byte[0x80002fdc]
       0     8389        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8410        M                                           #; (lsu) a4  <-- 1
       0     8411        M 0x80001434 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     8412        M 0x80001438 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     8413        M 0x8000143c addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     8414        M 0x80001440 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     8415        M 0x80001444 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8416        M 0x80001448 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014a8
       0     8419        M 0x800014a8 ret                            #; ra  = 0x800008b8, goto 0x800008b8
       0     8424        M 0x800008b8 addi    s0, s0, 1              #; s0  = 0x80002c25, (wrb) s0  <-- 0x80002c26
       0     8425        M 0x800008bc addi    s10, s10, 1            #; s10 = 0x80002c27, (wrb) s10 <-- 0x80002c28
       0     8427        M 0x800008c0 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     8428        M 0x800008c4 lbu     a0, 0(s0)              #; s0  = 0x80002c26, a0  <~~ Byte[0x80002c26]
       0     8439        M                                           #; (lsu) a0  <-- 114
       0     8440        M 0x800008c8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800008a0
       0     8441        M 0x800008a0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     8442        M 0x800008a4 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     8443        M 0x800008a8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8444        M 0x800008ac mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     8445        M 0x800008b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8446        M 0x800008b4 jalr    s2                     #; s2  = 0x80001400, (wrb) ra  <-- 0x800008b8, goto 0x80001400
       0     8449        M 0x80001400 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     8450        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8451        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8452        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8453        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0     8454        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0     8455        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8456        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     8457        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8468        M                                           #; (lsu) a4  <-- 1
       0     8469        M 0x80001420 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     8470        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 2 ~~> Word[0x80002f94]
       0     8471        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 1, (wrb) a4  <-- 0x80002f95
       0     8472        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002f95, 114 ~~> Byte[0x80002fdd]
       0     8473        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8494        M                                           #; (lsu) a4  <-- 2
       0     8495        M 0x80001434 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     8496        M 0x80001438 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     8497        M 0x8000143c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     8498        M 0x80001440 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     8499        M 0x80001444 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8500        M 0x80001448 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014a8
       0     8503        M 0x800014a8 ret                            #; ra  = 0x800008b8, goto 0x800008b8
       0     8508        M 0x800008b8 addi    s0, s0, 1              #; s0  = 0x80002c26, (wrb) s0  <-- 0x80002c27
       0     8509        M 0x800008bc addi    s10, s10, 1            #; s10 = 0x80002c28, (wrb) s10 <-- 0x80002c29
       0     8511        M 0x800008c0 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     8512        M 0x800008c4 lbu     a0, 0(s0)              #; s0  = 0x80002c27, a0  <~~ Byte[0x80002c27]
       0     8523        M                                           #; (lsu) a0  <-- 114
       0     8524        M 0x800008c8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800008a0
       0     8525        M 0x800008a0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     8526        M 0x800008a4 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     8527        M 0x800008a8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8528        M 0x800008ac mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     8529        M 0x800008b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8530        M 0x800008b4 jalr    s2                     #; s2  = 0x80001400, (wrb) ra  <-- 0x800008b8, goto 0x80001400
       0     8533        M 0x80001400 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     8534        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8535        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8536        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8537        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0     8538        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0     8539        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8540        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     8541        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8552        M                                           #; (lsu) a4  <-- 2
       0     8553        M 0x80001420 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     8554        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 3 ~~> Word[0x80002f94]
       0     8555        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 2, (wrb) a4  <-- 0x80002f96
       0     8556        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002f96, 114 ~~> Byte[0x80002fde]
       0     8557        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8578        M                                           #; (lsu) a4  <-- 3
       0     8579        M 0x80001434 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     8580        M 0x80001438 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     8581        M 0x8000143c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     8582        M 0x80001440 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     8583        M 0x80001444 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8584        M 0x80001448 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014a8
       0     8587        M 0x800014a8 ret                            #; ra  = 0x800008b8, goto 0x800008b8
       0     8592        M 0x800008b8 addi    s0, s0, 1              #; s0  = 0x80002c27, (wrb) s0  <-- 0x80002c28
       0     8593        M 0x800008bc addi    s10, s10, 1            #; s10 = 0x80002c29, (wrb) s10 <-- 0x80002c2a
       0     8595        M 0x800008c0 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     8596        M 0x800008c4 lbu     a0, 0(s0)              #; s0  = 0x80002c28, a0  <~~ Byte[0x80002c28]
       0     8607        M                                           #; (lsu) a0  <-- 111
       0     8608        M 0x800008c8 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x800008a0
       0     8609        M 0x800008a0 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     8610        M 0x800008a4 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     8611        M 0x800008a8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8612        M 0x800008ac mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     8613        M 0x800008b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8614        M 0x800008b4 jalr    s2                     #; s2  = 0x80001400, (wrb) ra  <-- 0x800008b8, goto 0x80001400
       0     8617        M 0x80001400 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     8618        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8619        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8620        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8621        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0     8622        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0     8623        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8624        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     8625        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8636        M                                           #; (lsu) a4  <-- 3
       0     8637        M 0x80001420 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     8638        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 4 ~~> Word[0x80002f94]
       0     8639        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 3, (wrb) a4  <-- 0x80002f97
       0     8640        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002f97, 111 ~~> Byte[0x80002fdf]
       0     8641        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8662        M                                           #; (lsu) a4  <-- 4
       0     8663        M 0x80001434 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     8664        M 0x80001438 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     8665        M 0x8000143c addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     8666        M 0x80001440 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     8667        M 0x80001444 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8668        M 0x80001448 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014a8
       0     8671        M 0x800014a8 ret                            #; ra  = 0x800008b8, goto 0x800008b8
       0     8676        M 0x800008b8 addi    s0, s0, 1              #; s0  = 0x80002c28, (wrb) s0  <-- 0x80002c29
       0     8677        M 0x800008bc addi    s10, s10, 1            #; s10 = 0x80002c2a, (wrb) s10 <-- 0x80002c2b
       0     8679        M 0x800008c0 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     8680        M 0x800008c4 lbu     a0, 0(s0)              #; s0  = 0x80002c29, a0  <~~ Byte[0x80002c29]
       0     8691        M                                           #; (lsu) a0  <-- 114
       0     8692        M 0x800008c8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800008a0
       0     8693        M 0x800008a0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     8694        M 0x800008a4 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     8695        M 0x800008a8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8696        M 0x800008ac mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     8697        M 0x800008b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8698        M 0x800008b4 jalr    s2                     #; s2  = 0x80001400, (wrb) ra  <-- 0x800008b8, goto 0x80001400
       0     8701        M 0x80001400 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     8702        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8703        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8704        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8705        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0     8706        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0     8707        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8708        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     8709        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8720        M                                           #; (lsu) a4  <-- 4
       0     8721        M 0x80001420 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     8722        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 5 ~~> Word[0x80002f94]
       0     8723        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 4, (wrb) a4  <-- 0x80002f98
       0     8724        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002f98, 114 ~~> Byte[0x80002fe0]
       0     8725        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8746        M                                           #; (lsu) a4  <-- 5
       0     8747        M 0x80001434 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     8748        M 0x80001438 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     8749        M 0x8000143c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     8750        M 0x80001440 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     8751        M 0x80001444 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8752        M 0x80001448 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014a8
       0     8755        M 0x800014a8 ret                            #; ra  = 0x800008b8, goto 0x800008b8
       0     8760        M 0x800008b8 addi    s0, s0, 1              #; s0  = 0x80002c29, (wrb) s0  <-- 0x80002c2a
       0     8761        M 0x800008bc addi    s10, s10, 1            #; s10 = 0x80002c2b, (wrb) s10 <-- 0x80002c2c
       0     8763        M 0x800008c0 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     8764        M 0x800008c4 lbu     a0, 0(s0)              #; s0  = 0x80002c2a, a0  <~~ Byte[0x80002c2a]
       0     8775        M                                           #; (lsu) a0  <-- 32
       0     8776        M 0x800008c8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800008a0
       0     8777        M 0x800008a0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     8778        M 0x800008a4 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     8779        M 0x800008a8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8780        M 0x800008ac mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     8781        M 0x800008b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8782        M 0x800008b4 jalr    s2                     #; s2  = 0x80001400, (wrb) ra  <-- 0x800008b8, goto 0x80001400
       0     8785        M 0x80001400 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     8786        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8787        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8788        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8789        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0     8790        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0     8791        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8792        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     8793        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8804        M                                           #; (lsu) a4  <-- 5
       0     8805        M 0x80001420 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     8806        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 6 ~~> Word[0x80002f94]
       0     8807        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 5, (wrb) a4  <-- 0x80002f99
       0     8808        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002f99, 32 ~~> Byte[0x80002fe1]
       0     8809        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8830        M                                           #; (lsu) a4  <-- 6
       0     8831        M 0x80001434 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     8832        M 0x80001438 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     8833        M 0x8000143c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     8834        M 0x80001440 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     8835        M 0x80001444 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8836        M 0x80001448 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014a8
       0     8839        M 0x800014a8 ret                            #; ra  = 0x800008b8, goto 0x800008b8
       0     8844        M 0x800008b8 addi    s0, s0, 1              #; s0  = 0x80002c2a, (wrb) s0  <-- 0x80002c2b
       0     8845        M 0x800008bc addi    s10, s10, 1            #; s10 = 0x80002c2c, (wrb) s10 <-- 0x80002c2d
       0     8847        M 0x800008c0 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     8848        M 0x800008c4 lbu     a0, 0(s0)              #; s0  = 0x80002c2b, a0  <~~ Byte[0x80002c2b]
       0     8859        M                                           #; (lsu) a0  <-- 61
       0     8860        M 0x800008c8 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x800008a0
       0     8861        M 0x800008a0 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     8862        M 0x800008a4 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     8863        M 0x800008a8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8864        M 0x800008ac mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     8865        M 0x800008b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8866        M 0x800008b4 jalr    s2                     #; s2  = 0x80001400, (wrb) ra  <-- 0x800008b8, goto 0x80001400
       0     8869        M 0x80001400 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     8870        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8871        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8872        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8873        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0     8874        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0     8875        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8876        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     8877        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8888        M                                           #; (lsu) a4  <-- 6
       0     8889        M 0x80001420 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     8890        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 7 ~~> Word[0x80002f94]
       0     8891        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 6, (wrb) a4  <-- 0x80002f9a
       0     8892        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002f9a, 61 ~~> Byte[0x80002fe2]
       0     8893        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8914        M                                           #; (lsu) a4  <-- 7
       0     8915        M 0x80001434 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     8916        M 0x80001438 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     8917        M 0x8000143c addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     8918        M 0x80001440 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     8919        M 0x80001444 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8920        M 0x80001448 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014a8
       0     8923        M 0x800014a8 ret                            #; ra  = 0x800008b8, goto 0x800008b8
       0     8928        M 0x800008b8 addi    s0, s0, 1              #; s0  = 0x80002c2b, (wrb) s0  <-- 0x80002c2c
       0     8929        M 0x800008bc addi    s10, s10, 1            #; s10 = 0x80002c2d, (wrb) s10 <-- 0x80002c2e
       0     8931        M 0x800008c0 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     8932        M 0x800008c4 lbu     a0, 0(s0)              #; s0  = 0x80002c2c, a0  <~~ Byte[0x80002c2c]
       0     8943        M                                           #; (lsu) a0  <-- 32
       0     8944        M 0x800008c8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800008a0
       0     8945        M 0x800008a0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     8946        M 0x800008a4 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     8947        M 0x800008a8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8948        M 0x800008ac mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     8949        M 0x800008b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8950        M 0x800008b4 jalr    s2                     #; s2  = 0x80001400, (wrb) ra  <-- 0x800008b8, goto 0x80001400
       0     8953        M 0x80001400 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     8954        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8955        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8956        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8957        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0     8958        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0     8959        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8960        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     8961        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8972        M                                           #; (lsu) a4  <-- 7
       0     8973        M 0x80001420 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     8974        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 8 ~~> Word[0x80002f94]
       0     8975        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 7, (wrb) a4  <-- 0x80002f9b
       0     8976        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002f9b, 32 ~~> Byte[0x80002fe3]
       0     8977        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8998        M                                           #; (lsu) a4  <-- 8
       0     8999        M 0x80001434 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     9000        M 0x80001438 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     9001        M 0x8000143c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     9002        M 0x80001440 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     9003        M 0x80001444 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     9004        M 0x80001448 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014a8
       0     9007        M 0x800014a8 ret                            #; ra  = 0x800008b8, goto 0x800008b8
       0     9012        M 0x800008b8 addi    s0, s0, 1              #; s0  = 0x80002c2c, (wrb) s0  <-- 0x80002c2d
       0     9013        M 0x800008bc addi    s10, s10, 1            #; s10 = 0x80002c2e, (wrb) s10 <-- 0x80002c2f
       0     9015        M 0x800008c0 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     9016        M 0x800008c4 lbu     a0, 0(s0)              #; s0  = 0x80002c2d, a0  <~~ Byte[0x80002c2d]
       0     9027        M                                           #; (lsu) a0  <-- 37
       0     9028        M 0x800008c8 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x800008a0
       0     9029        M 0x800008a0 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x800008d0
       0     9032        M 0x800008d0 li      s0, 0                  #; (wrb) s0  <-- 0
       0     9033        M 0x800008d4 j       pc + 0x10              #; goto 0x800008e4
       0     9035        M 0x800008e4 lbu     a0, -1(s10)            #; s10 = 0x80002c2f, a0  <~~ Byte[0x80002c2e]
       0     9046        M                                           #; (lsu) a0  <-- 102
       0     9047        M 0x800008e8 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     9048        M 0x800008ec bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000924
       0     9051        M 0x80000924 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     9052        M 0x80000928 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     9053        M 0x8000092c addi    a1, s10, -1            #; s10 = 0x80002c2f, (wrb) a1  <-- 0x80002c2e
       0     9054        M 0x80000930 li      a3, 9                  #; (wrb) a3  <-- 9
       0     9055        M 0x80000934 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x800009b0
       0     9059        M 0x800009b0 li      a2, 42                 #; (wrb) a2  <-- 42
       0     9060        M 0x800009b4 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000a04
       0     9064        M 0x80000a04 li      s6, 0                  #; (wrb) s6  <-- 0
       0     9065        M 0x80000a08 mv      s10, a1                #; a1  = 0x80002c2e, (wrb) s10 <-- 0x80002c2e
       0     9066        M 0x80000a0c beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     9069        M 0x80000a10 li      s7, 0                  #; (wrb) s7  <-- 0
       0     9070        M 0x80000a14 j       pc + 0xc               #; goto 0x80000a20
       0     9072        M 0x80000a20 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     9073        M 0x80000a24 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     9074        M 0x80000a28 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     9075        M 0x80000a2c or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     9076        M 0x80000a30 li      a2, 9                  #; (wrb) a2  <-- 9
       0     9077        M 0x80000a34 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000a98
       0     9081        M 0x80000a98 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     9082        M 0x80000a9c li      a2, 83                 #; (wrb) a2  <-- 83
       0     9084        M 0x80000aa0 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     9085        M 0x80000aa4 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     9086        M 0x80000aa8 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002aa8
       0     9087        M 0x80000aac addi    a2, a2, 520            #; a2  = 0x80002aa8, (wrb) a2  <-- 0x80002cb0
       0     9088        M 0x80000ab0 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002cb0, (wrb) a1  <-- 0x80002db4
       0     9089        M 0x80000ab4 lw      a2, 0(a1)              #; a1  = 0x80002db4, a2  <~~ Word[0x80002db4]
       0     9090        M 0x80000ab8 li      a1, 8                  #; (wrb) a1  <-- 8
       0     9091        M 0x80000abc li      s8, 16                 #; (wrb) s8  <-- 16
       0     9100        M                                           #; (lsu) a2  <-- 0x80000af0
       0     9101        M 0x80000ac0 jr      a2                     #; a2  = 0x80000af0, goto 0x80000af0
       0     9113        M 0x80000af0 li      a1, 70                 #; (wrb) a1  <-- 70
       0     9114        M 0x80000af4 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000afc
       0     9115        M 0x80000afc addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     9125        M 0x80000b00 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     9127        M 0x80000b08 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     9128        M 0x80000b0c mv      a0, s2                 #; s2  = 0x80001400, (wrb) a0  <-- 0x80001400
                         M 0x80000b04 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     9129        M                                           #; (f:lsu) fa0  <-- 0.0
       0     9137        M 0x80000b10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     9138        M 0x80000b14 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     9139        M 0x80000b18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     9140        M 0x80000b1c mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     9149        M 0x80000b20 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     9150        M 0x80000b24 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     9151        M 0x80000b28 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001b28
       0     9152        M 0x80000b2c jalr    ra, ra, -1656          #; ra  = 0x80001b28, (wrb) ra  <-- 0x80000b30, goto 0x800014b0
       0     9163        M 0x800014b0 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     9164        M 0x800014b4 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000b30 ~~> Word[0x0011fe9c]
       0     9165        M 0x800014b8 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     9166        M 0x800014bc sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     9175        M 0x800014c0 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001400 ~~> Word[0x0011fe90]
       0     9176        M 0x800014c4 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     9177        M 0x800014c8 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     9178        M 0x800014cc sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     9187        M 0x800014d0 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     9188        M 0x800014d4 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     9189        M 0x800014d8 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     9190        M 0x800014dc sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     9199        M 0x800014e0 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002c2e ~~> Word[0x0011fe70]
       0     9202        M 0x800014e4 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe68]
       0     9203        M 0x800014e8 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     9204        M 0x800014ec fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     9211        M 0x800014f0 auipc   s1, 0x2                #; (wrb) s1  <-- 0x800034f0
       0     9212        M 0x800014f4 addi    s1, s1, -1544          #; s1  = 0x800034f0, (wrb) s1  <-- 0x80002ee8
       0     9215        M 0x800014f8 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002ee8]
       0     9223        M 0x80001500 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     9224        M 0x80001504 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     9225        M 0x80001508 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x800014fc fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     9226        M 0x8000150c mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     9235        M 0x80001510 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     9236        M 0x80001514 mv      s7, a0                 #; a0  = 0x80001400, (wrb) s7  <-- 0x80001400
       0     9237        M 0x80001518 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001608
       0     9259        M 0x8000160c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000360c
       0     9260        M 0x80001608 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     9261        M                                           #; (f:fpu) fs0  <-- 0.0
       0     9270        M 0x80001610 addi    a0, a0, -1820          #; a0  = 0x8000360c, (wrb) a0  <-- 0x80002ef0
       0     9273        M 0x80001614 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ef0]
       0     9282        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     9283        M 0x80001618 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     9285        M                                           #; (acc) t3  <-- 0x00051e63
       0     9286        M 0x8000161c bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001638
       0     9298        M 0x80001638 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003638
       0     9299        M 0x8000163c addi    a0, a0, -1856          #; a0  = 0x80003638, (wrb) a0  <-- 0x80002ef8
       0     9311        M 0x80001644 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003644
       0     9312        M 0x80001648 addi    a0, a0, -1860          #; a0  = 0x80003644, (wrb) a0  <-- 0x80002f00
                         M 0x80001640 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ef8]
       0     9315        M 0x8000164c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f00]
       0     9321        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     9323        M 0x80001650 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     9324        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     9325        M                                           #; (acc) a0  <-- 0x00b57533
                         M 0x80001654 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     9327        M                                           #; (acc) a0  <-- 0x00b57533
       0     9328        M 0x80001658 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     9329        M 0x8000165c bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001758
       0     9345        M 0x80001758 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     9346        M 0x8000175c li      s8, 6                  #; (wrb) s8  <-- 6
       0     9357        M 0x80001760 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001768
       0     9358        M 0x80001768 li      a0, 10                 #; (wrb) a0  <-- 10
       0     9361        M 0x8000176c fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     9362        M                                           #; (f:fpu) fs2  <-- 0.0
       0     9369        M 0x80001770 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x800017a8
       0     9392        M 0x800017a8 li      s0, 0                  #; (wrb) s0  <-- 0
       0     9393        M 0x800017ac slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     9404        M 0x800017b0 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800027b0
       0     9405        M 0x800017b4 addi    a1, a1, 1616           #; a1  = 0x800027b0, (wrb) a1  <-- 0x80002e00
       0     9406        M 0x800017b8 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002e00, (wrb) a0  <-- 0x80002e30
       0     9409        M 0x800017bc fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002e30]
       0     9417        M 0x800017c0 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     9418        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     9421        M 0x800017c4 fcvt.d.w ft0, s1               #; ac1  = 0
       0     9422        M                                           #; (f:fpu) ft0  <-- 0.0
       0     9423        M 0x800017c8 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     9426        M                                           #; (f:fpu) ft0  <-- 0.0
       0     9427        M 0x800017cc fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     9428        M 0x800017d0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800027d0
       0     9429        M 0x800017d4 addi    a0, a0, 1848           #; a0  = 0x800027d0, (wrb) a0  <-- 0x80002f08
       0     9430        M                                           #; (f:fpu) ft2  <-- 0.0
       0     9432        M 0x800017d8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f08]
       0     9433        M 0x800017dc fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     9441        M 0x800017e0 fcvt.d.wu ft3, a0              #; ac1  = 0, (f:lsu) ft0  <-- 0.5
       0     9442        M                                           #; (f:fpu) ft3  <-- 0.0
       0     9443        M 0x800017e4 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     9446        M                                           #; (f:fpu) ft2  <-- 0.0
       0     9447        M 0x800017e8 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     9450        M 0x800017ec bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x8000180c
       0     9464        M 0x8000180c flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     9475        M 0x80001810 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001824
       0     9488        M 0x80001828 beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001824 fcvt.d.w fs1, zero             #; ac1  = 0
       0     9489        M 0x8000182c li      a2, 0                  #; (wrb) a2  <-- 0
                         M                                           #; (f:fpu) fs1  <-- 0.0
       0     9499        M 0x80001830 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     9500        M 0x80001834 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     9501        M 0x80001838 li      t0, 32                 #; (wrb) t0  <-- 32
       0     9502        M 0x8000183c sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     9511        M 0x80001840 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     9512        M 0x80001844 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     9513        M 0x80001848 li      a6, 10                 #; (wrb) a6  <-- 10
       0     9514        M 0x8000184c li      a7, 9                  #; (wrb) a7  <-- 9
       0     9523        M 0x80001850 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     9524        M 0x80001854 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     9525        M 0x80001858 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     9528        M                                           #; (acc) a0  <-- 0x00355513
       0     9529        M 0x8000185c srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     9535        M 0x80001860 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     9538        M                                           #; (acc) a3  <-- 0x40d586b3
       0     9539        M 0x80001864 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     9540        M 0x80001868 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     9541        M 0x8000186c add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     9547        M 0x80001870 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     9548        M 0x80001874 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     9549        M 0x80001878 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     9550        M 0x8000187c add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     9562        M 0x80001880 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     9563        M 0x80001884 li      a3, 30                 #; (wrb) a3  <-- 30
       0     9564        M 0x80001888 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     9565        M 0x8000188c xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     9574        M 0x80001890 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     9575        M 0x80001894 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     9576        M 0x80001898 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     9577        M 0x8000189c addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     9586        M 0x800018a0 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     9587        M 0x800018a4 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     9588        M 0x800018a8 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     9589        M 0x800018ac add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     9598        M 0x800018b0 li      a1, 31                 #; (wrb) a1  <-- 31
       0     9599        M 0x800018b4 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     9600        M 0x800018b8 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     9601        M 0x800018bc mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     9610        M 0x800018c0 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x800018c8
       0     9611        M 0x800018c8 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     9612        M 0x800018cc li      a1, 48                 #; (wrb) a1  <-- 48
       0     9622        M 0x800018d0 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x800008d0
       0     9623        M 0x800018d4 jalr    ra, ra, -888           #; ra  = 0x800008d0, (wrb) ra  <-- 0x800018d8, goto 0x80000558
       0     9645        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     9646        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     9657        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     9680        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     9692        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     9693        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     9694        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     9695        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     9715        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     9716        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     9727        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     9728        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     9729        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     9730        M 0x800005ec ret                            #; ra  = 0x800018d8, goto 0x800018d8
       0     9741        M 0x800018d8 li      a0, 0                  #; (wrb) a0  <-- 0
       0     9742        M 0x800018dc add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     9744        M 0x800018e0 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     9745        M 0x800018e4 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     9746        M 0x800018e8 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     9747        M 0x800018ec and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     9756        M 0x800018f0 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     9757        M 0x800018f4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800018dc
       0     9758        M 0x800018dc add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     9759        M 0x800018e0 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     9760        M 0x800018e4 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     9761        M 0x800018e8 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     9762        M 0x800018ec and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     9763        M 0x800018f0 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     9764        M 0x800018f4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800018dc
       0     9765        M 0x800018dc add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     9766        M 0x800018e0 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     9767        M 0x800018e4 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     9768        M 0x800018e8 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     9769        M 0x800018ec and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     9770        M 0x800018f0 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     9771        M 0x800018f4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800018dc
       0     9772        M 0x800018dc add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     9773        M 0x800018e0 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     9774        M 0x800018e4 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     9775        M 0x800018e8 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     9776        M 0x800018ec and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     9777        M 0x800018f0 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     9778        M 0x800018f4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800018dc
       0     9779        M 0x800018dc add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     9780        M 0x800018e0 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     9781        M 0x800018e4 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     9782        M 0x800018e8 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     9783        M 0x800018ec and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     9784        M 0x800018f0 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     9785        M 0x800018f4 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     9786        M 0x800018f8 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     9787        M 0x800018fc j       pc + 0x28              #; goto 0x80001924
       0     9798        M 0x80001924 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     9799        M 0x80001928 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     9800        M 0x8000192c addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     9810        M 0x80001930 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     9811        M 0x80001934 li      a1, 46                 #; (wrb) a1  <-- 46
       0     9812        M 0x80001938 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     9813        M 0x8000193c j       pc + 0x8               #; goto 0x80001944
       0     9822        M 0x80001944 li      a0, 32                 #; (wrb) a0  <-- 32
       0     9823        M 0x80001948 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     9824        M 0x8000194c bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     9834        M 0x80001950 li      t0, 32                 #; (wrb) t0  <-- 32
       0     9836        M 0x80001958 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001954 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     9837        M 0x8000195c addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     9846        M 0x80001960 li      a6, 10                 #; (wrb) a6  <-- 10
       0     9847        M 0x80001964 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     9848        M 0x80001968 li      a4, 18                 #; (wrb) a4  <-- 18
       0     9849        M 0x8000196c beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     9858        M 0x80001970 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     9861        M                                           #; (acc) a5  <-- 0x01f55793
       0     9862        M 0x80001974 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     9863        M 0x80001978 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     9864        M 0x8000197c add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     9870        M 0x80001980 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     9873        M                                           #; (acc) a5  <-- 0x40f487b3
       0     9874        M 0x80001984 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     9875        M 0x80001988 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     9876        M 0x8000198c addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     9882        M 0x80001990 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     9883        M 0x80001994 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     9884        M 0x80001998 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     9885        M 0x8000199c mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     9894        M 0x800019a0 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     9895        M 0x800019a4 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     9896        M 0x800019a8 j       pc + 0x8               #; goto 0x800019b0
       0     9908        M 0x800019b0 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     9909        M 0x800019b4 li      a0, 1                  #; (wrb) a0  <-- 1
       0     9910        M 0x800019b8 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001a24
       0     9931        M 0x80001a24 li      a0, 31                 #; (wrb) a0  <-- 31
       0     9932        M 0x80001a28 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     9933        M 0x80001a2c beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001a44
       0     9954        M 0x80001a44 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     9955        M 0x80001a48 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     9956        M 0x80001a4c andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     9966        M 0x80001a50 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001a7c
       0     9989        M 0x80001a7c snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0    10001        M 0x80001a80 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0    10002        M 0x80001a84 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0    10003        M 0x80001a88 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0    10004        M 0x80001a8c andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0    10013        M 0x80001a90 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0    10014        M 0x80001a94 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001ac0
       0    10036        M 0x80001ac0 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0    10037        M 0x80001ac4 beqz    s8, pc + 56            #; s8  = 8, not taken
       0    10038        M 0x80001ac8 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0    10039        M 0x80001acc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0    10048        M 0x80001ad0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0    10049        M 0x80001ad4 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0    10050        M 0x80001ad8 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0    10051        M 0x80001adc mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10052        M                                           #; (lsu) a0  <-- 48
       0    10060        M 0x80001ae0 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0    10061        M 0x80001ae4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10062        M 0x80001ae8 jalr    s7                     #; s7  = 0x80001400, (wrb) ra  <-- 0x80001aec, goto 0x80001400
       0    10074        M 0x80001400 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10075        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10076        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10077        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10078        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0    10079        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0    10080        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10081        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0    10082        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10093        M                                           #; (lsu) a4  <-- 8
       0    10094        M 0x80001420 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0    10095        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 9 ~~> Word[0x80002f94]
       0    10096        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 8, (wrb) a4  <-- 0x80002f9c
       0    10097        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002f9c, 48 ~~> Byte[0x80002fe4]
       0    10098        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10119        M                                           #; (lsu) a4  <-- 9
       0    10120        M 0x80001434 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0    10121        M 0x80001438 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0    10122        M 0x8000143c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10123        M 0x80001440 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10124        M 0x80001444 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10125        M 0x80001448 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014a8
       0    10128        M 0x800014a8 ret                            #; ra  = 0x80001aec, goto 0x80001aec
       0    10133        M 0x80001aec mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0    10136        M 0x80001af0 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0    10137        M 0x80001af4 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001acc
       0    10139        M 0x80001acc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0    10142        M 0x80001ad0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0    10143        M 0x80001ad4 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0    10144        M 0x80001ad8 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0    10145        M 0x80001adc mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10146        M 0x80001ae0 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0    10147        M 0x80001ae4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10148        M 0x80001ae8 jalr    s7                     #; s7  = 0x80001400, (wrb) ra  <-- 0x80001aec, goto 0x80001400
       0    10149        M                                           #; (lsu) a0  <-- 46
       0    10151        M 0x80001400 beqz    a0, pc + 168           #; a0  = 46, not taken
       0    10152        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10153        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10154        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10155        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0    10156        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0    10157        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10158        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0    10159        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10170        M                                           #; (lsu) a4  <-- 9
       0    10171        M 0x80001420 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0    10172        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 10 ~~> Word[0x80002f94]
       0    10173        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 9, (wrb) a4  <-- 0x80002f9d
       0    10174        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002f9d, 46 ~~> Byte[0x80002fe5]
       0    10175        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10196        M                                           #; (lsu) a4  <-- 10
       0    10197        M 0x80001434 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0    10198        M 0x80001438 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0    10199        M 0x8000143c addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0    10200        M 0x80001440 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0    10201        M 0x80001444 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10202        M 0x80001448 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014a8
       0    10205        M 0x800014a8 ret                            #; ra  = 0x80001aec, goto 0x80001aec
       0    10210        M 0x80001aec mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0    10213        M 0x80001af0 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0    10214        M 0x80001af4 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001acc
       0    10216        M 0x80001acc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0    10219        M 0x80001ad0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0    10220        M 0x80001ad4 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0    10221        M 0x80001ad8 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0    10222        M 0x80001adc mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10223        M 0x80001ae0 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0    10224        M 0x80001ae4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10225        M 0x80001ae8 jalr    s7                     #; s7  = 0x80001400, (wrb) ra  <-- 0x80001aec, goto 0x80001400
       0    10226        M                                           #; (lsu) a0  <-- 48
       0    10228        M 0x80001400 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10229        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10230        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10231        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10232        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0    10233        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0    10234        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10235        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0    10236        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10247        M                                           #; (lsu) a4  <-- 10
       0    10248        M 0x80001420 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0    10249        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 11 ~~> Word[0x80002f94]
       0    10250        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 10, (wrb) a4  <-- 0x80002f9e
       0    10251        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002f9e, 48 ~~> Byte[0x80002fe6]
       0    10252        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10273        M                                           #; (lsu) a4  <-- 11
       0    10274        M 0x80001434 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0    10275        M 0x80001438 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0    10276        M 0x8000143c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10277        M 0x80001440 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10278        M 0x80001444 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10279        M 0x80001448 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014a8
       0    10282        M 0x800014a8 ret                            #; ra  = 0x80001aec, goto 0x80001aec
       0    10287        M 0x80001aec mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0    10290        M 0x80001af0 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0    10291        M 0x80001af4 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001acc
       0    10293        M 0x80001acc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0    10296        M 0x80001ad0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0    10297        M 0x80001ad4 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0    10298        M 0x80001ad8 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0    10299        M 0x80001adc mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10300        M 0x80001ae0 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0    10301        M 0x80001ae4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10302        M 0x80001ae8 jalr    s7                     #; s7  = 0x80001400, (wrb) ra  <-- 0x80001aec, goto 0x80001400
       0    10303        M                                           #; (lsu) a0  <-- 48
       0    10305        M 0x80001400 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10306        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10307        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10308        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10309        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0    10310        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0    10311        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10312        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0    10313        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10324        M                                           #; (lsu) a4  <-- 11
       0    10325        M 0x80001420 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0    10326        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 12 ~~> Word[0x80002f94]
       0    10327        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 11, (wrb) a4  <-- 0x80002f9f
       0    10328        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002f9f, 48 ~~> Byte[0x80002fe7]
       0    10329        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10350        M                                           #; (lsu) a4  <-- 12
       0    10351        M 0x80001434 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0    10352        M 0x80001438 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0    10353        M 0x8000143c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10354        M 0x80001440 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10355        M 0x80001444 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10356        M 0x80001448 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014a8
       0    10359        M 0x800014a8 ret                            #; ra  = 0x80001aec, goto 0x80001aec
       0    10364        M 0x80001aec mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0    10367        M 0x80001af0 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0    10368        M 0x80001af4 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001acc
       0    10370        M 0x80001acc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0    10373        M 0x80001ad0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0    10374        M 0x80001ad4 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0    10375        M 0x80001ad8 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0    10376        M 0x80001adc mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10377        M 0x80001ae0 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0    10378        M 0x80001ae4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10379        M 0x80001ae8 jalr    s7                     #; s7  = 0x80001400, (wrb) ra  <-- 0x80001aec, goto 0x80001400
       0    10380        M                                           #; (lsu) a0  <-- 48
       0    10382        M 0x80001400 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10383        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10384        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10385        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10386        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0    10387        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0    10388        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10389        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0    10390        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10401        M                                           #; (lsu) a4  <-- 12
       0    10402        M 0x80001420 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0    10403        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 13 ~~> Word[0x80002f94]
       0    10404        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 12, (wrb) a4  <-- 0x80002fa0
       0    10405        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002fa0, 48 ~~> Byte[0x80002fe8]
       0    10406        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10427        M                                           #; (lsu) a4  <-- 13
       0    10428        M 0x80001434 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0    10429        M 0x80001438 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0    10430        M 0x8000143c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10431        M 0x80001440 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10432        M 0x80001444 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10433        M 0x80001448 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014a8
       0    10436        M 0x800014a8 ret                            #; ra  = 0x80001aec, goto 0x80001aec
       0    10441        M 0x80001aec mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0    10444        M 0x80001af0 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0    10445        M 0x80001af4 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001acc
       0    10447        M 0x80001acc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0    10450        M 0x80001ad0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0    10451        M 0x80001ad4 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0    10452        M 0x80001ad8 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0    10453        M 0x80001adc mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10454        M 0x80001ae0 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0    10455        M 0x80001ae4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10456        M 0x80001ae8 jalr    s7                     #; s7  = 0x80001400, (wrb) ra  <-- 0x80001aec, goto 0x80001400
       0    10457        M                                           #; (lsu) a0  <-- 48
       0    10459        M 0x80001400 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10460        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10461        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10462        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10463        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0    10464        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0    10465        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10466        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0    10467        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10478        M                                           #; (lsu) a4  <-- 13
       0    10479        M 0x80001420 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0    10480        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 14 ~~> Word[0x80002f94]
       0    10481        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 13, (wrb) a4  <-- 0x80002fa1
       0    10482        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002fa1, 48 ~~> Byte[0x80002fe9]
       0    10483        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10504        M                                           #; (lsu) a4  <-- 14
       0    10505        M 0x80001434 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0    10506        M 0x80001438 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0    10507        M 0x8000143c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10508        M 0x80001440 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10509        M 0x80001444 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10510        M 0x80001448 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014a8
       0    10513        M 0x800014a8 ret                            #; ra  = 0x80001aec, goto 0x80001aec
       0    10518        M 0x80001aec mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0    10521        M 0x80001af0 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0    10522        M 0x80001af4 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001acc
       0    10524        M 0x80001acc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0    10527        M 0x80001ad0 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0    10528        M 0x80001ad4 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0    10529        M 0x80001ad8 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0    10530        M 0x80001adc mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10531        M 0x80001ae0 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0    10532        M 0x80001ae4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10533        M 0x80001ae8 jalr    s7                     #; s7  = 0x80001400, (wrb) ra  <-- 0x80001aec, goto 0x80001400
       0    10534        M                                           #; (lsu) a0  <-- 48
       0    10536        M 0x80001400 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10537        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10538        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10539        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10540        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0    10541        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0    10542        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10543        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0    10544        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10555        M                                           #; (lsu) a4  <-- 14
       0    10556        M 0x80001420 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0    10557        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 15 ~~> Word[0x80002f94]
       0    10558        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 14, (wrb) a4  <-- 0x80002fa2
       0    10559        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002fa2, 48 ~~> Byte[0x80002fea]
       0    10560        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10581        M                                           #; (lsu) a4  <-- 15
       0    10582        M 0x80001434 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0    10583        M 0x80001438 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0    10584        M 0x8000143c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10585        M 0x80001440 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10586        M 0x80001444 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10587        M 0x80001448 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014a8
       0    10590        M 0x800014a8 ret                            #; ra  = 0x80001aec, goto 0x80001aec
       0    10595        M 0x80001aec mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0    10598        M 0x80001af0 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0    10599        M 0x80001af4 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001acc
       0    10601        M 0x80001acc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0    10604        M 0x80001ad0 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0    10605        M 0x80001ad4 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0    10606        M 0x80001ad8 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0    10607        M 0x80001adc mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10608        M 0x80001ae0 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0    10609        M 0x80001ae4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10610        M 0x80001ae8 jalr    s7                     #; s7  = 0x80001400, (wrb) ra  <-- 0x80001aec, goto 0x80001400
       0    10611        M                                           #; (lsu) a0  <-- 48
       0    10613        M 0x80001400 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10614        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10615        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10616        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10617        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0    10618        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0    10619        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10620        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0    10621        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10632        M                                           #; (lsu) a4  <-- 15
       0    10633        M 0x80001420 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0    10634        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 16 ~~> Word[0x80002f94]
       0    10635        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 15, (wrb) a4  <-- 0x80002fa3
       0    10636        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002fa3, 48 ~~> Byte[0x80002feb]
       0    10637        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10658        M                                           #; (lsu) a4  <-- 16
       0    10659        M 0x80001434 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0    10660        M 0x80001438 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0    10661        M 0x8000143c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10662        M 0x80001440 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10663        M 0x80001444 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10664        M 0x80001448 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014a8
       0    10667        M 0x800014a8 ret                            #; ra  = 0x80001aec, goto 0x80001aec
       0    10672        M 0x80001aec mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0    10675        M 0x80001af0 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0    10676        M 0x80001af4 bnez    s10, pc - 40           #; s10 = 0, not taken
       0    10677        M 0x80001af8 j       pc + 0x8               #; goto 0x80001b00
       0    10689        M 0x80001b00 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0    10690        M 0x80001b04 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0    10691        M 0x80001b08 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0    10692        M 0x80001b0c xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0    10701        M 0x80001b10 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0    10702        M 0x80001b14 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001b44
       0    10724        M 0x80001b44 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0    10725        M 0x80001b48 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0    10728        M 0x80001b4c fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0    10729        M                                           #; (f:lsu) fs2  <-- 0.0
       0    10738        M 0x80001b58 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
                         M 0x80001b50 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60]
       0    10739        M 0x80001b54 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
       0    10740        M                                           #; (f:lsu) fs0  <-- 0.0
       0    10742        M                                           #; (lsu) s10 <-- 0x80002c2e
       0    10743        M 0x80001b5c lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0    10746        M                                           #; (lsu) s9  <-- 8
       0    10748        M 0x80001b60 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0    10751        M                                           #; (lsu) s8  <-- 16
       0    10752        M 0x80001b64 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0    10755        M                                           #; (lsu) s7  <-- 0
       0    10756        M 0x80001b68 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0    10759        M                                           #; (lsu) s6  <-- 0
       0    10760        M 0x80001b6c lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0    10763        M                                           #; (lsu) s5  <-- -1
       0    10764        M 0x80001b70 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0    10767        M                                           #; (lsu) s4  <-- 0x0011ff17
       0    10768        M 0x80001b74 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0    10771        M                                           #; (lsu) s3  <-- 0x0011ff30
       0    10772        M 0x80001b78 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0    10775        M                                           #; (lsu) s2  <-- 0x80001400
       0    10776        M 0x80001b7c lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0    10779        M                                           #; (lsu) s1  <-- 8
       0    10780        M 0x80001b80 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0    10783        M                                           #; (lsu) s0  <-- 0
       0    10784        M 0x80001b84 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0    10785        M 0x80001b88 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0    10787        M                                           #; (lsu) ra  <-- 0x80000b30
       0    10788        M 0x80001b8c ret                            #; ra  = 0x80000b30, goto 0x80000b30
       0    10791        M 0x80000b30 j       pc + 0x7c0             #; goto 0x800012f0
       0    10794        M 0x800012f0 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0    10795        M 0x800012f4 li      s6, 37                 #; (wrb) s6  <-- 37
       0    10796        M 0x800012f8 li      s7, 46                 #; (wrb) s7  <-- 46
       0    10797        M 0x800012fc addi    s0, s10, 1             #; s10 = 0x80002c2e, (wrb) s0  <-- 0x80002c2f
       0    10798        M 0x80001300 j       pc - 0xa74             #; goto 0x8000088c
       0    10801        M 0x8000088c addi    s10, s0, 2             #; s0  = 0x80002c2f, (wrb) s10 <-- 0x80002c31
       0    10804        M 0x80000890 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0    10805        M 0x80000894 li      s8, 10                 #; (wrb) s8  <-- 10
       0    10806        M 0x80000898 lbu     a0, 0(s0)              #; s0  = 0x80002c2f, a0  <~~ Byte[0x80002c2f]
       0    10817        M                                           #; (lsu) a0  <-- 10
       0    10818        M 0x8000089c beqz    a0, pc + 2824          #; a0  = 10, not taken
       0    10819        M 0x800008a0 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0    10820        M 0x800008a4 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0    10821        M 0x800008a8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10822        M 0x800008ac mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0    10823        M 0x800008b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0    10824        M 0x800008b4 jalr    s2                     #; s2  = 0x80001400, (wrb) ra  <-- 0x800008b8, goto 0x80001400
       0    10828        M 0x80001400 beqz    a0, pc + 168           #; a0  = 10, not taken
       0    10829        M 0x80001404 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10830        M 0x80001408 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10831        M 0x8000140c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10832        M 0x80001410 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003410
       0    10833        M 0x80001414 addi    a3, a3, -1148          #; a3  = 0x80003410, (wrb) a3  <-- 0x80002f94
       0    10834        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10835        M 0x80001418 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0    10836        M 0x8000141c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10847        M                                           #; (lsu) a4  <-- 16
       0    10848        M 0x80001420 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0    10849        M 0x80001424 sw      a5, 0(a1)              #; a1  = 0x80002f94, 17 ~~> Word[0x80002f94]
       0    10850        M 0x80001428 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 16, (wrb) a4  <-- 0x80002fa4
       0    10851        M 0x8000142c sb      a0, 72(a4)             #; a4  = 0x80002fa4, 10 ~~> Byte[0x80002fec]
       0    10852        M 0x80001430 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10873        M                                           #; (lsu) a4  <-- 17
       0    10874        M 0x80001434 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0    10875        M 0x80001438 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0    10876        M 0x8000143c addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0    10877        M 0x80001440 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0    10878        M 0x80001444 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0    10879        M 0x80001448 bnez    a0, pc + 96            #; a0  = 0, not taken
       0    10880        M 0x8000144c add     a0, a3, a2             #; a3  = 0x80002f94, a2  = 0, (wrb) a0  <-- 0x80002f94
       0    10881        M 0x80001450 addi    a2, a0, 72             #; a0  = 0x80002f94, (wrb) a2  <-- 0x80002fdc
       0    10882        M 0x80001454 sw      zero, 12(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fa0]
       0    10883        M 0x80001458 li      a3, 64                 #; (wrb) a3  <-- 64
       0    10884        M 0x8000145c sw      a3, 8(a0)              #; a0  = 0x80002f94, 64 ~~> Word[0x80002f9c]
       0    10885        M 0x80001460 sw      zero, 20(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fa8]
       0    10886        M 0x80001464 li      a3, 1                  #; (wrb) a3  <-- 1
       0    10887        M 0x80001468 sw      a3, 16(a0)             #; a0  = 0x80002f94, 1 ~~> Word[0x80002fa4]
       0    10896        M 0x8000146c sw      zero, 28(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fb0]
       0    10898        M 0x80001470 sw      a2, 24(a0)             #; a0  = 0x80002f94, 0x80002fdc ~~> Word[0x80002fac]
       0    10908        M 0x80001474 lw      a2, 0(a1)              #; a1  = 0x80002f94, a2  <~~ Word[0x80002f94]
       0    10909        M 0x80001478 addi    a3, a0, 8              #; a0  = 0x80002f94, (wrb) a3  <-- 0x80002f9c
       0    10910        M 0x8000147c sw      zero, 36(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fb8]
       0    10930        M                                           #; (lsu) a2  <-- 17
       0    10931        M 0x80001480 sw      a2, 32(a0)             #; a0  = 0x80002f94, 17 ~~> Word[0x80002fb4]
       0    10932        M 0x80001484 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003484
       0    10933        M 0x80001488 addi    a0, a0, -1540          #; a0  = 0x80003484, (wrb) a0  <-- 0x80002e80
       0    10934        M 0x8000148c sw      a3, 0(a0)              #; a0  = 0x80002e80, 0x80002f9c ~~> Word[0x80002e80]
       0    10935        M 0x80001490 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003490
       0    10936        M 0x80001494 addi    a0, a0, -1488          #; a0  = 0x80003490, (wrb) a0  <-- 0x80002ec0
       0    10937        M 0x80001498 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
       0    10960        M                                           #; (lsu) a2  <-- 0
       0    10961        M 0x8000149c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001498
       0    10962        M 0x80001498 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
       0    10973        M                                           #; (lsu) a2  <-- 0
       0    10974        M 0x8000149c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001498
       0    10975        M 0x80001498 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
       0    10986        M                                           #; (lsu) a2  <-- 0
       0    10987        M 0x8000149c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001498
       0    10988        M 0x80001498 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
       0    10999        M                                           #; (lsu) a2  <-- 0
       0    11000        M 0x8000149c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001498
       0    11001        M 0x80001498 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
       0    11012        M                                           #; (lsu) a2  <-- 1
       0    11013        M 0x8000149c beqz    a2, pc - 4             #; a2  = 1, not taken
       0    11016        M 0x800014a0 sw      zero, 0(a0)            #; a0  = 0x80002ec0, 0 ~~> Word[0x80002ec0]
       0    11017        M 0x800014a4 sw      zero, 0(a1)            #; a1  = 0x80002f94, 0 ~~> Word[0x80002f94]
       0    11018        M 0x800014a8 ret                            #; ra  = 0x800008b8, goto 0x800008b8
       0    11021        M 0x800008b8 addi    s0, s0, 1              #; s0  = 0x80002c2f, (wrb) s0  <-- 0x80002c30
       0    11022        M 0x800008bc addi    s10, s10, 1            #; s10 = 0x80002c31, (wrb) s10 <-- 0x80002c32
       0    11024        M 0x800008c0 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0    11025        M 0x800008c4 lbu     a0, 0(s0)              #; s0  = 0x80002c30, a0  <~~ Byte[0x80002c30]
       0    11039        M                                           #; (lsu) a0  <-- 0
       0    11040        M 0x800008c8 bnez    a0, pc - 40            #; a0  = 0, not taken
       0    11041        M 0x800008cc j       pc + 0xad8             #; goto 0x800013a4
       0    11044        M 0x800013a4 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0    11045        M 0x800013a8 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x800013b0
       0    11047        M 0x800013b0 li      a0, 0                  #; (wrb) a0  <-- 0
       0    11048        M 0x800013b4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    11049        M 0x800013b8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0    11050        M 0x800013bc jalr    s2                     #; s2  = 0x80001400, (wrb) ra  <-- 0x800013c0, goto 0x80001400
       0    11053        M 0x80001400 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800014a8
       0    11058        M 0x800014a8 ret                            #; ra  = 0x800013c0, goto 0x800013c0
       0    11059        M 0x800013c0 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0    11060        M 0x800013c4 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0    11063        M                                           #; (lsu) s11 <-- 0
       0    11064        M 0x800013c8 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0    11067        M                                           #; (lsu) s10 <-- 0
       0    11068        M 0x800013cc lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0    11071        M                                           #; (lsu) s9  <-- 0
       0    11072        M 0x800013d0 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0    11075        M                                           #; (lsu) s8  <-- 0
       0    11076        M 0x800013d4 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0    11079        M                                           #; (lsu) s7  <-- 0
       0    11080        M 0x800013d8 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0    11083        M                                           #; (lsu) s6  <-- 0
       0    11084        M 0x800013dc lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0    11087        M                                           #; (lsu) s5  <-- 0
       0    11088        M 0x800013e0 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0    11091        M                                           #; (lsu) s4  <-- 0
       0    11092        M 0x800013e4 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0    11095        M                                           #; (lsu) s3  <-- 0
       0    11096        M 0x800013e8 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0    11099        M                                           #; (lsu) s2  <-- 0
       0    11100        M 0x800013ec lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0    11103        M                                           #; (lsu) s1  <-- 0
       0    11104        M 0x800013f0 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0    11107        M                                           #; (lsu) s0  <-- 4918
       0    11108        M 0x800013f4 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0    11109        M 0x800013f8 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0    11111        M                                           #; (lsu) ra  <-- 0x800007fc
       0    11112        M 0x800013fc ret                            #; ra  = 0x800007fc, goto 0x800007fc
       0    11115        M 0x800007fc lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0    11118        M 0x80000800 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0    11119        M                                           #; (lsu) ra  <-- 0x80000788
       0    11120        M 0x80000804 ret                            #; ra  = 0x80000788, goto 0x80000788
       0    11132        M 0x80000788 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002788
       0    11133        M 0x8000078c addi    a0, a0, 1880           #; a0  = 0x80002788, (wrb) a0  <-- 0x80002ee0
       0    11137        M 0x80000790 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ee0]
       0    11138        M 0x8000079c lw      s0, 24(sp)             #; sp  = 0x0011ff40, s0  <~~ Word[0x0011ff58]
       0    11146        M                                           #; (f:lsu) ft0  <-- 0.0001
       0    11147        M 0x80000794 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0
       0    11148        M                                           #; (lsu) s0  <-- 0
       0    11149        M 0x800007a0 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c], (acc) ra  <-- 0x01c12083
                         M 0x80000798 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
       0    11150        M 0x800007a4 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
                         M                                           #; (f:lsu) fs0  <-- 0.0
       0    11152        M                                           #; (lsu) ra  <-- 0x800029a0
       0    11153        M 0x800007a8 ret                            #; ra  = 0x800029a0, goto 0x800029a0
       0    11156        M 0x800029a0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0    11157        M 0x800029a4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029a4
       0    11158        M 0x800029a8 jalr    ra, ra, 524            #; ra  = 0x800029a4, (wrb) ra  <-- 0x800029ac, goto 0x80002bb0
       0    11170        M 0x80002bb0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0    11171        M 0x80002bb4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800029ac ~~> Word[0x0011ff5c]
       0    11172        M 0x80002bb8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bb8
       0    11173        M 0x80002bbc jalr    ra, ra, -1584          #; ra  = 0x80002bb8, (wrb) ra  <-- 0x80002bc0, goto 0x80002588
       0    11184        M 0x80002588 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0    11185        M 0x8000258c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0    11187        M 0x80002590 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0    11190        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    11191        M 0x80002594 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0    11194        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    11195        M 0x80002598 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0    11196        M 0x8000259c ret                            #; ra  = 0x80002bc0, goto 0x80002bc0
       0    11198        M                                           #; (lsu) a0  <-- 0x00120190
       0    11199        M 0x80002bc0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0    11209        M                                           #; (lsu) a0  <-- 0
       0    11210        M 0x80002bc4 mv      zero, a0               #; a0  = 0
       0    11211        M 0x80002bc8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0    11212        M 0x80002bcc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0    11214        M                                           #; (lsu) ra  <-- 0x800029ac
       0    11215        M 0x80002bd0 ret                            #; ra  = 0x800029ac, goto 0x800029ac
       0    11229        M 0x800029ac mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0    11233        M 0x800029b0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029b0
       0    11234        M 0x800029b4 jalr    ra, ra, 556            #; ra  = 0x800029b0, (wrb) ra  <-- 0x800029b8, goto 0x80002bdc
       0    11235        M 0x80002bdc addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0    11236        M 0x80002be0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0    11237        M 0x80002be4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x800029b8 ~~> Word[0x0011ff5c]
       0    11238        M 0x80002be8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002be8
       0    11239        M 0x80002bec jalr    ra, ra, -1664          #; ra  = 0x80002be8, (wrb) ra  <-- 0x80002bf0, goto 0x80002568
       0    11258        M 0x80002568 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0    11259        M 0x8000256c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0    11270        M 0x80002570 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0    11273        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    11274        M 0x80002574 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0    11279        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    11280        M 0x80002578 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0    11281        M 0x8000257c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    11283        M                                           #; (lsu) a0  <-- 0
       0    11284        M 0x80002580 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0    11285        M 0x80002584 ret                            #; ra  = 0x80002bf0, goto 0x80002bf0
       0    11286        M 0x80002bf0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0    11289        M                                           #; (lsu) t0  <-- 0
       0    11290        M 0x80002bf4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0    11291        M 0x80002bf8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0    11292        M 0x80002bfc bnez    a0, pc + 24            #; a0  = 0, not taken
       0    11293        M                                           #; (lsu) ra  <-- 0x800029b8
       0    11297        M 0x80002c00 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0    11298        M 0x80002c04 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0    11299        M 0x80002c08 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002c08
       0    11300        M 0x80002c0c addi    t1, t1, 632            #; t1  = 0x80002c08, (wrb) t1  <-- 0x80002e80
       0    11308        M 0x80002c10 sw      t0, 0(t1)              #; t1  = 0x80002e80, 1 ~~> Word[0x80002e80]
       0    11309        M 0x80002c14 ret                            #; ra  = 0x800029b8, goto 0x800029b8
       0    11322        M 0x800029b8 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 4918):
snitch_loads                                    38
snitch_stores                                   51
fpss_stores                                    201
fpss_loads                                       0
snitch_avg_load_latency                    18.2632
snitch_occupancy                            0.3770
snitch_fseq_rel_offloads                    0.1897
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                           1.0
fpss_avg_load_latency                            0
fpss_occupancy                              0.0882
fpss_fpu_occupancy                          0.0473
fpss_fpu_rel_occupancy                      0.5358
cycles                                        4907
total_ipc                                   0.4653

Performance metrics for section 1 @ (4920, 5619):
fpss_loads                                     200
snitch_loads                                     0
snitch_avg_load_latency                          0
snitch_occupancy                            0.0843
snitch_fseq_rel_offloads                    0.8366
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        2.9901
fpss_avg_load_latency                        1.685
fpss_occupancy                              0.4314
fpss_fpu_occupancy                          0.1443
fpss_fpu_rel_occupancy                      0.3344
cycles                                         700
total_ipc                                   0.5157

Performance metrics for section 2 @ (5621, 11322):
snitch_stores                                  171
snitch_loads                                   177
fpss_loads                                      13
fpss_stores                                      4
snitch_avg_load_latency                     9.6610
snitch_occupancy                            0.3045
snitch_fseq_rel_offloads                    0.0209
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        0.8571
fpss_avg_load_latency                       5.9231
fpss_occupancy                              0.0065
fpss_fpu_occupancy                          0.0037
fpss_fpu_rel_occupancy                      0.5676
cycles                                        5702
total_ipc                                   0.3109
