       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x80002930
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x80002930, (wrb) ra  <-- 4120, goto 0x80002930
       0      269        M 0x80002930 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003930
       0      270        M 0x80002934 addi    gp, gp, -232           #; gp  = 0x80003930, (wrb) gp  <-- 0x80003848
       0      271        M 0x80002938 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002938
       0      272        M 0x8000293c jalr    ra, ra, 964            #; ra  = 0x80002938, (wrb) ra  <-- 0x80002940, goto 0x80002cfc
       0      292        M 0x80002cfc mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002d00 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002d04 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002d08 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80002d0c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80002d10 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80002d14 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80002d18 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80002d1c mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80002d20 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80002d24 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80002d28 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80002d2c ret                            #; ra  = 0x80002940, goto 0x80002940
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x80002940 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x80002944 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x80002948 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002948
       0      508        M 0x8000294c jalr    ra, ra, 1036           #; ra  = 0x80002948, (wrb) ra  <-- 0x80002950, goto 0x80002d54
       0      523        M 0x80002d54 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80002d58 ret                            #; ra  = 0x80002950, goto 0x80002950
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x80002950 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x80002954 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x80002958 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x8000295c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80002960 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80002964 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002964
       0      551        M 0x80002968 addi    t0, t0, 2036           #; t0  = 0x80002964, (wrb) t0  <-- 0x80003158
       0      552        M 0x8000296c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000296c
       0      562        M 0x80002970 addi    t1, t1, 2032           #; t1  = 0x8000296c, (wrb) t1  <-- 0x8000315c
       0      563        M 0x80002974 bge     t0, t1, pc + 16        #; t0  = 0x80003158, t1  = 0x8000315c, not taken
       0      564        M 0x80002978 sw      zero, 0(t0)            #; t0  = 0x80003158, 0 ~~> Word[0x80003158]
       0      565        M 0x8000297c addi    t0, t0, 4              #; t0  = 0x80003158, (wrb) t0  <-- 0x8000315c
       0      573        M 0x80002980 blt     t0, t1, pc - 8         #; t0  = 0x8000315c, t1  = 0x8000315c, not taken
       0      574        M 0x80002984 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80002988 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x8000298c beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80002990 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80002994 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80002998 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x8000299c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x800029a0 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x800029a4 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x800029a8 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x800029ac fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x800029b0 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x800029b4 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x800029b8 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x800029bc fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x800029c0 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x800029c4 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x800029c8 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x800029cc fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x800029d0 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x800029d4 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x800029d8 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x800029dc fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x800029e0 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x800029e4 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x800029e8 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x800029ec fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x800029f0 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x800029f4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x800029f8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x800029fc fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x80002a00 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x80002a04 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x80002a08 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x80002a0c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x80002a10 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x80002a14 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x80002a18 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a18
       0      684        M 0x80002a1c lw      t0, 900(t0)            #; t0  = 0x80002a18, t0  <~~ Word[0x80002d9c]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x80002a20 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x80002a24 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x80002a28 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002a28
       0      708        M 0x80002a2c lw      t2, 880(t2)            #; t2  = 0x80002a28, t2  <~~ Word[0x80002d98]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80002a30 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80002a34 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80002a38 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x80002a3c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80002a40 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80002a44 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80002a48 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x80002a4c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80002a50 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a50
       0      762        M 0x80002a54 addi    t0, t0, 1528           #; t0  = 0x80002a50, (wrb) t0  <-- 0x80003048
       0      763        M 0x80002a58 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002a58
       0      764        M 0x80002a5c addi    t1, t1, 1520           #; t1  = 0x80002a58, (wrb) t1  <-- 0x80003048
       0      775        M 0x80002a60 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002a60
       0      776        M 0x80002a64 addi    t2, t2, 1512           #; t2  = 0x80002a60, (wrb) t2  <-- 0x80003048
       0      777        M 0x80002a68 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002a68
       0      778        M 0x80002a6c addi    t3, t3, 1520           #; t3  = 0x80002a68, (wrb) t3  <-- 0x80003058
       0      787        M 0x80002a70 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003048, (wrb) sp  <-- 0x80122fb8
       0      788        M 0x80002a74 sub     sp, sp, t1             #; sp  = 0x80122fb8, t1  = 0x80003048, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80002a78 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003048, (wrb) sp  <-- 0x80122fb8
       0      790        M 0x80002a7c sub     sp, sp, t3             #; sp  = 0x80122fb8, t3  = 0x80003058, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80002a80 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80002a84 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80002a88 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x80002a8c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80002a90 bge     t0, t1, pc + 24        #; t0  = 0x80003048, t1  = 0x80003048, taken, goto 0x80002aa8
       0      823        M 0x80002aa8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002aa8
       0      824        M 0x80002aac addi    t0, t0, 1440           #; t0  = 0x80002aa8, (wrb) t0  <-- 0x80003048
       0      835        M 0x80002ab0 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002ab0
       0      836        M 0x80002ab4 addi    t1, t1, 1448           #; t1  = 0x80002ab0, (wrb) t1  <-- 0x80003058
       0      837        M 0x80002ab8 bge     t0, t1, pc + 20        #; t0  = 0x80003048, t1  = 0x80003058, not taken
       0      838        M 0x80002abc sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002ac0 addi    t0, t0, 4              #; t0  = 0x80003048, (wrb) t0  <-- 0x8000304c
       0      848        M 0x80002ac4 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002ac8 blt     t0, t2, pc - 12        #; t0  = 0x8000304c, t2  = 0x80003048, not taken
       0      850        M 0x80002acc addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80002ad0 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80002ad4 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80002ad8 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x80002adc sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80002ae0 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80002ae4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ae4
       0      877        M 0x80002ae8 jalr    ra, ra, -1056          #; ra  = 0x80002ae4, (wrb) ra  <-- 0x80002aec, goto 0x800026c4
       0      899        M 0x800026c4 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      900        M 0x800026c8 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      902        M 0x800026cc lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      923        M                                           #; (lsu) t1  <-- 0
       0      924        M 0x800026d0 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      925        M 0x800026d4 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      963        M                                           #; (lsu) a6  <-- 1
       0      964        M 0x800026d8 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1003        M                                           #; (lsu) a7  <-- 1
       0     1004        M 0x800026dc lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1005        M 0x800026e0 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1008        M                                           #; (acc) a0  <-- 0x02580533
       0     1043        M                                           #; (lsu) t0  <-- 8
       0     1044        M 0x800026e4 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1047        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1048        M 0x800026e8 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1049        M 0x800026ec csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1050        M 0x800026f0 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1051        M 0x800026f4 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1055        M 0x800026f8 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1056        M 0x800026fc sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1062        M 0x80002700 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1063        M 0x80002704 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1064        M 0x80002708 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1065        M 0x8000270c lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1083        M                                           #; (lsu) a0  <-- 0x80000000
       0     1084        M 0x80002710 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1085        M 0x80002714 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1086        M 0x80002718 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1087        M 0x8000271c lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1123        M                                           #; (lsu) a0  <-- 0
       0     1124        M 0x80002720 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1125        M 0x80002724 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1163        M                                           #; (lsu) a1  <-- 1
       0     1164        M 0x80002728 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1165        M 0x8000272c sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1166        M 0x80002730 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1167        M 0x80002734 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1168        M 0x80002738 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1169        M 0x8000273c lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1190        M                                           #; (lsu) a0  <-- 0x00020000
       0     1191        M 0x80002740 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1192        M 0x80002744 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1193        M 0x80002748 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1194        M 0x8000274c sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1195        M 0x80002750 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1196        M 0x80002754 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1197        M 0x80002758 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1198        M 0x8000275c add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1208        M 0x80002760 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1209        M 0x80002764 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1210        M 0x80002768 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1211        M 0x8000276c add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1222        M 0x80002770 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1223        M 0x80002774 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1224        M 0x80002778 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1226        M 0x8000277c sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1234        M 0x80002780 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1235        M 0x80002784 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1236        M 0x80002788 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1237        M 0x8000278c sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1246        M 0x80002790 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1250        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1251        M 0x80002794 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1254        M                                           #; (lsu) a1  <-- 0
       0     1255        M 0x80002798 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1256        M 0x8000279c sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1258        M                                           #; (lsu) a0  <-- 8
       0     1259        M 0x800027a0 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1260        M 0x800027a4 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1261        M 0x800027a8 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1263        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1264        M 0x800027ac sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1270        M 0x800027b0 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1271        M 0x800027b4 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1272        M 0x800027b8 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800037b8
       0     1273        M 0x800027bc addi    a1, a1, -1628          #; a1  = 0x800037b8, (wrb) a1  <-- 0x8000315c
       0     1282        M 0x800027c0 add     a0, a0, a1             #; a0  = 0, a1  = 0x8000315c, (wrb) a0  <-- 0x8000315c
       0     1283        M 0x800027c4 sw      zero, 0(a0)            #; a0  = 0x8000315c, 0 ~~> Word[0x8000315c]
       0     1284        M 0x800027c8 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1354        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1355        M 0x800027cc sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1356        M 0x800027d0 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1357        M 0x800027d4 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1358        M 0x800027d8 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1359        M 0x800027dc sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1360        M 0x800027e0 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1361        M 0x800027e4 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1362        M 0x800027e8 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1363        M 0x800027ec sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1364        M 0x800027f0 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1365        M 0x800027f4 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1366        M 0x800027f8 lw      a0, 0(a1)              #; a1  = 0x8000315c, a0  <~~ Word[0x8000315c]
       0     1377        M                                           #; (lsu) a0  <-- 0
       0     1378        M 0x800027fc addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1379        M 0x80002800 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1380        M 0x80002804 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1381        M 0x80002808 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1382        M 0x8000280c sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1383        M 0x80002810 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1384        M 0x80002814 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1385        M 0x80002818 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1386        M 0x8000281c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1391        M 0x80002820 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1392        M 0x80002824 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1393        M 0x80002828 ret                            #; ra  = 0x80002aec, goto 0x80002aec
       0     1406        M 0x80002aec lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1409        M                                           #; (lsu) a0  <-- 0
       0     1410        M 0x80002af0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1413        M                                           #; (lsu) a1  <-- 8
       0     1414        M 0x80002af4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1417        M                                           #; (lsu) a2  <-- 0x00100000
       0     1418        M 0x80002af8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1421        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1422        M 0x80002afc lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1423        M 0x80002b00 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1424        M 0x80002b04 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002b04
       0     1425        M 0x80002b08 addi    t0, t0, 60             #; t0  = 0x80002b04, (wrb) t0  <-- 0x80002b40
       0     1426        M 0x80002b0c csrw    mtvec, t0              #; t0  = 0x80002b40, (lsu) a4  <-- 4132
       0     1434        M 0x80002b10 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b10
       0     1435        M 0x80002b14 jalr    ra, ra, 544            #; ra  = 0x80002b10, (wrb) ra  <-- 0x80002b18, goto 0x80002d30
       0     1451        M 0x80002d30 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1452        M 0x80002d34 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002b18 ~~> Word[0x0011ff5c]
       0     1453        M 0x80002d38 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d38
       0     1454        M 0x80002d3c jalr    ra, ra, -1260          #; ra  = 0x80002d38, (wrb) ra  <-- 0x80002d40, goto 0x8000284c
       0     1472        M 0x8000284c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1484        M 0x80002850 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1485        M 0x80002854 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1488        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1489        M 0x80002858 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1493        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1494        M 0x8000285c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1496        M 0x80002860 ret                            #; ra  = 0x80002d40, goto 0x80002d40
       0     1497        M                                           #; (lsu) a0  <-- 0x00120190
       0     1498        M 0x80002d40 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1527        M                                           #; (lsu) a0  <-- 0
       0     1528        M 0x80002d44 mv      zero, a0               #; a0  = 0
       0     1529        M 0x80002d48 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1530        M 0x80002d4c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1532        M                                           #; (lsu) ra  <-- 0x80002b18
       0     1533        M 0x80002d50 ret                            #; ra  = 0x80002b18, goto 0x80002b18
       0     1537        M 0x80002b18 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000b18
       0     1538        M 0x80002b1c jalr    ra, ra, -1252          #; ra  = 0x80000b18, (wrb) ra  <-- 0x80002b20, goto 0x80000634
       0     1543        M 0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1544        M 0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002b20 ~~> Word[0x0011ff5c]
       0     1546        M 0x80000640 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1547        M 0x80000644 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
                         M 0x8000063c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
       0     1548        M 0x80000648 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1549        M 0x8000064c li      a0, 0                  #; (wrb) a0  <-- 0
       0     1551        M                                           #; (lsu) a1  <-- 0
       0     1559        M 0x80000650 bnez    a1, pc + 1040          #; a1  = 0, not taken
       0     1560        M 0x80000654 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1561        M 0x80000658 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1562        M 0x8000065c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1565        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1571        M 0x80000660 lw      a1, 0(a0)              #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff70]
       0     1574        M                                           #; (lsu) a1  <-- 0x0011ff70
       0     1575        M 0x80000664 lw      a0, 88(a1)             #; a1  = 0x0011ff70, a0  <~~ Word[0x0011ffc8]
       0     1578        M                                           #; (lsu) a0  <-- 0x00100000
       0     1579        M 0x80000668 lw      a2, 80(a1)             #; a1  = 0x0011ff70, a2  <~~ Word[0x0011ffc0]
       0     1582        M                                           #; (lsu) a2  <-- 0x00100000
       0     1583        M 0x8000066c lw      a4, 84(a1)             #; a1  = 0x0011ff70, a4  <~~ Word[0x0011ffc4]
       0     1586        M                                           #; (lsu) a4  <-- 0x0001df30
       0     1587        M 0x80000670 addi    a3, a0, 80             #; a0  = 0x00100000, (wrb) a3  <-- 0x00100050
       0     1588        M 0x80000674 add     a2, a4, a2             #; a4  = 0x0001df30, a2  = 0x00100000, (wrb) a2  <-- 0x0011df30
       0     1589        M 0x80000678 bgeu    a2, a3, pc + 16        #; a2  = 0x0011df30, a3  = 0x00100050, taken, goto 0x80000688
       0     1612        M 0x80000688 srli    a2, a0, 20             #; a0  = 0x00100000, (wrb) a2  <-- 1
       0     1613        M 0x8000068c snez    a7, a2                 #; a2  = 1, (wrb) a7  <-- 1
       0     1624        M 0x80000690 lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     1625        M 0x80000694 addi    a2, a2, -71            #; a2  = 0x00120000, (wrb) a2  <-- 0x0011ffb9
       0     1626        M 0x80000698 sltu    a2, a0, a2             #; a0  = 0x00100000, a2  = 0x0011ffb9, (wrb) a2  <-- 1
       0     1627        M 0x8000069c and     a2, a7, a2             #; a7  = 1, a2  = 1, (wrb) a2  <-- 1
       0     1636        M 0x800006a0 sw      a3, 88(a1)             #; a1  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
       0     1637        M 0x800006a4 beqz    a2, pc + 344           #; a2  = 1, not taken
       0     1638        M 0x800006a8 li      t0, 0                  #; (wrb) t0  <-- 0
       0     1639        M 0x800006ac li      a2, 8                  #; (wrb) a2  <-- 8
       0     1648        M 0x800006b0 li      a3, 9                  #; (wrb) a3  <-- 9
       0     1649        M 0x800006b4 li      a4, 64                 #; (wrb) a4  <-- 64
       0     1650        M 0x800006b8 scfgw   a3, a4                 #; a3  = 9, a4  = 64
       0     1651        M 0x800006bc li      a4, 192                #; (wrb) a4  <-- 192
       0     1660        M 0x800006c0 scfgw   a2, a4                 #; a2  = 8, a4  = 192
       0     1661        M 0x800006c4 li      a4, 32                 #; (wrb) a4  <-- 32
       0     1662        M 0x800006c8 scfgw   zero, a4               #; a4  = 32
       0     1663        M 0x800006cc scfgwi  a0, 896                #; a0  = 0x00100000
       0     1672        M 0x800006d0 auipc   a4, 0x3                #; (wrb) a4  <-- 0x800036d0
       0     1673        M 0x800006d4 addi    a4, a4, -1656          #; a4  = 0x800036d0, (wrb) a4  <-- 0x80003058
       0     1676        M 0x800006d8 fld     ft3, 0(a4)             #; ft3  <~~ Doub[0x80003058]
       0     1677        M 0x800006dc csrrsi  a4, ssr, 1             #; 
       0     1685        M 0x800006e0 fcvt.d.w ft4, zero             #; ac1  = 0, (f:lsu) ft3  <-- 1.0
       0     1686        M                                           #; (f:fpu) ft4  <-- 0.0
       0     1687        M 0x800006ec auipc   a4, 0x3                #; (wrb) a4  <-- 0x800036ec
                         M 0x800006e4 fsgnj.d ft0, ft4, ft4          #; ft4  = 0.0, ft4  = 0.0
       0     1688        M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0, (f:fpu) ft0  <-- 0.0
       0     1689        M                                           #; (f:fpu) ft0  <-- 1.0
       0     1696        M 0x800006f0 addi    a4, a4, -1676          #; a4  = 0x800036ec, (wrb) a4  <-- 0x80003060
       0     1698        M 0x800006f8 auipc   a4, 0x3                #; (wrb) a4  <-- 0x800036f8
       0     1699        M 0x800006fc addi    a4, a4, -1680          #; a4  = 0x800036f8, (wrb) a4  <-- 0x80003068
                         M 0x800006f4 fld     ft3, 0(a4)             #; ft3  <~~ Doub[0x80003060]
       0     1708        M                                           #; (f:lsu) ft3  <-- 2.0
       0     1709        M 0x80000704 auipc   a4, 0x3                #; (wrb) a4  <-- 0x80003704
       0     1710        M 0x80000708 addi    a4, a4, -1684          #; a4  = 0x80003704, (wrb) a4  <-- 0x80003070
                         M 0x80000700 fld     ft4, 0(a4)             #; ft4  <~~ Doub[0x80003068]
       0     1713        M 0x8000070c fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x80003070]
       0     1719        M                                           #; (f:lsu) ft4  <-- 3.0
       0     1720        M 0x80000710 auipc   a4, 0x3                #; (wrb) a4  <-- 0x80003710
       0     1721        M 0x80000714 addi    a4, a4, -1688          #; a4  = 0x80003710, (wrb) a4  <-- 0x80003078
       0     1722        M                                           #; (f:lsu) ft5  <-- 4.0
       0     1724        M 0x80000718 fld     ft6, 0(a4)             #; ft6  <~~ Doub[0x80003078]
       0     1725        M 0x8000071c fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     1726        M                                           #; (f:fpu) ft0  <-- 2.0
       0     1733        M                                           #; (f:lsu) ft6  <-- 5.0
       0     1734        M 0x80000720 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.0, ft4  = 3.0
       0     1735        M 0x8000072c auipc   a4, 0x3                #; (wrb) a4  <-- 0x8000372c
                         M 0x80000724 fsgnj.d ft0, ft5, ft5          #; ft5  = 4.0, ft5  = 4.0, (f:fpu) ft0  <-- 3.0
       0     1736        M 0x80000728 fsgnj.d ft0, ft6, ft6          #; ft6  = 5.0, ft6  = 5.0, (f:fpu) ft0  <-- 4.0
       0     1737        M                                           #; (f:fpu) ft0  <-- 5.0
       0     1744        M 0x80000730 addi    a4, a4, -1708          #; a4  = 0x8000372c, (wrb) a4  <-- 0x80003080
       0     1746        M 0x80000738 auipc   a4, 0x3                #; (wrb) a4  <-- 0x80003738
       0     1747        M 0x8000073c addi    a4, a4, -1712          #; a4  = 0x80003738, (wrb) a4  <-- 0x80003088
                         M 0x80000734 fld     ft3, 0(a4)             #; ft3  <~~ Doub[0x80003080]
       0     1756        M                                           #; (f:lsu) ft3  <-- 6.0
       0     1757        M 0x80000744 auipc   a4, 0x3                #; (wrb) a4  <-- 0x80003744
       0     1758        M 0x80000748 addi    a4, a4, -1716          #; a4  = 0x80003744, (wrb) a4  <-- 0x80003090
                         M 0x80000740 fld     ft4, 0(a4)             #; ft4  <~~ Doub[0x80003088]
       0     1761        M 0x8000074c fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x80003090]
       0     1767        M                                           #; (f:lsu) ft4  <-- 7.0
       0     1768        M 0x80000750 auipc   a4, 0x3                #; (wrb) a4  <-- 0x80003750
       0     1769        M 0x80000754 addi    a4, a4, -1720          #; a4  = 0x80003750, (wrb) a4  <-- 0x80003098
       0     1770        M                                           #; (f:lsu) ft5  <-- 8.0
       0     1772        M 0x80000758 fld     ft6, 0(a4)             #; ft6  <~~ Doub[0x80003098]
       0     1773        M 0x8000075c fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     1774        M                                           #; (f:fpu) ft0  <-- 6.0
       0     1781        M                                           #; (f:lsu) ft6  <-- 9.0
       0     1782        M 0x80000760 fsgnj.d ft0, ft4, ft4          #; ft4  = 7.0, ft4  = 7.0
       0     1783        M 0x80000764 fsgnj.d ft0, ft5, ft5          #; ft5  = 8.0, ft5  = 8.0, (f:fpu) ft0  <-- 7.0
       0     1784        M 0x80000768 fsgnj.d ft0, ft6, ft6          #; ft6  = 9.0, ft6  = 9.0, (f:fpu) ft0  <-- 8.0
       0     1785        M 0x8000076c csrrci  a4, ssr, 1             #; (f:fpu) ft0  <-- 9.0
       0     1792        M 0x80000770 li      a4, 64                 #; (wrb) a4  <-- 64
       0     1793        M 0x80000774 scfgw   a3, a4                 #; a3  = 9, a4  = 64
       0     1794        M 0x80000778 li      a3, 192                #; (wrb) a3  <-- 192
       0     1795        M 0x8000077c scfgw   a2, a3                 #; a2  = 8, a3  = 192
       0     1804        M 0x80000780 li      a2, 32                 #; (wrb) a2  <-- 32
       0     1805        M 0x80000784 scfgw   zero, a2               #; a2  = 32
       0     1806        M 0x80000788 scfgwi  a0, 768                #; a0  = 0x00100000
       0     1808        M 0x8000078c csrrsi  a2, ssr, 1             #; 
       0     1818        M 0x80000790 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     1819        M 0x80000794 fsgnj.d ft4, ft0, ft0          #; ft0  = 1.0, ft0  = 1.0, (f:fpu) ft3  <-- 0.0
       0     1820        M 0x80000798 fsgnj.d ft5, ft0, ft0          #; ft0  = 2.0, ft0  = 2.0, (f:fpu) ft4  <-- 1.0
       0     1821        M 0x8000079c fsgnj.d ft6, ft0, ft0          #; ft0  = 3.0, ft0  = 3.0, (f:fpu) ft5  <-- 2.0
       0     1822        M                                           #; (f:fpu) ft6  <-- 3.0
       0     1830        M 0x800007a0 fsgnj.d ft7, ft0, ft0          #; ft0  = 4.0, ft0  = 4.0
       0     1831        M 0x800007a4 fsgnj.d fa0, ft0, ft0          #; ft0  = 5.0, ft0  = 5.0, (f:fpu) ft7  <-- 4.0
       0     1832        M 0x800007a8 fsgnj.d fa1, ft0, ft0          #; ft0  = 6.0, ft0  = 6.0, (f:fpu) fa0  <-- 5.0
       0     1833        M 0x800007ac fsgnj.d fa2, ft0, ft0          #; ft0  = 7.0, ft0  = 7.0, (f:fpu) fa1  <-- 6.0
       0     1834        M                                           #; (f:fpu) fa2  <-- 7.0
       0     1840        M 0x800007b0 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800037b0
       0     1841        M 0x800007b4 addi    a2, a2, -1808          #; a2  = 0x800037b0, (wrb) a2  <-- 0x800030a0
       0     1844        M 0x800007b8 fld     fa3, 0(a2)             #; fa3  <~~ Doub[0x800030a0]
       0     1845        M 0x800007bc fsgnj.d fa4, ft0, ft0          #; ft0  = 8.0, ft0  = 8.0
       0     1846        M                                           #; (f:fpu) fa4  <-- 8.0
       0     1853        M                                           #; (f:lsu) fa3  <-- -45.0
       0     1854        M 0x800007c0 fsgnj.d fa5, ft0, ft0          #; ft0  = 9.0, ft0  = 9.0
       0     1855        M 0x800007c4 csrrci  a2, ssr, 1             #; (f:fpu) fa5  <-- 9.0
       0     1857        M 0x800007c8 fadd.d  ft3, ft3, fa3          #; ft3  = 0.0, fa3  = -45.0
       0     1860        M                                           #; (f:fpu) ft3  <-- -45.0
       0     1861        M 0x800007cc fadd.d  ft3, ft3, ft4          #; ft3  = -45.0, ft4  = 1.0
       0     1864        M                                           #; (f:fpu) ft3  <-- -44.0
       0     1866        M 0x800007d0 fadd.d  ft3, ft3, ft5          #; ft3  = -44.0, ft5  = 2.0
       0     1869        M                                           #; (f:fpu) ft3  <-- -42.0
       0     1870        M 0x800007d4 fadd.d  ft3, ft3, ft6          #; ft3  = -42.0, ft6  = 3.0
       0     1873        M                                           #; (f:fpu) ft3  <-- -39.0
       0     1874        M 0x800007d8 fadd.d  ft3, ft3, ft7          #; ft3  = -39.0, ft7  = 4.0
       0     1877        M                                           #; (f:fpu) ft3  <-- -35.0
       0     1878        M 0x800007dc fadd.d  ft3, ft3, fa0          #; ft3  = -35.0, fa0  = 5.0
       0     1881        M                                           #; (f:fpu) ft3  <-- -30.0
       0     1882        M 0x800007e0 fadd.d  ft3, ft3, fa1          #; ft3  = -30.0, fa1  = 6.0
       0     1885        M                                           #; (f:fpu) ft3  <-- -24.0
       0     1886        M 0x800007e4 fadd.d  ft3, ft3, fa2          #; ft3  = -24.0, fa2  = 7.0
       0     1888        M 0x800007f0 li      a6, 1                  #; (wrb) a6  <-- 1
       0     1889        M 0x800007f4 li      a7, 1                  #; (wrb) a7  <-- 1
                         M                                           #; (f:fpu) ft3  <-- -17.0
       0     1890        M 0x800007f8 j       pc + 0x84              #; goto 0x8000087c
                         M 0x800007e8 fadd.d  ft3, ft3, fa4          #; ft3  = -17.0, fa4  = 8.0
       0     1893        M                                           #; (f:fpu) ft3  <-- -9.0
       0     1894        M 0x800007ec fadd.d  ft3, ft3, fa5          #; ft3  = -9.0, fa5  = 9.0
       0     1897        M                                           #; (f:fpu) ft3  <-- 0.0
       0     1900        M 0x8000087c addi    a4, a0, 8              #; a0  = 0x00100000, (wrb) a4  <-- 0x00100008
       0     1912        M 0x80000880 addi    a5, a0, 64             #; a0  = 0x00100000, (wrb) a5  <-- 0x00100040
       0     1913        M 0x80000884 sltu    a2, a5, a0             #; a5  = 0x00100040, a0  = 0x00100000, (wrb) a2  <-- 0
       0     1914        M 0x80000888 add     a1, t0, a2             #; t0  = 0, a2  = 0, (wrb) a1  <-- 0
       0     1915        M 0x8000088c addi    a3, a0, 72             #; a0  = 0x00100000, (wrb) a3  <-- 0x00100048
       0     1924        M 0x80000890 sltu    a2, a3, a4             #; a3  = 0x00100048, a4  = 0x00100008, (wrb) a2  <-- 0
       0     1925        M 0x80000894 beqz    a1, pc + 20            #; a1  = 0, taken, goto 0x800008a8
       0     1936        M 0x800008a8 sltu    a5, a5, a4             #; a5  = 0x00100040, a4  = 0x00100008, (wrb) a5  <-- 0
       0     1937        M 0x800008ac beq     a2, t0, pc - 12        #; a2  = 0, t0  = 0, taken, goto 0x800008a0
       0     1938        M 0x800008a0 sltu    a1, a3, a0             #; a3  = 0x00100048, a0  = 0x00100000, (wrb) a1  <-- 0
       0     1939        M 0x800008a4 j       pc + 0x10              #; goto 0x800008b4
       0     1950        M 0x800008b4 or      a1, a5, a1             #; a5  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1951        M 0x800008b8 lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     1952        M 0x800008bc addi    a2, a2, -63            #; a2  = 0x00120000, (wrb) a2  <-- 0x0011ffc1
       0     1962        M 0x800008c0 sltu    a3, a0, a2             #; a0  = 0x00100000, a2  = 0x0011ffc1, (wrb) a3  <-- 1
       0     1963        M 0x800008c4 and     a3, a7, a3             #; a7  = 1, a3  = 1, (wrb) a3  <-- 1
       0     1964        M 0x800008c8 and     a1, a3, a1             #; a3  = 1, a1  = 0, (wrb) a1  <-- 0
       0     1965        M 0x800008cc srli    a3, a4, 20             #; a4  = 0x00100008, (wrb) a3  <-- 1
       0     1974        M 0x800008d0 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
       0     1975        M 0x800008d4 sltu    a2, a4, a2             #; a4  = 0x00100008, a2  = 0x0011ffc1, (wrb) a2  <-- 1
       0     1976        M 0x800008d8 and     a2, a3, a2             #; a3  = 1, a2  = 1, (wrb) a2  <-- 1
       0     1977        M 0x800008dc and     a1, a2, a1             #; a2  = 1, a1  = 0, (wrb) a1  <-- 0
       0     1986        M 0x800008e0 beqz    a1, pc + 200           #; a1  = 0, taken, goto 0x800009a8
       0     2011        M 0x800009a8 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x00100000]
       0     2012        M                                           #; (f:lsu) ft4  <-- 0.0
       0     2013        M 0x800009ac fsd     ft4, 8(a0)             #; 0.0 ~~> Doub[0x00100008]
       0     2023        M 0x800009b0 fsd     ft4, 16(a0)            #; 0.0 ~~> Doub[0x00100010]
       0     2024        M 0x800009b4 fsd     ft4, 24(a0)            #; 0.0 ~~> Doub[0x00100018]
       0     2025        M 0x800009b8 fsd     ft4, 32(a0)            #; 0.0 ~~> Doub[0x00100020]
       0     2026        M 0x800009bc fsd     ft4, 40(a0)            #; 0.0 ~~> Doub[0x00100028]
       0     2035        M 0x800009c0 fsd     ft4, 48(a0)            #; 0.0 ~~> Doub[0x00100030]
       0     2036        M 0x800009c4 fsd     ft4, 56(a0)            #; 0.0 ~~> Doub[0x00100038]
       0     2037        M 0x800009c8 fsd     ft4, 64(a0)            #; 0.0 ~~> Doub[0x00100040]
       0     2038        M 0x800009cc fsd     ft4, 72(a0)            #; 0.0 ~~> Doub[0x00100048]
       0     2045        M 0x800009d0 beqz    a6, pc - 120           #; a6  = 1, not taken
       0     2046        M 0x800009d4 li      a1, 8                  #; (wrb) a1  <-- 8
       0     2047        M 0x800009d8 li      a2, 9                  #; (wrb) a2  <-- 9
       0     2048        M 0x800009dc li      a3, 64                 #; (wrb) a3  <-- 64
       0     2068        M 0x800009e0 li      a4, 192                #; (wrb) a4  <-- 192
       0     2069        M 0x800009e4 scfgw   a2, a3                 #; a2  = 9, a3  = 64
       0     2070        M 0x800009e8 scfgw   a1, a4                 #; a1  = 8, a4  = 192
       0     2071        M 0x800009ec li      a1, 32                 #; (wrb) a1  <-- 32
       0     2080        M 0x800009f0 scfgw   zero, a1               #; a1  = 32
       0     2081        M 0x800009f4 scfgwi  a0, 768                #; a0  = 0x00100000
       0     2083        M                                           #; (acc) tp  <-- 0x22000253
                         M 0x800009f8 csrrsi  a0, ssr, 1             #; 
       0     2085        M 0x800009fc fsgnj.d ft4, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     2086        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2094        M 0x80000a00 fadd.d  ft4, ft0, ft4          #; ft0  = 0.0, ft4  = 0.0
       0     2097        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2098        M 0x80000a04 fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
       0     2101        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2102        M 0x80000a08 fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
       0     2105        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2106        M 0x80000a0c fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
       0     2109        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2110        M 0x80000a10 fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
       0     2113        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2114        M 0x80000a14 fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
       0     2117        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2118        M 0x80000a18 fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
       0     2121        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2122        M 0x80000a1c fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
       0     2125        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2126        M 0x80000a20 fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
       0     2127        M 0x80000a24 csrrci  a0, ssr, 1             #; 
       0     2129        M 0x80000a28 fsgnjx.d ft3, ft3, ft3         #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft4  <-- 0.0
       0     2130        M 0x80000a2c fsgnjx.d ft4, ft4, ft4         #; ft4  = 0.0, ft4  = 0.0, (f:fpu) ft3  <-- 0.0
       0     2131        M 0x80000a38 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
                         M                                           #; (f:fpu) ft4  <-- 0.0
       0     2132        M 0x80000a30 fadd.d  fs0, ft4, ft3          #; ft4  = 0.0, ft3  = 0.0
       0     2134        M                                           #; (lsu) a2  <-- 0
       0     2135        M 0x80000a3c lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
                         M                                           #; (f:fpu) fs0  <-- 0.0
       0     2137        M 0x80000a34 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
       0     2138        M                                           #; (lsu) a3  <-- 0
       0     2141        M 0x80000a40 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a40
       0     2142        M 0x80000a44 addi    a0, a0, 869            #; a0  = 0x80002a40, (wrb) a0  <-- 0x80002da5
       0     2143        M 0x80000a48 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a48
       0     2144        M 0x80000a4c jalr    ra, ra, 40             #; ra  = 0x80000a48, (wrb) ra  <-- 0x80000a50, goto 0x80000a70
       0     2155        M 0x80000a70 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     2156        M 0x80000a74 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000a50 ~~> Word[0x0011ff1c]
       0     2157        M 0x80000a78 mv      t0, a0                 #; a0  = 0x80002da5, (wrb) t0  <-- 0x80002da5
       0     2158        M 0x80000a7c sw      a7, 44(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff3c]
       0     2167        M 0x80000a80 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff38]
       0     2168        M 0x80000a84 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff34]
       0     2169        M 0x80000a88 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 192 ~~> Word[0x0011ff30]
       0     2170        M 0x80000a8c sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
       0     2179        M 0x80000a90 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     2180        M 0x80000a94 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 32 ~~> Word[0x0011ff24]
       0     2181        M 0x80000a98 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     2182        M 0x80000a9c sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     2191        M 0x80000aa0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001aa0
       0     2192        M 0x80000aa4 addi    a0, a0, -988           #; a0  = 0x80001aa0, (wrb) a0  <-- 0x800016c4
       0     2193        M 0x80000aa8 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     2194        M 0x80000aac li      a2, -1                 #; (wrb) a2  <-- -1
       0     2203        M 0x80000ab0 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     2204        M 0x80000ab4 mv      a3, t0                 #; t0  = 0x80002da5, (wrb) a3  <-- 0x80002da5
       0     2205        M 0x80000ab8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000ab8
       0     2206        M 0x80000abc jalr    ra, ra, 20             #; ra  = 0x80000ab8, (wrb) ra  <-- 0x80000ac0, goto 0x80000acc
       0     2215        M 0x80000acc addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     2227        M 0x80000ad0 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000ac0 ~~> Word[0x0011ff0c]
       0     2228        M 0x80000ad4 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
       0     2229        M 0x80000ad8 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     2230        M 0x80000adc sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     2239        M 0x80000ae0 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     2240        M 0x80000ae4 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     2241        M 0x80000ae8 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     2242        M 0x80000aec sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     2251        M 0x80000af0 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     2252        M 0x80000af4 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     2253        M 0x80000af8 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     2254        M 0x80000afc sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     2263        M 0x80000b00 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     2264        M 0x80000b04 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     2265        M 0x80000b08 mv      s0, a3                 #; a3  = 0x80002da5, (wrb) s0  <-- 0x80002da5
       0     2266        M 0x80000b0c mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     2275        M 0x80000b10 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     2276        M 0x80000b14 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     2277        M 0x80000b18 mv      s2, a0                 #; a0  = 0x800016c4, (wrb) s2  <-- 0x800016c4
       0     2278        M 0x80000b1c j       pc + 0xc               #; goto 0x80000b28
       0     2287        M 0x80000b28 li      s8, 0                  #; (wrb) s8  <-- 0
       0     2288        M 0x80000b2c li      s6, 37                 #; (wrb) s6  <-- 37
       0     2299        M 0x80000b30 li      s11, 16                #; (wrb) s11 <-- 16
       0     2300        M 0x80000b34 li      s7, 46                 #; (wrb) s7  <-- 46
       0     2301        M 0x80000b38 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     2302        M 0x80000b3c addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     2311        M 0x80000b40 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     2312        M 0x80000b44 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     2313        M 0x80000b48 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     2314        M 0x80000b4c sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     2323        M 0x80000b50 addi    s10, s0, 2             #; s0  = 0x80002da5, (wrb) s10 <-- 0x80002da7
       0     2324        M 0x80000b54 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     2325        M 0x80000b58 li      s8, 10                 #; (wrb) s8  <-- 10
       0     2326        M 0x80000b5c lbu     a0, 0(s0)              #; s0  = 0x80002da5, a0  <~~ Byte[0x80002da5]
       0     2337        M                                           #; (lsu) a0  <-- 101
       0     2338        M 0x80000b60 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     2339        M 0x80000b64 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     2340        M 0x80000b68 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     2341        M 0x80000b6c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2347        M 0x80000b70 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     2348        M 0x80000b74 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2349        M 0x80000b78 jalr    s2                     #; s2  = 0x800016c4, (wrb) ra  <-- 0x80000b7c, goto 0x800016c4
       0     2370        M 0x800016c4 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     2371        M 0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2372        M 0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2382        M 0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2383        M 0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
       0     2384        M 0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
       0     2385        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2386        M 0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     2394        M 0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     2405        M                                           #; (lsu) a4  <-- 0
       0     2406        M 0x800016e4 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     2407        M 0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 1 ~~> Word[0x8000315c]
       0     2408        M 0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 0, (wrb) a4  <-- 0x8000315c
       0     2409        M 0x800016f0 sb      a0, 72(a4)             #; a4  = 0x8000315c, 101 ~~> Byte[0x800031a4]
       0     2410        M 0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     2431        M                                           #; (lsu) a4  <-- 1
       0     2432        M 0x800016f8 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     2433        M 0x800016fc snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     2434        M 0x80001700 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     2435        M 0x80001704 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     2436        M 0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2437        M 0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
       0     2457        M 0x8000176c ret                            #; ra  = 0x80000b7c, goto 0x80000b7c
       0     2471        M 0x80000b7c addi    s0, s0, 1              #; s0  = 0x80002da5, (wrb) s0  <-- 0x80002da6
       0     2474        M 0x80000b80 addi    s10, s10, 1            #; s10 = 0x80002da7, (wrb) s10 <-- 0x80002da8
       0     2475        M 0x80000b84 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     2476        M 0x80000b88 lbu     a0, 0(s0)              #; s0  = 0x80002da6, a0  <~~ Byte[0x80002da6]
       0     2487        M                                           #; (lsu) a0  <-- 114
       0     2488        M 0x80000b8c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b64
       0     2489        M 0x80000b64 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2490        M 0x80000b68 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     2491        M 0x80000b6c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2492        M 0x80000b70 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     2493        M 0x80000b74 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2494        M 0x80000b78 jalr    s2                     #; s2  = 0x800016c4, (wrb) ra  <-- 0x80000b7c, goto 0x800016c4
       0     2497        M 0x800016c4 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2498        M 0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2499        M 0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2500        M 0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2501        M 0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
       0     2502        M 0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
       0     2503        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2504        M 0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     2505        M 0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     2516        M                                           #; (lsu) a4  <-- 1
       0     2517        M 0x800016e4 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     2518        M 0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 2 ~~> Word[0x8000315c]
       0     2519        M 0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 1, (wrb) a4  <-- 0x8000315d
       0     2520        M 0x800016f0 sb      a0, 72(a4)             #; a4  = 0x8000315d, 114 ~~> Byte[0x800031a5]
       0     2521        M 0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     2542        M                                           #; (lsu) a4  <-- 2
       0     2543        M 0x800016f8 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     2544        M 0x800016fc snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     2545        M 0x80001700 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2546        M 0x80001704 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2547        M 0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2548        M 0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
       0     2551        M 0x8000176c ret                            #; ra  = 0x80000b7c, goto 0x80000b7c
       0     2556        M 0x80000b7c addi    s0, s0, 1              #; s0  = 0x80002da6, (wrb) s0  <-- 0x80002da7
       0     2559        M 0x80000b80 addi    s10, s10, 1            #; s10 = 0x80002da8, (wrb) s10 <-- 0x80002da9
       0     2560        M 0x80000b84 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     2561        M 0x80000b88 lbu     a0, 0(s0)              #; s0  = 0x80002da7, a0  <~~ Byte[0x80002da7]
       0     2572        M                                           #; (lsu) a0  <-- 114
       0     2573        M 0x80000b8c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b64
       0     2574        M 0x80000b64 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2575        M 0x80000b68 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     2576        M 0x80000b6c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2577        M 0x80000b70 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     2578        M 0x80000b74 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2579        M 0x80000b78 jalr    s2                     #; s2  = 0x800016c4, (wrb) ra  <-- 0x80000b7c, goto 0x800016c4
       0     2582        M 0x800016c4 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2583        M 0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2584        M 0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2585        M 0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2586        M 0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
       0     2587        M 0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
       0     2588        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2589        M 0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     2590        M 0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     2601        M                                           #; (lsu) a4  <-- 2
       0     2602        M 0x800016e4 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     2603        M 0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 3 ~~> Word[0x8000315c]
       0     2604        M 0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 2, (wrb) a4  <-- 0x8000315e
       0     2605        M 0x800016f0 sb      a0, 72(a4)             #; a4  = 0x8000315e, 114 ~~> Byte[0x800031a6]
       0     2606        M 0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     2627        M                                           #; (lsu) a4  <-- 3
       0     2628        M 0x800016f8 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     2629        M 0x800016fc snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     2630        M 0x80001700 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2631        M 0x80001704 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2632        M 0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2633        M 0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
       0     2636        M 0x8000176c ret                            #; ra  = 0x80000b7c, goto 0x80000b7c
       0     2641        M 0x80000b7c addi    s0, s0, 1              #; s0  = 0x80002da7, (wrb) s0  <-- 0x80002da8
       0     2644        M 0x80000b80 addi    s10, s10, 1            #; s10 = 0x80002da9, (wrb) s10 <-- 0x80002daa
       0     2645        M 0x80000b84 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     2646        M 0x80000b88 lbu     a0, 0(s0)              #; s0  = 0x80002da8, a0  <~~ Byte[0x80002da8]
       0     2657        M                                           #; (lsu) a0  <-- 111
       0     2658        M 0x80000b8c bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000b64
       0     2659        M 0x80000b64 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     2660        M 0x80000b68 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     2661        M 0x80000b6c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2662        M 0x80000b70 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     2663        M 0x80000b74 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2664        M 0x80000b78 jalr    s2                     #; s2  = 0x800016c4, (wrb) ra  <-- 0x80000b7c, goto 0x800016c4
       0     2667        M 0x800016c4 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     2668        M 0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2669        M 0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2670        M 0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2671        M 0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
       0     2672        M 0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
       0     2673        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2674        M 0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     2675        M 0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     2686        M                                           #; (lsu) a4  <-- 3
       0     2687        M 0x800016e4 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     2688        M 0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 4 ~~> Word[0x8000315c]
       0     2689        M 0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 3, (wrb) a4  <-- 0x8000315f
       0     2690        M 0x800016f0 sb      a0, 72(a4)             #; a4  = 0x8000315f, 111 ~~> Byte[0x800031a7]
       0     2691        M 0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     2712        M                                           #; (lsu) a4  <-- 4
       0     2713        M 0x800016f8 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     2714        M 0x800016fc snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     2715        M 0x80001700 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     2716        M 0x80001704 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     2717        M 0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2718        M 0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
       0     2721        M 0x8000176c ret                            #; ra  = 0x80000b7c, goto 0x80000b7c
       0     2726        M 0x80000b7c addi    s0, s0, 1              #; s0  = 0x80002da8, (wrb) s0  <-- 0x80002da9
       0     2729        M 0x80000b80 addi    s10, s10, 1            #; s10 = 0x80002daa, (wrb) s10 <-- 0x80002dab
       0     2730        M 0x80000b84 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     2731        M 0x80000b88 lbu     a0, 0(s0)              #; s0  = 0x80002da9, a0  <~~ Byte[0x80002da9]
       0     2742        M                                           #; (lsu) a0  <-- 114
       0     2743        M 0x80000b8c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b64
       0     2744        M 0x80000b64 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2745        M 0x80000b68 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     2746        M 0x80000b6c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2747        M 0x80000b70 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     2748        M 0x80000b74 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2749        M 0x80000b78 jalr    s2                     #; s2  = 0x800016c4, (wrb) ra  <-- 0x80000b7c, goto 0x800016c4
       0     2752        M 0x800016c4 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2753        M 0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2754        M 0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2755        M 0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2756        M 0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
       0     2757        M 0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
       0     2758        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2759        M 0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     2760        M 0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     2771        M                                           #; (lsu) a4  <-- 4
       0     2772        M 0x800016e4 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     2773        M 0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 5 ~~> Word[0x8000315c]
       0     2774        M 0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 4, (wrb) a4  <-- 0x80003160
       0     2775        M 0x800016f0 sb      a0, 72(a4)             #; a4  = 0x80003160, 114 ~~> Byte[0x800031a8]
       0     2776        M 0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     2797        M                                           #; (lsu) a4  <-- 5
       0     2798        M 0x800016f8 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     2799        M 0x800016fc snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     2800        M 0x80001700 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2801        M 0x80001704 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2802        M 0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2803        M 0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
       0     2806        M 0x8000176c ret                            #; ra  = 0x80000b7c, goto 0x80000b7c
       0     2811        M 0x80000b7c addi    s0, s0, 1              #; s0  = 0x80002da9, (wrb) s0  <-- 0x80002daa
       0     2814        M 0x80000b80 addi    s10, s10, 1            #; s10 = 0x80002dab, (wrb) s10 <-- 0x80002dac
       0     2815        M 0x80000b84 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     2816        M 0x80000b88 lbu     a0, 0(s0)              #; s0  = 0x80002daa, a0  <~~ Byte[0x80002daa]
       0     2827        M                                           #; (lsu) a0  <-- 32
       0     2828        M 0x80000b8c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000b64
       0     2829        M 0x80000b64 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     2830        M 0x80000b68 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     2831        M 0x80000b6c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2832        M 0x80000b70 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     2833        M 0x80000b74 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2834        M 0x80000b78 jalr    s2                     #; s2  = 0x800016c4, (wrb) ra  <-- 0x80000b7c, goto 0x800016c4
       0     2837        M 0x800016c4 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     2838        M 0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2839        M 0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2840        M 0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2841        M 0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
       0     2842        M 0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
       0     2843        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2844        M 0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     2845        M 0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     2856        M                                           #; (lsu) a4  <-- 5
       0     2857        M 0x800016e4 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     2858        M 0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 6 ~~> Word[0x8000315c]
       0     2859        M 0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 5, (wrb) a4  <-- 0x80003161
       0     2860        M 0x800016f0 sb      a0, 72(a4)             #; a4  = 0x80003161, 32 ~~> Byte[0x800031a9]
       0     2861        M 0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     2882        M                                           #; (lsu) a4  <-- 6
       0     2883        M 0x800016f8 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     2884        M 0x800016fc snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     2885        M 0x80001700 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     2886        M 0x80001704 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     2887        M 0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2888        M 0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
       0     2891        M 0x8000176c ret                            #; ra  = 0x80000b7c, goto 0x80000b7c
       0     2896        M 0x80000b7c addi    s0, s0, 1              #; s0  = 0x80002daa, (wrb) s0  <-- 0x80002dab
       0     2899        M 0x80000b80 addi    s10, s10, 1            #; s10 = 0x80002dac, (wrb) s10 <-- 0x80002dad
       0     2900        M 0x80000b84 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     2901        M 0x80000b88 lbu     a0, 0(s0)              #; s0  = 0x80002dab, a0  <~~ Byte[0x80002dab]
       0     2912        M                                           #; (lsu) a0  <-- 61
       0     2913        M 0x80000b8c bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000b64
       0     2914        M 0x80000b64 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     2915        M 0x80000b68 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     2916        M 0x80000b6c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2917        M 0x80000b70 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     2918        M 0x80000b74 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2919        M 0x80000b78 jalr    s2                     #; s2  = 0x800016c4, (wrb) ra  <-- 0x80000b7c, goto 0x800016c4
       0     2922        M 0x800016c4 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     2923        M 0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2924        M 0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2925        M 0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2926        M 0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
       0     2927        M 0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
       0     2928        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2929        M 0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     2930        M 0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     2941        M                                           #; (lsu) a4  <-- 6
       0     2942        M 0x800016e4 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     2943        M 0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 7 ~~> Word[0x8000315c]
       0     2944        M 0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 6, (wrb) a4  <-- 0x80003162
       0     2945        M 0x800016f0 sb      a0, 72(a4)             #; a4  = 0x80003162, 61 ~~> Byte[0x800031aa]
       0     2946        M 0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     2967        M                                           #; (lsu) a4  <-- 7
       0     2968        M 0x800016f8 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     2969        M 0x800016fc snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     2970        M 0x80001700 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     2971        M 0x80001704 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     2972        M 0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2973        M 0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
       0     2976        M 0x8000176c ret                            #; ra  = 0x80000b7c, goto 0x80000b7c
       0     2981        M 0x80000b7c addi    s0, s0, 1              #; s0  = 0x80002dab, (wrb) s0  <-- 0x80002dac
       0     2984        M 0x80000b80 addi    s10, s10, 1            #; s10 = 0x80002dad, (wrb) s10 <-- 0x80002dae
       0     2985        M 0x80000b84 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     2986        M 0x80000b88 lbu     a0, 0(s0)              #; s0  = 0x80002dac, a0  <~~ Byte[0x80002dac]
       0     2997        M                                           #; (lsu) a0  <-- 32
       0     2998        M 0x80000b8c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000b64
       0     2999        M 0x80000b64 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3000        M 0x80000b68 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     3001        M 0x80000b6c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3002        M 0x80000b70 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     3003        M 0x80000b74 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3004        M 0x80000b78 jalr    s2                     #; s2  = 0x800016c4, (wrb) ra  <-- 0x80000b7c, goto 0x800016c4
       0     3007        M 0x800016c4 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3008        M 0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3009        M 0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3010        M 0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3011        M 0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
       0     3012        M 0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
       0     3013        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3014        M 0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     3015        M 0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     3026        M                                           #; (lsu) a4  <-- 7
       0     3027        M 0x800016e4 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     3028        M 0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 8 ~~> Word[0x8000315c]
       0     3029        M 0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 7, (wrb) a4  <-- 0x80003163
       0     3030        M 0x800016f0 sb      a0, 72(a4)             #; a4  = 0x80003163, 32 ~~> Byte[0x800031ab]
       0     3031        M 0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     3052        M                                           #; (lsu) a4  <-- 8
       0     3053        M 0x800016f8 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     3054        M 0x800016fc snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     3055        M 0x80001700 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3056        M 0x80001704 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3057        M 0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3058        M 0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
       0     3061        M 0x8000176c ret                            #; ra  = 0x80000b7c, goto 0x80000b7c
       0     3066        M 0x80000b7c addi    s0, s0, 1              #; s0  = 0x80002dac, (wrb) s0  <-- 0x80002dad
       0     3069        M 0x80000b80 addi    s10, s10, 1            #; s10 = 0x80002dae, (wrb) s10 <-- 0x80002daf
       0     3070        M 0x80000b84 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     3071        M 0x80000b88 lbu     a0, 0(s0)              #; s0  = 0x80002dad, a0  <~~ Byte[0x80002dad]
       0     3082        M                                           #; (lsu) a0  <-- 37
       0     3083        M 0x80000b8c bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000b64
       0     3084        M 0x80000b64 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000b94
       0     3096        M 0x80000b94 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3097        M 0x80000b98 j       pc + 0x10              #; goto 0x80000ba8
       0     3108        M 0x80000ba8 lbu     a0, -1(s10)            #; s10 = 0x80002daf, a0  <~~ Byte[0x80002dae]
       0     3119        M                                           #; (lsu) a0  <-- 102
       0     3120        M 0x80000bac addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     3121        M 0x80000bb0 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000be8
       0     3144        M 0x80000be8 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     3145        M 0x80000bec andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     3156        M 0x80000bf0 addi    a1, s10, -1            #; s10 = 0x80002daf, (wrb) a1  <-- 0x80002dae
       0     3157        M 0x80000bf4 li      a3, 9                  #; (wrb) a3  <-- 9
       0     3158        M 0x80000bf8 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000c74
       0     3179        M 0x80000c74 li      a2, 42                 #; (wrb) a2  <-- 42
       0     3180        M 0x80000c78 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000cc8
       0     3202        M 0x80000cc8 li      s6, 0                  #; (wrb) s6  <-- 0
       0     3203        M 0x80000ccc mv      s10, a1                #; a1  = 0x80002dae, (wrb) s10 <-- 0x80002dae
       0     3214        M 0x80000cd0 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     3215        M 0x80000cd4 li      s7, 0                  #; (wrb) s7  <-- 0
       0     3216        M 0x80000cd8 j       pc + 0xc               #; goto 0x80000ce4
       0     3237        M 0x80000ce4 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     3238        M 0x80000ce8 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     3239        M 0x80000cec slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     3249        M 0x80000cf0 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     3250        M 0x80000cf4 li      a2, 9                  #; (wrb) a2  <-- 9
       0     3251        M 0x80000cf8 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000d5c
       0     3272        M 0x80000d5c addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     3284        M 0x80000d60 li      a2, 83                 #; (wrb) a2  <-- 83
       0     3285        M 0x80000d64 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     3286        M 0x80000d68 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     3287        M 0x80000d6c auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002d6c
       0     3296        M 0x80000d70 addi    a2, a2, 184            #; a2  = 0x80002d6c, (wrb) a2  <-- 0x80002e24
       0     3297        M 0x80000d74 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002e24, (wrb) a1  <-- 0x80002f28
       0     3298        M 0x80000d78 lw      a2, 0(a1)              #; a1  = 0x80002f28, a2  <~~ Word[0x80002f28]
       0     3299        M 0x80000d7c li      a1, 8                  #; (wrb) a1  <-- 8
       0     3308        M 0x80000d80 li      s8, 16                 #; (wrb) s8  <-- 16
       0     3309        M                                           #; (lsu) a2  <-- 0x80000db4
       0     3310        M 0x80000d84 jr      a2                     #; a2  = 0x80000db4, goto 0x80000db4
       0     3331        M 0x80000db4 li      a1, 70                 #; (wrb) a1  <-- 70
       0     3332        M 0x80000db8 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000dc0
       0     3343        M 0x80000dc0 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     3344        M 0x80000dc4 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     3346        M 0x80000dcc addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     3347        M 0x80000dc8 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     3348        M                                           #; (f:lsu) fa0  <-- 0.0
       0     3355        M 0x80000dd0 mv      a0, s2                 #; s2  = 0x800016c4, (wrb) a0  <-- 0x800016c4
       0     3356        M 0x80000dd4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3357        M 0x80000dd8 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     3358        M 0x80000ddc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3367        M 0x80000de0 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     3368        M 0x80000de4 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     3369        M 0x80000de8 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     3370        M 0x80000dec auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001dec
       0     3379        M 0x80000df0 jalr    ra, ra, -1656          #; ra  = 0x80001dec, (wrb) ra  <-- 0x80000df4, goto 0x80001774
       0     3393        M 0x80001774 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     3394        M 0x80001778 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000df4 ~~> Word[0x0011fe9c]
       0     3395        M 0x8000177c sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     3405        M 0x80001780 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     3406        M 0x80001784 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x800016c4 ~~> Word[0x0011fe90]
       0     3407        M 0x80001788 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     3408        M 0x8000178c sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     3417        M 0x80001790 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     3418        M 0x80001794 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     3419        M 0x80001798 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     3420        M 0x8000179c sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     3429        M 0x800017a0 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     3430        M 0x800017a4 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002dae ~~> Word[0x0011fe70]
       0     3433        M 0x800017a8 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe68]
       0     3434        M 0x800017ac fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     3442        M 0x800017b4 auipc   s1, 0x2                #; (wrb) s1  <-- 0x800037b4
       0     3443        M 0x800017b8 addi    s1, s1, -1796          #; s1  = 0x800037b4, (wrb) s1  <-- 0x800030b0
                         M 0x800017b0 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     3446        M 0x800017bc fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x800030b0]
       0     3454        M 0x800017c4 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     3455        M 0x800017c8 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3456        M 0x800017cc mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x800017c0 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     3465        M 0x800017d0 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     3466        M 0x800017d4 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     3467        M 0x800017d8 mv      s7, a0                 #; a0  = 0x800016c4, (wrb) s7  <-- 0x800016c4
       0     3468        M 0x800017dc bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x800018cc
       0     3490        M 0x800018cc fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     3491        M                                           #; (f:fpu) fs0  <-- 0.0
       0     3500        M 0x800018d0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800028d0
       0     3501        M 0x800018d4 addi    a0, a0, 2024           #; a0  = 0x800028d0, (wrb) a0  <-- 0x800030b8
       0     3504        M 0x800018d8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030b8]
       0     3513        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3514        M 0x800018dc fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3516        M                                           #; (acc) t3  <-- 0x00051e63
       0     3517        M 0x800018e0 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800018fc
       0     3524        M 0x800018fc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800028fc
       0     3536        M 0x80001900 addi    a0, a0, 1988           #; a0  = 0x800028fc, (wrb) a0  <-- 0x800030c0
       0     3538        M 0x80001908 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002908
       0     3539        M 0x8000190c addi    a0, a0, 1984           #; a0  = 0x80002908, (wrb) a0  <-- 0x800030c8
                         M 0x80001904 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030c0]
       0     3548        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     3550        M 0x80001910 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800030c8]
       0     3551        M 0x80001914 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     3553        M                                           #; (acc) a0  <-- 0x00b57533
       0     3559        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     3560        M 0x80001918 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     3562        M                                           #; (acc) a0  <-- 0x00b57533
       0     3563        M 0x8000191c and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     3564        M 0x80001920 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001a1c
       0     3587        M 0x80001a1c andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     3599        M 0x80001a20 li      s8, 6                  #; (wrb) s8  <-- 6
       0     3600        M 0x80001a24 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001a2c
       0     3601        M 0x80001a2c li      a0, 10                 #; (wrb) a0  <-- 10
       0     3612        M 0x80001a34 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001a6c
       0     3613        M 0x80001a30 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     3614        M                                           #; (f:fpu) fs2  <-- 0.0
       0     3634        M 0x80001a6c li      s0, 0                  #; (wrb) s0  <-- 0
       0     3646        M 0x80001a70 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     3647        M 0x80001a74 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002a74
       0     3648        M 0x80001a78 addi    a1, a1, 1284           #; a1  = 0x80002a74, (wrb) a1  <-- 0x80002f78
       0     3649        M 0x80001a7c add     a0, a0, a1             #; a0  = 48, a1  = 0x80002f78, (wrb) a0  <-- 0x80002fa8
       0     3660        M 0x80001a80 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002fa8]
       0     3661        M 0x80001a84 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     3665        M 0x80001a88 fcvt.d.w ft0, s1               #; ac1  = 0
       0     3666        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3667        M 0x80001a8c fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     3669        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     3670        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3671        M 0x80001a94 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002a94
       0     3672        M 0x80001a98 addi    a0, a0, 1596           #; a0  = 0x80002a94, (wrb) a0  <-- 0x800030d0
                         M 0x80001a90 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     3675        M 0x80001a9c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030d0], (f:fpu) ft2  <-- 0.0
       0     3683        M 0x80001aa0 fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     3684        M                                           #; (f:lsu) ft0  <-- 0.5
       0     3685        M                                           #; (acc) gp  <-- 0xd21501d3
       0     3687        M 0x80001aa4 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     3688        M                                           #; (f:fpu) ft3  <-- 0.0
       0     3689        M 0x80001aa8 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     3692        M                                           #; (f:fpu) ft2  <-- 0.0
       0     3693        M 0x80001aac fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3696        M 0x80001ab0 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001ad0
       0     3718        M 0x80001ad0 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3720        M                                           #; (acc) s4  <-- 0x00059a63
       0     3721        M 0x80001ad4 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001ae8
       0     3730        M 0x80001aec beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001ae8 fcvt.d.w fs1, zero             #; ac1  = 0
       0     3731        M                                           #; (f:fpu) fs1  <-- 0.0
       0     3741        M 0x80001af0 li      a2, 0                  #; (wrb) a2  <-- 0
       0     3742        M 0x80001af4 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     3743        M 0x80001af8 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     3744        M 0x80001afc li      t0, 32                 #; (wrb) t0  <-- 32
       0     3753        M 0x80001b00 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     3754        M 0x80001b04 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     3755        M 0x80001b08 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     3756        M 0x80001b0c li      a6, 10                 #; (wrb) a6  <-- 10
       0     3765        M 0x80001b10 li      a7, 9                  #; (wrb) a7  <-- 9
       0     3766        M 0x80001b14 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     3767        M 0x80001b18 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     3768        M 0x80001b1c mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     3777        M 0x80001b20 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     3778        M 0x80001b24 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     3781        M                                           #; (acc) a3  <-- 0x40d586b3
       0     3782        M 0x80001b28 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     3783        M 0x80001b2c ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     3789        M 0x80001b30 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     3790        M 0x80001b34 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     3791        M 0x80001b38 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     3792        M 0x80001b3c bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     3804        M 0x80001b40 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     3805        M 0x80001b44 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     3806        M 0x80001b48 li      a3, 30                 #; (wrb) a3  <-- 30
       0     3807        M 0x80001b4c sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     3816        M 0x80001b50 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     3817        M 0x80001b54 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     3818        M 0x80001b58 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     3819        M 0x80001b5c bnez    a3, pc + 136           #; a3  = 0, not taken
       0     3828        M 0x80001b60 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     3829        M 0x80001b64 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     3830        M 0x80001b68 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     3831        M 0x80001b6c add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     3840        M 0x80001b70 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     3841        M 0x80001b74 li      a1, 31                 #; (wrb) a1  <-- 31
       0     3842        M 0x80001b78 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     3843        M 0x80001b7c add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     3852        M 0x80001b80 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     3853        M 0x80001b84 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001b8c
       0     3854        M 0x80001b8c addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     3864        M 0x80001b90 li      a1, 48                 #; (wrb) a1  <-- 48
       0     3865        M 0x80001b94 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000b94
       0     3866        M 0x80001b98 jalr    ra, ra, -1596          #; ra  = 0x80000b94, (wrb) ra  <-- 0x80001b9c, goto 0x80000558
       0     3887        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     3888        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     3899        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     3922        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     3934        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     3935        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     3936        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     3937        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     3957        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     3958        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     3969        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     3970        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     3971        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     3972        M 0x800005ec ret                            #; ra  = 0x80001b9c, goto 0x80001b9c
       0     3983        M 0x80001b9c li      a0, 0                  #; (wrb) a0  <-- 0
       0     3986        M 0x80001ba0 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     3987        M 0x80001ba4 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     3988        M 0x80001ba8 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     3989        M 0x80001bac snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     3998        M 0x80001bb0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3999        M 0x80001bb4 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4000        M 0x80001bb8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ba0
       0     4001        M 0x80001ba0 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     4002        M 0x80001ba4 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     4003        M 0x80001ba8 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     4004        M 0x80001bac snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     4005        M 0x80001bb0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4006        M 0x80001bb4 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     4007        M 0x80001bb8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ba0
       0     4008        M 0x80001ba0 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     4009        M 0x80001ba4 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     4010        M 0x80001ba8 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     4011        M 0x80001bac snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     4012        M 0x80001bb0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4013        M 0x80001bb4 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     4014        M 0x80001bb8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ba0
       0     4015        M 0x80001ba0 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     4016        M 0x80001ba4 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     4017        M 0x80001ba8 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     4018        M 0x80001bac snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     4019        M 0x80001bb0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4020        M 0x80001bb4 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     4021        M 0x80001bb8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ba0
       0     4022        M 0x80001ba0 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     4023        M 0x80001ba4 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     4024        M 0x80001ba8 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     4025        M 0x80001bac snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     4026        M 0x80001bb0 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     4027        M 0x80001bb4 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     4028        M 0x80001bb8 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     4029        M 0x80001bbc add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     4041        M 0x80001bc0 j       pc + 0x28              #; goto 0x80001be8
       0     4053        M 0x80001be8 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     4054        M 0x80001bec addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     4065        M 0x80001bf0 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     4066        M 0x80001bf4 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     4067        M 0x80001bf8 li      a1, 46                 #; (wrb) a1  <-- 46
       0     4068        M 0x80001bfc sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     4077        M 0x80001c00 j       pc + 0x8               #; goto 0x80001c08
       0     4078        M 0x80001c08 li      a0, 32                 #; (wrb) a0  <-- 32
       0     4079        M 0x80001c0c mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     4090        M 0x80001c10 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     4091        M 0x80001c14 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4093        M 0x80001c1c lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001c18 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     4102        M 0x80001c20 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     4103        M 0x80001c24 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4104        M 0x80001c28 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     4105        M 0x80001c2c li      a4, 18                 #; (wrb) a4  <-- 18
       0     4114        M 0x80001c30 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     4115        M 0x80001c34 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     4118        M                                           #; (acc) a5  <-- 0x01f55793
       0     4119        M 0x80001c38 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     4120        M 0x80001c3c srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     4126        M 0x80001c40 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     4127        M 0x80001c44 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     4130        M                                           #; (acc) a5  <-- 0x40f487b3
       0     4131        M 0x80001c48 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     4132        M 0x80001c4c addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     4138        M 0x80001c50 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     4139        M 0x80001c54 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     4140        M 0x80001c58 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     4141        M 0x80001c5c sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     4150        M 0x80001c60 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     4151        M 0x80001c64 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     4152        M 0x80001c68 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     4153        M 0x80001c6c j       pc + 0x8               #; goto 0x80001c74
       0     4165        M 0x80001c74 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     4166        M 0x80001c78 li      a0, 1                  #; (wrb) a0  <-- 1
       0     4167        M 0x80001c7c bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001ce8
       0     4188        M 0x80001ce8 li      a0, 31                 #; (wrb) a0  <-- 31
       0     4189        M 0x80001cec bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     4200        M 0x80001cf0 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001d08
       0     4212        M 0x80001d08 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     4213        M 0x80001d0c bnez    a0, pc + 32            #; a0  = 0, not taken
       0     4224        M 0x80001d10 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     4225        M 0x80001d14 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001d40
       0     4247        M 0x80001d40 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     4248        M 0x80001d44 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     4249        M 0x80001d48 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     4250        M 0x80001d4c or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     4259        M 0x80001d50 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     4260        M 0x80001d54 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     4261        M 0x80001d58 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001d84
       0     4282        M 0x80001d84 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     4283        M 0x80001d88 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     4284        M 0x80001d8c addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     4294        M 0x80001d90 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     4295        M 0x80001d94 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     4296        M 0x80001d98 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     4297        M 0x80001d9c addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     4298        M                                           #; (lsu) a0  <-- 48
       0     4306        M 0x80001da0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4307        M 0x80001da4 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     4308        M 0x80001da8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4309        M 0x80001dac jalr    s7                     #; s7  = 0x800016c4, (wrb) ra  <-- 0x80001db0, goto 0x800016c4
       0     4320        M 0x800016c4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4321        M 0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4322        M 0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4323        M 0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4324        M 0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
       0     4325        M 0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
       0     4326        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4327        M 0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     4328        M 0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     4339        M                                           #; (lsu) a4  <-- 8
       0     4340        M 0x800016e4 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     4341        M 0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 9 ~~> Word[0x8000315c]
       0     4342        M 0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 8, (wrb) a4  <-- 0x80003164
       0     4343        M 0x800016f0 sb      a0, 72(a4)             #; a4  = 0x80003164, 48 ~~> Byte[0x800031ac]
       0     4344        M 0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     4365        M                                           #; (lsu) a4  <-- 9
       0     4366        M 0x800016f8 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     4367        M 0x800016fc snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     4368        M 0x80001700 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4369        M 0x80001704 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4370        M 0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4371        M 0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
       0     4374        M 0x8000176c ret                            #; ra  = 0x80001db0, goto 0x80001db0
       0     4379        M 0x80001db0 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     4380        M 0x80001db4 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     4381        M 0x80001db8 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001d90
       0     4382        M 0x80001d90 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     4383        M 0x80001d94 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     4384        M 0x80001d98 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     4385        M 0x80001d9c addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     4386        M 0x80001da0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4387        M 0x80001da4 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     4388        M 0x80001da8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4389        M 0x80001dac jalr    s7                     #; s7  = 0x800016c4, (wrb) ra  <-- 0x80001db0, goto 0x800016c4
       0     4390        M                                           #; (lsu) a0  <-- 46
       0     4392        M 0x800016c4 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     4393        M 0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4394        M 0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4395        M 0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4396        M 0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
       0     4397        M 0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
       0     4398        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4399        M 0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     4400        M 0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     4411        M                                           #; (lsu) a4  <-- 9
       0     4412        M 0x800016e4 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     4413        M 0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 10 ~~> Word[0x8000315c]
       0     4414        M 0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 9, (wrb) a4  <-- 0x80003165
       0     4415        M 0x800016f0 sb      a0, 72(a4)             #; a4  = 0x80003165, 46 ~~> Byte[0x800031ad]
       0     4416        M 0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     4437        M                                           #; (lsu) a4  <-- 10
       0     4438        M 0x800016f8 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     4439        M 0x800016fc snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     4440        M 0x80001700 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     4441        M 0x80001704 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     4442        M 0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4443        M 0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
       0     4446        M 0x8000176c ret                            #; ra  = 0x80001db0, goto 0x80001db0
       0     4451        M 0x80001db0 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     4452        M 0x80001db4 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     4453        M 0x80001db8 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001d90
       0     4454        M 0x80001d90 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     4455        M 0x80001d94 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     4456        M 0x80001d98 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     4457        M 0x80001d9c addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     4458        M 0x80001da0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4459        M 0x80001da4 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     4460        M 0x80001da8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4461        M 0x80001dac jalr    s7                     #; s7  = 0x800016c4, (wrb) ra  <-- 0x80001db0, goto 0x800016c4
       0     4462        M                                           #; (lsu) a0  <-- 48
       0     4464        M 0x800016c4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4465        M 0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4466        M 0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4467        M 0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4468        M 0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
       0     4469        M 0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
       0     4470        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4471        M 0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     4472        M 0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     4483        M                                           #; (lsu) a4  <-- 10
       0     4484        M 0x800016e4 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     4485        M 0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 11 ~~> Word[0x8000315c]
       0     4486        M 0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 10, (wrb) a4  <-- 0x80003166
       0     4487        M 0x800016f0 sb      a0, 72(a4)             #; a4  = 0x80003166, 48 ~~> Byte[0x800031ae]
       0     4488        M 0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     4509        M                                           #; (lsu) a4  <-- 11
       0     4510        M 0x800016f8 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     4511        M 0x800016fc snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     4512        M 0x80001700 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4513        M 0x80001704 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4514        M 0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4515        M 0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
       0     4518        M 0x8000176c ret                            #; ra  = 0x80001db0, goto 0x80001db0
       0     4523        M 0x80001db0 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     4524        M 0x80001db4 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     4525        M 0x80001db8 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001d90
       0     4526        M 0x80001d90 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     4527        M 0x80001d94 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     4528        M 0x80001d98 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     4529        M 0x80001d9c addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     4530        M 0x80001da0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4531        M 0x80001da4 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     4532        M 0x80001da8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4533        M 0x80001dac jalr    s7                     #; s7  = 0x800016c4, (wrb) ra  <-- 0x80001db0, goto 0x800016c4
       0     4534        M                                           #; (lsu) a0  <-- 48
       0     4536        M 0x800016c4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4537        M 0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4538        M 0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4539        M 0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4540        M 0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
       0     4541        M 0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
       0     4542        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4543        M 0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     4544        M 0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     4555        M                                           #; (lsu) a4  <-- 11
       0     4556        M 0x800016e4 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     4557        M 0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 12 ~~> Word[0x8000315c]
       0     4558        M 0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 11, (wrb) a4  <-- 0x80003167
       0     4559        M 0x800016f0 sb      a0, 72(a4)             #; a4  = 0x80003167, 48 ~~> Byte[0x800031af]
       0     4560        M 0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     4581        M                                           #; (lsu) a4  <-- 12
       0     4582        M 0x800016f8 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     4583        M 0x800016fc snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     4584        M 0x80001700 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4585        M 0x80001704 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4586        M 0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4587        M 0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
       0     4590        M 0x8000176c ret                            #; ra  = 0x80001db0, goto 0x80001db0
       0     4595        M 0x80001db0 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     4596        M 0x80001db4 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     4597        M 0x80001db8 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001d90
       0     4598        M 0x80001d90 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     4599        M 0x80001d94 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     4600        M 0x80001d98 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     4601        M 0x80001d9c addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     4602        M 0x80001da0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4603        M 0x80001da4 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     4604        M 0x80001da8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4605        M 0x80001dac jalr    s7                     #; s7  = 0x800016c4, (wrb) ra  <-- 0x80001db0, goto 0x800016c4
       0     4606        M                                           #; (lsu) a0  <-- 48
       0     4608        M 0x800016c4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4609        M 0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4610        M 0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4611        M 0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4612        M 0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
       0     4613        M 0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
       0     4614        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4615        M 0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     4616        M 0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     4627        M                                           #; (lsu) a4  <-- 12
       0     4628        M 0x800016e4 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     4629        M 0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 13 ~~> Word[0x8000315c]
       0     4630        M 0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 12, (wrb) a4  <-- 0x80003168
       0     4631        M 0x800016f0 sb      a0, 72(a4)             #; a4  = 0x80003168, 48 ~~> Byte[0x800031b0]
       0     4632        M 0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     4653        M                                           #; (lsu) a4  <-- 13
       0     4654        M 0x800016f8 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     4655        M 0x800016fc snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     4656        M 0x80001700 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4657        M 0x80001704 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4658        M 0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4659        M 0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
       0     4662        M 0x8000176c ret                            #; ra  = 0x80001db0, goto 0x80001db0
       0     4667        M 0x80001db0 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     4668        M 0x80001db4 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     4669        M 0x80001db8 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001d90
       0     4670        M 0x80001d90 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     4671        M 0x80001d94 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     4672        M 0x80001d98 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     4673        M 0x80001d9c addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     4674        M 0x80001da0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4675        M 0x80001da4 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     4676        M 0x80001da8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4677        M 0x80001dac jalr    s7                     #; s7  = 0x800016c4, (wrb) ra  <-- 0x80001db0, goto 0x800016c4
       0     4678        M                                           #; (lsu) a0  <-- 48
       0     4680        M 0x800016c4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4681        M 0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4682        M 0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4683        M 0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4684        M 0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
       0     4685        M 0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
       0     4686        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4687        M 0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     4688        M 0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     4699        M                                           #; (lsu) a4  <-- 13
       0     4700        M 0x800016e4 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     4701        M 0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 14 ~~> Word[0x8000315c]
       0     4702        M 0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 13, (wrb) a4  <-- 0x80003169
       0     4703        M 0x800016f0 sb      a0, 72(a4)             #; a4  = 0x80003169, 48 ~~> Byte[0x800031b1]
       0     4704        M 0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     4725        M                                           #; (lsu) a4  <-- 14
       0     4726        M 0x800016f8 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     4727        M 0x800016fc snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     4728        M 0x80001700 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4729        M 0x80001704 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4730        M 0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4731        M 0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
       0     4734        M 0x8000176c ret                            #; ra  = 0x80001db0, goto 0x80001db0
       0     4739        M 0x80001db0 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     4740        M 0x80001db4 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     4741        M 0x80001db8 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001d90
       0     4742        M 0x80001d90 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     4743        M 0x80001d94 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     4744        M 0x80001d98 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     4745        M 0x80001d9c addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     4746        M 0x80001da0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4747        M 0x80001da4 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     4748        M 0x80001da8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4749        M 0x80001dac jalr    s7                     #; s7  = 0x800016c4, (wrb) ra  <-- 0x80001db0, goto 0x800016c4
       0     4750        M                                           #; (lsu) a0  <-- 48
       0     4752        M 0x800016c4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4753        M 0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4754        M 0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4755        M 0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4756        M 0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
       0     4757        M 0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
       0     4758        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4759        M 0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     4760        M 0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     4771        M                                           #; (lsu) a4  <-- 14
       0     4772        M 0x800016e4 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     4773        M 0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 15 ~~> Word[0x8000315c]
       0     4774        M 0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 14, (wrb) a4  <-- 0x8000316a
       0     4775        M 0x800016f0 sb      a0, 72(a4)             #; a4  = 0x8000316a, 48 ~~> Byte[0x800031b2]
       0     4776        M 0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     4797        M                                           #; (lsu) a4  <-- 15
       0     4798        M 0x800016f8 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     4799        M 0x800016fc snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     4800        M 0x80001700 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4801        M 0x80001704 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4802        M 0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4803        M 0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
       0     4806        M 0x8000176c ret                            #; ra  = 0x80001db0, goto 0x80001db0
       0     4811        M 0x80001db0 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     4812        M 0x80001db4 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     4813        M 0x80001db8 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001d90
       0     4814        M 0x80001d90 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     4815        M 0x80001d94 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     4816        M 0x80001d98 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     4817        M 0x80001d9c addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     4818        M 0x80001da0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4819        M 0x80001da4 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     4820        M 0x80001da8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4821        M 0x80001dac jalr    s7                     #; s7  = 0x800016c4, (wrb) ra  <-- 0x80001db0, goto 0x800016c4
       0     4822        M                                           #; (lsu) a0  <-- 48
       0     4824        M 0x800016c4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4825        M 0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4826        M 0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4827        M 0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4828        M 0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
       0     4829        M 0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
       0     4830        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4831        M 0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     4832        M 0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     4843        M                                           #; (lsu) a4  <-- 15
       0     4844        M 0x800016e4 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     4845        M 0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 16 ~~> Word[0x8000315c]
       0     4846        M 0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 15, (wrb) a4  <-- 0x8000316b
       0     4847        M 0x800016f0 sb      a0, 72(a4)             #; a4  = 0x8000316b, 48 ~~> Byte[0x800031b3]
       0     4848        M 0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     4869        M                                           #; (lsu) a4  <-- 16
       0     4870        M 0x800016f8 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     4871        M 0x800016fc snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     4872        M 0x80001700 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4873        M 0x80001704 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4874        M 0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4875        M 0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
       0     4878        M 0x8000176c ret                            #; ra  = 0x80001db0, goto 0x80001db0
       0     4883        M 0x80001db0 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     4884        M 0x80001db4 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     4885        M 0x80001db8 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     4886        M 0x80001dbc j       pc + 0x8               #; goto 0x80001dc4
       0     4898        M 0x80001dc4 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     4899        M 0x80001dc8 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     4900        M 0x80001dcc xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4910        M 0x80001dd0 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     4911        M 0x80001dd4 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     4912        M 0x80001dd8 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001e08
       0     4933        M 0x80001e08 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     4934        M 0x80001e0c mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     4947        M 0x80001e10 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     4948        M 0x80001e1c lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
                         M 0x80001e14 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0     4949        M 0x80001e18 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
       0     4950        M                                           #; (f:lsu) fs0  <-- 0.0
       0     4952        M                                           #; (lsu) s10 <-- 0x80002dae
       0     4957        M 0x80001e20 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     4960        M                                           #; (lsu) s9  <-- 8
       0     4961        M 0x80001e24 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     4964        M                                           #; (lsu) s8  <-- 16
       0     4965        M 0x80001e28 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     4968        M                                           #; (lsu) s7  <-- 0
       0     4969        M 0x80001e2c lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     4972        M                                           #; (lsu) s6  <-- 0
       0     4973        M 0x80001e30 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     4976        M                                           #; (lsu) s5  <-- -1
       0     4977        M 0x80001e34 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     4980        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     4981        M 0x80001e38 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     4984        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     4985        M 0x80001e3c lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     4988        M                                           #; (lsu) s2  <-- 0x800016c4
       0     4989        M 0x80001e40 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     4992        M                                           #; (lsu) s1  <-- 8
       0     4993        M 0x80001e44 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     4996        M                                           #; (lsu) s0  <-- 0
       0     4997        M 0x80001e48 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     4998        M 0x80001e4c addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     5000        M                                           #; (lsu) ra  <-- 0x80000df4
       0     5001        M 0x80001e50 ret                            #; ra  = 0x80000df4, goto 0x80000df4
       0     5013        M 0x80000df4 j       pc + 0x7c0             #; goto 0x800015b4
       0     5025        M 0x800015b4 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     5026        M 0x800015b8 li      s6, 37                 #; (wrb) s6  <-- 37
       0     5027        M 0x800015bc li      s7, 46                 #; (wrb) s7  <-- 46
       0     5037        M 0x800015c0 addi    s0, s10, 1             #; s10 = 0x80002dae, (wrb) s0  <-- 0x80002daf
       0     5038        M 0x800015c4 j       pc - 0xa74             #; goto 0x80000b50
       0     5049        M 0x80000b50 addi    s10, s0, 2             #; s0  = 0x80002daf, (wrb) s10 <-- 0x80002db1
       0     5050        M 0x80000b54 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     5051        M 0x80000b58 li      s8, 10                 #; (wrb) s8  <-- 10
       0     5052        M 0x80000b5c lbu     a0, 0(s0)              #; s0  = 0x80002daf, a0  <~~ Byte[0x80002daf]
       0     5063        M                                           #; (lsu) a0  <-- 10
       0     5064        M 0x80000b60 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     5065        M 0x80000b64 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     5066        M 0x80000b68 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     5067        M 0x80000b6c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5073        M 0x80000b70 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     5074        M 0x80000b74 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5075        M 0x80000b78 jalr    s2                     #; s2  = 0x800016c4, (wrb) ra  <-- 0x80000b7c, goto 0x800016c4
       0     5087        M 0x800016c4 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     5088        M 0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5089        M 0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5090        M 0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5091        M 0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
       0     5092        M 0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
       0     5093        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5094        M 0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
       0     5095        M 0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     5106        M                                           #; (lsu) a4  <-- 16
       0     5107        M 0x800016e4 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     5108        M 0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 17 ~~> Word[0x8000315c]
       0     5109        M 0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 16, (wrb) a4  <-- 0x8000316c
       0     5110        M 0x800016f0 sb      a0, 72(a4)             #; a4  = 0x8000316c, 10 ~~> Byte[0x800031b4]
       0     5111        M 0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
       0     5132        M                                           #; (lsu) a4  <-- 17
       0     5133        M 0x800016f8 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     5134        M 0x800016fc snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     5135        M 0x80001700 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     5136        M 0x80001704 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     5137        M 0x80001708 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     5138        M 0x8000170c bnez    a0, pc + 96            #; a0  = 0, not taken
       0     5139        M 0x80001710 add     a0, a3, a2             #; a3  = 0x8000315c, a2  = 0, (wrb) a0  <-- 0x8000315c
       0     5140        M 0x80001714 addi    a2, a0, 72             #; a0  = 0x8000315c, (wrb) a2  <-- 0x800031a4
       0     5141        M 0x80001718 sw      zero, 12(a0)           #; a0  = 0x8000315c, 0 ~~> Word[0x80003168]
       0     5142        M 0x8000171c li      a3, 64                 #; (wrb) a3  <-- 64
       0     5151        M 0x80001720 sw      a3, 8(a0)              #; a0  = 0x8000315c, 64 ~~> Word[0x80003164]
       0     5152        M 0x80001724 sw      zero, 20(a0)           #; a0  = 0x8000315c, 0 ~~> Word[0x80003170]
       0     5153        M 0x80001728 li      a3, 1                  #; (wrb) a3  <-- 1
       0     5154        M 0x8000172c sw      a3, 16(a0)             #; a0  = 0x8000315c, 1 ~~> Word[0x8000316c]
       0     5163        M 0x80001730 sw      zero, 28(a0)           #; a0  = 0x8000315c, 0 ~~> Word[0x80003178]
       0     5164        M 0x80001734 sw      a2, 24(a0)             #; a0  = 0x8000315c, 0x800031a4 ~~> Word[0x80003174]
       0     5166        M 0x80001738 lw      a2, 0(a1)              #; a1  = 0x8000315c, a2  <~~ Word[0x8000315c]
       0     5167        M 0x8000173c addi    a3, a0, 8              #; a0  = 0x8000315c, (wrb) a3  <-- 0x80003164
       0     5176        M 0x80001740 sw      zero, 36(a0)           #; a0  = 0x8000315c, 0 ~~> Word[0x80003180]
       0     5195        M                                           #; (lsu) a2  <-- 17
       0     5196        M 0x80001744 sw      a2, 32(a0)             #; a0  = 0x8000315c, 17 ~~> Word[0x8000317c]
       0     5197        M 0x80001748 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003748
       0     5198        M 0x8000174c addi    a0, a0, -1864          #; a0  = 0x80003748, (wrb) a0  <-- 0x80003000
       0     5199        M 0x80001750 sw      a3, 0(a0)              #; a0  = 0x80003000, 0x80003164 ~~> Word[0x80003000]
       0     5200        M 0x80001754 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003754
       0     5201        M 0x80001758 addi    a0, a0, -1812          #; a0  = 0x80003754, (wrb) a0  <-- 0x80003040
       0     5202        M 0x8000175c lw      a2, 0(a0)              #; a0  = 0x80003040, a2  <~~ Word[0x80003040]
       0     5225        M                                           #; (lsu) a2  <-- 0
       0     5226        M 0x80001760 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000175c
       0     5227        M 0x8000175c lw      a2, 0(a0)              #; a0  = 0x80003040, a2  <~~ Word[0x80003040]
       0     5238        M                                           #; (lsu) a2  <-- 0
       0     5239        M 0x80001760 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000175c
       0     5240        M 0x8000175c lw      a2, 0(a0)              #; a0  = 0x80003040, a2  <~~ Word[0x80003040]
       0     5251        M                                           #; (lsu) a2  <-- 0
       0     5252        M 0x80001760 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000175c
       0     5253        M 0x8000175c lw      a2, 0(a0)              #; a0  = 0x80003040, a2  <~~ Word[0x80003040]
       0     5264        M                                           #; (lsu) a2  <-- 0
       0     5265        M 0x80001760 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000175c
       0     5266        M 0x8000175c lw      a2, 0(a0)              #; a0  = 0x80003040, a2  <~~ Word[0x80003040]
       0     5277        M                                           #; (lsu) a2  <-- 0
       0     5278        M 0x80001760 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000175c
       0     5279        M 0x8000175c lw      a2, 0(a0)              #; a0  = 0x80003040, a2  <~~ Word[0x80003040]
       0     5290        M                                           #; (lsu) a2  <-- 0
       0     5291        M 0x80001760 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000175c
       0     5292        M 0x8000175c lw      a2, 0(a0)              #; a0  = 0x80003040, a2  <~~ Word[0x80003040]
       0     5303        M                                           #; (lsu) a2  <-- 0
       0     5304        M 0x80001760 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000175c
       0     5305        M 0x8000175c lw      a2, 0(a0)              #; a0  = 0x80003040, a2  <~~ Word[0x80003040]
       0     5316        M                                           #; (lsu) a2  <-- 1
       0     5317        M 0x80001760 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     5318        M 0x80001764 sw      zero, 0(a0)            #; a0  = 0x80003040, 0 ~~> Word[0x80003040]
       0     5319        M 0x80001768 sw      zero, 0(a1)            #; a1  = 0x8000315c, 0 ~~> Word[0x8000315c]
       0     5320        M 0x8000176c ret                            #; ra  = 0x80000b7c, goto 0x80000b7c
       0     5323        M 0x80000b7c addi    s0, s0, 1              #; s0  = 0x80002daf, (wrb) s0  <-- 0x80002db0
       0     5326        M 0x80000b80 addi    s10, s10, 1            #; s10 = 0x80002db1, (wrb) s10 <-- 0x80002db2
       0     5327        M 0x80000b84 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     5328        M 0x80000b88 lbu     a0, 0(s0)              #; s0  = 0x80002db0, a0  <~~ Byte[0x80002db0]
       0     5341        M                                           #; (lsu) a0  <-- 0
       0     5342        M 0x80000b8c bnez    a0, pc - 40            #; a0  = 0, not taken
       0     5354        M 0x80000b90 j       pc + 0xad8             #; goto 0x80001668
       0     5366        M 0x80001668 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     5367        M 0x8000166c bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001674
       0     5378        M 0x80001674 li      a0, 0                  #; (wrb) a0  <-- 0
       0     5379        M 0x80001678 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5380        M 0x8000167c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5390        M 0x80001680 jalr    s2                     #; s2  = 0x800016c4, (wrb) ra  <-- 0x80001684, goto 0x800016c4
       0     5404        M 0x800016c4 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x8000176c
       0     5409        M 0x8000176c ret                            #; ra  = 0x80001684, goto 0x80001684
       0     5410        M 0x80001684 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     5411        M 0x80001688 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     5414        M                                           #; (lsu) s11 <-- 0
       0     5415        M 0x8000168c lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     5418        M                                           #; (lsu) s10 <-- 0
       0     5419        M 0x80001690 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     5422        M                                           #; (lsu) s9  <-- 0
       0     5423        M 0x80001694 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     5426        M                                           #; (lsu) s8  <-- 0
       0     5427        M 0x80001698 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     5430        M                                           #; (lsu) s7  <-- 0
       0     5431        M 0x8000169c lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     5434        M                                           #; (lsu) s6  <-- 0
       0     5435        M 0x800016a0 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     5438        M                                           #; (lsu) s5  <-- 0
       0     5439        M 0x800016a4 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     5442        M                                           #; (lsu) s4  <-- 0
       0     5443        M 0x800016a8 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     5446        M                                           #; (lsu) s3  <-- 0
       0     5447        M 0x800016ac lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     5450        M                                           #; (lsu) s2  <-- 0
       0     5451        M 0x800016b0 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     5454        M                                           #; (lsu) s1  <-- 0
       0     5455        M 0x800016b4 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     5458        M                                           #; (lsu) s0  <-- 0
       0     5459        M 0x800016b8 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     5460        M 0x800016bc addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     5462        M                                           #; (lsu) ra  <-- 0x80000ac0
       0     5463        M 0x800016c0 ret                            #; ra  = 0x80000ac0, goto 0x80000ac0
       0     5475        M 0x80000ac0 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     5476        M 0x80000ac4 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     5478        M                                           #; (lsu) ra  <-- 0x80000a50
       0     5479        M 0x80000ac8 ret                            #; ra  = 0x80000a50, goto 0x80000a50
       0     5489        M 0x80000a50 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a50
       0     5490        M 0x80000a54 addi    a0, a0, 1624           #; a0  = 0x80002a50, (wrb) a0  <-- 0x800030a8
       0     5493        M 0x80000a58 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800030a8]
       0     5494        M 0x80000a64 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
       0     5495        M 0x80000a68 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
       0     5502        M                                           #; (f:lsu) ft3  <-- 0.0001
       0     5503        M 0x80000a5c flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0
       0     5504        M                                           #; (lsu) ra  <-- 0x80002b20
       0     5505        M 0x80000a6c ret                            #; ra  = 0x80002b20, goto 0x80002b20
                         M 0x80000a60 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
       0     5506        M                                           #; (f:lsu) fs0  <-- 0.0
       0     5517        M 0x80002b20 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     5518        M 0x80002b24 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b24
       0     5519        M 0x80002b28 jalr    ra, ra, 524            #; ra  = 0x80002b24, (wrb) ra  <-- 0x80002b2c, goto 0x80002d30
       0     5531        M 0x80002d30 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     5532        M 0x80002d34 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002b2c ~~> Word[0x0011ff5c]
       0     5533        M 0x80002d38 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d38
       0     5534        M 0x80002d3c jalr    ra, ra, -1260          #; ra  = 0x80002d38, (wrb) ra  <-- 0x80002d40, goto 0x8000284c
       0     5537        M 0x8000284c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5540        M 0x80002850 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5541        M 0x80002854 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5544        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5545        M 0x80002858 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5548        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5549        M 0x8000285c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     5550        M 0x80002860 ret                            #; ra  = 0x80002d40, goto 0x80002d40
       0     5552        M                                           #; (lsu) a0  <-- 0x00120190
       0     5553        M 0x80002d40 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     5563        M                                           #; (lsu) a0  <-- 0
       0     5564        M 0x80002d44 mv      zero, a0               #; a0  = 0
       0     5565        M 0x80002d48 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     5566        M 0x80002d4c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     5568        M                                           #; (lsu) ra  <-- 0x80002b2c
       0     5569        M 0x80002d50 ret                            #; ra  = 0x80002b2c, goto 0x80002b2c
       0     5583        M 0x80002b2c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     5587        M 0x80002b30 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b30
       0     5588        M 0x80002b34 jalr    ra, ra, 556            #; ra  = 0x80002b30, (wrb) ra  <-- 0x80002b38, goto 0x80002d5c
       0     5589        M 0x80002d5c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     5590        M 0x80002d60 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     5591        M 0x80002d64 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002b38 ~~> Word[0x0011ff5c]
       0     5592        M 0x80002d68 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d68
       0     5593        M 0x80002d6c jalr    ra, ra, -1340          #; ra  = 0x80002d68, (wrb) ra  <-- 0x80002d70, goto 0x8000282c
       0     5604        M 0x8000282c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5608        M 0x80002830 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5609        M 0x80002834 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5612        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5613        M 0x80002838 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5616        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5617        M 0x8000283c lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     5618        M 0x80002840 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5620        M                                           #; (lsu) a0  <-- 0
       0     5621        M 0x80002844 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     5622        M 0x80002848 ret                            #; ra  = 0x80002d70, goto 0x80002d70
       0     5623        M 0x80002d70 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     5626        M                                           #; (lsu) t0  <-- 0
       0     5627        M 0x80002d74 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     5628        M 0x80002d78 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     5629        M 0x80002d7c bnez    a0, pc + 24            #; a0  = 0, not taken
       0     5630        M                                           #; (lsu) ra  <-- 0x80002b38
       0     5634        M 0x80002d80 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     5635        M 0x80002d84 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     5636        M 0x80002d88 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002d88
       0     5637        M 0x80002d8c addi    t1, t1, 632            #; t1  = 0x80002d88, (wrb) t1  <-- 0x80003000
       0     5645        M 0x80002d90 sw      t0, 0(t1)              #; t1  = 0x80003000, 1 ~~> Word[0x80003000]
       0     5646        M 0x80002d94 ret                            #; ra  = 0x80002b38, goto 0x80002b38
       0     5660        M 0x80002b38 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 5660):
snitch_loads                                   141
snitch_stores                                  142
fpss_stores                                     14
fpss_loads                                      23
snitch_avg_load_latency                    12.0142
snitch_occupancy                            0.2284
snitch_fseq_rel_offloads                    0.0960
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        1.3830
fpss_avg_load_latency                       6.9130
fpss_occupancy                              0.0243
fpss_fpu_occupancy                          0.0166
fpss_fpu_rel_occupancy                      0.6861
cycles                                        5649
total_ipc                                   0.2526
