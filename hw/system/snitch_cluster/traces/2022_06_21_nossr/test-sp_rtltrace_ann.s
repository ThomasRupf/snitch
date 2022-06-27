; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x800027b0
      0x00001014 jalr    t0                     #; t0  = 0x800027b0, (wrb) ra  <-- 4120, goto 0x800027b0
; ?? (start.S:20)
      0x800027b0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x800037b0
; ?? (start.S:21)
      0x800027b4 addi    gp, gp, -232           #; gp  = 0x800037b0, (wrb) gp  <-- 0x800036c8
; ?? (start.S:28)
      0x800027b8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800027b8
      0x800027bc jalr    ra, ra, 964            #; ra  = 0x800027b8, (wrb) ra  <-- 0x800027c0, goto 0x80002b7c
; ?? (start_snitch.S:16)
      0x80002b7c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80002b80 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80002b84 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80002b88 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x80002b8c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80002b90 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80002b94 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80002b98 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x80002b9c mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80002ba0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80002ba4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80002ba8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x80002bac ret                            #; ra  = 0x800027c0, goto 0x800027c0
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x800027c0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x800027c4 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x800027c8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800027c8
      0x800027cc jalr    ra, ra, 1036           #; ra  = 0x800027c8, (wrb) ra  <-- 0x800027d0, goto 0x80002bd4
; ?? (start_snitch.S:48)
      0x80002bd4 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80002bd8 ret                            #; ra  = 0x800027d0, goto 0x800027d0
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x800027d0 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x800027d4 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x800027d8 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x800027dc sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x800027e0 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x800027e4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800027e4
      0x800027e8 addi    t0, t0, 2044           #; t0  = 0x800027e4, (wrb) t0  <-- 0x80002fe0
; ?? (start.S:49)
      0x800027ec auipc   t1, 0x0                #; (wrb) t1  <-- 0x800027ec
      0x800027f0 addi    t1, t1, 2040           #; t1  = 0x800027ec, (wrb) t1  <-- 0x80002fe4
; ?? (start.S:50)
      0x800027f4 bge     t0, t1, pc + 16        #; t0  = 0x80002fe0, t1  = 0x80002fe4, not taken
; ?? (start.S:51)
      0x800027f8 sw      zero, 0(t0)            #; t0  = 0x80002fe0, 0 ~~> Word[0x80002fe0]
; ?? (start.S:52)
      0x800027fc addi    t0, t0, 4              #; t0  = 0x80002fe0, (wrb) t0  <-- 0x80002fe4
; ?? (start.S:53)
      0x80002800 blt     t0, t1, pc - 8         #; t0  = 0x80002fe4, t1  = 0x80002fe4, not taken
; ?? (start.S:58)
      0x80002804 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x80002808 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x8000280c beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x80002810 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x80002814 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x80002818 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x8000281c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x80002820 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x80002824 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x80002828 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x8000282c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x80002830 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x80002834 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x80002838 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x8000283c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x80002840 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x80002844 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x80002848 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x8000284c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x80002850 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x80002854 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x80002858 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x8000285c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x80002860 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x80002864 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x80002868 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x8000286c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x80002870 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x80002874 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x80002878 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x8000287c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x80002880 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x80002884 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x80002888 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x8000288c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x80002890 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x80002894 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x80002898 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002898
      0x8000289c lw      t0, 900(t0)            #; t0  = 0x80002898, t0  <~~ Word[0x80002c1c]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x800028a0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x800028a4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x800028a8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800028a8
      0x800028ac lw      t2, 880(t2)            #; t2  = 0x800028a8, t2  <~~ Word[0x80002c18]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x800028b0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x800028b4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x800028b8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x800028bc sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x800028c0 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x800028c4 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x800028c8 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x800028cc sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x800028d0 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800028d0
      0x800028d4 addi    t0, t0, 1528           #; t0  = 0x800028d0, (wrb) t0  <-- 0x80002ec8
; ?? (start.S:125)
      0x800028d8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800028d8
      0x800028dc addi    t1, t1, 1520           #; t1  = 0x800028d8, (wrb) t1  <-- 0x80002ec8
; ?? (start.S:126)
      0x800028e0 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800028e0
      0x800028e4 addi    t2, t2, 1512           #; t2  = 0x800028e0, (wrb) t2  <-- 0x80002ec8
; ?? (start.S:127)
      0x800028e8 auipc   t3, 0x0                #; (wrb) t3  <-- 0x800028e8
      0x800028ec addi    t3, t3, 1520           #; t3  = 0x800028e8, (wrb) t3  <-- 0x80002ed8
; ?? (start.S:128)
      0x800028f0 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002ec8, (wrb) sp  <-- 0x80122e38
; ?? (start.S:129)
      0x800028f4 sub     sp, sp, t1             #; sp  = 0x80122e38, t1  = 0x80002ec8, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x800028f8 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002ec8, (wrb) sp  <-- 0x80122e38
; ?? (start.S:131)
      0x800028fc sub     sp, sp, t3             #; sp  = 0x80122e38, t3  = 0x80002ed8, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x80002900 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x80002904 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x80002908 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x8000290c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x80002910 bge     t0, t1, pc + 24        #; t0  = 0x80002ec8, t1  = 0x80002ec8, taken, goto 0x80002928
; ?? (start.S:147)
      0x80002928 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002928
      0x8000292c addi    t0, t0, 1440           #; t0  = 0x80002928, (wrb) t0  <-- 0x80002ec8
; ?? (start.S:148)
      0x80002930 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002930
      0x80002934 addi    t1, t1, 1448           #; t1  = 0x80002930, (wrb) t1  <-- 0x80002ed8
; ?? (start.S:149)
      0x80002938 bge     t0, t1, pc + 20        #; t0  = 0x80002ec8, t1  = 0x80002ed8, not taken
; ?? (start.S:150)
      0x8000293c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x80002940 addi    t0, t0, 4              #; t0  = 0x80002ec8, (wrb) t0  <-- 0x80002ecc
; ?? (start.S:152)
      0x80002944 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x80002948 blt     t0, t2, pc - 12        #; t0  = 0x80002ecc, t2  = 0x80002ec8, not taken
; ?? (start.S:158)
      0x8000294c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x80002950 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x80002954 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x80002958 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x8000295c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x80002960 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x80002964 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002964
      0x80002968 jalr    ra, ra, -1064          #; ra  = 0x80002964, (wrb) ra  <-- 0x8000296c, goto 0x8000253c
; _snrt_init_team (start.c:49)
      0x8000253c sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x80002540 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x80002544 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x80002548 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x8000254c lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x80002550 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x80002554 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x80002558 mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x8000255c mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x80002560 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x80002564 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x80002568 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x8000256c divu    a0, a0, t0             #; a0  = 0, t0  = 8
; _snrt_init_team (start.c:54)
      0x80002570 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x80002574 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x80002578 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x8000257c sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x80002580 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x80002584 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x80002588 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x8000258c sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x80002590 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x80002594 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x80002598 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x8000259c sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x800025a0 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x800025a4 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x800025a8 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x800025ac sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x800025b0 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x800025b4 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x800025b8 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x800025bc addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x800025c0 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x800025c4 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x800025c8 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x800025cc add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x800025d0 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x800025d4 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x800025d8 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x800025dc sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x800025e0 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x800025e4 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x800025e8 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x800025ec sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x800025f0 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x800025f4 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x800025f8 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x800025fc lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002600 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002604 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x80002608 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000260c lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x80002610 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x80002614 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x80002618 remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x8000261c lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x80002620 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
      0x80002624 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x80002628 li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x8000262c mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x80002630 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003630
      0x80002634 addi    a1, a1, -1612          #; a1  = 0x80003630, (wrb) a1  <-- 0x80002fe4
      0x80002638 add     a0, a0, a1             #; a0  = 0, a1  = 0x80002fe4, (wrb) a0  <-- 0x80002fe4
      0x8000263c sw      zero, 0(a0)            #; a0  = 0x80002fe4, 0 ~~> Word[0x80002fe4]
; _snrt_init_team (start.c:86)
      0x80002640 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x80002644 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x80002648 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x8000264c sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x80002650 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x80002654 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x80002658 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x8000265c andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x80002660 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x80002664 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x80002668 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x8000266c sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x80002670 lw      a0, 0(a1)              #; a1  = 0x80002fe4, a0  <~~ Word[0x80002fe4]
                                                #; (lsu) a0  <-- 0
      0x80002674 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x80002678 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x8000267c sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x80002680 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x80002684 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x80002688 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000268c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002690 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x80002694 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002698 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000269c sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x800026a0 ret                            #; ra  = 0x8000296c, goto 0x8000296c
; ?? (start.S:165)
      0x8000296c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x80002970 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x80002974 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x80002978 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x8000297c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x80002980 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x80002984 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002984
      0x80002988 addi    t0, t0, 60             #; t0  = 0x80002984, (wrb) t0  <-- 0x800029c0
; ?? (start.S:175)
      0x8000298c csrw    mtvec, t0              #; t0  = 0x800029c0, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x80002990 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002990
      0x80002994 jalr    ra, ra, 544            #; ra  = 0x80002990, (wrb) ra  <-- 0x80002998, goto 0x80002bb0
; ?? (start_snitch.S:33)
      0x80002bb0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002bb4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002998 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002bb8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bb8
      0x80002bbc jalr    ra, ra, -1268          #; ra  = 0x80002bb8, (wrb) ra  <-- 0x80002bc0, goto 0x800026c4
; _snrt_barrier_reg_ptr (team.c:80)
      0x800026c4 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800026c8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800026cc lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800026d0 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800026d4 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x800026d8 ret                            #; ra  = 0x80002bc0, goto 0x80002bc0
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002bc0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002bc4 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002bc8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002bcc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002998
; ?? (start_snitch.S:40)
      0x80002bd0 ret                            #; ra  = 0x80002998, goto 0x80002998
; ?? (start.S:183)
      0x80002998 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000998
      0x8000299c jalr    ra, ra, -868           #; ra  = 0x80000998, (wrb) ra  <-- 0x800029a0, goto 0x80000634
; main (test_sp.c:14)
      0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (test_sp.c:15)
      0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x800029a0 ~~> Word[0x0011ff5c]
      0x8000063c sw      s0, 24(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff58]
      0x80000640 sw      s1, 20(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff54]
      0x80000648 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000064c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000644 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
      0x80000650 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
; main (test_sp.c:0)
      0x80000654 li      a0, 0                  #; (wrb) a0  <-- 0
                                                #; (lsu) a1  <-- 0
; main (test_sp.c:15)
      0x80000658 bnez    a1, pc + 632           #; a1  = 0, not taken
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (test_sp.c:19)
      0x8000065c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000660 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000664 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80000668 lw      a2, 0(a0)              #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ff70]
                                                #; (lsu) a2  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in main (test_sp.c:19)
      0x8000066c lw      a1, 88(a2)             #; a2  = 0x0011ff70, a1  <~~ Word[0x0011ffc8]
                                                #; (lsu) a1  <-- 0x00100000
      0x80000670 lw      a0, 80(a2)             #; a2  = 0x0011ff70, a0  <~~ Word[0x0011ffc0]
                                                #; (lsu) a0  <-- 0x00100000
      0x80000674 lw      a3, 84(a2)             #; a2  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
      0x80000678 addi    a4, a1, 80             #; a1  = 0x00100000, (wrb) a4  <-- 0x00100050
                                                #; (lsu) a3  <-- 0x0001df30
      0x8000067c add     a3, a3, a0             #; a3  = 0x0001df30, a0  = 0x00100000, (wrb) a3  <-- 0x0011df30
      0x80000680 bgeu    a3, a4, pc + 24        #; a3  = 0x0011df30, a4  = 0x00100050, taken, goto 0x80000698
; snrt_l1alloc (alloc.c:33)
;  in main (test_sp.c:19)
      0x80000698 mv      a0, a1                 #; a1  = 0x00100000, (wrb) a0  <-- 0x00100000
; snrt_l1alloc (alloc.c:34)
;  in main (test_sp.c:19)
      0x8000069c sw      a4, 88(a2)             #; a2  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
; snrt_l1alloc (alloc.c:25)
;  in main (test_sp.c:20)
      0x800006a0 addi    a5, a1, 160            #; a1  = 0x00100000, (wrb) a5  <-- 0x001000a0
      0x800006a4 mv      a1, a4                 #; a4  = 0x00100050, (wrb) a1  <-- 0x00100050
      0x800006a8 bgeu    a3, a5, pc - 24        #; a3  = 0x0011df30, a5  = 0x001000a0, taken, goto 0x80000690
; snrt_l1alloc (alloc.c:34)
;  in main (test_sp.c:20)
      0x80000690 sw      a5, 88(a2)             #; a2  = 0x0011ff70, 0x001000a0 ~~> Word[0x0011ffc8]
      0x80000694 j       pc + 0x1c              #; goto 0x800006b0
; main (alloc.c:0)
      0x800006b0 lui     a2, 0x40092            #; (wrb) a2  <-- 0x40092000
      0x800006b4 addi    a6, a2, 196            #; a2  = 0x40092000, (wrb) a6  <-- 0x400920c4
; init_data (test_sp.c:9)
;  in main (test_sp.c:22)
      0x800006b8 sw      a6, 4(a0)              #; a0  = 0x00100000, 0x400920c4 ~~> Word[0x00100004]
      0x800006bc lui     a3, 0x9ba5e            #; (wrb) a3  <-- 0x9ba5e000
      0x800006c0 addi    a3, a3, 852            #; a3  = 0x9ba5e000, (wrb) a3  <-- 0x9ba5e354
      0x800006c4 sw      a3, 0(a0)              #; a0  = 0x00100000, 0x9ba5e354 ~~> Word[0x00100000]
      0x800006c8 lui     a4, 0x40192            #; (wrb) a4  <-- 0x40192000
      0x800006cc addi    a7, a4, 196            #; a4  = 0x40192000, (wrb) a7  <-- 0x401920c4
      0x800006d0 sw      a7, 12(a0)             #; a0  = 0x00100000, 0x401920c4 ~~> Word[0x0010000c]
      0x800006d4 sw      a3, 8(a0)              #; a0  = 0x00100000, 0x9ba5e354 ~~> Word[0x00100008]
      0x800006d8 lui     a5, 0x4022e            #; (wrb) a5  <-- 0x4022e000
      0x800006dc addi    t0, a5, -1901          #; a5  = 0x4022e000, (wrb) t0  <-- 0x4022d893
      0x800006e0 sw      t0, 20(a0)             #; a0  = 0x00100000, 0x4022d893 ~~> Word[0x00100014]
      0x800006e4 lui     a2, 0x74bc7            #; (wrb) a2  <-- 0x74bc7000
      0x800006e8 addi    a2, a2, -1409          #; a2  = 0x74bc7000, (wrb) a2  <-- 0x74bc6a7f
      0x800006ec sw      a2, 16(a0)             #; a0  = 0x00100000, 0x74bc6a7f ~~> Word[0x00100010]
      0x800006f0 lui     a4, 0x40292            #; (wrb) a4  <-- 0x40292000
      0x800006f4 addi    t1, a4, 196            #; a4  = 0x40292000, (wrb) t1  <-- 0x402920c4
      0x800006f8 sw      t1, 28(a0)             #; a0  = 0x00100000, 0x402920c4 ~~> Word[0x0010001c]
      0x800006fc sw      a3, 24(a0)             #; a0  = 0x00100000, 0x9ba5e354 ~~> Word[0x00100018]
      0x80000700 lui     a5, 0x402f7            #; (wrb) a5  <-- 0x402f7000
      0x80000704 addi    t2, a5, -1803          #; a5  = 0x402f7000, (wrb) t2  <-- 0x402f68f5
      0x80000708 sw      t2, 36(a0)             #; a0  = 0x00100000, 0x402f68f5 ~~> Word[0x00100024]
      0x8000070c lui     a4, 0xc28f6            #; (wrb) a4  <-- 0xc28f6000
      0x80000710 addi    a4, a4, -983           #; a4  = 0xc28f6000, (wrb) a4  <-- 0xc28f5c29
      0x80000714 sw      a4, 32(a0)             #; a0  = 0x00100000, 0xc28f5c29 ~~> Word[0x00100020]
      0x80000718 lui     a5, 0x4032e            #; (wrb) a5  <-- 0x4032e000
      0x8000071c addi    t3, a5, -1901          #; a5  = 0x4032e000, (wrb) t3  <-- 0x4032d893
      0x80000720 sw      t3, 44(a0)             #; a0  = 0x00100000, 0x4032d893 ~~> Word[0x0010002c]
      0x80000724 sw      a2, 40(a0)             #; a0  = 0x00100000, 0x74bc6a7f ~~> Word[0x00100028]
      0x80000728 lui     a5, 0x40360            #; (wrb) a5  <-- 0x40360000
      0x8000072c addi    t4, a5, -852           #; a5  = 0x40360000, (wrb) t4  <-- 0x4035fcac
      0x80000730 sw      t4, 52(a0)             #; a0  = 0x00100000, 0x4035fcac ~~> Word[0x00100034]
      0x80000734 lui     a5, 0x8312             #; (wrb) a5  <-- 0x08312000
      0x80000738 addi    t5, a5, 1770           #; a5  = 0x08312000, (wrb) t5  <-- 0x083126ea
      0x8000073c sw      t5, 48(a0)             #; a0  = 0x00100000, 0x083126ea ~~> Word[0x00100030]
      0x80000740 lui     a5, 0x40392            #; (wrb) a5  <-- 0x40392000
      0x80000744 addi    t6, a5, 196            #; a5  = 0x40392000, (wrb) t6  <-- 0x403920c4
      0x80000748 sw      t6, 60(a0)             #; a0  = 0x00100000, 0x403920c4 ~~> Word[0x0010003c]
      0x8000074c sw      a3, 56(a0)             #; a0  = 0x00100000, 0x9ba5e354 ~~> Word[0x00100038]
      0x80000750 lui     a5, 0x403c4            #; (wrb) a5  <-- 0x403c4000
      0x80000754 addi    a5, a5, 1245           #; a5  = 0x403c4000, (wrb) a5  <-- 0x403c44dd
      0x80000758 sw      a5, 68(a0)             #; a0  = 0x00100000, 0x403c44dd ~~> Word[0x00100044]
      0x8000075c lui     s0, 0x2f1aa            #; (wrb) s0  <-- 0x2f1aa000
      0x80000760 addi    s0, s0, -66            #; s0  = 0x2f1aa000, (wrb) s0  <-- 0x2f1a9fbe
      0x80000764 sw      s0, 64(a0)             #; a0  = 0x00100000, 0x2f1a9fbe ~~> Word[0x00100040]
      0x80000768 sw      a4, 72(a0)             #; a0  = 0x00100000, 0xc28f5c29 ~~> Word[0x00100048]
      0x8000076c lui     s1, 0x403f7            #; (wrb) s1  <-- 0x403f7000
      0x80000770 addi    s1, s1, -1803          #; s1  = 0x403f7000, (wrb) s1  <-- 0x403f68f5
      0x80000774 sw      s1, 76(a0)             #; a0  = 0x00100000, 0x403f68f5 ~~> Word[0x0010004c]
; init_data (test_sp.c:9)
;  in main (test_sp.c:23)
      0x80000778 sw      a3, 0(a1)              #; a1  = 0x00100050, 0x9ba5e354 ~~> Word[0x00100050]
      0x8000077c sw      a6, 4(a1)              #; a1  = 0x00100050, 0x400920c4 ~~> Word[0x00100054]
      0x80000780 sw      a3, 8(a1)              #; a1  = 0x00100050, 0x9ba5e354 ~~> Word[0x00100058]
      0x80000784 sw      a7, 12(a1)             #; a1  = 0x00100050, 0x401920c4 ~~> Word[0x0010005c]
      0x80000788 sw      a2, 16(a1)             #; a1  = 0x00100050, 0x74bc6a7f ~~> Word[0x00100060]
      0x8000078c sw      t0, 20(a1)             #; a1  = 0x00100050, 0x4022d893 ~~> Word[0x00100064]
      0x80000790 sw      a3, 24(a1)             #; a1  = 0x00100050, 0x9ba5e354 ~~> Word[0x00100068]
      0x80000794 sw      t1, 28(a1)             #; a1  = 0x00100050, 0x402920c4 ~~> Word[0x0010006c]
      0x80000798 sw      a4, 32(a1)             #; a1  = 0x00100050, 0xc28f5c29 ~~> Word[0x00100070]
      0x8000079c sw      t2, 36(a1)             #; a1  = 0x00100050, 0x402f68f5 ~~> Word[0x00100074]
      0x800007a0 sw      a2, 40(a1)             #; a1  = 0x00100050, 0x74bc6a7f ~~> Word[0x00100078]
      0x800007a4 sw      t3, 44(a1)             #; a1  = 0x00100050, 0x4032d893 ~~> Word[0x0010007c]
      0x800007a8 sw      t5, 48(a1)             #; a1  = 0x00100050, 0x083126ea ~~> Word[0x00100080]
      0x800007ac sw      t4, 52(a1)             #; a1  = 0x00100050, 0x4035fcac ~~> Word[0x00100084]
      0x800007b0 sw      a3, 56(a1)             #; a1  = 0x00100050, 0x9ba5e354 ~~> Word[0x00100088]
      0x800007b4 sw      t6, 60(a1)             #; a1  = 0x00100050, 0x403920c4 ~~> Word[0x0010008c]
      0x800007b8 sw      s0, 64(a1)             #; a1  = 0x00100050, 0x2f1a9fbe ~~> Word[0x00100090]
      0x800007bc sw      a5, 68(a1)             #; a1  = 0x00100050, 0x403c44dd ~~> Word[0x00100094]
      0x800007c0 sw      a4, 72(a1)             #; a1  = 0x00100050, 0xc28f5c29 ~~> Word[0x00100098]
      0x800007c4 sw      s1, 76(a1)             #; a1  = 0x00100050, 0x403f68f5 ~~> Word[0x0010009c]
; scalarprod (scalarprod.c:0)
;  in main (test_sp.c:25)
      0x800007cc auipc   a1, 0x2                #; (wrb) a1  <-- 0x800027cc
; scalarprod (scalarprod.c:7)
;  in main (test_sp.c:25)
      0x800007c8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x00100000]
                                                #; (f:lsu) ft0  <-- 3.141
; scalarprod (scalarprod.c:0)
;  in main (test_sp.c:25)
      0x800007d0 addi    a1, a1, 1804           #; a1  = 0x800027cc, (wrb) a1  <-- 0x80002ed8
      0x800007dc auipc   a1, 0x2                #; (wrb) a1  <-- 0x800027dc
      0x800007d4 fld     ft1, 0(a1)             #; ft1  <~~ Doub[0x80002ed8]
; scalarprod (scalarprod.c:7)
;  in main (test_sp.c:25)
      0x800007d8 fld     ft2, 8(a0)             #; ft2  <~~ Doub[0x00100008]
; scalarprod (scalarprod.c:0)
;  in main (test_sp.c:25)
      0x800007e0 addi    a1, a1, 1796           #; a1  = 0x800027dc, (wrb) a1  <-- 0x80002ee0
                                                #; (f:lsu) ft1  <-- 3.141
                                                #; (f:lsu) ft2  <-- 6.282
      0x800007ec auipc   a1, 0x2                #; (wrb) a1  <-- 0x800027ec
      0x800007e4 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x80002ee0]
; scalarprod (scalarprod.c:7)
;  in main (test_sp.c:25)
      0x800007e8 fld     ft4, 16(a0)            #; ft4  <~~ Doub[0x00100010]
; scalarprod (scalarprod.c:0)
;  in main (test_sp.c:25)
      0x800007f0 addi    a1, a1, 1788           #; a1  = 0x800027ec, (wrb) a1  <-- 0x80002ee8
                                                #; (f:lsu) ft3  <-- 6.282
                                                #; (f:lsu) ft4  <-- 9.423
      0x800007f4 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x80002ee8]
; scalarprod (scalarprod.c:7)
;  in main (test_sp.c:25)
      0x800007f8 fmul.d  ft0, ft0, ft1          #; ft0  = 3.141, ft1  = 3.141
                                                #; (f:fpu) ft0  <-- 9.865881
      0x800007fc fmadd.d ft0, ft2, ft3, ft0     #; ft2  = 6.282, ft3  = 6.282, ft0  = 9.865881
                                                #; (f:fpu) ft0  <-- 49.3294050
                                                #; (f:lsu) ft5  <-- 9.423
; scalarprod (scalarprod.c:0)
;  in main (test_sp.c:25)
      0x80000808 auipc   a1, 0x2                #; (wrb) a1  <-- 0x80002808
      0x80000800 fmadd.d ft0, ft4, ft5, ft0     #; ft4  = 9.423, ft5  = 9.423, ft0  = 49.3294050
      0x8000080c addi    a1, a1, 1768           #; a1  = 0x80002808, (wrb) a1  <-- 0x80002ef0
      0x80000804 fld     ft1, 24(a0)            #; ft1  <~~ Doub[0x00100018]
                                                #; (f:lsu) ft1  <-- 12.564
                                                #; (f:fpu) ft0  <-- 138.1223340
      0x80000818 auipc   a1, 0x2                #; (wrb) a1  <-- 0x80002818
      0x80000810 fld     ft2, 0(a1)             #; ft2  <~~ Doub[0x80002ef0]
      0x8000081c addi    a1, a1, 1760           #; a1  = 0x80002818, (wrb) a1  <-- 0x80002ef8
      0x80000814 fld     ft3, 32(a0)            #; ft3  <~~ Doub[0x00100020]
                                                #; (f:lsu) ft2  <-- 12.564
                                                #; (f:lsu) ft3  <-- 15.705
      0x80000828 auipc   a1, 0x2                #; (wrb) a1  <-- 0x80002828
      0x80000820 fld     ft4, 0(a1)             #; ft4  <~~ Doub[0x80002ef8]
      0x8000082c addi    a1, a1, 1752           #; a1  = 0x80002828, (wrb) a1  <-- 0x80002f00
      0x80000824 fld     ft5, 40(a0)            #; ft5  <~~ Doub[0x00100028]
                                                #; (f:lsu) ft4  <-- 15.705
                                                #; (f:lsu) ft5  <-- 18.846
      0x80000838 auipc   a1, 0x2                #; (wrb) a1  <-- 0x80002838
      0x80000830 fld     ft6, 0(a1)             #; ft6  <~~ Doub[0x80002f00]
      0x8000083c addi    a1, a1, 1744           #; a1  = 0x80002838, (wrb) a1  <-- 0x80002f08
      0x80000834 fld     ft7, 48(a0)            #; ft7  <~~ Doub[0x00100030]
                                                #; (f:lsu) ft6  <-- 18.846
                                                #; (f:lsu) ft7  <-- 21.9870000
      0x80000840 fld     fa0, 0(a1)             #; fa0  <~~ Doub[0x80002f08]
; scalarprod (scalarprod.c:7)
;  in main (test_sp.c:25)
      0x80000844 fmadd.d ft0, ft1, ft2, ft0     #; ft1  = 12.564, ft2  = 12.564, ft0  = 138.1223340
                                                #; (f:fpu) ft0  <-- 295.9764300
      0x80000848 fmadd.d ft0, ft3, ft4, ft0     #; ft3  = 15.705, ft4  = 15.705, ft0  = 295.9764300
                                                #; (f:fpu) ft0  <-- 542.6234550
      0x8000084c fmadd.d ft0, ft5, ft6, ft0     #; ft5  = 18.846, ft6  = 18.846, ft0  = 542.6234550, (f:lsu) fa0  <-- 21.9870000
; scalarprod (scalarprod.c:0)
;  in main (test_sp.c:25)
      0x80000858 auipc   a1, 0x2                #; (wrb) a1  <-- 0x80002858
                                                #; (f:fpu) ft0  <-- 897.7951710
      0x8000085c addi    a1, a1, 1720           #; a1  = 0x80002858, (wrb) a1  <-- 0x80002f10
      0x80000850 fmadd.d ft0, ft7, fa0, ft0     #; ft7  = 21.9870000, fa0  = 21.9870000, ft0  = 897.7951710
; scalarprod (scalarprod.c:7)
;  in main (test_sp.c:25)
      0x80000854 fld     ft1, 56(a0)            #; ft1  <~~ Doub[0x00100038]
                                                #; (f:lsu) ft1  <-- 25.128
                                                #; (f:fpu) ft0  <-- 1381.2233400
; scalarprod (scalarprod.c:0)
;  in main (test_sp.c:25)
      0x80000868 auipc   a1, 0x2                #; (wrb) a1  <-- 0x80002868
      0x80000860 fld     ft2, 0(a1)             #; ft2  <~~ Doub[0x80002f10]
      0x8000086c addi    a1, a1, 1712           #; a1  = 0x80002868, (wrb) a1  <-- 0x80002f18
      0x80000864 fld     ft3, 64(a0)            #; ft3  <~~ Doub[0x00100040]
                                                #; (f:lsu) ft2  <-- 25.128
                                                #; (f:lsu) ft3  <-- 28.269
      0x80000878 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002878
      0x80000870 fld     ft4, 0(a1)             #; ft4  <~~ Doub[0x80002f18]
      0x8000087c addi    a0, a0, 1704           #; a0  = 0x80002878, (wrb) a0  <-- 0x80002f20
      0x80000874 fld     ft5, 72(a0)            #; ft5  <~~ Doub[0x00100048]
                                                #; (f:lsu) ft4  <-- 28.269
                                                #; (f:lsu) ft5  <-- 31.41
      0x80000884 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002884
      0x80000888 addi    a0, a0, 1700           #; a0  = 0x80002884, (wrb) a0  <-- 0x80002f28
      0x80000880 fld     ft6, 0(a0)             #; ft6  <~~ Doub[0x80002f20]
      0x8000088c fld     ft7, 0(a0)             #; ft7  <~~ Doub[0x80002f28]
                                                #; (f:lsu) ft6  <-- 31.41
; scalarprod (scalarprod.c:7)
;  in main (test_sp.c:25)
      0x80000890 fmadd.d ft0, ft1, ft2, ft0     #; ft1  = 25.128, ft2  = 25.128, ft0  = 1381.2233400, (f:lsu) ft7  <-- -3798.3641850
                                                #; (f:fpu) ft0  <-- 2012.6397240
      0x80000894 fmadd.d ft0, ft3, ft4, ft0     #; ft3  = 28.269, ft4  = 28.269, ft0  = 2012.6397240
                                                #; (f:fpu) ft0  <-- 2811.7760850
      0x80000898 fmadd.d ft0, ft5, ft6, ft0     #; ft5  = 31.41, ft6  = 31.41, ft0  = 2811.7760850
                                                #; (f:fpu) ft0  <-- 3798.3641850
; main (test_sp.c:33)
      0x800008a8 lw      a2, 0(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff40]
      0x8000089c fadd.d  ft0, ft0, ft7          #; ft0  = 3798.3641850, ft7  = -3798.3641850
                                                #; (lsu) a2  <-- 0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800008ac lw      a3, 4(sp)              #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff44]
      0x800008a0 fsgnjx.d fs0, ft0, ft0         #; ft0  = 0.0, ft0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x800008a4 fsd     fs0, 0(sp)             #; 0.0 ~~> Doub[0x0011ff40]
                                                #; (lsu) a3  <-- 0
      0x800008b0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028b0
      0x800008b4 addi    a0, a0, 885            #; a0  = 0x800028b0, (wrb) a0  <-- 0x80002c25
      0x800008b8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008b8
      0x800008bc jalr    ra, ra, 48             #; ra  = 0x800008b8, (wrb) ra  <-- 0x800008c0, goto 0x800008e8
; printf_ (printf.c:863)
      0x800008e8 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x800008ec sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x800008c0 ~~> Word[0x0011ff1c]
      0x800008f0 mv      t0, a0                 #; a0  = 0x80002c25, (wrb) t0  <-- 0x80002c25
      0x800008f4 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0x401920c4 ~~> Word[0x0011ff3c]
      0x800008f8 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 0x400920c4 ~~> Word[0x0011ff38]
      0x800008fc sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0x403c44dd ~~> Word[0x0011ff34]
      0x80000900 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 0xc28f5c29 ~~> Word[0x0011ff30]
      0x80000904 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
      0x80000908 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
      0x8000090c sw      a1, 20(sp)             #; sp  = 0x0011ff10, 0x80002f18 ~~> Word[0x0011ff24]
      0x80000910 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
; printf_ (printf.c:865)
      0x80000914 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
; printf_ (printf.c:867)
      0x80000918 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001918
      0x8000091c addi    a0, a0, -988           #; a0  = 0x80001918, (wrb) a0  <-- 0x8000153c
      0x80000920 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
      0x80000924 li      a2, -1                 #; (wrb) a2  <-- -1
      0x80000928 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
      0x8000092c mv      a3, t0                 #; t0  = 0x80002c25, (wrb) a3  <-- 0x80002c25
      0x80000930 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000930
      0x80000934 jalr    ra, ra, 20             #; ra  = 0x80000930, (wrb) ra  <-- 0x80000938, goto 0x80000944
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000944 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
      0x80000948 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000938 ~~> Word[0x0011ff0c]
      0x8000094c sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0x2f1a9fbe ~~> Word[0x0011ff08]
      0x80000950 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0x403f68f5 ~~> Word[0x0011ff04]
      0x80000954 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
      0x80000958 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
      0x8000095c sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
      0x80000960 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
      0x80000964 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
      0x80000968 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
      0x8000096c sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
      0x80000970 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
      0x80000974 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
      0x80000978 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
      0x8000097c mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
      0x80000980 mv      s0, a3                 #; a3  = 0x80002c25, (wrb) s0  <-- 0x80002c25
      0x80000984 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x80000988 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x8000098c beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000990 mv      s2, a0                 #; a0  = 0x8000153c, (wrb) s2  <-- 0x8000153c
      0x80000994 j       pc + 0xc               #; goto 0x800009a0
      0x800009a0 li      s8, 0                  #; (wrb) s8  <-- 0
      0x800009a4 li      s6, 37                 #; (wrb) s6  <-- 37
      0x800009a8 li      s11, 16                #; (wrb) s11 <-- 16
      0x800009ac li      s7, 46                 #; (wrb) s7  <-- 46
      0x800009b0 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x800009b4 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x800009b8 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
      0x800009bc lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x800009c0 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x800009c4 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009c8 addi    s10, s0, 2             #; s0  = 0x80002c25, (wrb) s10 <-- 0x80002c27
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009cc mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x800009d0 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009d4 lbu     a0, 0(s0)              #; s0  = 0x80002c25, a0  <~~ Byte[0x80002c25]
                                                #; (lsu) a0  <-- 101
      0x800009d8 beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x800009dc beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009e0 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x800009e4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800009e8 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x800009ec mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800009f0 jalr    s2                     #; s2  = 0x8000153c, (wrb) ra  <-- 0x800009f4, goto 0x8000153c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000153c beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001540 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001548 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000154c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000354c
      0x80001550 addi    a3, a3, -1384          #; a3  = 0x8000354c, (wrb) a3  <-- 0x80002fe4
      0x80001554 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fe4, (wrb) a1  <-- 0x80002fe4
      0x80001558 lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 0
      0x8000155c addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x80001560 sw      a5, 0(a1)              #; a1  = 0x80002fe4, 1 ~~> Word[0x80002fe4]
      0x80001564 add     a4, a1, a4             #; a1  = 0x80002fe4, a4  = 0, (wrb) a4  <-- 0x80002fe4
      0x80001568 sb      a0, 72(a4)             #; a4  = 0x80002fe4, 101 ~~> Byte[0x8000302c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 1
      0x80001570 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x80001574 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x80001578 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x8000157c snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x80001580 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001584 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015e4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015e4 ret                            #; ra  = 0x800009f4, goto 0x800009f4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800009f4 addi    s0, s0, 1              #; s0  = 0x80002c25, (wrb) s0  <-- 0x80002c26
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800009f8 addi    s10, s10, 1            #; s10 = 0x80002c27, (wrb) s10 <-- 0x80002c28
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009fc mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a00 lbu     a0, 0(s0)              #; s0  = 0x80002c26, a0  <~~ Byte[0x80002c26]
                                                #; (lsu) a0  <-- 114
      0x80000a04 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800009dc
      0x800009dc beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009e0 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x800009e4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800009e8 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x800009ec mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800009f0 jalr    s2                     #; s2  = 0x8000153c, (wrb) ra  <-- 0x800009f4, goto 0x8000153c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000153c beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001540 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001548 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000154c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000354c
      0x80001550 addi    a3, a3, -1384          #; a3  = 0x8000354c, (wrb) a3  <-- 0x80002fe4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001554 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fe4, (wrb) a1  <-- 0x80002fe4
      0x80001558 lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 1
      0x8000155c addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x80001560 sw      a5, 0(a1)              #; a1  = 0x80002fe4, 2 ~~> Word[0x80002fe4]
      0x80001564 add     a4, a1, a4             #; a1  = 0x80002fe4, a4  = 1, (wrb) a4  <-- 0x80002fe5
      0x80001568 sb      a0, 72(a4)             #; a4  = 0x80002fe5, 114 ~~> Byte[0x8000302d]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 2
      0x80001570 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x80001574 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x80001578 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x8000157c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001580 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001584 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015e4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015e4 ret                            #; ra  = 0x800009f4, goto 0x800009f4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800009f4 addi    s0, s0, 1              #; s0  = 0x80002c26, (wrb) s0  <-- 0x80002c27
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800009f8 addi    s10, s10, 1            #; s10 = 0x80002c28, (wrb) s10 <-- 0x80002c29
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009fc mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a00 lbu     a0, 0(s0)              #; s0  = 0x80002c27, a0  <~~ Byte[0x80002c27]
                                                #; (lsu) a0  <-- 114
      0x80000a04 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800009dc
      0x800009dc beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009e0 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x800009e4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800009e8 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x800009ec mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800009f0 jalr    s2                     #; s2  = 0x8000153c, (wrb) ra  <-- 0x800009f4, goto 0x8000153c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000153c beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001540 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001548 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000154c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000354c
      0x80001550 addi    a3, a3, -1384          #; a3  = 0x8000354c, (wrb) a3  <-- 0x80002fe4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001554 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fe4, (wrb) a1  <-- 0x80002fe4
      0x80001558 lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 2
      0x8000155c addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x80001560 sw      a5, 0(a1)              #; a1  = 0x80002fe4, 3 ~~> Word[0x80002fe4]
      0x80001564 add     a4, a1, a4             #; a1  = 0x80002fe4, a4  = 2, (wrb) a4  <-- 0x80002fe6
      0x80001568 sb      a0, 72(a4)             #; a4  = 0x80002fe6, 114 ~~> Byte[0x8000302e]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 3
      0x80001570 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x80001574 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x80001578 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x8000157c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001580 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001584 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015e4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015e4 ret                            #; ra  = 0x800009f4, goto 0x800009f4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800009f4 addi    s0, s0, 1              #; s0  = 0x80002c27, (wrb) s0  <-- 0x80002c28
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800009f8 addi    s10, s10, 1            #; s10 = 0x80002c29, (wrb) s10 <-- 0x80002c2a
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009fc mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a00 lbu     a0, 0(s0)              #; s0  = 0x80002c28, a0  <~~ Byte[0x80002c28]
                                                #; (lsu) a0  <-- 111
      0x80000a04 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x800009dc
      0x800009dc beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009e0 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x800009e4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800009e8 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x800009ec mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800009f0 jalr    s2                     #; s2  = 0x8000153c, (wrb) ra  <-- 0x800009f4, goto 0x8000153c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000153c beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001540 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001548 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000154c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000354c
      0x80001550 addi    a3, a3, -1384          #; a3  = 0x8000354c, (wrb) a3  <-- 0x80002fe4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001554 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fe4, (wrb) a1  <-- 0x80002fe4
      0x80001558 lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 3
      0x8000155c addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x80001560 sw      a5, 0(a1)              #; a1  = 0x80002fe4, 4 ~~> Word[0x80002fe4]
      0x80001564 add     a4, a1, a4             #; a1  = 0x80002fe4, a4  = 3, (wrb) a4  <-- 0x80002fe7
      0x80001568 sb      a0, 72(a4)             #; a4  = 0x80002fe7, 111 ~~> Byte[0x8000302f]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 4
      0x80001570 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x80001574 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x80001578 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x8000157c snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x80001580 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001584 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015e4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015e4 ret                            #; ra  = 0x800009f4, goto 0x800009f4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800009f4 addi    s0, s0, 1              #; s0  = 0x80002c28, (wrb) s0  <-- 0x80002c29
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800009f8 addi    s10, s10, 1            #; s10 = 0x80002c2a, (wrb) s10 <-- 0x80002c2b
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009fc mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a00 lbu     a0, 0(s0)              #; s0  = 0x80002c29, a0  <~~ Byte[0x80002c29]
                                                #; (lsu) a0  <-- 114
      0x80000a04 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800009dc
      0x800009dc beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009e0 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x800009e4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800009e8 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x800009ec mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800009f0 jalr    s2                     #; s2  = 0x8000153c, (wrb) ra  <-- 0x800009f4, goto 0x8000153c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000153c beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001540 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001548 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000154c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000354c
      0x80001550 addi    a3, a3, -1384          #; a3  = 0x8000354c, (wrb) a3  <-- 0x80002fe4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001554 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fe4, (wrb) a1  <-- 0x80002fe4
      0x80001558 lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 4
      0x8000155c addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x80001560 sw      a5, 0(a1)              #; a1  = 0x80002fe4, 5 ~~> Word[0x80002fe4]
      0x80001564 add     a4, a1, a4             #; a1  = 0x80002fe4, a4  = 4, (wrb) a4  <-- 0x80002fe8
      0x80001568 sb      a0, 72(a4)             #; a4  = 0x80002fe8, 114 ~~> Byte[0x80003030]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 5
      0x80001570 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x80001574 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x80001578 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x8000157c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001580 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001584 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015e4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015e4 ret                            #; ra  = 0x800009f4, goto 0x800009f4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800009f4 addi    s0, s0, 1              #; s0  = 0x80002c29, (wrb) s0  <-- 0x80002c2a
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800009f8 addi    s10, s10, 1            #; s10 = 0x80002c2b, (wrb) s10 <-- 0x80002c2c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009fc mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a00 lbu     a0, 0(s0)              #; s0  = 0x80002c2a, a0  <~~ Byte[0x80002c2a]
                                                #; (lsu) a0  <-- 32
      0x80000a04 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800009dc
      0x800009dc beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009e0 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x800009e4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800009e8 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x800009ec mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800009f0 jalr    s2                     #; s2  = 0x8000153c, (wrb) ra  <-- 0x800009f4, goto 0x8000153c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000153c beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001540 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001548 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000154c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000354c
      0x80001550 addi    a3, a3, -1384          #; a3  = 0x8000354c, (wrb) a3  <-- 0x80002fe4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001554 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fe4, (wrb) a1  <-- 0x80002fe4
      0x80001558 lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 5
      0x8000155c addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x80001560 sw      a5, 0(a1)              #; a1  = 0x80002fe4, 6 ~~> Word[0x80002fe4]
      0x80001564 add     a4, a1, a4             #; a1  = 0x80002fe4, a4  = 5, (wrb) a4  <-- 0x80002fe9
      0x80001568 sb      a0, 72(a4)             #; a4  = 0x80002fe9, 32 ~~> Byte[0x80003031]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 6
      0x80001570 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x80001574 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x80001578 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x8000157c snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001580 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001584 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015e4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015e4 ret                            #; ra  = 0x800009f4, goto 0x800009f4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800009f4 addi    s0, s0, 1              #; s0  = 0x80002c2a, (wrb) s0  <-- 0x80002c2b
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800009f8 addi    s10, s10, 1            #; s10 = 0x80002c2c, (wrb) s10 <-- 0x80002c2d
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009fc mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a00 lbu     a0, 0(s0)              #; s0  = 0x80002c2b, a0  <~~ Byte[0x80002c2b]
                                                #; (lsu) a0  <-- 61
      0x80000a04 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x800009dc
      0x800009dc beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009e0 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x800009e4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800009e8 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x800009ec mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800009f0 jalr    s2                     #; s2  = 0x8000153c, (wrb) ra  <-- 0x800009f4, goto 0x8000153c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000153c beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001540 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001548 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000154c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000354c
      0x80001550 addi    a3, a3, -1384          #; a3  = 0x8000354c, (wrb) a3  <-- 0x80002fe4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001554 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fe4, (wrb) a1  <-- 0x80002fe4
      0x80001558 lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 6
      0x8000155c addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x80001560 sw      a5, 0(a1)              #; a1  = 0x80002fe4, 7 ~~> Word[0x80002fe4]
      0x80001564 add     a4, a1, a4             #; a1  = 0x80002fe4, a4  = 6, (wrb) a4  <-- 0x80002fea
      0x80001568 sb      a0, 72(a4)             #; a4  = 0x80002fea, 61 ~~> Byte[0x80003032]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 7
      0x80001570 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x80001574 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x80001578 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x8000157c snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x80001580 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001584 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015e4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015e4 ret                            #; ra  = 0x800009f4, goto 0x800009f4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800009f4 addi    s0, s0, 1              #; s0  = 0x80002c2b, (wrb) s0  <-- 0x80002c2c
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800009f8 addi    s10, s10, 1            #; s10 = 0x80002c2d, (wrb) s10 <-- 0x80002c2e
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009fc mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a00 lbu     a0, 0(s0)              #; s0  = 0x80002c2c, a0  <~~ Byte[0x80002c2c]
                                                #; (lsu) a0  <-- 32
      0x80000a04 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800009dc
      0x800009dc beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009e0 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x800009e4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800009e8 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x800009ec mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800009f0 jalr    s2                     #; s2  = 0x8000153c, (wrb) ra  <-- 0x800009f4, goto 0x8000153c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000153c beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001540 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001548 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000154c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000354c
      0x80001550 addi    a3, a3, -1384          #; a3  = 0x8000354c, (wrb) a3  <-- 0x80002fe4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001554 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fe4, (wrb) a1  <-- 0x80002fe4
      0x80001558 lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 7
      0x8000155c addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x80001560 sw      a5, 0(a1)              #; a1  = 0x80002fe4, 8 ~~> Word[0x80002fe4]
      0x80001564 add     a4, a1, a4             #; a1  = 0x80002fe4, a4  = 7, (wrb) a4  <-- 0x80002feb
      0x80001568 sb      a0, 72(a4)             #; a4  = 0x80002feb, 32 ~~> Byte[0x80003033]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 8
      0x80001570 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x80001574 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x80001578 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x8000157c snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001580 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001584 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015e4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015e4 ret                            #; ra  = 0x800009f4, goto 0x800009f4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800009f4 addi    s0, s0, 1              #; s0  = 0x80002c2c, (wrb) s0  <-- 0x80002c2d
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800009f8 addi    s10, s10, 1            #; s10 = 0x80002c2e, (wrb) s10 <-- 0x80002c2f
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009fc mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a00 lbu     a0, 0(s0)              #; s0  = 0x80002c2d, a0  <~~ Byte[0x80002c2d]
                                                #; (lsu) a0  <-- 37
      0x80000a04 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x800009dc
      0x800009dc beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000a0c
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000a0c li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a10 j       pc + 0x10              #; goto 0x80000a20
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000a20 lbu     a0, -1(s10)            #; s10 = 0x80002c2f, a0  <~~ Byte[0x80002c2e]
                                                #; (lsu) a0  <-- 102
      0x80000a24 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000a28 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000a60
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000a60 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000a64 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000a68 addi    a1, s10, -1            #; s10 = 0x80002c2f, (wrb) a1  <-- 0x80002c2e
      0x80000a6c li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000a70 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000aec
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000aec li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000af0 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000b40
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b40 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000b44 mv      s10, a1                #; a1  = 0x80002c2e, (wrb) s10 <-- 0x80002c2e
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000b48 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b4c li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000b50 j       pc + 0xc               #; goto 0x80000b5c
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000b5c addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000b60 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000b64 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000b68 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000b6c li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000b70 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000bd4
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000bd4 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000bd8 li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000bdc bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000be0 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000be4 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002be4
      0x80000be8 addi    a2, a2, 192            #; a2  = 0x80002be4, (wrb) a2  <-- 0x80002ca4
      0x80000bec add     a1, a1, a2             #; a1  = 260, a2  = 0x80002ca4, (wrb) a1  <-- 0x80002da8
      0x80000bf0 lw      a2, 0(a1)              #; a1  = 0x80002da8, a2  <~~ Word[0x80002da8]
      0x80000bf4 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000bf8 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000c2c
      0x80000bfc jr      a2                     #; a2  = 0x80000c2c, goto 0x80000c2c
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80000c2c li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000c30 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000c38
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000c38 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
      0x80000c3c andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
      0x80000c44 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
      0x80000c48 mv      a0, s2                 #; s2  = 0x8000153c, (wrb) a0  <-- 0x8000153c
      0x80000c40 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
      0x80000c4c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
; ?? (??:0)
                                                #; (f:lsu) fa0  <-- 0.0
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000c50 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000c54 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c58 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000c5c mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000c60 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000c64 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001c64
      0x80000c68 jalr    ra, ra, -1656          #; ra  = 0x80001c64, (wrb) ra  <-- 0x80000c6c, goto 0x800015ec
; _ftoa (printf.c:340)
      0x800015ec addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
      0x800015f0 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000c6c ~~> Word[0x0011fe9c]
      0x800015f4 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
      0x800015f8 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
      0x800015fc sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x8000153c ~~> Word[0x0011fe90]
      0x80001600 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
      0x80001604 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
      0x80001608 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
      0x8000160c sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
      0x80001610 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
      0x80001614 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
      0x80001618 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
      0x8000161c sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002c2e ~~> Word[0x0011fe70]
      0x80001620 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe68]
      0x8000162c auipc   s1, 0x2                #; (wrb) s1  <-- 0x8000362c
      0x80001624 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
      0x80001628 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
      0x80001630 addi    s1, s1, -1780          #; s1  = 0x8000362c, (wrb) s1  <-- 0x80002f38
; _ftoa (printf.c:351)
      0x8000163c mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
      0x80001634 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002f38]
; _ftoa (printf.c:0)
      0x80001640 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x80001644 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x80001638 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
      0x80001648 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x8000164c mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
      0x80001650 mv      s7, a0                 #; a0  = 0x8000153c, (wrb) s7  <-- 0x8000153c
; _ftoa (printf.c:351)
      0x80001654 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001744
; _ftoa (printf.c:0)
      0x80001748 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002748
      0x8000174c addi    a0, a0, 2040           #; a0  = 0x80002748, (wrb) a0  <-- 0x80002f40
      0x80001744 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x80001750 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f40]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x80001754 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x80001758 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001774
; _ftoa (printf.c:0)
      0x80001774 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002774
      0x80001778 addi    a0, a0, 2004           #; a0  = 0x80002774, (wrb) a0  <-- 0x80002f48
      0x8000177c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f48]
      0x80001780 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002780
      0x80001784 addi    a0, a0, 2000           #; a0  = 0x80002780, (wrb) a0  <-- 0x80002f50
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
      0x80001788 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f50]
; _ftoa (printf.c:358)
      0x8000178c fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
      0x80001790 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
                                                #; (acc) a0  <-- 0x00b57533
      0x80001794 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80001798 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001894
; _ftoa (printf.c:374)
      0x80001894 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x80001898 li      s8, 6                  #; (wrb) s8  <-- 6
      0x8000189c beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x800018a4
; _ftoa (printf.c:0)
      0x800018a4 li      a0, 10                 #; (wrb) a0  <-- 10
; _ftoa (printf.c:378)
      0x800018ac bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x800018e4
; _ftoa (printf.c:0)
      0x800018a8 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs2  <-- 0.0
      0x800018e4 li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x800018e8 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x800018ec auipc   a1, 0x1                #; (wrb) a1  <-- 0x800028ec
      0x800018f0 addi    a1, a1, 1292           #; a1  = 0x800028ec, (wrb) a1  <-- 0x80002df8
      0x800018f4 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002df8, (wrb) a0  <-- 0x80002e28
      0x800018f8 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002e28]
; _ftoa (printf.c:383)
      0x800018fc fcvt.w.d s1, fs2               #; fs2  = 0.0
; _ftoa (printf.c:384)
      0x80001900 fcvt.d.w ft0, s1               #; ac1  = 0, (f:lsu) ft1  <-- 1000000.0000000
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:0)
      0x8000190c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000290c
      0x80001904 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:384)
      0x80001908 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:0)
      0x80001910 addi    a0, a0, 1612           #; a0  = 0x8000290c, (wrb) a0  <-- 0x80002f58
      0x80001914 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f58]
; _ftoa (printf.c:385)
      0x80001918 fcvt.wu.d a0, ft2              #; ft2  = 0.0
                                                #; (acc) gp  <-- 0xd21501d3
; _ftoa (printf.c:386)
      0x8000191c fcvt.d.wu ft3, a0              #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
                                                #; (f:lsu) ft0  <-- 0.5
      0x80001920 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:388)
      0x80001924 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x80001928 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001948
; _ftoa (printf.c:396)
      0x80001948 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
                                                #; (acc) s4  <-- 0x00059a63
      0x8000194c bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001960
; _ftoa (printf.c:403)
      0x80001964 beqz    s8, pc + 216           #; s8  = 6, not taken
      0x80001960 fcvt.d.w fs1, zero             #; ac1  = 0
; _ftoa (printf.c:0)
      0x80001968 li      a2, 0                  #; (wrb) a2  <-- 0
                                                #; (f:fpu) fs1  <-- 0.0
      0x8000196c addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:414)
      0x80001970 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
      0x80001974 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001978 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x8000197c lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80001980 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80001984 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001988 li      a7, 9                  #; (wrb) a7  <-- 9
      0x8000198c beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80001990 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x80001994 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001998 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x8000199c mul     a3, a0, a6             #; a0  = 0, a6  = 10
      0x800019a0 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x800019a4 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x800019a8 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
      0x800019ac sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
; _ftoa (printf.c:417)
      0x800019b0 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x800019b4 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x800019b8 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x800019bc addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x800019c0 li      a3, 30                 #; (wrb) a3  <-- 30
      0x800019c4 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x800019c8 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x800019cc seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x800019d0 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x800019d4 bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x800019d8 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
; _ftoa (printf.c:422)
      0x800019dc add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
      0x800019e0 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x800019e4 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x800019e8 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x800019ec li      a1, 31                 #; (wrb) a1  <-- 31
      0x800019f0 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x800019f4 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
      0x800019f8 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x800019fc bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001a04
      0x80001a04 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x80001a08 li      a1, 48                 #; (wrb) a1  <-- 48
      0x80001a0c auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000a0c
      0x80001a10 jalr    ra, ra, -1204          #; ra  = 0x80000a0c, (wrb) ra  <-- 0x80001a14, goto 0x80000558
; memset (memset.S:30)
      0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
; memset (memset.S:31)
      0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
; memset (memset.S:32)
      0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
; memset (memset.S:60)
      0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
; memset (memset.S:61)
      0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
; memset (memset.S:62)
      0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
; memset (memset.S:63)
      0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
; memset (memset.S:67)
      0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
; memset (memset.S:79)
      0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
; memset (memset.S:80)
      0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
; memset (memset.S:81)
      0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
; memset (memset.S:82)
      0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
; memset (memset.S:83)
      0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
; memset (memset.S:85)
      0x800005ec ret                            #; ra  = 0x80001a14, goto 0x80001a14
; _ftoa (printf.c:0)
      0x80001a14 li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x80001a18 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x80001a1c sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80001a20 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x80001a24 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80001a28 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a2c addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001a30 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a18
      0x80001a18 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x80001a1c sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80001a20 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x80001a24 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80001a28 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a2c addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001a30 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a18
      0x80001a18 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x80001a1c sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80001a20 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x80001a24 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80001a28 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a2c addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001a30 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a18
      0x80001a18 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x80001a1c sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80001a20 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x80001a24 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80001a28 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a2c addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001a30 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a18
      0x80001a18 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x80001a1c sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80001a20 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x80001a24 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80001a28 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001a2c addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001a30 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001a34 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x80001a38 j       pc + 0x28              #; goto 0x80001a60
      0x80001a60 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001a64 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001a68 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:427)
      0x80001a6c add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
      0x80001a70 li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001a74 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
      0x80001a78 j       pc + 0x8               #; goto 0x80001a80
; _ftoa (printf.c:0)
      0x80001a80 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001a84 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001a88 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001a8c li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001a94 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001a90 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
      0x80001a98 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001a9c li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001aa0 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
      0x80001aa4 li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001aa8 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001aac mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
      0x80001ab0 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001ab4 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001ab8 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001abc mul     a5, a0, a6             #; a0  = 0, a6  = 10
      0x80001ac0 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001ac4 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80001ac8 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001acc add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
; _ftoa (printf.c:434)
      0x80001ad0 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001ad4 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
; _ftoa (printf.c:0)
      0x80001ad8 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001adc mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001ae0 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80001ae4 j       pc + 0x8               #; goto 0x80001aec
; _ftoa (printf.c:440)
      0x80001aec andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001af0 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001af4 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001b60
; _ftoa (printf.c:0)
      0x80001b60 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001b64 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80001b68 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001b80
; _ftoa (printf.c:453)
      0x80001b80 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001b84 bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001b88 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001b8c beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001bb8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001bb8 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001bbc sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80001bc0 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001bc4 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001bc8 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001bcc mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001bd0 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001bfc
; _ftoa (printf.c:0)
      0x80001bfc srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c00 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x80001c04 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c08 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
      0x80001c0c lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
                                                #; (lsu) a0  <-- 48
      0x80001c10 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x80001c14 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
      0x80001c18 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c1c mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80001c20 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c24 jalr    s7                     #; s7  = 0x8000153c, (wrb) ra  <-- 0x80001c28, goto 0x8000153c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000153c beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001540 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001548 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000154c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000354c
      0x80001550 addi    a3, a3, -1384          #; a3  = 0x8000354c, (wrb) a3  <-- 0x80002fe4
      0x80001554 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fe4, (wrb) a1  <-- 0x80002fe4
      0x80001558 lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 8
      0x8000155c addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x80001560 sw      a5, 0(a1)              #; a1  = 0x80002fe4, 9 ~~> Word[0x80002fe4]
      0x80001564 add     a4, a1, a4             #; a1  = 0x80002fe4, a4  = 8, (wrb) a4  <-- 0x80002fec
      0x80001568 sb      a0, 72(a4)             #; a4  = 0x80002fec, 48 ~~> Byte[0x80003034]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 9
      0x80001570 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x80001574 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x80001578 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x8000157c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001580 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001584 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015e4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015e4 ret                            #; ra  = 0x80001c28, goto 0x80001c28
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c28 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x80001c2c mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c30 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001c08
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c08 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
      0x80001c0c lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
      0x80001c10 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001c14 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80001c18 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c1c mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001c20 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c24 jalr    s7                     #; s7  = 0x8000153c, (wrb) ra  <-- 0x80001c28, goto 0x8000153c
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000153c beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001540 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001548 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000154c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000354c
      0x80001550 addi    a3, a3, -1384          #; a3  = 0x8000354c, (wrb) a3  <-- 0x80002fe4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001554 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fe4, (wrb) a1  <-- 0x80002fe4
      0x80001558 lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 9
      0x8000155c addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x80001560 sw      a5, 0(a1)              #; a1  = 0x80002fe4, 10 ~~> Word[0x80002fe4]
      0x80001564 add     a4, a1, a4             #; a1  = 0x80002fe4, a4  = 9, (wrb) a4  <-- 0x80002fed
      0x80001568 sb      a0, 72(a4)             #; a4  = 0x80002fed, 46 ~~> Byte[0x80003035]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 10
      0x80001570 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x80001574 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x80001578 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x8000157c snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x80001580 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001584 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015e4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015e4 ret                            #; ra  = 0x80001c28, goto 0x80001c28
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c28 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001c2c mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c30 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001c08
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c08 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
      0x80001c0c lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
      0x80001c10 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001c14 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001c18 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c1c mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001c20 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c24 jalr    s7                     #; s7  = 0x8000153c, (wrb) ra  <-- 0x80001c28, goto 0x8000153c
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000153c beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001540 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001548 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000154c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000354c
      0x80001550 addi    a3, a3, -1384          #; a3  = 0x8000354c, (wrb) a3  <-- 0x80002fe4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001554 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fe4, (wrb) a1  <-- 0x80002fe4
      0x80001558 lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 10
      0x8000155c addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x80001560 sw      a5, 0(a1)              #; a1  = 0x80002fe4, 11 ~~> Word[0x80002fe4]
      0x80001564 add     a4, a1, a4             #; a1  = 0x80002fe4, a4  = 10, (wrb) a4  <-- 0x80002fee
      0x80001568 sb      a0, 72(a4)             #; a4  = 0x80002fee, 48 ~~> Byte[0x80003036]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 11
      0x80001570 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x80001574 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x80001578 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x8000157c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001580 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001584 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015e4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015e4 ret                            #; ra  = 0x80001c28, goto 0x80001c28
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c28 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001c2c mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c30 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001c08
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c08 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
      0x80001c0c lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
      0x80001c10 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001c14 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001c18 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c1c mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001c20 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c24 jalr    s7                     #; s7  = 0x8000153c, (wrb) ra  <-- 0x80001c28, goto 0x8000153c
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000153c beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001540 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001548 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000154c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000354c
      0x80001550 addi    a3, a3, -1384          #; a3  = 0x8000354c, (wrb) a3  <-- 0x80002fe4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001554 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fe4, (wrb) a1  <-- 0x80002fe4
      0x80001558 lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 11
      0x8000155c addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x80001560 sw      a5, 0(a1)              #; a1  = 0x80002fe4, 12 ~~> Word[0x80002fe4]
      0x80001564 add     a4, a1, a4             #; a1  = 0x80002fe4, a4  = 11, (wrb) a4  <-- 0x80002fef
      0x80001568 sb      a0, 72(a4)             #; a4  = 0x80002fef, 48 ~~> Byte[0x80003037]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 12
      0x80001570 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x80001574 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x80001578 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x8000157c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001580 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001584 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015e4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015e4 ret                            #; ra  = 0x80001c28, goto 0x80001c28
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c28 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001c2c mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c30 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001c08
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c08 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
      0x80001c0c lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
      0x80001c10 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001c14 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001c18 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c1c mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001c20 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c24 jalr    s7                     #; s7  = 0x8000153c, (wrb) ra  <-- 0x80001c28, goto 0x8000153c
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000153c beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001540 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001548 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000154c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000354c
      0x80001550 addi    a3, a3, -1384          #; a3  = 0x8000354c, (wrb) a3  <-- 0x80002fe4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001554 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fe4, (wrb) a1  <-- 0x80002fe4
      0x80001558 lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 12
      0x8000155c addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x80001560 sw      a5, 0(a1)              #; a1  = 0x80002fe4, 13 ~~> Word[0x80002fe4]
      0x80001564 add     a4, a1, a4             #; a1  = 0x80002fe4, a4  = 12, (wrb) a4  <-- 0x80002ff0
      0x80001568 sb      a0, 72(a4)             #; a4  = 0x80002ff0, 48 ~~> Byte[0x80003038]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 13
      0x80001570 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x80001574 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x80001578 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x8000157c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001580 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001584 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015e4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015e4 ret                            #; ra  = 0x80001c28, goto 0x80001c28
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c28 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001c2c mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c30 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001c08
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c08 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
      0x80001c0c lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
      0x80001c10 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001c14 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001c18 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c1c mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001c20 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c24 jalr    s7                     #; s7  = 0x8000153c, (wrb) ra  <-- 0x80001c28, goto 0x8000153c
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000153c beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001540 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001548 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000154c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000354c
      0x80001550 addi    a3, a3, -1384          #; a3  = 0x8000354c, (wrb) a3  <-- 0x80002fe4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001554 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fe4, (wrb) a1  <-- 0x80002fe4
      0x80001558 lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 13
      0x8000155c addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x80001560 sw      a5, 0(a1)              #; a1  = 0x80002fe4, 14 ~~> Word[0x80002fe4]
      0x80001564 add     a4, a1, a4             #; a1  = 0x80002fe4, a4  = 13, (wrb) a4  <-- 0x80002ff1
      0x80001568 sb      a0, 72(a4)             #; a4  = 0x80002ff1, 48 ~~> Byte[0x80003039]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 14
      0x80001570 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x80001574 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x80001578 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x8000157c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001580 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001584 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015e4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015e4 ret                            #; ra  = 0x80001c28, goto 0x80001c28
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c28 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001c2c mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c30 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001c08
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c08 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
      0x80001c0c lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
      0x80001c10 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001c14 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001c18 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c1c mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001c20 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c24 jalr    s7                     #; s7  = 0x8000153c, (wrb) ra  <-- 0x80001c28, goto 0x8000153c
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000153c beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001540 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001548 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000154c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000354c
      0x80001550 addi    a3, a3, -1384          #; a3  = 0x8000354c, (wrb) a3  <-- 0x80002fe4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001554 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fe4, (wrb) a1  <-- 0x80002fe4
      0x80001558 lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 14
      0x8000155c addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x80001560 sw      a5, 0(a1)              #; a1  = 0x80002fe4, 15 ~~> Word[0x80002fe4]
      0x80001564 add     a4, a1, a4             #; a1  = 0x80002fe4, a4  = 14, (wrb) a4  <-- 0x80002ff2
      0x80001568 sb      a0, 72(a4)             #; a4  = 0x80002ff2, 48 ~~> Byte[0x8000303a]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 15
      0x80001570 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x80001574 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x80001578 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x8000157c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001580 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001584 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015e4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015e4 ret                            #; ra  = 0x80001c28, goto 0x80001c28
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c28 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001c2c mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c30 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001c08
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c08 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
      0x80001c0c lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
      0x80001c10 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001c14 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001c18 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c1c mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001c20 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c24 jalr    s7                     #; s7  = 0x8000153c, (wrb) ra  <-- 0x80001c28, goto 0x8000153c
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000153c beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001540 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001548 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000154c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000354c
      0x80001550 addi    a3, a3, -1384          #; a3  = 0x8000354c, (wrb) a3  <-- 0x80002fe4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001554 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fe4, (wrb) a1  <-- 0x80002fe4
      0x80001558 lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 15
      0x8000155c addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x80001560 sw      a5, 0(a1)              #; a1  = 0x80002fe4, 16 ~~> Word[0x80002fe4]
      0x80001564 add     a4, a1, a4             #; a1  = 0x80002fe4, a4  = 15, (wrb) a4  <-- 0x80002ff3
      0x80001568 sb      a0, 72(a4)             #; a4  = 0x80002ff3, 48 ~~> Byte[0x8000303b]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 16
      0x80001570 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x80001574 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x80001578 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x8000157c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001580 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001584 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015e4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015e4 ret                            #; ra  = 0x80001c28, goto 0x80001c28
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c28 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001c2c mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c30 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001c34 j       pc + 0x8               #; goto 0x80001c3c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c3c sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x80001c40 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80001c44 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001c48 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001c4c or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001c50 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001c80
; _ftoa (printf.c:0)
      0x80001c80 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x80001c84 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80001c88 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
      0x80001c8c fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
                                                #; (f:lsu) fs1  <-- 0.0
      0x80001c94 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
      0x80001c90 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68]
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) s10 <-- 0x80002c2e
      0x80001c98 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 8
      0x80001c9c lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 16
      0x80001ca0 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x80001ca4 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x80001ca8 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- -1
      0x80001cac lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0x0011ff17
      0x80001cb0 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0x0011ff30
      0x80001cb4 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x8000153c
      0x80001cb8 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 8
      0x80001cbc lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0
      0x80001cc0 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
      0x80001cc4 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80000c6c
      0x80001cc8 ret                            #; ra  = 0x80000c6c, goto 0x80000c6c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c6c j       pc + 0x7c0             #; goto 0x8000142c
      0x8000142c mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x80001430 li      s6, 37                 #; (wrb) s6  <-- 37
      0x80001434 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80001438 addi    s0, s10, 1             #; s10 = 0x80002c2e, (wrb) s0  <-- 0x80002c2f
      0x8000143c j       pc - 0xa74             #; goto 0x800009c8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009c8 addi    s10, s0, 2             #; s0  = 0x80002c2f, (wrb) s10 <-- 0x80002c31
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009cc mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x800009d0 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009d4 lbu     a0, 0(s0)              #; s0  = 0x80002c2f, a0  <~~ Byte[0x80002c2f]
                                                #; (lsu) a0  <-- 10
      0x800009d8 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x800009dc beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009e0 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x800009e4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800009e8 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x800009ec mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800009f0 jalr    s2                     #; s2  = 0x8000153c, (wrb) ra  <-- 0x800009f4, goto 0x8000153c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000153c beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001540 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001548 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000154c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000354c
      0x80001550 addi    a3, a3, -1384          #; a3  = 0x8000354c, (wrb) a3  <-- 0x80002fe4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001554 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fe4, (wrb) a1  <-- 0x80002fe4
      0x80001558 lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 16
      0x8000155c addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x80001560 sw      a5, 0(a1)              #; a1  = 0x80002fe4, 17 ~~> Word[0x80002fe4]
      0x80001564 add     a4, a1, a4             #; a1  = 0x80002fe4, a4  = 16, (wrb) a4  <-- 0x80002ff4
      0x80001568 sb      a0, 72(a4)             #; a4  = 0x80002ff4, 10 ~~> Byte[0x8000303c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fe4, a4  <~~ Word[0x80002fe4]
                                                #; (lsu) a4  <-- 17
      0x80001570 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x80001574 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x80001578 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x8000157c snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x80001580 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x80001584 bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001588 add     a0, a3, a2             #; a3  = 0x80002fe4, a2  = 0, (wrb) a0  <-- 0x80002fe4
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000158c addi    a2, a0, 72             #; a0  = 0x80002fe4, (wrb) a2  <-- 0x8000302c
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001590 sw      zero, 12(a0)           #; a0  = 0x80002fe4, 0 ~~> Word[0x80002ff0]
      0x80001594 li      a3, 64                 #; (wrb) a3  <-- 64
      0x80001598 sw      a3, 8(a0)              #; a0  = 0x80002fe4, 64 ~~> Word[0x80002fec]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000159c sw      zero, 20(a0)           #; a0  = 0x80002fe4, 0 ~~> Word[0x80002ff8]
      0x800015a0 li      a3, 1                  #; (wrb) a3  <-- 1
      0x800015a4 sw      a3, 16(a0)             #; a0  = 0x80002fe4, 1 ~~> Word[0x80002ff4]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a8 sw      zero, 28(a0)           #; a0  = 0x80002fe4, 0 ~~> Word[0x80003000]
      0x800015ac sw      a2, 24(a0)             #; a0  = 0x80002fe4, 0x8000302c ~~> Word[0x80002ffc]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b0 lw      a2, 0(a1)              #; a1  = 0x80002fe4, a2  <~~ Word[0x80002fe4]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b4 addi    a3, a0, 8              #; a0  = 0x80002fe4, (wrb) a3  <-- 0x80002fec
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b8 sw      zero, 36(a0)           #; a0  = 0x80002fe4, 0 ~~> Word[0x80003008]
                                                #; (lsu) a2  <-- 17
      0x800015bc sw      a2, 32(a0)             #; a0  = 0x80002fe4, 17 ~~> Word[0x80003004]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015c0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800035c0
      0x800015c4 addi    a0, a0, -1856          #; a0  = 0x800035c0, (wrb) a0  <-- 0x80002e80
      0x800015c8 sw      a3, 0(a0)              #; a0  = 0x80002e80, 0x80002fec ~~> Word[0x80002e80]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015cc auipc   a0, 0x2                #; (wrb) a0  <-- 0x800035cc
      0x800015d0 addi    a0, a0, -1804          #; a0  = 0x800035cc, (wrb) a0  <-- 0x80002ec0
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015d4 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
                                                #; (lsu) a2  <-- 0
      0x800015d8 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015d4
      0x800015d4 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
                                                #; (lsu) a2  <-- 1
      0x800015d8 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015dc sw      zero, 0(a0)            #; a0  = 0x80002ec0, 0 ~~> Word[0x80002ec0]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015e0 sw      zero, 0(a1)            #; a1  = 0x80002fe4, 0 ~~> Word[0x80002fe4]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015e4 ret                            #; ra  = 0x800009f4, goto 0x800009f4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800009f4 addi    s0, s0, 1              #; s0  = 0x80002c2f, (wrb) s0  <-- 0x80002c30
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800009f8 addi    s10, s10, 1            #; s10 = 0x80002c31, (wrb) s10 <-- 0x80002c32
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009fc mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a00 lbu     a0, 0(s0)              #; s0  = 0x80002c30, a0  <~~ Byte[0x80002c30]
                                                #; (lsu) a0  <-- 0
      0x80000a04 bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000a08 j       pc + 0xad8             #; goto 0x800014e0
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x800014e0 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x800014e4 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x800014ec
      0x800014ec li      a0, 0                  #; (wrb) a0  <-- 0
      0x800014f0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800014f4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800014f8 jalr    s2                     #; s2  = 0x8000153c, (wrb) ra  <-- 0x800014fc, goto 0x8000153c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000153c beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800015e4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015e4 ret                            #; ra  = 0x800014fc, goto 0x800014fc
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x800014fc mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x80001500 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
                                                #; (lsu) s11 <-- 0
      0x80001504 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
                                                #; (lsu) s10 <-- 0
      0x80001508 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
                                                #; (lsu) s9  <-- 0
      0x8000150c lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
                                                #; (lsu) s8  <-- 0
      0x80001510 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
                                                #; (lsu) s7  <-- 0
      0x80001514 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
                                                #; (lsu) s6  <-- 0
      0x80001518 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
                                                #; (lsu) s5  <-- 0
      0x8000151c lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
                                                #; (lsu) s4  <-- 0
      0x80001520 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
                                                #; (lsu) s3  <-- 0
      0x80001524 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
                                                #; (lsu) s2  <-- 0
      0x80001528 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
                                                #; (lsu) s1  <-- 0x403f68f5
      0x8000152c lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
                                                #; (lsu) s0  <-- 0x2f1a9fbe
      0x80001530 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
      0x80001534 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
                                                #; (lsu) ra  <-- 0x80000938
      0x80001538 ret                            #; ra  = 0x80000938, goto 0x80000938
; printf_ (printf.c:869)
      0x80000938 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
      0x8000093c addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x800008c0
      0x80000940 ret                            #; ra  = 0x800008c0, goto 0x800008c0
; main (test_sp.c:0)
      0x800008c0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028c0
      0x800008c4 addi    a0, a0, 1648           #; a0  = 0x800028c0, (wrb) a0  <-- 0x80002f30
      0x800008c8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f30]
; main (test_sp.c:36)
      0x800008d4 lw      s1, 20(sp)             #; sp  = 0x0011ff40, s1  <~~ Word[0x0011ff54]
                                                #; (f:lsu) ft0  <-- 0.0001
; main (test_sp.c:35)
      0x800008cc flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0
                                                #; (lsu) s1  <-- 0
; main (test_sp.c:36)
      0x800008d8 lw      s0, 24(sp)             #; sp  = 0x0011ff40, s0  <~~ Word[0x0011ff58], (acc) s0  <-- 0x01812403
      0x800008d0 fld     fs0, 8(sp)             #; fs0  <~~ Doub[0x0011ff48]
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) s0  <-- 0
      0x800008dc lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
      0x800008e0 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x800029a0
      0x800008e4 ret                            #; ra  = 0x800029a0, goto 0x800029a0
; ?? (start.S:184)
      0x800029a0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x800029a4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029a4
      0x800029a8 jalr    ra, ra, 524            #; ra  = 0x800029a4, (wrb) ra  <-- 0x800029ac, goto 0x80002bb0
; ?? (start_snitch.S:33)
      0x80002bb0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002bb4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800029ac ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002bb8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bb8
      0x80002bbc jalr    ra, ra, -1268          #; ra  = 0x80002bb8, (wrb) ra  <-- 0x80002bc0, goto 0x800026c4
; _snrt_barrier_reg_ptr (team.c:80)
      0x800026c4 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800026c8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800026cc lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800026d0 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800026d4 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x800026d8 ret                            #; ra  = 0x80002bc0, goto 0x80002bc0
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002bc0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002bc4 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002bc8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002bcc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x800029ac
; ?? (start_snitch.S:40)
      0x80002bd0 ret                            #; ra  = 0x800029ac, goto 0x800029ac
; ?? (start.S:195)
      0x800029ac mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x800029b0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029b0
      0x800029b4 jalr    ra, ra, 556            #; ra  = 0x800029b0, (wrb) ra  <-- 0x800029b8, goto 0x80002bdc
; ?? (start_snitch.S:15)
      0x80002bdc addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80002be0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80002be4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x800029b8 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80002be8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002be8
      0x80002bec jalr    ra, ra, -1348          #; ra  = 0x80002be8, (wrb) ra  <-- 0x80002bf0, goto 0x800026a4
; snrt_global_core_idx (team.c:32)
      0x800026a4 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800026a8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800026ac lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800026b0 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800026b4 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x800026b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x800026bc sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x800026c0 ret                            #; ra  = 0x80002bf0, goto 0x80002bf0
; ?? (start_snitch.S:20)
      0x80002bf0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x80002bf4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80002bf8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x80002bfc bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x800029b8
; ?? (start_snitch.S:28)
      0x80002c00 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x80002c04 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x80002c08 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002c08
      0x80002c0c addi    t1, t1, 632            #; t1  = 0x80002c08, (wrb) t1  <-- 0x80002e80
; ?? (start_snitch.S:31)
      0x80002c10 sw      t0, 0(t1)              #; t1  = 0x80002e80, 1 ~~> Word[0x80002e80]
; ?? (start_snitch.S:32)
      0x80002c14 ret                            #; ra  = 0x800029b8, goto 0x800029b8
; ?? (start.S:198)
      0x800029b8 wfi                            #; 
                        tion 0 @ (12, 5563):
                          137
                          185
                            5
                           33
                      11.8029
                       0.2341
                       0.0714
                          1.0
                          1.0
                            0
                       1.2903
                       7.0606
                       0.0180
                       0.0112
                         0.62
                         5552
                       0.2522
