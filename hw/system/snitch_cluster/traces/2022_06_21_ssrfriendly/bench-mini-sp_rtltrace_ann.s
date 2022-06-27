; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x80002860
      0x00001014 jalr    t0                     #; t0  = 0x80002860, (wrb) ra  <-- 4120, goto 0x80002860
; ?? (start.S:20)
      0x80002860 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003860
; ?? (start.S:21)
      0x80002864 addi    gp, gp, -280           #; gp  = 0x80003860, (wrb) gp  <-- 0x80003748
; ?? (start.S:28)
      0x80002868 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002868
      0x8000286c jalr    ra, ra, 964            #; ra  = 0x80002868, (wrb) ra  <-- 0x80002870, goto 0x80002c2c
; ?? (start_snitch.S:16)
      0x80002c2c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80002c30 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80002c34 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80002c38 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x80002c3c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80002c40 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80002c44 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80002c48 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x80002c4c mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80002c50 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80002c54 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80002c58 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x80002c5c ret                            #; ra  = 0x80002870, goto 0x80002870
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x80002870 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x80002874 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x80002878 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002878
      0x8000287c jalr    ra, ra, 1036           #; ra  = 0x80002878, (wrb) ra  <-- 0x80002880, goto 0x80002c84
; ?? (start_snitch.S:48)
      0x80002c84 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80002c88 ret                            #; ra  = 0x80002880, goto 0x80002880
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x80002880 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x80002884 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x80002888 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x8000288c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x80002890 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x80002894 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002894
      0x80002898 addi    t0, t0, 1988           #; t0  = 0x80002894, (wrb) t0  <-- 0x80003058
; ?? (start.S:49)
      0x8000289c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000289c
      0x800028a0 addi    t1, t1, 1984           #; t1  = 0x8000289c, (wrb) t1  <-- 0x8000305c
; ?? (start.S:50)
      0x800028a4 bge     t0, t1, pc + 16        #; t0  = 0x80003058, t1  = 0x8000305c, not taken
; ?? (start.S:51)
      0x800028a8 sw      zero, 0(t0)            #; t0  = 0x80003058, 0 ~~> Word[0x80003058]
; ?? (start.S:52)
      0x800028ac addi    t0, t0, 4              #; t0  = 0x80003058, (wrb) t0  <-- 0x8000305c
; ?? (start.S:53)
      0x800028b0 blt     t0, t1, pc - 8         #; t0  = 0x8000305c, t1  = 0x8000305c, not taken
; ?? (start.S:58)
      0x800028b4 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x800028b8 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x800028bc beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x800028c0 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x800028c4 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x800028c8 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x800028cc fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x800028d0 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x800028d4 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x800028d8 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x800028dc fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x800028e0 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x800028e4 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x800028e8 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x800028ec fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x800028f0 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x800028f4 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x800028f8 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x800028fc fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x80002900 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x80002904 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x80002908 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x8000290c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x80002910 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x80002914 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x80002918 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x8000291c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x80002920 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x80002924 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x80002928 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x8000292c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x80002930 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x80002934 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x80002938 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x8000293c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x80002940 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x80002944 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x80002948 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002948
      0x8000294c lw      t0, 900(t0)            #; t0  = 0x80002948, t0  <~~ Word[0x80002ccc]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x80002950 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x80002954 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x80002958 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002958
      0x8000295c lw      t2, 880(t2)            #; t2  = 0x80002958, t2  <~~ Word[0x80002cc8]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x80002960 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x80002964 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x80002968 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x8000296c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x80002970 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x80002974 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x80002978 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x8000297c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x80002980 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002980
      0x80002984 addi    t0, t0, 1480           #; t0  = 0x80002980, (wrb) t0  <-- 0x80002f48
; ?? (start.S:125)
      0x80002988 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002988
      0x8000298c addi    t1, t1, 1472           #; t1  = 0x80002988, (wrb) t1  <-- 0x80002f48
; ?? (start.S:126)
      0x80002990 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002990
      0x80002994 addi    t2, t2, 1464           #; t2  = 0x80002990, (wrb) t2  <-- 0x80002f48
; ?? (start.S:127)
      0x80002998 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002998
      0x8000299c addi    t3, t3, 1472           #; t3  = 0x80002998, (wrb) t3  <-- 0x80002f58
; ?? (start.S:128)
      0x800029a0 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002f48, (wrb) sp  <-- 0x80122eb8
; ?? (start.S:129)
      0x800029a4 sub     sp, sp, t1             #; sp  = 0x80122eb8, t1  = 0x80002f48, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x800029a8 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002f48, (wrb) sp  <-- 0x80122eb8
; ?? (start.S:131)
      0x800029ac sub     sp, sp, t3             #; sp  = 0x80122eb8, t3  = 0x80002f58, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x800029b0 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x800029b4 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x800029b8 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x800029bc mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x800029c0 bge     t0, t1, pc + 24        #; t0  = 0x80002f48, t1  = 0x80002f48, taken, goto 0x800029d8
; ?? (start.S:147)
      0x800029d8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800029d8
      0x800029dc addi    t0, t0, 1392           #; t0  = 0x800029d8, (wrb) t0  <-- 0x80002f48
; ?? (start.S:148)
      0x800029e0 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800029e0
      0x800029e4 addi    t1, t1, 1400           #; t1  = 0x800029e0, (wrb) t1  <-- 0x80002f58
; ?? (start.S:149)
      0x800029e8 bge     t0, t1, pc + 20        #; t0  = 0x80002f48, t1  = 0x80002f58, not taken
; ?? (start.S:150)
      0x800029ec sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x800029f0 addi    t0, t0, 4              #; t0  = 0x80002f48, (wrb) t0  <-- 0x80002f4c
; ?? (start.S:152)
      0x800029f4 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x800029f8 blt     t0, t2, pc - 12        #; t0  = 0x80002f4c, t2  = 0x80002f48, not taken
; ?? (start.S:158)
      0x800029fc addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x80002a00 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x80002a04 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x80002a08 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x80002a0c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x80002a10 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x80002a14 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a14
      0x80002a18 jalr    ra, ra, -1056          #; ra  = 0x80002a14, (wrb) ra  <-- 0x80002a1c, goto 0x800025f4
; _snrt_init_team (start.c:49)
      0x800025f4 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x800025f8 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x800025fc lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x80002600 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x80002604 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x80002608 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x8000260c lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x80002610 mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x80002614 mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x80002618 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x8000261c csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x80002620 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x80002624 divu    a0, a0, t0             #; a0  = 0, t0  = 8
                                                #; (acc) a6  <-- 0x00a7a823
; _snrt_init_team (start.c:54)
      0x80002628 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x8000262c sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x80002630 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x80002634 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x80002638 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x8000263c lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x80002640 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x80002644 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x80002648 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x8000264c lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x80002650 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x80002654 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x80002658 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x8000265c sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x80002660 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x80002664 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x80002668 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x8000266c lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x80002670 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x80002674 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x80002678 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x8000267c sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x80002680 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x80002684 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x80002688 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x8000268c add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x80002690 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x80002694 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x80002698 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x8000269c add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x800026a0 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x800026a4 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x800026a8 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x800026ac sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x800026b0 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x800026b4 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800026b8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800026bc sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x800026c0 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800026c4 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x800026c8 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x800026cc sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x800026d0 remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x800026d4 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x800026d8 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
                                                #; (acc) tp  <-- 0x00a5a223
      0x800026dc sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x800026e0 li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x800026e4 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x800026e8 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800036e8
      0x800026ec addi    a1, a1, -1676          #; a1  = 0x800036e8, (wrb) a1  <-- 0x8000305c
      0x800026f0 add     a0, a0, a1             #; a0  = 0, a1  = 0x8000305c, (wrb) a0  <-- 0x8000305c
      0x800026f4 sw      zero, 0(a0)            #; a0  = 0x8000305c, 0 ~~> Word[0x8000305c]
; _snrt_init_team (start.c:86)
      0x800026f8 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x800026fc sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x80002700 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x80002704 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x80002708 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x8000270c sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x80002710 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x80002714 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x80002718 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x8000271c sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x80002720 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x80002724 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x80002728 lw      a0, 0(a1)              #; a1  = 0x8000305c, a0  <~~ Word[0x8000305c]
                                                #; (lsu) a0  <-- 0
      0x8000272c addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x80002730 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x80002734 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x80002738 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x8000273c sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x80002740 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002744 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002748 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x8000274c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002750 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002754 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x80002758 ret                            #; ra  = 0x80002a1c, goto 0x80002a1c
; ?? (start.S:165)
      0x80002a1c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x80002a20 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x80002a24 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x80002a28 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x80002a2c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x80002a30 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x80002a34 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a34
      0x80002a38 addi    t0, t0, 60             #; t0  = 0x80002a34, (wrb) t0  <-- 0x80002a70
; ?? (start.S:175)
      0x80002a3c csrw    mtvec, t0              #; t0  = 0x80002a70, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x80002a40 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a40
      0x80002a44 jalr    ra, ra, 544            #; ra  = 0x80002a40, (wrb) ra  <-- 0x80002a48, goto 0x80002c60
; ?? (start_snitch.S:33)
      0x80002c60 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002c64 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002a48 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002c68 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c68
      0x80002c6c jalr    ra, ra, -1260          #; ra  = 0x80002c68, (wrb) ra  <-- 0x80002c70, goto 0x8000277c
; _snrt_barrier_reg_ptr (team.c:80)
      0x8000277c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002780 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002784 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002788 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000278c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002790 ret                            #; ra  = 0x80002c70, goto 0x80002c70
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002c70 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002c74 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002c78 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002c7c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002a48
; ?? (start_snitch.S:40)
      0x80002c80 ret                            #; ra  = 0x80002a48, goto 0x80002a48
; ?? (start.S:183)
      0x80002a48 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000a48
      0x80002a4c jalr    ra, ra, -696           #; ra  = 0x80000a48, (wrb) ra  <-- 0x80002a50, goto 0x80000790
; main (bench_sp.c:33)
      0x80000790 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_sp.c:34)
      0x80000794 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002a50 ~~> Word[0x0011ff5c]
      0x80000798 sw      s0, 24(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff58]
      0x8000079c sw      s1, 20(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff54]
      0x800007a0 sw      s2, 16(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff50]
      0x800007a8 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800007ac add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800007a4 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
      0x800007b0 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
; main (bench_sp.c:0)
      0x800007b4 li      a0, 0                  #; (wrb) a0  <-- 0
                                                #; (lsu) a1  <-- 0
; main (bench_sp.c:34)
      0x800007b8 bnez    a1, pc + 228           #; a1  = 0, not taken
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (bench_sp.c:38)
      0x800007bc lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800007c0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800007c4 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800007c8 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in main (bench_sp.c:38)
      0x800007cc lw      s0, 88(a0)             #; a0  = 0x0011ff70, s0  <~~ Word[0x0011ffc8]
                                                #; (lsu) s0  <-- 0x00100000
      0x800007d0 lw      a1, 80(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
                                                #; (lsu) a1  <-- 0x00100000
      0x800007d4 lw      a3, 84(a0)             #; a0  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
      0x800007d8 addi    a2, s0, 80             #; s0  = 0x00100000, (wrb) a2  <-- 0x00100050
                                                #; (lsu) a3  <-- 0x0001df30
      0x800007dc add     a1, a3, a1             #; a3  = 0x0001df30, a1  = 0x00100000, (wrb) a1  <-- 0x0011df30
      0x800007e0 bgeu    a1, a2, pc + 24        #; a1  = 0x0011df30, a2  = 0x00100050, taken, goto 0x800007f8
; snrt_l1alloc (alloc.c:34)
;  in main (bench_sp.c:38)
      0x800007f8 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
      0x800007fc mv      s2, s0                 #; s0  = 0x00100000, (wrb) s2  <-- 0x00100000
; snrt_l1alloc (alloc.c:25)
;  in main (bench_sp.c:39)
      0x80000800 addi    a3, s0, 160            #; s0  = 0x00100000, (wrb) a3  <-- 0x001000a0
      0x80000804 mv      s0, a2                 #; a2  = 0x00100050, (wrb) s0  <-- 0x00100050
      0x80000808 bgeu    a1, a3, pc - 24        #; a1  = 0x0011df30, a3  = 0x001000a0, taken, goto 0x800007f0
; snrt_l1alloc (alloc.c:34)
;  in main (bench_sp.c:39)
      0x800007f0 sw      a3, 88(a0)             #; a0  = 0x0011ff70, 0x001000a0 ~~> Word[0x0011ffc8]
      0x800007f4 j       pc + 0x1c              #; goto 0x80000810
; main (bench_sp.c:41)
      0x80000810 mv      a0, s2                 #; s2  = 0x00100000, (wrb) a0  <-- 0x00100000
      0x80000814 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000814
      0x80000818 jalr    ra, ra, -480           #; ra  = 0x80000814, (wrb) ra  <-- 0x8000081c, goto 0x80000634
; init_data (bench_sp.c:28)
      0x80000634 srli    a1, a0, 20             #; a0  = 0x00100000, (wrb) a1  <-- 1
      0x80000638 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
      0x8000063c lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
      0x80000640 addi    a2, a2, -71            #; a2  = 0x00120000, (wrb) a2  <-- 0x0011ffb9
      0x80000644 sltu    a2, a0, a2             #; a0  = 0x00100000, a2  = 0x0011ffb9, (wrb) a2  <-- 1
      0x80000648 and     a1, a1, a2             #; a1  = 1, a2  = 1, (wrb) a1  <-- 1
      0x8000064c beqz    a1, pc + 204           #; a1  = 1, not taken
; init_data (bench_sp.c:0)
      0x80000650 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000654 li      a2, 9                  #; (wrb) a2  <-- 9
; init_data (bench_sp.c:28)
      0x80000658 li      a3, 64                 #; (wrb) a3  <-- 64
      0x8000065c li      a4, 192                #; (wrb) a4  <-- 192
      0x80000660 scfgw   a2, a3                 #; a2  = 9, a3  = 64
      0x80000664 scfgw   a1, a4                 #; a1  = 8, a4  = 192
      0x80000668 li      a1, 32                 #; (wrb) a1  <-- 32
      0x8000066c scfgw   zero, a1               #; a1  = 32, (acc) ra  <-- 0x00b020ab
      0x80000670 scfgwi  a0, 896                #; a0  = 0x00100000
; init_data (bench_sp.c:0)
      0x80000678 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003678
      0x80000674 csrrsi  a0, ssr, 1             #; 
      0x8000067c addi    a0, a0, -1824          #; a0  = 0x80003678, (wrb) a0  <-- 0x80002f58
      0x80000680 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f58]
      0x80000684 fcvt.d.w ft4, zero             #; ac1  = 0
                                                #; (f:fpu) ft4  <-- 0.0
; init_data (bench_sp.c:29)
      0x80000688 fsgnj.d ft0, ft4, ft4          #; ft4  = 0.0, ft4  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
                                                #; (f:lsu) ft3  <-- 1.0
; init_data (bench_sp.c:0)
      0x80000690 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003690
      0x8000068c fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
      0x80000694 addi    a0, a0, -1840          #; a0  = 0x80003690, (wrb) a0  <-- 0x80002f60
                                                #; (f:fpu) ft0  <-- 1.0
      0x8000069c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000369c
      0x80000698 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f60]
      0x800006a0 addi    a0, a0, -1844          #; a0  = 0x8000369c, (wrb) a0  <-- 0x80002f68
                                                #; (f:lsu) ft3  <-- 2.0
      0x800006a4 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002f68]
; init_data (bench_sp.c:29)
      0x800006a8 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:0)
      0x800006b0 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036b0
                                                #; (f:lsu) ft4  <-- 3.0
      0x800006b4 addi    a0, a0, -1856          #; a0  = 0x800036b0, (wrb) a0  <-- 0x80002f70
      0x800006ac fsgnj.d ft0, ft4, ft4          #; ft4  = 3.0, ft4  = 3.0
                                                #; (f:fpu) ft0  <-- 3.0
      0x800006bc auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036bc
      0x800006b8 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f70]
      0x800006c0 addi    a0, a0, -1860          #; a0  = 0x800036bc, (wrb) a0  <-- 0x80002f78
                                                #; (f:lsu) ft3  <-- 4.0
      0x800006c4 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002f78]
; init_data (bench_sp.c:29)
      0x800006c8 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:0)
      0x800006d0 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036d0
                                                #; (f:lsu) ft4  <-- 5.0
      0x800006d4 addi    a0, a0, -1872          #; a0  = 0x800036d0, (wrb) a0  <-- 0x80002f80
      0x800006cc fsgnj.d ft0, ft4, ft4          #; ft4  = 5.0, ft4  = 5.0
                                                #; (f:fpu) ft0  <-- 5.0
      0x800006dc auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036dc
      0x800006d8 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f80]
      0x800006e0 addi    a0, a0, -1876          #; a0  = 0x800036dc, (wrb) a0  <-- 0x80002f88
                                                #; (f:lsu) ft3  <-- 6.0
      0x800006e4 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002f88]
; init_data (bench_sp.c:29)
      0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:0)
      0x800006f0 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036f0
                                                #; (f:lsu) ft4  <-- 7.0
      0x800006f4 addi    a0, a0, -1888          #; a0  = 0x800036f0, (wrb) a0  <-- 0x80002f90
      0x800006ec fsgnj.d ft0, ft4, ft4          #; ft4  = 7.0, ft4  = 7.0
                                                #; (f:fpu) ft0  <-- 7.0
      0x800006fc auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036fc
      0x800006f8 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f90]
      0x80000700 addi    a0, a0, -1892          #; a0  = 0x800036fc, (wrb) a0  <-- 0x80002f98
                                                #; (f:lsu) ft3  <-- 8.0
      0x80000704 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002f98]
; init_data (bench_sp.c:29)
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
                                                #; (f:fpu) ft0  <-- 8.0
                                                #; (f:lsu) ft4  <-- 9.0
; init_data (bench_sp.c:31)
      0x80000714 ret                            #; ra  = 0x8000081c, goto 0x8000081c
      0x8000070c fsgnj.d ft0, ft4, ft4          #; ft4  = 9.0, ft4  = 9.0
; init_data (bench_sp.c:0)
      0x80000710 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 9.0
; main (bench_sp.c:42)
      0x8000081c mv      a0, s0                 #; s0  = 0x00100050, (wrb) a0  <-- 0x00100050
      0x80000820 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000820
      0x80000824 jalr    ra, ra, -492           #; ra  = 0x80000820, (wrb) ra  <-- 0x80000828, goto 0x80000634
; init_data (bench_sp.c:28)
      0x80000634 srli    a1, a0, 20             #; a0  = 0x00100050, (wrb) a1  <-- 1
      0x80000638 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
      0x8000063c lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
      0x80000640 addi    a2, a2, -71            #; a2  = 0x00120000, (wrb) a2  <-- 0x0011ffb9
      0x80000644 sltu    a2, a0, a2             #; a0  = 0x00100050, a2  = 0x0011ffb9, (wrb) a2  <-- 1
      0x80000648 and     a1, a1, a2             #; a1  = 1, a2  = 1, (wrb) a1  <-- 1
      0x8000064c beqz    a1, pc + 204           #; a1  = 1, not taken
; init_data (bench_sp.c:0)
      0x80000650 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000654 li      a2, 9                  #; (wrb) a2  <-- 9
; init_data (bench_sp.c:28)
      0x80000658 li      a3, 64                 #; (wrb) a3  <-- 64
      0x8000065c li      a4, 192                #; (wrb) a4  <-- 192
      0x80000660 scfgw   a2, a3                 #; a2  = 9, a3  = 64
      0x80000664 scfgw   a1, a4                 #; a1  = 8, a4  = 192
      0x80000668 li      a1, 32                 #; (wrb) a1  <-- 32
      0x8000066c scfgw   zero, a1               #; a1  = 32, (acc) ra  <-- 0x00b020ab
      0x80000670 scfgwi  a0, 896                #; a0  = 0x00100050
; init_data (bench_sp.c:0)
      0x80000678 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003678
      0x80000674 csrrsi  a0, ssr, 1             #; 
      0x8000067c addi    a0, a0, -1824          #; a0  = 0x80003678, (wrb) a0  <-- 0x80002f58
                                                #; (acc) gp  <-- 0x00053187
                                                #; (acc) tp  <-- 0xd2000253
      0x80000680 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f58]
      0x80000684 fcvt.d.w ft4, zero             #; ac1  = 0
                                                #; (f:fpu) ft4  <-- 0.0
      0x80000690 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003690
      0x80000688 fsgnj.d ft0, ft4, ft4          #; ft4  = 0.0, ft4  = 0.0
      0x80000694 addi    a0, a0, -1840          #; a0  = 0x80003690, (wrb) a0  <-- 0x80002f60
                                                #; (f:fpu) ft0  <-- 0.0
      0x8000069c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000369c
      0x800006a0 addi    a0, a0, -1844          #; a0  = 0x8000369c, (wrb) a0  <-- 0x80002f68
                                                #; (f:lsu) ft3  <-- 1.0
; init_data (bench_sp.c:29)
      0x8000068c fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
; init_data (bench_sp.c:0)
      0x800006b0 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036b0
      0x80000698 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f60], (f:fpu) ft0  <-- 1.0
      0x800006b4 addi    a0, a0, -1856          #; a0  = 0x800036b0, (wrb) a0  <-- 0x80002f70
      0x800006a4 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002f68]
      0x800006bc auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036bc
      0x800006c0 addi    a0, a0, -1860          #; a0  = 0x800036bc, (wrb) a0  <-- 0x80002f78
      0x800006d0 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036d0
      0x800006d4 addi    a0, a0, -1872          #; a0  = 0x800036d0, (wrb) a0  <-- 0x80002f80
                                                #; (f:lsu) ft3  <-- 2.0
; init_data (bench_sp.c:29)
      0x800006a8 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0, (f:lsu) ft4  <-- 3.0
; init_data (bench_sp.c:0)
      0x800006dc auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036dc
      0x800006ac fsgnj.d ft0, ft4, ft4          #; ft4  = 3.0, ft4  = 3.0, (f:fpu) ft0  <-- 2.0
      0x800006e0 addi    a0, a0, -1876          #; a0  = 0x800036dc, (wrb) a0  <-- 0x80002f88
      0x800006b8 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f70], (f:fpu) ft0  <-- 3.0
      0x800006c4 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002f78]
      0x800006f0 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036f0
      0x800006f4 addi    a0, a0, -1888          #; a0  = 0x800036f0, (wrb) a0  <-- 0x80002f90
      0x800006fc auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036fc
      0x80000700 addi    a0, a0, -1892          #; a0  = 0x800036fc, (wrb) a0  <-- 0x80002f98
                                                #; (f:lsu) ft3  <-- 4.0
; init_data (bench_sp.c:29)
      0x800006c8 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0, (f:lsu) ft4  <-- 5.0
      0x800006cc fsgnj.d ft0, ft4, ft4          #; ft4  = 5.0, ft4  = 5.0, (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:0)
      0x800006d8 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f80], (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:31)
      0x80000714 ret                            #; ra  = 0x80000828, goto 0x80000828
      0x800006e4 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002f88]
; benchmark_get_cycle (benchmark.c:8)
;  in main (bench_sp.c:44)
      0x80000828 csrr    s1, mcycle             #; mcycle = 1936, (wrb) s1  <-- 1936
; main (bench_sp.c:46)
      0x8000082c li      a2, 10                 #; (wrb) a2  <-- 10
      0x80000830 mv      a0, s2                 #; s2  = 0x00100000, (wrb) a0  <-- 0x00100000
      0x80000834 mv      a1, s0                 #; s0  = 0x00100050, (wrb) a1  <-- 0x00100050
                                                #; (f:lsu) ft3  <-- 6.0
      0x80000838 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000838
      0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0, (f:lsu) ft4  <-- 7.0
      0x8000083c jalr    ra, ra, 128            #; ra  = 0x80000838, (wrb) ra  <-- 0x80000840, goto 0x800008b8
      0x800006ec fsgnj.d ft0, ft4, ft4          #; ft4  = 7.0, ft4  = 7.0, (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:0)
      0x800006f8 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f90], (f:fpu) ft0  <-- 7.0
      0x80000704 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002f98]
                                                #; (f:lsu) ft3  <-- 8.0
; scalarprod (scalarprod.c:4)
      0x800008b8 li      a3, 1                  #; (wrb) a3  <-- 1
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0, (f:lsu) ft4  <-- 9.0
; scalarprod (scalarprod.c:6)
      0x800008bc blt     a2, a3, pc + 48        #; a2  = 10, a3  = 1, not taken
      0x8000070c fsgnj.d ft0, ft4, ft4          #; ft4  = 9.0, ft4  = 9.0, (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:0)
      0x80000710 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 9.0
; scalarprod (scalarprod.c:6)
      0x800008c0 addi    a6, a2, -1             #; a2  = 10, (wrb) a6  <-- 9
      0x800008c4 slli    a4, a6, 3              #; a6  = 9, (wrb) a4  <-- 72
      0x800008c8 add     a3, a4, a0             #; a4  = 72, a0  = 0x00100000, (wrb) a3  <-- 0x00100048
      0x800008cc add     t1, a4, a1             #; a4  = 72, a1  = 0x00100050, (wrb) t1  <-- 0x00100098
      0x800008d0 srli    a5, a0, 20             #; a0  = 0x00100000, (wrb) a5  <-- 1
      0x800008d4 snez    t0, a5                 #; a5  = 1, (wrb) t0  <-- 1
      0x800008d8 lui     a5, 0x120              #; (wrb) a5  <-- 0x00120000
      0x800008dc addi    a7, a5, 1              #; a5  = 0x00120000, (wrb) a7  <-- 0x00120001
      0x800008e0 bgeu    a3, a4, pc + 20        #; a3  = 0x00100048, a4  = 72, taken, goto 0x800008f4
; scalarprod (scalarprod.c:0)
      0x800008f4 sltu    a3, a3, a7             #; a3  = 0x00100048, a7  = 0x00120001, (wrb) a3  <-- 1
; scalarprod (scalarprod.c:6)
      0x800008f8 and     t0, t0, a3             #; t0  = 1, a3  = 1, (wrb) t0  <-- 1
      0x800008fc srli    a3, a1, 20             #; a1  = 0x00100050, (wrb) a3  <-- 1
      0x80000900 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
      0x80000904 bgeu    t1, a4, pc + 12        #; t1  = 0x00100098, a4  = 72, taken, goto 0x80000910
; scalarprod (scalarprod.c:0)
      0x80000910 sltu    a4, t1, a7             #; t1  = 0x00100098, a7  = 0x00120001, (wrb) a4  <-- 1
; scalarprod (scalarprod.c:6)
      0x80000914 and     a3, a3, a4             #; a3  = 1, a4  = 1, (wrb) a3  <-- 1
      0x80000918 and     a3, t0, a3             #; t0  = 1, a3  = 1, (wrb) a3  <-- 1
      0x8000091c beqz    a3, pc + 96            #; a3  = 1, not taken
; scalarprod (scalarprod.c:0)
      0x80000920 li      a3, 8                  #; (wrb) a3  <-- 8
; scalarprod (scalarprod.c:6)
      0x80000924 li      a4, 64                 #; (wrb) a4  <-- 64
      0x80000928 li      a5, 192                #; (wrb) a5  <-- 192
      0x8000092c scfgw   a6, a4                 #; a6  = 9, a4  = 64
      0x80000930 scfgw   a3, a5                 #; a3  = 8, a5  = 192
      0x80000934 li      a4, 32                 #; (wrb) a4  <-- 32
      0x80000938 scfgw   zero, a4               #; a4  = 32
      0x8000093c scfgwi  a0, 768                #; a0  = 0x00100000
      0x80000940 li      a0, 1                  #; (wrb) a0  <-- 1
      0x80000944 addi    a4, a0, 64             #; a0  = 1, (wrb) a4  <-- 65
      0x80000948 addi    a5, a0, 192            #; a0  = 1, (wrb) a5  <-- 193
      0x8000094c scfgw   a6, a4                 #; a6  = 9, a4  = 65
      0x80000950 scfgw   a3, a5                 #; a3  = 8, a5  = 193
      0x80000954 addi    a0, a0, 32             #; a0  = 1, (wrb) a0  <-- 33
      0x80000958 scfgw   zero, a0               #; a0  = 33
      0x8000095c scfgwi  a1, 769                #; a1  = 0x00100050
      0x80000960 csrrsi  a0, ssr, 1             #; 
      0x80000968 addi    a2, a2, -1             #; a2  = 10, (wrb) a2  <-- 9
      0x80000964 fcvt.d.w fa0, zero             #; ac1  = 0
                                                #; (f:fpu) fa0  <-- 0.0
; scalarprod (scalarprod.c:7)
      0x8000096c fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 0.0, ft0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fa0  <-- 0.0
; scalarprod (scalarprod.c:6)
      0x80000970 bnez    a2, pc - 8             #; a2  = 9, taken, goto 0x80000968
      0x80000968 addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
      0x80000970 bnez    a2, pc - 8             #; a2  = 8, taken, goto 0x80000968
      0x80000968 addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
      0x8000096c fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 1.0, ft0  = 1.0, fa0  = 0.0
      0x80000970 bnez    a2, pc - 8             #; a2  = 7, taken, goto 0x80000968
      0x80000968 addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1.0
; scalarprod (scalarprod.c:7)
      0x8000096c fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 2.0, ft0  = 2.0, fa0  = 1.0
; scalarprod (scalarprod.c:6)
      0x80000970 bnez    a2, pc - 8             #; a2  = 6, taken, goto 0x80000968
      0x80000968 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) fa0  <-- 5.0
      0x80000970 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000968
      0x8000096c fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 3.0, ft0  = 3.0, fa0  = 5.0
      0x80000968 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80000970 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000968
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 14.0
; scalarprod (scalarprod.c:6)
      0x80000968 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x8000096c fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 4.0, ft0  = 4.0, fa0  = 14.0
      0x80000970 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000968
      0x80000968 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 30.0
; scalarprod (scalarprod.c:7)
      0x8000096c fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 5.0, ft0  = 5.0, fa0  = 30.0
; scalarprod (scalarprod.c:6)
      0x80000970 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000968
      0x80000968 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) fa0  <-- 55.0
      0x80000970 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000968
      0x8000096c fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 6.0, ft0  = 6.0, fa0  = 55.0
      0x80000968 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000970 bnez    a2, pc - 8             #; a2  = 0, not taken
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 91.0
; scalarprod (scalarprod.c:7)
      0x8000096c fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 7.0, ft0  = 7.0, fa0  = 91.0
; scalarprod (scalarprod.c:0)
      0x80000978 j       pc + 0x24              #; goto 0x8000099c
                                                #; (f:fpu) fa0  <-- 140.0
; scalarprod (scalarprod.c:7)
      0x8000096c fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 8.0, ft0  = 8.0, fa0  = 140.0
                                                #; (f:fpu) fa0  <-- 204.0
      0x8000096c fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 9.0, ft0  = 9.0, fa0  = 204.0
; scalarprod (scalarprod.c:0)
      0x80000974 csrrci  a0, ssr, 1             #; 
                                                #; (f:fpu) fa0  <-- 285.0
; scalarprod (scalarprod.c:9)
      0x8000099c ret                            #; ra  = 0x80000840, goto 0x80000840
; benchmark_get_cycle (benchmark.c:8)
;  in main (bench_sp.c:48)
      0x80000844 csrr    a0, mcycle             #; mcycle = 2143, (wrb) a0  <-- 2143
; main (bench_sp.c:50)
      0x80000848 sub     a1, a0, s1             #; a0  = 2143, s1  = 1936, (wrb) a1  <-- 207
      0x80000840 fsgnj.d fs0, fa0, fa0          #; fa0  = 285.0, fa0  = 285.0
      0x8000084c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000284c
                                                #; (f:fpu) fs0  <-- 285.0
      0x80000850 addi    a0, a0, 1161           #; a0  = 0x8000284c, (wrb) a0  <-- 0x80002cd5
      0x80000854 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000854
      0x80000858 jalr    ra, ra, 332            #; ra  = 0x80000854, (wrb) ra  <-- 0x8000085c, goto 0x800009a0
; printf_ (printf.c:863)
      0x800009a0 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x800009a4 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x8000085c ~~> Word[0x0011ff1c]
      0x800009a8 mv      t0, a0                 #; a0  = 0x80002cd5, (wrb) t0  <-- 0x80002cd5
      0x800009ac sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0x00120001 ~~> Word[0x0011ff3c]
      0x800009b0 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 9 ~~> Word[0x0011ff38]
      0x800009b4 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 193 ~~> Word[0x0011ff34]
      0x800009b8 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 65 ~~> Word[0x0011ff30]
      0x800009bc sw      a3, 28(sp)             #; sp  = 0x0011ff10, 8 ~~> Word[0x0011ff2c]
      0x800009c0 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
      0x800009c4 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 207 ~~> Word[0x0011ff24]
      0x800009c8 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
; printf_ (printf.c:865)
      0x800009cc sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
; printf_ (printf.c:867)
      0x800009d0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800019d0
      0x800009d4 addi    a0, a0, -988           #; a0  = 0x800019d0, (wrb) a0  <-- 0x800015f4
      0x800009d8 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
      0x800009dc li      a2, -1                 #; (wrb) a2  <-- -1
      0x800009e0 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
      0x800009e4 mv      a3, t0                 #; t0  = 0x80002cd5, (wrb) a3  <-- 0x80002cd5
      0x800009e8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800009e8
      0x800009ec jalr    ra, ra, 20             #; ra  = 0x800009e8, (wrb) ra  <-- 0x800009f0, goto 0x800009fc
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x800009fc addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
      0x80000a00 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x800009f0 ~~> Word[0x0011ff0c]
      0x80000a04 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0x00100050 ~~> Word[0x0011ff08]
      0x80000a08 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 1936 ~~> Word[0x0011ff04]
      0x80000a0c sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0x00100000 ~~> Word[0x0011ff00]
      0x80000a10 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
      0x80000a14 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
      0x80000a18 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
      0x80000a1c sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
      0x80000a20 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
      0x80000a24 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
      0x80000a28 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
      0x80000a2c sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
      0x80000a30 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
      0x80000a34 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
      0x80000a38 mv      s0, a3                 #; a3  = 0x80002cd5, (wrb) s0  <-- 0x80002cd5
      0x80000a3c mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x80000a40 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x80000a44 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a48 mv      s2, a0                 #; a0  = 0x800015f4, (wrb) s2  <-- 0x800015f4
      0x80000a4c j       pc + 0xc               #; goto 0x80000a58
      0x80000a58 li      s8, 0                  #; (wrb) s8  <-- 0
      0x80000a5c li      s6, 37                 #; (wrb) s6  <-- 37
      0x80000a60 li      s11, 16                #; (wrb) s11 <-- 16
      0x80000a64 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000a68 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000a6c addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000a70 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
      0x80000a74 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000a78 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000a7c sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a80 addi    s10, s0, 2             #; s0  = 0x80002cd5, (wrb) s10 <-- 0x80002cd7
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a84 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000a88 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a8c lbu     a0, 0(s0)              #; s0  = 0x80002cd5, a0  <~~ Byte[0x80002cd5]
                                                #; (lsu) a0  <-- 99
      0x80000a90 beqz    a0, pc + 2824          #; a0  = 99, not taken
      0x80000a94 beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a98 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000aa0 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 99, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 0
      0x80001614 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 1 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 0, (wrb) a4  <-- 0x8000305c
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000305c, 99 ~~> Byte[0x800030a4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 1
      0x80001628 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x8000162c snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
      0x80001634 snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000aac addi    s0, s0, 1              #; s0  = 0x80002cd5, (wrb) s0  <-- 0x80002cd6
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002cd7, (wrb) s10 <-- 0x80002cd8
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ab4 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002cd6, a0  <~~ Byte[0x80002cd6]
                                                #; (lsu) a0  <-- 121
      0x80000abc bnez    a0, pc - 40            #; a0  = 121, taken, goto 0x80000a94
      0x80000a94 beq     a0, s6, pc + 48        #; a0  = 121, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a98 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000aa0 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 121, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 1
      0x80001614 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 2 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 1, (wrb) a4  <-- 0x8000305d
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000305d, 121 ~~> Byte[0x800030a5]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 2
      0x80001628 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x8000162c snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 121, (wrb) a0  <-- 111
      0x80001634 snez    a0, a0                 #; a0  = 111, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000aac addi    s0, s0, 1              #; s0  = 0x80002cd6, (wrb) s0  <-- 0x80002cd7
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002cd8, (wrb) s10 <-- 0x80002cd9
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ab4 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002cd7, a0  <~~ Byte[0x80002cd7]
                                                #; (lsu) a0  <-- 99
      0x80000abc bnez    a0, pc - 40            #; a0  = 99, taken, goto 0x80000a94
      0x80000a94 beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a98 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000aa0 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 99, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 2
      0x80001614 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 3 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 2, (wrb) a4  <-- 0x8000305e
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000305e, 99 ~~> Byte[0x800030a6]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 3
      0x80001628 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x8000162c snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
      0x80001634 snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000aac addi    s0, s0, 1              #; s0  = 0x80002cd7, (wrb) s0  <-- 0x80002cd8
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002cd9, (wrb) s10 <-- 0x80002cda
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ab4 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002cd8, a0  <~~ Byte[0x80002cd8]
                                                #; (lsu) a0  <-- 108
      0x80000abc bnez    a0, pc - 40            #; a0  = 108, taken, goto 0x80000a94
      0x80000a94 beq     a0, s6, pc + 48        #; a0  = 108, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a98 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000aa0 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 108, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 3
      0x80001614 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 4 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 3, (wrb) a4  <-- 0x8000305f
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000305f, 108 ~~> Byte[0x800030a7]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 4
      0x80001628 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x8000162c snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 108, (wrb) a0  <-- 98
      0x80001634 snez    a0, a0                 #; a0  = 98, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000aac addi    s0, s0, 1              #; s0  = 0x80002cd8, (wrb) s0  <-- 0x80002cd9
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002cda, (wrb) s10 <-- 0x80002cdb
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ab4 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002cd9, a0  <~~ Byte[0x80002cd9]
                                                #; (lsu) a0  <-- 101
      0x80000abc bnez    a0, pc - 40            #; a0  = 101, taken, goto 0x80000a94
      0x80000a94 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a98 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000aa0 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 4
      0x80001614 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 5 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 4, (wrb) a4  <-- 0x80003060
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003060, 101 ~~> Byte[0x800030a8]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 5
      0x80001628 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x8000162c snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x80001634 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000aac addi    s0, s0, 1              #; s0  = 0x80002cd9, (wrb) s0  <-- 0x80002cda
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002cdb, (wrb) s10 <-- 0x80002cdc
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ab4 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002cda, a0  <~~ Byte[0x80002cda]
                                                #; (lsu) a0  <-- 115
      0x80000abc bnez    a0, pc - 40            #; a0  = 115, taken, goto 0x80000a94
      0x80000a94 beq     a0, s6, pc + 48        #; a0  = 115, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a98 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000aa0 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 115, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 5
      0x80001614 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 6 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 5, (wrb) a4  <-- 0x80003061
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003061, 115 ~~> Byte[0x800030a9]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 6
      0x80001628 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x8000162c snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 115, (wrb) a0  <-- 105
      0x80001634 snez    a0, a0                 #; a0  = 105, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000aac addi    s0, s0, 1              #; s0  = 0x80002cda, (wrb) s0  <-- 0x80002cdb
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002cdc, (wrb) s10 <-- 0x80002cdd
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ab4 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002cdb, a0  <~~ Byte[0x80002cdb]
                                                #; (lsu) a0  <-- 32
      0x80000abc bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a94
      0x80000a94 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a98 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000aa0 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 6
      0x80001614 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 7 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 6, (wrb) a4  <-- 0x80003062
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003062, 32 ~~> Byte[0x800030aa]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 7
      0x80001628 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x8000162c snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001634 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000aac addi    s0, s0, 1              #; s0  = 0x80002cdb, (wrb) s0  <-- 0x80002cdc
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002cdd, (wrb) s10 <-- 0x80002cde
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ab4 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002cdc, a0  <~~ Byte[0x80002cdc]
                                                #; (lsu) a0  <-- 61
      0x80000abc bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000a94
      0x80000a94 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a98 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000aa0 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 7
      0x80001614 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 8 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 7, (wrb) a4  <-- 0x80003063
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003063, 61 ~~> Byte[0x800030ab]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 8
      0x80001628 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x8000162c snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x80001634 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000aac addi    s0, s0, 1              #; s0  = 0x80002cdc, (wrb) s0  <-- 0x80002cdd
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002cde, (wrb) s10 <-- 0x80002cdf
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ab4 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002cdd, a0  <~~ Byte[0x80002cdd]
                                                #; (lsu) a0  <-- 32
      0x80000abc bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a94
      0x80000a94 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a98 addi    s1, s9, 1              #; s9  = 8, (wrb) s1  <-- 9
      0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000aa0 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 8
      0x80001614 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 9 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 8, (wrb) a4  <-- 0x80003064
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003064, 32 ~~> Byte[0x800030ac]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 9
      0x80001628 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x8000162c snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001634 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000aac addi    s0, s0, 1              #; s0  = 0x80002cdd, (wrb) s0  <-- 0x80002cde
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002cdf, (wrb) s10 <-- 0x80002ce0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ab4 mv      s9, s1                 #; s1  = 9, (wrb) s9  <-- 9
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002cde, a0  <~~ Byte[0x80002cde]
                                                #; (lsu) a0  <-- 37
      0x80000abc bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000a94
      0x80000a94 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000ac4
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000ac4 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ac8 j       pc + 0x10              #; goto 0x80000ad8
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000ad8 lbu     a0, -1(s10)            #; s10 = 0x80002ce0, a0  <~~ Byte[0x80002cdf]
                                                #; (lsu) a0  <-- 102
      0x80000adc addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000ae0 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000b18
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000b18 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000b1c andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000b20 addi    a1, s10, -1            #; s10 = 0x80002ce0, (wrb) a1  <-- 0x80002cdf
      0x80000b24 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000b28 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000ba4
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000ba4 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000ba8 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000bf8
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bf8 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000bfc mv      s10, a1                #; a1  = 0x80002cdf, (wrb) s10 <-- 0x80002cdf
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000c00 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c04 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000c08 j       pc + 0xc               #; goto 0x80000c14
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000c14 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000c18 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000c1c slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000c20 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000c24 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000c28 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000c8c
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000c8c addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000c90 li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000c94 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c98 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000c9c auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002c9c
      0x80000ca0 addi    a2, a2, 196            #; a2  = 0x80002c9c, (wrb) a2  <-- 0x80002d60
      0x80000ca4 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002d60, (wrb) a1  <-- 0x80002e64
      0x80000ca8 lw      a2, 0(a1)              #; a1  = 0x80002e64, a2  <~~ Word[0x80002e64]
      0x80000cac li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000cb0 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000ce4
      0x80000cb4 jr      a2                     #; a2  = 0x80000ce4, goto 0x80000ce4
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80000ce4 li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000ce8 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000cf0
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000cf0 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
      0x80000cf4 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
      0x80000cfc addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
      0x80000cf8 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
                                                #; (f:lsu) fa0  <-- 0.0000000
      0x80000d00 mv      a0, s2                 #; s2  = 0x800015f4, (wrb) a0  <-- 0x800015f4
      0x80000d04 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000d08 mv      a2, s9                 #; s9  = 9, (wrb) a2  <-- 9
      0x80000d0c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000d10 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000d14 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000d18 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000d1c auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001d1c
      0x80000d20 jalr    ra, ra, -1656          #; ra  = 0x80001d1c, (wrb) ra  <-- 0x80000d24, goto 0x800016a4
; _ftoa (printf.c:340)
      0x800016a4 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
      0x800016a8 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000d24 ~~> Word[0x0011fe9c]
      0x800016ac sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
      0x800016b0 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 9 ~~> Word[0x0011fe94]
      0x800016b4 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x800015f4 ~~> Word[0x0011fe90]
      0x800016b8 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
      0x800016bc sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
      0x800016c0 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
      0x800016c4 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
      0x800016c8 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
      0x800016cc sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
      0x800016d0 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 9 ~~> Word[0x0011fe74]
      0x800016d4 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002cdf ~~> Word[0x0011fe70]
      0x800016d8 fsd     fs0, 56(sp)            #; 285.0 ~~> Doub[0x0011fe68]
      0x800016dc fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
      0x800016e4 auipc   s1, 0x2                #; (wrb) s1  <-- 0x800036e4
      0x800016e8 addi    s1, s1, -1844          #; s1  = 0x800036e4, (wrb) s1  <-- 0x80002fb0
      0x800016e0 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
      0x800016ec fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002fb0]
; _ftoa (printf.c:351)
      0x800016f4 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
; _ftoa (printf.c:0)
      0x800016f8 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x800016fc mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x800016f0 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0000000
      0x80001700 mv      s4, a2                 #; a2  = 9, (wrb) s4  <-- 9
      0x80001704 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
      0x80001708 mv      s7, a0                 #; a0  = 0x800015f4, (wrb) s7  <-- 0x800015f4
; _ftoa (printf.c:351)
      0x8000170c bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x800017fc
; _ftoa (printf.c:0)
      0x800017fc fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0000000, fa0  = 0.0000000
                                                #; (f:fpu) fs0  <-- 0.0000000
      0x80001800 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002800
      0x80001804 addi    a0, a0, 1976           #; a0  = 0x80002800, (wrb) a0  <-- 0x80002fb8
      0x80001808 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002fb8]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x8000180c fle.d   a0, fa0, ft0           #; fa0  = 0.0000000, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x80001810 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x8000182c
; _ftoa (printf.c:0)
      0x8000182c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000282c
      0x80001830 addi    a0, a0, 1940           #; a0  = 0x8000282c, (wrb) a0  <-- 0x80002fc0
      0x80001838 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002838
      0x8000183c addi    a0, a0, 1936           #; a0  = 0x80002838, (wrb) a0  <-- 0x80002fc8
      0x80001834 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002fc0]
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
      0x80001840 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002fc8]
; _ftoa (printf.c:358)
      0x80001844 fle.d   a0, fs0, ft0           #; fs0  = 0.0000000, ft0  = 1000000000.0000000
                                                #; (acc) a0  <-- 0x00b57533
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
      0x80001848 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0000000
                                                #; (acc) a0  <-- 0x00b57533
      0x8000184c and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80001850 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x8000194c
; _ftoa (printf.c:374)
      0x8000194c andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x80001950 li      s8, 6                  #; (wrb) s8  <-- 6
      0x80001954 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x8000195c
; _ftoa (printf.c:0)
      0x8000195c li      a0, 10                 #; (wrb) a0  <-- 10
; _ftoa (printf.c:378)
      0x80001964 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x8000199c
; _ftoa (printf.c:0)
      0x80001960 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0000000, fs0  = 0.0000000
                                                #; (f:fpu) fs2  <-- 0.0000000
      0x8000199c li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x800019a0 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x800019a4 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800029a4
      0x800019a8 addi    a1, a1, 1292           #; a1  = 0x800029a4, (wrb) a1  <-- 0x80002eb0
      0x800019ac add     a0, a0, a1             #; a0  = 48, a1  = 0x80002eb0, (wrb) a0  <-- 0x80002ee0
      0x800019b0 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002ee0]
; _ftoa (printf.c:383)
      0x800019b4 fcvt.w.d s1, fs2               #; fs2  = 0.0000000
; _ftoa (printf.c:384)
      0x800019b8 fcvt.d.w ft0, s1               #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800019bc fsub.d  ft0, fs2, ft0          #; fs2  = 0.0000000, ft0  = 0.0
                                                #; (f:lsu) ft1  <-- 1000000.0000000
                                                #; (f:fpu) ft0  <-- 0.0000000
; _ftoa (printf.c:0)
      0x800019c4 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800029c4
      0x800019c8 addi    a0, a0, 1548           #; a0  = 0x800029c4, (wrb) a0  <-- 0x80002fd0
      0x800019c0 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0000000
      0x800019cc fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002fd0], (f:fpu) ft2  <-- 0.0000000
; _ftoa (printf.c:385)
      0x800019d0 fcvt.wu.d a0, ft2              #; ft2  = 0.0000000
                                                #; (f:lsu) ft0  <-- 0.5
                                                #; (acc) gp  <-- 0xd21501d3
; _ftoa (printf.c:386)
      0x800019d4 fcvt.d.wu ft3, a0              #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
      0x800019d8 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0000000, ft3  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0000000
; _ftoa (printf.c:388)
      0x800019dc fle.d   a1, ft2, ft0           #; ft2  = 0.0000000, ft0  = 0.5
      0x800019e0 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001a00
; _ftoa (printf.c:396)
      0x80001a00 flt.d   a1, ft2, ft0           #; ft2  = 0.0000000, ft0  = 0.5
                                                #; (acc) s4  <-- 0x00059a63
      0x80001a04 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001a18
; _ftoa (printf.c:403)
      0x80001a1c beqz    s8, pc + 216           #; s8  = 6, not taken
      0x80001a18 fcvt.d.w fs1, zero             #; ac1  = 0
                                                #; (f:fpu) fs1  <-- 0.0
; _ftoa (printf.c:0)
      0x80001a20 li      a2, 0                  #; (wrb) a2  <-- 0
      0x80001a24 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:414)
      0x80001a28 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
      0x80001a2c li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001a30 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x80001a34 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80001a38 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80001a3c li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001a40 li      a7, 9                  #; (wrb) a7  <-- 9
      0x80001a44 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80001a48 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x80001a4c mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
      0x80001a50 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001a54 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001a58 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001a5c ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x80001a60 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
      0x80001a64 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
; _ftoa (printf.c:417)
      0x80001a68 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80001a6c bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x80001a70 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x80001a74 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80001a78 li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001a7c sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x80001a80 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x80001a84 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x80001a88 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x80001a8c bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x80001a90 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
; _ftoa (printf.c:422)
      0x80001a94 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
      0x80001a98 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x80001a9c add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x80001aa0 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x80001aa4 li      a1, 31                 #; (wrb) a1  <-- 31
      0x80001aa8 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x80001aac add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
      0x80001ab0 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x80001ab4 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001abc
      0x80001abc addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x80001ac0 li      a1, 48                 #; (wrb) a1  <-- 48
      0x80001ac4 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000ac4
      0x80001ac8 jalr    ra, ra, -1388          #; ra  = 0x80000ac4, (wrb) ra  <-- 0x80001acc, goto 0x80000558
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
      0x800005ec ret                            #; ra  = 0x80001acc, goto 0x80001acc
; _ftoa (printf.c:0)
      0x80001acc li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x80001ad0 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x80001ad4 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80001ad8 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x80001adc snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80001ae0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001ae4 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001ae8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ad0
      0x80001ad0 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x80001ad4 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80001ad8 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x80001adc snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80001ae0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001ae4 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001ae8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ad0
      0x80001ad0 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x80001ad4 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80001ad8 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x80001adc snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80001ae0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001ae4 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001ae8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ad0
      0x80001ad0 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x80001ad4 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80001ad8 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x80001adc snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80001ae0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001ae4 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001ae8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ad0
      0x80001ad0 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x80001ad4 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80001ad8 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x80001adc snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80001ae0 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001ae4 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001ae8 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001aec add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x80001af0 j       pc + 0x28              #; goto 0x80001b18
      0x80001b18 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001b1c addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001b20 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:427)
      0x80001b24 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
      0x80001b28 li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001b2c sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
      0x80001b30 j       pc + 0x8               #; goto 0x80001b38
; _ftoa (printf.c:0)
      0x80001b38 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001b3c mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001b40 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001b44 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001b4c lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001b48 flt.d   s9, fs0, fs1           #; fs0  = 0.0000000, fs1  = 0.0
      0x80001b50 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001b54 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001b58 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
      0x80001b5c li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001b60 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001b64 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001b68 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001b6c srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001b70 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001b74 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001b78 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001b7c addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80001b80 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001b84 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
; _ftoa (printf.c:434)
      0x80001b88 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001b8c sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
; _ftoa (printf.c:0)
      0x80001b90 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001b94 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001b98 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80001b9c j       pc + 0x8               #; goto 0x80001ba4
; _ftoa (printf.c:440)
      0x80001ba4 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001ba8 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001bac bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001c18
; _ftoa (printf.c:0)
      0x80001c18 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001c1c bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80001c20 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001c38
; _ftoa (printf.c:453)
      0x80001c38 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001c3c bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001c40 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001c44 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001c70
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001c70 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001c74 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80001c78 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001c7c or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001c80 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001c84 mv      s0, s4                 #; s4  = 9, (wrb) s0  <-- 9
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001c88 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001cb4
; _ftoa (printf.c:0)
      0x80001cb4 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001cb8 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x80001cbc addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
      0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
      0x80001cc8 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x80001ccc addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
                                                #; (lsu) a0  <-- 48
      0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001cd4 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 9
      0x80001614 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 10 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 9, (wrb) a4  <-- 0x80003065
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003065, 48 ~~> Byte[0x800030ad]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 10
      0x80001628 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x8000162c snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001634 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001ce0 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001ce4 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ce8 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001cc0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
      0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
      0x80001cc8 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001ccc addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001cd4 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 10
      0x80001614 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 11 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 10, (wrb) a4  <-- 0x80003066
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003066, 46 ~~> Byte[0x800030ae]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 11
      0x80001628 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x8000162c snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x80001634 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001ce0 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001ce4 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ce8 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001cc0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
      0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
      0x80001cc8 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001ccc addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001cd4 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 11
      0x80001614 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 12 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 11, (wrb) a4  <-- 0x80003067
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003067, 48 ~~> Byte[0x800030af]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 12
      0x80001628 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x8000162c snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001634 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001ce0 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001ce4 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ce8 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001cc0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
      0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
      0x80001cc8 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001ccc addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001cd4 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 12
      0x80001614 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 13 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 12, (wrb) a4  <-- 0x80003068
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003068, 48 ~~> Byte[0x800030b0]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 13
      0x80001628 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x8000162c snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001634 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001ce0 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001ce4 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ce8 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001cc0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
      0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
      0x80001cc8 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001ccc addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001cd4 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 13
      0x80001614 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 14 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 13, (wrb) a4  <-- 0x80003069
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003069, 48 ~~> Byte[0x800030b1]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 14
      0x80001628 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x8000162c snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001634 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001ce0 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001ce4 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ce8 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001cc0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
      0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
      0x80001cc8 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001ccc addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001cd4 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 14
      0x80001614 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 15 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 14, (wrb) a4  <-- 0x8000306a
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000306a, 48 ~~> Byte[0x800030b2]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 15
      0x80001628 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x8000162c snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001634 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001ce0 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001ce4 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ce8 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001cc0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
      0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
      0x80001cc8 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001ccc addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001cd4 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 15
      0x80001614 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 16 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 15, (wrb) a4  <-- 0x8000306b
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000306b, 48 ~~> Byte[0x800030b3]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 16
      0x80001628 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x8000162c snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001634 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001ce0 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001ce4 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ce8 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001cc0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
      0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
      0x80001cc8 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001ccc addi    s1, s0, 1              #; s0  = 16, (wrb) s1  <-- 17
      0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001cd4 mv      a2, s0                 #; s0  = 16, (wrb) a2  <-- 16
      0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 16
      0x80001614 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 17 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 16, (wrb) a4  <-- 0x8000306c
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000306c, 48 ~~> Byte[0x800030b4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 17
      0x80001628 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x8000162c snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001634 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001ce0 mv      s0, s1                 #; s1  = 17, (wrb) s0  <-- 17
      0x80001ce4 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ce8 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001cec j       pc + 0x8               #; goto 0x80001cf4
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001cf4 sub     a0, s1, s4             #; s1  = 17, s4  = 9, (wrb) a0  <-- 8
      0x80001cf8 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80001cfc xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001d00 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001d04 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001d08 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001d38
; _ftoa (printf.c:0)
      0x80001d38 mv      s0, s1                 #; s1  = 17, (wrb) s0  <-- 17
; _ftoa (printf.c:462)
      0x80001d3c mv      a0, s0                 #; s0  = 17, (wrb) a0  <-- 17
      0x80001d40 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
      0x80001d4c lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
      0x80001d44 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
      0x80001d48 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 285.0
                                                #; (lsu) s10 <-- 0x80002cdf
      0x80001d50 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 9
      0x80001d54 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 16
      0x80001d58 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x80001d5c lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x80001d60 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- -1
      0x80001d64 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0x0011ff17
      0x80001d68 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0x0011ff30
      0x80001d6c lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x800015f4
      0x80001d70 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 9
      0x80001d74 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0
      0x80001d78 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
      0x80001d7c addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80000d24
      0x80001d80 ret                            #; ra  = 0x80000d24, goto 0x80000d24
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000d24 j       pc + 0x7c0             #; goto 0x800014e4
      0x800014e4 mv      s8, a0                 #; a0  = 17, (wrb) s8  <-- 17
      0x800014e8 li      s6, 37                 #; (wrb) s6  <-- 37
      0x800014ec li      s7, 46                 #; (wrb) s7  <-- 46
      0x800014f0 addi    s0, s10, 1             #; s10 = 0x80002cdf, (wrb) s0  <-- 0x80002ce0
      0x800014f4 j       pc - 0xa74             #; goto 0x80000a80
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a80 addi    s10, s0, 2             #; s0  = 0x80002ce0, (wrb) s10 <-- 0x80002ce2
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a84 mv      s9, s8                 #; s8  = 17, (wrb) s9  <-- 17
      0x80000a88 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a8c lbu     a0, 0(s0)              #; s0  = 0x80002ce0, a0  <~~ Byte[0x80002ce0]
                                                #; (lsu) a0  <-- 10
      0x80000a90 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000a94 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a98 addi    s1, s9, 1              #; s9  = 17, (wrb) s1  <-- 18
      0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000aa0 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 17
      0x80001614 addi    a5, a4, 1              #; a4  = 17, (wrb) a5  <-- 18
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 18 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 17, (wrb) a4  <-- 0x8000306d
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000306d, 10 ~~> Byte[0x800030b5]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 18
      0x80001628 addi    a4, a4, -1020          #; a4  = 18, (wrb) a4  <-- -1002
      0x8000162c snez    a4, a4                 #; a4  = -1002, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x80001634 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x80001638 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x8000163c bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001640 add     a0, a3, a2             #; a3  = 0x8000305c, a2  = 0, (wrb) a0  <-- 0x8000305c
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001644 addi    a2, a0, 72             #; a0  = 0x8000305c, (wrb) a2  <-- 0x800030a4
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001648 sw      zero, 12(a0)           #; a0  = 0x8000305c, 0 ~~> Word[0x80003068]
      0x8000164c li      a3, 64                 #; (wrb) a3  <-- 64
      0x80001650 sw      a3, 8(a0)              #; a0  = 0x8000305c, 64 ~~> Word[0x80003064]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001654 sw      zero, 20(a0)           #; a0  = 0x8000305c, 0 ~~> Word[0x80003070]
      0x80001658 li      a3, 1                  #; (wrb) a3  <-- 1
      0x8000165c sw      a3, 16(a0)             #; a0  = 0x8000305c, 1 ~~> Word[0x8000306c]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001660 sw      zero, 28(a0)           #; a0  = 0x8000305c, 0 ~~> Word[0x80003078]
      0x80001664 sw      a2, 24(a0)             #; a0  = 0x8000305c, 0x800030a4 ~~> Word[0x80003074]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001668 lw      a2, 0(a1)              #; a1  = 0x8000305c, a2  <~~ Word[0x8000305c]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000166c addi    a3, a0, 8              #; a0  = 0x8000305c, (wrb) a3  <-- 0x80003064
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001670 sw      zero, 36(a0)           #; a0  = 0x8000305c, 0 ~~> Word[0x80003080]
                                                #; (lsu) a2  <-- 18
      0x80001674 sw      a2, 32(a0)             #; a0  = 0x8000305c, 18 ~~> Word[0x8000307c]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001678 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003678
      0x8000167c addi    a0, a0, -1912          #; a0  = 0x80003678, (wrb) a0  <-- 0x80002f00
      0x80001680 sw      a3, 0(a0)              #; a0  = 0x80002f00, 0x80003064 ~~> Word[0x80002f00]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001684 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003684
      0x80001688 addi    a0, a0, -1860          #; a0  = 0x80003684, (wrb) a0  <-- 0x80002f40
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000168c lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
                                                #; (lsu) a2  <-- 0
      0x80001690 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000168c
      0x8000168c lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
                                                #; (lsu) a2  <-- 0
      0x80001690 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000168c
      0x8000168c lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
                                                #; (lsu) a2  <-- 0
      0x80001690 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000168c
      0x8000168c lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
                                                #; (lsu) a2  <-- 0
      0x80001690 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000168c
      0x8000168c lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
                                                #; (lsu) a2  <-- 0
      0x80001690 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000168c
      0x8000168c lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
                                                #; (lsu) a2  <-- 0
      0x80001690 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000168c
      0x8000168c lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
                                                #; (lsu) a2  <-- 0
      0x80001690 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000168c
      0x8000168c lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
                                                #; (lsu) a2  <-- 1
      0x80001690 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001694 sw      zero, 0(a0)            #; a0  = 0x80002f40, 0 ~~> Word[0x80002f40]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001698 sw      zero, 0(a1)            #; a1  = 0x8000305c, 0 ~~> Word[0x8000305c]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000aac addi    s0, s0, 1              #; s0  = 0x80002ce0, (wrb) s0  <-- 0x80002ce1
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002ce2, (wrb) s10 <-- 0x80002ce3
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ab4 mv      s9, s1                 #; s1  = 18, (wrb) s9  <-- 18
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002ce1, a0  <~~ Byte[0x80002ce1]
                                                #; (lsu) a0  <-- 0
      0x80000abc bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000ac0 j       pc + 0xad8             #; goto 0x80001598
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x80001598 mv      a2, s9                 #; s9  = 18, (wrb) a2  <-- 18
      0x8000159c bltu    s9, s5, pc + 8         #; s9  = 18, s5  = -1, taken, goto 0x800015a4
      0x800015a4 li      a0, 0                  #; (wrb) a0  <-- 0
      0x800015a8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800015ac mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800015b0 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x800015b4, goto 0x800015f4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x800015b4, goto 0x800015b4
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x800015b4 mv      a0, s9                 #; s9  = 18, (wrb) a0  <-- 18
      0x800015b8 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
                                                #; (lsu) s11 <-- 0
      0x800015bc lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
                                                #; (lsu) s10 <-- 0
      0x800015c0 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
                                                #; (lsu) s9  <-- 0
      0x800015c4 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
                                                #; (lsu) s8  <-- 0
      0x800015c8 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
                                                #; (lsu) s7  <-- 0
      0x800015cc lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
                                                #; (lsu) s6  <-- 0
      0x800015d0 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
                                                #; (lsu) s5  <-- 0
      0x800015d4 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
                                                #; (lsu) s4  <-- 0
      0x800015d8 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
                                                #; (lsu) s3  <-- 0
      0x800015dc lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
                                                #; (lsu) s2  <-- 0x00100000
      0x800015e0 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
                                                #; (lsu) s1  <-- 1936
      0x800015e4 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
                                                #; (lsu) s0  <-- 0x00100050
      0x800015e8 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
      0x800015ec addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
                                                #; (lsu) ra  <-- 0x800009f0
      0x800015f0 ret                            #; ra  = 0x800009f0, goto 0x800009f0
; printf_ (printf.c:869)
      0x800009f0 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
      0x800009f4 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x8000085c
      0x800009f8 ret                            #; ra  = 0x8000085c, goto 0x8000085c
; main (bench_sp.c:0)
      0x8000085c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000285c
      0x80000860 addi    a0, a0, 1860           #; a0  = 0x8000285c, (wrb) a0  <-- 0x80002fa0
      0x80000864 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002fa0]
                                                #; (f:lsu) ft0  <-- 285.0
; main (bench_sp.c:57)
      0x80000874 lw      a2, 0(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff40]
      0x80000868 fadd.d  ft0, fs0, ft0          #; fs0  = 285.0, ft0  = 285.0
                                                #; (lsu) a2  <-- 0
                                                #; (f:fpu) ft0  <-- 570.0
      0x80000878 lw      a3, 4(sp)              #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff44]
      0x8000086c fsgnjx.d fs0, ft0, ft0         #; ft0  = 570.0, ft0  = 570.0
      0x8000087c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000287c
                                                #; (f:fpu) fs0  <-- 570.0
      0x80000870 fsd     fs0, 0(sp)             #; 570.0 ~~> Doub[0x0011ff40]
                                                #; (lsu) a3  <-- 0
      0x80000880 addi    a0, a0, 1126           #; a0  = 0x8000287c, (wrb) a0  <-- 0x80002ce2
      0x80000884 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000884
      0x80000888 jalr    ra, ra, 284            #; ra  = 0x80000884, (wrb) ra  <-- 0x8000088c, goto 0x800009a0
; printf_ (printf.c:863)
      0x800009a0 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x800009a4 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x8000088c ~~> Word[0x0011ff1c]
      0x800009a8 mv      t0, a0                 #; a0  = 0x80002ce2, (wrb) t0  <-- 0x80002ce2
      0x800009ac sw      a7, 44(sp)             #; sp  = 0x0011ff10, 9 ~~> Word[0x0011ff3c]
      0x800009b0 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 10 ~~> Word[0x0011ff38]
      0x800009b4 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 18 ~~> Word[0x0011ff34]
      0x800009b8 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff30]
      0x800009bc sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
      0x800009c0 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
      0x800009c4 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 0x0011ff17 ~~> Word[0x0011ff24]
      0x800009c8 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
; printf_ (printf.c:865)
      0x800009cc sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
; printf_ (printf.c:867)
      0x800009d0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800019d0
      0x800009d4 addi    a0, a0, -988           #; a0  = 0x800019d0, (wrb) a0  <-- 0x800015f4
      0x800009d8 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
      0x800009dc li      a2, -1                 #; (wrb) a2  <-- -1
      0x800009e0 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
      0x800009e4 mv      a3, t0                 #; t0  = 0x80002ce2, (wrb) a3  <-- 0x80002ce2
      0x800009e8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800009e8
      0x800009ec jalr    ra, ra, 20             #; ra  = 0x800009e8, (wrb) ra  <-- 0x800009f0, goto 0x800009fc
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x800009fc addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
      0x80000a00 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x800009f0 ~~> Word[0x0011ff0c]
      0x80000a04 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0x00100050 ~~> Word[0x0011ff08]
      0x80000a08 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 1936 ~~> Word[0x0011ff04]
      0x80000a0c sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0x00100000 ~~> Word[0x0011ff00]
      0x80000a10 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
      0x80000a14 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
      0x80000a18 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
      0x80000a1c sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
      0x80000a20 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
      0x80000a24 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
      0x80000a28 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
      0x80000a2c sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
      0x80000a30 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
      0x80000a34 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
      0x80000a38 mv      s0, a3                 #; a3  = 0x80002ce2, (wrb) s0  <-- 0x80002ce2
      0x80000a3c mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x80000a40 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x80000a44 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a48 mv      s2, a0                 #; a0  = 0x800015f4, (wrb) s2  <-- 0x800015f4
      0x80000a4c j       pc + 0xc               #; goto 0x80000a58
      0x80000a58 li      s8, 0                  #; (wrb) s8  <-- 0
      0x80000a5c li      s6, 37                 #; (wrb) s6  <-- 37
      0x80000a60 li      s11, 16                #; (wrb) s11 <-- 16
      0x80000a64 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000a68 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000a6c addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000a70 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
      0x80000a74 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000a78 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000a7c sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a80 addi    s10, s0, 2             #; s0  = 0x80002ce2, (wrb) s10 <-- 0x80002ce4
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a84 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000a88 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a8c lbu     a0, 0(s0)              #; s0  = 0x80002ce2, a0  <~~ Byte[0x80002ce2]
                                                #; (lsu) a0  <-- 101
      0x80000a90 beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x80000a94 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a98 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000aa0 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 0
      0x80001614 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 1 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 0, (wrb) a4  <-- 0x8000305c
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000305c, 101 ~~> Byte[0x800030a4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 1
      0x80001628 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x8000162c snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x80001634 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000aac addi    s0, s0, 1              #; s0  = 0x80002ce2, (wrb) s0  <-- 0x80002ce3
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002ce4, (wrb) s10 <-- 0x80002ce5
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ab4 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002ce3, a0  <~~ Byte[0x80002ce3]
                                                #; (lsu) a0  <-- 114
      0x80000abc bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a94
      0x80000a94 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a98 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000aa0 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 1
      0x80001614 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 2 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 1, (wrb) a4  <-- 0x8000305d
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000305d, 114 ~~> Byte[0x800030a5]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 2
      0x80001628 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x8000162c snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001634 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000aac addi    s0, s0, 1              #; s0  = 0x80002ce3, (wrb) s0  <-- 0x80002ce4
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002ce5, (wrb) s10 <-- 0x80002ce6
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ab4 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002ce4, a0  <~~ Byte[0x80002ce4]
                                                #; (lsu) a0  <-- 114
      0x80000abc bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a94
      0x80000a94 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a98 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000aa0 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 2
      0x80001614 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 3 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 2, (wrb) a4  <-- 0x8000305e
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000305e, 114 ~~> Byte[0x800030a6]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 3
      0x80001628 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x8000162c snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001634 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000aac addi    s0, s0, 1              #; s0  = 0x80002ce4, (wrb) s0  <-- 0x80002ce5
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002ce6, (wrb) s10 <-- 0x80002ce7
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ab4 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002ce5, a0  <~~ Byte[0x80002ce5]
                                                #; (lsu) a0  <-- 111
      0x80000abc bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000a94
      0x80000a94 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a98 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000aa0 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 3
      0x80001614 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 4 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 3, (wrb) a4  <-- 0x8000305f
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000305f, 111 ~~> Byte[0x800030a7]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 4
      0x80001628 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x8000162c snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x80001634 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000aac addi    s0, s0, 1              #; s0  = 0x80002ce5, (wrb) s0  <-- 0x80002ce6
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002ce7, (wrb) s10 <-- 0x80002ce8
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ab4 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002ce6, a0  <~~ Byte[0x80002ce6]
                                                #; (lsu) a0  <-- 114
      0x80000abc bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a94
      0x80000a94 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a98 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000aa0 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 4
      0x80001614 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 5 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 4, (wrb) a4  <-- 0x80003060
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003060, 114 ~~> Byte[0x800030a8]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 5
      0x80001628 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x8000162c snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001634 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000aac addi    s0, s0, 1              #; s0  = 0x80002ce6, (wrb) s0  <-- 0x80002ce7
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002ce8, (wrb) s10 <-- 0x80002ce9
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ab4 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002ce7, a0  <~~ Byte[0x80002ce7]
                                                #; (lsu) a0  <-- 32
      0x80000abc bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a94
      0x80000a94 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a98 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000aa0 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 5
      0x80001614 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 6 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 5, (wrb) a4  <-- 0x80003061
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003061, 32 ~~> Byte[0x800030a9]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 6
      0x80001628 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x8000162c snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001634 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000aac addi    s0, s0, 1              #; s0  = 0x80002ce7, (wrb) s0  <-- 0x80002ce8
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002ce9, (wrb) s10 <-- 0x80002cea
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ab4 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002ce8, a0  <~~ Byte[0x80002ce8]
                                                #; (lsu) a0  <-- 61
      0x80000abc bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000a94
      0x80000a94 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a98 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000aa0 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 6
      0x80001614 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 7 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 6, (wrb) a4  <-- 0x80003062
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003062, 61 ~~> Byte[0x800030aa]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 7
      0x80001628 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x8000162c snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x80001634 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000aac addi    s0, s0, 1              #; s0  = 0x80002ce8, (wrb) s0  <-- 0x80002ce9
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002cea, (wrb) s10 <-- 0x80002ceb
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ab4 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002ce9, a0  <~~ Byte[0x80002ce9]
                                                #; (lsu) a0  <-- 32
      0x80000abc bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a94
      0x80000a94 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a98 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000aa0 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 7
      0x80001614 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 8 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 7, (wrb) a4  <-- 0x80003063
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003063, 32 ~~> Byte[0x800030ab]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 8
      0x80001628 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x8000162c snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001634 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000aac addi    s0, s0, 1              #; s0  = 0x80002ce9, (wrb) s0  <-- 0x80002cea
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002ceb, (wrb) s10 <-- 0x80002cec
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ab4 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002cea, a0  <~~ Byte[0x80002cea]
                                                #; (lsu) a0  <-- 37
      0x80000abc bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000a94
      0x80000a94 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000ac4
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000ac4 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ac8 j       pc + 0x10              #; goto 0x80000ad8
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000ad8 lbu     a0, -1(s10)            #; s10 = 0x80002cec, a0  <~~ Byte[0x80002ceb]
                                                #; (lsu) a0  <-- 102
      0x80000adc addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000ae0 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000b18
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000b18 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000b1c andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000b20 addi    a1, s10, -1            #; s10 = 0x80002cec, (wrb) a1  <-- 0x80002ceb
      0x80000b24 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000b28 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000ba4
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000ba4 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000ba8 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000bf8
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bf8 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000bfc mv      s10, a1                #; a1  = 0x80002ceb, (wrb) s10 <-- 0x80002ceb
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000c00 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c04 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000c08 j       pc + 0xc               #; goto 0x80000c14
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000c14 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000c18 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000c1c slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000c20 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000c24 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000c28 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000c8c
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000c8c addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000c90 li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000c94 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c98 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000c9c auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002c9c
      0x80000ca0 addi    a2, a2, 196            #; a2  = 0x80002c9c, (wrb) a2  <-- 0x80002d60
      0x80000ca4 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002d60, (wrb) a1  <-- 0x80002e64
      0x80000ca8 lw      a2, 0(a1)              #; a1  = 0x80002e64, a2  <~~ Word[0x80002e64]
      0x80000cac li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000cb0 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000ce4
      0x80000cb4 jr      a2                     #; a2  = 0x80000ce4, goto 0x80000ce4
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80000ce4 li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000ce8 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000cf0
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000cf0 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
      0x80000cf4 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
      0x80000cfc addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
      0x80000cf8 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
                                                #; (f:lsu) fa0  <-- 0.0
      0x80000d00 mv      a0, s2                 #; s2  = 0x800015f4, (wrb) a0  <-- 0x800015f4
      0x80000d04 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000d08 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000d0c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000d10 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000d14 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000d18 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000d1c auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001d1c
      0x80000d20 jalr    ra, ra, -1656          #; ra  = 0x80001d1c, (wrb) ra  <-- 0x80000d24, goto 0x800016a4
; _ftoa (printf.c:340)
      0x800016a4 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
      0x800016a8 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000d24 ~~> Word[0x0011fe9c]
      0x800016ac sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
      0x800016b0 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
      0x800016b4 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x800015f4 ~~> Word[0x0011fe90]
      0x800016b8 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
      0x800016bc sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
      0x800016c0 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
      0x800016c4 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
      0x800016c8 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
      0x800016cc sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
      0x800016d0 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
      0x800016d4 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002ceb ~~> Word[0x0011fe70]
      0x800016d8 fsd     fs0, 56(sp)            #; 570.0 ~~> Doub[0x0011fe68]
      0x800016e4 auipc   s1, 0x2                #; (wrb) s1  <-- 0x800036e4
      0x800016dc fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
      0x800016e8 addi    s1, s1, -1844          #; s1  = 0x800036e4, (wrb) s1  <-- 0x80002fb0
      0x800016e0 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
; _ftoa (printf.c:351)
      0x800016f4 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
      0x800016ec fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002fb0]
; _ftoa (printf.c:0)
      0x800016f8 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
      0x800016fc mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x80001700 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x80001704 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
      0x80001708 mv      s7, a0                 #; a0  = 0x800015f4, (wrb) s7  <-- 0x800015f4
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:351)
      0x800016f0 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
                                                #; (acc) a6  <-- 0x0e049863
      0x8000170c bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x800017fc
; _ftoa (printf.c:0)
      0x800017fc fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
      0x80001800 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002800
                                                #; (f:fpu) fs0  <-- 0.0
      0x80001804 addi    a0, a0, 1976           #; a0  = 0x80002800, (wrb) a0  <-- 0x80002fb8
      0x80001808 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002fb8]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x8000180c fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x80001810 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x8000182c
; _ftoa (printf.c:0)
      0x8000182c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000282c
      0x80001830 addi    a0, a0, 1940           #; a0  = 0x8000282c, (wrb) a0  <-- 0x80002fc0
      0x80001838 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002838
      0x8000183c addi    a0, a0, 1936           #; a0  = 0x80002838, (wrb) a0  <-- 0x80002fc8
      0x80001834 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002fc0]
      0x80001840 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002fc8]
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
; _ftoa (printf.c:358)
      0x80001844 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
                                                #; (acc) a0  <-- 0x00b57533
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
      0x80001848 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
                                                #; (acc) a0  <-- 0x00b57533
      0x8000184c and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80001850 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x8000194c
; _ftoa (printf.c:374)
      0x8000194c andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x80001950 li      s8, 6                  #; (wrb) s8  <-- 6
      0x80001954 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x8000195c
; _ftoa (printf.c:0)
      0x8000195c li      a0, 10                 #; (wrb) a0  <-- 10
; _ftoa (printf.c:378)
      0x80001964 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x8000199c
; _ftoa (printf.c:0)
      0x80001960 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs2  <-- 0.0
      0x8000199c li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x800019a0 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x800019a4 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800029a4
      0x800019a8 addi    a1, a1, 1292           #; a1  = 0x800029a4, (wrb) a1  <-- 0x80002eb0
      0x800019ac add     a0, a0, a1             #; a0  = 48, a1  = 0x80002eb0, (wrb) a0  <-- 0x80002ee0
      0x800019b0 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002ee0]
; _ftoa (printf.c:383)
      0x800019b4 fcvt.w.d s1, fs2               #; fs2  = 0.0
; _ftoa (printf.c:384)
      0x800019b8 fcvt.d.w ft0, s1               #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:0)
      0x800019c4 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800029c4
      0x800019bc fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
      0x800019c8 addi    a0, a0, 1548           #; a0  = 0x800029c4, (wrb) a0  <-- 0x80002fd0
                                                #; (f:lsu) ft1  <-- 1000000.0000000
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:384)
      0x800019c0 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
; _ftoa (printf.c:0)
      0x800019cc fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002fd0]
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:385)
      0x800019d0 fcvt.wu.d a0, ft2              #; ft2  = 0.0
                                                #; (acc) gp  <-- 0xd21501d3
; _ftoa (printf.c:386)
      0x800019d4 fcvt.d.wu ft3, a0              #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
      0x800019d8 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0, (f:lsu) ft0  <-- 0.5
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:388)
      0x800019dc fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x800019e0 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001a00
; _ftoa (printf.c:396)
      0x80001a00 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
                                                #; (acc) s4  <-- 0x00059a63
      0x80001a04 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001a18
; _ftoa (printf.c:403)
      0x80001a1c beqz    s8, pc + 216           #; s8  = 6, not taken
      0x80001a18 fcvt.d.w fs1, zero             #; ac1  = 0
                                                #; (f:fpu) fs1  <-- 0.0
; _ftoa (printf.c:0)
      0x80001a20 li      a2, 0                  #; (wrb) a2  <-- 0
      0x80001a24 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:414)
      0x80001a28 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
      0x80001a2c li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001a30 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x80001a34 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80001a38 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80001a3c li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001a40 li      a7, 9                  #; (wrb) a7  <-- 9
      0x80001a44 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80001a48 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x80001a4c mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001a50 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001a54 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001a58 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001a5c ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x80001a60 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
      0x80001a64 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
; _ftoa (printf.c:417)
      0x80001a68 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80001a6c bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x80001a70 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x80001a74 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80001a78 li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001a7c sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x80001a80 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x80001a84 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x80001a88 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x80001a8c bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x80001a90 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
; _ftoa (printf.c:422)
      0x80001a94 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
      0x80001a98 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x80001a9c add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x80001aa0 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x80001aa4 li      a1, 31                 #; (wrb) a1  <-- 31
      0x80001aa8 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x80001aac add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
      0x80001ab0 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x80001ab4 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001abc
      0x80001abc addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x80001ac0 li      a1, 48                 #; (wrb) a1  <-- 48
      0x80001ac4 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000ac4
      0x80001ac8 jalr    ra, ra, -1388          #; ra  = 0x80000ac4, (wrb) ra  <-- 0x80001acc, goto 0x80000558
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
      0x800005ec ret                            #; ra  = 0x80001acc, goto 0x80001acc
; _ftoa (printf.c:0)
      0x80001acc li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x80001ad0 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x80001ad4 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80001ad8 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x80001adc snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80001ae0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001ae4 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001ae8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ad0
      0x80001ad0 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x80001ad4 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80001ad8 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x80001adc snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80001ae0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001ae4 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001ae8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ad0
      0x80001ad0 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x80001ad4 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80001ad8 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x80001adc snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80001ae0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001ae4 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001ae8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ad0
      0x80001ad0 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x80001ad4 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80001ad8 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x80001adc snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80001ae0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001ae4 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001ae8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ad0
      0x80001ad0 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x80001ad4 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80001ad8 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x80001adc snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80001ae0 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001ae4 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001ae8 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001aec add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x80001af0 j       pc + 0x28              #; goto 0x80001b18
      0x80001b18 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001b1c addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001b20 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:427)
      0x80001b24 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
      0x80001b28 li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001b2c sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
      0x80001b30 j       pc + 0x8               #; goto 0x80001b38
; _ftoa (printf.c:0)
      0x80001b38 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001b3c mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001b40 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001b44 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001b4c lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001b48 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
      0x80001b50 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001b54 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001b58 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
      0x80001b5c li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001b60 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001b64 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001b68 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001b6c srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001b70 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001b74 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001b78 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001b7c addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80001b80 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001b84 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
; _ftoa (printf.c:434)
      0x80001b88 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001b8c sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
; _ftoa (printf.c:0)
      0x80001b90 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001b94 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001b98 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80001b9c j       pc + 0x8               #; goto 0x80001ba4
; _ftoa (printf.c:440)
      0x80001ba4 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001ba8 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001bac bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001c18
; _ftoa (printf.c:0)
      0x80001c18 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001c1c bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80001c20 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001c38
; _ftoa (printf.c:453)
      0x80001c38 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001c3c bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001c40 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001c44 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001c70
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001c70 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001c74 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80001c78 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001c7c or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001c80 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001c84 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001c88 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001cb4
; _ftoa (printf.c:0)
      0x80001cb4 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001cb8 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x80001cbc addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
      0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
      0x80001cc8 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x80001ccc addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
      0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001cd4 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 8
      0x80001614 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 9 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 8, (wrb) a4  <-- 0x80003064
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003064, 48 ~~> Byte[0x800030ac]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 9
      0x80001628 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x8000162c snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001634 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001ce0 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x80001ce4 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ce8 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001cc0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
      0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
      0x80001cc8 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001ccc addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001cd4 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 9
      0x80001614 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 10 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 9, (wrb) a4  <-- 0x80003065
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003065, 46 ~~> Byte[0x800030ad]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 10
      0x80001628 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x8000162c snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x80001634 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001ce0 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001ce4 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ce8 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001cc0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
      0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
      0x80001cc8 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001ccc addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001cd4 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 10
      0x80001614 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 11 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 10, (wrb) a4  <-- 0x80003066
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003066, 48 ~~> Byte[0x800030ae]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 11
      0x80001628 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x8000162c snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001634 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001ce0 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001ce4 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ce8 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001cc0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
      0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
      0x80001cc8 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001ccc addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001cd4 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 11
      0x80001614 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 12 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 11, (wrb) a4  <-- 0x80003067
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003067, 48 ~~> Byte[0x800030af]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 12
      0x80001628 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x8000162c snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001634 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001ce0 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001ce4 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ce8 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001cc0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
      0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
      0x80001cc8 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001ccc addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001cd4 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 12
      0x80001614 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 13 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 12, (wrb) a4  <-- 0x80003068
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003068, 48 ~~> Byte[0x800030b0]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 13
      0x80001628 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x8000162c snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001634 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001ce0 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001ce4 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ce8 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001cc0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
      0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
      0x80001cc8 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001ccc addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001cd4 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 13
      0x80001614 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 14 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 13, (wrb) a4  <-- 0x80003069
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x80003069, 48 ~~> Byte[0x800030b1]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 14
      0x80001628 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x8000162c snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001634 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001ce0 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001ce4 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ce8 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001cc0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
      0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
      0x80001cc8 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001ccc addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001cd4 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 14
      0x80001614 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 15 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 14, (wrb) a4  <-- 0x8000306a
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000306a, 48 ~~> Byte[0x800030b2]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 15
      0x80001628 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x8000162c snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001634 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001ce0 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001ce4 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ce8 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001cc0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001cc0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
      0x80001cc4 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
      0x80001cc8 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001ccc addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001cd0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001cd4 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001cd8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001cdc jalr    s7                     #; s7  = 0x800015f4, (wrb) ra  <-- 0x80001ce0, goto 0x800015f4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 15
      0x80001614 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 16 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 15, (wrb) a4  <-- 0x8000306b
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000306b, 48 ~~> Byte[0x800030b3]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 16
      0x80001628 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x8000162c snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001634 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001638 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000163c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80001ce0, goto 0x80001ce0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001ce0 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001ce4 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ce8 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001cec j       pc + 0x8               #; goto 0x80001cf4
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001cf4 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x80001cf8 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80001cfc xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001d00 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001d04 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001d08 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001d38
; _ftoa (printf.c:0)
      0x80001d38 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x80001d3c mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80001d40 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
      0x80001d4c lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
      0x80001d44 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
      0x80001d48 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 570.0
                                                #; (lsu) s10 <-- 0x80002ceb
      0x80001d50 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 8
      0x80001d54 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 16
      0x80001d58 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x80001d5c lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x80001d60 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- -1
      0x80001d64 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0x0011ff17
      0x80001d68 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0x0011ff30
      0x80001d6c lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x800015f4
      0x80001d70 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 8
      0x80001d74 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0
      0x80001d78 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
      0x80001d7c addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80000d24
      0x80001d80 ret                            #; ra  = 0x80000d24, goto 0x80000d24
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000d24 j       pc + 0x7c0             #; goto 0x800014e4
      0x800014e4 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x800014e8 li      s6, 37                 #; (wrb) s6  <-- 37
      0x800014ec li      s7, 46                 #; (wrb) s7  <-- 46
      0x800014f0 addi    s0, s10, 1             #; s10 = 0x80002ceb, (wrb) s0  <-- 0x80002cec
      0x800014f4 j       pc - 0xa74             #; goto 0x80000a80
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a80 addi    s10, s0, 2             #; s0  = 0x80002cec, (wrb) s10 <-- 0x80002cee
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a84 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x80000a88 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a8c lbu     a0, 0(s0)              #; s0  = 0x80002cec, a0  <~~ Byte[0x80002cec]
                                                #; (lsu) a0  <-- 10
      0x80000a90 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000a94 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a98 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x80000a9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000aa0 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x80000aa4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000aa8 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x80000aac, goto 0x800015f4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015fc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001600 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001604 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003604
      0x80001608 addi    a3, a3, -1448          #; a3  = 0x80003604, (wrb) a3  <-- 0x8000305c
                                                #; (acc) a1  <-- 0x00d605b3
      0x8000160c add     a1, a2, a3             #; a2  = 0, a3  = 0x8000305c, (wrb) a1  <-- 0x8000305c
      0x80001610 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 16
      0x80001614 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x80001618 sw      a5, 0(a1)              #; a1  = 0x8000305c, 17 ~~> Word[0x8000305c]
      0x8000161c add     a4, a1, a4             #; a1  = 0x8000305c, a4  = 16, (wrb) a4  <-- 0x8000306c
      0x80001620 sb      a0, 72(a4)             #; a4  = 0x8000306c, 10 ~~> Byte[0x800030b4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001624 lw      a4, 0(a1)              #; a1  = 0x8000305c, a4  <~~ Word[0x8000305c]
                                                #; (lsu) a4  <-- 17
      0x80001628 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x8000162c snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x80001630 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x80001634 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x80001638 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x8000163c bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001640 add     a0, a3, a2             #; a3  = 0x8000305c, a2  = 0, (wrb) a0  <-- 0x8000305c
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001644 addi    a2, a0, 72             #; a0  = 0x8000305c, (wrb) a2  <-- 0x800030a4
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001648 sw      zero, 12(a0)           #; a0  = 0x8000305c, 0 ~~> Word[0x80003068]
      0x8000164c li      a3, 64                 #; (wrb) a3  <-- 64
      0x80001650 sw      a3, 8(a0)              #; a0  = 0x8000305c, 64 ~~> Word[0x80003064]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001654 sw      zero, 20(a0)           #; a0  = 0x8000305c, 0 ~~> Word[0x80003070]
      0x80001658 li      a3, 1                  #; (wrb) a3  <-- 1
      0x8000165c sw      a3, 16(a0)             #; a0  = 0x8000305c, 1 ~~> Word[0x8000306c]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001660 sw      zero, 28(a0)           #; a0  = 0x8000305c, 0 ~~> Word[0x80003078]
      0x80001664 sw      a2, 24(a0)             #; a0  = 0x8000305c, 0x800030a4 ~~> Word[0x80003074]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001668 lw      a2, 0(a1)              #; a1  = 0x8000305c, a2  <~~ Word[0x8000305c]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000166c addi    a3, a0, 8              #; a0  = 0x8000305c, (wrb) a3  <-- 0x80003064
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001670 sw      zero, 36(a0)           #; a0  = 0x8000305c, 0 ~~> Word[0x80003080]
                                                #; (lsu) a2  <-- 17
      0x80001674 sw      a2, 32(a0)             #; a0  = 0x8000305c, 17 ~~> Word[0x8000307c]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001678 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003678
      0x8000167c addi    a0, a0, -1912          #; a0  = 0x80003678, (wrb) a0  <-- 0x80002f00
      0x80001680 sw      a3, 0(a0)              #; a0  = 0x80002f00, 0x80003064 ~~> Word[0x80002f00]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001684 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003684
      0x80001688 addi    a0, a0, -1860          #; a0  = 0x80003684, (wrb) a0  <-- 0x80002f40
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000168c lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
                                                #; (lsu) a2  <-- 0
      0x80001690 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000168c
      0x8000168c lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
                                                #; (lsu) a2  <-- 0
      0x80001690 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000168c
      0x8000168c lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
                                                #; (lsu) a2  <-- 0
      0x80001690 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000168c
      0x8000168c lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
                                                #; (lsu) a2  <-- 0
      0x80001690 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000168c
      0x8000168c lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
                                                #; (lsu) a2  <-- 0
      0x80001690 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000168c
      0x8000168c lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
                                                #; (lsu) a2  <-- 1
      0x80001690 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001694 sw      zero, 0(a0)            #; a0  = 0x80002f40, 0 ~~> Word[0x80002f40]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001698 sw      zero, 0(a1)            #; a1  = 0x8000305c, 0 ~~> Word[0x8000305c]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x80000aac, goto 0x80000aac
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000aac addi    s0, s0, 1              #; s0  = 0x80002cec, (wrb) s0  <-- 0x80002ced
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000ab0 addi    s10, s10, 1            #; s10 = 0x80002cee, (wrb) s10 <-- 0x80002cef
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ab4 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ab8 lbu     a0, 0(s0)              #; s0  = 0x80002ced, a0  <~~ Byte[0x80002ced]
                                                #; (lsu) a0  <-- 0
      0x80000abc bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000ac0 j       pc + 0xad8             #; goto 0x80001598
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x80001598 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x8000159c bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x800015a4
      0x800015a4 li      a0, 0                  #; (wrb) a0  <-- 0
      0x800015a8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800015ac mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800015b0 jalr    s2                     #; s2  = 0x800015f4, (wrb) ra  <-- 0x800015b4, goto 0x800015f4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015f4 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x8000169c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000169c ret                            #; ra  = 0x800015b4, goto 0x800015b4
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x800015b4 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x800015b8 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
                                                #; (lsu) s11 <-- 0
      0x800015bc lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
                                                #; (lsu) s10 <-- 0
      0x800015c0 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
                                                #; (lsu) s9  <-- 0
      0x800015c4 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
                                                #; (lsu) s8  <-- 0
      0x800015c8 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
                                                #; (lsu) s7  <-- 0
      0x800015cc lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
                                                #; (lsu) s6  <-- 0
      0x800015d0 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
                                                #; (lsu) s5  <-- 0
      0x800015d4 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
                                                #; (lsu) s4  <-- 0
      0x800015d8 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
                                                #; (lsu) s3  <-- 0
      0x800015dc lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
                                                #; (lsu) s2  <-- 0x00100000
      0x800015e0 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
                                                #; (lsu) s1  <-- 1936
      0x800015e4 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
                                                #; (lsu) s0  <-- 0x00100050
      0x800015e8 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
      0x800015ec addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
                                                #; (lsu) ra  <-- 0x800009f0
      0x800015f0 ret                            #; ra  = 0x800009f0, goto 0x800009f0
; printf_ (printf.c:869)
      0x800009f0 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
      0x800009f4 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x8000088c
      0x800009f8 ret                            #; ra  = 0x8000088c, goto 0x8000088c
; main (bench_sp.c:0)
      0x8000088c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000288c
      0x80000890 addi    a0, a0, 1820           #; a0  = 0x8000288c, (wrb) a0  <-- 0x80002fa8
      0x80000894 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002fa8]
; main (bench_sp.c:60)
      0x800008a0 lw      s2, 16(sp)             #; sp  = 0x0011ff40, s2  <~~ Word[0x0011ff50]
                                                #; (f:lsu) ft0  <-- 0.0001
; main (bench_sp.c:59)
      0x80000898 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 570.0
                                                #; (lsu) s2  <-- 0
; main (bench_sp.c:60)
      0x800008a4 lw      s1, 20(sp)             #; sp  = 0x0011ff40, s1  <~~ Word[0x0011ff54], (acc) s1  <-- 0x01412483
      0x8000089c fld     fs0, 8(sp)             #; fs0  <~~ Doub[0x0011ff48]
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) s1  <-- 0
      0x800008a8 lw      s0, 24(sp)             #; sp  = 0x0011ff40, s0  <~~ Word[0x0011ff58]
                                                #; (lsu) s0  <-- 0
      0x800008ac lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
      0x800008b0 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002a50
      0x800008b4 ret                            #; ra  = 0x80002a50, goto 0x80002a50
; ?? (start.S:184)
      0x80002a50 mv      s0, a0                 #; a0  = 1, (wrb) s0  <-- 1
; ?? (start.S:191)
      0x80002a54 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a54
      0x80002a58 jalr    ra, ra, 524            #; ra  = 0x80002a54, (wrb) ra  <-- 0x80002a5c, goto 0x80002c60
; ?? (start_snitch.S:33)
      0x80002c60 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002c64 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002a5c ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002c68 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c68
      0x80002c6c jalr    ra, ra, -1260          #; ra  = 0x80002c68, (wrb) ra  <-- 0x80002c70, goto 0x8000277c
; _snrt_barrier_reg_ptr (team.c:80)
      0x8000277c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002780 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002784 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002788 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000278c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002790 ret                            #; ra  = 0x80002c70, goto 0x80002c70
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002c70 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002c74 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002c78 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002c7c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002a5c
; ?? (start_snitch.S:40)
      0x80002c80 ret                            #; ra  = 0x80002a5c, goto 0x80002a5c
; ?? (start.S:195)
      0x80002a5c mv      a0, s0                 #; s0  = 1, (wrb) a0  <-- 1
; ?? (start.S:196)
      0x80002a60 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a60
      0x80002a64 jalr    ra, ra, 556            #; ra  = 0x80002a60, (wrb) ra  <-- 0x80002a68, goto 0x80002c8c
; ?? (start_snitch.S:15)
      0x80002c8c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80002c90 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 1 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80002c94 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002a68 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80002c98 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c98
      0x80002c9c jalr    ra, ra, -1340          #; ra  = 0x80002c98, (wrb) ra  <-- 0x80002ca0, goto 0x8000275c
; snrt_global_core_idx (team.c:32)
      0x8000275c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002760 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002764 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002768 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000276c lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x80002770 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x80002774 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x80002778 ret                            #; ra  = 0x80002ca0, goto 0x80002ca0
; ?? (start_snitch.S:20)
      0x80002ca0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 1
; ?? (start_snitch.S:21)
      0x80002ca4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80002ca8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x80002cac bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x80002a68
; ?? (start_snitch.S:28)
      0x80002cb0 slli    t0, t0, 1              #; t0  = 1, (wrb) t0  <-- 2
; ?? (start_snitch.S:29)
      0x80002cb4 ori     t0, t0, 1              #; t0  = 2, (wrb) t0  <-- 3
; ?? (start_snitch.S:30)
      0x80002cb8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002cb8
      0x80002cbc addi    t1, t1, 584            #; t1  = 0x80002cb8, (wrb) t1  <-- 0x80002f00
; ?? (start_snitch.S:31)
      0x80002cc0 sw      t0, 0(t1)              #; t1  = 0x80002f00, 3 ~~> Word[0x80002f00]
; ?? (start_snitch.S:32)
      0x80002cc4 ret                            #; ra  = 0x80002a68, goto 0x80002a68
; ?? (start.S:198)
      0x80002a68 wfi                            #; 
                        tion 0 @ (12, 1936):
                           38
                           53
                            1
                           18
                      18.2105
                       0.1625
                       0.1959
                          1.0
                          1.0
                           20
                         1.08
                          9.0
                       0.0396
                       0.0257
                       0.6494
                         1945
                       0.2021
            tion 1 @ (1938, 2143):
                            0
                            0
                            0
                       0.3077
                       0.1795
                          1.0
                          1.0
                            2
                       2.1333
                            0
                       0.0673
                       0.0721
                       1.0714
                          208
                        0.375
            tion 2 @ (2145, 8354):
                          184
                          197
                           23
                            7
                      10.0406
                       0.3124
                       0.0334
                          1.0
                          1.0
                            0
                       0.8421
                       5.8696
                       0.0108
                       0.0061
                       0.5672
                         6210
                       0.3232
