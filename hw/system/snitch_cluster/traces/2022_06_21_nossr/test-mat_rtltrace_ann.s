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
      0x80002898 addi    t0, t0, 1924           #; t0  = 0x80002894, (wrb) t0  <-- 0x80003018
; ?? (start.S:49)
      0x8000289c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000289c
      0x800028a0 addi    t1, t1, 1920           #; t1  = 0x8000289c, (wrb) t1  <-- 0x8000301c
; ?? (start.S:50)
      0x800028a4 bge     t0, t1, pc + 16        #; t0  = 0x80003018, t1  = 0x8000301c, not taken
; ?? (start.S:51)
      0x800028a8 sw      zero, 0(t0)            #; t0  = 0x80003018, 0 ~~> Word[0x80003018]
; ?? (start.S:52)
      0x800028ac addi    t0, t0, 4              #; t0  = 0x80003018, (wrb) t0  <-- 0x8000301c
; ?? (start.S:53)
      0x800028b0 blt     t0, t1, pc - 8         #; t0  = 0x8000301c, t1  = 0x8000301c, not taken
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
      0x80002a18 jalr    ra, ra, -1064          #; ra  = 0x80002a14, (wrb) ra  <-- 0x80002a1c, goto 0x800025ec
; _snrt_init_team (start.c:49)
      0x800025ec sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x800025f0 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x800025f4 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x800025f8 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x800025fc lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x80002600 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x80002604 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x80002608 mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x8000260c mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x80002610 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x80002614 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x80002618 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x8000261c divu    a0, a0, t0             #; a0  = 0, t0  = 8
; _snrt_init_team (start.c:54)
      0x80002620 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x80002624 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x80002628 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x8000262c sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x80002630 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x80002634 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x80002638 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x8000263c sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x80002640 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x80002644 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x80002648 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x8000264c sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x80002650 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x80002654 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x80002658 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x8000265c sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x80002660 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x80002664 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x80002668 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x8000266c addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x80002670 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x80002674 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x80002678 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x8000267c add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x80002680 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x80002684 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x80002688 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x8000268c sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x80002690 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x80002694 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x80002698 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x8000269c sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x800026a0 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x800026a4 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x800026a8 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x800026ac lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800026b0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800026b4 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x800026b8 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800026bc lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x800026c0 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x800026c4 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x800026c8 remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x800026cc lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x800026d0 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
      0x800026d4 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x800026d8 li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x800026dc mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x800026e0 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800036e0
      0x800026e4 addi    a1, a1, -1732          #; a1  = 0x800036e0, (wrb) a1  <-- 0x8000301c
      0x800026e8 add     a0, a0, a1             #; a0  = 0, a1  = 0x8000301c, (wrb) a0  <-- 0x8000301c
      0x800026ec sw      zero, 0(a0)            #; a0  = 0x8000301c, 0 ~~> Word[0x8000301c]
; _snrt_init_team (start.c:86)
      0x800026f0 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x800026f4 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x800026f8 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x800026fc sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x80002700 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x80002704 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x80002708 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x8000270c andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x80002710 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x80002714 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x80002718 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x8000271c sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x80002720 lw      a0, 0(a1)              #; a1  = 0x8000301c, a0  <~~ Word[0x8000301c]
                                                #; (lsu) a0  <-- 0
      0x80002724 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x80002728 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x8000272c sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x80002730 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x80002734 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x80002738 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000273c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002740 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x80002744 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002748 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000274c sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x80002750 ret                            #; ra  = 0x80002a1c, goto 0x80002a1c
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
      0x80002c6c jalr    ra, ra, -1268          #; ra  = 0x80002c68, (wrb) ra  <-- 0x80002c70, goto 0x80002774
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002774 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002778 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000277c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002780 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002784 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002788 ret                            #; ra  = 0x80002c70, goto 0x80002c70
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
      0x80002a4c jalr    ra, ra, -1044          #; ra  = 0x80000a48, (wrb) ra  <-- 0x80002a50, goto 0x80000634
; main (test_mat.c:14)
      0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (test_mat.c:15)
      0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002a50 ~~> Word[0x0011ff5c]
      0x8000063c sw      s0, 24(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff58]
      0x80000640 sw      s1, 20(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff54]
      0x80000648 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000064c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000644 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
      0x80000650 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
; main (test_mat.c:0)
      0x80000654 li      a0, 0                  #; (wrb) a0  <-- 0
                                                #; (lsu) a1  <-- 0
; main (test_mat.c:15)
      0x80000658 bnez    a1, pc + 808           #; a1  = 0, not taken
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (test_mat.c:23)
      0x8000065c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000660 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000664 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80000668 lw      a3, 0(a0)              #; a0  = 0x0011ff70, a3  <~~ Word[0x0011ff70]
                                                #; (lsu) a3  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in main (test_mat.c:23)
      0x8000066c lw      a0, 88(a3)             #; a3  = 0x0011ff70, a0  <~~ Word[0x0011ffc8]
                                                #; (lsu) a0  <-- 0x00100000
      0x80000670 lw      a2, 80(a3)             #; a3  = 0x0011ff70, a2  <~~ Word[0x0011ffc0]
                                                #; (lsu) a2  <-- 0x00100000
      0x80000674 lw      a4, 84(a3)             #; a3  = 0x0011ff70, a4  <~~ Word[0x0011ffc4]
      0x80000678 addi    a1, a0, 240            #; a0  = 0x00100000, (wrb) a1  <-- 0x001000f0
                                                #; (lsu) a4  <-- 0x0001df30
      0x8000067c add     a4, a4, a2             #; a4  = 0x0001df30, a2  = 0x00100000, (wrb) a4  <-- 0x0011df30
      0x80000680 bgeu    a4, a1, pc + 44        #; a4  = 0x0011df30, a1  = 0x001000f0, taken, goto 0x800006ac
; snrt_l1alloc (alloc.c:34)
;  in main (test_mat.c:23)
      0x800006ac sw      a1, 88(a3)             #; a3  = 0x0011ff70, 0x001000f0 ~~> Word[0x0011ffc8]
      0x800006b0 mv      t0, a0                 #; a0  = 0x00100000, (wrb) t0  <-- 0x00100000
; snrt_l1alloc (alloc.c:25)
;  in main (test_mat.c:24)
      0x800006b4 mv      a0, a1                 #; a1  = 0x001000f0, (wrb) a0  <-- 0x001000f0
      0x800006b8 addi    a1, a0, 336            #; a0  = 0x001000f0, (wrb) a1  <-- 0x00100240
      0x800006bc bgeu    a4, a1, pc - 44        #; a4  = 0x0011df30, a1  = 0x00100240, taken, goto 0x80000690
; snrt_l1alloc (alloc.c:34)
;  in main (test_mat.c:24)
      0x80000690 sw      a1, 88(a3)             #; a3  = 0x0011ff70, 0x00100240 ~~> Word[0x0011ffc8]
      0x80000694 mv      a6, a0                 #; a0  = 0x001000f0, (wrb) a6  <-- 0x001000f0
; snrt_l1alloc (alloc.c:25)
;  in main (test_mat.c:25)
      0x80000698 mv      a0, a1                 #; a1  = 0x00100240, (wrb) a0  <-- 0x00100240
      0x8000069c addi    a1, a0, 280            #; a0  = 0x00100240, (wrb) a1  <-- 0x00100358
      0x800006a0 bltu    a4, a1, pc + 44        #; a4  = 0x0011df30, a1  = 0x00100358, not taken
; snrt_l1alloc (alloc.c:34)
;  in main (test_mat.c:25)
      0x800006a4 sw      a1, 88(a3)             #; a3  = 0x0011ff70, 0x00100358 ~~> Word[0x0011ffc8]
      0x800006a8 j       pc + 0x28              #; goto 0x800006d0
; main (alloc.c:0)
      0x800006d0 li      a1, 0                  #; (wrb) a1  <-- 0
      0x800006d4 li      a3, 0                  #; (wrb) a3  <-- 0
      0x800006d8 li      a4, 1                  #; (wrb) a4  <-- 1
      0x800006dc lui     a2, 0xccccd            #; (wrb) a2  <-- 0xccccd000
      0x800006e0 auipc   a5, 0x3                #; (wrb) a5  <-- 0x800036e0
      0x800006e4 addi    a5, a5, -1928          #; a5  = 0x800036e0, (wrb) a5  <-- 0x80002f58
      0x800006ec addi    a5, a2, -819           #; a2  = 0xccccd000, (wrb) a5  <-- 0xcccccccd
      0x800006e8 fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x80002f58]
      0x800006f0 li      a7, 20                 #; (wrb) a7  <-- 20
      0x800006f4 li      s0, 240                #; (wrb) s0  <-- 240
                                                #; (f:lsu) ft0  <-- 3.141
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 0, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 0, (wrb) a2  <-- 0
      0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 1, a2  = 0, (wrb) a2  <-- 1
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 1
                                                #; (f:fpu) ft1  <-- 1.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 1.0, ft0  = 3.141
                                                #; (f:fpu) ft1  <-- 3.141
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 0, (wrb) a2  <-- 0x00100000
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 0, (wrb) a3  <-- 1
      0x8000071c addi    a1, a1, 8              #; a1  = 0, (wrb) a1  <-- 8
      0x80000714 fsd     ft1, 0(a2)             #; 3.141 ~~> Doub[0x00100000]
      0x80000720 addi    a4, a4, 1              #; a4  = 1, (wrb) a4  <-- 2
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 8, s0  = 240, taken, goto 0x800006f8
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 1, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 0, (wrb) a2  <-- 0
      0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 2, a2  = 0, (wrb) a2  <-- 2
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 2
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 8, (wrb) a2  <-- 0x00100008
                                                #; (f:fpu) ft1  <-- 2.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 2.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 1, (wrb) a3  <-- 2
      0x8000071c addi    a1, a1, 8              #; a1  = 8, (wrb) a1  <-- 16
      0x80000720 addi    a4, a4, 1              #; a4  = 2, (wrb) a4  <-- 3
                                                #; (f:fpu) ft1  <-- 6.282
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 16, s0  = 240, taken, goto 0x800006f8
      0x80000714 fsd     ft1, 0(a2)             #; 6.282 ~~> Doub[0x00100008]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 2, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 1, (wrb) a2  <-- 0
      0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 3, a2  = 0, (wrb) a2  <-- 3
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 3
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 16, (wrb) a2  <-- 0x00100010
                                                #; (f:fpu) ft1  <-- 3.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 3.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 2, (wrb) a3  <-- 3
      0x8000071c addi    a1, a1, 8              #; a1  = 16, (wrb) a1  <-- 24
      0x80000720 addi    a4, a4, 1              #; a4  = 3, (wrb) a4  <-- 4
                                                #; (f:fpu) ft1  <-- 9.423
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 24, s0  = 240, taken, goto 0x800006f8
      0x80000714 fsd     ft1, 0(a2)             #; 9.423 ~~> Doub[0x00100010]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 3, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 2, (wrb) a2  <-- 0
      0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 4, a2  = 0, (wrb) a2  <-- 4
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 4
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 24, (wrb) a2  <-- 0x00100018
                                                #; (f:fpu) ft1  <-- 4.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 4.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 3, (wrb) a3  <-- 4
      0x8000071c addi    a1, a1, 8              #; a1  = 24, (wrb) a1  <-- 32
      0x80000720 addi    a4, a4, 1              #; a4  = 4, (wrb) a4  <-- 5
                                                #; (f:fpu) ft1  <-- 12.564
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 32, s0  = 240, taken, goto 0x800006f8
      0x80000714 fsd     ft1, 0(a2)             #; 12.564 ~~> Doub[0x00100018]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 4, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 3, (wrb) a2  <-- 0
      0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 5, a2  = 0, (wrb) a2  <-- 5
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 5
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 32, (wrb) a2  <-- 0x00100020
                                                #; (f:fpu) ft1  <-- 5.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 5.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 4, (wrb) a3  <-- 5
      0x8000071c addi    a1, a1, 8              #; a1  = 32, (wrb) a1  <-- 40
      0x80000720 addi    a4, a4, 1              #; a4  = 5, (wrb) a4  <-- 6
                                                #; (f:fpu) ft1  <-- 15.705
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 40, s0  = 240, taken, goto 0x800006f8
      0x80000714 fsd     ft1, 0(a2)             #; 15.705 ~~> Doub[0x00100020]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 5, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 4, (wrb) a2  <-- 0
      0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 6, a2  = 0, (wrb) a2  <-- 6
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 6
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 40, (wrb) a2  <-- 0x00100028
                                                #; (f:fpu) ft1  <-- 6.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 6.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 6
      0x8000071c addi    a1, a1, 8              #; a1  = 40, (wrb) a1  <-- 48
      0x80000720 addi    a4, a4, 1              #; a4  = 6, (wrb) a4  <-- 7
                                                #; (f:fpu) ft1  <-- 18.846
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 48, s0  = 240, taken, goto 0x800006f8
      0x80000714 fsd     ft1, 0(a2)             #; 18.846 ~~> Doub[0x00100028]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 6, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 4, (wrb) a2  <-- 0
      0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 7, a2  = 0, (wrb) a2  <-- 7
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 7
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 48, (wrb) a2  <-- 0x00100030
                                                #; (f:fpu) ft1  <-- 7.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 7.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 6, (wrb) a3  <-- 7
      0x8000071c addi    a1, a1, 8              #; a1  = 48, (wrb) a1  <-- 56
      0x80000720 addi    a4, a4, 1              #; a4  = 7, (wrb) a4  <-- 8
                                                #; (f:fpu) ft1  <-- 21.9870000
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 56, s0  = 240, taken, goto 0x800006f8
      0x80000714 fsd     ft1, 0(a2)             #; 21.9870000 ~~> Doub[0x00100030]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 7, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 5, (wrb) a2  <-- 0
      0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 8, a2  = 0, (wrb) a2  <-- 8
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 8
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 56, (wrb) a2  <-- 0x00100038
                                                #; (f:fpu) ft1  <-- 8.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 8.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 7, (wrb) a3  <-- 8
      0x8000071c addi    a1, a1, 8              #; a1  = 56, (wrb) a1  <-- 64
      0x80000720 addi    a4, a4, 1              #; a4  = 8, (wrb) a4  <-- 9
                                                #; (f:fpu) ft1  <-- 25.128
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 64, s0  = 240, taken, goto 0x800006f8
      0x80000714 fsd     ft1, 0(a2)             #; 25.128 ~~> Doub[0x00100038]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 8, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 6, (wrb) a2  <-- 0
      0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 9, a2  = 0, (wrb) a2  <-- 9
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 9
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 64, (wrb) a2  <-- 0x00100040
                                                #; (f:fpu) ft1  <-- 9.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 9.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 8, (wrb) a3  <-- 9
      0x8000071c addi    a1, a1, 8              #; a1  = 64, (wrb) a1  <-- 72
      0x80000720 addi    a4, a4, 1              #; a4  = 9, (wrb) a4  <-- 10
                                                #; (f:fpu) ft1  <-- 28.269
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 72, s0  = 240, taken, goto 0x800006f8
      0x80000714 fsd     ft1, 0(a2)             #; 28.269 ~~> Doub[0x00100040]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 9, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 7, (wrb) a2  <-- 0
      0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 10, a2  = 0, (wrb) a2  <-- 10
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 10
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 72, (wrb) a2  <-- 0x00100048
                                                #; (f:fpu) ft1  <-- 10.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 10.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 9, (wrb) a3  <-- 10
      0x8000071c addi    a1, a1, 8              #; a1  = 72, (wrb) a1  <-- 80
      0x80000720 addi    a4, a4, 1              #; a4  = 10, (wrb) a4  <-- 11
                                                #; (f:fpu) ft1  <-- 31.41
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 80, s0  = 240, taken, goto 0x800006f8
      0x80000714 fsd     ft1, 0(a2)             #; 31.41 ~~> Doub[0x00100048]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 10, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 8, (wrb) a2  <-- 0
      0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 11, a2  = 0, (wrb) a2  <-- 11
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 11
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 80, (wrb) a2  <-- 0x00100050
                                                #; (f:fpu) ft1  <-- 11.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 11.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 10, (wrb) a3  <-- 11
      0x8000071c addi    a1, a1, 8              #; a1  = 80, (wrb) a1  <-- 88
      0x80000720 addi    a4, a4, 1              #; a4  = 11, (wrb) a4  <-- 12
                                                #; (f:fpu) ft1  <-- 34.551
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 88, s0  = 240, taken, goto 0x800006f8
      0x80000714 fsd     ft1, 0(a2)             #; 34.551 ~~> Doub[0x00100050]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 11, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 8, (wrb) a2  <-- 0
      0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 12, a2  = 0, (wrb) a2  <-- 12
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 12
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 88, (wrb) a2  <-- 0x00100058
                                                #; (f:fpu) ft1  <-- 12.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 12.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 11, (wrb) a3  <-- 12
      0x8000071c addi    a1, a1, 8              #; a1  = 88, (wrb) a1  <-- 96
      0x80000720 addi    a4, a4, 1              #; a4  = 12, (wrb) a4  <-- 13
                                                #; (f:fpu) ft1  <-- 37.692
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 96, s0  = 240, taken, goto 0x800006f8
      0x80000714 fsd     ft1, 0(a2)             #; 37.692 ~~> Doub[0x00100058]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 12, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 9, (wrb) a2  <-- 0
      0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 13, a2  = 0, (wrb) a2  <-- 13
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 13
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 96, (wrb) a2  <-- 0x00100060
                                                #; (f:fpu) ft1  <-- 13.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 13.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 12, (wrb) a3  <-- 13
      0x8000071c addi    a1, a1, 8              #; a1  = 96, (wrb) a1  <-- 104
      0x80000720 addi    a4, a4, 1              #; a4  = 13, (wrb) a4  <-- 14
                                                #; (f:fpu) ft1  <-- 40.833
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 104, s0  = 240, taken, goto 0x800006f8
      0x80000714 fsd     ft1, 0(a2)             #; 40.833 ~~> Doub[0x00100060]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 13, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 10, (wrb) a2  <-- 0
      0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 14, a2  = 0, (wrb) a2  <-- 14
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 14
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 104, (wrb) a2  <-- 0x00100068
                                                #; (f:fpu) ft1  <-- 14.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 14.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 13, (wrb) a3  <-- 14
      0x8000071c addi    a1, a1, 8              #; a1  = 104, (wrb) a1  <-- 112
      0x80000720 addi    a4, a4, 1              #; a4  = 14, (wrb) a4  <-- 15
                                                #; (f:fpu) ft1  <-- 43.9740000
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 112, s0  = 240, taken, goto 0x800006f8
      0x80000714 fsd     ft1, 0(a2)             #; 43.9740000 ~~> Doub[0x00100068]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 14, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 11, (wrb) a2  <-- 0
      0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 15, a2  = 0, (wrb) a2  <-- 15
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 15
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 112, (wrb) a2  <-- 0x00100070
                                                #; (f:fpu) ft1  <-- 15.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 15.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 14, (wrb) a3  <-- 15
      0x8000071c addi    a1, a1, 8              #; a1  = 112, (wrb) a1  <-- 120
      0x80000720 addi    a4, a4, 1              #; a4  = 15, (wrb) a4  <-- 16
                                                #; (f:fpu) ft1  <-- 47.115
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 120, s0  = 240, taken, goto 0x800006f8
      0x80000714 fsd     ft1, 0(a2)             #; 47.115 ~~> Doub[0x00100070]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 15, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 12, (wrb) a2  <-- 0
      0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 16, a2  = 0, (wrb) a2  <-- 16
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 16
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 120, (wrb) a2  <-- 0x00100078
                                                #; (f:fpu) ft1  <-- 16.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 16.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 15, (wrb) a3  <-- 16
      0x8000071c addi    a1, a1, 8              #; a1  = 120, (wrb) a1  <-- 128
      0x80000720 addi    a4, a4, 1              #; a4  = 16, (wrb) a4  <-- 17
                                                #; (f:fpu) ft1  <-- 50.256
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 128, s0  = 240, taken, goto 0x800006f8
      0x80000714 fsd     ft1, 0(a2)             #; 50.256 ~~> Doub[0x00100078]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 16, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 12, (wrb) a2  <-- 0
      0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 17, a2  = 0, (wrb) a2  <-- 17
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 17
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 128, (wrb) a2  <-- 0x00100080
                                                #; (f:fpu) ft1  <-- 17.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 17.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 16, (wrb) a3  <-- 17
      0x8000071c addi    a1, a1, 8              #; a1  = 128, (wrb) a1  <-- 136
      0x80000720 addi    a4, a4, 1              #; a4  = 17, (wrb) a4  <-- 18
                                                #; (f:fpu) ft1  <-- 53.397
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 136, s0  = 240, taken, goto 0x800006f8
      0x80000714 fsd     ft1, 0(a2)             #; 53.397 ~~> Doub[0x00100080]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 17, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 13, (wrb) a2  <-- 0
      0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 18, a2  = 0, (wrb) a2  <-- 18
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 18
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 136, (wrb) a2  <-- 0x00100088
                                                #; (f:fpu) ft1  <-- 18.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 18.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 17, (wrb) a3  <-- 18
      0x8000071c addi    a1, a1, 8              #; a1  = 136, (wrb) a1  <-- 144
      0x80000720 addi    a4, a4, 1              #; a4  = 18, (wrb) a4  <-- 19
                                                #; (f:fpu) ft1  <-- 56.538
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 144, s0  = 240, taken, goto 0x800006f8
      0x80000714 fsd     ft1, 0(a2)             #; 56.538 ~~> Doub[0x00100088]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 18, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 14, (wrb) a2  <-- 0
      0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 19, a2  = 0, (wrb) a2  <-- 19
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 19
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 144, (wrb) a2  <-- 0x00100090
                                                #; (f:fpu) ft1  <-- 19.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 19.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 18, (wrb) a3  <-- 19
      0x8000071c addi    a1, a1, 8              #; a1  = 144, (wrb) a1  <-- 152
      0x80000720 addi    a4, a4, 1              #; a4  = 19, (wrb) a4  <-- 20
                                                #; (f:fpu) ft1  <-- 59.679
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 152, s0  = 240, taken, goto 0x800006f8
      0x80000714 fsd     ft1, 0(a2)             #; 59.679 ~~> Doub[0x00100090]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 19, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 15, (wrb) a2  <-- 0
      0x80000700 mul     a2, a2, a7             #; a2  = 0, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 20, a2  = 0, (wrb) a2  <-- 20
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 20
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 152, (wrb) a2  <-- 0x00100098
                                                #; (f:fpu) ft1  <-- 20.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 20.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 19, (wrb) a3  <-- 20
      0x8000071c addi    a1, a1, 8              #; a1  = 152, (wrb) a1  <-- 160
      0x80000720 addi    a4, a4, 1              #; a4  = 20, (wrb) a4  <-- 21
                                                #; (f:fpu) ft1  <-- 62.82
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 160, s0  = 240, taken, goto 0x800006f8
      0x80000714 fsd     ft1, 0(a2)             #; 62.82 ~~> Doub[0x00100098]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 20, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 16, (wrb) a2  <-- 1
      0x80000700 mul     a2, a2, a7             #; a2  = 1, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 21, a2  = 20, (wrb) a2  <-- 1
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 1
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 160, (wrb) a2  <-- 0x001000a0
                                                #; (f:fpu) ft1  <-- 1.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 1.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 20, (wrb) a3  <-- 21
      0x8000071c addi    a1, a1, 8              #; a1  = 160, (wrb) a1  <-- 168
      0x80000720 addi    a4, a4, 1              #; a4  = 21, (wrb) a4  <-- 22
                                                #; (f:fpu) ft1  <-- 3.141
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 168, s0  = 240, taken, goto 0x800006f8
      0x80000714 fsd     ft1, 0(a2)             #; 3.141 ~~> Doub[0x001000a0]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 21, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 16, (wrb) a2  <-- 1
      0x80000700 mul     a2, a2, a7             #; a2  = 1, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 22, a2  = 20, (wrb) a2  <-- 2
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 2
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 168, (wrb) a2  <-- 0x001000a8
                                                #; (f:fpu) ft1  <-- 2.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 2.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 21, (wrb) a3  <-- 22
      0x8000071c addi    a1, a1, 8              #; a1  = 168, (wrb) a1  <-- 176
      0x80000720 addi    a4, a4, 1              #; a4  = 22, (wrb) a4  <-- 23
                                                #; (f:fpu) ft1  <-- 6.282
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 176, s0  = 240, taken, goto 0x800006f8
      0x80000714 fsd     ft1, 0(a2)             #; 6.282 ~~> Doub[0x001000a8]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 22, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 17, (wrb) a2  <-- 1
      0x80000700 mul     a2, a2, a7             #; a2  = 1, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 23, a2  = 20, (wrb) a2  <-- 3
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 3
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 176, (wrb) a2  <-- 0x001000b0
                                                #; (f:fpu) ft1  <-- 3.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 3.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 22, (wrb) a3  <-- 23
      0x8000071c addi    a1, a1, 8              #; a1  = 176, (wrb) a1  <-- 184
      0x80000720 addi    a4, a4, 1              #; a4  = 23, (wrb) a4  <-- 24
                                                #; (f:fpu) ft1  <-- 9.423
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 184, s0  = 240, taken, goto 0x800006f8
      0x80000714 fsd     ft1, 0(a2)             #; 9.423 ~~> Doub[0x001000b0]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 23, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 18, (wrb) a2  <-- 1
      0x80000700 mul     a2, a2, a7             #; a2  = 1, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 24, a2  = 20, (wrb) a2  <-- 4
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 4
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 184, (wrb) a2  <-- 0x001000b8
                                                #; (f:fpu) ft1  <-- 4.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 4.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 23, (wrb) a3  <-- 24
      0x8000071c addi    a1, a1, 8              #; a1  = 184, (wrb) a1  <-- 192
      0x80000720 addi    a4, a4, 1              #; a4  = 24, (wrb) a4  <-- 25
                                                #; (f:fpu) ft1  <-- 12.564
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 192, s0  = 240, taken, goto 0x800006f8
      0x80000714 fsd     ft1, 0(a2)             #; 12.564 ~~> Doub[0x001000b8]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 24, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 19, (wrb) a2  <-- 1
      0x80000700 mul     a2, a2, a7             #; a2  = 1, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 25, a2  = 20, (wrb) a2  <-- 5
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 5
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 192, (wrb) a2  <-- 0x001000c0
                                                #; (f:fpu) ft1  <-- 5.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 5.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 24, (wrb) a3  <-- 25
      0x8000071c addi    a1, a1, 8              #; a1  = 192, (wrb) a1  <-- 200
      0x80000720 addi    a4, a4, 1              #; a4  = 25, (wrb) a4  <-- 26
                                                #; (f:fpu) ft1  <-- 15.705
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 200, s0  = 240, taken, goto 0x800006f8
      0x80000714 fsd     ft1, 0(a2)             #; 15.705 ~~> Doub[0x001000c0]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 25, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 20, (wrb) a2  <-- 1
      0x80000700 mul     a2, a2, a7             #; a2  = 1, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 26, a2  = 20, (wrb) a2  <-- 6
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 6
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 200, (wrb) a2  <-- 0x001000c8
                                                #; (f:fpu) ft1  <-- 6.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 6.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 25, (wrb) a3  <-- 26
      0x8000071c addi    a1, a1, 8              #; a1  = 200, (wrb) a1  <-- 208
      0x80000720 addi    a4, a4, 1              #; a4  = 26, (wrb) a4  <-- 27
                                                #; (f:fpu) ft1  <-- 18.846
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 208, s0  = 240, taken, goto 0x800006f8
      0x80000714 fsd     ft1, 0(a2)             #; 18.846 ~~> Doub[0x001000c8]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 26, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 20, (wrb) a2  <-- 1
      0x80000700 mul     a2, a2, a7             #; a2  = 1, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 27, a2  = 20, (wrb) a2  <-- 7
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 7
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 208, (wrb) a2  <-- 0x001000d0
                                                #; (f:fpu) ft1  <-- 7.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 7.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 26, (wrb) a3  <-- 27
      0x8000071c addi    a1, a1, 8              #; a1  = 208, (wrb) a1  <-- 216
      0x80000720 addi    a4, a4, 1              #; a4  = 27, (wrb) a4  <-- 28
                                                #; (f:fpu) ft1  <-- 21.9870000
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 216, s0  = 240, taken, goto 0x800006f8
      0x80000714 fsd     ft1, 0(a2)             #; 21.9870000 ~~> Doub[0x001000d0]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 27, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 21, (wrb) a2  <-- 1
      0x80000700 mul     a2, a2, a7             #; a2  = 1, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 28, a2  = 20, (wrb) a2  <-- 8
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 8
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 216, (wrb) a2  <-- 0x001000d8
                                                #; (f:fpu) ft1  <-- 8.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 8.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 27, (wrb) a3  <-- 28
      0x8000071c addi    a1, a1, 8              #; a1  = 216, (wrb) a1  <-- 224
      0x80000720 addi    a4, a4, 1              #; a4  = 28, (wrb) a4  <-- 29
                                                #; (f:fpu) ft1  <-- 25.128
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 224, s0  = 240, taken, goto 0x800006f8
      0x80000714 fsd     ft1, 0(a2)             #; 25.128 ~~> Doub[0x001000d8]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 28, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 22, (wrb) a2  <-- 1
      0x80000700 mul     a2, a2, a7             #; a2  = 1, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 29, a2  = 20, (wrb) a2  <-- 9
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 9
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 224, (wrb) a2  <-- 0x001000e0
                                                #; (f:fpu) ft1  <-- 9.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 9.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 28, (wrb) a3  <-- 29
      0x8000071c addi    a1, a1, 8              #; a1  = 224, (wrb) a1  <-- 232
      0x80000720 addi    a4, a4, 1              #; a4  = 29, (wrb) a4  <-- 30
                                                #; (f:fpu) ft1  <-- 28.269
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 232, s0  = 240, taken, goto 0x800006f8
      0x80000714 fsd     ft1, 0(a2)             #; 28.269 ~~> Doub[0x001000e0]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800006f8 mulhu   a2, a3, a5             #; a3  = 29, a5  = 0xcccccccd
                                                #; (acc) a2  <-- 0x00465613
      0x800006fc srli    a2, a2, 4              #; a2  = 23, (wrb) a2  <-- 1
      0x80000700 mul     a2, a2, a7             #; a2  = 1, a7  = 20
                                                #; (acc) a2  <-- 0x40c70633
      0x80000704 sub     a2, a4, a2             #; a4  = 30, a2  = 20, (wrb) a2  <-- 10
      0x80000708 fcvt.d.wu ft1, a2              #; ac1  = 10
      0x80000710 add     a2, t0, a1             #; t0  = 0x00100000, a1  = 232, (wrb) a2  <-- 0x001000e8
                                                #; (f:fpu) ft1  <-- 10.0
      0x8000070c fmul.d  ft1, ft1, ft0          #; ft1  = 10.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000718 addi    a3, a3, 1              #; a3  = 29, (wrb) a3  <-- 30
      0x8000071c addi    a1, a1, 8              #; a1  = 232, (wrb) a1  <-- 240
      0x80000720 addi    a4, a4, 1              #; a4  = 30, (wrb) a4  <-- 31
                                                #; (f:fpu) ft1  <-- 31.41
      0x80000724 bne     a1, s0, pc - 44        #; a1  = 240, s0  = 240, not taken
      0x80000714 fsd     ft1, 0(a2)             #; 31.41 ~~> Doub[0x001000e8]
; main (test_mat.c:0)
      0x80000728 li      a1, 0                  #; (wrb) a1  <-- 0
      0x8000072c li      a3, 0                  #; (wrb) a3  <-- 0
      0x80000730 li      a4, 1                  #; (wrb) a4  <-- 1
      0x80000734 lui     a2, 0xccccd            #; (wrb) a2  <-- 0xccccd000
      0x80000738 addi    a5, a2, -819           #; a2  = 0xccccd000, (wrb) a5  <-- 0xcccccccd
      0x8000073c li      a7, 20                 #; (wrb) a7  <-- 20
      0x80000740 li      a2, 336                #; (wrb) a2  <-- 336
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 0, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 0, (wrb) s0  <-- 0
      0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
      0x80000750 sub     s0, a4, s0             #; a4  = 1, s0  = 0, (wrb) s0  <-- 1
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 1
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 0, (wrb) s0  <-- 0x001000f0
                                                #; (f:fpu) ft1  <-- 1.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 1.0, ft0  = 3.141
                                                #; (f:fpu) ft1  <-- 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 0, (wrb) a3  <-- 1
      0x80000768 addi    a1, a1, 8              #; a1  = 0, (wrb) a1  <-- 8
      0x80000760 fsd     ft1, 0(s0)             #; 3.141 ~~> Doub[0x001000f0]
      0x8000076c addi    a4, a4, 1              #; a4  = 1, (wrb) a4  <-- 2
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 8, a2  = 336, taken, goto 0x80000744
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 1, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 0, (wrb) s0  <-- 0
      0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 2, s0  = 0, (wrb) s0  <-- 2
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 2
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 8, (wrb) s0  <-- 0x001000f8
                                                #; (f:fpu) ft1  <-- 2.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 2.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 1, (wrb) a3  <-- 2
      0x80000768 addi    a1, a1, 8              #; a1  = 8, (wrb) a1  <-- 16
      0x8000076c addi    a4, a4, 1              #; a4  = 2, (wrb) a4  <-- 3
                                                #; (f:fpu) ft1  <-- 6.282
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 16, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 6.282 ~~> Doub[0x001000f8]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 2, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 1, (wrb) s0  <-- 0
      0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 3, s0  = 0, (wrb) s0  <-- 3
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 3
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 16, (wrb) s0  <-- 0x00100100
                                                #; (f:fpu) ft1  <-- 3.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 3.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 2, (wrb) a3  <-- 3
      0x80000768 addi    a1, a1, 8              #; a1  = 16, (wrb) a1  <-- 24
      0x8000076c addi    a4, a4, 1              #; a4  = 3, (wrb) a4  <-- 4
                                                #; (f:fpu) ft1  <-- 9.423
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 24, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 9.423 ~~> Doub[0x00100100]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 3, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 2, (wrb) s0  <-- 0
      0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 4, s0  = 0, (wrb) s0  <-- 4
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 4
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 24, (wrb) s0  <-- 0x00100108
                                                #; (f:fpu) ft1  <-- 4.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 4.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 3, (wrb) a3  <-- 4
      0x80000768 addi    a1, a1, 8              #; a1  = 24, (wrb) a1  <-- 32
      0x8000076c addi    a4, a4, 1              #; a4  = 4, (wrb) a4  <-- 5
                                                #; (f:fpu) ft1  <-- 12.564
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 32, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 12.564 ~~> Doub[0x00100108]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 4, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 3, (wrb) s0  <-- 0
      0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 5, s0  = 0, (wrb) s0  <-- 5
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 5
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 32, (wrb) s0  <-- 0x00100110
                                                #; (f:fpu) ft1  <-- 5.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 5.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 4, (wrb) a3  <-- 5
      0x80000768 addi    a1, a1, 8              #; a1  = 32, (wrb) a1  <-- 40
      0x8000076c addi    a4, a4, 1              #; a4  = 5, (wrb) a4  <-- 6
                                                #; (f:fpu) ft1  <-- 15.705
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 40, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 15.705 ~~> Doub[0x00100110]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 5, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 4, (wrb) s0  <-- 0
      0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 6, s0  = 0, (wrb) s0  <-- 6
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 6
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 40, (wrb) s0  <-- 0x00100118
                                                #; (f:fpu) ft1  <-- 6.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 6.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 6
      0x80000768 addi    a1, a1, 8              #; a1  = 40, (wrb) a1  <-- 48
      0x8000076c addi    a4, a4, 1              #; a4  = 6, (wrb) a4  <-- 7
                                                #; (f:fpu) ft1  <-- 18.846
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 48, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 18.846 ~~> Doub[0x00100118]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 6, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 4, (wrb) s0  <-- 0
      0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 7, s0  = 0, (wrb) s0  <-- 7
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 7
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 48, (wrb) s0  <-- 0x00100120
                                                #; (f:fpu) ft1  <-- 7.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 7.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 6, (wrb) a3  <-- 7
      0x80000768 addi    a1, a1, 8              #; a1  = 48, (wrb) a1  <-- 56
      0x8000076c addi    a4, a4, 1              #; a4  = 7, (wrb) a4  <-- 8
                                                #; (f:fpu) ft1  <-- 21.9870000
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 56, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 21.9870000 ~~> Doub[0x00100120]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 7, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 5, (wrb) s0  <-- 0
      0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 8, s0  = 0, (wrb) s0  <-- 8
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 8
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 56, (wrb) s0  <-- 0x00100128
                                                #; (f:fpu) ft1  <-- 8.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 8.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 7, (wrb) a3  <-- 8
      0x80000768 addi    a1, a1, 8              #; a1  = 56, (wrb) a1  <-- 64
      0x8000076c addi    a4, a4, 1              #; a4  = 8, (wrb) a4  <-- 9
                                                #; (f:fpu) ft1  <-- 25.128
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 64, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 25.128 ~~> Doub[0x00100128]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 8, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 6, (wrb) s0  <-- 0
      0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 9, s0  = 0, (wrb) s0  <-- 9
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 9
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 64, (wrb) s0  <-- 0x00100130
                                                #; (f:fpu) ft1  <-- 9.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 9.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 8, (wrb) a3  <-- 9
      0x80000768 addi    a1, a1, 8              #; a1  = 64, (wrb) a1  <-- 72
      0x8000076c addi    a4, a4, 1              #; a4  = 9, (wrb) a4  <-- 10
                                                #; (f:fpu) ft1  <-- 28.269
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 72, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 28.269 ~~> Doub[0x00100130]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 9, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 7, (wrb) s0  <-- 0
      0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 10, s0  = 0, (wrb) s0  <-- 10
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 10
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 72, (wrb) s0  <-- 0x00100138
                                                #; (f:fpu) ft1  <-- 10.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 10.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 9, (wrb) a3  <-- 10
      0x80000768 addi    a1, a1, 8              #; a1  = 72, (wrb) a1  <-- 80
      0x8000076c addi    a4, a4, 1              #; a4  = 10, (wrb) a4  <-- 11
                                                #; (f:fpu) ft1  <-- 31.41
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 80, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 31.41 ~~> Doub[0x00100138]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 10, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 8, (wrb) s0  <-- 0
      0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 11, s0  = 0, (wrb) s0  <-- 11
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 11
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 80, (wrb) s0  <-- 0x00100140
                                                #; (f:fpu) ft1  <-- 11.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 11.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 10, (wrb) a3  <-- 11
      0x80000768 addi    a1, a1, 8              #; a1  = 80, (wrb) a1  <-- 88
      0x8000076c addi    a4, a4, 1              #; a4  = 11, (wrb) a4  <-- 12
                                                #; (f:fpu) ft1  <-- 34.551
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 88, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 34.551 ~~> Doub[0x00100140]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 11, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 8, (wrb) s0  <-- 0
      0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 12, s0  = 0, (wrb) s0  <-- 12
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 12
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 88, (wrb) s0  <-- 0x00100148
                                                #; (f:fpu) ft1  <-- 12.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 12.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 11, (wrb) a3  <-- 12
      0x80000768 addi    a1, a1, 8              #; a1  = 88, (wrb) a1  <-- 96
      0x8000076c addi    a4, a4, 1              #; a4  = 12, (wrb) a4  <-- 13
                                                #; (f:fpu) ft1  <-- 37.692
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 96, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 37.692 ~~> Doub[0x00100148]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 12, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 9, (wrb) s0  <-- 0
      0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 13, s0  = 0, (wrb) s0  <-- 13
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 13
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 96, (wrb) s0  <-- 0x00100150
                                                #; (f:fpu) ft1  <-- 13.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 13.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 12, (wrb) a3  <-- 13
      0x80000768 addi    a1, a1, 8              #; a1  = 96, (wrb) a1  <-- 104
      0x8000076c addi    a4, a4, 1              #; a4  = 13, (wrb) a4  <-- 14
                                                #; (f:fpu) ft1  <-- 40.833
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 104, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 40.833 ~~> Doub[0x00100150]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 13, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 10, (wrb) s0  <-- 0
      0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 14, s0  = 0, (wrb) s0  <-- 14
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 14
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 104, (wrb) s0  <-- 0x00100158
                                                #; (f:fpu) ft1  <-- 14.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 14.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 13, (wrb) a3  <-- 14
      0x80000768 addi    a1, a1, 8              #; a1  = 104, (wrb) a1  <-- 112
      0x8000076c addi    a4, a4, 1              #; a4  = 14, (wrb) a4  <-- 15
                                                #; (f:fpu) ft1  <-- 43.9740000
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 112, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 43.9740000 ~~> Doub[0x00100158]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 14, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 11, (wrb) s0  <-- 0
      0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 15, s0  = 0, (wrb) s0  <-- 15
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 15
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 112, (wrb) s0  <-- 0x00100160
                                                #; (f:fpu) ft1  <-- 15.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 15.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 14, (wrb) a3  <-- 15
      0x80000768 addi    a1, a1, 8              #; a1  = 112, (wrb) a1  <-- 120
      0x8000076c addi    a4, a4, 1              #; a4  = 15, (wrb) a4  <-- 16
                                                #; (f:fpu) ft1  <-- 47.115
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 120, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 47.115 ~~> Doub[0x00100160]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 15, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 12, (wrb) s0  <-- 0
      0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 16, s0  = 0, (wrb) s0  <-- 16
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 16
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 120, (wrb) s0  <-- 0x00100168
                                                #; (f:fpu) ft1  <-- 16.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 16.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 15, (wrb) a3  <-- 16
      0x80000768 addi    a1, a1, 8              #; a1  = 120, (wrb) a1  <-- 128
      0x8000076c addi    a4, a4, 1              #; a4  = 16, (wrb) a4  <-- 17
                                                #; (f:fpu) ft1  <-- 50.256
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 128, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 50.256 ~~> Doub[0x00100168]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 16, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 12, (wrb) s0  <-- 0
      0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 17, s0  = 0, (wrb) s0  <-- 17
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 17
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 128, (wrb) s0  <-- 0x00100170
                                                #; (f:fpu) ft1  <-- 17.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 17.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 16, (wrb) a3  <-- 17
      0x80000768 addi    a1, a1, 8              #; a1  = 128, (wrb) a1  <-- 136
      0x8000076c addi    a4, a4, 1              #; a4  = 17, (wrb) a4  <-- 18
                                                #; (f:fpu) ft1  <-- 53.397
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 136, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 53.397 ~~> Doub[0x00100170]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 17, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 13, (wrb) s0  <-- 0
      0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 18, s0  = 0, (wrb) s0  <-- 18
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 18
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 136, (wrb) s0  <-- 0x00100178
                                                #; (f:fpu) ft1  <-- 18.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 18.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 17, (wrb) a3  <-- 18
      0x80000768 addi    a1, a1, 8              #; a1  = 136, (wrb) a1  <-- 144
      0x8000076c addi    a4, a4, 1              #; a4  = 18, (wrb) a4  <-- 19
                                                #; (f:fpu) ft1  <-- 56.538
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 144, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 56.538 ~~> Doub[0x00100178]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 18, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 14, (wrb) s0  <-- 0
      0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 19, s0  = 0, (wrb) s0  <-- 19
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 19
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 144, (wrb) s0  <-- 0x00100180
                                                #; (f:fpu) ft1  <-- 19.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 19.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 18, (wrb) a3  <-- 19
      0x80000768 addi    a1, a1, 8              #; a1  = 144, (wrb) a1  <-- 152
      0x8000076c addi    a4, a4, 1              #; a4  = 19, (wrb) a4  <-- 20
                                                #; (f:fpu) ft1  <-- 59.679
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 152, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 59.679 ~~> Doub[0x00100180]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 19, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 15, (wrb) s0  <-- 0
      0x8000074c mul     s0, s0, a7             #; s0  = 0, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 20, s0  = 0, (wrb) s0  <-- 20
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 20
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 152, (wrb) s0  <-- 0x00100188
                                                #; (f:fpu) ft1  <-- 20.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 20.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 19, (wrb) a3  <-- 20
      0x80000768 addi    a1, a1, 8              #; a1  = 152, (wrb) a1  <-- 160
      0x8000076c addi    a4, a4, 1              #; a4  = 20, (wrb) a4  <-- 21
                                                #; (f:fpu) ft1  <-- 62.82
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 160, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 62.82 ~~> Doub[0x00100188]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 20, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 16, (wrb) s0  <-- 1
      0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 21, s0  = 20, (wrb) s0  <-- 1
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 1
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 160, (wrb) s0  <-- 0x00100190
                                                #; (f:fpu) ft1  <-- 1.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 1.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 20, (wrb) a3  <-- 21
      0x80000768 addi    a1, a1, 8              #; a1  = 160, (wrb) a1  <-- 168
      0x8000076c addi    a4, a4, 1              #; a4  = 21, (wrb) a4  <-- 22
                                                #; (f:fpu) ft1  <-- 3.141
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 168, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 3.141 ~~> Doub[0x00100190]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 21, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 16, (wrb) s0  <-- 1
      0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 22, s0  = 20, (wrb) s0  <-- 2
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 2
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 168, (wrb) s0  <-- 0x00100198
                                                #; (f:fpu) ft1  <-- 2.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 2.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 21, (wrb) a3  <-- 22
      0x80000768 addi    a1, a1, 8              #; a1  = 168, (wrb) a1  <-- 176
      0x8000076c addi    a4, a4, 1              #; a4  = 22, (wrb) a4  <-- 23
                                                #; (f:fpu) ft1  <-- 6.282
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 176, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 6.282 ~~> Doub[0x00100198]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 22, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 17, (wrb) s0  <-- 1
      0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 23, s0  = 20, (wrb) s0  <-- 3
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 3
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 176, (wrb) s0  <-- 0x001001a0
                                                #; (f:fpu) ft1  <-- 3.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 3.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 22, (wrb) a3  <-- 23
      0x80000768 addi    a1, a1, 8              #; a1  = 176, (wrb) a1  <-- 184
      0x8000076c addi    a4, a4, 1              #; a4  = 23, (wrb) a4  <-- 24
                                                #; (f:fpu) ft1  <-- 9.423
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 184, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 9.423 ~~> Doub[0x001001a0]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 23, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 18, (wrb) s0  <-- 1
      0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 24, s0  = 20, (wrb) s0  <-- 4
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 4
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 184, (wrb) s0  <-- 0x001001a8
                                                #; (f:fpu) ft1  <-- 4.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 4.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 23, (wrb) a3  <-- 24
      0x80000768 addi    a1, a1, 8              #; a1  = 184, (wrb) a1  <-- 192
      0x8000076c addi    a4, a4, 1              #; a4  = 24, (wrb) a4  <-- 25
                                                #; (f:fpu) ft1  <-- 12.564
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 192, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 12.564 ~~> Doub[0x001001a8]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 24, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 19, (wrb) s0  <-- 1
      0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 25, s0  = 20, (wrb) s0  <-- 5
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 5
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 192, (wrb) s0  <-- 0x001001b0
                                                #; (f:fpu) ft1  <-- 5.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 5.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 24, (wrb) a3  <-- 25
      0x80000768 addi    a1, a1, 8              #; a1  = 192, (wrb) a1  <-- 200
      0x8000076c addi    a4, a4, 1              #; a4  = 25, (wrb) a4  <-- 26
                                                #; (f:fpu) ft1  <-- 15.705
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 200, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 15.705 ~~> Doub[0x001001b0]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 25, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 20, (wrb) s0  <-- 1
      0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 26, s0  = 20, (wrb) s0  <-- 6
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 6
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 200, (wrb) s0  <-- 0x001001b8
                                                #; (f:fpu) ft1  <-- 6.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 6.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 25, (wrb) a3  <-- 26
      0x80000768 addi    a1, a1, 8              #; a1  = 200, (wrb) a1  <-- 208
      0x8000076c addi    a4, a4, 1              #; a4  = 26, (wrb) a4  <-- 27
                                                #; (f:fpu) ft1  <-- 18.846
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 208, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 18.846 ~~> Doub[0x001001b8]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 26, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 20, (wrb) s0  <-- 1
      0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 27, s0  = 20, (wrb) s0  <-- 7
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 7
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 208, (wrb) s0  <-- 0x001001c0
                                                #; (f:fpu) ft1  <-- 7.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 7.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 26, (wrb) a3  <-- 27
      0x80000768 addi    a1, a1, 8              #; a1  = 208, (wrb) a1  <-- 216
      0x8000076c addi    a4, a4, 1              #; a4  = 27, (wrb) a4  <-- 28
                                                #; (f:fpu) ft1  <-- 21.9870000
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 216, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 21.9870000 ~~> Doub[0x001001c0]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 27, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 21, (wrb) s0  <-- 1
      0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 28, s0  = 20, (wrb) s0  <-- 8
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 8
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 216, (wrb) s0  <-- 0x001001c8
                                                #; (f:fpu) ft1  <-- 8.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 8.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 27, (wrb) a3  <-- 28
      0x80000768 addi    a1, a1, 8              #; a1  = 216, (wrb) a1  <-- 224
      0x8000076c addi    a4, a4, 1              #; a4  = 28, (wrb) a4  <-- 29
                                                #; (f:fpu) ft1  <-- 25.128
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 224, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 25.128 ~~> Doub[0x001001c8]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 28, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 22, (wrb) s0  <-- 1
      0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 29, s0  = 20, (wrb) s0  <-- 9
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 9
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 224, (wrb) s0  <-- 0x001001d0
                                                #; (f:fpu) ft1  <-- 9.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 9.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 28, (wrb) a3  <-- 29
      0x80000768 addi    a1, a1, 8              #; a1  = 224, (wrb) a1  <-- 232
      0x8000076c addi    a4, a4, 1              #; a4  = 29, (wrb) a4  <-- 30
                                                #; (f:fpu) ft1  <-- 28.269
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 232, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 28.269 ~~> Doub[0x001001d0]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 29, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 23, (wrb) s0  <-- 1
      0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 30, s0  = 20, (wrb) s0  <-- 10
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 10
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 232, (wrb) s0  <-- 0x001001d8
                                                #; (f:fpu) ft1  <-- 10.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 10.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 29, (wrb) a3  <-- 30
      0x80000768 addi    a1, a1, 8              #; a1  = 232, (wrb) a1  <-- 240
      0x8000076c addi    a4, a4, 1              #; a4  = 30, (wrb) a4  <-- 31
                                                #; (f:fpu) ft1  <-- 31.41
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 240, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 31.41 ~~> Doub[0x001001d8]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 30, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 24, (wrb) s0  <-- 1
      0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 31, s0  = 20, (wrb) s0  <-- 11
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 11
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 240, (wrb) s0  <-- 0x001001e0
                                                #; (f:fpu) ft1  <-- 11.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 11.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 30, (wrb) a3  <-- 31
      0x80000768 addi    a1, a1, 8              #; a1  = 240, (wrb) a1  <-- 248
      0x8000076c addi    a4, a4, 1              #; a4  = 31, (wrb) a4  <-- 32
                                                #; (f:fpu) ft1  <-- 34.551
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 248, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 34.551 ~~> Doub[0x001001e0]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 31, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 24, (wrb) s0  <-- 1
      0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 32, s0  = 20, (wrb) s0  <-- 12
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 12
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 248, (wrb) s0  <-- 0x001001e8
                                                #; (f:fpu) ft1  <-- 12.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 12.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 31, (wrb) a3  <-- 32
      0x80000768 addi    a1, a1, 8              #; a1  = 248, (wrb) a1  <-- 256
      0x8000076c addi    a4, a4, 1              #; a4  = 32, (wrb) a4  <-- 33
                                                #; (f:fpu) ft1  <-- 37.692
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 256, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 37.692 ~~> Doub[0x001001e8]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 32, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 25, (wrb) s0  <-- 1
      0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 33, s0  = 20, (wrb) s0  <-- 13
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 13
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 256, (wrb) s0  <-- 0x001001f0
                                                #; (f:fpu) ft1  <-- 13.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 13.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 32, (wrb) a3  <-- 33
      0x80000768 addi    a1, a1, 8              #; a1  = 256, (wrb) a1  <-- 264
      0x8000076c addi    a4, a4, 1              #; a4  = 33, (wrb) a4  <-- 34
                                                #; (f:fpu) ft1  <-- 40.833
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 264, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 40.833 ~~> Doub[0x001001f0]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 33, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 26, (wrb) s0  <-- 1
      0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 34, s0  = 20, (wrb) s0  <-- 14
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 14
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 264, (wrb) s0  <-- 0x001001f8
                                                #; (f:fpu) ft1  <-- 14.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 14.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 33, (wrb) a3  <-- 34
      0x80000768 addi    a1, a1, 8              #; a1  = 264, (wrb) a1  <-- 272
      0x8000076c addi    a4, a4, 1              #; a4  = 34, (wrb) a4  <-- 35
                                                #; (f:fpu) ft1  <-- 43.9740000
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 272, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 43.9740000 ~~> Doub[0x001001f8]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 34, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 27, (wrb) s0  <-- 1
      0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 35, s0  = 20, (wrb) s0  <-- 15
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 15
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 272, (wrb) s0  <-- 0x00100200
                                                #; (f:fpu) ft1  <-- 15.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 15.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 34, (wrb) a3  <-- 35
      0x80000768 addi    a1, a1, 8              #; a1  = 272, (wrb) a1  <-- 280
      0x8000076c addi    a4, a4, 1              #; a4  = 35, (wrb) a4  <-- 36
                                                #; (f:fpu) ft1  <-- 47.115
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 280, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 47.115 ~~> Doub[0x00100200]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 35, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 28, (wrb) s0  <-- 1
      0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 36, s0  = 20, (wrb) s0  <-- 16
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 16
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 280, (wrb) s0  <-- 0x00100208
                                                #; (f:fpu) ft1  <-- 16.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 16.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 35, (wrb) a3  <-- 36
      0x80000768 addi    a1, a1, 8              #; a1  = 280, (wrb) a1  <-- 288
      0x8000076c addi    a4, a4, 1              #; a4  = 36, (wrb) a4  <-- 37
                                                #; (f:fpu) ft1  <-- 50.256
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 288, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 50.256 ~~> Doub[0x00100208]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 36, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 28, (wrb) s0  <-- 1
      0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 37, s0  = 20, (wrb) s0  <-- 17
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 17
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 288, (wrb) s0  <-- 0x00100210
                                                #; (f:fpu) ft1  <-- 17.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 17.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 36, (wrb) a3  <-- 37
      0x80000768 addi    a1, a1, 8              #; a1  = 288, (wrb) a1  <-- 296
      0x8000076c addi    a4, a4, 1              #; a4  = 37, (wrb) a4  <-- 38
                                                #; (f:fpu) ft1  <-- 53.397
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 296, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 53.397 ~~> Doub[0x00100210]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 37, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 29, (wrb) s0  <-- 1
      0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 38, s0  = 20, (wrb) s0  <-- 18
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 18
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 296, (wrb) s0  <-- 0x00100218
                                                #; (f:fpu) ft1  <-- 18.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 18.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 37, (wrb) a3  <-- 38
      0x80000768 addi    a1, a1, 8              #; a1  = 296, (wrb) a1  <-- 304
      0x8000076c addi    a4, a4, 1              #; a4  = 38, (wrb) a4  <-- 39
                                                #; (f:fpu) ft1  <-- 56.538
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 304, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 56.538 ~~> Doub[0x00100218]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 38, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 30, (wrb) s0  <-- 1
      0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 39, s0  = 20, (wrb) s0  <-- 19
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 19
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 304, (wrb) s0  <-- 0x00100220
                                                #; (f:fpu) ft1  <-- 19.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 19.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 38, (wrb) a3  <-- 39
      0x80000768 addi    a1, a1, 8              #; a1  = 304, (wrb) a1  <-- 312
      0x8000076c addi    a4, a4, 1              #; a4  = 39, (wrb) a4  <-- 40
                                                #; (f:fpu) ft1  <-- 59.679
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 312, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 59.679 ~~> Doub[0x00100220]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 39, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 31, (wrb) s0  <-- 1
      0x8000074c mul     s0, s0, a7             #; s0  = 1, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 40, s0  = 20, (wrb) s0  <-- 20
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 20
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 312, (wrb) s0  <-- 0x00100228
                                                #; (f:fpu) ft1  <-- 20.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 20.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 39, (wrb) a3  <-- 40
      0x80000768 addi    a1, a1, 8              #; a1  = 312, (wrb) a1  <-- 320
      0x8000076c addi    a4, a4, 1              #; a4  = 40, (wrb) a4  <-- 41
                                                #; (f:fpu) ft1  <-- 62.82
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 320, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 62.82 ~~> Doub[0x00100228]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 40, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 32, (wrb) s0  <-- 2
      0x8000074c mul     s0, s0, a7             #; s0  = 2, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 41, s0  = 40, (wrb) s0  <-- 1
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 1
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 320, (wrb) s0  <-- 0x00100230
                                                #; (f:fpu) ft1  <-- 1.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 1.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 40, (wrb) a3  <-- 41
      0x80000768 addi    a1, a1, 8              #; a1  = 320, (wrb) a1  <-- 328
      0x8000076c addi    a4, a4, 1              #; a4  = 41, (wrb) a4  <-- 42
                                                #; (f:fpu) ft1  <-- 3.141
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 328, a2  = 336, taken, goto 0x80000744
      0x80000760 fsd     ft1, 0(s0)             #; 3.141 ~~> Doub[0x00100230]
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000744 mulhu   s0, a3, a5             #; a3  = 41, a5  = 0xcccccccd
                                                #; (acc) s0  <-- 0x00445413
      0x80000748 srli    s0, s0, 4              #; s0  = 32, (wrb) s0  <-- 2
      0x8000074c mul     s0, s0, a7             #; s0  = 2, a7  = 20
                                                #; (acc) s0  <-- 0x40870433
      0x80000750 sub     s0, a4, s0             #; a4  = 42, s0  = 40, (wrb) s0  <-- 2
      0x80000754 fcvt.d.wu ft1, s0              #; ac1  = 2
      0x8000075c add     s0, a6, a1             #; a6  = 0x001000f0, a1  = 328, (wrb) s0  <-- 0x00100238
                                                #; (f:fpu) ft1  <-- 2.0
      0x80000758 fmul.d  ft1, ft1, ft0          #; ft1  = 2.0, ft0  = 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000764 addi    a3, a3, 1              #; a3  = 41, (wrb) a3  <-- 42
      0x80000768 addi    a1, a1, 8              #; a1  = 328, (wrb) a1  <-- 336
      0x8000076c addi    a4, a4, 1              #; a4  = 42, (wrb) a4  <-- 43
                                                #; (f:fpu) ft1  <-- 6.282
      0x80000770 bne     a1, a2, pc - 44        #; a1  = 336, a2  = 336, not taken
      0x80000760 fsd     ft1, 0(s0)             #; 6.282 ~~> Doub[0x00100238]
; main (test_mat.c:0)
      0x80000774 li      t1, 0                  #; (wrb) t1  <-- 0
      0x80000778 li      t2, 0                  #; (wrb) t2  <-- 0
; matmul (matmul.c:6)
;  in main (test_mat.c:30)
      0x8000077c addi    t4, a6, 168            #; a6  = 0x001000f0, (wrb) t4  <-- 0x00100198
      0x80000780 li      a6, 48                 #; (wrb) a6  <-- 48
; matmul (matmul.c:0)
;  in main (test_mat.c:30)
      0x80000784 li      t3, 56                 #; (wrb) t3  <-- 56
      0x80000788 li      a7, 5                  #; (wrb) a7  <-- 5
      0x8000078c li      a1, 0                  #; (wrb) a1  <-- 0
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x80000790 mul     a2, t2, a6             #; t2  = 0, a6  = 48
                                                #; (acc) a3  <-- 0x00c286b3
      0x80000794 add     a3, t0, a2             #; t0  = 0x00100000, a2  = 0, (wrb) a3  <-- 0x00100000
      0x80000798 ori     a2, a2, 8              #; a2  = 0, (wrb) a2  <-- 8
      0x8000079c add     t5, t0, a2             #; t0  = 0x00100000, a2  = 8, (wrb) t5  <-- 0x00100008
      0x800007a0 addi    t6, a3, 16             #; a3  = 0x00100000, (wrb) t6  <-- 0x00100010
      0x800007a4 addi    a2, a3, 24             #; a3  = 0x00100000, (wrb) a2  <-- 0x00100018
      0x800007a8 addi    a4, a3, 32             #; a3  = 0x00100000, (wrb) a4  <-- 0x00100020
      0x800007ac addi    a5, a3, 40             #; a3  = 0x00100000, (wrb) a5  <-- 0x00100028
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x800007b0 add     s0, a0, t1             #; a0  = 0x00100240, t1  = 0, (wrb) s0  <-- 0x00100240
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 0, (wrb) s1  <-- 0x00100198
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100000]
                                                #; (f:lsu) ft0  <-- 3.141
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x001000f0]
                                                #; (f:lsu) ft1  <-- 3.141
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100008]
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100128], (f:lsu) ft2  <-- 6.282
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 3.141, ft0  = 3.141, (f:lsu) ft3  <-- 25.128
                                                #; (f:fpu) ft0  <-- 9.865881
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 25.128, ft2  = 6.282, ft0  = 9.865881
                                                #; (f:fpu) ft0  <-- 167.7199770
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100010]
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100160], (f:lsu) ft1  <-- 9.423
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100018], (f:lsu) ft2  <-- 47.115
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x00100198], (f:lsu) ft3  <-- 12.564
                                                #; (f:lsu) ft4  <-- 6.282
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100020]
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001d0], (f:lsu) ft5  <-- 15.705
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100028], (f:lsu) ft6  <-- 28.269
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100208], (f:lsu) ft7  <-- 18.846
                                                #; (f:lsu) fa0  <-- 50.256
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 47.115, ft1  = 9.423, ft0  = 167.7199770
                                                #; (f:fpu) ft0  <-- 611.6846220
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 6.282, ft3  = 12.564, ft0  = 611.6846220
                                                #; (f:fpu) ft0  <-- 690.6116700
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 28.269, ft5  = 15.705, ft0  = 690.6116700
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x00100240, a1  = 0, (wrb) s1  <-- 0x00100240
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 0, (wrb) a1  <-- 8
                                                #; (f:fpu) ft0  <-- 1134.5763150
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 50.256, ft7  = 18.846, ft0  = 1134.5763150
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 8, t3  = 56, taken, goto 0x800007b4
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 8, (wrb) s1  <-- 0x001001a0
                                                #; (f:fpu) ft0  <-- 2081.7008910
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 2081.7008910 ~~> Doub[0x00100240]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100000]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x001000f8], (f:lsu) ft0  <-- 3.141
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100008], (f:lsu) ft1  <-- 6.282
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100130], (f:lsu) ft2  <-- 6.282
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 6.282, ft0  = 3.141, (f:lsu) ft3  <-- 28.269
                                                #; (f:fpu) ft0  <-- 19.7317620
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 28.269, ft2  = 6.282, ft0  = 19.7317620
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100010]
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100168], (f:lsu) ft1  <-- 9.423
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100018], (f:fpu) ft0  <-- 197.3176200
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001a0], (f:lsu) ft2  <-- 50.256
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100020], (f:lsu) ft3  <-- 12.564
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001d8], (f:lsu) ft4  <-- 9.423
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100028], (f:lsu) ft5  <-- 15.705
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x00100240, a1  = 8, (wrb) s1  <-- 0x00100248
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100210], (f:lsu) ft6  <-- 31.41
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 8, (wrb) a1  <-- 16
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 50.256, ft1  = 9.423, ft0  = 197.3176200, (f:lsu) ft7  <-- 18.846
                                                #; (f:lsu) fa0  <-- 53.397
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 16, t3  = 56, taken, goto 0x800007b4
                                                #; (f:fpu) ft0  <-- 670.8799080
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 16, (wrb) s1  <-- 0x001001a8
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 9.423, ft3  = 12.564, ft0  = 670.8799080
                                                #; (f:fpu) ft0  <-- 789.2704800
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 31.41, ft5  = 15.705, ft0  = 789.2704800
                                                #; (f:fpu) ft0  <-- 1282.5645300
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 53.397, ft7  = 18.846, ft0  = 1282.5645300
                                                #; (f:fpu) ft0  <-- 2288.8843920
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 2288.8843920 ~~> Doub[0x00100248]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100000]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100100], (f:lsu) ft0  <-- 3.141
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100008], (f:lsu) ft1  <-- 9.423
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100138], (f:lsu) ft2  <-- 6.282
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 9.423, ft0  = 3.141, (f:lsu) ft3  <-- 31.41
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x00100240, a1  = 16, (wrb) s1  <-- 0x00100250
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 16, (wrb) a1  <-- 24
                                                #; (f:fpu) ft0  <-- 29.5976430
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 24, t3  = 56, taken, goto 0x800007b4
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 31.41, ft2  = 6.282, ft0  = 29.5976430
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100010]
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 24, (wrb) s1  <-- 0x001001b0
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100170], (f:lsu) ft1  <-- 9.423
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100018], (f:fpu) ft0  <-- 226.9152630
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001a8], (f:lsu) ft2  <-- 53.397
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100020], (f:lsu) ft3  <-- 12.564
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001e0], (f:lsu) ft4  <-- 12.564
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100028], (f:lsu) ft5  <-- 15.705
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100218], (f:lsu) ft6  <-- 34.551
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 53.397, ft1  = 9.423, ft0  = 226.9152630, (f:lsu) ft7  <-- 18.846
                                                #; (f:lsu) fa0  <-- 56.538
                                                #; (f:fpu) ft0  <-- 730.0751940
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 12.564, ft3  = 12.564, ft0  = 730.0751940
                                                #; (f:fpu) ft0  <-- 887.9292900
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 34.551, ft5  = 15.705, ft0  = 887.9292900
                                                #; (f:fpu) ft0  <-- 1430.5527450
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 56.538, ft7  = 18.846, ft0  = 1430.5527450
                                                #; (f:fpu) ft0  <-- 2496.0678930
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 2496.0678930 ~~> Doub[0x00100250]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100000]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100108], (f:lsu) ft0  <-- 3.141
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x00100240, a1  = 24, (wrb) s1  <-- 0x00100258
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100008], (f:lsu) ft1  <-- 12.564
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 24, (wrb) a1  <-- 32
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100140], (f:lsu) ft2  <-- 6.282
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 12.564, ft0  = 3.141, (f:lsu) ft3  <-- 34.551
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 32, t3  = 56, taken, goto 0x800007b4
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 32, (wrb) s1  <-- 0x001001b8
                                                #; (f:fpu) ft0  <-- 39.4635240
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 34.551, ft2  = 6.282, ft0  = 39.4635240
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100010]
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100178], (f:lsu) ft1  <-- 9.423
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100018], (f:fpu) ft0  <-- 256.5129060
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001b0], (f:lsu) ft2  <-- 56.538
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100020], (f:lsu) ft3  <-- 12.564
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001e8], (f:lsu) ft4  <-- 15.705
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100028], (f:lsu) ft5  <-- 15.705
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100220], (f:lsu) ft6  <-- 37.692
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 56.538, ft1  = 9.423, ft0  = 256.5129060, (f:lsu) ft7  <-- 18.846
                                                #; (f:lsu) fa0  <-- 59.679
                                                #; (f:fpu) ft0  <-- 789.2704800
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 15.705, ft3  = 12.564, ft0  = 789.2704800
                                                #; (f:fpu) ft0  <-- 986.5881000
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 37.692, ft5  = 15.705, ft0  = 986.5881000
                                                #; (f:fpu) ft0  <-- 1578.5409600
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 59.679, ft7  = 18.846, ft0  = 1578.5409600
                                                #; (f:fpu) ft0  <-- 2703.2513940
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 2703.2513940 ~~> Doub[0x00100258]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100000]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100110], (f:lsu) ft0  <-- 3.141
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x00100240, a1  = 32, (wrb) s1  <-- 0x00100260
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100008], (f:lsu) ft1  <-- 15.705
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 32, (wrb) a1  <-- 40
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100148], (f:lsu) ft2  <-- 6.282
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 15.705, ft0  = 3.141, (f:lsu) ft3  <-- 37.692
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 40, t3  = 56, taken, goto 0x800007b4
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 40, (wrb) s1  <-- 0x001001c0
                                                #; (f:fpu) ft0  <-- 49.3294050
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 37.692, ft2  = 6.282, ft0  = 49.3294050
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100010]
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100180], (f:lsu) ft1  <-- 9.423
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100018], (f:fpu) ft0  <-- 286.1105490
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001b8], (f:lsu) ft2  <-- 59.679
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100020], (f:lsu) ft3  <-- 12.564
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001f0], (f:lsu) ft4  <-- 18.846
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100028], (f:lsu) ft5  <-- 15.705
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100228], (f:lsu) ft6  <-- 40.833
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 59.679, ft1  = 9.423, ft0  = 286.1105490, (f:lsu) ft7  <-- 18.846
                                                #; (f:lsu) fa0  <-- 62.82
                                                #; (f:fpu) ft0  <-- 848.4657660
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 18.846, ft3  = 12.564, ft0  = 848.4657660
                                                #; (f:fpu) ft0  <-- 1085.2469100
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 40.833, ft5  = 15.705, ft0  = 1085.2469100
                                                #; (f:fpu) ft0  <-- 1726.5291750
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 62.82, ft7  = 18.846, ft0  = 1726.5291750
                                                #; (f:fpu) ft0  <-- 2910.4348950
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 2910.4348950 ~~> Doub[0x00100260]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100000]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100118], (f:lsu) ft0  <-- 3.141
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x00100240, a1  = 40, (wrb) s1  <-- 0x00100268
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100008], (f:lsu) ft1  <-- 18.846
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 40, (wrb) a1  <-- 48
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100150], (f:lsu) ft2  <-- 6.282
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 18.846, ft0  = 3.141, (f:lsu) ft3  <-- 40.833
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 48, t3  = 56, taken, goto 0x800007b4
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 48, (wrb) s1  <-- 0x001001c8
                                                #; (f:fpu) ft0  <-- 59.1952860
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 40.833, ft2  = 6.282, ft0  = 59.1952860
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100010]
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100188], (f:lsu) ft1  <-- 9.423
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100018], (f:fpu) ft0  <-- 315.7081920
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001c0], (f:lsu) ft2  <-- 62.82
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100020], (f:lsu) ft3  <-- 12.564
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001f8], (f:lsu) ft4  <-- 21.9870000
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100028], (f:lsu) ft5  <-- 15.705
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100230], (f:lsu) ft6  <-- 43.9740000
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 62.82, ft1  = 9.423, ft0  = 315.7081920, (f:lsu) ft7  <-- 18.846
                                                #; (f:lsu) fa0  <-- 3.141
                                                #; (f:fpu) ft0  <-- 907.6610520
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 21.9870000, ft3  = 12.564, ft0  = 907.6610520
                                                #; (f:fpu) ft0  <-- 1183.9057200
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 43.9740000, ft5  = 15.705, ft0  = 1183.9057200
                                                #; (f:fpu) ft0  <-- 1874.5173900
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 3.141, ft7  = 18.846, ft0  = 1874.5173900
                                                #; (f:fpu) ft0  <-- 1933.7126760
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 1933.7126760 ~~> Doub[0x00100268]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100000]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100120], (f:lsu) ft0  <-- 3.141
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x00100240, a1  = 48, (wrb) s1  <-- 0x00100270
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100008], (f:lsu) ft1  <-- 21.9870000
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 48, (wrb) a1  <-- 56
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100158], (f:lsu) ft2  <-- 6.282
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 21.9870000, ft0  = 3.141, (f:lsu) ft3  <-- 43.9740000
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 56, t3  = 56, not taken
                                                #; (f:fpu) ft0  <-- 69.0611670
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 43.9740000, ft2  = 6.282, ft0  = 69.0611670
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100010]
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100190], (f:lsu) ft1  <-- 9.423
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100018], (f:fpu) ft0  <-- 345.3058350
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001c8], (f:lsu) ft2  <-- 3.141
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100020], (f:lsu) ft3  <-- 12.564
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x00100200], (f:lsu) ft4  <-- 25.128
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100028], (f:lsu) ft5  <-- 15.705
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100238], (f:lsu) ft6  <-- 47.115
; matmul (matmul.c:6)
;  in main (test_mat.c:30)
      0x80000810 addi    t2, t2, 1              #; t2  = 0, (wrb) t2  <-- 1
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 3.141, ft1  = 9.423, ft0  = 345.3058350, (f:lsu) ft7  <-- 18.846
      0x80000814 addi    t1, t1, 56             #; t1  = 0, (wrb) t1  <-- 56
; ?? (??:0)
                                                #; (f:lsu) fa0  <-- 6.282
; matmul (matmul.c:6)
;  in main (test_mat.c:30)
      0x80000818 bne     t2, a7, pc - 140       #; t2  = 1, a7  = 5, taken, goto 0x8000078c
; matmul (matmul.c:0)
;  in main (test_mat.c:30)
      0x8000078c li      a1, 0                  #; (wrb) a1  <-- 0
                                                #; (f:fpu) ft0  <-- 374.9034780
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 25.128, ft3  = 12.564, ft0  = 374.9034780
      0x80000790 mul     a2, t2, a6             #; t2  = 1, a6  = 48
                                                #; (f:fpu) ft0  <-- 690.6116700
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 47.115, ft5  = 15.705, ft0  = 690.6116700
                                                #; (acc) a3  <-- 0x00c286b3
      0x80000794 add     a3, t0, a2             #; t0  = 0x00100000, a2  = 48, (wrb) a3  <-- 0x00100030
      0x80000798 ori     a2, a2, 8              #; a2  = 48, (wrb) a2  <-- 56
                                                #; (f:fpu) ft0  <-- 1430.5527450
      0x8000079c add     t5, t0, a2             #; t0  = 0x00100000, a2  = 56, (wrb) t5  <-- 0x00100038
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 6.282, ft7  = 18.846, ft0  = 1430.5527450
      0x800007a0 addi    t6, a3, 16             #; a3  = 0x00100030, (wrb) t6  <-- 0x00100040
      0x800007a4 addi    a2, a3, 24             #; a3  = 0x00100030, (wrb) a2  <-- 0x00100048
      0x800007a8 addi    a4, a3, 32             #; a3  = 0x00100030, (wrb) a4  <-- 0x00100050
                                                #; (f:fpu) ft0  <-- 1548.9433170
      0x800007ac addi    a5, a3, 40             #; a3  = 0x00100030, (wrb) a5  <-- 0x00100058
      0x80000808 fsd     ft0, 0(s1)             #; 1548.9433170 ~~> Doub[0x00100270]
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x800007b0 add     s0, a0, t1             #; a0  = 0x00100240, t1  = 56, (wrb) s0  <-- 0x00100278
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 0, (wrb) s1  <-- 0x00100198
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100030]
                                                #; (f:lsu) ft0  <-- 21.9870000
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x001000f0]
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100038], (f:lsu) ft1  <-- 3.141
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100128], (f:lsu) ft2  <-- 25.128
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 3.141, ft0  = 21.9870000, (f:lsu) ft3  <-- 25.128
                                                #; (f:fpu) ft0  <-- 69.0611670
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 25.128, ft2  = 25.128, ft0  = 69.0611670
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100040]
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100160], (f:lsu) ft1  <-- 28.269
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100048], (f:fpu) ft0  <-- 700.4775510
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x00100198], (f:lsu) ft2  <-- 47.115
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100050], (f:lsu) ft3  <-- 31.41
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001d0], (f:lsu) ft4  <-- 6.282
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100058], (f:lsu) ft5  <-- 34.551
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x00100278, a1  = 0, (wrb) s1  <-- 0x00100278
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100208], (f:lsu) ft6  <-- 28.269
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 0, (wrb) a1  <-- 8
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 47.115, ft1  = 28.269, ft0  = 700.4775510, (f:lsu) ft7  <-- 37.692
                                                #; (f:lsu) fa0  <-- 50.256
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 8, t3  = 56, taken, goto 0x800007b4
                                                #; (f:fpu) ft0  <-- 2032.3714860
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 8, (wrb) s1  <-- 0x001001a0
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 6.282, ft3  = 31.41, ft0  = 2032.3714860
                                                #; (f:fpu) ft0  <-- 2229.6891060
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 28.269, ft5  = 34.551, ft0  = 2229.6891060
                                                #; (f:fpu) ft0  <-- 3206.4113250
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 50.256, ft7  = 37.692, ft0  = 3206.4113250
                                                #; (f:fpu) ft0  <-- 5100.6604770
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 5100.6604770 ~~> Doub[0x00100278]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100030]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x001000f8], (f:lsu) ft0  <-- 21.9870000
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100038], (f:lsu) ft1  <-- 6.282
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100130], (f:lsu) ft2  <-- 25.128
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 6.282, ft0  = 21.9870000, (f:lsu) ft3  <-- 28.269
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x00100278, a1  = 8, (wrb) s1  <-- 0x00100280
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 8, (wrb) a1  <-- 16
                                                #; (f:fpu) ft0  <-- 138.1223340
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 16, t3  = 56, taken, goto 0x800007b4
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 28.269, ft2  = 25.128, ft0  = 138.1223340
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100040]
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 16, (wrb) s1  <-- 0x001001a8
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100168], (f:lsu) ft1  <-- 28.269
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100048], (f:fpu) ft0  <-- 848.4657660
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001a0], (f:lsu) ft2  <-- 50.256
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100050], (f:lsu) ft3  <-- 31.41
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001d8], (f:lsu) ft4  <-- 9.423
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100058], (f:lsu) ft5  <-- 34.551
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100210], (f:lsu) ft6  <-- 31.41
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 50.256, ft1  = 28.269, ft0  = 848.4657660, (f:lsu) ft7  <-- 37.692
                                                #; (f:lsu) fa0  <-- 53.397
                                                #; (f:fpu) ft0  <-- 2269.1526300
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 9.423, ft3  = 31.41, ft0  = 2269.1526300
                                                #; (f:fpu) ft0  <-- 2565.1290600
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 31.41, ft5  = 34.551, ft0  = 2565.1290600
                                                #; (f:fpu) ft0  <-- 3650.3759700
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 53.397, ft7  = 37.692, ft0  = 3650.3759700
                                                #; (f:fpu) ft0  <-- 5663.0156940
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 5663.0156940 ~~> Doub[0x00100280]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100030]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100100], (f:lsu) ft0  <-- 21.9870000
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x00100278, a1  = 16, (wrb) s1  <-- 0x00100288
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100038], (f:lsu) ft1  <-- 9.423
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 16, (wrb) a1  <-- 24
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100138], (f:lsu) ft2  <-- 25.128
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 9.423, ft0  = 21.9870000, (f:lsu) ft3  <-- 31.41
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 24, t3  = 56, taken, goto 0x800007b4
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 24, (wrb) s1  <-- 0x001001b0
                                                #; (f:fpu) ft0  <-- 207.1835010
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 31.41, ft2  = 25.128, ft0  = 207.1835010
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100040]
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100170], (f:lsu) ft1  <-- 28.269
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100048], (f:fpu) ft0  <-- 996.4539810
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001a8], (f:lsu) ft2  <-- 53.397
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100050], (f:lsu) ft3  <-- 31.41
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001e0], (f:lsu) ft4  <-- 12.564
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100058], (f:lsu) ft5  <-- 34.551
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100218], (f:lsu) ft6  <-- 34.551
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 53.397, ft1  = 28.269, ft0  = 996.4539810, (f:lsu) ft7  <-- 37.692
                                                #; (f:lsu) fa0  <-- 56.538
                                                #; (f:fpu) ft0  <-- 2505.9337740
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 12.564, ft3  = 31.41, ft0  = 2505.9337740
                                                #; (f:fpu) ft0  <-- 2900.5690140
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 34.551, ft5  = 34.551, ft0  = 2900.5690140
                                                #; (f:fpu) ft0  <-- 4094.3406150
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 56.538, ft7  = 37.692, ft0  = 4094.3406150
                                                #; (f:fpu) ft0  <-- 6225.3709110
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 6225.3709110 ~~> Doub[0x00100288]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100030]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100108], (f:lsu) ft0  <-- 21.9870000
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x00100278, a1  = 24, (wrb) s1  <-- 0x00100290
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100038], (f:lsu) ft1  <-- 12.564
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 24, (wrb) a1  <-- 32
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100140], (f:lsu) ft2  <-- 25.128
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 12.564, ft0  = 21.9870000, (f:lsu) ft3  <-- 34.551
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 32, t3  = 56, taken, goto 0x800007b4
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 32, (wrb) s1  <-- 0x001001b8
                                                #; (f:fpu) ft0  <-- 276.2446680
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 34.551, ft2  = 25.128, ft0  = 276.2446680
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100040]
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100178], (f:lsu) ft1  <-- 28.269
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100048], (f:fpu) ft0  <-- 1144.4421960
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001b0], (f:lsu) ft2  <-- 56.538
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100050], (f:lsu) ft3  <-- 31.41
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001e8], (f:lsu) ft4  <-- 15.705
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100058], (f:lsu) ft5  <-- 34.551
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100220], (f:lsu) ft6  <-- 37.692
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 56.538, ft1  = 28.269, ft0  = 1144.4421960, (f:lsu) ft7  <-- 37.692
                                                #; (f:lsu) fa0  <-- 59.679
                                                #; (f:fpu) ft0  <-- 2742.7149180
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 15.705, ft3  = 31.41, ft0  = 2742.7149180
                                                #; (f:fpu) ft0  <-- 3236.0089680
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 37.692, ft5  = 34.551, ft0  = 3236.0089680
                                                #; (f:fpu) ft0  <-- 4538.3052600
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 59.679, ft7  = 37.692, ft0  = 4538.3052600
                                                #; (f:fpu) ft0  <-- 6787.7261280
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 6787.7261280 ~~> Doub[0x00100290]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100030]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100110], (f:lsu) ft0  <-- 21.9870000
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x00100278, a1  = 32, (wrb) s1  <-- 0x00100298
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100038], (f:lsu) ft1  <-- 15.705
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 32, (wrb) a1  <-- 40
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100148], (f:lsu) ft2  <-- 25.128
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 15.705, ft0  = 21.9870000, (f:lsu) ft3  <-- 37.692
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 40, t3  = 56, taken, goto 0x800007b4
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 40, (wrb) s1  <-- 0x001001c0
                                                #; (f:fpu) ft0  <-- 345.3058350
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 37.692, ft2  = 25.128, ft0  = 345.3058350
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100040]
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100180], (f:lsu) ft1  <-- 28.269
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100048], (f:fpu) ft0  <-- 1292.4304110
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001b8], (f:lsu) ft2  <-- 59.679
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100050], (f:lsu) ft3  <-- 31.41
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001f0], (f:lsu) ft4  <-- 18.846
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100058], (f:lsu) ft5  <-- 34.551
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100228], (f:lsu) ft6  <-- 40.833
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 59.679, ft1  = 28.269, ft0  = 1292.4304110, (f:lsu) ft7  <-- 37.692
                                                #; (f:lsu) fa0  <-- 62.82
                                                #; (f:fpu) ft0  <-- 2979.4960620
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 18.846, ft3  = 31.41, ft0  = 2979.4960620
                                                #; (f:fpu) ft0  <-- 3571.4489220
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 40.833, ft5  = 34.551, ft0  = 3571.4489220
                                                #; (f:fpu) ft0  <-- 4982.2699050
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 62.82, ft7  = 37.692, ft0  = 4982.2699050
                                                #; (f:fpu) ft0  <-- 7350.0813450
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 7350.0813450 ~~> Doub[0x00100298]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100030]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100118], (f:lsu) ft0  <-- 21.9870000
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x00100278, a1  = 40, (wrb) s1  <-- 0x001002a0
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100038], (f:lsu) ft1  <-- 18.846
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 40, (wrb) a1  <-- 48
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100150], (f:lsu) ft2  <-- 25.128
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 18.846, ft0  = 21.9870000, (f:lsu) ft3  <-- 40.833
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 48, t3  = 56, taken, goto 0x800007b4
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 48, (wrb) s1  <-- 0x001001c8
                                                #; (f:fpu) ft0  <-- 414.3670020
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 40.833, ft2  = 25.128, ft0  = 414.3670020
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100040]
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100188], (f:lsu) ft1  <-- 28.269
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100048], (f:fpu) ft0  <-- 1440.4186260
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001c0], (f:lsu) ft2  <-- 62.82
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100050], (f:lsu) ft3  <-- 31.41
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001f8], (f:lsu) ft4  <-- 21.9870000
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100058], (f:lsu) ft5  <-- 34.551
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100230], (f:lsu) ft6  <-- 43.9740000
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 62.82, ft1  = 28.269, ft0  = 1440.4186260, (f:lsu) ft7  <-- 37.692
                                                #; (f:lsu) fa0  <-- 3.141
                                                #; (f:fpu) ft0  <-- 3216.2772060
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 21.9870000, ft3  = 31.41, ft0  = 3216.2772060
                                                #; (f:fpu) ft0  <-- 3906.8888760
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 43.9740000, ft5  = 34.551, ft0  = 3906.8888760
                                                #; (f:fpu) ft0  <-- 5426.2345500
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 3.141, ft7  = 37.692, ft0  = 5426.2345500
                                                #; (f:fpu) ft0  <-- 5544.6251220
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 5544.6251220 ~~> Doub[0x001002a0]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100030]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100120], (f:lsu) ft0  <-- 21.9870000
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x00100278, a1  = 48, (wrb) s1  <-- 0x001002a8
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100038], (f:lsu) ft1  <-- 21.9870000
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 48, (wrb) a1  <-- 56
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100158], (f:lsu) ft2  <-- 25.128
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 21.9870000, ft0  = 21.9870000, (f:lsu) ft3  <-- 43.9740000
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 56, t3  = 56, not taken
                                                #; (f:fpu) ft0  <-- 483.4281690
; matmul (matmul.c:6)
;  in main (test_mat.c:30)
      0x80000810 addi    t2, t2, 1              #; t2  = 1, (wrb) t2  <-- 2
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 43.9740000, ft2  = 25.128, ft0  = 483.4281690
      0x80000814 addi    t1, t1, 56             #; t1  = 56, (wrb) t1  <-- 112
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100040]
      0x80000818 bne     t2, a7, pc - 140       #; t2  = 2, a7  = 5, taken, goto 0x8000078c
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100190], (f:lsu) ft1  <-- 28.269
; matmul (matmul.c:0)
;  in main (test_mat.c:30)
      0x8000078c li      a1, 0                  #; (wrb) a1  <-- 0
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100048], (f:fpu) ft0  <-- 1588.4068410
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001c8], (f:lsu) ft2  <-- 3.141
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100050], (f:lsu) ft3  <-- 31.41
      0x80000790 mul     a2, t2, a6             #; t2  = 2, a6  = 48
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x00100200], (f:lsu) ft4  <-- 25.128
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100058], (f:lsu) ft5  <-- 34.551
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100238], (f:lsu) ft6  <-- 47.115
                                                #; (acc) a3  <-- 0x00c286b3
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 3.141, ft1  = 28.269, ft0  = 1588.4068410, (f:lsu) ft7  <-- 37.692
      0x80000794 add     a3, t0, a2             #; t0  = 0x00100000, a2  = 96, (wrb) a3  <-- 0x00100060
; ?? (??:0)
                                                #; (f:lsu) fa0  <-- 6.282
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x80000798 ori     a2, a2, 8              #; a2  = 96, (wrb) a2  <-- 104
      0x8000079c add     t5, t0, a2             #; t0  = 0x00100000, a2  = 104, (wrb) t5  <-- 0x00100068
                                                #; (f:fpu) ft0  <-- 1677.1997700
      0x800007a0 addi    t6, a3, 16             #; a3  = 0x00100060, (wrb) t6  <-- 0x00100070
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 25.128, ft3  = 31.41, ft0  = 1677.1997700
      0x800007a4 addi    a2, a3, 24             #; a3  = 0x00100060, (wrb) a2  <-- 0x00100078
      0x800007a8 addi    a4, a3, 32             #; a3  = 0x00100060, (wrb) a4  <-- 0x00100080
      0x800007ac addi    a5, a3, 40             #; a3  = 0x00100060, (wrb) a5  <-- 0x00100088
                                                #; (f:fpu) ft0  <-- 2466.4702500
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x800007b0 add     s0, a0, t1             #; a0  = 0x00100240, t1  = 112, (wrb) s0  <-- 0x001002b0
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 47.115, ft5  = 34.551, ft0  = 2466.4702500
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 0, (wrb) s1  <-- 0x00100198
                                                #; (f:fpu) ft0  <-- 4094.3406150
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 6.282, ft7  = 37.692, ft0  = 4094.3406150
                                                #; (f:fpu) ft0  <-- 4331.1217590
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 4331.1217590 ~~> Doub[0x001002a8]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100060]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x001000f0], (f:lsu) ft0  <-- 40.833
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100068], (f:lsu) ft1  <-- 3.141
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100128], (f:lsu) ft2  <-- 43.9740000
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 3.141, ft0  = 40.833, (f:lsu) ft3  <-- 25.128
                                                #; (f:fpu) ft0  <-- 128.2564530
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 25.128, ft2  = 43.9740000, ft0  = 128.2564530
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100070]
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100160], (f:lsu) ft1  <-- 47.115
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x001002b0, a1  = 0, (wrb) s1  <-- 0x001002b0
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100078], (f:fpu) ft0  <-- 1233.2351250
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 0, (wrb) a1  <-- 8
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x00100198], (f:lsu) ft2  <-- 47.115
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100080], (f:lsu) ft3  <-- 50.256
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 8, t3  = 56, taken, goto 0x800007b4
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001d0], (f:lsu) ft4  <-- 6.282
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100088], (f:lsu) ft5  <-- 53.397
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 8, (wrb) s1  <-- 0x001001a0
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100208], (f:lsu) ft6  <-- 28.269
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 47.115, ft1  = 47.115, ft0  = 1233.2351250, (f:lsu) ft7  <-- 56.538
                                                #; (f:lsu) fa0  <-- 50.256
                                                #; (f:fpu) ft0  <-- 3453.0583500
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 6.282, ft3  = 50.256, ft0  = 3453.0583500
                                                #; (f:fpu) ft0  <-- 3768.7665420
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 28.269, ft5  = 53.397, ft0  = 3768.7665420
                                                #; (f:fpu) ft0  <-- 5278.2463350
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 50.256, ft7  = 56.538, ft0  = 5278.2463350
                                                #; (f:fpu) ft0  <-- 8119.6200630
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 8119.6200630 ~~> Doub[0x001002b0]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100060]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x001000f8], (f:lsu) ft0  <-- 40.833
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x001002b0, a1  = 8, (wrb) s1  <-- 0x001002b8
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100068], (f:lsu) ft1  <-- 6.282
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 8, (wrb) a1  <-- 16
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100130], (f:lsu) ft2  <-- 43.9740000
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 6.282, ft0  = 40.833, (f:lsu) ft3  <-- 28.269
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 16, t3  = 56, taken, goto 0x800007b4
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 16, (wrb) s1  <-- 0x001001a8
                                                #; (f:fpu) ft0  <-- 256.5129060
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 28.269, ft2  = 43.9740000, ft0  = 256.5129060
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100070]
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100168], (f:lsu) ft1  <-- 47.115
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100078], (f:fpu) ft0  <-- 1499.6139120
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001a0], (f:lsu) ft2  <-- 50.256
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100080], (f:lsu) ft3  <-- 50.256
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001d8], (f:lsu) ft4  <-- 9.423
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100088], (f:lsu) ft5  <-- 53.397
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100210], (f:lsu) ft6  <-- 31.41
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 50.256, ft1  = 47.115, ft0  = 1499.6139120, (f:lsu) ft7  <-- 56.538
                                                #; (f:lsu) fa0  <-- 53.397
                                                #; (f:fpu) ft0  <-- 3867.4253520
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 9.423, ft3  = 50.256, ft0  = 3867.4253520
                                                #; (f:fpu) ft0  <-- 4340.9876400
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 31.41, ft5  = 53.397, ft0  = 4340.9876400
                                                #; (f:fpu) ft0  <-- 6018.1874100
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 53.397, ft7  = 56.538, ft0  = 6018.1874100
                                                #; (f:fpu) ft0  <-- 9037.1469960
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 9037.1469960 ~~> Doub[0x001002b8]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100060]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100100], (f:lsu) ft0  <-- 40.833
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x001002b0, a1  = 16, (wrb) s1  <-- 0x001002c0
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100068], (f:lsu) ft1  <-- 9.423
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 16, (wrb) a1  <-- 24
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100138], (f:lsu) ft2  <-- 43.9740000
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 9.423, ft0  = 40.833, (f:lsu) ft3  <-- 31.41
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 24, t3  = 56, taken, goto 0x800007b4
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 24, (wrb) s1  <-- 0x001001b0
                                                #; (f:fpu) ft0  <-- 384.7693590
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 31.41, ft2  = 43.9740000, ft0  = 384.7693590
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100070]
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100170], (f:lsu) ft1  <-- 47.115
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100078], (f:fpu) ft0  <-- 1765.9926990
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001a8], (f:lsu) ft2  <-- 53.397
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100080], (f:lsu) ft3  <-- 50.256
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001e0], (f:lsu) ft4  <-- 12.564
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100088], (f:lsu) ft5  <-- 53.397
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100218], (f:lsu) ft6  <-- 34.551
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 53.397, ft1  = 47.115, ft0  = 1765.9926990, (f:lsu) ft7  <-- 56.538
                                                #; (f:lsu) fa0  <-- 56.538
                                                #; (f:fpu) ft0  <-- 4281.7923540
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 12.564, ft3  = 50.256, ft0  = 4281.7923540
                                                #; (f:fpu) ft0  <-- 4913.2087380
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 34.551, ft5  = 53.397, ft0  = 4913.2087380
                                                #; (f:fpu) ft0  <-- 6758.1284850
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 56.538, ft7  = 56.538, ft0  = 6758.1284850
                                                #; (f:fpu) ft0  <-- 9954.6739290
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 9954.6739290 ~~> Doub[0x001002c0]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100060]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100108], (f:lsu) ft0  <-- 40.833
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x001002b0, a1  = 24, (wrb) s1  <-- 0x001002c8
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100068], (f:lsu) ft1  <-- 12.564
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 24, (wrb) a1  <-- 32
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100140], (f:lsu) ft2  <-- 43.9740000
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 12.564, ft0  = 40.833, (f:lsu) ft3  <-- 34.551
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 32, t3  = 56, taken, goto 0x800007b4
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 32, (wrb) s1  <-- 0x001001b8
                                                #; (f:fpu) ft0  <-- 513.0258120
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 34.551, ft2  = 43.9740000, ft0  = 513.0258120
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100070]
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100178], (f:lsu) ft1  <-- 47.115
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100078], (f:fpu) ft0  <-- 2032.3714860
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001b0], (f:lsu) ft2  <-- 56.538
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100080], (f:lsu) ft3  <-- 50.256
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001e8], (f:lsu) ft4  <-- 15.705
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100088], (f:lsu) ft5  <-- 53.397
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100220], (f:lsu) ft6  <-- 37.692
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 56.538, ft1  = 47.115, ft0  = 2032.3714860, (f:lsu) ft7  <-- 56.538
                                                #; (f:lsu) fa0  <-- 59.679
                                                #; (f:fpu) ft0  <-- 4696.1593560
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 15.705, ft3  = 50.256, ft0  = 4696.1593560
                                                #; (f:fpu) ft0  <-- 5485.4298360
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 37.692, ft5  = 53.397, ft0  = 5485.4298360
                                                #; (f:fpu) ft0  <-- 7498.0695600
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 59.679, ft7  = 56.538, ft0  = 7498.0695600
                                                #; (f:fpu) ft0  <-- 10872.2008620
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 10872.2008620 ~~> Doub[0x001002c8]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100060]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100110], (f:lsu) ft0  <-- 40.833
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x001002b0, a1  = 32, (wrb) s1  <-- 0x001002d0
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100068], (f:lsu) ft1  <-- 15.705
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 32, (wrb) a1  <-- 40
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100148], (f:lsu) ft2  <-- 43.9740000
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 15.705, ft0  = 40.833, (f:lsu) ft3  <-- 37.692
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 40, t3  = 56, taken, goto 0x800007b4
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 40, (wrb) s1  <-- 0x001001c0
                                                #; (f:fpu) ft0  <-- 641.2822650
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 37.692, ft2  = 43.9740000, ft0  = 641.2822650
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100070]
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100180], (f:lsu) ft1  <-- 47.115
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100078], (f:fpu) ft0  <-- 2298.7502730
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001b8], (f:lsu) ft2  <-- 59.679
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100080], (f:lsu) ft3  <-- 50.256
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001f0], (f:lsu) ft4  <-- 18.846
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100088], (f:lsu) ft5  <-- 53.397
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100228], (f:lsu) ft6  <-- 40.833
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 59.679, ft1  = 47.115, ft0  = 2298.7502730, (f:lsu) ft7  <-- 56.538
                                                #; (f:lsu) fa0  <-- 62.82
                                                #; (f:fpu) ft0  <-- 5110.5263580
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 18.846, ft3  = 50.256, ft0  = 5110.5263580
                                                #; (f:fpu) ft0  <-- 6057.6509340
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 40.833, ft5  = 53.397, ft0  = 6057.6509340
                                                #; (f:fpu) ft0  <-- 8238.0106350
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 62.82, ft7  = 56.538, ft0  = 8238.0106350
                                                #; (f:fpu) ft0  <-- 11789.7277950
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 11789.7277950 ~~> Doub[0x001002d0]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100060]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100118], (f:lsu) ft0  <-- 40.833
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x001002b0, a1  = 40, (wrb) s1  <-- 0x001002d8
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100068], (f:lsu) ft1  <-- 18.846
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 40, (wrb) a1  <-- 48
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100150], (f:lsu) ft2  <-- 43.9740000
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 18.846, ft0  = 40.833, (f:lsu) ft3  <-- 40.833
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 48, t3  = 56, taken, goto 0x800007b4
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 48, (wrb) s1  <-- 0x001001c8
                                                #; (f:fpu) ft0  <-- 769.5387180
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 40.833, ft2  = 43.9740000, ft0  = 769.5387180
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100070]
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100188], (f:lsu) ft1  <-- 47.115
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100078], (f:fpu) ft0  <-- 2565.1290600
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001c0], (f:lsu) ft2  <-- 62.82
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100080], (f:lsu) ft3  <-- 50.256
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001f8], (f:lsu) ft4  <-- 21.9870000
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100088], (f:lsu) ft5  <-- 53.397
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100230], (f:lsu) ft6  <-- 43.9740000
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 62.82, ft1  = 47.115, ft0  = 2565.1290600, (f:lsu) ft7  <-- 56.538
                                                #; (f:lsu) fa0  <-- 3.141
                                                #; (f:fpu) ft0  <-- 5524.8933600
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 21.9870000, ft3  = 50.256, ft0  = 5524.8933600
                                                #; (f:fpu) ft0  <-- 6629.8720320
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 43.9740000, ft5  = 53.397, ft0  = 6629.8720320
                                                #; (f:fpu) ft0  <-- 8977.9517100
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 3.141, ft7  = 56.538, ft0  = 8977.9517100
                                                #; (f:fpu) ft0  <-- 9155.5375680
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 9155.5375680 ~~> Doub[0x001002d8]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100060]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100120], (f:lsu) ft0  <-- 40.833
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x001002b0, a1  = 48, (wrb) s1  <-- 0x001002e0
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100068], (f:lsu) ft1  <-- 21.9870000
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 48, (wrb) a1  <-- 56
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100158], (f:lsu) ft2  <-- 43.9740000
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 21.9870000, ft0  = 40.833, (f:lsu) ft3  <-- 43.9740000
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 56, t3  = 56, not taken
                                                #; (f:fpu) ft0  <-- 897.7951710
; matmul (matmul.c:6)
;  in main (test_mat.c:30)
      0x80000810 addi    t2, t2, 1              #; t2  = 2, (wrb) t2  <-- 3
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 43.9740000, ft2  = 43.9740000, ft0  = 897.7951710
      0x80000814 addi    t1, t1, 56             #; t1  = 112, (wrb) t1  <-- 168
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x00100070]
      0x80000818 bne     t2, a7, pc - 140       #; t2  = 3, a7  = 5, taken, goto 0x8000078c
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100190], (f:lsu) ft1  <-- 47.115
; matmul (matmul.c:0)
;  in main (test_mat.c:30)
      0x8000078c li      a1, 0                  #; (wrb) a1  <-- 0
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100078], (f:fpu) ft0  <-- 2831.5078470
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001c8], (f:lsu) ft2  <-- 3.141
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x00100080], (f:lsu) ft3  <-- 50.256
      0x80000790 mul     a2, t2, a6             #; t2  = 3, a6  = 48
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x00100200], (f:lsu) ft4  <-- 25.128
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x00100088], (f:lsu) ft5  <-- 53.397
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100238], (f:lsu) ft6  <-- 47.115
                                                #; (acc) a3  <-- 0x00c286b3
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 3.141, ft1  = 47.115, ft0  = 2831.5078470, (f:lsu) ft7  <-- 56.538
      0x80000794 add     a3, t0, a2             #; t0  = 0x00100000, a2  = 144, (wrb) a3  <-- 0x00100090
; ?? (??:0)
                                                #; (f:lsu) fa0  <-- 6.282
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x80000798 ori     a2, a2, 8              #; a2  = 144, (wrb) a2  <-- 152
      0x8000079c add     t5, t0, a2             #; t0  = 0x00100000, a2  = 152, (wrb) t5  <-- 0x00100098
                                                #; (f:fpu) ft0  <-- 2979.4960620
      0x800007a0 addi    t6, a3, 16             #; a3  = 0x00100090, (wrb) t6  <-- 0x001000a0
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 25.128, ft3  = 50.256, ft0  = 2979.4960620
      0x800007a4 addi    a2, a3, 24             #; a3  = 0x00100090, (wrb) a2  <-- 0x001000a8
      0x800007a8 addi    a4, a3, 32             #; a3  = 0x00100090, (wrb) a4  <-- 0x001000b0
      0x800007ac addi    a5, a3, 40             #; a3  = 0x00100090, (wrb) a5  <-- 0x001000b8
                                                #; (f:fpu) ft0  <-- 4242.3288300
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x800007b0 add     s0, a0, t1             #; a0  = 0x00100240, t1  = 168, (wrb) s0  <-- 0x001002e8
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 47.115, ft5  = 53.397, ft0  = 4242.3288300
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 0, (wrb) s1  <-- 0x00100198
                                                #; (f:fpu) ft0  <-- 6758.1284850
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 6.282, ft7  = 56.538, ft0  = 6758.1284850
                                                #; (f:fpu) ft0  <-- 7113.3002010
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 7113.3002010 ~~> Doub[0x001002e0]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100090]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x001000f0], (f:lsu) ft0  <-- 59.679
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100098], (f:lsu) ft1  <-- 3.141
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100128], (f:lsu) ft2  <-- 62.82
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 3.141, ft0  = 59.679, (f:lsu) ft3  <-- 25.128
                                                #; (f:fpu) ft0  <-- 187.4517390
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 25.128, ft2  = 62.82, ft0  = 187.4517390
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x001000a0]
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100160], (f:lsu) ft1  <-- 3.141
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x001002e8, a1  = 0, (wrb) s1  <-- 0x001002e8
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x001000a8], (f:fpu) ft0  <-- 1765.9926990
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 0, (wrb) a1  <-- 8
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x00100198], (f:lsu) ft2  <-- 47.115
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x001000b0], (f:lsu) ft3  <-- 6.282
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 8, t3  = 56, taken, goto 0x800007b4
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001d0], (f:lsu) ft4  <-- 6.282
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x001000b8], (f:lsu) ft5  <-- 9.423
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 8, (wrb) s1  <-- 0x001001a0
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100208], (f:lsu) ft6  <-- 28.269
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 47.115, ft1  = 3.141, ft0  = 1765.9926990, (f:lsu) ft7  <-- 12.564
                                                #; (f:lsu) fa0  <-- 50.256
                                                #; (f:fpu) ft0  <-- 1913.9809140
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 6.282, ft3  = 6.282, ft0  = 1913.9809140
                                                #; (f:fpu) ft0  <-- 1953.4444380
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 28.269, ft5  = 9.423, ft0  = 1953.4444380
                                                #; (f:fpu) ft0  <-- 2219.8232250
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 50.256, ft7  = 12.564, ft0  = 2219.8232250
                                                #; (f:fpu) ft0  <-- 2851.2396090
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 2851.2396090 ~~> Doub[0x001002e8]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100090]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x001000f8], (f:lsu) ft0  <-- 59.679
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x001002e8, a1  = 8, (wrb) s1  <-- 0x001002f0
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100098], (f:lsu) ft1  <-- 6.282
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 8, (wrb) a1  <-- 16
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100130], (f:lsu) ft2  <-- 62.82
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 6.282, ft0  = 59.679, (f:lsu) ft3  <-- 28.269
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 16, t3  = 56, taken, goto 0x800007b4
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 16, (wrb) s1  <-- 0x001001a8
                                                #; (f:fpu) ft0  <-- 374.9034780
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 28.269, ft2  = 62.82, ft0  = 374.9034780
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x001000a0]
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100168], (f:lsu) ft1  <-- 3.141
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x001000a8], (f:fpu) ft0  <-- 2150.7620580
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001a0], (f:lsu) ft2  <-- 50.256
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x001000b0], (f:lsu) ft3  <-- 6.282
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001d8], (f:lsu) ft4  <-- 9.423
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x001000b8], (f:lsu) ft5  <-- 9.423
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100210], (f:lsu) ft6  <-- 31.41
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 50.256, ft1  = 3.141, ft0  = 2150.7620580, (f:lsu) ft7  <-- 12.564
                                                #; (f:lsu) fa0  <-- 53.397
                                                #; (f:fpu) ft0  <-- 2308.6161540
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 9.423, ft3  = 6.282, ft0  = 2308.6161540
                                                #; (f:fpu) ft0  <-- 2367.8114400
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 31.41, ft5  = 9.423, ft0  = 2367.8114400
                                                #; (f:fpu) ft0  <-- 2663.7878700
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 53.397, ft7  = 12.564, ft0  = 2663.7878700
                                                #; (f:fpu) ft0  <-- 3334.6677780
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 3334.6677780 ~~> Doub[0x001002f0]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100090]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100100], (f:lsu) ft0  <-- 59.679
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x001002e8, a1  = 16, (wrb) s1  <-- 0x001002f8
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100098], (f:lsu) ft1  <-- 9.423
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 16, (wrb) a1  <-- 24
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100138], (f:lsu) ft2  <-- 62.82
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 9.423, ft0  = 59.679, (f:lsu) ft3  <-- 31.41
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 24, t3  = 56, taken, goto 0x800007b4
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 24, (wrb) s1  <-- 0x001001b0
                                                #; (f:fpu) ft0  <-- 562.3552170
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 31.41, ft2  = 62.82, ft0  = 562.3552170
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x001000a0]
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100170], (f:lsu) ft1  <-- 3.141
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x001000a8], (f:fpu) ft0  <-- 2535.5314170
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001a8], (f:lsu) ft2  <-- 53.397
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x001000b0], (f:lsu) ft3  <-- 6.282
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001e0], (f:lsu) ft4  <-- 12.564
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x001000b8], (f:lsu) ft5  <-- 9.423
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100218], (f:lsu) ft6  <-- 34.551
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 53.397, ft1  = 3.141, ft0  = 2535.5314170, (f:lsu) ft7  <-- 12.564
                                                #; (f:lsu) fa0  <-- 56.538
                                                #; (f:fpu) ft0  <-- 2703.2513940
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 12.564, ft3  = 6.282, ft0  = 2703.2513940
                                                #; (f:fpu) ft0  <-- 2782.1784420
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 34.551, ft5  = 9.423, ft0  = 2782.1784420
                                                #; (f:fpu) ft0  <-- 3107.7525150
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 56.538, ft7  = 12.564, ft0  = 3107.7525150
                                                #; (f:fpu) ft0  <-- 3818.0959470
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 3818.0959470 ~~> Doub[0x001002f8]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100090]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100108], (f:lsu) ft0  <-- 59.679
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x001002e8, a1  = 24, (wrb) s1  <-- 0x00100300
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100098], (f:lsu) ft1  <-- 12.564
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 24, (wrb) a1  <-- 32
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100140], (f:lsu) ft2  <-- 62.82
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 12.564, ft0  = 59.679, (f:lsu) ft3  <-- 34.551
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 32, t3  = 56, taken, goto 0x800007b4
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 32, (wrb) s1  <-- 0x001001b8
                                                #; (f:fpu) ft0  <-- 749.8069560
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 34.551, ft2  = 62.82, ft0  = 749.8069560
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x001000a0]
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100178], (f:lsu) ft1  <-- 3.141
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x001000a8], (f:fpu) ft0  <-- 2920.3007760
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001b0], (f:lsu) ft2  <-- 56.538
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x001000b0], (f:lsu) ft3  <-- 6.282
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001e8], (f:lsu) ft4  <-- 15.705
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x001000b8], (f:lsu) ft5  <-- 9.423
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100220], (f:lsu) ft6  <-- 37.692
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 56.538, ft1  = 3.141, ft0  = 2920.3007760, (f:lsu) ft7  <-- 12.564
                                                #; (f:lsu) fa0  <-- 59.679
                                                #; (f:fpu) ft0  <-- 3097.8866340
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 15.705, ft3  = 6.282, ft0  = 3097.8866340
                                                #; (f:fpu) ft0  <-- 3196.5454440
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 37.692, ft5  = 9.423, ft0  = 3196.5454440
                                                #; (f:fpu) ft0  <-- 3551.7171600
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 59.679, ft7  = 12.564, ft0  = 3551.7171600
                                                #; (f:fpu) ft0  <-- 4301.5241160
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 4301.5241160 ~~> Doub[0x00100300]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100090]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100110], (f:lsu) ft0  <-- 59.679
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x001002e8, a1  = 32, (wrb) s1  <-- 0x00100308
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100098], (f:lsu) ft1  <-- 15.705
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 32, (wrb) a1  <-- 40
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100148], (f:lsu) ft2  <-- 62.82
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 15.705, ft0  = 59.679, (f:lsu) ft3  <-- 37.692
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 40, t3  = 56, taken, goto 0x800007b4
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 40, (wrb) s1  <-- 0x001001c0
                                                #; (f:fpu) ft0  <-- 937.2586950
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 37.692, ft2  = 62.82, ft0  = 937.2586950
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x001000a0]
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100180], (f:lsu) ft1  <-- 3.141
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x001000a8], (f:fpu) ft0  <-- 3305.0701350
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001b8], (f:lsu) ft2  <-- 59.679
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x001000b0], (f:lsu) ft3  <-- 6.282
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001f0], (f:lsu) ft4  <-- 18.846
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x001000b8], (f:lsu) ft5  <-- 9.423
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100228], (f:lsu) ft6  <-- 40.833
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 59.679, ft1  = 3.141, ft0  = 3305.0701350, (f:lsu) ft7  <-- 12.564
                                                #; (f:lsu) fa0  <-- 62.82
                                                #; (f:fpu) ft0  <-- 3492.5218740
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 18.846, ft3  = 6.282, ft0  = 3492.5218740
                                                #; (f:fpu) ft0  <-- 3610.9124460
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 40.833, ft5  = 9.423, ft0  = 3610.9124460
                                                #; (f:fpu) ft0  <-- 3995.6818050
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 62.82, ft7  = 12.564, ft0  = 3995.6818050
                                                #; (f:fpu) ft0  <-- 4784.9522850
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 4784.9522850 ~~> Doub[0x00100308]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100090]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100118], (f:lsu) ft0  <-- 59.679
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x001002e8, a1  = 40, (wrb) s1  <-- 0x00100310
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100098], (f:lsu) ft1  <-- 18.846
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 40, (wrb) a1  <-- 48
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100150], (f:lsu) ft2  <-- 62.82
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 18.846, ft0  = 59.679, (f:lsu) ft3  <-- 40.833
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 48, t3  = 56, taken, goto 0x800007b4
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 48, (wrb) s1  <-- 0x001001c8
                                                #; (f:fpu) ft0  <-- 1124.7104340
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 40.833, ft2  = 62.82, ft0  = 1124.7104340
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x001000a0]
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100188], (f:lsu) ft1  <-- 3.141
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x001000a8], (f:fpu) ft0  <-- 3689.8394940
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001c0], (f:lsu) ft2  <-- 62.82
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x001000b0], (f:lsu) ft3  <-- 6.282
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001f8], (f:lsu) ft4  <-- 21.9870000
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x001000b8], (f:lsu) ft5  <-- 9.423
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100230], (f:lsu) ft6  <-- 43.9740000
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 62.82, ft1  = 3.141, ft0  = 3689.8394940, (f:lsu) ft7  <-- 12.564
                                                #; (f:lsu) fa0  <-- 3.141
                                                #; (f:fpu) ft0  <-- 3887.1571140
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 21.9870000, ft3  = 6.282, ft0  = 3887.1571140
                                                #; (f:fpu) ft0  <-- 4025.2794480
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 43.9740000, ft5  = 9.423, ft0  = 4025.2794480
                                                #; (f:fpu) ft0  <-- 4439.6464500
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 3.141, ft7  = 12.564, ft0  = 4439.6464500
                                                #; (f:fpu) ft0  <-- 4479.1099740
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 4479.1099740 ~~> Doub[0x00100310]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x00100090]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100120], (f:lsu) ft0  <-- 59.679
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x001002e8, a1  = 48, (wrb) s1  <-- 0x00100318
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x00100098], (f:lsu) ft1  <-- 21.9870000
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 48, (wrb) a1  <-- 56
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100158], (f:lsu) ft2  <-- 62.82
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 21.9870000, ft0  = 59.679, (f:lsu) ft3  <-- 43.9740000
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 56, t3  = 56, not taken
                                                #; (f:fpu) ft0  <-- 1312.1621730
; matmul (matmul.c:6)
;  in main (test_mat.c:30)
      0x80000810 addi    t2, t2, 1              #; t2  = 3, (wrb) t2  <-- 4
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 43.9740000, ft2  = 62.82, ft0  = 1312.1621730
      0x80000814 addi    t1, t1, 56             #; t1  = 168, (wrb) t1  <-- 224
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x001000a0]
      0x80000818 bne     t2, a7, pc - 140       #; t2  = 4, a7  = 5, taken, goto 0x8000078c
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100190], (f:lsu) ft1  <-- 3.141
; matmul (matmul.c:0)
;  in main (test_mat.c:30)
      0x8000078c li      a1, 0                  #; (wrb) a1  <-- 0
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x001000a8], (f:fpu) ft0  <-- 4074.6088530
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001c8], (f:lsu) ft2  <-- 3.141
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x001000b0], (f:lsu) ft3  <-- 6.282
      0x80000790 mul     a2, t2, a6             #; t2  = 4, a6  = 48
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x00100200], (f:lsu) ft4  <-- 25.128
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x001000b8], (f:lsu) ft5  <-- 9.423
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100238], (f:lsu) ft6  <-- 47.115
                                                #; (acc) a3  <-- 0x00c286b3
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 3.141, ft1  = 3.141, ft0  = 4074.6088530, (f:lsu) ft7  <-- 12.564
      0x80000794 add     a3, t0, a2             #; t0  = 0x00100000, a2  = 192, (wrb) a3  <-- 0x001000c0
; ?? (??:0)
                                                #; (f:lsu) fa0  <-- 6.282
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x80000798 ori     a2, a2, 8              #; a2  = 192, (wrb) a2  <-- 200
      0x8000079c add     t5, t0, a2             #; t0  = 0x00100000, a2  = 200, (wrb) t5  <-- 0x001000c8
                                                #; (f:fpu) ft0  <-- 4084.4747340
      0x800007a0 addi    t6, a3, 16             #; a3  = 0x001000c0, (wrb) t6  <-- 0x001000d0
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 25.128, ft3  = 6.282, ft0  = 4084.4747340
      0x800007a4 addi    a2, a3, 24             #; a3  = 0x001000c0, (wrb) a2  <-- 0x001000d8
      0x800007a8 addi    a4, a3, 32             #; a3  = 0x001000c0, (wrb) a4  <-- 0x001000e0
      0x800007ac addi    a5, a3, 40             #; a3  = 0x001000c0, (wrb) a5  <-- 0x001000e8
                                                #; (f:fpu) ft0  <-- 4242.3288300
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x800007b0 add     s0, a0, t1             #; a0  = 0x00100240, t1  = 224, (wrb) s0  <-- 0x00100320
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 47.115, ft5  = 9.423, ft0  = 4242.3288300
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 0, (wrb) s1  <-- 0x00100198
                                                #; (f:fpu) ft0  <-- 4686.2934750
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 6.282, ft7  = 12.564, ft0  = 4686.2934750
                                                #; (f:fpu) ft0  <-- 4765.2205230
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 4765.2205230 ~~> Doub[0x00100318]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x001000c0]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x001000f0], (f:lsu) ft0  <-- 15.705
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x001000c8], (f:lsu) ft1  <-- 3.141
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100128], (f:lsu) ft2  <-- 18.846
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 3.141, ft0  = 15.705, (f:lsu) ft3  <-- 25.128
                                                #; (f:fpu) ft0  <-- 49.3294050
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 25.128, ft2  = 18.846, ft0  = 49.3294050
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x001000d0]
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100160], (f:lsu) ft1  <-- 21.9870000
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x00100320, a1  = 0, (wrb) s1  <-- 0x00100320
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x001000d8], (f:fpu) ft0  <-- 522.8916930
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 0, (wrb) a1  <-- 8
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x00100198], (f:lsu) ft2  <-- 47.115
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x001000e0], (f:lsu) ft3  <-- 25.128
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 8, t3  = 56, taken, goto 0x800007b4
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001d0], (f:lsu) ft4  <-- 6.282
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x001000e8], (f:lsu) ft5  <-- 28.269
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 8, (wrb) s1  <-- 0x001001a0
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100208], (f:lsu) ft6  <-- 28.269
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 47.115, ft1  = 21.9870000, ft0  = 522.8916930, (f:lsu) ft7  <-- 31.41
                                                #; (f:lsu) fa0  <-- 50.256
                                                #; (f:fpu) ft0  <-- 1558.8091980
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 6.282, ft3  = 25.128, ft0  = 1558.8091980
                                                #; (f:fpu) ft0  <-- 1716.6632940
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 28.269, ft5  = 28.269, ft0  = 1716.6632940
                                                #; (f:fpu) ft0  <-- 2515.7996550
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 50.256, ft7  = 31.41, ft0  = 2515.7996550
                                                #; (f:fpu) ft0  <-- 4094.3406150
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 4094.3406150 ~~> Doub[0x00100320]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x001000c0]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x001000f8], (f:lsu) ft0  <-- 15.705
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x00100320, a1  = 8, (wrb) s1  <-- 0x00100328
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x001000c8], (f:lsu) ft1  <-- 6.282
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 8, (wrb) a1  <-- 16
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100130], (f:lsu) ft2  <-- 18.846
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 6.282, ft0  = 15.705, (f:lsu) ft3  <-- 28.269
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 16, t3  = 56, taken, goto 0x800007b4
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 16, (wrb) s1  <-- 0x001001a8
                                                #; (f:fpu) ft0  <-- 98.65881
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 28.269, ft2  = 18.846, ft0  = 98.65881
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x001000d0]
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100168], (f:lsu) ft1  <-- 21.9870000
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x001000d8], (f:fpu) ft0  <-- 631.4163840
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001a0], (f:lsu) ft2  <-- 50.256
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x001000e0], (f:lsu) ft3  <-- 25.128
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001d8], (f:lsu) ft4  <-- 9.423
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x001000e8], (f:lsu) ft5  <-- 28.269
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100210], (f:lsu) ft6  <-- 31.41
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 50.256, ft1  = 21.9870000, ft0  = 631.4163840, (f:lsu) ft7  <-- 31.41
                                                #; (f:lsu) fa0  <-- 53.397
                                                #; (f:fpu) ft0  <-- 1736.3950560
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 9.423, ft3  = 25.128, ft0  = 1736.3950560
                                                #; (f:fpu) ft0  <-- 1973.1762000
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 31.41, ft5  = 28.269, ft0  = 1973.1762000
                                                #; (f:fpu) ft0  <-- 2861.1054900
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 53.397, ft7  = 31.41, ft0  = 2861.1054900
                                                #; (f:fpu) ft0  <-- 4538.3052600
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 4538.3052600 ~~> Doub[0x00100328]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x001000c0]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100100], (f:lsu) ft0  <-- 15.705
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x00100320, a1  = 16, (wrb) s1  <-- 0x00100330
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x001000c8], (f:lsu) ft1  <-- 9.423
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 16, (wrb) a1  <-- 24
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100138], (f:lsu) ft2  <-- 18.846
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 9.423, ft0  = 15.705, (f:lsu) ft3  <-- 31.41
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 24, t3  = 56, taken, goto 0x800007b4
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 24, (wrb) s1  <-- 0x001001b0
                                                #; (f:fpu) ft0  <-- 147.9882150
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 31.41, ft2  = 18.846, ft0  = 147.9882150
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x001000d0]
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100170], (f:lsu) ft1  <-- 21.9870000
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x001000d8], (f:fpu) ft0  <-- 739.9410750
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001a8], (f:lsu) ft2  <-- 53.397
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x001000e0], (f:lsu) ft3  <-- 25.128
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001e0], (f:lsu) ft4  <-- 12.564
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x001000e8], (f:lsu) ft5  <-- 28.269
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100218], (f:lsu) ft6  <-- 34.551
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 53.397, ft1  = 21.9870000, ft0  = 739.9410750, (f:lsu) ft7  <-- 31.41
                                                #; (f:lsu) fa0  <-- 56.538
                                                #; (f:fpu) ft0  <-- 1913.9809140
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 12.564, ft3  = 25.128, ft0  = 1913.9809140
                                                #; (f:fpu) ft0  <-- 2229.6891060
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 34.551, ft5  = 28.269, ft0  = 2229.6891060
                                                #; (f:fpu) ft0  <-- 3206.4113250
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 56.538, ft7  = 31.41, ft0  = 3206.4113250
                                                #; (f:fpu) ft0  <-- 4982.2699050
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 4982.2699050 ~~> Doub[0x00100330]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x001000c0]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100108], (f:lsu) ft0  <-- 15.705
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x00100320, a1  = 24, (wrb) s1  <-- 0x00100338
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x001000c8], (f:lsu) ft1  <-- 12.564
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 24, (wrb) a1  <-- 32
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100140], (f:lsu) ft2  <-- 18.846
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 12.564, ft0  = 15.705, (f:lsu) ft3  <-- 34.551
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 32, t3  = 56, taken, goto 0x800007b4
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 32, (wrb) s1  <-- 0x001001b8
                                                #; (f:fpu) ft0  <-- 197.3176200
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 34.551, ft2  = 18.846, ft0  = 197.3176200
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x001000d0]
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100178], (f:lsu) ft1  <-- 21.9870000
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x001000d8], (f:fpu) ft0  <-- 848.4657660
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001b0], (f:lsu) ft2  <-- 56.538
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x001000e0], (f:lsu) ft3  <-- 25.128
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001e8], (f:lsu) ft4  <-- 15.705
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x001000e8], (f:lsu) ft5  <-- 28.269
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100220], (f:lsu) ft6  <-- 37.692
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 56.538, ft1  = 21.9870000, ft0  = 848.4657660, (f:lsu) ft7  <-- 31.41
                                                #; (f:lsu) fa0  <-- 59.679
                                                #; (f:fpu) ft0  <-- 2091.5667720
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 15.705, ft3  = 25.128, ft0  = 2091.5667720
                                                #; (f:fpu) ft0  <-- 2486.2020120
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 37.692, ft5  = 28.269, ft0  = 2486.2020120
                                                #; (f:fpu) ft0  <-- 3551.7171600
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 59.679, ft7  = 31.41, ft0  = 3551.7171600
                                                #; (f:fpu) ft0  <-- 5426.2345500
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 5426.2345500 ~~> Doub[0x00100338]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x001000c0]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100110], (f:lsu) ft0  <-- 15.705
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x00100320, a1  = 32, (wrb) s1  <-- 0x00100340
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x001000c8], (f:lsu) ft1  <-- 15.705
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 32, (wrb) a1  <-- 40
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100148], (f:lsu) ft2  <-- 18.846
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 15.705, ft0  = 15.705, (f:lsu) ft3  <-- 37.692
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 40, t3  = 56, taken, goto 0x800007b4
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 40, (wrb) s1  <-- 0x001001c0
                                                #; (f:fpu) ft0  <-- 246.6470250
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 37.692, ft2  = 18.846, ft0  = 246.6470250
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x001000d0]
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100180], (f:lsu) ft1  <-- 21.9870000
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x001000d8], (f:fpu) ft0  <-- 956.9904570
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001b8], (f:lsu) ft2  <-- 59.679
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x001000e0], (f:lsu) ft3  <-- 25.128
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001f0], (f:lsu) ft4  <-- 18.846
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x001000e8], (f:lsu) ft5  <-- 28.269
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100228], (f:lsu) ft6  <-- 40.833
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 59.679, ft1  = 21.9870000, ft0  = 956.9904570, (f:lsu) ft7  <-- 31.41
                                                #; (f:lsu) fa0  <-- 62.82
                                                #; (f:fpu) ft0  <-- 2269.1526300
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 18.846, ft3  = 25.128, ft0  = 2269.1526300
                                                #; (f:fpu) ft0  <-- 2742.7149180
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 40.833, ft5  = 28.269, ft0  = 2742.7149180
                                                #; (f:fpu) ft0  <-- 3897.0229950
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 62.82, ft7  = 31.41, ft0  = 3897.0229950
                                                #; (f:fpu) ft0  <-- 5870.1991950
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 5870.1991950 ~~> Doub[0x00100340]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x001000c0]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100118], (f:lsu) ft0  <-- 15.705
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x00100320, a1  = 40, (wrb) s1  <-- 0x00100348
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x001000c8], (f:lsu) ft1  <-- 18.846
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 40, (wrb) a1  <-- 48
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100150], (f:lsu) ft2  <-- 18.846
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 18.846, ft0  = 15.705, (f:lsu) ft3  <-- 40.833
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 48, t3  = 56, taken, goto 0x800007b4
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b8 add     s1, t4, a1             #; t4  = 0x00100198, a1  = 48, (wrb) s1  <-- 0x001001c8
                                                #; (f:fpu) ft0  <-- 295.9764300
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 40.833, ft2  = 18.846, ft0  = 295.9764300
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x001000d0]
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100188], (f:lsu) ft1  <-- 21.9870000
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x001000d8], (f:fpu) ft0  <-- 1065.5151480
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001c0], (f:lsu) ft2  <-- 62.82
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x001000e0], (f:lsu) ft3  <-- 25.128
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x001001f8], (f:lsu) ft4  <-- 21.9870000
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x001000e8], (f:lsu) ft5  <-- 28.269
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100230], (f:lsu) ft6  <-- 43.9740000
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 62.82, ft1  = 21.9870000, ft0  = 1065.5151480, (f:lsu) ft7  <-- 31.41
                                                #; (f:lsu) fa0  <-- 3.141
                                                #; (f:fpu) ft0  <-- 2446.7384880
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 21.9870000, ft3  = 25.128, ft0  = 2446.7384880
                                                #; (f:fpu) ft0  <-- 2999.2278240
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 43.9740000, ft5  = 28.269, ft0  = 2999.2278240
                                                #; (f:fpu) ft0  <-- 4242.3288300
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 3.141, ft7  = 31.41, ft0  = 4242.3288300
                                                #; (f:fpu) ft0  <-- 4340.9876400
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 4340.9876400 ~~> Doub[0x00100348]
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007b4 fld     ft0, 0(a3)             #; ft0  <~~ Doub[0x001000c0]
      0x800007bc fld     ft1, 3928(s1)          #; ft1  <~~ Doub[0x00100120], (f:lsu) ft0  <-- 15.705
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000800 add     s1, s0, a1             #; s0  = 0x00100320, a1  = 48, (wrb) s1  <-- 0x00100350
      0x800007c0 fld     ft2, 0(t5)             #; ft2  <~~ Doub[0x001000c8], (f:lsu) ft1  <-- 21.9870000
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x80000804 addi    a1, a1, 8              #; a1  = 48, (wrb) a1  <-- 56
      0x800007c4 fld     ft3, 3984(s1)          #; ft3  <~~ Doub[0x00100158], (f:lsu) ft2  <-- 18.846
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007c8 fmul.d  ft0, ft1, ft0          #; ft1  = 21.9870000, ft0  = 15.705, (f:lsu) ft3  <-- 43.9740000
; matmul (matmul.c:7)
;  in main (test_mat.c:30)
      0x8000080c bne     a1, t3, pc - 88        #; a1  = 56, t3  = 56, not taken
                                                #; (f:fpu) ft0  <-- 345.3058350
; matmul (matmul.c:6)
;  in main (test_mat.c:30)
      0x80000810 addi    t2, t2, 1              #; t2  = 4, (wrb) t2  <-- 5
      0x800007cc fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 43.9740000, ft2  = 18.846, ft0  = 345.3058350
      0x80000814 addi    t1, t1, 56             #; t1  = 224, (wrb) t1  <-- 280
      0x800007d0 fld     ft1, 0(t6)             #; ft1  <~~ Doub[0x001000d0]
      0x80000818 bne     t2, a7, pc - 140       #; t2  = 5, a7  = 5, not taken
      0x800007d4 fld     ft2, 4040(s1)          #; ft2  <~~ Doub[0x00100190], (f:lsu) ft1  <-- 21.9870000
; matmul (matmul.c:10)
;  in main (test_mat.c:30)
      0x800007d8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x001000d8], (f:fpu) ft0  <-- 1174.0398390
      0x800007dc fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x001001c8], (f:lsu) ft2  <-- 3.141
      0x800007e0 fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x001000e0], (f:lsu) ft3  <-- 25.128
      0x800007e4 fld     ft6, 56(s1)            #; ft6  <~~ Doub[0x00100200], (f:lsu) ft4  <-- 25.128
      0x800007e8 fld     ft7, 0(a5)             #; ft7  <~~ Doub[0x001000e8], (f:lsu) ft5  <-- 28.269
      0x800007ec fld     fa0, 112(s1)           #; fa0  <~~ Doub[0x00100238], (f:lsu) ft6  <-- 47.115
      0x800007f0 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 3.141, ft1  = 21.9870000, ft0  = 1174.0398390, (f:lsu) ft7  <-- 31.41
                                                #; (f:lsu) fa0  <-- 6.282
                                                #; (f:fpu) ft0  <-- 1243.1010060
      0x800007f4 fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 25.128, ft3  = 25.128, ft0  = 1243.1010060
                                                #; (f:fpu) ft0  <-- 1874.5173900
      0x800007f8 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 47.115, ft5  = 28.269, ft0  = 1874.5173900
                                                #; (f:fpu) ft0  <-- 3206.4113250
      0x800007fc fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 6.282, ft7  = 31.41, ft0  = 3206.4113250
                                                #; (f:fpu) ft0  <-- 3403.7289450
; matmul (matmul.c:12)
;  in main (test_mat.c:30)
      0x80000808 fsd     ft0, 0(s1)             #; 3403.7289450 ~~> Doub[0x00100350]
; summat (summat.c:7)
;  in main (test_mat.c:35)
      0x8000081c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x00100240]
      0x80000820 fld     ft1, 8(a0)             #; ft1  <~~ Doub[0x00100248], (f:lsu) ft0  <-- 2081.7008910
      0x80000824 fld     ft2, 16(a0)            #; ft2  <~~ Doub[0x00100250], (f:lsu) ft1  <-- 2288.8843920
      0x80000828 fadd.d  ft0, ft1, ft0          #; ft1  = 2288.8843920, ft0  = 2081.7008910, (f:lsu) ft2  <-- 2496.0678930
                                                #; (f:fpu) ft0  <-- 4370.5852830
      0x8000082c fadd.d  ft0, ft2, ft0          #; ft2  = 2496.0678930, ft0  = 4370.5852830
      0x80000830 fld     ft1, 24(a0)            #; ft1  <~~ Doub[0x00100258]
      0x80000834 fld     ft2, 32(a0)            #; ft2  <~~ Doub[0x00100260], (f:lsu) ft1  <-- 2703.2513940
      0x80000838 fld     ft3, 40(a0)            #; ft3  <~~ Doub[0x00100268], (f:fpu) ft0  <-- 6866.6531760
      0x8000083c fld     ft4, 48(a0)            #; ft4  <~~ Doub[0x00100270], (f:lsu) ft2  <-- 2910.4348950
                                                #; (f:lsu) ft3  <-- 1933.7126760
                                                #; (f:lsu) ft4  <-- 1548.9433170
      0x80000840 fadd.d  ft0, ft1, ft0          #; ft1  = 2703.2513940, ft0  = 6866.6531760
                                                #; (f:fpu) ft0  <-- 9569.9045700
      0x80000844 fadd.d  ft0, ft2, ft0          #; ft2  = 2910.4348950, ft0  = 9569.9045700
                                                #; (f:fpu) ft0  <-- 12480.3394650
      0x80000848 fadd.d  ft0, ft3, ft0          #; ft3  = 1933.7126760, ft0  = 12480.3394650
                                                #; (f:fpu) ft0  <-- 14414.0521410
      0x8000084c fadd.d  ft0, ft4, ft0          #; ft4  = 1548.9433170, ft0  = 14414.0521410
      0x80000850 fld     ft1, 56(a0)            #; ft1  <~~ Doub[0x00100278]
      0x80000854 fld     ft2, 64(a0)            #; ft2  <~~ Doub[0x00100280], (f:lsu) ft1  <-- 5100.6604770
      0x80000858 fld     ft3, 72(a0)            #; ft3  <~~ Doub[0x00100288], (f:fpu) ft0  <-- 15962.9954580
      0x8000085c fld     ft4, 80(a0)            #; ft4  <~~ Doub[0x00100290], (f:lsu) ft2  <-- 5663.0156940
                                                #; (f:lsu) ft3  <-- 6225.3709110
                                                #; (f:lsu) ft4  <-- 6787.7261280
      0x80000860 fadd.d  ft0, ft1, ft0          #; ft1  = 5100.6604770, ft0  = 15962.9954580
                                                #; (f:fpu) ft0  <-- 21063.6559350
      0x80000864 fadd.d  ft0, ft2, ft0          #; ft2  = 5663.0156940, ft0  = 21063.6559350
                                                #; (f:fpu) ft0  <-- 26726.6716290
      0x80000868 fadd.d  ft0, ft3, ft0          #; ft3  = 6225.3709110, ft0  = 26726.6716290
                                                #; (f:fpu) ft0  <-- 32952.0425400
      0x8000086c fadd.d  ft0, ft4, ft0          #; ft4  = 6787.7261280, ft0  = 32952.0425400
      0x80000870 fld     ft1, 88(a0)            #; ft1  <~~ Doub[0x00100298]
      0x80000874 fld     ft2, 96(a0)            #; ft2  <~~ Doub[0x001002a0], (f:lsu) ft1  <-- 7350.0813450
      0x80000878 fld     ft3, 104(a0)           #; ft3  <~~ Doub[0x001002a8], (f:fpu) ft0  <-- 39739.7686680
      0x8000087c fld     ft4, 112(a0)           #; ft4  <~~ Doub[0x001002b0], (f:lsu) ft2  <-- 5544.6251220
                                                #; (f:lsu) ft3  <-- 4331.1217590
                                                #; (f:lsu) ft4  <-- 8119.6200630
      0x80000880 fadd.d  ft0, ft1, ft0          #; ft1  = 7350.0813450, ft0  = 39739.7686680
                                                #; (f:fpu) ft0  <-- 47089.8500130
      0x80000884 fadd.d  ft0, ft2, ft0          #; ft2  = 5544.6251220, ft0  = 47089.8500130
                                                #; (f:fpu) ft0  <-- 52634.4751350
      0x80000888 fadd.d  ft0, ft3, ft0          #; ft3  = 4331.1217590, ft0  = 52634.4751350
                                                #; (f:fpu) ft0  <-- 56965.5968940
      0x8000088c fadd.d  ft0, ft4, ft0          #; ft4  = 8119.6200630, ft0  = 56965.5968940
      0x80000890 fld     ft1, 120(a0)           #; ft1  <~~ Doub[0x001002b8]
      0x80000894 fld     ft2, 128(a0)           #; ft2  <~~ Doub[0x001002c0], (f:lsu) ft1  <-- 9037.1469960
      0x80000898 fld     ft3, 136(a0)           #; ft3  <~~ Doub[0x001002c8], (f:fpu) ft0  <-- 65085.2169570
      0x8000089c fld     ft4, 144(a0)           #; ft4  <~~ Doub[0x001002d0], (f:lsu) ft2  <-- 9954.6739290
                                                #; (f:lsu) ft3  <-- 10872.2008620
                                                #; (f:lsu) ft4  <-- 11789.7277950
      0x800008a0 fadd.d  ft0, ft1, ft0          #; ft1  = 9037.1469960, ft0  = 65085.2169570
                                                #; (f:fpu) ft0  <-- 74122.3639530
      0x800008a4 fadd.d  ft0, ft2, ft0          #; ft2  = 9954.6739290, ft0  = 74122.3639530
                                                #; (f:fpu) ft0  <-- 84077.0378820
      0x800008a8 fadd.d  ft0, ft3, ft0          #; ft3  = 10872.2008620, ft0  = 84077.0378820
                                                #; (f:fpu) ft0  <-- 94949.2387440
      0x800008ac fadd.d  ft0, ft4, ft0          #; ft4  = 11789.7277950, ft0  = 94949.2387440
      0x800008b0 fld     ft1, 152(a0)           #; ft1  <~~ Doub[0x001002d8]
      0x800008b4 fld     ft2, 160(a0)           #; ft2  <~~ Doub[0x001002e0], (f:lsu) ft1  <-- 9155.5375680
      0x800008b8 fld     ft3, 168(a0)           #; ft3  <~~ Doub[0x001002e8], (f:fpu) ft0  <-- 106738.9665390
      0x800008bc fld     ft4, 176(a0)           #; ft4  <~~ Doub[0x001002f0], (f:lsu) ft2  <-- 7113.3002010
                                                #; (f:lsu) ft3  <-- 2851.2396090
                                                #; (f:lsu) ft4  <-- 3334.6677780
      0x800008c0 fadd.d  ft0, ft1, ft0          #; ft1  = 9155.5375680, ft0  = 106738.9665390
                                                #; (f:fpu) ft0  <-- 115894.5041070
      0x800008c4 fadd.d  ft0, ft2, ft0          #; ft2  = 7113.3002010, ft0  = 115894.5041070
                                                #; (f:fpu) ft0  <-- 123007.8043080
      0x800008c8 fadd.d  ft0, ft3, ft0          #; ft3  = 2851.2396090, ft0  = 123007.8043080
                                                #; (f:fpu) ft0  <-- 125859.0439170
      0x800008cc fadd.d  ft0, ft4, ft0          #; ft4  = 3334.6677780, ft0  = 125859.0439170
      0x800008d0 fld     ft1, 184(a0)           #; ft1  <~~ Doub[0x001002f8]
      0x800008d4 fld     ft2, 192(a0)           #; ft2  <~~ Doub[0x00100300], (f:lsu) ft1  <-- 3818.0959470
      0x800008d8 fld     ft3, 200(a0)           #; ft3  <~~ Doub[0x00100308], (f:fpu) ft0  <-- 129193.7116950
      0x800008dc fld     ft4, 208(a0)           #; ft4  <~~ Doub[0x00100310], (f:lsu) ft2  <-- 4301.5241160
                                                #; (f:lsu) ft3  <-- 4784.9522850
                                                #; (f:lsu) ft4  <-- 4479.1099740
      0x800008e0 fadd.d  ft0, ft1, ft0          #; ft1  = 3818.0959470, ft0  = 129193.7116950
                                                #; (f:fpu) ft0  <-- 133011.8076420
      0x800008e4 fadd.d  ft0, ft2, ft0          #; ft2  = 4301.5241160, ft0  = 133011.8076420
                                                #; (f:fpu) ft0  <-- 137313.3317580
      0x800008e8 fadd.d  ft0, ft3, ft0          #; ft3  = 4784.9522850, ft0  = 137313.3317580
                                                #; (f:fpu) ft0  <-- 142098.2840430
      0x800008ec fadd.d  ft0, ft4, ft0          #; ft4  = 4479.1099740, ft0  = 142098.2840430
      0x800008f0 fld     ft1, 216(a0)           #; ft1  <~~ Doub[0x00100318]
      0x800008f4 fld     ft2, 224(a0)           #; ft2  <~~ Doub[0x00100320], (f:lsu) ft1  <-- 4765.2205230
      0x800008f8 fld     ft3, 232(a0)           #; ft3  <~~ Doub[0x00100328], (f:fpu) ft0  <-- 146577.3940170
      0x800008fc fld     ft4, 240(a0)           #; ft4  <~~ Doub[0x00100330], (f:lsu) ft2  <-- 4094.3406150
                                                #; (f:lsu) ft3  <-- 4538.3052600
                                                #; (f:lsu) ft4  <-- 4982.2699050
      0x80000900 fadd.d  ft0, ft1, ft0          #; ft1  = 4765.2205230, ft0  = 146577.3940170
                                                #; (f:fpu) ft0  <-- 151342.6145400
      0x80000904 fadd.d  ft0, ft2, ft0          #; ft2  = 4094.3406150, ft0  = 151342.6145400
                                                #; (f:fpu) ft0  <-- 155436.9551550
      0x80000908 fadd.d  ft0, ft3, ft0          #; ft3  = 4538.3052600, ft0  = 155436.9551550
                                                #; (f:fpu) ft0  <-- 159975.2604150
      0x8000090c fadd.d  ft0, ft4, ft0          #; ft4  = 4982.2699050, ft0  = 159975.2604150
      0x80000910 fld     ft1, 248(a0)           #; ft1  <~~ Doub[0x00100338]
      0x80000914 fld     ft2, 256(a0)           #; ft2  <~~ Doub[0x00100340], (f:lsu) ft1  <-- 5426.2345500
      0x80000918 fld     ft3, 264(a0)           #; ft3  <~~ Doub[0x00100348], (f:fpu) ft0  <-- 164957.5303200
      0x8000091c fld     ft4, 272(a0)           #; ft4  <~~ Doub[0x00100350], (f:lsu) ft2  <-- 5870.1991950
                                                #; (f:lsu) ft3  <-- 4340.9876400
                                                #; (f:lsu) ft4  <-- 3403.7289450
      0x80000920 fadd.d  ft0, ft1, ft0          #; ft1  = 5426.2345500, ft0  = 164957.5303200
                                                #; (f:fpu) ft0  <-- 170383.7648700
      0x80000924 fadd.d  ft0, ft2, ft0          #; ft2  = 5870.1991950, ft0  = 170383.7648700
                                                #; (f:fpu) ft0  <-- 176253.9640650
      0x80000928 fadd.d  ft0, ft3, ft0          #; ft3  = 4340.9876400, ft0  = 176253.9640650
; matmul (matmul.c:12)
;  in main (test_mat.c:37)
      0x80000930 li      a2, 280                #; (wrb) a2  <-- 280
      0x80000934 li      a1, 0                  #; (wrb) a1  <-- 0
                                                #; (f:fpu) ft0  <-- 180594.9517050
      0x80000938 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x7ffff938
      0x8000092c fadd.d  fs0, ft4, ft0          #; ft4  = 3403.7289450, ft0  = 180594.9517050
      0x8000093c jalr    ra, ra, 1736           #; ra  = 0x7ffff938, (wrb) ra  <-- 0x80000940, goto 0x80000000
                                                #; (f:fpu) fs0  <-- 183998.6806500
; memset (memset.S:30)
      0x80000000 li      t1, 15                 #; (wrb) t1  <-- 15
; memset (memset.S:31)
      0x80000004 mv      a4, a0                 #; a0  = 0x00100240, (wrb) a4  <-- 0x00100240
; memset (memset.S:32)
      0x80000008 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 280, not taken
; memset (memset.S:33)
      0x8000000c andi    a5, a4, 15             #; a4  = 0x00100240, (wrb) a5  <-- 0
; memset (memset.S:34)
      0x80000010 bnez    a5, pc + 160           #; a5  = 0, not taken
; memset (memset.S:37)
      0x80000014 bnez    a1, pc + 132           #; a1  = 0, not taken
; memset (memset.S:40)
      0x80000018 andi    a3, a2, -16            #; a2  = 280, (wrb) a3  <-- 272
; memset (memset.S:41)
      0x8000001c andi    a2, a2, 15             #; a2  = 280, (wrb) a2  <-- 8
; memset (memset.S:42)
      0x80000020 add     a3, a3, a4             #; a3  = 272, a4  = 0x00100240, (wrb) a3  <-- 0x00100350
; memset (memset.S:48)
      0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100240, 0 ~~> Word[0x00100240]
; memset (memset.S:49)
      0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100240, 0 ~~> Word[0x00100244]
; memset (memset.S:50)
      0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100240, 0 ~~> Word[0x00100248]
; memset (memset.S:51)
      0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100240, 0 ~~> Word[0x0010024c]
; memset (memset.S:53)
      0x80000034 addi    a4, a4, 16             #; a4  = 0x00100240, (wrb) a4  <-- 0x00100250
; memset (memset.S:54)
      0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100250, a3  = 0x00100350, taken, goto 0x80000024
; memset (memset.S:48)
      0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100250, 0 ~~> Word[0x00100250]
; memset (memset.S:49)
      0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100250, 0 ~~> Word[0x00100254]
; memset (memset.S:50)
      0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100250, 0 ~~> Word[0x00100258]
; memset (memset.S:51)
      0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100250, 0 ~~> Word[0x0010025c]
; memset (memset.S:53)
      0x80000034 addi    a4, a4, 16             #; a4  = 0x00100250, (wrb) a4  <-- 0x00100260
; memset (memset.S:54)
      0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100260, a3  = 0x00100350, taken, goto 0x80000024
; memset (memset.S:48)
      0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100260, 0 ~~> Word[0x00100260]
; memset (memset.S:49)
      0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100260, 0 ~~> Word[0x00100264]
; memset (memset.S:50)
      0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100260, 0 ~~> Word[0x00100268]
; memset (memset.S:51)
      0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100260, 0 ~~> Word[0x0010026c]
; memset (memset.S:53)
      0x80000034 addi    a4, a4, 16             #; a4  = 0x00100260, (wrb) a4  <-- 0x00100270
; memset (memset.S:54)
      0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100270, a3  = 0x00100350, taken, goto 0x80000024
; memset (memset.S:48)
      0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100270, 0 ~~> Word[0x00100270]
; memset (memset.S:49)
      0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100270, 0 ~~> Word[0x00100274]
; memset (memset.S:50)
      0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100270, 0 ~~> Word[0x00100278]
; memset (memset.S:51)
      0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100270, 0 ~~> Word[0x0010027c]
; memset (memset.S:53)
      0x80000034 addi    a4, a4, 16             #; a4  = 0x00100270, (wrb) a4  <-- 0x00100280
; memset (memset.S:54)
      0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100280, a3  = 0x00100350, taken, goto 0x80000024
; memset (memset.S:48)
      0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100280, 0 ~~> Word[0x00100280]
; memset (memset.S:49)
      0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100280, 0 ~~> Word[0x00100284]
; memset (memset.S:50)
      0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100280, 0 ~~> Word[0x00100288]
; memset (memset.S:51)
      0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100280, 0 ~~> Word[0x0010028c]
; memset (memset.S:53)
      0x80000034 addi    a4, a4, 16             #; a4  = 0x00100280, (wrb) a4  <-- 0x00100290
; memset (memset.S:54)
      0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100290, a3  = 0x00100350, taken, goto 0x80000024
; memset (memset.S:48)
      0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100290, 0 ~~> Word[0x00100290]
; memset (memset.S:49)
      0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100290, 0 ~~> Word[0x00100294]
; memset (memset.S:50)
      0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100290, 0 ~~> Word[0x00100298]
; memset (memset.S:51)
      0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100290, 0 ~~> Word[0x0010029c]
; memset (memset.S:53)
      0x80000034 addi    a4, a4, 16             #; a4  = 0x00100290, (wrb) a4  <-- 0x001002a0
; memset (memset.S:54)
      0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x001002a0, a3  = 0x00100350, taken, goto 0x80000024
; memset (memset.S:48)
      0x80000024 sw      a1, 0(a4)              #; a4  = 0x001002a0, 0 ~~> Word[0x001002a0]
; memset (memset.S:49)
      0x80000028 sw      a1, 4(a4)              #; a4  = 0x001002a0, 0 ~~> Word[0x001002a4]
; memset (memset.S:50)
      0x8000002c sw      a1, 8(a4)              #; a4  = 0x001002a0, 0 ~~> Word[0x001002a8]
; memset (memset.S:51)
      0x80000030 sw      a1, 12(a4)             #; a4  = 0x001002a0, 0 ~~> Word[0x001002ac]
; memset (memset.S:53)
      0x80000034 addi    a4, a4, 16             #; a4  = 0x001002a0, (wrb) a4  <-- 0x001002b0
; memset (memset.S:54)
      0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x001002b0, a3  = 0x00100350, taken, goto 0x80000024
; memset (memset.S:48)
      0x80000024 sw      a1, 0(a4)              #; a4  = 0x001002b0, 0 ~~> Word[0x001002b0]
; memset (memset.S:49)
      0x80000028 sw      a1, 4(a4)              #; a4  = 0x001002b0, 0 ~~> Word[0x001002b4]
; memset (memset.S:50)
      0x8000002c sw      a1, 8(a4)              #; a4  = 0x001002b0, 0 ~~> Word[0x001002b8]
; memset (memset.S:51)
      0x80000030 sw      a1, 12(a4)             #; a4  = 0x001002b0, 0 ~~> Word[0x001002bc]
; memset (memset.S:53)
      0x80000034 addi    a4, a4, 16             #; a4  = 0x001002b0, (wrb) a4  <-- 0x001002c0
; memset (memset.S:54)
      0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x001002c0, a3  = 0x00100350, taken, goto 0x80000024
; memset (memset.S:48)
      0x80000024 sw      a1, 0(a4)              #; a4  = 0x001002c0, 0 ~~> Word[0x001002c0]
; memset (memset.S:49)
      0x80000028 sw      a1, 4(a4)              #; a4  = 0x001002c0, 0 ~~> Word[0x001002c4]
; memset (memset.S:50)
      0x8000002c sw      a1, 8(a4)              #; a4  = 0x001002c0, 0 ~~> Word[0x001002c8]
; memset (memset.S:51)
      0x80000030 sw      a1, 12(a4)             #; a4  = 0x001002c0, 0 ~~> Word[0x001002cc]
; memset (memset.S:53)
      0x80000034 addi    a4, a4, 16             #; a4  = 0x001002c0, (wrb) a4  <-- 0x001002d0
; memset (memset.S:54)
      0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x001002d0, a3  = 0x00100350, taken, goto 0x80000024
; memset (memset.S:48)
      0x80000024 sw      a1, 0(a4)              #; a4  = 0x001002d0, 0 ~~> Word[0x001002d0]
; memset (memset.S:49)
      0x80000028 sw      a1, 4(a4)              #; a4  = 0x001002d0, 0 ~~> Word[0x001002d4]
; memset (memset.S:50)
      0x8000002c sw      a1, 8(a4)              #; a4  = 0x001002d0, 0 ~~> Word[0x001002d8]
; memset (memset.S:51)
      0x80000030 sw      a1, 12(a4)             #; a4  = 0x001002d0, 0 ~~> Word[0x001002dc]
; memset (memset.S:53)
      0x80000034 addi    a4, a4, 16             #; a4  = 0x001002d0, (wrb) a4  <-- 0x001002e0
; memset (memset.S:54)
      0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x001002e0, a3  = 0x00100350, taken, goto 0x80000024
; memset (memset.S:48)
      0x80000024 sw      a1, 0(a4)              #; a4  = 0x001002e0, 0 ~~> Word[0x001002e0]
; memset (memset.S:49)
      0x80000028 sw      a1, 4(a4)              #; a4  = 0x001002e0, 0 ~~> Word[0x001002e4]
; memset (memset.S:50)
      0x8000002c sw      a1, 8(a4)              #; a4  = 0x001002e0, 0 ~~> Word[0x001002e8]
; memset (memset.S:51)
      0x80000030 sw      a1, 12(a4)             #; a4  = 0x001002e0, 0 ~~> Word[0x001002ec]
; memset (memset.S:53)
      0x80000034 addi    a4, a4, 16             #; a4  = 0x001002e0, (wrb) a4  <-- 0x001002f0
; memset (memset.S:54)
      0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x001002f0, a3  = 0x00100350, taken, goto 0x80000024
; memset (memset.S:48)
      0x80000024 sw      a1, 0(a4)              #; a4  = 0x001002f0, 0 ~~> Word[0x001002f0]
; memset (memset.S:49)
      0x80000028 sw      a1, 4(a4)              #; a4  = 0x001002f0, 0 ~~> Word[0x001002f4]
; memset (memset.S:50)
      0x8000002c sw      a1, 8(a4)              #; a4  = 0x001002f0, 0 ~~> Word[0x001002f8]
; memset (memset.S:51)
      0x80000030 sw      a1, 12(a4)             #; a4  = 0x001002f0, 0 ~~> Word[0x001002fc]
; memset (memset.S:53)
      0x80000034 addi    a4, a4, 16             #; a4  = 0x001002f0, (wrb) a4  <-- 0x00100300
; memset (memset.S:54)
      0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100300, a3  = 0x00100350, taken, goto 0x80000024
; memset (memset.S:48)
      0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100300, 0 ~~> Word[0x00100300]
; memset (memset.S:49)
      0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100300, 0 ~~> Word[0x00100304]
; memset (memset.S:50)
      0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100300, 0 ~~> Word[0x00100308]
; memset (memset.S:51)
      0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100300, 0 ~~> Word[0x0010030c]
; memset (memset.S:53)
      0x80000034 addi    a4, a4, 16             #; a4  = 0x00100300, (wrb) a4  <-- 0x00100310
; memset (memset.S:54)
      0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100310, a3  = 0x00100350, taken, goto 0x80000024
; memset (memset.S:48)
      0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100310, 0 ~~> Word[0x00100310]
; memset (memset.S:49)
      0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100310, 0 ~~> Word[0x00100314]
; memset (memset.S:50)
      0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100310, 0 ~~> Word[0x00100318]
; memset (memset.S:51)
      0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100310, 0 ~~> Word[0x0010031c]
; memset (memset.S:53)
      0x80000034 addi    a4, a4, 16             #; a4  = 0x00100310, (wrb) a4  <-- 0x00100320
; memset (memset.S:54)
      0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100320, a3  = 0x00100350, taken, goto 0x80000024
; memset (memset.S:48)
      0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100320, 0 ~~> Word[0x00100320]
; memset (memset.S:49)
      0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100320, 0 ~~> Word[0x00100324]
; memset (memset.S:50)
      0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100320, 0 ~~> Word[0x00100328]
; memset (memset.S:51)
      0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100320, 0 ~~> Word[0x0010032c]
; memset (memset.S:53)
      0x80000034 addi    a4, a4, 16             #; a4  = 0x00100320, (wrb) a4  <-- 0x00100330
; memset (memset.S:54)
      0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100330, a3  = 0x00100350, taken, goto 0x80000024
; memset (memset.S:48)
      0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100330, 0 ~~> Word[0x00100330]
; memset (memset.S:49)
      0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100330, 0 ~~> Word[0x00100334]
; memset (memset.S:50)
      0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100330, 0 ~~> Word[0x00100338]
; memset (memset.S:51)
      0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100330, 0 ~~> Word[0x0010033c]
; memset (memset.S:53)
      0x80000034 addi    a4, a4, 16             #; a4  = 0x00100330, (wrb) a4  <-- 0x00100340
; memset (memset.S:54)
      0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100340, a3  = 0x00100350, taken, goto 0x80000024
; memset (memset.S:48)
      0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100340, 0 ~~> Word[0x00100340]
; memset (memset.S:49)
      0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100340, 0 ~~> Word[0x00100344]
; memset (memset.S:50)
      0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100340, 0 ~~> Word[0x00100348]
; memset (memset.S:51)
      0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100340, 0 ~~> Word[0x0010034c]
; memset (memset.S:53)
      0x80000034 addi    a4, a4, 16             #; a4  = 0x00100340, (wrb) a4  <-- 0x00100350
; memset (memset.S:54)
      0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100350, a3  = 0x00100350, not taken
; memset (memset.S:56)
      0x8000003c bnez    a2, pc + 8             #; a2  = 8, taken, goto 0x80000044
; memset (memset.S:60)
      0x80000044 sub     a3, t1, a2             #; t1  = 15, a2  = 8, (wrb) a3  <-- 7
; memset (memset.S:61)
      0x80000048 slli    a3, a3, 2              #; a3  = 7, (wrb) a3  <-- 28
; memset (memset.S:62)
      0x8000004c auipc   t0, 0x0                #; (wrb) t0  <-- 0x8000004c
; memset (memset.S:63)
      0x80000050 add     a3, a3, t0             #; a3  = 28, t0  = 0x8000004c, (wrb) a3  <-- 0x80000068
; memset (memset.S:67)
      0x80000054 jalr    zero, a3, 12           #; a3  = 0x80000068, goto 0x80000074
; memset (memset.S:76)
      0x80000074 sb      a1, 7(a4)              #; a4  = 0x00100350, 0 ~~> Byte[0x00100357]
; memset (memset.S:77)
      0x80000078 sb      a1, 6(a4)              #; a4  = 0x00100350, 0 ~~> Byte[0x00100356]
; memset (memset.S:78)
      0x8000007c sb      a1, 5(a4)              #; a4  = 0x00100350, 0 ~~> Byte[0x00100355]
; memset (memset.S:79)
      0x80000080 sb      a1, 4(a4)              #; a4  = 0x00100350, 0 ~~> Byte[0x00100354]
; memset (memset.S:80)
      0x80000084 sb      a1, 3(a4)              #; a4  = 0x00100350, 0 ~~> Byte[0x00100353]
; memset (memset.S:81)
      0x80000088 sb      a1, 2(a4)              #; a4  = 0x00100350, 0 ~~> Byte[0x00100352]
; memset (memset.S:82)
      0x8000008c sb      a1, 1(a4)              #; a4  = 0x00100350, 0 ~~> Byte[0x00100351]
; memset (memset.S:83)
      0x80000090 sb      a1, 0(a4)              #; a4  = 0x00100350, 0 ~~> Byte[0x00100350]
; memset (memset.S:85)
      0x80000094 ret                            #; ra  = 0x80000940, goto 0x80000940
; main (matmul.c:0)
      0x80000940 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002940
      0x80000944 addi    a0, a0, 1568           #; a0  = 0x80002940, (wrb) a0  <-- 0x80002f60
      0x80000948 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f60]
                                                #; (f:lsu) ft0  <-- -183998.6806500
; main (test_mat.c:43)
      0x80000958 lw      a2, 0(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff40]
      0x8000094c fadd.d  ft0, fs0, ft0          #; fs0  = 183998.6806500, ft0  = -183998.6806500
                                                #; (lsu) a2  <-- 0
                                                #; (f:fpu) ft0  <-- -0.0000000
      0x8000095c lw      a3, 4(sp)              #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff44]
      0x80000950 fsgnjx.d fs0, ft0, ft0         #; ft0  = -0.0000000, ft0  = -0.0000000
                                                #; (f:fpu) fs0  <-- 0.0000000
      0x80000954 fsd     fs0, 0(sp)             #; 0.0000000 ~~> Doub[0x0011ff40]
                                                #; (lsu) a3  <-- 0
      0x80000960 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002960
      0x80000964 addi    a0, a0, 885            #; a0  = 0x80002960, (wrb) a0  <-- 0x80002cd5
      0x80000968 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000968
      0x8000096c jalr    ra, ra, 48             #; ra  = 0x80000968, (wrb) ra  <-- 0x80000970, goto 0x80000998
; printf_ (printf.c:863)
      0x80000998 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x8000099c sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000970 ~~> Word[0x0011ff1c]
      0x800009a0 mv      t0, a0                 #; a0  = 0x80002cd5, (wrb) t0  <-- 0x80002cd5
      0x800009a4 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 5 ~~> Word[0x0011ff3c]
      0x800009a8 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 48 ~~> Word[0x0011ff38]
      0x800009ac sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff34]
      0x800009b0 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 0x00100350 ~~> Word[0x0011ff30]
      0x800009b4 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
      0x800009b8 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
      0x800009bc sw      a1, 20(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff24]
      0x800009c0 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
; printf_ (printf.c:865)
      0x800009c4 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
; printf_ (printf.c:867)
      0x800009c8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800019c8
      0x800009cc addi    a0, a0, -988           #; a0  = 0x800019c8, (wrb) a0  <-- 0x800015ec
      0x800009d0 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
      0x800009d4 li      a2, -1                 #; (wrb) a2  <-- -1
      0x800009d8 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
      0x800009dc mv      a3, t0                 #; t0  = 0x80002cd5, (wrb) a3  <-- 0x80002cd5
      0x800009e0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800009e0
      0x800009e4 jalr    ra, ra, 20             #; ra  = 0x800009e0, (wrb) ra  <-- 0x800009e8, goto 0x800009f4
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x800009f4 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
      0x800009f8 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x800009e8 ~~> Word[0x0011ff0c]
      0x800009fc sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0x00100320 ~~> Word[0x0011ff08]
      0x80000a00 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0x00100350 ~~> Word[0x0011ff04]
      0x80000a04 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
      0x80000a08 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
      0x80000a0c sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
      0x80000a10 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
      0x80000a14 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
      0x80000a18 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
      0x80000a1c sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
      0x80000a20 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
      0x80000a24 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
      0x80000a28 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
      0x80000a2c mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
      0x80000a30 mv      s0, a3                 #; a3  = 0x80002cd5, (wrb) s0  <-- 0x80002cd5
      0x80000a34 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x80000a38 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x80000a3c beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a40 mv      s2, a0                 #; a0  = 0x800015ec, (wrb) s2  <-- 0x800015ec
      0x80000a44 j       pc + 0xc               #; goto 0x80000a50
      0x80000a50 li      s8, 0                  #; (wrb) s8  <-- 0
      0x80000a54 li      s6, 37                 #; (wrb) s6  <-- 37
      0x80000a58 li      s11, 16                #; (wrb) s11 <-- 16
      0x80000a5c li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000a60 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000a64 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000a68 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
      0x80000a6c lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000a70 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000a74 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a78 addi    s10, s0, 2             #; s0  = 0x80002cd5, (wrb) s10 <-- 0x80002cd7
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a7c mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000a80 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a84 lbu     a0, 0(s0)              #; s0  = 0x80002cd5, a0  <~~ Byte[0x80002cd5]
                                                #; (lsu) a0  <-- 101
      0x80000a88 beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x80000a8c beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a90 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000a94 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a98 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000a9c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000aa0 jalr    s2                     #; s2  = 0x800015ec, (wrb) ra  <-- 0x80000aa4, goto 0x800015ec
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ec beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
      0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
      0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
      0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 0
      0x8000160c addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 1 ~~> Word[0x8000301c]
      0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 0, (wrb) a4  <-- 0x8000301c
      0x80001618 sb      a0, 72(a4)             #; a4  = 0x8000301c, 101 ~~> Byte[0x80003064]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 1
      0x80001620 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x80001624 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x80001628 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x8000162c snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001694 ret                            #; ra  = 0x80000aa4, goto 0x80000aa4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000aa4 addi    s0, s0, 1              #; s0  = 0x80002cd5, (wrb) s0  <-- 0x80002cd6
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000aa8 addi    s10, s10, 1            #; s10 = 0x80002cd7, (wrb) s10 <-- 0x80002cd8
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000aac mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ab0 lbu     a0, 0(s0)              #; s0  = 0x80002cd6, a0  <~~ Byte[0x80002cd6]
                                                #; (lsu) a0  <-- 114
      0x80000ab4 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a8c
      0x80000a8c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a90 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000a94 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a98 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000a9c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000aa0 jalr    s2                     #; s2  = 0x800015ec, (wrb) ra  <-- 0x80000aa4, goto 0x800015ec
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ec beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
      0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
      0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 1
      0x8000160c addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 2 ~~> Word[0x8000301c]
      0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 1, (wrb) a4  <-- 0x8000301d
      0x80001618 sb      a0, 72(a4)             #; a4  = 0x8000301d, 114 ~~> Byte[0x80003065]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 2
      0x80001620 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x80001624 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x80001628 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x8000162c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001694 ret                            #; ra  = 0x80000aa4, goto 0x80000aa4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000aa4 addi    s0, s0, 1              #; s0  = 0x80002cd6, (wrb) s0  <-- 0x80002cd7
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000aa8 addi    s10, s10, 1            #; s10 = 0x80002cd8, (wrb) s10 <-- 0x80002cd9
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000aac mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ab0 lbu     a0, 0(s0)              #; s0  = 0x80002cd7, a0  <~~ Byte[0x80002cd7]
                                                #; (lsu) a0  <-- 114
      0x80000ab4 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a8c
      0x80000a8c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a90 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000a94 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a98 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000a9c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000aa0 jalr    s2                     #; s2  = 0x800015ec, (wrb) ra  <-- 0x80000aa4, goto 0x800015ec
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ec beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
      0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
      0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 2
      0x8000160c addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 3 ~~> Word[0x8000301c]
      0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 2, (wrb) a4  <-- 0x8000301e
      0x80001618 sb      a0, 72(a4)             #; a4  = 0x8000301e, 114 ~~> Byte[0x80003066]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 3
      0x80001620 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x80001624 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x80001628 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x8000162c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001694 ret                            #; ra  = 0x80000aa4, goto 0x80000aa4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000aa4 addi    s0, s0, 1              #; s0  = 0x80002cd7, (wrb) s0  <-- 0x80002cd8
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000aa8 addi    s10, s10, 1            #; s10 = 0x80002cd9, (wrb) s10 <-- 0x80002cda
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000aac mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ab0 lbu     a0, 0(s0)              #; s0  = 0x80002cd8, a0  <~~ Byte[0x80002cd8]
                                                #; (lsu) a0  <-- 111
      0x80000ab4 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000a8c
      0x80000a8c beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a90 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000a94 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a98 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000a9c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000aa0 jalr    s2                     #; s2  = 0x800015ec, (wrb) ra  <-- 0x80000aa4, goto 0x800015ec
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ec beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
      0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
      0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 3
      0x8000160c addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 4 ~~> Word[0x8000301c]
      0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 3, (wrb) a4  <-- 0x8000301f
      0x80001618 sb      a0, 72(a4)             #; a4  = 0x8000301f, 111 ~~> Byte[0x80003067]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 4
      0x80001620 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x80001624 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x80001628 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x8000162c snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001694 ret                            #; ra  = 0x80000aa4, goto 0x80000aa4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000aa4 addi    s0, s0, 1              #; s0  = 0x80002cd8, (wrb) s0  <-- 0x80002cd9
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000aa8 addi    s10, s10, 1            #; s10 = 0x80002cda, (wrb) s10 <-- 0x80002cdb
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000aac mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ab0 lbu     a0, 0(s0)              #; s0  = 0x80002cd9, a0  <~~ Byte[0x80002cd9]
                                                #; (lsu) a0  <-- 114
      0x80000ab4 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a8c
      0x80000a8c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a90 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000a94 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a98 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000a9c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000aa0 jalr    s2                     #; s2  = 0x800015ec, (wrb) ra  <-- 0x80000aa4, goto 0x800015ec
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ec beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
      0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
      0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 4
      0x8000160c addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 5 ~~> Word[0x8000301c]
      0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 4, (wrb) a4  <-- 0x80003020
      0x80001618 sb      a0, 72(a4)             #; a4  = 0x80003020, 114 ~~> Byte[0x80003068]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 5
      0x80001620 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x80001624 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x80001628 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x8000162c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001694 ret                            #; ra  = 0x80000aa4, goto 0x80000aa4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000aa4 addi    s0, s0, 1              #; s0  = 0x80002cd9, (wrb) s0  <-- 0x80002cda
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000aa8 addi    s10, s10, 1            #; s10 = 0x80002cdb, (wrb) s10 <-- 0x80002cdc
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000aac mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ab0 lbu     a0, 0(s0)              #; s0  = 0x80002cda, a0  <~~ Byte[0x80002cda]
                                                #; (lsu) a0  <-- 32
      0x80000ab4 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a8c
      0x80000a8c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a90 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000a94 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a98 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000a9c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000aa0 jalr    s2                     #; s2  = 0x800015ec, (wrb) ra  <-- 0x80000aa4, goto 0x800015ec
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ec beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
      0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
      0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 5
      0x8000160c addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 6 ~~> Word[0x8000301c]
      0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 5, (wrb) a4  <-- 0x80003021
      0x80001618 sb      a0, 72(a4)             #; a4  = 0x80003021, 32 ~~> Byte[0x80003069]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 6
      0x80001620 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x80001624 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x80001628 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x8000162c snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001694 ret                            #; ra  = 0x80000aa4, goto 0x80000aa4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000aa4 addi    s0, s0, 1              #; s0  = 0x80002cda, (wrb) s0  <-- 0x80002cdb
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000aa8 addi    s10, s10, 1            #; s10 = 0x80002cdc, (wrb) s10 <-- 0x80002cdd
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000aac mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ab0 lbu     a0, 0(s0)              #; s0  = 0x80002cdb, a0  <~~ Byte[0x80002cdb]
                                                #; (lsu) a0  <-- 61
      0x80000ab4 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000a8c
      0x80000a8c beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a90 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000a94 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a98 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000a9c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000aa0 jalr    s2                     #; s2  = 0x800015ec, (wrb) ra  <-- 0x80000aa4, goto 0x800015ec
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ec beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
      0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
      0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 6
      0x8000160c addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 7 ~~> Word[0x8000301c]
      0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 6, (wrb) a4  <-- 0x80003022
      0x80001618 sb      a0, 72(a4)             #; a4  = 0x80003022, 61 ~~> Byte[0x8000306a]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 7
      0x80001620 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x80001624 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x80001628 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x8000162c snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001694 ret                            #; ra  = 0x80000aa4, goto 0x80000aa4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000aa4 addi    s0, s0, 1              #; s0  = 0x80002cdb, (wrb) s0  <-- 0x80002cdc
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000aa8 addi    s10, s10, 1            #; s10 = 0x80002cdd, (wrb) s10 <-- 0x80002cde
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000aac mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ab0 lbu     a0, 0(s0)              #; s0  = 0x80002cdc, a0  <~~ Byte[0x80002cdc]
                                                #; (lsu) a0  <-- 32
      0x80000ab4 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a8c
      0x80000a8c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a90 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000a94 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a98 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000a9c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000aa0 jalr    s2                     #; s2  = 0x800015ec, (wrb) ra  <-- 0x80000aa4, goto 0x800015ec
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ec beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
      0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
      0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 7
      0x8000160c addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 8 ~~> Word[0x8000301c]
      0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 7, (wrb) a4  <-- 0x80003023
      0x80001618 sb      a0, 72(a4)             #; a4  = 0x80003023, 32 ~~> Byte[0x8000306b]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 8
      0x80001620 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x80001624 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x80001628 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x8000162c snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001694 ret                            #; ra  = 0x80000aa4, goto 0x80000aa4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000aa4 addi    s0, s0, 1              #; s0  = 0x80002cdc, (wrb) s0  <-- 0x80002cdd
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000aa8 addi    s10, s10, 1            #; s10 = 0x80002cde, (wrb) s10 <-- 0x80002cdf
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000aac mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ab0 lbu     a0, 0(s0)              #; s0  = 0x80002cdd, a0  <~~ Byte[0x80002cdd]
                                                #; (lsu) a0  <-- 37
      0x80000ab4 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000a8c
      0x80000a8c beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000abc
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000abc li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ac0 j       pc + 0x10              #; goto 0x80000ad0
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000ad0 lbu     a0, -1(s10)            #; s10 = 0x80002cdf, a0  <~~ Byte[0x80002cde]
                                                #; (lsu) a0  <-- 102
      0x80000ad4 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000ad8 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000b10
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000b10 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000b14 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000b18 addi    a1, s10, -1            #; s10 = 0x80002cdf, (wrb) a1  <-- 0x80002cde
      0x80000b1c li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000b20 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000b9c
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000b9c li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000ba0 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000bf0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bf0 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000bf4 mv      s10, a1                #; a1  = 0x80002cde, (wrb) s10 <-- 0x80002cde
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000bf8 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bfc li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000c00 j       pc + 0xc               #; goto 0x80000c0c
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000c0c addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000c10 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000c14 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000c18 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000c1c li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000c20 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000c84
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000c84 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000c88 li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000c8c bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c90 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000c94 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002c94
      0x80000c98 addi    a2, a2, 192            #; a2  = 0x80002c94, (wrb) a2  <-- 0x80002d54
      0x80000c9c add     a1, a1, a2             #; a1  = 260, a2  = 0x80002d54, (wrb) a1  <-- 0x80002e58
      0x80000ca0 lw      a2, 0(a1)              #; a1  = 0x80002e58, a2  <~~ Word[0x80002e58]
      0x80000ca4 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000ca8 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000cdc
      0x80000cac jr      a2                     #; a2  = 0x80000cdc, goto 0x80000cdc
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80000cdc li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000ce0 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000ce8
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000ce8 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
      0x80000cec andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
      0x80000cf4 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
      0x80000cf8 mv      a0, s2                 #; s2  = 0x800015ec, (wrb) a0  <-- 0x800015ec
      0x80000cf0 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
      0x80000cfc mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
; ?? (??:0)
                                                #; (f:lsu) fa0  <-- 0.0
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000d00 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000d04 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000d08 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000d0c mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000d10 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000d14 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001d14
      0x80000d18 jalr    ra, ra, -1656          #; ra  = 0x80001d14, (wrb) ra  <-- 0x80000d1c, goto 0x8000169c
; _ftoa (printf.c:340)
      0x8000169c addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
      0x800016a0 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000d1c ~~> Word[0x0011fe9c]
      0x800016a4 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
      0x800016a8 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
      0x800016ac sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x800015ec ~~> Word[0x0011fe90]
      0x800016b0 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
      0x800016b4 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
      0x800016b8 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
      0x800016bc sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
      0x800016c0 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
      0x800016c4 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
      0x800016c8 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
      0x800016cc sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002cde ~~> Word[0x0011fe70]
      0x800016d0 fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe68]
      0x800016dc auipc   s1, 0x2                #; (wrb) s1  <-- 0x800036dc
      0x800016d4 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
      0x800016d8 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
      0x800016e0 addi    s1, s1, -1900          #; s1  = 0x800036dc, (wrb) s1  <-- 0x80002f70
; _ftoa (printf.c:351)
      0x800016ec mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
      0x800016e4 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002f70]
; _ftoa (printf.c:0)
      0x800016f0 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x800016f4 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x800016e8 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
      0x800016f8 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x800016fc mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
      0x80001700 mv      s7, a0                 #; a0  = 0x800015ec, (wrb) s7  <-- 0x800015ec
; _ftoa (printf.c:351)
      0x80001704 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x800017f4
; _ftoa (printf.c:0)
      0x800017f8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800027f8
      0x800017fc addi    a0, a0, 1920           #; a0  = 0x800027f8, (wrb) a0  <-- 0x80002f78
      0x800017f4 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x80001800 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f78]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x80001804 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x80001808 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001824
; _ftoa (printf.c:0)
      0x80001824 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002824
      0x80001828 addi    a0, a0, 1884           #; a0  = 0x80002824, (wrb) a0  <-- 0x80002f80
      0x8000182c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f80]
      0x80001830 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002830
      0x80001834 addi    a0, a0, 1880           #; a0  = 0x80002830, (wrb) a0  <-- 0x80002f88
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
      0x80001838 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f88]
; _ftoa (printf.c:358)
      0x8000183c fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
      0x80001840 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
                                                #; (acc) a0  <-- 0x00b57533
      0x80001844 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001944
; _ftoa (printf.c:374)
      0x80001944 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x80001948 li      s8, 6                  #; (wrb) s8  <-- 6
      0x8000194c beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001954
; _ftoa (printf.c:0)
      0x80001954 li      a0, 10                 #; (wrb) a0  <-- 10
; _ftoa (printf.c:378)
      0x8000195c bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001994
; _ftoa (printf.c:0)
      0x80001958 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs2  <-- 0.0
      0x80001994 li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x80001998 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x8000199c auipc   a1, 0x1                #; (wrb) a1  <-- 0x8000299c
      0x800019a0 addi    a1, a1, 1292           #; a1  = 0x8000299c, (wrb) a1  <-- 0x80002ea8
      0x800019a4 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002ea8, (wrb) a0  <-- 0x80002ed8
      0x800019a8 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002ed8]
; _ftoa (printf.c:383)
      0x800019ac fcvt.w.d s1, fs2               #; fs2  = 0.0
; _ftoa (printf.c:384)
      0x800019b0 fcvt.d.w ft0, s1               #; ac1  = 0, (f:lsu) ft1  <-- 1000000.0000000
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:0)
      0x800019bc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800029bc
      0x800019b4 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:384)
      0x800019b8 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:0)
      0x800019c0 addi    a0, a0, 1492           #; a0  = 0x800029bc, (wrb) a0  <-- 0x80002f90
      0x800019c4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f90]
; _ftoa (printf.c:385)
      0x800019c8 fcvt.wu.d a0, ft2              #; ft2  = 0.0
                                                #; (acc) gp  <-- 0xd21501d3
; _ftoa (printf.c:386)
      0x800019cc fcvt.d.wu ft3, a0              #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
                                                #; (f:lsu) ft0  <-- 0.5
      0x800019d0 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:388)
      0x800019d4 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x800019d8 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x800019f8
; _ftoa (printf.c:396)
      0x800019f8 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
                                                #; (acc) s4  <-- 0x00059a63
      0x800019fc bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001a10
; _ftoa (printf.c:403)
      0x80001a14 beqz    s8, pc + 216           #; s8  = 6, not taken
      0x80001a10 fcvt.d.w fs1, zero             #; ac1  = 0
; _ftoa (printf.c:0)
      0x80001a18 li      a2, 0                  #; (wrb) a2  <-- 0
                                                #; (f:fpu) fs1  <-- 0.0
      0x80001a1c addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:414)
      0x80001a20 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
      0x80001a24 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001a28 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x80001a2c lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80001a30 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80001a34 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001a38 li      a7, 9                  #; (wrb) a7  <-- 9
      0x80001a3c beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80001a40 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x80001a44 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001a48 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001a4c mul     a3, a0, a6             #; a0  = 0, a6  = 10
      0x80001a50 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001a54 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x80001a58 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
      0x80001a5c sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
; _ftoa (printf.c:417)
      0x80001a60 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80001a64 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x80001a68 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x80001a6c addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80001a70 li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001a74 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x80001a78 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x80001a7c seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x80001a80 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x80001a84 bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x80001a88 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
; _ftoa (printf.c:422)
      0x80001a8c add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
      0x80001a90 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x80001a94 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x80001a98 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x80001a9c li      a1, 31                 #; (wrb) a1  <-- 31
      0x80001aa0 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x80001aa4 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
      0x80001aa8 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x80001aac bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001ab4
      0x80001ab4 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x80001ab8 li      a1, 48                 #; (wrb) a1  <-- 48
      0x80001abc auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x7ffffabc
      0x80001ac0 jalr    ra, ra, 1348           #; ra  = 0x7ffffabc, (wrb) ra  <-- 0x80001ac4, goto 0x80000000
; memset (memset.S:30)
      0x80000000 li      t1, 15                 #; (wrb) t1  <-- 15
; memset (memset.S:31)
      0x80000004 mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
; memset (memset.S:32)
      0x80000008 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x80000044
; memset (memset.S:60)
      0x80000044 sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
; memset (memset.S:61)
      0x80000048 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
; memset (memset.S:62)
      0x8000004c auipc   t0, 0x0                #; (wrb) t0  <-- 0x8000004c
; memset (memset.S:63)
      0x80000050 add     a3, a3, t0             #; a3  = 40, t0  = 0x8000004c, (wrb) a3  <-- 0x80000074
; memset (memset.S:67)
      0x80000054 jalr    zero, a3, 12           #; a3  = 0x80000074, goto 0x80000080
; memset (memset.S:79)
      0x80000080 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
; memset (memset.S:80)
      0x80000084 sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
; memset (memset.S:81)
      0x80000088 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
; memset (memset.S:82)
      0x8000008c sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
; memset (memset.S:83)
      0x80000090 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
; memset (memset.S:85)
      0x80000094 ret                            #; ra  = 0x80001ac4, goto 0x80001ac4
; _ftoa (printf.c:0)
      0x80001ac4 li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x80001ac8 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x80001acc sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80001ad0 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x80001ad4 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80001ad8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001adc addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001ae0 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ac8
      0x80001ac8 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x80001acc sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80001ad0 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x80001ad4 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80001ad8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001adc addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001ae0 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ac8
      0x80001ac8 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x80001acc sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80001ad0 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x80001ad4 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80001ad8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001adc addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001ae0 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ac8
      0x80001ac8 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x80001acc sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80001ad0 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x80001ad4 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80001ad8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001adc addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001ae0 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ac8
      0x80001ac8 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x80001acc sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80001ad0 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x80001ad4 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80001ad8 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001adc addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001ae0 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001ae4 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x80001ae8 j       pc + 0x28              #; goto 0x80001b10
      0x80001b10 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001b14 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001b18 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:427)
      0x80001b1c add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
      0x80001b20 li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001b24 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
      0x80001b28 j       pc + 0x8               #; goto 0x80001b30
; _ftoa (printf.c:0)
      0x80001b30 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001b34 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001b38 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001b3c li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001b44 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001b40 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
      0x80001b48 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001b4c li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001b50 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
      0x80001b54 li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001b58 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001b5c mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
      0x80001b60 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001b64 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001b68 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001b6c mul     a5, a0, a6             #; a0  = 0, a6  = 10
      0x80001b70 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001b74 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80001b78 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001b7c add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
; _ftoa (printf.c:434)
      0x80001b80 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001b84 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
; _ftoa (printf.c:0)
      0x80001b88 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001b8c mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001b90 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80001b94 j       pc + 0x8               #; goto 0x80001b9c
; _ftoa (printf.c:440)
      0x80001b9c andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001ba0 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001ba4 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001c10
; _ftoa (printf.c:0)
      0x80001c10 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001c14 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80001c18 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001c30
; _ftoa (printf.c:453)
      0x80001c30 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001c34 bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001c38 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001c3c beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001c68
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001c68 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001c6c sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80001c70 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001c74 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001c78 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001c7c mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001c80 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001cac
; _ftoa (printf.c:0)
      0x80001cac srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001cb0 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x80001cb4 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001cb8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
      0x80001cbc lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
                                                #; (lsu) a0  <-- 48
      0x80001cc0 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x80001cc4 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
      0x80001cc8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001ccc mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80001cd0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001cd4 jalr    s7                     #; s7  = 0x800015ec, (wrb) ra  <-- 0x80001cd8, goto 0x800015ec
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ec beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
      0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
      0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 8
      0x8000160c addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 9 ~~> Word[0x8000301c]
      0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 8, (wrb) a4  <-- 0x80003024
      0x80001618 sb      a0, 72(a4)             #; a4  = 0x80003024, 48 ~~> Byte[0x8000306c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 9
      0x80001620 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x80001624 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x80001628 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x8000162c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001694 ret                            #; ra  = 0x80001cd8, goto 0x80001cd8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001cd8 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x80001cdc mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ce0 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001cb8
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001cb8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
      0x80001cbc lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
      0x80001cc0 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001cc4 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80001cc8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001ccc mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001cd0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001cd4 jalr    s7                     #; s7  = 0x800015ec, (wrb) ra  <-- 0x80001cd8, goto 0x800015ec
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ec beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
      0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
      0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 9
      0x8000160c addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 10 ~~> Word[0x8000301c]
      0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 9, (wrb) a4  <-- 0x80003025
      0x80001618 sb      a0, 72(a4)             #; a4  = 0x80003025, 46 ~~> Byte[0x8000306d]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 10
      0x80001620 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x80001624 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x80001628 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x8000162c snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001694 ret                            #; ra  = 0x80001cd8, goto 0x80001cd8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001cd8 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001cdc mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ce0 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001cb8
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001cb8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
      0x80001cbc lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
      0x80001cc0 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001cc4 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001cc8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001ccc mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001cd0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001cd4 jalr    s7                     #; s7  = 0x800015ec, (wrb) ra  <-- 0x80001cd8, goto 0x800015ec
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ec beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
      0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
      0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 10
      0x8000160c addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 11 ~~> Word[0x8000301c]
      0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 10, (wrb) a4  <-- 0x80003026
      0x80001618 sb      a0, 72(a4)             #; a4  = 0x80003026, 48 ~~> Byte[0x8000306e]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 11
      0x80001620 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x80001624 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x80001628 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x8000162c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001694 ret                            #; ra  = 0x80001cd8, goto 0x80001cd8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001cd8 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001cdc mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ce0 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001cb8
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001cb8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
      0x80001cbc lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
      0x80001cc0 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001cc4 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001cc8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001ccc mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001cd0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001cd4 jalr    s7                     #; s7  = 0x800015ec, (wrb) ra  <-- 0x80001cd8, goto 0x800015ec
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ec beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
      0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
      0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 11
      0x8000160c addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 12 ~~> Word[0x8000301c]
      0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 11, (wrb) a4  <-- 0x80003027
      0x80001618 sb      a0, 72(a4)             #; a4  = 0x80003027, 48 ~~> Byte[0x8000306f]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 12
      0x80001620 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x80001624 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x80001628 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x8000162c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001694 ret                            #; ra  = 0x80001cd8, goto 0x80001cd8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001cd8 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001cdc mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ce0 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001cb8
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001cb8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
      0x80001cbc lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
      0x80001cc0 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001cc4 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001cc8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001ccc mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001cd0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001cd4 jalr    s7                     #; s7  = 0x800015ec, (wrb) ra  <-- 0x80001cd8, goto 0x800015ec
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ec beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
      0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
      0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 12
      0x8000160c addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 13 ~~> Word[0x8000301c]
      0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 12, (wrb) a4  <-- 0x80003028
      0x80001618 sb      a0, 72(a4)             #; a4  = 0x80003028, 48 ~~> Byte[0x80003070]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 13
      0x80001620 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x80001624 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x80001628 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x8000162c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001694 ret                            #; ra  = 0x80001cd8, goto 0x80001cd8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001cd8 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001cdc mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ce0 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001cb8
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001cb8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
      0x80001cbc lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
      0x80001cc0 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001cc4 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001cc8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001ccc mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001cd0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001cd4 jalr    s7                     #; s7  = 0x800015ec, (wrb) ra  <-- 0x80001cd8, goto 0x800015ec
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ec beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
      0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
      0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 13
      0x8000160c addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 14 ~~> Word[0x8000301c]
      0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 13, (wrb) a4  <-- 0x80003029
      0x80001618 sb      a0, 72(a4)             #; a4  = 0x80003029, 48 ~~> Byte[0x80003071]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 14
      0x80001620 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x80001624 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x80001628 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x8000162c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001694 ret                            #; ra  = 0x80001cd8, goto 0x80001cd8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001cd8 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001cdc mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ce0 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001cb8
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001cb8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
      0x80001cbc lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
      0x80001cc0 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001cc4 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001cc8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001ccc mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001cd0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001cd4 jalr    s7                     #; s7  = 0x800015ec, (wrb) ra  <-- 0x80001cd8, goto 0x800015ec
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ec beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
      0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
      0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 14
      0x8000160c addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 15 ~~> Word[0x8000301c]
      0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 14, (wrb) a4  <-- 0x8000302a
      0x80001618 sb      a0, 72(a4)             #; a4  = 0x8000302a, 48 ~~> Byte[0x80003072]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 15
      0x80001620 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x80001624 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x80001628 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x8000162c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001694 ret                            #; ra  = 0x80001cd8, goto 0x80001cd8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001cd8 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001cdc mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ce0 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001cb8
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001cb8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
      0x80001cbc lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
      0x80001cc0 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001cc4 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001cc8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001ccc mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001cd0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001cd4 jalr    s7                     #; s7  = 0x800015ec, (wrb) ra  <-- 0x80001cd8, goto 0x800015ec
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ec beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
      0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
      0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 15
      0x8000160c addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 16 ~~> Word[0x8000301c]
      0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 15, (wrb) a4  <-- 0x8000302b
      0x80001618 sb      a0, 72(a4)             #; a4  = 0x8000302b, 48 ~~> Byte[0x80003073]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 16
      0x80001620 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x80001624 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x80001628 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x8000162c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001630 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001634 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001694
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001694 ret                            #; ra  = 0x80001cd8, goto 0x80001cd8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001cd8 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001cdc mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ce0 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001ce4 j       pc + 0x8               #; goto 0x80001cec
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001cec sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x80001cf0 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80001cf4 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001cf8 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001cfc or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001d00 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001d30
; _ftoa (printf.c:0)
      0x80001d30 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x80001d34 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80001d38 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
      0x80001d3c fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
                                                #; (f:lsu) fs1  <-- 0.0
      0x80001d44 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
      0x80001d40 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68]
                                                #; (f:lsu) fs0  <-- 0.0000000
                                                #; (lsu) s10 <-- 0x80002cde
      0x80001d48 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 8
      0x80001d4c lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 16
      0x80001d50 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x80001d54 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x80001d58 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- -1
      0x80001d5c lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0x0011ff17
      0x80001d60 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0x0011ff30
      0x80001d64 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x800015ec
      0x80001d68 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 8
      0x80001d6c lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0
      0x80001d70 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
      0x80001d74 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80000d1c
      0x80001d78 ret                            #; ra  = 0x80000d1c, goto 0x80000d1c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000d1c j       pc + 0x7c0             #; goto 0x800014dc
      0x800014dc mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x800014e0 li      s6, 37                 #; (wrb) s6  <-- 37
      0x800014e4 li      s7, 46                 #; (wrb) s7  <-- 46
      0x800014e8 addi    s0, s10, 1             #; s10 = 0x80002cde, (wrb) s0  <-- 0x80002cdf
      0x800014ec j       pc - 0xa74             #; goto 0x80000a78
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a78 addi    s10, s0, 2             #; s0  = 0x80002cdf, (wrb) s10 <-- 0x80002ce1
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a7c mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x80000a80 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a84 lbu     a0, 0(s0)              #; s0  = 0x80002cdf, a0  <~~ Byte[0x80002cdf]
                                                #; (lsu) a0  <-- 10
      0x80000a88 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000a8c beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000a90 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x80000a94 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000a98 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x80000a9c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000aa0 jalr    s2                     #; s2  = 0x800015ec, (wrb) ra  <-- 0x80000aa4, goto 0x800015ec
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ec beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800015fc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035fc
      0x80001600 addi    a3, a3, -1504          #; a3  = 0x800035fc, (wrb) a3  <-- 0x8000301c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001604 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
      0x80001608 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 16
      0x8000160c addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x80001610 sw      a5, 0(a1)              #; a1  = 0x8000301c, 17 ~~> Word[0x8000301c]
      0x80001614 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 16, (wrb) a4  <-- 0x8000302c
      0x80001618 sb      a0, 72(a4)             #; a4  = 0x8000302c, 10 ~~> Byte[0x80003074]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000161c lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
                                                #; (lsu) a4  <-- 17
      0x80001620 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x80001624 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x80001628 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x8000162c snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x80001630 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x80001634 bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001638 add     a0, a3, a2             #; a3  = 0x8000301c, a2  = 0, (wrb) a0  <-- 0x8000301c
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000163c addi    a2, a0, 72             #; a0  = 0x8000301c, (wrb) a2  <-- 0x80003064
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001640 sw      zero, 12(a0)           #; a0  = 0x8000301c, 0 ~~> Word[0x80003028]
      0x80001644 li      a3, 64                 #; (wrb) a3  <-- 64
      0x80001648 sw      a3, 8(a0)              #; a0  = 0x8000301c, 64 ~~> Word[0x80003024]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000164c sw      zero, 20(a0)           #; a0  = 0x8000301c, 0 ~~> Word[0x80003030]
      0x80001650 li      a3, 1                  #; (wrb) a3  <-- 1
      0x80001654 sw      a3, 16(a0)             #; a0  = 0x8000301c, 1 ~~> Word[0x8000302c]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001658 sw      zero, 28(a0)           #; a0  = 0x8000301c, 0 ~~> Word[0x80003038]
      0x8000165c sw      a2, 24(a0)             #; a0  = 0x8000301c, 0x80003064 ~~> Word[0x80003034]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001660 lw      a2, 0(a1)              #; a1  = 0x8000301c, a2  <~~ Word[0x8000301c]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001664 addi    a3, a0, 8              #; a0  = 0x8000301c, (wrb) a3  <-- 0x80003024
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001668 sw      zero, 36(a0)           #; a0  = 0x8000301c, 0 ~~> Word[0x80003040]
                                                #; (lsu) a2  <-- 17
      0x8000166c sw      a2, 32(a0)             #; a0  = 0x8000301c, 17 ~~> Word[0x8000303c]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001670 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003670
      0x80001674 addi    a0, a0, -1904          #; a0  = 0x80003670, (wrb) a0  <-- 0x80002f00
      0x80001678 sw      a3, 0(a0)              #; a0  = 0x80002f00, 0x80003024 ~~> Word[0x80002f00]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000167c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000367c
      0x80001680 addi    a0, a0, -1852          #; a0  = 0x8000367c, (wrb) a0  <-- 0x80002f40
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001684 lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
                                                #; (lsu) a2  <-- 0
      0x80001688 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001684
      0x80001684 lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
                                                #; (lsu) a2  <-- 0
      0x80001688 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001684
      0x80001684 lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
                                                #; (lsu) a2  <-- 0
      0x80001688 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001684
      0x80001684 lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
                                                #; (lsu) a2  <-- 0
      0x80001688 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001684
      0x80001684 lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
                                                #; (lsu) a2  <-- 0
      0x80001688 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001684
      0x80001684 lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
                                                #; (lsu) a2  <-- 0
      0x80001688 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001684
      0x80001684 lw      a2, 0(a0)              #; a0  = 0x80002f40, a2  <~~ Word[0x80002f40]
                                                #; (lsu) a2  <-- 1
      0x80001688 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000168c sw      zero, 0(a0)            #; a0  = 0x80002f40, 0 ~~> Word[0x80002f40]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001690 sw      zero, 0(a1)            #; a1  = 0x8000301c, 0 ~~> Word[0x8000301c]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001694 ret                            #; ra  = 0x80000aa4, goto 0x80000aa4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000aa4 addi    s0, s0, 1              #; s0  = 0x80002cdf, (wrb) s0  <-- 0x80002ce0
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000aa8 addi    s10, s10, 1            #; s10 = 0x80002ce1, (wrb) s10 <-- 0x80002ce2
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000aac mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ab0 lbu     a0, 0(s0)              #; s0  = 0x80002ce0, a0  <~~ Byte[0x80002ce0]
                                                #; (lsu) a0  <-- 0
      0x80000ab4 bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000ab8 j       pc + 0xad8             #; goto 0x80001590
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x80001590 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x80001594 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x8000159c
      0x8000159c li      a0, 0                  #; (wrb) a0  <-- 0
      0x800015a0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800015a4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800015a8 jalr    s2                     #; s2  = 0x800015ec, (wrb) ra  <-- 0x800015ac, goto 0x800015ec
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800015ec beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001694
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001694 ret                            #; ra  = 0x800015ac, goto 0x800015ac
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x800015ac mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x800015b0 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
                                                #; (lsu) s11 <-- 0
      0x800015b4 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
                                                #; (lsu) s10 <-- 0
      0x800015b8 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
                                                #; (lsu) s9  <-- 0
      0x800015bc lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
                                                #; (lsu) s8  <-- 0
      0x800015c0 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
                                                #; (lsu) s7  <-- 0
      0x800015c4 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
                                                #; (lsu) s6  <-- 0
      0x800015c8 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
                                                #; (lsu) s5  <-- 0
      0x800015cc lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
                                                #; (lsu) s4  <-- 0
      0x800015d0 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
                                                #; (lsu) s3  <-- 0
      0x800015d4 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
                                                #; (lsu) s2  <-- 0
      0x800015d8 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
                                                #; (lsu) s1  <-- 0x00100350
      0x800015dc lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
                                                #; (lsu) s0  <-- 0x00100320
      0x800015e0 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
      0x800015e4 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
                                                #; (lsu) ra  <-- 0x800009e8
      0x800015e8 ret                            #; ra  = 0x800009e8, goto 0x800009e8
; printf_ (printf.c:869)
      0x800009e8 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
      0x800009ec addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x80000970
      0x800009f0 ret                            #; ra  = 0x80000970, goto 0x80000970
; main (test_mat.c:0)
      0x80000970 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002970
      0x80000974 addi    a0, a0, 1528           #; a0  = 0x80002970, (wrb) a0  <-- 0x80002f68
      0x80000978 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f68]
; main (test_mat.c:46)
      0x80000984 lw      s1, 20(sp)             #; sp  = 0x0011ff40, s1  <~~ Word[0x0011ff54]
                                                #; (f:lsu) ft0  <-- 0.0001
; main (test_mat.c:45)
      0x8000097c flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0000000
                                                #; (lsu) s1  <-- 0
; main (test_mat.c:46)
      0x80000988 lw      s0, 24(sp)             #; sp  = 0x0011ff40, s0  <~~ Word[0x0011ff58], (acc) s0  <-- 0x01812403
      0x80000980 fld     fs0, 8(sp)             #; fs0  <~~ Doub[0x0011ff48]
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) s0  <-- 0
      0x8000098c lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
      0x80000990 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002a50
      0x80000994 ret                            #; ra  = 0x80002a50, goto 0x80002a50
; ?? (start.S:184)
      0x80002a50 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x80002a54 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a54
      0x80002a58 jalr    ra, ra, 524            #; ra  = 0x80002a54, (wrb) ra  <-- 0x80002a5c, goto 0x80002c60
; ?? (start_snitch.S:33)
      0x80002c60 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002c64 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002a5c ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002c68 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c68
      0x80002c6c jalr    ra, ra, -1268          #; ra  = 0x80002c68, (wrb) ra  <-- 0x80002c70, goto 0x80002774
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002774 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002778 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000277c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002780 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002784 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002788 ret                            #; ra  = 0x80002c70, goto 0x80002c70
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
      0x80002a5c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x80002a60 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a60
      0x80002a64 jalr    ra, ra, 556            #; ra  = 0x80002a60, (wrb) ra  <-- 0x80002a68, goto 0x80002c8c
; ?? (start_snitch.S:15)
      0x80002c8c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80002c90 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80002c94 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002a68 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80002c98 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c98
      0x80002c9c jalr    ra, ra, -1348          #; ra  = 0x80002c98, (wrb) ra  <-- 0x80002ca0, goto 0x80002754
; snrt_global_core_idx (team.c:32)
      0x80002754 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002758 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000275c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002760 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002764 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x80002768 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x8000276c sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x80002770 ret                            #; ra  = 0x80002ca0, goto 0x80002ca0
; ?? (start_snitch.S:20)
      0x80002ca0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x80002ca4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80002ca8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x80002cac bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x80002a68
; ?? (start_snitch.S:28)
      0x80002cb0 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x80002cb4 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x80002cb8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002cb8
      0x80002cbc addi    t1, t1, 584            #; t1  = 0x80002cb8, (wrb) t1  <-- 0x80002f00
; ?? (start_snitch.S:31)
      0x80002cc0 sw      t0, 0(t1)              #; t1  = 0x80002f00, 1 ~~> Word[0x80002f00]
; ?? (start_snitch.S:32)
      0x80002cc4 ret                            #; ra  = 0x80002a68, goto 0x80002a68
; ?? (start.S:198)
      0x80002a68 wfi                            #; 
                        tion 0 @ (12, 8244):
                          142
                          222
                          112
                          469
                      11.7746
                       0.2709
                       0.3141
                          1.0
                          1.0
                            0
                       2.4318
                       1.7122
                       0.1240
                       0.0534
                       0.4310
                         8233
                       0.3949
