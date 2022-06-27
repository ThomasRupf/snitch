; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x80002920
      0x00001014 jalr    t0                     #; t0  = 0x80002920, (wrb) ra  <-- 4120, goto 0x80002920
; ?? (start.S:20)
      0x80002920 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003920
; ?? (start.S:21)
      0x80002924 addi    gp, gp, -280           #; gp  = 0x80003920, (wrb) gp  <-- 0x80003808
; ?? (start.S:28)
      0x80002928 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002928
      0x8000292c jalr    ra, ra, 964            #; ra  = 0x80002928, (wrb) ra  <-- 0x80002930, goto 0x80002cec
; ?? (start_snitch.S:16)
      0x80002cec mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80002cf0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80002cf4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80002cf8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x80002cfc lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80002d00 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80002d04 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80002d08 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x80002d0c mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80002d10 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80002d14 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80002d18 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x80002d1c ret                            #; ra  = 0x80002930, goto 0x80002930
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x80002930 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x80002934 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x80002938 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002938
      0x8000293c jalr    ra, ra, 1036           #; ra  = 0x80002938, (wrb) ra  <-- 0x80002940, goto 0x80002d44
; ?? (start_snitch.S:48)
      0x80002d44 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80002d48 ret                            #; ra  = 0x80002940, goto 0x80002940
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x80002940 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x80002944 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x80002948 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x8000294c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x80002950 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x80002954 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002954
      0x80002958 addi    t0, t0, 1916           #; t0  = 0x80002954, (wrb) t0  <-- 0x800030d0
; ?? (start.S:49)
      0x8000295c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000295c
      0x80002960 addi    t1, t1, 1912           #; t1  = 0x8000295c, (wrb) t1  <-- 0x800030d4
; ?? (start.S:50)
      0x80002964 bge     t0, t1, pc + 16        #; t0  = 0x800030d0, t1  = 0x800030d4, not taken
; ?? (start.S:51)
      0x80002968 sw      zero, 0(t0)            #; t0  = 0x800030d0, 0 ~~> Word[0x800030d0]
; ?? (start.S:52)
      0x8000296c addi    t0, t0, 4              #; t0  = 0x800030d0, (wrb) t0  <-- 0x800030d4
; ?? (start.S:53)
      0x80002970 blt     t0, t1, pc - 8         #; t0  = 0x800030d4, t1  = 0x800030d4, not taken
; ?? (start.S:58)
      0x80002974 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x80002978 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x8000297c beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x80002980 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x80002984 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x80002988 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x8000298c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x80002990 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x80002994 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x80002998 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x8000299c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x800029a0 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x800029a4 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x800029a8 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x800029ac fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x800029b0 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x800029b4 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x800029b8 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x800029bc fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x800029c0 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x800029c4 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x800029c8 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x800029cc fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x800029d0 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x800029d4 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x800029d8 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x800029dc fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x800029e0 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x800029e4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x800029e8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x800029ec fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x800029f0 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x800029f4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x800029f8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x800029fc fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x80002a00 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x80002a04 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x80002a08 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a08
      0x80002a0c lw      t0, 900(t0)            #; t0  = 0x80002a08, t0  <~~ Word[0x80002d8c]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x80002a10 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x80002a14 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x80002a18 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002a18
      0x80002a1c lw      t2, 880(t2)            #; t2  = 0x80002a18, t2  <~~ Word[0x80002d88]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x80002a20 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x80002a24 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x80002a28 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x80002a2c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x80002a30 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x80002a34 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x80002a38 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x80002a3c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x80002a40 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a40
      0x80002a44 addi    t0, t0, 1480           #; t0  = 0x80002a40, (wrb) t0  <-- 0x80003008
; ?? (start.S:125)
      0x80002a48 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002a48
      0x80002a4c addi    t1, t1, 1472           #; t1  = 0x80002a48, (wrb) t1  <-- 0x80003008
; ?? (start.S:126)
      0x80002a50 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002a50
      0x80002a54 addi    t2, t2, 1464           #; t2  = 0x80002a50, (wrb) t2  <-- 0x80003008
; ?? (start.S:127)
      0x80002a58 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002a58
      0x80002a5c addi    t3, t3, 1472           #; t3  = 0x80002a58, (wrb) t3  <-- 0x80003018
; ?? (start.S:128)
      0x80002a60 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003008, (wrb) sp  <-- 0x80122f78
; ?? (start.S:129)
      0x80002a64 sub     sp, sp, t1             #; sp  = 0x80122f78, t1  = 0x80003008, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x80002a68 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003008, (wrb) sp  <-- 0x80122f78
; ?? (start.S:131)
      0x80002a6c sub     sp, sp, t3             #; sp  = 0x80122f78, t3  = 0x80003018, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x80002a70 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x80002a74 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x80002a78 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x80002a7c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x80002a80 bge     t0, t1, pc + 24        #; t0  = 0x80003008, t1  = 0x80003008, taken, goto 0x80002a98
; ?? (start.S:147)
      0x80002a98 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a98
      0x80002a9c addi    t0, t0, 1392           #; t0  = 0x80002a98, (wrb) t0  <-- 0x80003008
; ?? (start.S:148)
      0x80002aa0 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002aa0
      0x80002aa4 addi    t1, t1, 1400           #; t1  = 0x80002aa0, (wrb) t1  <-- 0x80003018
; ?? (start.S:149)
      0x80002aa8 bge     t0, t1, pc + 20        #; t0  = 0x80003008, t1  = 0x80003018, not taken
; ?? (start.S:150)
      0x80002aac sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x80002ab0 addi    t0, t0, 4              #; t0  = 0x80003008, (wrb) t0  <-- 0x8000300c
; ?? (start.S:152)
      0x80002ab4 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x80002ab8 blt     t0, t2, pc - 12        #; t0  = 0x8000300c, t2  = 0x80003008, not taken
; ?? (start.S:158)
      0x80002abc addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x80002ac0 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x80002ac4 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x80002ac8 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x80002acc sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x80002ad0 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x80002ad4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ad4
      0x80002ad8 jalr    ra, ra, -1052          #; ra  = 0x80002ad4, (wrb) ra  <-- 0x80002adc, goto 0x800026b8
; _snrt_init_team (start.c:49)
      0x800026b8 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x800026bc sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x800026c0 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x800026c4 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x800026c8 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x800026cc lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x800026d0 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x800026d4 mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x800026d8 mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x800026dc sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x800026e0 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x800026e4 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x800026e8 divu    a0, a0, t0             #; a0  = 0, t0  = 8
                                                #; (acc) a6  <-- 0x00a7a823
; _snrt_init_team (start.c:54)
      0x800026ec sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x800026f0 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x800026f4 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x800026f8 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x800026fc lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x80002700 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x80002704 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x80002708 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x8000270c sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x80002710 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x80002714 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x80002718 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x8000271c sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x80002720 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x80002724 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x80002728 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x8000272c sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x80002730 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x80002734 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x80002738 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x8000273c sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x80002740 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x80002744 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x80002748 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x8000274c sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x80002750 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x80002754 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x80002758 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x8000275c slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x80002760 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x80002764 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x80002768 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x8000276c sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x80002770 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x80002774 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x80002778 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000277c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002780 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x80002784 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002788 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x8000278c lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x80002790 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x80002794 remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x80002798 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x8000279c add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
      0x800027a0 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x800027a4 li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x800027a8 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x800027ac auipc   a1, 0x1                #; (wrb) a1  <-- 0x800037ac
      0x800027b0 addi    a1, a1, -1752          #; a1  = 0x800037ac, (wrb) a1  <-- 0x800030d4
      0x800027b4 add     a0, a0, a1             #; a0  = 0, a1  = 0x800030d4, (wrb) a0  <-- 0x800030d4
      0x800027b8 sw      zero, 0(a0)            #; a0  = 0x800030d4, 0 ~~> Word[0x800030d4]
; _snrt_init_team (start.c:86)
      0x800027bc lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x800027c0 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x800027c4 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x800027c8 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x800027cc addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x800027d0 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x800027d4 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x800027d8 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x800027dc sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x800027e0 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x800027e4 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x800027e8 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x800027ec lw      a0, 0(a1)              #; a1  = 0x800030d4, a0  <~~ Word[0x800030d4]
                                                #; (lsu) a0  <-- 0
      0x800027f0 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x800027f4 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x800027f8 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x800027fc sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x80002800 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x80002804 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002808 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000280c sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x80002810 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002814 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002818 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x8000281c ret                            #; ra  = 0x80002adc, goto 0x80002adc
; ?? (start.S:165)
      0x80002adc lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x80002ae0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x80002ae4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x80002ae8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x80002aec lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x80002af0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x80002af4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002af4
      0x80002af8 addi    t0, t0, 60             #; t0  = 0x80002af4, (wrb) t0  <-- 0x80002b30
; ?? (start.S:175)
      0x80002afc csrw    mtvec, t0              #; t0  = 0x80002b30, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x80002b00 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b00
      0x80002b04 jalr    ra, ra, 544            #; ra  = 0x80002b00, (wrb) ra  <-- 0x80002b08, goto 0x80002d20
; ?? (start_snitch.S:33)
      0x80002d20 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002d24 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002b08 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002d28 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d28
      0x80002d2c jalr    ra, ra, -1256          #; ra  = 0x80002d28, (wrb) ra  <-- 0x80002d30, goto 0x80002840
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002840 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002844 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002848 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000284c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002850 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002854 ret                            #; ra  = 0x80002d30, goto 0x80002d30
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002d30 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002d34 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002d38 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002d3c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002b08
; ?? (start_snitch.S:40)
      0x80002d40 ret                            #; ra  = 0x80002b08, goto 0x80002b08
; ?? (start.S:183)
      0x80002b08 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000b08
      0x80002b0c jalr    ra, ra, -1236          #; ra  = 0x80000b08, (wrb) ra  <-- 0x80002b10, goto 0x80000634
; main (test_conflict.c:13)
      0x80000634 addi    sp, sp, -48            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff30
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (test_conflict.c:14)
      0x80000638 sw      ra, 44(sp)             #; sp  = 0x0011ff30, 0x80002b10 ~~> Word[0x0011ff5c]
      0x8000063c sw      s0, 40(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff58]
      0x80000640 sw      s1, 36(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff54]
      0x80000644 sw      s2, 32(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff50]
      0x80000648 sw      s3, 28(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff4c]
      0x8000064c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff40]
      0x80000650 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000654 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000658 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
; main (test_conflict.c:0)
      0x8000065c li      a0, 0                  #; (wrb) a0  <-- 0
                                                #; (lsu) a1  <-- 0
; main (test_conflict.c:14)
      0x80000660 bnez    a1, pc + 976           #; a1  = 0, not taken
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (test_conflict.c:18)
      0x80000664 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000668 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000066c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80000670 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in main (test_conflict.c:18)
      0x80000674 lw      s0, 88(a0)             #; a0  = 0x0011ff70, s0  <~~ Word[0x0011ffc8]
                                                #; (lsu) s0  <-- 0x00100000
      0x80000678 lw      a1, 80(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
                                                #; (lsu) a1  <-- 0x00100000
      0x8000067c lw      a2, 84(a0)             #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ffc4]
      0x80000680 addi    a3, s0, 80             #; s0  = 0x00100000, (wrb) a3  <-- 0x00100050
                                                #; (lsu) a2  <-- 0x0001df30
      0x80000684 add     a1, a2, a1             #; a2  = 0x0001df30, a1  = 0x00100000, (wrb) a1  <-- 0x0011df30
      0x80000688 bgeu    a1, a3, pc + 44        #; a1  = 0x0011df30, a3  = 0x00100050, taken, goto 0x800006b4
; snrt_l1alloc (alloc.c:33)
;  in main (test_conflict.c:18)
      0x800006b4 mv      s2, s0                 #; s0  = 0x00100000, (wrb) s2  <-- 0x00100000
; snrt_l1alloc (alloc.c:34)
;  in main (test_conflict.c:18)
      0x800006b8 sw      a3, 88(a0)             #; a0  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
; snrt_l1alloc (alloc.c:25)
;  in main (test_conflict.c:19)
      0x800006bc addi    a2, s0, 160            #; s0  = 0x00100000, (wrb) a2  <-- 0x001000a0
      0x800006c0 mv      s0, a3                 #; a3  = 0x00100050, (wrb) s0  <-- 0x00100050
      0x800006c4 bgeu    a1, a2, pc - 44        #; a1  = 0x0011df30, a2  = 0x001000a0, taken, goto 0x80000698
; snrt_l1alloc (alloc.c:33)
;  in main (test_conflict.c:19)
      0x80000698 mv      s1, s0                 #; s0  = 0x00100050, (wrb) s1  <-- 0x00100050
; snrt_l1alloc (alloc.c:34)
;  in main (test_conflict.c:19)
      0x8000069c sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x001000a0 ~~> Word[0x0011ffc8]
; snrt_l1alloc (alloc.c:25)
;  in main (test_conflict.c:20)
      0x800006a0 addi    a3, a2, 80             #; a2  = 0x001000a0, (wrb) a3  <-- 0x001000f0
      0x800006a4 mv      s0, a2                 #; a2  = 0x001000a0, (wrb) s0  <-- 0x001000a0
      0x800006a8 bltu    a1, a3, pc + 44        #; a1  = 0x0011df30, a3  = 0x001000f0, not taken
; snrt_l1alloc (alloc.c:34)
;  in main (test_conflict.c:20)
      0x800006ac sw      a3, 88(a0)             #; a0  = 0x0011ff70, 0x001000f0 ~~> Word[0x0011ffc8]
      0x800006b0 j       pc + 0x28              #; goto 0x800006d8
; main (alloc.c:0)
      0x800006d8 lui     a0, 0x3ff6a            #; (wrb) a0  <-- 0x3ff6a000
      0x800006dc addi    a0, a0, 144            #; a0  = 0x3ff6a000, (wrb) a0  <-- 0x3ff6a090
; init_data (test_conflict.c:9)
;  in main (test_conflict.c:22)
      0x800006e0 sw      a0, 4(s2)              #; s2  = 0x00100000, 0x3ff6a090 ~~> Word[0x00100004]
      0x800006e4 lui     a0, 0x2de01            #; (wrb) a0  <-- 0x2de01000
      0x800006e8 addi    a0, a0, -741           #; a0  = 0x2de01000, (wrb) a0  <-- 0x2de00d1b
      0x800006ec sw      a0, 0(s2)              #; s2  = 0x00100000, 0x2de00d1b ~~> Word[0x00100000]
      0x800006f0 lui     a1, 0x4006a            #; (wrb) a1  <-- 0x4006a000
      0x800006f4 addi    a6, a1, 144            #; a1  = 0x4006a000, (wrb) a6  <-- 0x4006a090
      0x800006f8 sw      a6, 12(s2)             #; s2  = 0x00100000, 0x4006a090 ~~> Word[0x0010000c]
      0x800006fc sw      a0, 8(s2)              #; s2  = 0x00100000, 0x2de00d1b ~~> Word[0x00100008]
      0x80000700 lui     a1, 0x40110            #; (wrb) a1  <-- 0x40110000
      0x80000704 addi    a7, a1, -1940          #; a1  = 0x40110000, (wrb) a7  <-- 0x4010f86c
      0x80000708 sw      a7, 20(s2)             #; s2  = 0x00100000, 0x4010f86c ~~> Word[0x00100014]
      0x8000070c lui     a1, 0x22681            #; (wrb) a1  <-- 0x22681000
      0x80000710 addi    a1, a1, -1580          #; a1  = 0x22681000, (wrb) a1  <-- 0x226809d4
      0x80000714 sw      a1, 16(s2)             #; s2  = 0x00100000, 0x226809d4 ~~> Word[0x00100010]
      0x80000718 lui     a4, 0x4016a            #; (wrb) a4  <-- 0x4016a000
      0x8000071c addi    t0, a4, 144            #; a4  = 0x4016a000, (wrb) t0  <-- 0x4016a090
      0x80000720 sw      t0, 28(s2)             #; s2  = 0x00100000, 0x4016a090 ~~> Word[0x0010001c]
      0x80000724 sw      a0, 24(s2)             #; s2  = 0x00100000, 0x2de00d1b ~~> Word[0x00100018]
      0x80000728 lui     a5, 0x401c5            #; (wrb) a5  <-- 0x401c5000
      0x8000072c addi    t1, a5, -1868          #; a5  = 0x401c5000, (wrb) t1  <-- 0x401c48b4
      0x80000730 sw      t1, 36(s2)             #; s2  = 0x00100000, 0x401c48b4 ~~> Word[0x00100024]
      0x80000734 lui     a2, 0x39581            #; (wrb) a2  <-- 0x39581000
      0x80000738 addi    a2, a2, 98             #; a2  = 0x39581000, (wrb) a2  <-- 0x39581062
      0x8000073c sw      a2, 32(s2)             #; s2  = 0x00100000, 0x39581062 ~~> Word[0x00100020]
      0x80000740 lui     a3, 0x40210            #; (wrb) a3  <-- 0x40210000
      0x80000744 addi    t2, a3, -1940          #; a3  = 0x40210000, (wrb) t2  <-- 0x4020f86c
      0x80000748 sw      t2, 44(s2)             #; s2  = 0x00100000, 0x4020f86c ~~> Word[0x0010002c]
      0x8000074c sw      a1, 40(s2)             #; s2  = 0x00100000, 0x226809d4 ~~> Word[0x00100028]
      0x80000750 lui     a4, 0x4023d            #; (wrb) a4  <-- 0x4023d000
      0x80000754 addi    t3, a4, -898           #; a4  = 0x4023d000, (wrb) t3  <-- 0x4023cc7e
      0x80000758 sw      t3, 52(s2)             #; s2  = 0x00100000, 0x4023cc7e ~~> Word[0x00100034]
      0x8000075c lui     a5, 0x28241            #; (wrb) a5  <-- 0x28241000
      0x80000760 addi    t5, a5, -1160          #; a5  = 0x28241000, (wrb) t5  <-- 0x28240b78
      0x80000764 sw      t5, 48(s2)             #; s2  = 0x00100000, 0x28240b78 ~~> Word[0x00100030]
      0x80000768 lui     a3, 0x4026a            #; (wrb) a3  <-- 0x4026a000
      0x8000076c addi    t4, a3, 144            #; a3  = 0x4026a000, (wrb) t4  <-- 0x4026a090
      0x80000770 sw      t4, 60(s2)             #; s2  = 0x00100000, 0x4026a090 ~~> Word[0x0010003c]
      0x80000774 sw      a0, 56(s2)             #; s2  = 0x00100000, 0x2de00d1b ~~> Word[0x00100038]
      0x80000778 lui     a4, 0x40297            #; (wrb) a4  <-- 0x40297000
      0x8000077c addi    t6, a4, 1186           #; a4  = 0x40297000, (wrb) t6  <-- 0x402974a2
      0x80000780 sw      t6, 68(s2)             #; s2  = 0x00100000, 0x402974a2 ~~> Word[0x00100044]
      0x80000784 lui     a3, 0x339c1            #; (wrb) a3  <-- 0x339c1000
      0x80000788 addi    s3, a3, -322           #; a3  = 0x339c1000, (wrb) s3  <-- 0x339c0ebe
      0x8000078c sw      s3, 64(s2)             #; s2  = 0x00100000, 0x339c0ebe ~~> Word[0x00100040]
      0x80000790 sw      a2, 72(s2)             #; s2  = 0x00100000, 0x39581062 ~~> Word[0x00100048]
      0x80000794 lui     a5, 0x402c5            #; (wrb) a5  <-- 0x402c5000
      0x80000798 addi    a5, a5, -1868          #; a5  = 0x402c5000, (wrb) a5  <-- 0x402c48b4
      0x8000079c sw      a5, 76(s2)             #; s2  = 0x00100000, 0x402c48b4 ~~> Word[0x0010004c]
; init_data (test_conflict.c:9)
;  in main (test_conflict.c:23)
      0x800007a0 sw      a0, 0(s1)              #; s1  = 0x00100050, 0x2de00d1b ~~> Word[0x00100050]
      0x800007a4 sw      a6, 4(s1)              #; s1  = 0x00100050, 0x4006a090 ~~> Word[0x00100054]
      0x800007a8 sw      a1, 8(s1)              #; s1  = 0x00100050, 0x226809d4 ~~> Word[0x00100058]
      0x800007ac sw      a7, 12(s1)             #; s1  = 0x00100050, 0x4010f86c ~~> Word[0x0010005c]
      0x800007b0 sw      a0, 16(s1)             #; s1  = 0x00100050, 0x2de00d1b ~~> Word[0x00100060]
      0x800007b4 sw      t0, 20(s1)             #; s1  = 0x00100050, 0x4016a090 ~~> Word[0x00100064]
      0x800007b8 sw      a2, 24(s1)             #; s1  = 0x00100050, 0x39581062 ~~> Word[0x00100068]
      0x800007bc sw      t1, 28(s1)             #; s1  = 0x00100050, 0x401c48b4 ~~> Word[0x0010006c]
      0x800007c0 sw      a1, 32(s1)             #; s1  = 0x00100050, 0x226809d4 ~~> Word[0x00100070]
      0x800007c4 sw      t2, 36(s1)             #; s1  = 0x00100050, 0x4020f86c ~~> Word[0x00100074]
      0x800007c8 sw      t5, 40(s1)             #; s1  = 0x00100050, 0x28240b78 ~~> Word[0x00100078]
      0x800007cc sw      t3, 44(s1)             #; s1  = 0x00100050, 0x4023cc7e ~~> Word[0x0010007c]
      0x800007d0 sw      a0, 48(s1)             #; s1  = 0x00100050, 0x2de00d1b ~~> Word[0x00100080]
      0x800007d4 sw      t4, 52(s1)             #; s1  = 0x00100050, 0x4026a090 ~~> Word[0x00100084]
      0x800007d8 sw      s3, 56(s1)             #; s1  = 0x00100050, 0x339c0ebe ~~> Word[0x00100088]
      0x800007dc sw      t6, 60(s1)             #; s1  = 0x00100050, 0x402974a2 ~~> Word[0x0010008c]
      0x800007e0 sw      a2, 64(s1)             #; s1  = 0x00100050, 0x39581062 ~~> Word[0x00100090]
      0x800007e4 sw      a5, 68(s1)             #; s1  = 0x00100050, 0x402c48b4 ~~> Word[0x00100094]
      0x800007e8 lui     a4, 0x3f141            #; (wrb) a4  <-- 0x3f141000
      0x800007ec addi    a4, a4, 517            #; a4  = 0x3f141000, (wrb) a4  <-- 0x3f141205
      0x800007f0 sw      a4, 72(s1)             #; s1  = 0x00100050, 0x3f141205 ~~> Word[0x00100098]
      0x800007f4 lui     a3, 0x402f2            #; (wrb) a3  <-- 0x402f2000
      0x800007f8 addi    a3, a3, -826           #; a3  = 0x402f2000, (wrb) a3  <-- 0x402f1cc6
      0x800007fc sw      a3, 76(s1)             #; s1  = 0x00100050, 0x402f1cc6 ~~> Word[0x0010009c]
; init_data (test_conflict.c:9)
;  in main (test_conflict.c:24)
      0x80000800 sw      a1, 0(s0)              #; s0  = 0x001000a0, 0x226809d4 ~~> Word[0x001000a0]
      0x80000804 sw      a7, 4(s0)              #; s0  = 0x001000a0, 0x4010f86c ~~> Word[0x001000a4]
      0x80000808 sw      a0, 8(s0)              #; s0  = 0x001000a0, 0x2de00d1b ~~> Word[0x001000a8]
      0x8000080c sw      t0, 12(s0)             #; s0  = 0x001000a0, 0x4016a090 ~~> Word[0x001000ac]
      0x80000810 sw      a2, 16(s0)             #; s0  = 0x001000a0, 0x39581062 ~~> Word[0x001000b0]
      0x80000814 sw      t1, 20(s0)             #; s0  = 0x001000a0, 0x401c48b4 ~~> Word[0x001000b4]
      0x80000818 sw      a1, 24(s0)             #; s0  = 0x001000a0, 0x226809d4 ~~> Word[0x001000b8]
      0x8000081c sw      t2, 28(s0)             #; s0  = 0x001000a0, 0x4020f86c ~~> Word[0x001000bc]
      0x80000820 sw      t5, 32(s0)             #; s0  = 0x001000a0, 0x28240b78 ~~> Word[0x001000c0]
      0x80000824 sw      t3, 36(s0)             #; s0  = 0x001000a0, 0x4023cc7e ~~> Word[0x001000c4]
      0x80000828 sw      a0, 40(s0)             #; s0  = 0x001000a0, 0x2de00d1b ~~> Word[0x001000c8]
      0x8000082c sw      t4, 44(s0)             #; s0  = 0x001000a0, 0x4026a090 ~~> Word[0x001000cc]
      0x80000830 sw      s3, 48(s0)             #; s0  = 0x001000a0, 0x339c0ebe ~~> Word[0x001000d0]
      0x80000834 sw      t6, 52(s0)             #; s0  = 0x001000a0, 0x402974a2 ~~> Word[0x001000d4]
      0x80000838 sw      a2, 56(s0)             #; s0  = 0x001000a0, 0x39581062 ~~> Word[0x001000d8]
      0x8000083c sw      a5, 60(s0)             #; s0  = 0x001000a0, 0x402c48b4 ~~> Word[0x001000dc]
      0x80000840 sw      a4, 64(s0)             #; s0  = 0x001000a0, 0x3f141205 ~~> Word[0x001000e0]
      0x80000844 sw      a3, 68(s0)             #; s0  = 0x001000a0, 0x402f1cc6 ~~> Word[0x001000e4]
      0x80000848 sw      a1, 72(s0)             #; s0  = 0x001000a0, 0x226809d4 ~~> Word[0x001000e8]
      0x8000084c lui     a0, 0x40310            #; (wrb) a0  <-- 0x40310000
      0x80000850 addi    a0, a0, -1940          #; a0  = 0x40310000, (wrb) a0  <-- 0x4030f86c
      0x80000854 sw      a0, 76(s0)             #; s0  = 0x001000a0, 0x4030f86c ~~> Word[0x001000ec]
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x80000858 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
      0x8000085c li      a1, 0                  #; (wrb) a1  <-- 0
      0x80000860 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000860
      0x80000864 jalr    ra, ra, 496            #; ra  = 0x80000860, (wrb) ra  <-- 0x80000868, goto 0x80000a50
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000a50 slli    a1, a1, 3              #; a1  = 0, (wrb) a1  <-- 0
      0x80000a54 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 0, (wrb) a0  <-- 0x001000a0
      0x80000a58 sw      zero, 4(a0)            #; a0  = 0x001000a0, 0 ~~> Word[0x001000a4]
      0x80000a5c sw      zero, 0(a0)            #; a0  = 0x001000a0, 0 ~~> Word[0x001000a0]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000a60 ret                            #; ra  = 0x80000868, goto 0x80000868
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000868 fld     ft0, 0(s2)             #; ft0  <~~ Doub[0x00100000]
      0x8000086c fld     ft1, 0(s1)             #; ft1  <~~ Doub[0x00100050], (f:lsu) ft0  <-- 1.4142
      0x80000870 fld     ft2, 0(s0)             #; ft2  <~~ Doub[0x001000a0], (f:lsu) ft1  <-- 2.8284
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x8000087c li      a1, 1                  #; (wrb) a1  <-- 1
      0x80000874 fadd.d  ft0, ft0, ft1          #; ft0  = 1.4142, ft1  = 2.8284, (f:lsu) ft2  <-- 0.0
                                                #; (f:fpu) ft0  <-- 4.2426000
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000878 fadd.d  fs0, ft0, ft2          #; ft0  = 4.2426000, ft2  = 0.0
                                                #; (f:fpu) fs0  <-- 4.2426000
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x80000880 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
      0x80000884 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000884
      0x80000888 jalr    ra, ra, 460            #; ra  = 0x80000884, (wrb) ra  <-- 0x8000088c, goto 0x80000a50
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000a50 slli    a1, a1, 3              #; a1  = 1, (wrb) a1  <-- 8
      0x80000a54 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 8, (wrb) a0  <-- 0x001000a8
      0x80000a58 sw      zero, 4(a0)            #; a0  = 0x001000a8, 0 ~~> Word[0x001000ac]
      0x80000a5c sw      zero, 0(a0)            #; a0  = 0x001000a8, 0 ~~> Word[0x001000a8]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000a60 ret                            #; ra  = 0x8000088c, goto 0x8000088c
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x8000088c fld     ft0, 8(s2)             #; ft0  <~~ Doub[0x00100008]
                                                #; (f:lsu) ft0  <-- 2.8284
      0x80000890 fld     ft1, 8(s1)             #; ft1  <~~ Doub[0x00100058]
      0x80000894 fld     ft2, 8(s0)             #; ft2  <~~ Doub[0x001000a8], (f:lsu) ft1  <-- 4.2426000
      0x80000898 fadd.d  ft0, ft0, fs0          #; ft0  = 2.8284, fs0  = 4.2426000, (f:lsu) ft2  <-- 0.0
                                                #; (f:fpu) ft0  <-- 7.071
      0x8000089c fadd.d  ft0, ft0, ft1          #; ft0  = 7.071, ft1  = 4.2426000
                                                #; (f:fpu) ft0  <-- 11.3136
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x800008a4 li      a1, 2                  #; (wrb) a1  <-- 2
      0x800008a8 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
      0x800008a0 fadd.d  fs0, ft0, ft2          #; ft0  = 11.3136, ft2  = 0.0
      0x800008ac auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008ac
                                                #; (f:fpu) fs0  <-- 11.3136
      0x800008b0 jalr    ra, ra, 420            #; ra  = 0x800008ac, (wrb) ra  <-- 0x800008b4, goto 0x80000a50
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000a50 slli    a1, a1, 3              #; a1  = 2, (wrb) a1  <-- 16
      0x80000a54 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 16, (wrb) a0  <-- 0x001000b0
      0x80000a58 sw      zero, 4(a0)            #; a0  = 0x001000b0, 0 ~~> Word[0x001000b4]
      0x80000a5c sw      zero, 0(a0)            #; a0  = 0x001000b0, 0 ~~> Word[0x001000b0]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000a60 ret                            #; ra  = 0x800008b4, goto 0x800008b4
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x800008b4 fld     ft0, 16(s2)            #; ft0  <~~ Doub[0x00100010]
      0x800008b8 fld     ft1, 16(s1)            #; ft1  <~~ Doub[0x00100060], (f:lsu) ft0  <-- 4.2426000
      0x800008bc fld     ft2, 16(s0)            #; ft2  <~~ Doub[0x001000b0], (f:lsu) ft1  <-- 5.6568
                                                #; (f:lsu) ft2  <-- 0.0
      0x800008c0 fadd.d  ft0, ft0, fs0          #; ft0  = 4.2426000, fs0  = 11.3136
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x800008cc li      a1, 3                  #; (wrb) a1  <-- 3
                                                #; (f:fpu) ft0  <-- 15.5562000
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x800008c4 fadd.d  ft0, ft0, ft1          #; ft0  = 15.5562000, ft1  = 5.6568
                                                #; (f:fpu) ft0  <-- 21.2130000
      0x800008c8 fadd.d  fs0, ft0, ft2          #; ft0  = 21.2130000, ft2  = 0.0
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x800008d0 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
      0x800008d4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008d4
                                                #; (f:fpu) fs0  <-- 21.2130000
      0x800008d8 jalr    ra, ra, 380            #; ra  = 0x800008d4, (wrb) ra  <-- 0x800008dc, goto 0x80000a50
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000a50 slli    a1, a1, 3              #; a1  = 3, (wrb) a1  <-- 24
      0x80000a54 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 24, (wrb) a0  <-- 0x001000b8
      0x80000a58 sw      zero, 4(a0)            #; a0  = 0x001000b8, 0 ~~> Word[0x001000bc]
      0x80000a5c sw      zero, 0(a0)            #; a0  = 0x001000b8, 0 ~~> Word[0x001000b8]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000a60 ret                            #; ra  = 0x800008dc, goto 0x800008dc
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x800008dc fld     ft0, 24(s2)            #; ft0  <~~ Doub[0x00100018]
      0x800008e0 fld     ft1, 24(s1)            #; ft1  <~~ Doub[0x00100068], (f:lsu) ft0  <-- 5.6568
      0x800008e4 fld     ft2, 24(s0)            #; ft2  <~~ Doub[0x001000b8], (f:lsu) ft1  <-- 7.071
      0x800008e8 fadd.d  ft0, ft0, fs0          #; ft0  = 5.6568, fs0  = 21.2130000, (f:lsu) ft2  <-- 0.0
                                                #; (f:fpu) ft0  <-- 26.8698000
      0x800008ec fadd.d  ft0, ft0, ft1          #; ft0  = 26.8698000, ft1  = 7.071
                                                #; (f:fpu) ft0  <-- 33.9408000
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x800008f4 li      a1, 4                  #; (wrb) a1  <-- 4
      0x800008f8 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
      0x800008f0 fadd.d  fs0, ft0, ft2          #; ft0  = 33.9408000, ft2  = 0.0
      0x800008fc auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008fc
                                                #; (f:fpu) fs0  <-- 33.9408000
      0x80000900 jalr    ra, ra, 340            #; ra  = 0x800008fc, (wrb) ra  <-- 0x80000904, goto 0x80000a50
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000a50 slli    a1, a1, 3              #; a1  = 4, (wrb) a1  <-- 32
      0x80000a54 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 32, (wrb) a0  <-- 0x001000c0
      0x80000a58 sw      zero, 4(a0)            #; a0  = 0x001000c0, 0 ~~> Word[0x001000c4]
      0x80000a5c sw      zero, 0(a0)            #; a0  = 0x001000c0, 0 ~~> Word[0x001000c0]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000a60 ret                            #; ra  = 0x80000904, goto 0x80000904
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000904 fld     ft0, 32(s2)            #; ft0  <~~ Doub[0x00100020]
      0x80000908 fld     ft1, 32(s1)            #; ft1  <~~ Doub[0x00100070], (f:lsu) ft0  <-- 7.071
      0x8000090c fld     ft2, 32(s0)            #; ft2  <~~ Doub[0x001000c0], (f:lsu) ft1  <-- 8.4852000
                                                #; (f:lsu) ft2  <-- 0.0
      0x80000910 fadd.d  ft0, ft0, fs0          #; ft0  = 7.071, fs0  = 33.9408000
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x8000091c li      a1, 5                  #; (wrb) a1  <-- 5
                                                #; (f:fpu) ft0  <-- 41.0118000
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000914 fadd.d  ft0, ft0, ft1          #; ft0  = 41.0118000, ft1  = 8.4852000
                                                #; (f:fpu) ft0  <-- 49.4970000
      0x80000918 fadd.d  fs0, ft0, ft2          #; ft0  = 49.4970000, ft2  = 0.0
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x80000920 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
      0x80000924 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000924
                                                #; (f:fpu) fs0  <-- 49.4970000
      0x80000928 jalr    ra, ra, 300            #; ra  = 0x80000924, (wrb) ra  <-- 0x8000092c, goto 0x80000a50
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000a50 slli    a1, a1, 3              #; a1  = 5, (wrb) a1  <-- 40
      0x80000a54 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 40, (wrb) a0  <-- 0x001000c8
      0x80000a58 sw      zero, 4(a0)            #; a0  = 0x001000c8, 0 ~~> Word[0x001000cc]
      0x80000a5c sw      zero, 0(a0)            #; a0  = 0x001000c8, 0 ~~> Word[0x001000c8]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000a60 ret                            #; ra  = 0x8000092c, goto 0x8000092c
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x8000092c fld     ft0, 40(s2)            #; ft0  <~~ Doub[0x00100028]
                                                #; (f:lsu) ft0  <-- 8.4852000
      0x80000930 fld     ft1, 40(s1)            #; ft1  <~~ Doub[0x00100078]
      0x80000934 fld     ft2, 40(s0)            #; ft2  <~~ Doub[0x001000c8], (f:lsu) ft1  <-- 9.8994
      0x80000938 fadd.d  ft0, ft0, fs0          #; ft0  = 8.4852000, fs0  = 49.4970000, (f:lsu) ft2  <-- 0.0
                                                #; (f:fpu) ft0  <-- 57.9822000
      0x8000093c fadd.d  ft0, ft0, ft1          #; ft0  = 57.9822000, ft1  = 9.8994
                                                #; (f:fpu) ft0  <-- 67.8816000
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x80000944 li      a1, 6                  #; (wrb) a1  <-- 6
      0x80000948 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
      0x80000940 fadd.d  fs0, ft0, ft2          #; ft0  = 67.8816000, ft2  = 0.0
      0x8000094c auipc   ra, 0x0                #; (wrb) ra  <-- 0x8000094c
                                                #; (f:fpu) fs0  <-- 67.8816000
      0x80000950 jalr    ra, ra, 260            #; ra  = 0x8000094c, (wrb) ra  <-- 0x80000954, goto 0x80000a50
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000a50 slli    a1, a1, 3              #; a1  = 6, (wrb) a1  <-- 48
      0x80000a54 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 48, (wrb) a0  <-- 0x001000d0
      0x80000a58 sw      zero, 4(a0)            #; a0  = 0x001000d0, 0 ~~> Word[0x001000d4]
      0x80000a5c sw      zero, 0(a0)            #; a0  = 0x001000d0, 0 ~~> Word[0x001000d0]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000a60 ret                            #; ra  = 0x80000954, goto 0x80000954
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000954 fld     ft0, 48(s2)            #; ft0  <~~ Doub[0x00100030]
      0x80000958 fld     ft1, 48(s1)            #; ft1  <~~ Doub[0x00100080], (f:lsu) ft0  <-- 9.8994
      0x8000095c fld     ft2, 48(s0)            #; ft2  <~~ Doub[0x001000d0], (f:lsu) ft1  <-- 11.3136
      0x80000960 fadd.d  ft0, ft0, fs0          #; ft0  = 9.8994, fs0  = 67.8816000, (f:lsu) ft2  <-- 0.0
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x8000096c li      a1, 7                  #; (wrb) a1  <-- 7
                                                #; (f:fpu) ft0  <-- 77.7810000
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000964 fadd.d  ft0, ft0, ft1          #; ft0  = 77.7810000, ft1  = 11.3136
                                                #; (f:fpu) ft0  <-- 89.0946000
      0x80000968 fadd.d  fs0, ft0, ft2          #; ft0  = 89.0946000, ft2  = 0.0
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x80000970 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
      0x80000974 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000974
                                                #; (f:fpu) fs0  <-- 89.0946000
      0x80000978 jalr    ra, ra, 220            #; ra  = 0x80000974, (wrb) ra  <-- 0x8000097c, goto 0x80000a50
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000a50 slli    a1, a1, 3              #; a1  = 7, (wrb) a1  <-- 56
      0x80000a54 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 56, (wrb) a0  <-- 0x001000d8
      0x80000a58 sw      zero, 4(a0)            #; a0  = 0x001000d8, 0 ~~> Word[0x001000dc]
      0x80000a5c sw      zero, 0(a0)            #; a0  = 0x001000d8, 0 ~~> Word[0x001000d8]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000a60 ret                            #; ra  = 0x8000097c, goto 0x8000097c
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x8000097c fld     ft0, 56(s2)            #; ft0  <~~ Doub[0x00100038]
                                                #; (f:lsu) ft0  <-- 11.3136
      0x80000980 fld     ft1, 56(s1)            #; ft1  <~~ Doub[0x00100088]
      0x80000984 fld     ft2, 56(s0)            #; ft2  <~~ Doub[0x001000d8], (f:lsu) ft1  <-- 12.7278000
      0x80000988 fadd.d  ft0, ft0, fs0          #; ft0  = 11.3136, fs0  = 89.0946000, (f:lsu) ft2  <-- 0.0
                                                #; (f:fpu) ft0  <-- 100.4082000
      0x8000098c fadd.d  ft0, ft0, ft1          #; ft0  = 100.4082000, ft1  = 12.7278000
                                                #; (f:fpu) ft0  <-- 113.1360000
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x80000994 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000998 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
      0x80000990 fadd.d  fs0, ft0, ft2          #; ft0  = 113.1360000, ft2  = 0.0
      0x8000099c auipc   ra, 0x0                #; (wrb) ra  <-- 0x8000099c
                                                #; (f:fpu) fs0  <-- 113.1360000
      0x800009a0 jalr    ra, ra, 180            #; ra  = 0x8000099c, (wrb) ra  <-- 0x800009a4, goto 0x80000a50
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000a50 slli    a1, a1, 3              #; a1  = 8, (wrb) a1  <-- 64
      0x80000a54 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 64, (wrb) a0  <-- 0x001000e0
      0x80000a58 sw      zero, 4(a0)            #; a0  = 0x001000e0, 0 ~~> Word[0x001000e4]
      0x80000a5c sw      zero, 0(a0)            #; a0  = 0x001000e0, 0 ~~> Word[0x001000e0]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000a60 ret                            #; ra  = 0x800009a4, goto 0x800009a4
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x800009a4 fld     ft0, 64(s2)            #; ft0  <~~ Doub[0x00100040]
      0x800009a8 fld     ft1, 64(s1)            #; ft1  <~~ Doub[0x00100090], (f:lsu) ft0  <-- 12.7278000
      0x800009ac fld     ft2, 64(s0)            #; ft2  <~~ Doub[0x001000e0], (f:lsu) ft1  <-- 14.142
                                                #; (f:lsu) ft2  <-- 0.0
      0x800009b0 fadd.d  ft0, ft0, fs0          #; ft0  = 12.7278000, fs0  = 113.1360000
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x800009bc li      a1, 9                  #; (wrb) a1  <-- 9
                                                #; (f:fpu) ft0  <-- 125.8638000
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x800009b4 fadd.d  ft0, ft0, ft1          #; ft0  = 125.8638000, ft1  = 14.142
                                                #; (f:fpu) ft0  <-- 140.0058
      0x800009b8 fadd.d  fs0, ft0, ft2          #; ft0  = 140.0058, ft2  = 0.0
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x800009c0 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
      0x800009c4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800009c4
                                                #; (f:fpu) fs0  <-- 140.0058
      0x800009c8 jalr    ra, ra, 140            #; ra  = 0x800009c4, (wrb) ra  <-- 0x800009cc, goto 0x80000a50
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000a50 slli    a1, a1, 3              #; a1  = 9, (wrb) a1  <-- 72
      0x80000a54 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 72, (wrb) a0  <-- 0x001000e8
      0x80000a58 sw      zero, 4(a0)            #; a0  = 0x001000e8, 0 ~~> Word[0x001000ec]
      0x80000a5c sw      zero, 0(a0)            #; a0  = 0x001000e8, 0 ~~> Word[0x001000e8]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000a60 ret                            #; ra  = 0x800009cc, goto 0x800009cc
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x800009cc fld     ft0, 72(s2)            #; ft0  <~~ Doub[0x00100048]
; conflict (conflict.c:0)
;  in main (test_conflict.c:26)
      0x800009d8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800029d8
      0x800009d0 fld     ft1, 72(s1)            #; ft1  <~~ Doub[0x00100098], (f:lsu) ft0  <-- 14.142
      0x800009dc addi    a0, a0, 1600           #; a0  = 0x800029d8, (wrb) a0  <-- 0x80003018
      0x800009d4 fld     ft2, 72(s0)            #; ft2  <~~ Doub[0x001000e8], (f:lsu) ft1  <-- 15.5562000
                                                #; (f:lsu) ft2  <-- 0.0
      0x800009e0 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003018]
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x800009e4 fadd.d  ft0, ft0, fs0          #; ft0  = 14.142, fs0  = 140.0058
                                                #; (f:fpu) ft0  <-- 154.1478
      0x800009e8 fadd.d  ft0, ft0, ft1          #; ft0  = 154.1478, ft1  = 15.5562000
                                                #; (f:fpu) ft0  <-- 169.7040000
      0x800009ec fadd.d  ft0, ft0, ft2          #; ft0  = 169.7040000, ft2  = 0.0, (f:lsu) ft3  <-- -169.704
                                                #; (f:fpu) ft0  <-- 169.7040000
; main (test_conflict.c:32)
      0x800009fc lw      a2, 8(sp)              #; sp  = 0x0011ff30, a2  <~~ Word[0x0011ff38]
      0x800009f0 fadd.d  ft1, ft0, ft3          #; ft0  = 169.7040000, ft3  = -169.704
                                                #; (lsu) a2  <-- 0
                                                #; (f:fpu) ft1  <-- -0.0000000
; main (test_conflict.c:30)
      0x800009f4 fsgnjx.d fs0, ft1, ft1         #; ft1  = -0.0000000, ft1  = -0.0000000
; main (test_conflict.c:32)
      0x800009f8 fsd     ft0, 8(sp)             #; 169.7040000 ~~> Doub[0x0011ff38], (f:fpu) fs0  <-- 0.0000000
      0x80000a00 lw      a3, 12(sp)             #; sp  = 0x0011ff30, a3  <~~ Word[0x0011ff3c]
                                                #; (lsu) a3  <-- 0x40653687
      0x80000a04 fsd     fs0, 8(sp)             #; 0.0000000 ~~> Doub[0x0011ff38]
      0x80000a08 lw      a4, 8(sp)              #; sp  = 0x0011ff30, a4  <~~ Word[0x0011ff38]
                                                #; (lsu) a4  <-- 0
      0x80000a0c lw      a5, 12(sp)             #; sp  = 0x0011ff30, a5  <~~ Word[0x0011ff3c]
                                                #; (lsu) a5  <-- 0x3d200000
      0x80000a10 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a10
      0x80000a14 addi    a0, a0, 901            #; a0  = 0x80002a10, (wrb) a0  <-- 0x80002d95
      0x80000a18 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a18
      0x80000a1c jalr    ra, ra, 76             #; ra  = 0x80000a18, (wrb) ra  <-- 0x80000a20, goto 0x80000a64
; printf_ (printf.c:863)
      0x80000a64 addi    sp, sp, -48            #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff00
      0x80000a68 sw      ra, 12(sp)             #; sp  = 0x0011ff00, 0x80000a20 ~~> Word[0x0011ff0c]
      0x80000a6c mv      t0, a0                 #; a0  = 0x80002d95, (wrb) t0  <-- 0x80002d95
      0x80000a70 sw      a7, 44(sp)             #; sp  = 0x0011ff00, 0x4010f86c ~~> Word[0x0011ff2c]
      0x80000a74 sw      a6, 40(sp)             #; sp  = 0x0011ff00, 0x4006a090 ~~> Word[0x0011ff28]
      0x80000a78 sw      a5, 36(sp)             #; sp  = 0x0011ff00, 0x3d200000 ~~> Word[0x0011ff24]
      0x80000a7c sw      a4, 32(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff20]
      0x80000a80 sw      a3, 28(sp)             #; sp  = 0x0011ff00, 0x40653687 ~~> Word[0x0011ff1c]
      0x80000a84 sw      a2, 24(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff18]
      0x80000a88 sw      a1, 20(sp)             #; sp  = 0x0011ff00, 72 ~~> Word[0x0011ff14]
      0x80000a8c addi    a0, sp, 20             #; sp  = 0x0011ff00, (wrb) a0  <-- 0x0011ff14
; printf_ (printf.c:865)
      0x80000a90 sw      a0, 8(sp)              #; sp  = 0x0011ff00, 0x0011ff14 ~~> Word[0x0011ff08]
; printf_ (printf.c:867)
      0x80000a94 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001a94
      0x80000a98 addi    a0, a0, -988           #; a0  = 0x80001a94, (wrb) a0  <-- 0x800016b8
      0x80000a9c addi    a1, sp, 7              #; sp  = 0x0011ff00, (wrb) a1  <-- 0x0011ff07
      0x80000aa0 li      a2, -1                 #; (wrb) a2  <-- -1
      0x80000aa4 addi    a4, sp, 20             #; sp  = 0x0011ff00, (wrb) a4  <-- 0x0011ff14
      0x80000aa8 mv      a3, t0                 #; t0  = 0x80002d95, (wrb) a3  <-- 0x80002d95
      0x80000aac auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000aac
      0x80000ab0 jalr    ra, ra, 20             #; ra  = 0x80000aac, (wrb) ra  <-- 0x80000ab4, goto 0x80000ac0
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000ac0 addi    sp, sp, -112           #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011fe90
      0x80000ac4 sw      ra, 108(sp)            #; sp  = 0x0011fe90, 0x80000ab4 ~~> Word[0x0011fefc]
      0x80000ac8 sw      s0, 104(sp)            #; sp  = 0x0011fe90, 0x001000a0 ~~> Word[0x0011fef8]
      0x80000acc sw      s1, 100(sp)            #; sp  = 0x0011fe90, 0x00100050 ~~> Word[0x0011fef4]
      0x80000ad0 sw      s2, 96(sp)             #; sp  = 0x0011fe90, 0x00100000 ~~> Word[0x0011fef0]
      0x80000ad4 sw      s3, 92(sp)             #; sp  = 0x0011fe90, 0x339c0ebe ~~> Word[0x0011feec]
      0x80000ad8 sw      s4, 88(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fee8]
      0x80000adc sw      s5, 84(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fee4]
      0x80000ae0 sw      s6, 80(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fee0]
      0x80000ae4 sw      s7, 76(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fedc]
      0x80000ae8 sw      s8, 72(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed8]
      0x80000aec sw      s9, 68(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed4]
      0x80000af0 sw      s10, 64(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed0]
      0x80000af4 sw      s11, 60(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fecc]
      0x80000af8 mv      s3, a4                 #; a4  = 0x0011ff14, (wrb) s3  <-- 0x0011ff14
      0x80000afc mv      s0, a3                 #; a3  = 0x80002d95, (wrb) s0  <-- 0x80002d95
      0x80000b00 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x80000b04 mv      s4, a1                 #; a1  = 0x0011ff07, (wrb) s4  <-- 0x0011ff07
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x80000b08 beqz    a1, pc + 12            #; a1  = 0x0011ff07, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b0c mv      s2, a0                 #; a0  = 0x800016b8, (wrb) s2  <-- 0x800016b8
      0x80000b10 j       pc + 0xc               #; goto 0x80000b1c
      0x80000b1c li      s8, 0                  #; (wrb) s8  <-- 0
      0x80000b20 li      s6, 37                 #; (wrb) s6  <-- 37
      0x80000b24 li      s11, 16                #; (wrb) s11 <-- 16
      0x80000b28 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000b2c lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000b30 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000b34 sw      a0, 24(sp)             #; sp  = 0x0011fe90, 2048 ~~> Word[0x0011fea8]
      0x80000b38 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000b3c addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000b40 sw      a0, 16(sp)             #; sp  = 0x0011fe90, 65535 ~~> Word[0x0011fea0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b44 addi    s10, s0, 2             #; s0  = 0x80002d95, (wrb) s10 <-- 0x80002d97
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b48 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000b4c li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b50 lbu     a0, 0(s0)              #; s0  = 0x80002d95, a0  <~~ Byte[0x80002d95]
                                                #; (lsu) a0  <-- 101
      0x80000b54 beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x80000b58 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000b5c addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000b60 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000b64 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000b68 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b6c jalr    s2                     #; s2  = 0x800016b8, (wrb) ra  <-- 0x80000b70, goto 0x800016b8
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800016b8 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
      0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
      0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
      0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 0
      0x800016d8 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 1 ~~> Word[0x800030d4]
      0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 0, (wrb) a4  <-- 0x800030d4
      0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030d4, 101 ~~> Byte[0x8000311c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 1
      0x800016ec addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x800016f0 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x800016f4 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x800016f8 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001760 ret                            #; ra  = 0x80000b70, goto 0x80000b70
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000b70 addi    s0, s0, 1              #; s0  = 0x80002d95, (wrb) s0  <-- 0x80002d96
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b74 addi    s10, s10, 1            #; s10 = 0x80002d97, (wrb) s10 <-- 0x80002d98
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b78 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b7c lbu     a0, 0(s0)              #; s0  = 0x80002d96, a0  <~~ Byte[0x80002d96]
                                                #; (lsu) a0  <-- 114
      0x80000b80 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b58
      0x80000b58 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000b5c addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000b60 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000b64 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000b68 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b6c jalr    s2                     #; s2  = 0x800016b8, (wrb) ra  <-- 0x80000b70, goto 0x800016b8
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800016b8 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
      0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
      0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 1
      0x800016d8 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 2 ~~> Word[0x800030d4]
      0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 1, (wrb) a4  <-- 0x800030d5
      0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030d5, 114 ~~> Byte[0x8000311d]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 2
      0x800016ec addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x800016f0 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x800016f4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800016f8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001760 ret                            #; ra  = 0x80000b70, goto 0x80000b70
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000b70 addi    s0, s0, 1              #; s0  = 0x80002d96, (wrb) s0  <-- 0x80002d97
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b74 addi    s10, s10, 1            #; s10 = 0x80002d98, (wrb) s10 <-- 0x80002d99
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b78 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b7c lbu     a0, 0(s0)              #; s0  = 0x80002d97, a0  <~~ Byte[0x80002d97]
                                                #; (lsu) a0  <-- 114
      0x80000b80 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b58
      0x80000b58 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000b5c addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000b60 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000b64 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000b68 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b6c jalr    s2                     #; s2  = 0x800016b8, (wrb) ra  <-- 0x80000b70, goto 0x800016b8
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800016b8 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
      0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
      0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 2
      0x800016d8 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 3 ~~> Word[0x800030d4]
      0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 2, (wrb) a4  <-- 0x800030d6
      0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030d6, 114 ~~> Byte[0x8000311e]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 3
      0x800016ec addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x800016f0 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x800016f4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800016f8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001760 ret                            #; ra  = 0x80000b70, goto 0x80000b70
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000b70 addi    s0, s0, 1              #; s0  = 0x80002d97, (wrb) s0  <-- 0x80002d98
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b74 addi    s10, s10, 1            #; s10 = 0x80002d99, (wrb) s10 <-- 0x80002d9a
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b78 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b7c lbu     a0, 0(s0)              #; s0  = 0x80002d98, a0  <~~ Byte[0x80002d98]
                                                #; (lsu) a0  <-- 111
      0x80000b80 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000b58
      0x80000b58 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000b5c addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000b60 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000b64 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000b68 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b6c jalr    s2                     #; s2  = 0x800016b8, (wrb) ra  <-- 0x80000b70, goto 0x800016b8
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800016b8 beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
      0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
      0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 3
      0x800016d8 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 4 ~~> Word[0x800030d4]
      0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 3, (wrb) a4  <-- 0x800030d7
      0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030d7, 111 ~~> Byte[0x8000311f]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 4
      0x800016ec addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x800016f0 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x800016f4 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x800016f8 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001760 ret                            #; ra  = 0x80000b70, goto 0x80000b70
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000b70 addi    s0, s0, 1              #; s0  = 0x80002d98, (wrb) s0  <-- 0x80002d99
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b74 addi    s10, s10, 1            #; s10 = 0x80002d9a, (wrb) s10 <-- 0x80002d9b
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b78 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b7c lbu     a0, 0(s0)              #; s0  = 0x80002d99, a0  <~~ Byte[0x80002d99]
                                                #; (lsu) a0  <-- 114
      0x80000b80 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b58
      0x80000b58 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000b5c addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000b60 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000b64 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000b68 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b6c jalr    s2                     #; s2  = 0x800016b8, (wrb) ra  <-- 0x80000b70, goto 0x800016b8
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800016b8 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
      0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
      0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 4
      0x800016d8 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 5 ~~> Word[0x800030d4]
      0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 4, (wrb) a4  <-- 0x800030d8
      0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030d8, 114 ~~> Byte[0x80003120]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 5
      0x800016ec addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x800016f0 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x800016f4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800016f8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001760 ret                            #; ra  = 0x80000b70, goto 0x80000b70
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000b70 addi    s0, s0, 1              #; s0  = 0x80002d99, (wrb) s0  <-- 0x80002d9a
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b74 addi    s10, s10, 1            #; s10 = 0x80002d9b, (wrb) s10 <-- 0x80002d9c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b78 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b7c lbu     a0, 0(s0)              #; s0  = 0x80002d9a, a0  <~~ Byte[0x80002d9a]
                                                #; (lsu) a0  <-- 32
      0x80000b80 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000b58
      0x80000b58 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000b5c addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000b60 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000b64 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000b68 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b6c jalr    s2                     #; s2  = 0x800016b8, (wrb) ra  <-- 0x80000b70, goto 0x800016b8
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800016b8 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
      0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
      0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 5
      0x800016d8 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 6 ~~> Word[0x800030d4]
      0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 5, (wrb) a4  <-- 0x800030d9
      0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030d9, 32 ~~> Byte[0x80003121]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 6
      0x800016ec addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x800016f0 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x800016f4 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800016f8 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001760 ret                            #; ra  = 0x80000b70, goto 0x80000b70
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000b70 addi    s0, s0, 1              #; s0  = 0x80002d9a, (wrb) s0  <-- 0x80002d9b
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b74 addi    s10, s10, 1            #; s10 = 0x80002d9c, (wrb) s10 <-- 0x80002d9d
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b78 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b7c lbu     a0, 0(s0)              #; s0  = 0x80002d9b, a0  <~~ Byte[0x80002d9b]
                                                #; (lsu) a0  <-- 61
      0x80000b80 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000b58
      0x80000b58 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000b5c addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000b60 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000b64 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000b68 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b6c jalr    s2                     #; s2  = 0x800016b8, (wrb) ra  <-- 0x80000b70, goto 0x800016b8
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800016b8 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
      0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
      0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 6
      0x800016d8 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 7 ~~> Word[0x800030d4]
      0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 6, (wrb) a4  <-- 0x800030da
      0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030da, 61 ~~> Byte[0x80003122]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 7
      0x800016ec addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x800016f0 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x800016f4 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x800016f8 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001760 ret                            #; ra  = 0x80000b70, goto 0x80000b70
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000b70 addi    s0, s0, 1              #; s0  = 0x80002d9b, (wrb) s0  <-- 0x80002d9c
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b74 addi    s10, s10, 1            #; s10 = 0x80002d9d, (wrb) s10 <-- 0x80002d9e
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b78 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b7c lbu     a0, 0(s0)              #; s0  = 0x80002d9c, a0  <~~ Byte[0x80002d9c]
                                                #; (lsu) a0  <-- 32
      0x80000b80 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000b58
      0x80000b58 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000b5c addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000b60 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000b64 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000b68 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b6c jalr    s2                     #; s2  = 0x800016b8, (wrb) ra  <-- 0x80000b70, goto 0x800016b8
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800016b8 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
      0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
      0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 7
      0x800016d8 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 8 ~~> Word[0x800030d4]
      0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 7, (wrb) a4  <-- 0x800030db
      0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030db, 32 ~~> Byte[0x80003123]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 8
      0x800016ec addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x800016f0 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x800016f4 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800016f8 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001760 ret                            #; ra  = 0x80000b70, goto 0x80000b70
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000b70 addi    s0, s0, 1              #; s0  = 0x80002d9c, (wrb) s0  <-- 0x80002d9d
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b74 addi    s10, s10, 1            #; s10 = 0x80002d9e, (wrb) s10 <-- 0x80002d9f
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b78 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b7c lbu     a0, 0(s0)              #; s0  = 0x80002d9d, a0  <~~ Byte[0x80002d9d]
                                                #; (lsu) a0  <-- 37
      0x80000b80 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000b58
      0x80000b58 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000b88
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000b88 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b8c j       pc + 0x10              #; goto 0x80000b9c
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000b9c lbu     a0, -1(s10)            #; s10 = 0x80002d9f, a0  <~~ Byte[0x80002d9e]
                                                #; (lsu) a0  <-- 102
      0x80000ba0 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000ba4 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000bdc
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000bdc addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000be0 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000be4 addi    a1, s10, -1            #; s10 = 0x80002d9f, (wrb) a1  <-- 0x80002d9e
      0x80000be8 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000bec bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000c68
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000c68 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000c6c bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000cbc
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cbc li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000cc0 mv      s10, a1                #; a1  = 0x80002d9e, (wrb) s10 <-- 0x80002d9e
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000cc4 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cc8 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000ccc j       pc + 0xc               #; goto 0x80000cd8
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000cd8 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000cdc srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000ce0 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000ce4 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000ce8 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000cec bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000d50
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000d50 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000d54 li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000d58 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000d5c slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000d60 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002d60
      0x80000d64 addi    a2, a2, 180            #; a2  = 0x80002d60, (wrb) a2  <-- 0x80002e14
      0x80000d68 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002e14, (wrb) a1  <-- 0x80002f18
      0x80000d6c lw      a2, 0(a1)              #; a1  = 0x80002f18, a2  <~~ Word[0x80002f18]
      0x80000d70 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000d74 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000da8
      0x80000d78 jr      a2                     #; a2  = 0x80000da8, goto 0x80000da8
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80000da8 li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000dac bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000db4
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000db4 addi    a0, s3, 7              #; s3  = 0x0011ff14, (wrb) a0  <-- 0x0011ff1b
      0x80000db8 andi    a0, a0, -8             #; a0  = 0x0011ff1b, (wrb) a0  <-- 0x0011ff18
      0x80000dbc fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff18]
                                                #; (f:lsu) fa0  <-- 169.7039795
      0x80000dc0 addi    s3, a0, 8              #; a0  = 0x0011ff18, (wrb) s3  <-- 0x0011ff20
      0x80000dc4 mv      a0, s2                 #; s2  = 0x800016b8, (wrb) a0  <-- 0x800016b8
      0x80000dc8 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000dcc mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000dd0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000dd4 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000dd8 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000ddc mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000de0 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001de0
      0x80000de4 jalr    ra, ra, -1656          #; ra  = 0x80001de0, (wrb) ra  <-- 0x80000de8, goto 0x80001768
; _ftoa (printf.c:340)
      0x80001768 addi    sp, sp, -112           #; sp  = 0x0011fe90, (wrb) sp  <-- 0x0011fe20
      0x8000176c sw      ra, 108(sp)            #; sp  = 0x0011fe20, 0x80000de8 ~~> Word[0x0011fe8c]
      0x80001770 sw      s0, 104(sp)            #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe88]
      0x80001774 sw      s1, 100(sp)            #; sp  = 0x0011fe20, 8 ~~> Word[0x0011fe84]
      0x80001778 sw      s2, 96(sp)             #; sp  = 0x0011fe20, 0x800016b8 ~~> Word[0x0011fe80]
      0x8000177c sw      s3, 92(sp)             #; sp  = 0x0011fe20, 0x0011ff20 ~~> Word[0x0011fe7c]
      0x80001780 sw      s4, 88(sp)             #; sp  = 0x0011fe20, 0x0011ff07 ~~> Word[0x0011fe78]
      0x80001784 sw      s5, 84(sp)             #; sp  = 0x0011fe20, -1 ~~> Word[0x0011fe74]
      0x80001788 sw      s6, 80(sp)             #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe70]
      0x8000178c sw      s7, 76(sp)             #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe6c]
      0x80001790 sw      s8, 72(sp)             #; sp  = 0x0011fe20, 16 ~~> Word[0x0011fe68]
      0x80001794 sw      s9, 68(sp)             #; sp  = 0x0011fe20, 8 ~~> Word[0x0011fe64]
      0x80001798 sw      s10, 64(sp)            #; sp  = 0x0011fe20, 0x80002d9e ~~> Word[0x0011fe60]
      0x8000179c fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe58]
      0x800017a8 auipc   s1, 0x2                #; (wrb) s1  <-- 0x800037a8
      0x800017a0 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe50]
      0x800017ac addi    s1, s1, -1920          #; s1  = 0x800037a8, (wrb) s1  <-- 0x80003028
      0x800017a4 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe48]
; _ftoa (printf.c:351)
      0x800017b8 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
      0x800017b0 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003028]
; _ftoa (printf.c:0)
      0x800017bc mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x800017c0 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x800017b4 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 169.7039795
      0x800017c4 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x800017c8 mv      s6, a1                 #; a1  = 0x0011ff07, (wrb) s6  <-- 0x0011ff07
      0x800017cc mv      s7, a0                 #; a0  = 0x800016b8, (wrb) s7  <-- 0x800016b8
; _ftoa (printf.c:351)
      0x800017d0 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x800018c0
; _ftoa (printf.c:0)
      0x800018c4 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800028c4
      0x800018c8 addi    a0, a0, 1900           #; a0  = 0x800028c4, (wrb) a0  <-- 0x80003030
      0x800018c0 fsgnj.d fs0, fa0, fa0          #; fa0  = 169.7039795, fa0  = 169.7039795
                                                #; (f:fpu) fs0  <-- 169.7039795
      0x800018cc fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003030]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x800018d0 fle.d   a0, fa0, ft0           #; fa0  = 169.7039795, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x800018d4 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800018f0
; _ftoa (printf.c:0)
      0x800018f0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800028f0
      0x800018f4 addi    a0, a0, 1864           #; a0  = 0x800028f0, (wrb) a0  <-- 0x80003038
      0x800018fc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800028fc
      0x800018f8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003038]
      0x80001900 addi    a0, a0, 1860           #; a0  = 0x800028fc, (wrb) a0  <-- 0x80003040
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
      0x80001904 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003040]
; _ftoa (printf.c:358)
      0x80001908 fle.d   a0, fs0, ft0           #; fs0  = 169.7039795, ft0  = 1000000000.0000000
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
      0x8000190c fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 169.7039795
                                                #; (acc) a0  <-- 0x00b57533
      0x80001910 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80001914 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001a10
; _ftoa (printf.c:374)
      0x80001a10 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x80001a14 li      s8, 6                  #; (wrb) s8  <-- 6
      0x80001a18 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001a20
; _ftoa (printf.c:0)
      0x80001a20 li      a0, 10                 #; (wrb) a0  <-- 10
; _ftoa (printf.c:378)
      0x80001a28 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001a60
; _ftoa (printf.c:0)
      0x80001a24 fsgnjx.d fs2, fs0, fs0         #; fs0  = 169.7039795, fs0  = 169.7039795
                                                #; (f:fpu) fs2  <-- 169.7039795
      0x80001a60 li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x80001a64 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x80001a68 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002a68
      0x80001a6c addi    a1, a1, 1280           #; a1  = 0x80002a68, (wrb) a1  <-- 0x80002f68
      0x80001a70 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002f68, (wrb) a0  <-- 0x80002f98
      0x80001a74 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f98]
; _ftoa (printf.c:383)
      0x80001a78 fcvt.w.d s1, fs2               #; fs2  = 169.7039795
; _ftoa (printf.c:384)
      0x80001a7c fcvt.d.w ft0, s1               #; ac1  = 169
                                                #; (f:fpu) ft0  <-- 169.0
                                                #; (f:lsu) ft1  <-- 1000000.0000000
; _ftoa (printf.c:0)
      0x80001a88 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002a88
      0x80001a80 fsub.d  ft0, fs2, ft0          #; fs2  = 169.7039795, ft0  = 169.0
      0x80001a8c addi    a0, a0, 1472           #; a0  = 0x80002a88, (wrb) a0  <-- 0x80003048
                                                #; (f:fpu) ft0  <-- 0.7039795
; _ftoa (printf.c:384)
      0x80001a84 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.7039795
                                                #; (f:fpu) ft2  <-- 703979.4921875
; _ftoa (printf.c:0)
      0x80001a90 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003048]
; _ftoa (printf.c:385)
      0x80001a94 fcvt.wu.d a0, ft2              #; ft2  = 703979.4921875
                                                #; (acc) gp  <-- 0xd21501d3
; _ftoa (printf.c:386)
      0x80001a98 fcvt.d.wu ft3, a0              #; ac1  = 0x000abdeb
                                                #; (f:fpu) ft3  <-- 703979.0
      0x80001a9c fsub.d  ft2, ft2, ft3          #; ft2  = 703979.4921875, ft3  = 703979.0
                                                #; (f:lsu) ft0  <-- 0.5
                                                #; (f:fpu) ft2  <-- 0.4921875
; _ftoa (printf.c:388)
      0x80001aa0 fle.d   a1, ft2, ft0           #; ft2  = 0.4921875, ft0  = 0.5
      0x80001aa4 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001ac4
; _ftoa (printf.c:396)
      0x80001ac4 flt.d   a1, ft2, ft0           #; ft2  = 0.4921875, ft0  = 0.5
                                                #; (acc) s4  <-- 0x00059a63
      0x80001ac8 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001adc
; _ftoa (printf.c:0)
      0x80001adc fcvt.d.w fs1, zero             #; ac1  = 0
                                                #; (f:fpu) fs1  <-- 0.0
; _ftoa (printf.c:403)
      0x80001ae0 beqz    s8, pc + 216           #; s8  = 6, not taken
; _ftoa (printf.c:0)
      0x80001ae4 li      a2, 0                  #; (wrb) a2  <-- 0
      0x80001ae8 addi    a1, sp, 8              #; sp  = 0x0011fe20, (wrb) a1  <-- 0x0011fe28
; _ftoa (printf.c:414)
      0x80001aec add     t1, a1, s0             #; a1  = 0x0011fe28, s0  = 0, (wrb) t1  <-- 0x0011fe28
      0x80001af0 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001af4 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x80001af8 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80001afc addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80001b00 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001b04 li      a7, 9                  #; (wrb) a7  <-- 9
      0x80001b08 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80001b0c mv      a1, a0                 #; a0  = 0x000abdeb, (wrb) a1  <-- 0x000abdeb
; _ftoa (printf.c:417)
      0x80001b10 mulhu   a0, a0, t2             #; a0  = 0x000abdeb, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001b14 srli    a0, a0, 3              #; a0  = 0x000897ef, (wrb) a0  <-- 0x000112fd
; _ftoa (printf.c:0)
      0x80001b18 mul     a3, a0, a6             #; a0  = 0x000112fd, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001b1c sub     a3, a1, a3             #; a1  = 0x000abdeb, a3  = 0x000abde2, (wrb) a3  <-- 9
; _ftoa (printf.c:416)
      0x80001b20 ori     a3, a3, 48             #; a3  = 9, (wrb) a3  <-- 57
      0x80001b24 add     a5, t1, a2             #; t1  = 0x0011fe28, a2  = 0, (wrb) a5  <-- 0x0011fe28
      0x80001b28 sb      a3, 0(a5)              #; a5  = 0x0011fe28, 57 ~~> Byte[0x0011fe28]
; _ftoa (printf.c:417)
      0x80001b2c addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80001b30 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0x000abdeb, taken, goto 0x80001b08
; _ftoa (printf.c:414)
      0x80001b08 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 1, not taken
; _ftoa (printf.c:0)
      0x80001b0c mv      a1, a0                 #; a0  = 0x000112fd, (wrb) a1  <-- 0x000112fd
; _ftoa (printf.c:417)
      0x80001b10 mulhu   a0, a0, t2             #; a0  = 0x000112fd, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001b14 srli    a0, a0, 3              #; a0  = 56317, (wrb) a0  <-- 7039
; _ftoa (printf.c:0)
      0x80001b18 mul     a3, a0, a6             #; a0  = 7039, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001b1c sub     a3, a1, a3             #; a1  = 0x000112fd, a3  = 0x000112f6, (wrb) a3  <-- 7
; _ftoa (printf.c:416)
      0x80001b20 ori     a3, a3, 48             #; a3  = 7, (wrb) a3  <-- 55
      0x80001b24 add     a5, t1, a2             #; t1  = 0x0011fe28, a2  = 1, (wrb) a5  <-- 0x0011fe29
      0x80001b28 sb      a3, 0(a5)              #; a5  = 0x0011fe29, 55 ~~> Byte[0x0011fe29]
; _ftoa (printf.c:417)
      0x80001b2c addi    a2, a2, 1              #; a2  = 1, (wrb) a2  <-- 2
      0x80001b30 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0x000112fd, taken, goto 0x80001b08
; _ftoa (printf.c:414)
      0x80001b08 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 2, not taken
; _ftoa (printf.c:0)
      0x80001b0c mv      a1, a0                 #; a0  = 7039, (wrb) a1  <-- 7039
; _ftoa (printf.c:417)
      0x80001b10 mulhu   a0, a0, t2             #; a0  = 7039, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001b14 srli    a0, a0, 3              #; a0  = 5631, (wrb) a0  <-- 703
; _ftoa (printf.c:0)
      0x80001b18 mul     a3, a0, a6             #; a0  = 703, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001b1c sub     a3, a1, a3             #; a1  = 7039, a3  = 7030, (wrb) a3  <-- 9
; _ftoa (printf.c:416)
      0x80001b20 ori     a3, a3, 48             #; a3  = 9, (wrb) a3  <-- 57
      0x80001b24 add     a5, t1, a2             #; t1  = 0x0011fe28, a2  = 2, (wrb) a5  <-- 0x0011fe2a
      0x80001b28 sb      a3, 0(a5)              #; a5  = 0x0011fe2a, 57 ~~> Byte[0x0011fe2a]
; _ftoa (printf.c:417)
      0x80001b2c addi    a2, a2, 1              #; a2  = 2, (wrb) a2  <-- 3
      0x80001b30 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 7039, taken, goto 0x80001b08
; _ftoa (printf.c:414)
      0x80001b08 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 3, not taken
; _ftoa (printf.c:0)
      0x80001b0c mv      a1, a0                 #; a0  = 703, (wrb) a1  <-- 703
; _ftoa (printf.c:417)
      0x80001b10 mulhu   a0, a0, t2             #; a0  = 703, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001b14 srli    a0, a0, 3              #; a0  = 562, (wrb) a0  <-- 70
; _ftoa (printf.c:0)
      0x80001b18 mul     a3, a0, a6             #; a0  = 70, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001b1c sub     a3, a1, a3             #; a1  = 703, a3  = 700, (wrb) a3  <-- 3
; _ftoa (printf.c:416)
      0x80001b20 ori     a3, a3, 48             #; a3  = 3, (wrb) a3  <-- 51
      0x80001b24 add     a5, t1, a2             #; t1  = 0x0011fe28, a2  = 3, (wrb) a5  <-- 0x0011fe2b
      0x80001b28 sb      a3, 0(a5)              #; a5  = 0x0011fe2b, 51 ~~> Byte[0x0011fe2b]
; _ftoa (printf.c:417)
      0x80001b2c addi    a2, a2, 1              #; a2  = 3, (wrb) a2  <-- 4
      0x80001b30 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 703, taken, goto 0x80001b08
; _ftoa (printf.c:414)
      0x80001b08 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 4, not taken
; _ftoa (printf.c:0)
      0x80001b0c mv      a1, a0                 #; a0  = 70, (wrb) a1  <-- 70
; _ftoa (printf.c:417)
      0x80001b10 mulhu   a0, a0, t2             #; a0  = 70, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001b14 srli    a0, a0, 3              #; a0  = 56, (wrb) a0  <-- 7
; _ftoa (printf.c:0)
      0x80001b18 mul     a3, a0, a6             #; a0  = 7, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001b1c sub     a3, a1, a3             #; a1  = 70, a3  = 70, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001b20 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x80001b24 add     a5, t1, a2             #; t1  = 0x0011fe28, a2  = 4, (wrb) a5  <-- 0x0011fe2c
      0x80001b28 sb      a3, 0(a5)              #; a5  = 0x0011fe2c, 48 ~~> Byte[0x0011fe2c]
; _ftoa (printf.c:417)
      0x80001b2c addi    a2, a2, 1              #; a2  = 4, (wrb) a2  <-- 5
      0x80001b30 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 70, taken, goto 0x80001b08
; _ftoa (printf.c:414)
      0x80001b08 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 5, not taken
; _ftoa (printf.c:0)
      0x80001b0c mv      a1, a0                 #; a0  = 7, (wrb) a1  <-- 7
; _ftoa (printf.c:417)
      0x80001b10 mulhu   a0, a0, t2             #; a0  = 7, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001b14 srli    a0, a0, 3              #; a0  = 5, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001b18 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001b1c sub     a3, a1, a3             #; a1  = 7, a3  = 0, (wrb) a3  <-- 7
; _ftoa (printf.c:416)
      0x80001b20 ori     a3, a3, 48             #; a3  = 7, (wrb) a3  <-- 55
      0x80001b24 add     a5, t1, a2             #; t1  = 0x0011fe28, a2  = 5, (wrb) a5  <-- 0x0011fe2d
      0x80001b28 sb      a3, 0(a5)              #; a5  = 0x0011fe2d, 55 ~~> Byte[0x0011fe2d]
; _ftoa (printf.c:417)
      0x80001b2c addi    a2, a2, 1              #; a2  = 5, (wrb) a2  <-- 6
      0x80001b30 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 7, not taken
; _ftoa (printf.c:422)
      0x80001b34 add     a0, s0, a2             #; s0  = 0, a2  = 6, (wrb) a0  <-- 6
      0x80001b38 addi    a1, a0, -1             #; a0  = 6, (wrb) a1  <-- 5
      0x80001b3c li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001b40 sltu    a3, a3, a1             #; a3  = 30, a1  = 5, (wrb) a3  <-- 0
      0x80001b44 xor     a4, s8, a2             #; s8  = 6, a2  = 6, (wrb) a4  <-- 0
      0x80001b48 seqz    a4, a4                 #; a4  = 0, (wrb) a4  <-- 1
      0x80001b4c or      a3, a3, a4             #; a3  = 0, a4  = 1, (wrb) a3  <-- 1
      0x80001b50 bnez    a3, pc + 136           #; a3  = 1, taken, goto 0x80001bd8
; _ftoa (printf.c:0)
      0x80001bd8 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
; _ftoa (printf.c:425)
      0x80001bdc beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001be0 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001be4 addi    a1, sp, 8              #; sp  = 0x0011fe20, (wrb) a1  <-- 0x0011fe28
; _ftoa (printf.c:427)
      0x80001be8 add     a0, a1, a0             #; a1  = 0x0011fe28, a0  = 6, (wrb) a0  <-- 0x0011fe2e
      0x80001bec li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001bf0 sb      a1, 0(a0)              #; a0  = 0x0011fe2e, 46 ~~> Byte[0x0011fe2e]
      0x80001bf4 j       pc + 0x8               #; goto 0x80001bfc
; _ftoa (printf.c:0)
      0x80001bfc li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001c00 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001c04 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001c08 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001c0c flt.d   s9, fs0, fs1           #; fs0  = 169.7039795, fs1  = 0.0
      0x80001c10 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001c14 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001c18 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001c1c addi    a3, sp, 8              #; sp  = 0x0011fe20, (wrb) a3  <-- 0x0011fe28
      0x80001c20 li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001c24 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001c28 mulh    a0, s1, a1             #; s1  = 169, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001c2c srli    a5, a0, 31             #; a0  = 67, (wrb) a5  <-- 0
      0x80001c30 srai    a0, a0, 2              #; a0  = 67, (wrb) a0  <-- 16
      0x80001c34 add     a0, a0, a5             #; a0  = 16, a5  = 0, (wrb) a0  <-- 16
; _ftoa (printf.c:0)
      0x80001c38 mul     a5, a0, a6             #; a0  = 16, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001c3c sub     a5, s1, a5             #; s1  = 169, a5  = 160, (wrb) a5  <-- 9
; _ftoa (printf.c:433)
      0x80001c40 addi    a5, a5, 48             #; a5  = 9, (wrb) a5  <-- 57
      0x80001c44 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001c48 add     s0, a3, s0             #; a3  = 0x0011fe28, s0  = 7, (wrb) s0  <-- 0x0011fe2f
; _ftoa (printf.c:434)
      0x80001c4c addi    a2, s1, 9              #; s1  = 169, (wrb) a2  <-- 178
; _ftoa (printf.c:433)
      0x80001c50 sb      a5, 0(s0)              #; s0  = 0x0011fe2f, 57 ~~> Byte[0x0011fe2f]
; _ftoa (printf.c:0)
      0x80001c54 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001c58 mv      s1, a0                 #; a0  = 16, (wrb) s1  <-- 16
; _ftoa (printf.c:434)
      0x80001c5c bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 178, taken, goto 0x80001c24
; _ftoa (printf.c:432)
      0x80001c24 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 8, not taken
; _ftoa (printf.c:434)
      0x80001c28 mulh    a0, s1, a1             #; s1  = 16, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001c2c srli    a5, a0, 31             #; a0  = 6, (wrb) a5  <-- 0
      0x80001c30 srai    a0, a0, 2              #; a0  = 6, (wrb) a0  <-- 1
      0x80001c34 add     a0, a0, a5             #; a0  = 1, a5  = 0, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001c38 mul     a5, a0, a6             #; a0  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001c3c sub     a5, s1, a5             #; s1  = 16, a5  = 10, (wrb) a5  <-- 6
; _ftoa (printf.c:433)
      0x80001c40 addi    a5, a5, 48             #; a5  = 6, (wrb) a5  <-- 54
      0x80001c44 addi    s8, s0, 1              #; s0  = 8, (wrb) s8  <-- 9
      0x80001c48 add     s0, a3, s0             #; a3  = 0x0011fe28, s0  = 8, (wrb) s0  <-- 0x0011fe30
; _ftoa (printf.c:434)
      0x80001c4c addi    a2, s1, 9              #; s1  = 16, (wrb) a2  <-- 25
; _ftoa (printf.c:433)
      0x80001c50 sb      a5, 0(s0)              #; s0  = 0x0011fe30, 54 ~~> Byte[0x0011fe30]
; _ftoa (printf.c:0)
      0x80001c54 mv      s0, s8                 #; s8  = 9, (wrb) s0  <-- 9
      0x80001c58 mv      s1, a0                 #; a0  = 1, (wrb) s1  <-- 1
; _ftoa (printf.c:434)
      0x80001c5c bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 25, taken, goto 0x80001c24
; _ftoa (printf.c:432)
      0x80001c24 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 9, not taken
; _ftoa (printf.c:434)
      0x80001c28 mulh    a0, s1, a1             #; s1  = 1, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001c2c srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001c30 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001c34 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001c38 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001c3c sub     a5, s1, a5             #; s1  = 1, a5  = 0, (wrb) a5  <-- 1
; _ftoa (printf.c:433)
      0x80001c40 addi    a5, a5, 48             #; a5  = 1, (wrb) a5  <-- 49
      0x80001c44 addi    s8, s0, 1              #; s0  = 9, (wrb) s8  <-- 10
      0x80001c48 add     s0, a3, s0             #; a3  = 0x0011fe28, s0  = 9, (wrb) s0  <-- 0x0011fe31
; _ftoa (printf.c:434)
      0x80001c4c addi    a2, s1, 9              #; s1  = 1, (wrb) a2  <-- 10
; _ftoa (printf.c:433)
      0x80001c50 sb      a5, 0(s0)              #; s0  = 0x0011fe31, 49 ~~> Byte[0x0011fe31]
; _ftoa (printf.c:0)
      0x80001c54 mv      s0, s8                 #; s8  = 10, (wrb) s0  <-- 10
      0x80001c58 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001c5c bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 10, not taken
      0x80001c60 j       pc + 0x8               #; goto 0x80001c68
; _ftoa (printf.c:440)
      0x80001c68 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001c6c li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001c70 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001cdc
; _ftoa (printf.c:0)
      0x80001cdc li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001ce0 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 10, not taken
; _ftoa (printf.c:450)
      0x80001ce4 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001cfc
; _ftoa (printf.c:453)
      0x80001cfc andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001d00 bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001d04 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001d08 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001d34
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001d34 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001d38 sltu    a1, s8, s2             #; s8  = 10, s2  = 0, (wrb) a1  <-- 0
      0x80001d3c xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001d40 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001d44 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001d48 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001d4c bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001d78
; _ftoa (printf.c:0)
      0x80001d78 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001d7c beqz    s8, pc + 56            #; s8  = 10, not taken
      0x80001d80 addi    s9, sp, 7              #; sp  = 0x0011fe20, (wrb) s9  <-- 0x0011fe27
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d84 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 10, (wrb) a0  <-- 0x0011fe31
      0x80001d88 lbu     a0, 0(a0)              #; a0  = 0x0011fe31, a0  <~~ Byte[0x0011fe31]
      0x80001d8c addi    s10, s8, -1            #; s8  = 10, (wrb) s10 <-- 9
                                                #; (lsu) a0  <-- 49
      0x80001d90 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
      0x80001d94 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80001d98 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80001d9c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001da0 jalr    s7                     #; s7  = 0x800016b8, (wrb) ra  <-- 0x80001da4, goto 0x800016b8
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800016b8 beqz    a0, pc + 168           #; a0  = 49, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
      0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
      0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 8
      0x800016d8 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 9 ~~> Word[0x800030d4]
      0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 8, (wrb) a4  <-- 0x800030dc
      0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030dc, 49 ~~> Byte[0x80003124]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 9
      0x800016ec addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x800016f0 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x800016f4 addi    a0, a0, -10            #; a0  = 49, (wrb) a0  <-- 39
      0x800016f8 snez    a0, a0                 #; a0  = 39, (wrb) a0  <-- 1
      0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001760 ret                            #; ra  = 0x80001da4, goto 0x80001da4
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001da4 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x80001da8 mv      s8, s10                #; s10 = 9, (wrb) s8  <-- 9
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001dac bnez    s10, pc - 40           #; s10 = 9, taken, goto 0x80001d84
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d84 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 9, (wrb) a0  <-- 0x0011fe30
      0x80001d88 lbu     a0, 0(a0)              #; a0  = 0x0011fe30, a0  <~~ Byte[0x0011fe30]
      0x80001d8c addi    s10, s8, -1            #; s8  = 9, (wrb) s10 <-- 8
      0x80001d90 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80001d94 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80001d98 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001d9c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001da0 jalr    s7                     #; s7  = 0x800016b8, (wrb) ra  <-- 0x80001da4, goto 0x800016b8
                                                #; (lsu) a0  <-- 54
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800016b8 beqz    a0, pc + 168           #; a0  = 54, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
      0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
      0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 9
      0x800016d8 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 10 ~~> Word[0x800030d4]
      0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 9, (wrb) a4  <-- 0x800030dd
      0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030dd, 54 ~~> Byte[0x80003125]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 10
      0x800016ec addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x800016f0 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x800016f4 addi    a0, a0, -10            #; a0  = 54, (wrb) a0  <-- 44
      0x800016f8 snez    a0, a0                 #; a0  = 44, (wrb) a0  <-- 1
      0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001760 ret                            #; ra  = 0x80001da4, goto 0x80001da4
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001da4 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001da8 mv      s8, s10                #; s10 = 8, (wrb) s8  <-- 8
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001dac bnez    s10, pc - 40           #; s10 = 8, taken, goto 0x80001d84
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d84 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 8, (wrb) a0  <-- 0x0011fe2f
      0x80001d88 lbu     a0, 0(a0)              #; a0  = 0x0011fe2f, a0  <~~ Byte[0x0011fe2f]
      0x80001d8c addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x80001d90 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001d94 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80001d98 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001d9c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001da0 jalr    s7                     #; s7  = 0x800016b8, (wrb) ra  <-- 0x80001da4, goto 0x800016b8
                                                #; (lsu) a0  <-- 57
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800016b8 beqz    a0, pc + 168           #; a0  = 57, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
      0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
      0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 10
      0x800016d8 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 11 ~~> Word[0x800030d4]
      0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 10, (wrb) a4  <-- 0x800030de
      0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030de, 57 ~~> Byte[0x80003126]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 11
      0x800016ec addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x800016f0 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x800016f4 addi    a0, a0, -10            #; a0  = 57, (wrb) a0  <-- 47
      0x800016f8 snez    a0, a0                 #; a0  = 47, (wrb) a0  <-- 1
      0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001760 ret                            #; ra  = 0x80001da4, goto 0x80001da4
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001da4 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001da8 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001dac bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001d84
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d84 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 7, (wrb) a0  <-- 0x0011fe2e
      0x80001d88 lbu     a0, 0(a0)              #; a0  = 0x0011fe2e, a0  <~~ Byte[0x0011fe2e]
      0x80001d8c addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001d90 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001d94 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80001d98 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001d9c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001da0 jalr    s7                     #; s7  = 0x800016b8, (wrb) ra  <-- 0x80001da4, goto 0x800016b8
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800016b8 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
      0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
      0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 11
      0x800016d8 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 12 ~~> Word[0x800030d4]
      0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 11, (wrb) a4  <-- 0x800030df
      0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030df, 46 ~~> Byte[0x80003127]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 12
      0x800016ec addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x800016f0 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x800016f4 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x800016f8 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001760 ret                            #; ra  = 0x80001da4, goto 0x80001da4
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001da4 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001da8 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001dac bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001d84
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d84 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 6, (wrb) a0  <-- 0x0011fe2d
      0x80001d88 lbu     a0, 0(a0)              #; a0  = 0x0011fe2d, a0  <~~ Byte[0x0011fe2d]
      0x80001d8c addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001d90 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001d94 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80001d98 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001d9c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001da0 jalr    s7                     #; s7  = 0x800016b8, (wrb) ra  <-- 0x80001da4, goto 0x800016b8
                                                #; (lsu) a0  <-- 55
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800016b8 beqz    a0, pc + 168           #; a0  = 55, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
      0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
      0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 12
      0x800016d8 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 13 ~~> Word[0x800030d4]
      0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 12, (wrb) a4  <-- 0x800030e0
      0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030e0, 55 ~~> Byte[0x80003128]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 13
      0x800016ec addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x800016f0 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x800016f4 addi    a0, a0, -10            #; a0  = 55, (wrb) a0  <-- 45
      0x800016f8 snez    a0, a0                 #; a0  = 45, (wrb) a0  <-- 1
      0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001760 ret                            #; ra  = 0x80001da4, goto 0x80001da4
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001da4 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001da8 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001dac bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001d84
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d84 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 5, (wrb) a0  <-- 0x0011fe2c
      0x80001d88 lbu     a0, 0(a0)              #; a0  = 0x0011fe2c, a0  <~~ Byte[0x0011fe2c]
      0x80001d8c addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001d90 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001d94 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80001d98 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001d9c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001da0 jalr    s7                     #; s7  = 0x800016b8, (wrb) ra  <-- 0x80001da4, goto 0x800016b8
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800016b8 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
      0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
      0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 13
      0x800016d8 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 14 ~~> Word[0x800030d4]
      0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 13, (wrb) a4  <-- 0x800030e1
      0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030e1, 48 ~~> Byte[0x80003129]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 14
      0x800016ec addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x800016f0 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x800016f4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800016f8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001760 ret                            #; ra  = 0x80001da4, goto 0x80001da4
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001da4 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001da8 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001dac bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001d84
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d84 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 4, (wrb) a0  <-- 0x0011fe2b
      0x80001d88 lbu     a0, 0(a0)              #; a0  = 0x0011fe2b, a0  <~~ Byte[0x0011fe2b]
      0x80001d8c addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001d90 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001d94 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80001d98 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001d9c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001da0 jalr    s7                     #; s7  = 0x800016b8, (wrb) ra  <-- 0x80001da4, goto 0x800016b8
                                                #; (lsu) a0  <-- 51
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800016b8 beqz    a0, pc + 168           #; a0  = 51, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
      0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
      0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 14
      0x800016d8 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 15 ~~> Word[0x800030d4]
      0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 14, (wrb) a4  <-- 0x800030e2
      0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030e2, 51 ~~> Byte[0x8000312a]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 15
      0x800016ec addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x800016f0 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x800016f4 addi    a0, a0, -10            #; a0  = 51, (wrb) a0  <-- 41
      0x800016f8 snez    a0, a0                 #; a0  = 41, (wrb) a0  <-- 1
      0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001760 ret                            #; ra  = 0x80001da4, goto 0x80001da4
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001da4 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001da8 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001dac bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001d84
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d84 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 3, (wrb) a0  <-- 0x0011fe2a
      0x80001d88 lbu     a0, 0(a0)              #; a0  = 0x0011fe2a, a0  <~~ Byte[0x0011fe2a]
      0x80001d8c addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001d90 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001d94 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80001d98 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001d9c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001da0 jalr    s7                     #; s7  = 0x800016b8, (wrb) ra  <-- 0x80001da4, goto 0x800016b8
                                                #; (lsu) a0  <-- 57
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800016b8 beqz    a0, pc + 168           #; a0  = 57, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
      0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
      0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 15
      0x800016d8 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 16 ~~> Word[0x800030d4]
      0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 15, (wrb) a4  <-- 0x800030e3
      0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030e3, 57 ~~> Byte[0x8000312b]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 16
      0x800016ec addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x800016f0 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x800016f4 addi    a0, a0, -10            #; a0  = 57, (wrb) a0  <-- 47
      0x800016f8 snez    a0, a0                 #; a0  = 47, (wrb) a0  <-- 1
      0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001760 ret                            #; ra  = 0x80001da4, goto 0x80001da4
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001da4 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001da8 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001dac bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001d84
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d84 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 2, (wrb) a0  <-- 0x0011fe29
      0x80001d88 lbu     a0, 0(a0)              #; a0  = 0x0011fe29, a0  <~~ Byte[0x0011fe29]
      0x80001d8c addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001d90 addi    s1, s0, 1              #; s0  = 16, (wrb) s1  <-- 17
      0x80001d94 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80001d98 mv      a2, s0                 #; s0  = 16, (wrb) a2  <-- 16
      0x80001d9c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001da0 jalr    s7                     #; s7  = 0x800016b8, (wrb) ra  <-- 0x80001da4, goto 0x800016b8
                                                #; (lsu) a0  <-- 55
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800016b8 beqz    a0, pc + 168           #; a0  = 55, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
      0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
      0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 16
      0x800016d8 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 17 ~~> Word[0x800030d4]
      0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 16, (wrb) a4  <-- 0x800030e4
      0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030e4, 55 ~~> Byte[0x8000312c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 17
      0x800016ec addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x800016f0 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x800016f4 addi    a0, a0, -10            #; a0  = 55, (wrb) a0  <-- 45
      0x800016f8 snez    a0, a0                 #; a0  = 45, (wrb) a0  <-- 1
      0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001760 ret                            #; ra  = 0x80001da4, goto 0x80001da4
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001da4 mv      s0, s1                 #; s1  = 17, (wrb) s0  <-- 17
      0x80001da8 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001dac bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001d84
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d84 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 1, (wrb) a0  <-- 0x0011fe28
      0x80001d88 lbu     a0, 0(a0)              #; a0  = 0x0011fe28, a0  <~~ Byte[0x0011fe28]
      0x80001d8c addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001d90 addi    s1, s0, 1              #; s0  = 17, (wrb) s1  <-- 18
      0x80001d94 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80001d98 mv      a2, s0                 #; s0  = 17, (wrb) a2  <-- 17
      0x80001d9c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001da0 jalr    s7                     #; s7  = 0x800016b8, (wrb) ra  <-- 0x80001da4, goto 0x800016b8
                                                #; (lsu) a0  <-- 57
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800016b8 beqz    a0, pc + 168           #; a0  = 57, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
      0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
      0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 17
      0x800016d8 addi    a5, a4, 1              #; a4  = 17, (wrb) a5  <-- 18
      0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 18 ~~> Word[0x800030d4]
      0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 17, (wrb) a4  <-- 0x800030e5
      0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030e5, 57 ~~> Byte[0x8000312d]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 18
      0x800016ec addi    a4, a4, -1020          #; a4  = 18, (wrb) a4  <-- -1002
      0x800016f0 snez    a4, a4                 #; a4  = -1002, (wrb) a4  <-- 1
      0x800016f4 addi    a0, a0, -10            #; a0  = 57, (wrb) a0  <-- 47
      0x800016f8 snez    a0, a0                 #; a0  = 47, (wrb) a0  <-- 1
      0x800016fc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001700 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001760
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001760 ret                            #; ra  = 0x80001da4, goto 0x80001da4
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001da4 mv      s0, s1                 #; s1  = 18, (wrb) s0  <-- 18
      0x80001da8 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001dac bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001db0 j       pc + 0x8               #; goto 0x80001db8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001db8 sub     a0, s1, s4             #; s1  = 18, s4  = 8, (wrb) a0  <-- 10
      0x80001dbc sltu    a0, a0, s2             #; a0  = 10, s2  = 0, (wrb) a0  <-- 0
      0x80001dc0 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001dc4 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001dc8 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001dcc bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001dfc
; _ftoa (printf.c:0)
      0x80001dfc mv      s0, s1                 #; s1  = 18, (wrb) s0  <-- 18
; _ftoa (printf.c:462)
      0x80001e00 mv      a0, s0                 #; s0  = 18, (wrb) a0  <-- 18
      0x80001e04 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe48]
      0x80001e08 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe50], (f:lsu) fs2  <-- 0.0
      0x80001e0c fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe58], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0000000
      0x80001e10 lw      s10, 64(sp)            #; sp  = 0x0011fe20, s10 <~~ Word[0x0011fe60]
                                                #; (lsu) s10 <-- 0x80002d9e
      0x80001e14 lw      s9, 68(sp)             #; sp  = 0x0011fe20, s9  <~~ Word[0x0011fe64]
                                                #; (lsu) s9  <-- 8
      0x80001e18 lw      s8, 72(sp)             #; sp  = 0x0011fe20, s8  <~~ Word[0x0011fe68]
                                                #; (lsu) s8  <-- 16
      0x80001e1c lw      s7, 76(sp)             #; sp  = 0x0011fe20, s7  <~~ Word[0x0011fe6c]
                                                #; (lsu) s7  <-- 0
      0x80001e20 lw      s6, 80(sp)             #; sp  = 0x0011fe20, s6  <~~ Word[0x0011fe70]
                                                #; (lsu) s6  <-- 0
      0x80001e24 lw      s5, 84(sp)             #; sp  = 0x0011fe20, s5  <~~ Word[0x0011fe74]
                                                #; (lsu) s5  <-- -1
      0x80001e28 lw      s4, 88(sp)             #; sp  = 0x0011fe20, s4  <~~ Word[0x0011fe78]
                                                #; (lsu) s4  <-- 0x0011ff07
      0x80001e2c lw      s3, 92(sp)             #; sp  = 0x0011fe20, s3  <~~ Word[0x0011fe7c]
                                                #; (lsu) s3  <-- 0x0011ff20
      0x80001e30 lw      s2, 96(sp)             #; sp  = 0x0011fe20, s2  <~~ Word[0x0011fe80]
                                                #; (lsu) s2  <-- 0x800016b8
      0x80001e34 lw      s1, 100(sp)            #; sp  = 0x0011fe20, s1  <~~ Word[0x0011fe84]
                                                #; (lsu) s1  <-- 8
      0x80001e38 lw      s0, 104(sp)            #; sp  = 0x0011fe20, s0  <~~ Word[0x0011fe88]
                                                #; (lsu) s0  <-- 0
      0x80001e3c lw      ra, 108(sp)            #; sp  = 0x0011fe20, ra  <~~ Word[0x0011fe8c]
      0x80001e40 addi    sp, sp, 112            #; sp  = 0x0011fe20, (wrb) sp  <-- 0x0011fe90
                                                #; (lsu) ra  <-- 0x80000de8
      0x80001e44 ret                            #; ra  = 0x80000de8, goto 0x80000de8
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000de8 j       pc + 0x7c0             #; goto 0x800015a8
      0x800015a8 mv      s8, a0                 #; a0  = 18, (wrb) s8  <-- 18
      0x800015ac li      s6, 37                 #; (wrb) s6  <-- 37
      0x800015b0 li      s7, 46                 #; (wrb) s7  <-- 46
      0x800015b4 addi    s0, s10, 1             #; s10 = 0x80002d9e, (wrb) s0  <-- 0x80002d9f
      0x800015b8 j       pc - 0xa74             #; goto 0x80000b44
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b44 addi    s10, s0, 2             #; s0  = 0x80002d9f, (wrb) s10 <-- 0x80002da1
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b48 mv      s9, s8                 #; s8  = 18, (wrb) s9  <-- 18
      0x80000b4c li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b50 lbu     a0, 0(s0)              #; s0  = 0x80002d9f, a0  <~~ Byte[0x80002d9f]
                                                #; (lsu) a0  <-- 10
      0x80000b54 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000b58 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000b5c addi    s1, s9, 1              #; s9  = 18, (wrb) s1  <-- 19
      0x80000b60 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000b64 mv      a2, s9                 #; s9  = 18, (wrb) a2  <-- 18
      0x80000b68 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b6c jalr    s2                     #; s2  = 0x800016b8, (wrb) ra  <-- 0x80000b70, goto 0x800016b8
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800016b8 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016bc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c0 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016c4 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016c8 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036c8
      0x800016cc addi    a3, a3, -1524          #; a3  = 0x800036c8, (wrb) a3  <-- 0x800030d4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016d0 add     a1, a2, a3             #; a2  = 0, a3  = 0x800030d4, (wrb) a1  <-- 0x800030d4
      0x800016d4 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 18
      0x800016d8 addi    a5, a4, 1              #; a4  = 18, (wrb) a5  <-- 19
      0x800016dc sw      a5, 0(a1)              #; a1  = 0x800030d4, 19 ~~> Word[0x800030d4]
      0x800016e0 add     a4, a1, a4             #; a1  = 0x800030d4, a4  = 18, (wrb) a4  <-- 0x800030e6
      0x800016e4 sb      a0, 72(a4)             #; a4  = 0x800030e6, 10 ~~> Byte[0x8000312e]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800016e8 lw      a4, 0(a1)              #; a1  = 0x800030d4, a4  <~~ Word[0x800030d4]
                                                #; (lsu) a4  <-- 19
      0x800016ec addi    a4, a4, -1020          #; a4  = 19, (wrb) a4  <-- -1001
      0x800016f0 snez    a4, a4                 #; a4  = -1001, (wrb) a4  <-- 1
      0x800016f4 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x800016f8 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x800016fc and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x80001700 bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001704 add     a0, a3, a2             #; a3  = 0x800030d4, a2  = 0, (wrb) a0  <-- 0x800030d4
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001708 addi    a2, a0, 72             #; a0  = 0x800030d4, (wrb) a2  <-- 0x8000311c
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000170c sw      zero, 12(a0)           #; a0  = 0x800030d4, 0 ~~> Word[0x800030e0]
      0x80001710 li      a3, 64                 #; (wrb) a3  <-- 64
      0x80001714 sw      a3, 8(a0)              #; a0  = 0x800030d4, 64 ~~> Word[0x800030dc]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 sw      zero, 20(a0)           #; a0  = 0x800030d4, 0 ~~> Word[0x800030e8]
      0x8000171c li      a3, 1                  #; (wrb) a3  <-- 1
      0x80001720 sw      a3, 16(a0)             #; a0  = 0x800030d4, 1 ~~> Word[0x800030e4]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001724 sw      zero, 28(a0)           #; a0  = 0x800030d4, 0 ~~> Word[0x800030f0]
      0x80001728 sw      a2, 24(a0)             #; a0  = 0x800030d4, 0x8000311c ~~> Word[0x800030ec]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000172c lw      a2, 0(a1)              #; a1  = 0x800030d4, a2  <~~ Word[0x800030d4]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001730 addi    a3, a0, 8              #; a0  = 0x800030d4, (wrb) a3  <-- 0x800030dc
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001734 sw      zero, 36(a0)           #; a0  = 0x800030d4, 0 ~~> Word[0x800030f8]
                                                #; (lsu) a2  <-- 19
      0x80001738 sw      a2, 32(a0)             #; a0  = 0x800030d4, 19 ~~> Word[0x800030f4]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000373c
      0x80001740 addi    a0, a0, -1916          #; a0  = 0x8000373c, (wrb) a0  <-- 0x80002fc0
      0x80001744 sw      a3, 0(a0)              #; a0  = 0x80002fc0, 0x800030dc ~~> Word[0x80002fc0]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001748 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003748
      0x8000174c addi    a0, a0, -1864          #; a0  = 0x80003748, (wrb) a0  <-- 0x80003000
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001750 lw      a2, 0(a0)              #; a0  = 0x80003000, a2  <~~ Word[0x80003000]
                                                #; (lsu) a2  <-- 0
      0x80001754 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001750
      0x80001750 lw      a2, 0(a0)              #; a0  = 0x80003000, a2  <~~ Word[0x80003000]
                                                #; (lsu) a2  <-- 0
      0x80001754 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001750
      0x80001750 lw      a2, 0(a0)              #; a0  = 0x80003000, a2  <~~ Word[0x80003000]
                                                #; (lsu) a2  <-- 0
      0x80001754 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001750
      0x80001750 lw      a2, 0(a0)              #; a0  = 0x80003000, a2  <~~ Word[0x80003000]
                                                #; (lsu) a2  <-- 1
      0x80001754 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001758 sw      zero, 0(a0)            #; a0  = 0x80003000, 0 ~~> Word[0x80003000]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000175c sw      zero, 0(a1)            #; a1  = 0x800030d4, 0 ~~> Word[0x800030d4]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001760 ret                            #; ra  = 0x80000b70, goto 0x80000b70
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000b70 addi    s0, s0, 1              #; s0  = 0x80002d9f, (wrb) s0  <-- 0x80002da0
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000b74 addi    s10, s10, 1            #; s10 = 0x80002da1, (wrb) s10 <-- 0x80002da2
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b78 mv      s9, s1                 #; s1  = 19, (wrb) s9  <-- 19
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b7c lbu     a0, 0(s0)              #; s0  = 0x80002da0, a0  <~~ Byte[0x80002da0]
                                                #; (lsu) a0  <-- 0
      0x80000b80 bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000b84 j       pc + 0xad8             #; goto 0x8000165c
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x8000165c mv      a2, s9                 #; s9  = 19, (wrb) a2  <-- 19
      0x80001660 bltu    s9, s5, pc + 8         #; s9  = 19, s5  = -1, taken, goto 0x80001668
      0x80001668 li      a0, 0                  #; (wrb) a0  <-- 0
      0x8000166c mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80001670 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001674 jalr    s2                     #; s2  = 0x800016b8, (wrb) ra  <-- 0x80001678, goto 0x800016b8
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800016b8 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001760
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001760 ret                            #; ra  = 0x80001678, goto 0x80001678
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x80001678 mv      a0, s9                 #; s9  = 19, (wrb) a0  <-- 19
      0x8000167c lw      s11, 60(sp)            #; sp  = 0x0011fe90, s11 <~~ Word[0x0011fecc]
                                                #; (lsu) s11 <-- 0
      0x80001680 lw      s10, 64(sp)            #; sp  = 0x0011fe90, s10 <~~ Word[0x0011fed0]
                                                #; (lsu) s10 <-- 0
      0x80001684 lw      s9, 68(sp)             #; sp  = 0x0011fe90, s9  <~~ Word[0x0011fed4]
                                                #; (lsu) s9  <-- 0
      0x80001688 lw      s8, 72(sp)             #; sp  = 0x0011fe90, s8  <~~ Word[0x0011fed8]
                                                #; (lsu) s8  <-- 0
      0x8000168c lw      s7, 76(sp)             #; sp  = 0x0011fe90, s7  <~~ Word[0x0011fedc]
                                                #; (lsu) s7  <-- 0
      0x80001690 lw      s6, 80(sp)             #; sp  = 0x0011fe90, s6  <~~ Word[0x0011fee0]
                                                #; (lsu) s6  <-- 0
      0x80001694 lw      s5, 84(sp)             #; sp  = 0x0011fe90, s5  <~~ Word[0x0011fee4]
                                                #; (lsu) s5  <-- 0
      0x80001698 lw      s4, 88(sp)             #; sp  = 0x0011fe90, s4  <~~ Word[0x0011fee8]
                                                #; (lsu) s4  <-- 0
      0x8000169c lw      s3, 92(sp)             #; sp  = 0x0011fe90, s3  <~~ Word[0x0011feec]
                                                #; (lsu) s3  <-- 0x339c0ebe
      0x800016a0 lw      s2, 96(sp)             #; sp  = 0x0011fe90, s2  <~~ Word[0x0011fef0]
                                                #; (lsu) s2  <-- 0x00100000
      0x800016a4 lw      s1, 100(sp)            #; sp  = 0x0011fe90, s1  <~~ Word[0x0011fef4]
                                                #; (lsu) s1  <-- 0x00100050
      0x800016a8 lw      s0, 104(sp)            #; sp  = 0x0011fe90, s0  <~~ Word[0x0011fef8]
                                                #; (lsu) s0  <-- 0x001000a0
      0x800016ac lw      ra, 108(sp)            #; sp  = 0x0011fe90, ra  <~~ Word[0x0011fefc]
      0x800016b0 addi    sp, sp, 112            #; sp  = 0x0011fe90, (wrb) sp  <-- 0x0011ff00
                                                #; (lsu) ra  <-- 0x80000ab4
      0x800016b4 ret                            #; ra  = 0x80000ab4, goto 0x80000ab4
; printf_ (printf.c:869)
      0x80000ab4 lw      ra, 12(sp)             #; sp  = 0x0011ff00, ra  <~~ Word[0x0011ff0c]
      0x80000ab8 addi    sp, sp, 48             #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011ff30
                                                #; (lsu) ra  <-- 0x80000a20
      0x80000abc ret                            #; ra  = 0x80000a20, goto 0x80000a20
; main (test_conflict.c:0)
      0x80000a20 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a20
      0x80000a24 addi    a0, a0, 1536           #; a0  = 0x80002a20, (wrb) a0  <-- 0x80003020
      0x80000a28 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003020]
; main (test_conflict.c:35)
      0x80000a34 lw      s3, 28(sp)             #; sp  = 0x0011ff30, s3  <~~ Word[0x0011ff4c]
                                                #; (f:lsu) ft0  <-- 0.0001
; main (test_conflict.c:34)
      0x80000a2c flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0000000
                                                #; (lsu) s3  <-- 0
; main (test_conflict.c:35)
      0x80000a38 lw      s2, 32(sp)             #; sp  = 0x0011ff30, s2  <~~ Word[0x0011ff50], (acc) s2  <-- 0x02012903
      0x80000a30 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff40]
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) s2  <-- 0
      0x80000a3c lw      s1, 36(sp)             #; sp  = 0x0011ff30, s1  <~~ Word[0x0011ff54]
                                                #; (lsu) s1  <-- 0
      0x80000a40 lw      s0, 40(sp)             #; sp  = 0x0011ff30, s0  <~~ Word[0x0011ff58]
                                                #; (lsu) s0  <-- 0
      0x80000a44 lw      ra, 44(sp)             #; sp  = 0x0011ff30, ra  <~~ Word[0x0011ff5c]
      0x80000a48 addi    sp, sp, 48             #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002b10
      0x80000a4c ret                            #; ra  = 0x80002b10, goto 0x80002b10
; ?? (start.S:184)
      0x80002b10 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x80002b14 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b14
      0x80002b18 jalr    ra, ra, 524            #; ra  = 0x80002b14, (wrb) ra  <-- 0x80002b1c, goto 0x80002d20
; ?? (start_snitch.S:33)
      0x80002d20 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002d24 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002b1c ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002d28 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d28
      0x80002d2c jalr    ra, ra, -1256          #; ra  = 0x80002d28, (wrb) ra  <-- 0x80002d30, goto 0x80002840
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002840 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002844 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002848 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000284c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002850 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002854 ret                            #; ra  = 0x80002d30, goto 0x80002d30
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002d30 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002d34 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002d38 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002d3c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002b1c
; ?? (start_snitch.S:40)
      0x80002d40 ret                            #; ra  = 0x80002b1c, goto 0x80002b1c
; ?? (start.S:195)
      0x80002b1c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x80002b20 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b20
      0x80002b24 jalr    ra, ra, 556            #; ra  = 0x80002b20, (wrb) ra  <-- 0x80002b28, goto 0x80002d4c
; ?? (start_snitch.S:15)
      0x80002d4c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80002d50 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80002d54 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002b28 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80002d58 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d58
      0x80002d5c jalr    ra, ra, -1336          #; ra  = 0x80002d58, (wrb) ra  <-- 0x80002d60, goto 0x80002820
; snrt_global_core_idx (team.c:32)
      0x80002820 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002824 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002828 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000282c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002830 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x80002834 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x80002838 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x8000283c ret                            #; ra  = 0x80002d60, goto 0x80002d60
; ?? (start_snitch.S:20)
      0x80002d60 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x80002d64 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80002d68 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x80002d6c bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x80002b28
; ?? (start_snitch.S:28)
      0x80002d70 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x80002d74 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x80002d78 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002d78
      0x80002d7c addi    t1, t1, 584            #; t1  = 0x80002d78, (wrb) t1  <-- 0x80002fc0
; ?? (start_snitch.S:31)
      0x80002d80 sw      t0, 0(t1)              #; t1  = 0x80002fc0, 1 ~~> Word[0x80002fc0]
; ?? (start_snitch.S:32)
      0x80002d84 ret                            #; ra  = 0x80002b28, goto 0x80002b28
; ?? (start.S:198)
      0x80002b28 wfi                            #; 
                        tion 0 @ (12, 5846):
                          149
                          234
                            6
                           43
                      11.4497
                       0.2559
                       0.0801
                          1.0
                          1.0
                            0
                       1.6914
                       2.4884
                       0.0223
                       0.0139
                       0.6231
                         5835
                       0.2781
