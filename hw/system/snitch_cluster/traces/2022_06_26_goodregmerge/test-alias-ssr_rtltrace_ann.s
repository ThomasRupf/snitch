; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x80002930
      0x00001014 jalr    t0                     #; t0  = 0x80002930, (wrb) ra  <-- 4120, goto 0x80002930
; ?? (start.S:20)
      0x80002930 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003930
; ?? (start.S:21)
      0x80002934 addi    gp, gp, -232           #; gp  = 0x80003930, (wrb) gp  <-- 0x80003848
; ?? (start.S:28)
      0x80002938 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002938
      0x8000293c jalr    ra, ra, 964            #; ra  = 0x80002938, (wrb) ra  <-- 0x80002940, goto 0x80002cfc
; ?? (start_snitch.S:16)
      0x80002cfc mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80002d00 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80002d04 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80002d08 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x80002d0c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80002d10 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80002d14 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80002d18 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x80002d1c mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80002d20 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80002d24 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80002d28 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x80002d2c ret                            #; ra  = 0x80002940, goto 0x80002940
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x80002940 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x80002944 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x80002948 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002948
      0x8000294c jalr    ra, ra, 1036           #; ra  = 0x80002948, (wrb) ra  <-- 0x80002950, goto 0x80002d54
; ?? (start_snitch.S:48)
      0x80002d54 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80002d58 ret                            #; ra  = 0x80002950, goto 0x80002950
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x80002950 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x80002954 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x80002958 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x8000295c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x80002960 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x80002964 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002964
      0x80002968 addi    t0, t0, 2036           #; t0  = 0x80002964, (wrb) t0  <-- 0x80003158
; ?? (start.S:49)
      0x8000296c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000296c
      0x80002970 addi    t1, t1, 2032           #; t1  = 0x8000296c, (wrb) t1  <-- 0x8000315c
; ?? (start.S:50)
      0x80002974 bge     t0, t1, pc + 16        #; t0  = 0x80003158, t1  = 0x8000315c, not taken
; ?? (start.S:51)
      0x80002978 sw      zero, 0(t0)            #; t0  = 0x80003158, 0 ~~> Word[0x80003158]
; ?? (start.S:52)
      0x8000297c addi    t0, t0, 4              #; t0  = 0x80003158, (wrb) t0  <-- 0x8000315c
; ?? (start.S:53)
      0x80002980 blt     t0, t1, pc - 8         #; t0  = 0x8000315c, t1  = 0x8000315c, not taken
; ?? (start.S:58)
      0x80002984 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x80002988 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x8000298c beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x80002990 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x80002994 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x80002998 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x8000299c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x800029a0 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x800029a4 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x800029a8 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x800029ac fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x800029b0 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x800029b4 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x800029b8 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x800029bc fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x800029c0 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x800029c4 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x800029c8 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x800029cc fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x800029d0 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x800029d4 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x800029d8 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x800029dc fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x800029e0 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x800029e4 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x800029e8 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x800029ec fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x800029f0 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x800029f4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x800029f8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x800029fc fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x80002a00 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x80002a04 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x80002a08 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x80002a0c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x80002a10 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x80002a14 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x80002a18 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a18
      0x80002a1c lw      t0, 900(t0)            #; t0  = 0x80002a18, t0  <~~ Word[0x80002d9c]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x80002a20 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x80002a24 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x80002a28 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002a28
      0x80002a2c lw      t2, 880(t2)            #; t2  = 0x80002a28, t2  <~~ Word[0x80002d98]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x80002a30 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x80002a34 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x80002a38 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x80002a3c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x80002a40 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x80002a44 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x80002a48 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x80002a4c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x80002a50 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a50
      0x80002a54 addi    t0, t0, 1528           #; t0  = 0x80002a50, (wrb) t0  <-- 0x80003048
; ?? (start.S:125)
      0x80002a58 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002a58
      0x80002a5c addi    t1, t1, 1520           #; t1  = 0x80002a58, (wrb) t1  <-- 0x80003048
; ?? (start.S:126)
      0x80002a60 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002a60
      0x80002a64 addi    t2, t2, 1512           #; t2  = 0x80002a60, (wrb) t2  <-- 0x80003048
; ?? (start.S:127)
      0x80002a68 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002a68
      0x80002a6c addi    t3, t3, 1520           #; t3  = 0x80002a68, (wrb) t3  <-- 0x80003058
; ?? (start.S:128)
      0x80002a70 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003048, (wrb) sp  <-- 0x80122fb8
; ?? (start.S:129)
      0x80002a74 sub     sp, sp, t1             #; sp  = 0x80122fb8, t1  = 0x80003048, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x80002a78 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003048, (wrb) sp  <-- 0x80122fb8
; ?? (start.S:131)
      0x80002a7c sub     sp, sp, t3             #; sp  = 0x80122fb8, t3  = 0x80003058, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x80002a80 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x80002a84 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x80002a88 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x80002a8c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x80002a90 bge     t0, t1, pc + 24        #; t0  = 0x80003048, t1  = 0x80003048, taken, goto 0x80002aa8
; ?? (start.S:147)
      0x80002aa8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002aa8
      0x80002aac addi    t0, t0, 1440           #; t0  = 0x80002aa8, (wrb) t0  <-- 0x80003048
; ?? (start.S:148)
      0x80002ab0 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002ab0
      0x80002ab4 addi    t1, t1, 1448           #; t1  = 0x80002ab0, (wrb) t1  <-- 0x80003058
; ?? (start.S:149)
      0x80002ab8 bge     t0, t1, pc + 20        #; t0  = 0x80003048, t1  = 0x80003058, not taken
; ?? (start.S:150)
      0x80002abc sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x80002ac0 addi    t0, t0, 4              #; t0  = 0x80003048, (wrb) t0  <-- 0x8000304c
; ?? (start.S:152)
      0x80002ac4 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x80002ac8 blt     t0, t2, pc - 12        #; t0  = 0x8000304c, t2  = 0x80003048, not taken
; ?? (start.S:158)
      0x80002acc addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x80002ad0 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x80002ad4 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x80002ad8 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x80002adc sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x80002ae0 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x80002ae4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ae4
      0x80002ae8 jalr    ra, ra, -1056          #; ra  = 0x80002ae4, (wrb) ra  <-- 0x80002aec, goto 0x800026c4
; _snrt_init_team (start.c:49)
      0x800026c4 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x800026c8 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x800026cc lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x800026d0 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x800026d4 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x800026d8 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x800026dc lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x800026e0 mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x800026e4 mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x800026e8 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x800026ec csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x800026f0 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x800026f4 divu    a0, a0, t0             #; a0  = 0, t0  = 8
                                                #; (acc) a6  <-- 0x00a7a823
; _snrt_init_team (start.c:54)
      0x800026f8 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x800026fc sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x80002700 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x80002704 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x80002708 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x8000270c lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x80002710 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x80002714 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x80002718 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x8000271c lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x80002720 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x80002724 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x80002728 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x8000272c sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x80002730 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x80002734 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x80002738 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x8000273c lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x80002740 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x80002744 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x80002748 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x8000274c sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x80002750 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x80002754 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x80002758 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x8000275c add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x80002760 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x80002764 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x80002768 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x8000276c add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x80002770 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x80002774 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x80002778 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x8000277c sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x80002780 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x80002784 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002788 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000278c sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x80002790 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002794 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x80002798 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x8000279c sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x800027a0 remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x800027a4 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x800027a8 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
                                                #; (acc) tp  <-- 0x00a5a223
      0x800027ac sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x800027b0 li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x800027b4 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x800027b8 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800037b8
      0x800027bc addi    a1, a1, -1628          #; a1  = 0x800037b8, (wrb) a1  <-- 0x8000315c
      0x800027c0 add     a0, a0, a1             #; a0  = 0, a1  = 0x8000315c, (wrb) a0  <-- 0x8000315c
      0x800027c4 sw      zero, 0(a0)            #; a0  = 0x8000315c, 0 ~~> Word[0x8000315c]
; _snrt_init_team (start.c:86)
      0x800027c8 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x800027cc sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x800027d0 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x800027d4 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x800027d8 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x800027dc sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x800027e0 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x800027e4 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x800027e8 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x800027ec sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x800027f0 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x800027f4 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x800027f8 lw      a0, 0(a1)              #; a1  = 0x8000315c, a0  <~~ Word[0x8000315c]
                                                #; (lsu) a0  <-- 0
      0x800027fc addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x80002800 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x80002804 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x80002808 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x8000280c sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x80002810 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002814 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002818 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x8000281c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002820 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002824 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x80002828 ret                            #; ra  = 0x80002aec, goto 0x80002aec
; ?? (start.S:165)
      0x80002aec lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x80002af0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x80002af4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x80002af8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x80002afc lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x80002b00 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x80002b04 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002b04
      0x80002b08 addi    t0, t0, 60             #; t0  = 0x80002b04, (wrb) t0  <-- 0x80002b40
; ?? (start.S:175)
      0x80002b0c csrw    mtvec, t0              #; t0  = 0x80002b40, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x80002b10 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b10
      0x80002b14 jalr    ra, ra, 544            #; ra  = 0x80002b10, (wrb) ra  <-- 0x80002b18, goto 0x80002d30
; ?? (start_snitch.S:33)
      0x80002d30 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002d34 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002b18 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002d38 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d38
      0x80002d3c jalr    ra, ra, -1260          #; ra  = 0x80002d38, (wrb) ra  <-- 0x80002d40, goto 0x8000284c
; _snrt_barrier_reg_ptr (team.c:80)
      0x8000284c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002850 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002854 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002858 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000285c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002860 ret                            #; ra  = 0x80002d40, goto 0x80002d40
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002d40 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002d44 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002d48 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002d4c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002b18
; ?? (start_snitch.S:40)
      0x80002d50 ret                            #; ra  = 0x80002b18, goto 0x80002b18
; ?? (start.S:183)
      0x80002b18 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000b18
      0x80002b1c jalr    ra, ra, -1252          #; ra  = 0x80000b18, (wrb) ra  <-- 0x80002b20, goto 0x80000634
; main (test_aliasing.c:24)
      0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (test_aliasing.c:25)
      0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002b20 ~~> Word[0x0011ff5c]
      0x80000640 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000644 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000063c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
      0x80000648 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
; main (test_aliasing.c:0)
      0x8000064c li      a0, 0                  #; (wrb) a0  <-- 0
                                                #; (lsu) a1  <-- 0
; main (test_aliasing.c:25)
      0x80000650 bnez    a1, pc + 1040          #; a1  = 0, not taken
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (test_aliasing.c:29)
      0x80000654 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000658 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000065c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80000660 lw      a1, 0(a0)              #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff70]
                                                #; (lsu) a1  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in main (test_aliasing.c:29)
      0x80000664 lw      a0, 88(a1)             #; a1  = 0x0011ff70, a0  <~~ Word[0x0011ffc8]
                                                #; (lsu) a0  <-- 0x00100000
      0x80000668 lw      a2, 80(a1)             #; a1  = 0x0011ff70, a2  <~~ Word[0x0011ffc0]
                                                #; (lsu) a2  <-- 0x00100000
      0x8000066c lw      a4, 84(a1)             #; a1  = 0x0011ff70, a4  <~~ Word[0x0011ffc4]
                                                #; (lsu) a4  <-- 0x0001df30
      0x80000670 addi    a3, a0, 80             #; a0  = 0x00100000, (wrb) a3  <-- 0x00100050
      0x80000674 add     a2, a4, a2             #; a4  = 0x0001df30, a2  = 0x00100000, (wrb) a2  <-- 0x0011df30
      0x80000678 bgeu    a2, a3, pc + 16        #; a2  = 0x0011df30, a3  = 0x00100050, taken, goto 0x80000688
; init_data (test_aliasing.c:5)
;  in main (test_aliasing.c:31)
      0x80000688 srli    a2, a0, 20             #; a0  = 0x00100000, (wrb) a2  <-- 1
      0x8000068c snez    a7, a2                 #; a2  = 1, (wrb) a7  <-- 1
      0x80000690 lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
      0x80000694 addi    a2, a2, -71            #; a2  = 0x00120000, (wrb) a2  <-- 0x0011ffb9
      0x80000698 sltu    a2, a0, a2             #; a0  = 0x00100000, a2  = 0x0011ffb9, (wrb) a2  <-- 1
      0x8000069c and     a2, a7, a2             #; a7  = 1, a2  = 1, (wrb) a2  <-- 1
; snrt_l1alloc (alloc.c:34)
;  in main (test_aliasing.c:29)
      0x800006a0 sw      a3, 88(a1)             #; a1  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
; snrt_l1alloc (alloc.c:0)
;  in main (test_aliasing.c:29)
      0x800006a4 beqz    a2, pc + 344           #; a2  = 1, not taken
; main (alloc.c:0)
      0x800006a8 li      t0, 0                  #; (wrb) t0  <-- 0
      0x800006ac li      a2, 8                  #; (wrb) a2  <-- 8
      0x800006b0 li      a3, 9                  #; (wrb) a3  <-- 9
; init_data (test_aliasing.c:5)
;  in main (test_aliasing.c:31)
      0x800006b4 li      a4, 64                 #; (wrb) a4  <-- 64
      0x800006b8 scfgw   a3, a4                 #; a3  = 9, a4  = 64
      0x800006bc li      a4, 192                #; (wrb) a4  <-- 192
      0x800006c0 scfgw   a2, a4                 #; a2  = 8, a4  = 192
      0x800006c4 li      a4, 32                 #; (wrb) a4  <-- 32
      0x800006c8 scfgw   zero, a4               #; a4  = 32
      0x800006cc scfgwi  a0, 896                #; a0  = 0x00100000
; init_data (test_aliasing.c:0)
;  in main (test_aliasing.c:31)
      0x800006d0 auipc   a4, 0x3                #; (wrb) a4  <-- 0x800036d0
      0x800006d4 addi    a4, a4, -1656          #; a4  = 0x800036d0, (wrb) a4  <-- 0x80003058
      0x800006d8 fld     ft3, 0(a4)             #; ft3  <~~ Doub[0x80003058]
; init_data (test_aliasing.c:5)
;  in main (test_aliasing.c:31)
      0x800006dc csrrsi  a4, ssr, 1             #; 
      0x800006e0 fcvt.d.w ft4, zero             #; ac1  = 0, (f:lsu) ft3  <-- 1.0
                                                #; (f:fpu) ft4  <-- 0.0
; init_data (test_aliasing.c:0)
;  in main (test_aliasing.c:31)
      0x800006ec auipc   a4, 0x3                #; (wrb) a4  <-- 0x800036ec
      0x800006e4 fsgnj.d ft0, ft4, ft4          #; ft4  = 0.0, ft4  = 0.0
; init_data (test_aliasing.c:6)
;  in main (test_aliasing.c:31)
      0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0, (f:fpu) ft0  <-- 0.0
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (test_aliasing.c:0)
;  in main (test_aliasing.c:31)
      0x800006f0 addi    a4, a4, -1676          #; a4  = 0x800036ec, (wrb) a4  <-- 0x80003060
      0x800006f8 auipc   a4, 0x3                #; (wrb) a4  <-- 0x800036f8
      0x800006fc addi    a4, a4, -1680          #; a4  = 0x800036f8, (wrb) a4  <-- 0x80003068
      0x800006f4 fld     ft3, 0(a4)             #; ft3  <~~ Doub[0x80003060]
                                                #; (f:lsu) ft3  <-- 2.0
      0x80000704 auipc   a4, 0x3                #; (wrb) a4  <-- 0x80003704
      0x80000708 addi    a4, a4, -1684          #; a4  = 0x80003704, (wrb) a4  <-- 0x80003070
      0x80000700 fld     ft4, 0(a4)             #; ft4  <~~ Doub[0x80003068]
      0x8000070c fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x80003070]
                                                #; (f:lsu) ft4  <-- 3.0
      0x80000710 auipc   a4, 0x3                #; (wrb) a4  <-- 0x80003710
      0x80000714 addi    a4, a4, -1688          #; a4  = 0x80003710, (wrb) a4  <-- 0x80003078
                                                #; (f:lsu) ft5  <-- 4.0
      0x80000718 fld     ft6, 0(a4)             #; ft6  <~~ Doub[0x80003078]
; init_data (test_aliasing.c:6)
;  in main (test_aliasing.c:31)
      0x8000071c fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
                                                #; (f:fpu) ft0  <-- 2.0
                                                #; (f:lsu) ft6  <-- 5.0
      0x80000720 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.0, ft4  = 3.0
; init_data (test_aliasing.c:0)
;  in main (test_aliasing.c:31)
      0x8000072c auipc   a4, 0x3                #; (wrb) a4  <-- 0x8000372c
      0x80000724 fsgnj.d ft0, ft5, ft5          #; ft5  = 4.0, ft5  = 4.0, (f:fpu) ft0  <-- 3.0
; init_data (test_aliasing.c:6)
;  in main (test_aliasing.c:31)
      0x80000728 fsgnj.d ft0, ft6, ft6          #; ft6  = 5.0, ft6  = 5.0, (f:fpu) ft0  <-- 4.0
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (test_aliasing.c:0)
;  in main (test_aliasing.c:31)
      0x80000730 addi    a4, a4, -1708          #; a4  = 0x8000372c, (wrb) a4  <-- 0x80003080
      0x80000738 auipc   a4, 0x3                #; (wrb) a4  <-- 0x80003738
      0x8000073c addi    a4, a4, -1712          #; a4  = 0x80003738, (wrb) a4  <-- 0x80003088
      0x80000734 fld     ft3, 0(a4)             #; ft3  <~~ Doub[0x80003080]
                                                #; (f:lsu) ft3  <-- 6.0
      0x80000744 auipc   a4, 0x3                #; (wrb) a4  <-- 0x80003744
      0x80000748 addi    a4, a4, -1716          #; a4  = 0x80003744, (wrb) a4  <-- 0x80003090
      0x80000740 fld     ft4, 0(a4)             #; ft4  <~~ Doub[0x80003088]
      0x8000074c fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x80003090]
                                                #; (f:lsu) ft4  <-- 7.0
      0x80000750 auipc   a4, 0x3                #; (wrb) a4  <-- 0x80003750
      0x80000754 addi    a4, a4, -1720          #; a4  = 0x80003750, (wrb) a4  <-- 0x80003098
                                                #; (f:lsu) ft5  <-- 8.0
      0x80000758 fld     ft6, 0(a4)             #; ft6  <~~ Doub[0x80003098]
; init_data (test_aliasing.c:6)
;  in main (test_aliasing.c:31)
      0x8000075c fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
                                                #; (f:fpu) ft0  <-- 6.0
                                                #; (f:lsu) ft6  <-- 9.0
      0x80000760 fsgnj.d ft0, ft4, ft4          #; ft4  = 7.0, ft4  = 7.0
      0x80000764 fsgnj.d ft0, ft5, ft5          #; ft5  = 8.0, ft5  = 8.0, (f:fpu) ft0  <-- 7.0
      0x80000768 fsgnj.d ft0, ft6, ft6          #; ft6  = 9.0, ft6  = 9.0, (f:fpu) ft0  <-- 8.0
; init_data (test_aliasing.c:0)
;  in main (test_aliasing.c:31)
      0x8000076c csrrci  a4, ssr, 1             #; (f:fpu) ft0  <-- 9.0
; sumup (test_aliasing.c:12)
;  in main (test_aliasing.c:34)
      0x80000770 li      a4, 64                 #; (wrb) a4  <-- 64
      0x80000774 scfgw   a3, a4                 #; a3  = 9, a4  = 64
      0x80000778 li      a3, 192                #; (wrb) a3  <-- 192
      0x8000077c scfgw   a2, a3                 #; a2  = 8, a3  = 192
      0x80000780 li      a2, 32                 #; (wrb) a2  <-- 32
      0x80000784 scfgw   zero, a2               #; a2  = 32
      0x80000788 scfgwi  a0, 768                #; a0  = 0x00100000
      0x8000078c csrrsi  a2, ssr, 1             #; 
      0x80000790 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
      0x80000794 fsgnj.d ft4, ft0, ft0          #; ft0  = 1.0, ft0  = 1.0, (f:fpu) ft3  <-- 0.0
      0x80000798 fsgnj.d ft5, ft0, ft0          #; ft0  = 2.0, ft0  = 2.0, (f:fpu) ft4  <-- 1.0
      0x8000079c fsgnj.d ft6, ft0, ft0          #; ft0  = 3.0, ft0  = 3.0, (f:fpu) ft5  <-- 2.0
                                                #; (f:fpu) ft6  <-- 3.0
      0x800007a0 fsgnj.d ft7, ft0, ft0          #; ft0  = 4.0, ft0  = 4.0
      0x800007a4 fsgnj.d fa0, ft0, ft0          #; ft0  = 5.0, ft0  = 5.0, (f:fpu) ft7  <-- 4.0
      0x800007a8 fsgnj.d fa1, ft0, ft0          #; ft0  = 6.0, ft0  = 6.0, (f:fpu) fa0  <-- 5.0
      0x800007ac fsgnj.d fa2, ft0, ft0          #; ft0  = 7.0, ft0  = 7.0, (f:fpu) fa1  <-- 6.0
                                                #; (f:fpu) fa2  <-- 7.0
; sumup (test_aliasing.c:0)
;  in main (test_aliasing.c:34)
      0x800007b0 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800037b0
      0x800007b4 addi    a2, a2, -1808          #; a2  = 0x800037b0, (wrb) a2  <-- 0x800030a0
      0x800007b8 fld     fa3, 0(a2)             #; fa3  <~~ Doub[0x800030a0]
; sumup (test_aliasing.c:12)
;  in main (test_aliasing.c:34)
      0x800007bc fsgnj.d fa4, ft0, ft0          #; ft0  = 8.0, ft0  = 8.0
                                                #; (f:fpu) fa4  <-- 8.0
                                                #; (f:lsu) fa3  <-- -45.0
      0x800007c0 fsgnj.d fa5, ft0, ft0          #; ft0  = 9.0, ft0  = 9.0
; sumup (test_aliasing.c:0)
;  in main (test_aliasing.c:34)
      0x800007c4 csrrci  a2, ssr, 1             #; (f:fpu) fa5  <-- 9.0
; sumup (test_aliasing.c:12)
;  in main (test_aliasing.c:34)
      0x800007c8 fadd.d  ft3, ft3, fa3          #; ft3  = 0.0, fa3  = -45.0
                                                #; (f:fpu) ft3  <-- -45.0
      0x800007cc fadd.d  ft3, ft3, ft4          #; ft3  = -45.0, ft4  = 1.0
                                                #; (f:fpu) ft3  <-- -44.0
      0x800007d0 fadd.d  ft3, ft3, ft5          #; ft3  = -44.0, ft5  = 2.0
                                                #; (f:fpu) ft3  <-- -42.0
      0x800007d4 fadd.d  ft3, ft3, ft6          #; ft3  = -42.0, ft6  = 3.0
                                                #; (f:fpu) ft3  <-- -39.0
      0x800007d8 fadd.d  ft3, ft3, ft7          #; ft3  = -39.0, ft7  = 4.0
                                                #; (f:fpu) ft3  <-- -35.0
      0x800007dc fadd.d  ft3, ft3, fa0          #; ft3  = -35.0, fa0  = 5.0
                                                #; (f:fpu) ft3  <-- -30.0
      0x800007e0 fadd.d  ft3, ft3, fa1          #; ft3  = -30.0, fa1  = 6.0
                                                #; (f:fpu) ft3  <-- -24.0
      0x800007e4 fadd.d  ft3, ft3, fa2          #; ft3  = -24.0, fa2  = 7.0
      0x800007f0 li      a6, 1                  #; (wrb) a6  <-- 1
      0x800007f4 li      a7, 1                  #; (wrb) a7  <-- 1
                                                #; (f:fpu) ft3  <-- -17.0
      0x800007f8 j       pc + 0x84              #; goto 0x8000087c
      0x800007e8 fadd.d  ft3, ft3, fa4          #; ft3  = -17.0, fa4  = 8.0
                                                #; (f:fpu) ft3  <-- -9.0
      0x800007ec fadd.d  ft3, ft3, fa5          #; ft3  = -9.0, fa5  = 9.0
                                                #; (f:fpu) ft3  <-- 0.0
; main (test_aliasing.c:37)
      0x8000087c addi    a4, a0, 8              #; a0  = 0x00100000, (wrb) a4  <-- 0x00100008
; copy (test_aliasing.c:17)
;  in main (test_aliasing.c:37)
      0x80000880 addi    a5, a0, 64             #; a0  = 0x00100000, (wrb) a5  <-- 0x00100040
      0x80000884 sltu    a2, a5, a0             #; a5  = 0x00100040, a0  = 0x00100000, (wrb) a2  <-- 0
      0x80000888 add     a1, t0, a2             #; t0  = 0, a2  = 0, (wrb) a1  <-- 0
      0x8000088c addi    a3, a0, 72             #; a0  = 0x00100000, (wrb) a3  <-- 0x00100048
      0x80000890 sltu    a2, a3, a4             #; a3  = 0x00100048, a4  = 0x00100008, (wrb) a2  <-- 0
      0x80000894 beqz    a1, pc + 20            #; a1  = 0, taken, goto 0x800008a8
; copy (test_aliasing.c:0)
;  in main (test_aliasing.c:37)
      0x800008a8 sltu    a5, a5, a4             #; a5  = 0x00100040, a4  = 0x00100008, (wrb) a5  <-- 0
; copy (test_aliasing.c:17)
;  in main (test_aliasing.c:37)
      0x800008ac beq     a2, t0, pc - 12        #; a2  = 0, t0  = 0, taken, goto 0x800008a0
; copy (test_aliasing.c:0)
;  in main (test_aliasing.c:37)
      0x800008a0 sltu    a1, a3, a0             #; a3  = 0x00100048, a0  = 0x00100000, (wrb) a1  <-- 0
      0x800008a4 j       pc + 0x10              #; goto 0x800008b4
; copy (test_aliasing.c:17)
;  in main (test_aliasing.c:37)
      0x800008b4 or      a1, a5, a1             #; a5  = 0, a1  = 0, (wrb) a1  <-- 0
      0x800008b8 lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
      0x800008bc addi    a2, a2, -63            #; a2  = 0x00120000, (wrb) a2  <-- 0x0011ffc1
      0x800008c0 sltu    a3, a0, a2             #; a0  = 0x00100000, a2  = 0x0011ffc1, (wrb) a3  <-- 1
      0x800008c4 and     a3, a7, a3             #; a7  = 1, a3  = 1, (wrb) a3  <-- 1
      0x800008c8 and     a1, a3, a1             #; a3  = 1, a1  = 0, (wrb) a1  <-- 0
      0x800008cc srli    a3, a4, 20             #; a4  = 0x00100008, (wrb) a3  <-- 1
      0x800008d0 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
      0x800008d4 sltu    a2, a4, a2             #; a4  = 0x00100008, a2  = 0x0011ffc1, (wrb) a2  <-- 1
      0x800008d8 and     a2, a3, a2             #; a3  = 1, a2  = 1, (wrb) a2  <-- 1
      0x800008dc and     a1, a2, a1             #; a2  = 1, a1  = 0, (wrb) a1  <-- 0
      0x800008e0 beqz    a1, pc + 200           #; a1  = 0, taken, goto 0x800009a8
; copy (test_aliasing.c:18)
;  in main (test_aliasing.c:37)
      0x800009a8 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x00100000]
                                                #; (f:lsu) ft4  <-- 0.0
      0x800009ac fsd     ft4, 8(a0)             #; 0.0 ~~> Doub[0x00100008]
      0x800009b0 fsd     ft4, 16(a0)            #; 0.0 ~~> Doub[0x00100010]
      0x800009b4 fsd     ft4, 24(a0)            #; 0.0 ~~> Doub[0x00100018]
      0x800009b8 fsd     ft4, 32(a0)            #; 0.0 ~~> Doub[0x00100020]
      0x800009bc fsd     ft4, 40(a0)            #; 0.0 ~~> Doub[0x00100028]
      0x800009c0 fsd     ft4, 48(a0)            #; 0.0 ~~> Doub[0x00100030]
      0x800009c4 fsd     ft4, 56(a0)            #; 0.0 ~~> Doub[0x00100038]
      0x800009c8 fsd     ft4, 64(a0)            #; 0.0 ~~> Doub[0x00100040]
      0x800009cc fsd     ft4, 72(a0)            #; 0.0 ~~> Doub[0x00100048]
      0x800009d0 beqz    a6, pc - 120           #; a6  = 1, not taken
; main (test_aliasing.c:0)
      0x800009d4 li      a1, 8                  #; (wrb) a1  <-- 8
      0x800009d8 li      a2, 9                  #; (wrb) a2  <-- 9
; sumup (test_aliasing.c:12)
;  in main (test_aliasing.c:38)
      0x800009dc li      a3, 64                 #; (wrb) a3  <-- 64
      0x800009e0 li      a4, 192                #; (wrb) a4  <-- 192
      0x800009e4 scfgw   a2, a3                 #; a2  = 9, a3  = 64
      0x800009e8 scfgw   a1, a4                 #; a1  = 8, a4  = 192
      0x800009ec li      a1, 32                 #; (wrb) a1  <-- 32
      0x800009f0 scfgw   zero, a1               #; a1  = 32
      0x800009f4 scfgwi  a0, 768                #; a0  = 0x00100000
                                                #; (acc) tp  <-- 0x22000253
      0x800009f8 csrrsi  a0, ssr, 1             #; 
      0x800009fc fsgnj.d ft4, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft4  <-- 0.0
      0x80000a00 fadd.d  ft4, ft0, ft4          #; ft0  = 0.0, ft4  = 0.0
                                                #; (f:fpu) ft4  <-- 0.0
      0x80000a04 fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft4  <-- 0.0
      0x80000a08 fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft4  <-- 0.0
      0x80000a0c fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft4  <-- 0.0
      0x80000a10 fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft4  <-- 0.0
      0x80000a14 fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft4  <-- 0.0
      0x80000a18 fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft4  <-- 0.0
      0x80000a1c fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft4  <-- 0.0
      0x80000a20 fadd.d  ft4, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
; sumup (test_aliasing.c:0)
;  in main (test_aliasing.c:38)
      0x80000a24 csrrci  a0, ssr, 1             #; 
; absd (test_aliasing.c:22)
;  in main (test_aliasing.c:41)
      0x80000a28 fsgnjx.d ft3, ft3, ft3         #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft4  <-- 0.0
      0x80000a2c fsgnjx.d ft4, ft4, ft4         #; ft4  = 0.0, ft4  = 0.0, (f:fpu) ft3  <-- 0.0
; main (test_aliasing.c:43)
      0x80000a38 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
                                                #; (f:fpu) ft4  <-- 0.0
; main (test_aliasing.c:41)
      0x80000a30 fadd.d  fs0, ft4, ft3          #; ft4  = 0.0, ft3  = 0.0
                                                #; (lsu) a2  <-- 0
; main (test_aliasing.c:43)
      0x80000a3c lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
                                                #; (f:fpu) fs0  <-- 0.0
      0x80000a34 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
                                                #; (lsu) a3  <-- 0
      0x80000a40 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a40
      0x80000a44 addi    a0, a0, 869            #; a0  = 0x80002a40, (wrb) a0  <-- 0x80002da5
      0x80000a48 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a48
      0x80000a4c jalr    ra, ra, 40             #; ra  = 0x80000a48, (wrb) ra  <-- 0x80000a50, goto 0x80000a70
; printf_ (printf.c:863)
      0x80000a70 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x80000a74 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000a50 ~~> Word[0x0011ff1c]
      0x80000a78 mv      t0, a0                 #; a0  = 0x80002da5, (wrb) t0  <-- 0x80002da5
      0x80000a7c sw      a7, 44(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff3c]
      0x80000a80 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff38]
      0x80000a84 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff34]
      0x80000a88 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 192 ~~> Word[0x0011ff30]
      0x80000a8c sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
      0x80000a90 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
      0x80000a94 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 32 ~~> Word[0x0011ff24]
      0x80000a98 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
; printf_ (printf.c:865)
      0x80000a9c sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
; printf_ (printf.c:867)
      0x80000aa0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001aa0
      0x80000aa4 addi    a0, a0, -988           #; a0  = 0x80001aa0, (wrb) a0  <-- 0x800016c4
      0x80000aa8 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
      0x80000aac li      a2, -1                 #; (wrb) a2  <-- -1
      0x80000ab0 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
      0x80000ab4 mv      a3, t0                 #; t0  = 0x80002da5, (wrb) a3  <-- 0x80002da5
      0x80000ab8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000ab8
      0x80000abc jalr    ra, ra, 20             #; ra  = 0x80000ab8, (wrb) ra  <-- 0x80000ac0, goto 0x80000acc
; _vsnprintf.llvm.17592004524093383706 (printf.c:578)
      0x80000acc addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
      0x80000ad0 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000ac0 ~~> Word[0x0011ff0c]
      0x80000ad4 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
      0x80000ad8 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
      0x80000adc sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
      0x80000ae0 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
      0x80000ae4 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
      0x80000ae8 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
      0x80000aec sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
      0x80000af0 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
      0x80000af4 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
      0x80000af8 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
      0x80000afc sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
      0x80000b00 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
      0x80000b04 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
      0x80000b08 mv      s0, a3                 #; a3  = 0x80002da5, (wrb) s0  <-- 0x80002da5
      0x80000b0c mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x80000b10 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
; _vsnprintf.llvm.17592004524093383706 (printf.c:582)
      0x80000b14 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000b18 mv      s2, a0                 #; a0  = 0x800016c4, (wrb) s2  <-- 0x800016c4
      0x80000b1c j       pc + 0xc               #; goto 0x80000b28
      0x80000b28 li      s8, 0                  #; (wrb) s8  <-- 0
      0x80000b2c li      s6, 37                 #; (wrb) s6  <-- 37
      0x80000b30 li      s11, 16                #; (wrb) s11 <-- 16
      0x80000b34 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000b38 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000b3c addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000b40 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
      0x80000b44 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000b48 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000b4c sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000b50 addi    s10, s0, 2             #; s0  = 0x80002da5, (wrb) s10 <-- 0x80002da7
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000b54 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000b58 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000b5c lbu     a0, 0(s0)              #; s0  = 0x80002da5, a0  <~~ Byte[0x80002da5]
                                                #; (lsu) a0  <-- 101
      0x80000b60 beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x80000b64 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000b68 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000b6c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000b70 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000b74 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b78 jalr    s2                     #; s2  = 0x800016c4, (wrb) ra  <-- 0x80000b7c, goto 0x800016c4
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x800016c4 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
      0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
      0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 0
      0x800016e4 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 1 ~~> Word[0x8000315c]
      0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 0, (wrb) a4  <-- 0x8000315c
      0x800016f0 sb      a0, 72(a4)             #; a4  = 0x8000315c, 101 ~~> Byte[0x800031a4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 1
      0x800016f8 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x800016fc snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x80001700 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x80001704 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000176c ret                            #; ra  = 0x80000b7c, goto 0x80000b7c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000b7c addi    s0, s0, 1              #; s0  = 0x80002da5, (wrb) s0  <-- 0x80002da6
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000b80 addi    s10, s10, 1            #; s10 = 0x80002da7, (wrb) s10 <-- 0x80002da8
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000b84 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000b88 lbu     a0, 0(s0)              #; s0  = 0x80002da6, a0  <~~ Byte[0x80002da6]
                                                #; (lsu) a0  <-- 114
      0x80000b8c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b64
      0x80000b64 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000b68 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000b6c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000b70 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000b74 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b78 jalr    s2                     #; s2  = 0x800016c4, (wrb) ra  <-- 0x80000b7c, goto 0x800016c4
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x800016c4 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
      0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
      0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 1
      0x800016e4 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 2 ~~> Word[0x8000315c]
      0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 1, (wrb) a4  <-- 0x8000315d
      0x800016f0 sb      a0, 72(a4)             #; a4  = 0x8000315d, 114 ~~> Byte[0x800031a5]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 2
      0x800016f8 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x800016fc snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x80001700 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001704 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000176c ret                            #; ra  = 0x80000b7c, goto 0x80000b7c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000b7c addi    s0, s0, 1              #; s0  = 0x80002da6, (wrb) s0  <-- 0x80002da7
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000b80 addi    s10, s10, 1            #; s10 = 0x80002da8, (wrb) s10 <-- 0x80002da9
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000b84 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000b88 lbu     a0, 0(s0)              #; s0  = 0x80002da7, a0  <~~ Byte[0x80002da7]
                                                #; (lsu) a0  <-- 114
      0x80000b8c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b64
      0x80000b64 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000b68 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000b6c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000b70 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000b74 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b78 jalr    s2                     #; s2  = 0x800016c4, (wrb) ra  <-- 0x80000b7c, goto 0x800016c4
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x800016c4 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
      0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
      0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 2
      0x800016e4 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 3 ~~> Word[0x8000315c]
      0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 2, (wrb) a4  <-- 0x8000315e
      0x800016f0 sb      a0, 72(a4)             #; a4  = 0x8000315e, 114 ~~> Byte[0x800031a6]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 3
      0x800016f8 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x800016fc snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x80001700 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001704 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000176c ret                            #; ra  = 0x80000b7c, goto 0x80000b7c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000b7c addi    s0, s0, 1              #; s0  = 0x80002da7, (wrb) s0  <-- 0x80002da8
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000b80 addi    s10, s10, 1            #; s10 = 0x80002da9, (wrb) s10 <-- 0x80002daa
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000b84 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000b88 lbu     a0, 0(s0)              #; s0  = 0x80002da8, a0  <~~ Byte[0x80002da8]
                                                #; (lsu) a0  <-- 111
      0x80000b8c bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000b64
      0x80000b64 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000b68 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000b6c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000b70 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000b74 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b78 jalr    s2                     #; s2  = 0x800016c4, (wrb) ra  <-- 0x80000b7c, goto 0x800016c4
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x800016c4 beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
      0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
      0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 3
      0x800016e4 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 4 ~~> Word[0x8000315c]
      0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 3, (wrb) a4  <-- 0x8000315f
      0x800016f0 sb      a0, 72(a4)             #; a4  = 0x8000315f, 111 ~~> Byte[0x800031a7]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 4
      0x800016f8 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x800016fc snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x80001700 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x80001704 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000176c ret                            #; ra  = 0x80000b7c, goto 0x80000b7c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000b7c addi    s0, s0, 1              #; s0  = 0x80002da8, (wrb) s0  <-- 0x80002da9
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000b80 addi    s10, s10, 1            #; s10 = 0x80002daa, (wrb) s10 <-- 0x80002dab
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000b84 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000b88 lbu     a0, 0(s0)              #; s0  = 0x80002da9, a0  <~~ Byte[0x80002da9]
                                                #; (lsu) a0  <-- 114
      0x80000b8c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000b64
      0x80000b64 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000b68 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000b6c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000b70 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000b74 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b78 jalr    s2                     #; s2  = 0x800016c4, (wrb) ra  <-- 0x80000b7c, goto 0x800016c4
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x800016c4 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
      0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
      0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 4
      0x800016e4 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 5 ~~> Word[0x8000315c]
      0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 4, (wrb) a4  <-- 0x80003160
      0x800016f0 sb      a0, 72(a4)             #; a4  = 0x80003160, 114 ~~> Byte[0x800031a8]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 5
      0x800016f8 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x800016fc snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x80001700 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001704 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000176c ret                            #; ra  = 0x80000b7c, goto 0x80000b7c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000b7c addi    s0, s0, 1              #; s0  = 0x80002da9, (wrb) s0  <-- 0x80002daa
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000b80 addi    s10, s10, 1            #; s10 = 0x80002dab, (wrb) s10 <-- 0x80002dac
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000b84 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000b88 lbu     a0, 0(s0)              #; s0  = 0x80002daa, a0  <~~ Byte[0x80002daa]
                                                #; (lsu) a0  <-- 32
      0x80000b8c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000b64
      0x80000b64 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000b68 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000b6c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000b70 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000b74 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b78 jalr    s2                     #; s2  = 0x800016c4, (wrb) ra  <-- 0x80000b7c, goto 0x800016c4
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x800016c4 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
      0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
      0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 5
      0x800016e4 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 6 ~~> Word[0x8000315c]
      0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 5, (wrb) a4  <-- 0x80003161
      0x800016f0 sb      a0, 72(a4)             #; a4  = 0x80003161, 32 ~~> Byte[0x800031a9]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 6
      0x800016f8 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x800016fc snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x80001700 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001704 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000176c ret                            #; ra  = 0x80000b7c, goto 0x80000b7c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000b7c addi    s0, s0, 1              #; s0  = 0x80002daa, (wrb) s0  <-- 0x80002dab
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000b80 addi    s10, s10, 1            #; s10 = 0x80002dac, (wrb) s10 <-- 0x80002dad
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000b84 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000b88 lbu     a0, 0(s0)              #; s0  = 0x80002dab, a0  <~~ Byte[0x80002dab]
                                                #; (lsu) a0  <-- 61
      0x80000b8c bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000b64
      0x80000b64 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000b68 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000b6c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000b70 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000b74 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b78 jalr    s2                     #; s2  = 0x800016c4, (wrb) ra  <-- 0x80000b7c, goto 0x800016c4
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x800016c4 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
      0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
      0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 6
      0x800016e4 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 7 ~~> Word[0x8000315c]
      0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 6, (wrb) a4  <-- 0x80003162
      0x800016f0 sb      a0, 72(a4)             #; a4  = 0x80003162, 61 ~~> Byte[0x800031aa]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 7
      0x800016f8 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x800016fc snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x80001700 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x80001704 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000176c ret                            #; ra  = 0x80000b7c, goto 0x80000b7c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000b7c addi    s0, s0, 1              #; s0  = 0x80002dab, (wrb) s0  <-- 0x80002dac
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000b80 addi    s10, s10, 1            #; s10 = 0x80002dad, (wrb) s10 <-- 0x80002dae
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000b84 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000b88 lbu     a0, 0(s0)              #; s0  = 0x80002dac, a0  <~~ Byte[0x80002dac]
                                                #; (lsu) a0  <-- 32
      0x80000b8c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000b64
      0x80000b64 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000b68 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000b6c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000b70 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000b74 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b78 jalr    s2                     #; s2  = 0x800016c4, (wrb) ra  <-- 0x80000b7c, goto 0x800016c4
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x800016c4 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
      0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
      0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 7
      0x800016e4 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 8 ~~> Word[0x8000315c]
      0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 7, (wrb) a4  <-- 0x80003163
      0x800016f0 sb      a0, 72(a4)             #; a4  = 0x80003163, 32 ~~> Byte[0x800031ab]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 8
      0x800016f8 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x800016fc snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x80001700 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001704 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000176c ret                            #; ra  = 0x80000b7c, goto 0x80000b7c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000b7c addi    s0, s0, 1              #; s0  = 0x80002dac, (wrb) s0  <-- 0x80002dad
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000b80 addi    s10, s10, 1            #; s10 = 0x80002dae, (wrb) s10 <-- 0x80002daf
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000b84 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000b88 lbu     a0, 0(s0)              #; s0  = 0x80002dad, a0  <~~ Byte[0x80002dad]
                                                #; (lsu) a0  <-- 37
      0x80000b8c bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000b64
      0x80000b64 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000b94
; _vsnprintf.llvm.17592004524093383706 (printf.c:602)
      0x80000b94 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000b98 j       pc + 0x10              #; goto 0x80000ba8
; _vsnprintf.llvm.17592004524093383706 (printf.c:604)
      0x80000ba8 lbu     a0, -1(s10)            #; s10 = 0x80002daf, a0  <~~ Byte[0x80002dae]
                                                #; (lsu) a0  <-- 102
      0x80000bac addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000bb0 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000be8
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.17592004524093383706 (printf.c:616)
      0x80000be8 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000bec andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.17592004524093383706 (printf.c:616)
      0x80000bf0 addi    a1, s10, -1            #; s10 = 0x80002daf, (wrb) a1  <-- 0x80002dae
      0x80000bf4 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000bf8 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000c74
; _vsnprintf.llvm.17592004524093383706 (printf.c:619)
      0x80000c74 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000c78 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000cc8
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000cc8 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000ccc mv      s10, a1                #; a1  = 0x80002dae, (wrb) s10 <-- 0x80002dae
; _vsnprintf.llvm.17592004524093383706 (printf.c:633)
      0x80000cd0 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000cd4 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000cd8 j       pc + 0xc               #; goto 0x80000ce4
; _vsnprintf.llvm.17592004524093383706 (printf.c:647)
      0x80000ce4 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000ce8 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000cec slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000cf0 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000cf4 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000cf8 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000d5c
; _vsnprintf.llvm.17592004524093383706 (printf.c:683)
      0x80000d5c addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000d60 li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000d64 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000d68 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000d6c auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002d6c
      0x80000d70 addi    a2, a2, 184            #; a2  = 0x80002d6c, (wrb) a2  <-- 0x80002e24
      0x80000d74 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002e24, (wrb) a1  <-- 0x80002f28
      0x80000d78 lw      a2, 0(a1)              #; a1  = 0x80002f28, a2  <~~ Word[0x80002f28]
      0x80000d7c li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000d80 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000db4
      0x80000d84 jr      a2                     #; a2  = 0x80000db4, goto 0x80000db4
; _vsnprintf.llvm.17592004524093383706 (printf.c:760)
      0x80000db4 li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000db8 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000dc0
; _vsnprintf.llvm.17592004524093383706 (printf.c:761)
      0x80000dc0 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
      0x80000dc4 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
      0x80000dcc addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
      0x80000dc8 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
                                                #; (f:lsu) fa0  <-- 0.0
      0x80000dd0 mv      a0, s2                 #; s2  = 0x800016c4, (wrb) a0  <-- 0x800016c4
      0x80000dd4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000dd8 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000ddc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000de0 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000de4 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000de8 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000dec auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001dec
      0x80000df0 jalr    ra, ra, -1656          #; ra  = 0x80001dec, (wrb) ra  <-- 0x80000df4, goto 0x80001774
; _ftoa (printf.c:340)
      0x80001774 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
      0x80001778 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000df4 ~~> Word[0x0011fe9c]
      0x8000177c sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
      0x80001780 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
      0x80001784 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x800016c4 ~~> Word[0x0011fe90]
      0x80001788 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
      0x8000178c sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
      0x80001790 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
      0x80001794 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
      0x80001798 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
      0x8000179c sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
      0x800017a0 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
      0x800017a4 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002dae ~~> Word[0x0011fe70]
      0x800017a8 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe68]
      0x800017ac fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
      0x800017b4 auipc   s1, 0x2                #; (wrb) s1  <-- 0x800037b4
      0x800017b8 addi    s1, s1, -1796          #; s1  = 0x800037b4, (wrb) s1  <-- 0x800030b0
      0x800017b0 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
      0x800017bc fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x800030b0]
; _ftoa (printf.c:351)
      0x800017c4 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
; _ftoa (printf.c:0)
      0x800017c8 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x800017cc mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x800017c0 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
      0x800017d0 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x800017d4 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
      0x800017d8 mv      s7, a0                 #; a0  = 0x800016c4, (wrb) s7  <-- 0x800016c4
; _ftoa (printf.c:351)
      0x800017dc bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x800018cc
; _ftoa (printf.c:0)
      0x800018cc fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x800018d0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800028d0
      0x800018d4 addi    a0, a0, 2024           #; a0  = 0x800028d0, (wrb) a0  <-- 0x800030b8
      0x800018d8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030b8]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x800018dc fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x800018e0 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800018fc
; _ftoa (printf.c:0)
      0x800018fc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800028fc
      0x80001900 addi    a0, a0, 1988           #; a0  = 0x800028fc, (wrb) a0  <-- 0x800030c0
      0x80001908 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002908
      0x8000190c addi    a0, a0, 1984           #; a0  = 0x80002908, (wrb) a0  <-- 0x800030c8
      0x80001904 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030c0]
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
      0x80001910 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800030c8]
; _ftoa (printf.c:358)
      0x80001914 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
                                                #; (acc) a0  <-- 0x00b57533
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
      0x80001918 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
                                                #; (acc) a0  <-- 0x00b57533
      0x8000191c and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80001920 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001a1c
; _ftoa (printf.c:374)
      0x80001a1c andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x80001a20 li      s8, 6                  #; (wrb) s8  <-- 6
      0x80001a24 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001a2c
; _ftoa (printf.c:0)
      0x80001a2c li      a0, 10                 #; (wrb) a0  <-- 10
; _ftoa (printf.c:378)
      0x80001a34 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001a6c
; _ftoa (printf.c:0)
      0x80001a30 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs2  <-- 0.0
      0x80001a6c li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x80001a70 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x80001a74 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002a74
      0x80001a78 addi    a1, a1, 1284           #; a1  = 0x80002a74, (wrb) a1  <-- 0x80002f78
      0x80001a7c add     a0, a0, a1             #; a0  = 48, a1  = 0x80002f78, (wrb) a0  <-- 0x80002fa8
      0x80001a80 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002fa8]
; _ftoa (printf.c:383)
      0x80001a84 fcvt.w.d s1, fs2               #; fs2  = 0.0
; _ftoa (printf.c:384)
      0x80001a88 fcvt.d.w ft0, s1               #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80001a8c fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
                                                #; (f:lsu) ft1  <-- 1000000.0000000
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:0)
      0x80001a94 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002a94
      0x80001a98 addi    a0, a0, 1596           #; a0  = 0x80002a94, (wrb) a0  <-- 0x800030d0
      0x80001a90 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
      0x80001a9c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030d0], (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:385)
      0x80001aa0 fcvt.wu.d a0, ft2              #; ft2  = 0.0
                                                #; (f:lsu) ft0  <-- 0.5
                                                #; (acc) gp  <-- 0xd21501d3
; _ftoa (printf.c:386)
      0x80001aa4 fcvt.d.wu ft3, a0              #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80001aa8 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:388)
      0x80001aac fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x80001ab0 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001ad0
; _ftoa (printf.c:396)
      0x80001ad0 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
                                                #; (acc) s4  <-- 0x00059a63
      0x80001ad4 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001ae8
; _ftoa (printf.c:403)
      0x80001aec beqz    s8, pc + 216           #; s8  = 6, not taken
      0x80001ae8 fcvt.d.w fs1, zero             #; ac1  = 0
                                                #; (f:fpu) fs1  <-- 0.0
; _ftoa (printf.c:0)
      0x80001af0 li      a2, 0                  #; (wrb) a2  <-- 0
      0x80001af4 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:414)
      0x80001af8 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
      0x80001afc li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001b00 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x80001b04 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80001b08 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80001b0c li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001b10 li      a7, 9                  #; (wrb) a7  <-- 9
      0x80001b14 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80001b18 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x80001b1c mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
      0x80001b20 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001b24 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001b28 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001b2c ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x80001b30 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
      0x80001b34 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
; _ftoa (printf.c:417)
      0x80001b38 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80001b3c bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x80001b40 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x80001b44 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80001b48 li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001b4c sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x80001b50 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x80001b54 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x80001b58 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x80001b5c bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x80001b60 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
; _ftoa (printf.c:422)
      0x80001b64 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
      0x80001b68 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x80001b6c add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x80001b70 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x80001b74 li      a1, 31                 #; (wrb) a1  <-- 31
      0x80001b78 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x80001b7c add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
      0x80001b80 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x80001b84 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001b8c
      0x80001b8c addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x80001b90 li      a1, 48                 #; (wrb) a1  <-- 48
      0x80001b94 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000b94
      0x80001b98 jalr    ra, ra, -1596          #; ra  = 0x80000b94, (wrb) ra  <-- 0x80001b9c, goto 0x80000558
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
      0x800005ec ret                            #; ra  = 0x80001b9c, goto 0x80001b9c
; _ftoa (printf.c:0)
      0x80001b9c li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x80001ba0 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x80001ba4 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80001ba8 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x80001bac snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80001bb0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001bb4 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001bb8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ba0
      0x80001ba0 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x80001ba4 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80001ba8 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x80001bac snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80001bb0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001bb4 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001bb8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ba0
      0x80001ba0 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x80001ba4 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80001ba8 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x80001bac snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80001bb0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001bb4 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001bb8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ba0
      0x80001ba0 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x80001ba4 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80001ba8 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x80001bac snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80001bb0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001bb4 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001bb8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ba0
      0x80001ba0 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x80001ba4 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80001ba8 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x80001bac snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80001bb0 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001bb4 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001bb8 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001bbc add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x80001bc0 j       pc + 0x28              #; goto 0x80001be8
      0x80001be8 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001bec addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001bf0 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:427)
      0x80001bf4 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
      0x80001bf8 li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001bfc sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
      0x80001c00 j       pc + 0x8               #; goto 0x80001c08
; _ftoa (printf.c:0)
      0x80001c08 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001c0c mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001c10 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001c14 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001c1c lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001c18 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
      0x80001c20 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001c24 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001c28 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
      0x80001c2c li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001c30 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001c34 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001c38 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001c3c srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001c40 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001c44 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001c48 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001c4c addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80001c50 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001c54 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
; _ftoa (printf.c:434)
      0x80001c58 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001c5c sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
; _ftoa (printf.c:0)
      0x80001c60 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001c64 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001c68 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80001c6c j       pc + 0x8               #; goto 0x80001c74
; _ftoa (printf.c:440)
      0x80001c74 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001c78 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001c7c bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001ce8
; _ftoa (printf.c:0)
      0x80001ce8 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001cec bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80001cf0 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001d08
; _ftoa (printf.c:453)
      0x80001d08 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001d0c bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001d10 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001d14 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001d40
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001d40 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001d44 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80001d48 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001d4c or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001d50 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001d54 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001d58 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001d84
; _ftoa (printf.c:0)
      0x80001d84 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001d88 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x80001d8c addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d90 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
      0x80001d94 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
      0x80001d98 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x80001d9c addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
                                                #; (lsu) a0  <-- 48
      0x80001da0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001da4 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80001da8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001dac jalr    s7                     #; s7  = 0x800016c4, (wrb) ra  <-- 0x80001db0, goto 0x800016c4
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x800016c4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
      0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
      0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 8
      0x800016e4 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 9 ~~> Word[0x8000315c]
      0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 8, (wrb) a4  <-- 0x80003164
      0x800016f0 sb      a0, 72(a4)             #; a4  = 0x80003164, 48 ~~> Byte[0x800031ac]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 9
      0x800016f8 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x800016fc snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x80001700 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001704 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000176c ret                            #; ra  = 0x80001db0, goto 0x80001db0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001db0 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x80001db4 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001db8 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001d90
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d90 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
      0x80001d94 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
      0x80001d98 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001d9c addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80001da0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001da4 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001da8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001dac jalr    s7                     #; s7  = 0x800016c4, (wrb) ra  <-- 0x80001db0, goto 0x800016c4
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x800016c4 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
      0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
      0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 9
      0x800016e4 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 10 ~~> Word[0x8000315c]
      0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 9, (wrb) a4  <-- 0x80003165
      0x800016f0 sb      a0, 72(a4)             #; a4  = 0x80003165, 46 ~~> Byte[0x800031ad]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 10
      0x800016f8 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x800016fc snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x80001700 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x80001704 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000176c ret                            #; ra  = 0x80001db0, goto 0x80001db0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001db0 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001db4 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001db8 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001d90
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d90 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
      0x80001d94 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
      0x80001d98 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001d9c addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001da0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001da4 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001da8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001dac jalr    s7                     #; s7  = 0x800016c4, (wrb) ra  <-- 0x80001db0, goto 0x800016c4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x800016c4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
      0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
      0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 10
      0x800016e4 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 11 ~~> Word[0x8000315c]
      0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 10, (wrb) a4  <-- 0x80003166
      0x800016f0 sb      a0, 72(a4)             #; a4  = 0x80003166, 48 ~~> Byte[0x800031ae]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 11
      0x800016f8 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x800016fc snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x80001700 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001704 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000176c ret                            #; ra  = 0x80001db0, goto 0x80001db0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001db0 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001db4 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001db8 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001d90
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d90 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
      0x80001d94 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
      0x80001d98 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001d9c addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001da0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001da4 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001da8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001dac jalr    s7                     #; s7  = 0x800016c4, (wrb) ra  <-- 0x80001db0, goto 0x800016c4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x800016c4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
      0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
      0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 11
      0x800016e4 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 12 ~~> Word[0x8000315c]
      0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 11, (wrb) a4  <-- 0x80003167
      0x800016f0 sb      a0, 72(a4)             #; a4  = 0x80003167, 48 ~~> Byte[0x800031af]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 12
      0x800016f8 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x800016fc snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x80001700 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001704 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000176c ret                            #; ra  = 0x80001db0, goto 0x80001db0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001db0 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001db4 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001db8 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001d90
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d90 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
      0x80001d94 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
      0x80001d98 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001d9c addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001da0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001da4 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001da8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001dac jalr    s7                     #; s7  = 0x800016c4, (wrb) ra  <-- 0x80001db0, goto 0x800016c4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x800016c4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
      0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
      0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 12
      0x800016e4 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 13 ~~> Word[0x8000315c]
      0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 12, (wrb) a4  <-- 0x80003168
      0x800016f0 sb      a0, 72(a4)             #; a4  = 0x80003168, 48 ~~> Byte[0x800031b0]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 13
      0x800016f8 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x800016fc snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x80001700 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001704 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000176c ret                            #; ra  = 0x80001db0, goto 0x80001db0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001db0 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001db4 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001db8 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001d90
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d90 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
      0x80001d94 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
      0x80001d98 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001d9c addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001da0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001da4 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001da8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001dac jalr    s7                     #; s7  = 0x800016c4, (wrb) ra  <-- 0x80001db0, goto 0x800016c4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x800016c4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
      0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
      0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 13
      0x800016e4 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 14 ~~> Word[0x8000315c]
      0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 13, (wrb) a4  <-- 0x80003169
      0x800016f0 sb      a0, 72(a4)             #; a4  = 0x80003169, 48 ~~> Byte[0x800031b1]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 14
      0x800016f8 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x800016fc snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x80001700 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001704 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000176c ret                            #; ra  = 0x80001db0, goto 0x80001db0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001db0 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001db4 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001db8 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001d90
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d90 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
      0x80001d94 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
      0x80001d98 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001d9c addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001da0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001da4 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001da8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001dac jalr    s7                     #; s7  = 0x800016c4, (wrb) ra  <-- 0x80001db0, goto 0x800016c4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x800016c4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
      0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
      0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 14
      0x800016e4 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 15 ~~> Word[0x8000315c]
      0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 14, (wrb) a4  <-- 0x8000316a
      0x800016f0 sb      a0, 72(a4)             #; a4  = 0x8000316a, 48 ~~> Byte[0x800031b2]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 15
      0x800016f8 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x800016fc snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x80001700 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001704 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000176c ret                            #; ra  = 0x80001db0, goto 0x80001db0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001db0 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001db4 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001db8 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001d90
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001d90 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
      0x80001d94 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
      0x80001d98 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001d9c addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001da0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001da4 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001da8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001dac jalr    s7                     #; s7  = 0x800016c4, (wrb) ra  <-- 0x80001db0, goto 0x800016c4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x800016c4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
      0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
      0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 15
      0x800016e4 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 16 ~~> Word[0x8000315c]
      0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 15, (wrb) a4  <-- 0x8000316b
      0x800016f0 sb      a0, 72(a4)             #; a4  = 0x8000316b, 48 ~~> Byte[0x800031b3]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 16
      0x800016f8 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x800016fc snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x80001700 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001704 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001708 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x8000170c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000176c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000176c ret                            #; ra  = 0x80001db0, goto 0x80001db0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001db0 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001db4 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001db8 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001dbc j       pc + 0x8               #; goto 0x80001dc4
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001dc4 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x80001dc8 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80001dcc xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001dd0 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001dd4 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001dd8 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001e08
; _ftoa (printf.c:0)
      0x80001e08 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x80001e0c mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80001e10 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
      0x80001e1c lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
      0x80001e14 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
      0x80001e18 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) s10 <-- 0x80002dae
      0x80001e20 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 8
      0x80001e24 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 16
      0x80001e28 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x80001e2c lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x80001e30 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- -1
      0x80001e34 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0x0011ff17
      0x80001e38 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0x0011ff30
      0x80001e3c lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x800016c4
      0x80001e40 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 8
      0x80001e44 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0
      0x80001e48 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
      0x80001e4c addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80000df4
      0x80001e50 ret                            #; ra  = 0x80000df4, goto 0x80000df4
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000df4 j       pc + 0x7c0             #; goto 0x800015b4
      0x800015b4 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x800015b8 li      s6, 37                 #; (wrb) s6  <-- 37
      0x800015bc li      s7, 46                 #; (wrb) s7  <-- 46
      0x800015c0 addi    s0, s10, 1             #; s10 = 0x80002dae, (wrb) s0  <-- 0x80002daf
      0x800015c4 j       pc - 0xa74             #; goto 0x80000b50
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000b50 addi    s10, s0, 2             #; s0  = 0x80002daf, (wrb) s10 <-- 0x80002db1
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000b54 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x80000b58 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000b5c lbu     a0, 0(s0)              #; s0  = 0x80002daf, a0  <~~ Byte[0x80002daf]
                                                #; (lsu) a0  <-- 10
      0x80000b60 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000b64 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000b68 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x80000b6c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000b70 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x80000b74 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b78 jalr    s2                     #; s2  = 0x800016c4, (wrb) ra  <-- 0x80000b7c, goto 0x800016c4
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x800016c4 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016c8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016cc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016d0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800016d4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800036d4
      0x800016d8 addi    a3, a3, -1400          #; a3  = 0x800036d4, (wrb) a3  <-- 0x8000315c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800016dc add     a1, a2, a3             #; a2  = 0, a3  = 0x8000315c, (wrb) a1  <-- 0x8000315c
      0x800016e0 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 16
      0x800016e4 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x800016e8 sw      a5, 0(a1)              #; a1  = 0x8000315c, 17 ~~> Word[0x8000315c]
      0x800016ec add     a4, a1, a4             #; a1  = 0x8000315c, a4  = 16, (wrb) a4  <-- 0x8000316c
      0x800016f0 sb      a0, 72(a4)             #; a4  = 0x8000316c, 10 ~~> Byte[0x800031b4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x800016f4 lw      a4, 0(a1)              #; a1  = 0x8000315c, a4  <~~ Word[0x8000315c]
                                                #; (lsu) a4  <-- 17
      0x800016f8 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x800016fc snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x80001700 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x80001704 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x80001708 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x8000170c bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001710 add     a0, a3, a2             #; a3  = 0x8000315c, a2  = 0, (wrb) a0  <-- 0x8000315c
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001714 addi    a2, a0, 72             #; a0  = 0x8000315c, (wrb) a2  <-- 0x800031a4
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001718 sw      zero, 12(a0)           #; a0  = 0x8000315c, 0 ~~> Word[0x80003168]
      0x8000171c li      a3, 64                 #; (wrb) a3  <-- 64
      0x80001720 sw      a3, 8(a0)              #; a0  = 0x8000315c, 64 ~~> Word[0x80003164]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001724 sw      zero, 20(a0)           #; a0  = 0x8000315c, 0 ~~> Word[0x80003170]
      0x80001728 li      a3, 1                  #; (wrb) a3  <-- 1
      0x8000172c sw      a3, 16(a0)             #; a0  = 0x8000315c, 1 ~~> Word[0x8000316c]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001730 sw      zero, 28(a0)           #; a0  = 0x8000315c, 0 ~~> Word[0x80003178]
      0x80001734 sw      a2, 24(a0)             #; a0  = 0x8000315c, 0x800031a4 ~~> Word[0x80003174]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001738 lw      a2, 0(a1)              #; a1  = 0x8000315c, a2  <~~ Word[0x8000315c]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000173c addi    a3, a0, 8              #; a0  = 0x8000315c, (wrb) a3  <-- 0x80003164
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001740 sw      zero, 36(a0)           #; a0  = 0x8000315c, 0 ~~> Word[0x80003180]
                                                #; (lsu) a2  <-- 17
      0x80001744 sw      a2, 32(a0)             #; a0  = 0x8000315c, 17 ~~> Word[0x8000317c]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001748 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003748
      0x8000174c addi    a0, a0, -1864          #; a0  = 0x80003748, (wrb) a0  <-- 0x80003000
      0x80001750 sw      a3, 0(a0)              #; a0  = 0x80003000, 0x80003164 ~~> Word[0x80003000]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001754 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003754
      0x80001758 addi    a0, a0, -1812          #; a0  = 0x80003754, (wrb) a0  <-- 0x80003040
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x8000175c lw      a2, 0(a0)              #; a0  = 0x80003040, a2  <~~ Word[0x80003040]
                                                #; (lsu) a2  <-- 0
      0x80001760 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000175c
      0x8000175c lw      a2, 0(a0)              #; a0  = 0x80003040, a2  <~~ Word[0x80003040]
                                                #; (lsu) a2  <-- 0
      0x80001760 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000175c
      0x8000175c lw      a2, 0(a0)              #; a0  = 0x80003040, a2  <~~ Word[0x80003040]
                                                #; (lsu) a2  <-- 0
      0x80001760 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000175c
      0x8000175c lw      a2, 0(a0)              #; a0  = 0x80003040, a2  <~~ Word[0x80003040]
                                                #; (lsu) a2  <-- 0
      0x80001760 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000175c
      0x8000175c lw      a2, 0(a0)              #; a0  = 0x80003040, a2  <~~ Word[0x80003040]
                                                #; (lsu) a2  <-- 0
      0x80001760 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000175c
      0x8000175c lw      a2, 0(a0)              #; a0  = 0x80003040, a2  <~~ Word[0x80003040]
                                                #; (lsu) a2  <-- 0
      0x80001760 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000175c
      0x8000175c lw      a2, 0(a0)              #; a0  = 0x80003040, a2  <~~ Word[0x80003040]
                                                #; (lsu) a2  <-- 0
      0x80001760 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000175c
      0x8000175c lw      a2, 0(a0)              #; a0  = 0x80003040, a2  <~~ Word[0x80003040]
                                                #; (lsu) a2  <-- 1
      0x80001760 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001764 sw      zero, 0(a0)            #; a0  = 0x80003040, 0 ~~> Word[0x80003040]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001768 sw      zero, 0(a1)            #; a1  = 0x8000315c, 0 ~~> Word[0x8000315c]
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000176c ret                            #; ra  = 0x80000b7c, goto 0x80000b7c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000b7c addi    s0, s0, 1              #; s0  = 0x80002daf, (wrb) s0  <-- 0x80002db0
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000b80 addi    s10, s10, 1            #; s10 = 0x80002db1, (wrb) s10 <-- 0x80002db2
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000b84 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000b88 lbu     a0, 0(s0)              #; s0  = 0x80002db0, a0  <~~ Byte[0x80002db0]
                                                #; (lsu) a0  <-- 0
      0x80000b8c bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000b90 j       pc + 0xad8             #; goto 0x80001668
; _vsnprintf.llvm.17592004524093383706 (printf.c:853)
      0x80001668 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x8000166c bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001674
      0x80001674 li      a0, 0                  #; (wrb) a0  <-- 0
      0x80001678 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x8000167c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001680 jalr    s2                     #; s2  = 0x800016c4, (wrb) ra  <-- 0x80001684, goto 0x800016c4
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x800016c4 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x8000176c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x8000176c ret                            #; ra  = 0x80001684, goto 0x80001684
; _vsnprintf.llvm.17592004524093383706 (printf.c:856)
      0x80001684 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x80001688 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
                                                #; (lsu) s11 <-- 0
      0x8000168c lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
                                                #; (lsu) s10 <-- 0
      0x80001690 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
                                                #; (lsu) s9  <-- 0
      0x80001694 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
                                                #; (lsu) s8  <-- 0
      0x80001698 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
                                                #; (lsu) s7  <-- 0
      0x8000169c lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
                                                #; (lsu) s6  <-- 0
      0x800016a0 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
                                                #; (lsu) s5  <-- 0
      0x800016a4 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
                                                #; (lsu) s4  <-- 0
      0x800016a8 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
                                                #; (lsu) s3  <-- 0
      0x800016ac lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
                                                #; (lsu) s2  <-- 0
      0x800016b0 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
                                                #; (lsu) s1  <-- 0
      0x800016b4 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
                                                #; (lsu) s0  <-- 0
      0x800016b8 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
      0x800016bc addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
                                                #; (lsu) ra  <-- 0x80000ac0
      0x800016c0 ret                            #; ra  = 0x80000ac0, goto 0x80000ac0
; printf_ (printf.c:869)
      0x80000ac0 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
      0x80000ac4 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x80000a50
      0x80000ac8 ret                            #; ra  = 0x80000a50, goto 0x80000a50
; main (test_aliasing.c:0)
      0x80000a50 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a50
      0x80000a54 addi    a0, a0, 1624           #; a0  = 0x80002a50, (wrb) a0  <-- 0x800030a8
      0x80000a58 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800030a8]
; main (test_aliasing.c:46)
      0x80000a64 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
      0x80000a68 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
                                                #; (f:lsu) ft3  <-- 0.0001
; main (test_aliasing.c:45)
      0x80000a5c flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0
                                                #; (lsu) ra  <-- 0x80002b20
; main (test_aliasing.c:46)
      0x80000a6c ret                            #; ra  = 0x80002b20, goto 0x80002b20
      0x80000a60 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
                                                #; (f:lsu) fs0  <-- 0.0
; ?? (start.S:184)
      0x80002b20 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x80002b24 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b24
      0x80002b28 jalr    ra, ra, 524            #; ra  = 0x80002b24, (wrb) ra  <-- 0x80002b2c, goto 0x80002d30
; ?? (start_snitch.S:33)
      0x80002d30 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002d34 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002b2c ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002d38 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d38
      0x80002d3c jalr    ra, ra, -1260          #; ra  = 0x80002d38, (wrb) ra  <-- 0x80002d40, goto 0x8000284c
; _snrt_barrier_reg_ptr (team.c:80)
      0x8000284c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002850 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002854 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002858 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000285c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002860 ret                            #; ra  = 0x80002d40, goto 0x80002d40
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002d40 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002d44 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002d48 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002d4c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002b2c
; ?? (start_snitch.S:40)
      0x80002d50 ret                            #; ra  = 0x80002b2c, goto 0x80002b2c
; ?? (start.S:195)
      0x80002b2c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x80002b30 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b30
      0x80002b34 jalr    ra, ra, 556            #; ra  = 0x80002b30, (wrb) ra  <-- 0x80002b38, goto 0x80002d5c
; ?? (start_snitch.S:15)
      0x80002d5c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80002d60 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80002d64 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002b38 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80002d68 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d68
      0x80002d6c jalr    ra, ra, -1340          #; ra  = 0x80002d68, (wrb) ra  <-- 0x80002d70, goto 0x8000282c
; snrt_global_core_idx (team.c:32)
      0x8000282c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002830 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002834 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002838 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000283c lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x80002840 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x80002844 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x80002848 ret                            #; ra  = 0x80002d70, goto 0x80002d70
; ?? (start_snitch.S:20)
      0x80002d70 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x80002d74 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80002d78 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x80002d7c bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x80002b38
; ?? (start_snitch.S:28)
      0x80002d80 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x80002d84 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x80002d88 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002d88
      0x80002d8c addi    t1, t1, 632            #; t1  = 0x80002d88, (wrb) t1  <-- 0x80003000
; ?? (start_snitch.S:31)
      0x80002d90 sw      t0, 0(t1)              #; t1  = 0x80003000, 1 ~~> Word[0x80003000]
; ?? (start_snitch.S:32)
      0x80002d94 ret                            #; ra  = 0x80002b38, goto 0x80002b38
; ?? (start.S:198)
      0x80002b38 wfi                            #; 
                        tion 0 @ (12, 5660):
                          141
                          142
                           14
                           23
                      12.0142
                       0.2284
                       0.0960
                          1.0
                          1.0
                            0
                       1.3830
                       6.9130
                       0.0243
                       0.0166
                       0.6861
                         5649
                       0.2526
