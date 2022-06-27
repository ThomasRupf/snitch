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
