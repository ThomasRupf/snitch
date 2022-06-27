; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x80002c40
      0x00001014 jalr    t0                     #; t0  = 0x80002c40, (wrb) ra  <-- 4120, goto 0x80002c40
; ?? (start.S:20)
      0x80002c40 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003c40
; ?? (start.S:21)
      0x80002c44 addi    gp, gp, -248           #; gp  = 0x80003c40, (wrb) gp  <-- 0x80003b48
; ?? (start.S:28)
      0x80002c48 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c48
      0x80002c4c jalr    ra, ra, 964            #; ra  = 0x80002c48, (wrb) ra  <-- 0x80002c50, goto 0x8000300c
; ?? (start_snitch.S:16)
      0x8000300c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80003010 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80003014 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80003018 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x8000301c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80003020 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80003024 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80003028 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x8000302c mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80003030 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80003034 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80003038 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x8000303c ret                            #; ra  = 0x80002c50, goto 0x80002c50
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x80002c50 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x80002c54 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x80002c58 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c58
      0x80002c5c jalr    ra, ra, 1036           #; ra  = 0x80002c58, (wrb) ra  <-- 0x80002c60, goto 0x80003064
; ?? (start_snitch.S:48)
      0x80003064 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80003068 ret                            #; ra  = 0x80002c60, goto 0x80002c60
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x80002c60 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x80002c64 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x80002c68 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x80002c6c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x80002c70 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x80002c74 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002c74
      0x80002c78 addi    t0, t0, 1940           #; t0  = 0x80002c74, (wrb) t0  <-- 0x80003408
; ?? (start.S:49)
      0x80002c7c auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002c7c
      0x80002c80 addi    t1, t1, 1936           #; t1  = 0x80002c7c, (wrb) t1  <-- 0x8000340c
; ?? (start.S:50)
      0x80002c84 bge     t0, t1, pc + 16        #; t0  = 0x80003408, t1  = 0x8000340c, not taken
; ?? (start.S:51)
      0x80002c88 sw      zero, 0(t0)            #; t0  = 0x80003408, 0 ~~> Word[0x80003408]
; ?? (start.S:52)
      0x80002c8c addi    t0, t0, 4              #; t0  = 0x80003408, (wrb) t0  <-- 0x8000340c
; ?? (start.S:53)
      0x80002c90 blt     t0, t1, pc - 8         #; t0  = 0x8000340c, t1  = 0x8000340c, not taken
; ?? (start.S:58)
      0x80002c94 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x80002c98 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x80002c9c beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x80002ca0 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x80002ca4 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x80002ca8 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x80002cac fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x80002cb0 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x80002cb4 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x80002cb8 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x80002cbc fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x80002cc0 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x80002cc4 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x80002cc8 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x80002ccc fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x80002cd0 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x80002cd4 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x80002cd8 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x80002cdc fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x80002ce0 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x80002ce4 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x80002ce8 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x80002cec fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x80002cf0 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x80002cf4 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x80002cf8 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x80002cfc fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x80002d00 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x80002d04 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x80002d08 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x80002d0c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x80002d10 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x80002d14 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x80002d18 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x80002d1c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x80002d20 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x80002d24 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x80002d28 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002d28
      0x80002d2c lw      t0, 900(t0)            #; t0  = 0x80002d28, t0  <~~ Word[0x800030ac]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x80002d30 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x80002d34 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x80002d38 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002d38
      0x80002d3c lw      t2, 880(t2)            #; t2  = 0x80002d38, t2  <~~ Word[0x800030a8]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x80002d40 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x80002d44 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x80002d48 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x80002d4c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x80002d50 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x80002d54 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x80002d58 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x80002d5c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x80002d60 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002d60
      0x80002d64 addi    t0, t0, 1512           #; t0  = 0x80002d60, (wrb) t0  <-- 0x80003348
; ?? (start.S:125)
      0x80002d68 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002d68
      0x80002d6c addi    t1, t1, 1504           #; t1  = 0x80002d68, (wrb) t1  <-- 0x80003348
; ?? (start.S:126)
      0x80002d70 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002d70
      0x80002d74 addi    t2, t2, 1496           #; t2  = 0x80002d70, (wrb) t2  <-- 0x80003348
; ?? (start.S:127)
      0x80002d78 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002d78
      0x80002d7c addi    t3, t3, 1504           #; t3  = 0x80002d78, (wrb) t3  <-- 0x80003358
; ?? (start.S:128)
      0x80002d80 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003348, (wrb) sp  <-- 0x801232b8
; ?? (start.S:129)
      0x80002d84 sub     sp, sp, t1             #; sp  = 0x801232b8, t1  = 0x80003348, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x80002d88 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003348, (wrb) sp  <-- 0x801232b8
; ?? (start.S:131)
      0x80002d8c sub     sp, sp, t3             #; sp  = 0x801232b8, t3  = 0x80003358, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x80002d90 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x80002d94 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x80002d98 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x80002d9c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x80002da0 bge     t0, t1, pc + 24        #; t0  = 0x80003348, t1  = 0x80003348, taken, goto 0x80002db8
; ?? (start.S:147)
      0x80002db8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002db8
      0x80002dbc addi    t0, t0, 1424           #; t0  = 0x80002db8, (wrb) t0  <-- 0x80003348
; ?? (start.S:148)
      0x80002dc0 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002dc0
      0x80002dc4 addi    t1, t1, 1432           #; t1  = 0x80002dc0, (wrb) t1  <-- 0x80003358
; ?? (start.S:149)
      0x80002dc8 bge     t0, t1, pc + 20        #; t0  = 0x80003348, t1  = 0x80003358, not taken
; ?? (start.S:150)
      0x80002dcc sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x80002dd0 addi    t0, t0, 4              #; t0  = 0x80003348, (wrb) t0  <-- 0x8000334c
; ?? (start.S:152)
      0x80002dd4 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x80002dd8 blt     t0, t2, pc - 12        #; t0  = 0x8000334c, t2  = 0x80003348, not taken
; ?? (start.S:158)
      0x80002ddc addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x80002de0 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x80002de4 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x80002de8 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x80002dec sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x80002df0 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x80002df4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002df4
      0x80002df8 jalr    ra, ra, -1056          #; ra  = 0x80002df4, (wrb) ra  <-- 0x80002dfc, goto 0x800029d4
; _snrt_init_team (start.c:49)
      0x800029d4 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x800029d8 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x800029dc lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x800029e0 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x800029e4 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x800029e8 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x800029ec lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x800029f0 mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x800029f4 mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x800029f8 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x800029fc csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x80002a00 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x80002a04 divu    a0, a0, t0             #; a0  = 0, t0  = 8
                                                #; (acc) a6  <-- 0x00a7a823
; _snrt_init_team (start.c:54)
      0x80002a08 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x80002a0c sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x80002a10 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x80002a14 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x80002a18 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x80002a1c lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x80002a20 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x80002a24 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x80002a28 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x80002a2c lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x80002a30 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x80002a34 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x80002a38 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x80002a3c sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x80002a40 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x80002a44 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x80002a48 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x80002a4c lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x80002a50 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x80002a54 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x80002a58 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x80002a5c sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x80002a60 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x80002a64 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x80002a68 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x80002a6c add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x80002a70 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x80002a74 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x80002a78 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x80002a7c add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x80002a80 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x80002a84 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x80002a88 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x80002a8c sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x80002a90 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x80002a94 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002a98 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002a9c sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x80002aa0 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002aa4 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x80002aa8 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x80002aac sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x80002ab0 remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x80002ab4 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x80002ab8 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
                                                #; (acc) tp  <-- 0x00a5a223
      0x80002abc sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x80002ac0 li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x80002ac4 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x80002ac8 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003ac8
      0x80002acc addi    a1, a1, -1724          #; a1  = 0x80003ac8, (wrb) a1  <-- 0x8000340c
      0x80002ad0 add     a0, a0, a1             #; a0  = 0, a1  = 0x8000340c, (wrb) a0  <-- 0x8000340c
      0x80002ad4 sw      zero, 0(a0)            #; a0  = 0x8000340c, 0 ~~> Word[0x8000340c]
; _snrt_init_team (start.c:86)
      0x80002ad8 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x80002adc sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x80002ae0 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x80002ae4 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x80002ae8 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x80002aec sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x80002af0 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x80002af4 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x80002af8 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x80002afc sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x80002b00 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x80002b04 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x80002b08 lw      a0, 0(a1)              #; a1  = 0x8000340c, a0  <~~ Word[0x8000340c]
                                                #; (lsu) a0  <-- 0
      0x80002b0c addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x80002b10 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x80002b14 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x80002b18 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x80002b1c sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x80002b20 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002b24 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002b28 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x80002b2c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002b30 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002b34 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x80002b38 ret                            #; ra  = 0x80002dfc, goto 0x80002dfc
; ?? (start.S:165)
      0x80002dfc lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x80002e00 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x80002e04 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x80002e08 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x80002e0c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x80002e10 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x80002e14 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002e14
      0x80002e18 addi    t0, t0, 60             #; t0  = 0x80002e14, (wrb) t0  <-- 0x80002e50
; ?? (start.S:175)
      0x80002e1c csrw    mtvec, t0              #; t0  = 0x80002e50, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x80002e20 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e20
      0x80002e24 jalr    ra, ra, 544            #; ra  = 0x80002e20, (wrb) ra  <-- 0x80002e28, goto 0x80003040
; ?? (start_snitch.S:33)
      0x80003040 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80003044 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002e28 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80003048 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003048
      0x8000304c jalr    ra, ra, -1260          #; ra  = 0x80003048, (wrb) ra  <-- 0x80003050, goto 0x80002b5c
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002b5c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002b60 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002b64 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002b68 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002b6c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002b70 ret                            #; ra  = 0x80003050, goto 0x80003050
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80003050 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80003054 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80003058 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x8000305c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002e28
; ?? (start_snitch.S:40)
      0x80003060 ret                            #; ra  = 0x80002e28, goto 0x80002e28
; ?? (start.S:183)
      0x80002e28 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000e28
      0x80002e2c jalr    ra, ra, -2036          #; ra  = 0x80000e28, (wrb) ra  <-- 0x80002e30, goto 0x80000634
; main (test_access.c:12)
      0x80000634 addi    sp, sp, -752           #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011fc70
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (test_access.c:13)
      0x80000638 sw      ra, 748(sp)            #; sp  = 0x0011fc70, 0x80002e30 ~~> Word[0x0011ff5c]
      0x8000063c fsd     fs0, 736(sp)           #; 0.0 ~~> Doub[0x0011ff50]
      0x80000640 fsd     fs1, 728(sp)           #; 0.0 ~~> Doub[0x0011ff48]
      0x80000644 fsd     fs2, 720(sp)           #; 0.0 ~~> Doub[0x0011ff40]
      0x80000648 fsd     fs3, 712(sp)           #; 0.0 ~~> Doub[0x0011ff38]
      0x8000064c fsd     fs4, 704(sp)           #; 0.0 ~~> Doub[0x0011ff30]
      0x80000650 fsd     fs5, 696(sp)           #; 0.0 ~~> Doub[0x0011ff28]
      0x80000654 fsd     fs6, 688(sp)           #; 0.0 ~~> Doub[0x0011ff20]
      0x80000658 fsd     fs7, 680(sp)           #; 0.0 ~~> Doub[0x0011ff18]
      0x8000065c fsd     fs8, 672(sp)           #; 0.0 ~~> Doub[0x0011ff10]
      0x80000660 fsd     fs9, 664(sp)           #; 0.0 ~~> Doub[0x0011ff08]
      0x8000066c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000664 fsd     fs10, 656(sp)          #; 0.0 ~~> Doub[0x0011ff00]
      0x80000668 fsd     fs11, 648(sp)          #; 0.0 ~~> Doub[0x0011fef8]
      0x80000670 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000674 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
; main (test_access.c:0)
      0x80000678 li      a0, 0                  #; (wrb) a0  <-- 0
                                                #; (lsu) a1  <-- 0
; main (test_access.c:13)
      0x8000067c bnez    a1, pc + 1736          #; a1  = 0, not taken
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (test_access.c:18)
      0x80000680 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000684 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000688 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000068c lw      a1, 0(a0)              #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff70]
                                                #; (lsu) a1  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in main (test_access.c:18)
      0x80000690 lw      a0, 88(a1)             #; a1  = 0x0011ff70, a0  <~~ Word[0x0011ffc8]
                                                #; (lsu) a0  <-- 0x00100000
      0x80000694 lw      a3, 80(a1)             #; a1  = 0x0011ff70, a3  <~~ Word[0x0011ffc0]
                                                #; (lsu) a3  <-- 0x00100000
      0x80000698 lw      a4, 84(a1)             #; a1  = 0x0011ff70, a4  <~~ Word[0x0011ffc4]
      0x8000069c addi    a2, a0, 864            #; a0  = 0x00100000, (wrb) a2  <-- 0x00100360
                                                #; (lsu) a4  <-- 0x0001df30
      0x800006a0 add     a3, a4, a3             #; a4  = 0x0001df30, a3  = 0x00100000, (wrb) a3  <-- 0x0011df30
      0x800006a4 bgeu    a3, a2, pc + 12        #; a3  = 0x0011df30, a2  = 0x00100360, taken, goto 0x800006b0
; snrt_l1alloc (alloc.c:34)
;  in main (test_access.c:18)
      0x800006b0 sw      a2, 88(a1)             #; a1  = 0x0011ff70, 0x00100360 ~~> Word[0x0011ffc8]
; main (alloc.c:0)
      0x800006b4 li      a1, 1                  #; (wrb) a1  <-- 1
      0x800006b8 li      a2, 109                #; (wrb) a2  <-- 109
      0x800006bc mv      a3, a0                 #; a0  = 0x00100000, (wrb) a3  <-- 0x00100000
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 1
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                                                #; (f:fpu) ft0  <-- 1.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100000, (wrb) a3  <-- 0x00100008
      0x800006c4 fsd     ft0, 0(a3)             #; 1.0 ~~> Doub[0x00100000]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 2, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 2
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                                                #; (f:fpu) ft0  <-- 2.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100008, (wrb) a3  <-- 0x00100010
      0x800006c4 fsd     ft0, 0(a3)             #; 2.0 ~~> Doub[0x00100008]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 3, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 3
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                                                #; (f:fpu) ft0  <-- 3.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100010, (wrb) a3  <-- 0x00100018
      0x800006c4 fsd     ft0, 0(a3)             #; 3.0 ~~> Doub[0x00100010]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 4, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 4
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                                                #; (f:fpu) ft0  <-- 4.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100018, (wrb) a3  <-- 0x00100020
      0x800006c4 fsd     ft0, 0(a3)             #; 4.0 ~~> Doub[0x00100018]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 5, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 5
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                                                #; (f:fpu) ft0  <-- 5.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100020, (wrb) a3  <-- 0x00100028
      0x800006c4 fsd     ft0, 0(a3)             #; 5.0 ~~> Doub[0x00100020]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 6, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 6
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                                                #; (f:fpu) ft0  <-- 6.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100028, (wrb) a3  <-- 0x00100030
      0x800006c4 fsd     ft0, 0(a3)             #; 6.0 ~~> Doub[0x00100028]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 7, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 7
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 7, (wrb) a1  <-- 8
                                                #; (f:fpu) ft0  <-- 7.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100030, (wrb) a3  <-- 0x00100038
      0x800006c4 fsd     ft0, 0(a3)             #; 7.0 ~~> Doub[0x00100030]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 8, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 8
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 8, (wrb) a1  <-- 9
                                                #; (f:fpu) ft0  <-- 8.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100038, (wrb) a3  <-- 0x00100040
      0x800006c4 fsd     ft0, 0(a3)             #; 8.0 ~~> Doub[0x00100038]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 9, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 9
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 9, (wrb) a1  <-- 10
                                                #; (f:fpu) ft0  <-- 9.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100040, (wrb) a3  <-- 0x00100048
      0x800006c4 fsd     ft0, 0(a3)             #; 9.0 ~~> Doub[0x00100040]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 10, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 10
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 10, (wrb) a1  <-- 11
                                                #; (f:fpu) ft0  <-- 10.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100048, (wrb) a3  <-- 0x00100050
      0x800006c4 fsd     ft0, 0(a3)             #; 10.0 ~~> Doub[0x00100048]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 11, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 11
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 11, (wrb) a1  <-- 12
                                                #; (f:fpu) ft0  <-- 11.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100050, (wrb) a3  <-- 0x00100058
      0x800006c4 fsd     ft0, 0(a3)             #; 11.0 ~~> Doub[0x00100050]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 12, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 12
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 12, (wrb) a1  <-- 13
                                                #; (f:fpu) ft0  <-- 12.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100058, (wrb) a3  <-- 0x00100060
      0x800006c4 fsd     ft0, 0(a3)             #; 12.0 ~~> Doub[0x00100058]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 13, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 13
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 13, (wrb) a1  <-- 14
                                                #; (f:fpu) ft0  <-- 13.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100060, (wrb) a3  <-- 0x00100068
      0x800006c4 fsd     ft0, 0(a3)             #; 13.0 ~~> Doub[0x00100060]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 14, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 14
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 14, (wrb) a1  <-- 15
                                                #; (f:fpu) ft0  <-- 14.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100068, (wrb) a3  <-- 0x00100070
      0x800006c4 fsd     ft0, 0(a3)             #; 14.0 ~~> Doub[0x00100068]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 15, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 15
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 15, (wrb) a1  <-- 16
                                                #; (f:fpu) ft0  <-- 15.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100070, (wrb) a3  <-- 0x00100078
      0x800006c4 fsd     ft0, 0(a3)             #; 15.0 ~~> Doub[0x00100070]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 16, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 16
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 16, (wrb) a1  <-- 17
                                                #; (f:fpu) ft0  <-- 16.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100078, (wrb) a3  <-- 0x00100080
      0x800006c4 fsd     ft0, 0(a3)             #; 16.0 ~~> Doub[0x00100078]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 17, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 17
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 17, (wrb) a1  <-- 18
                                                #; (f:fpu) ft0  <-- 17.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100080, (wrb) a3  <-- 0x00100088
      0x800006c4 fsd     ft0, 0(a3)             #; 17.0 ~~> Doub[0x00100080]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 18, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 18
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 18, (wrb) a1  <-- 19
                                                #; (f:fpu) ft0  <-- 18.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100088, (wrb) a3  <-- 0x00100090
      0x800006c4 fsd     ft0, 0(a3)             #; 18.0 ~~> Doub[0x00100088]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 19, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 19
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 19, (wrb) a1  <-- 20
                                                #; (f:fpu) ft0  <-- 19.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100090, (wrb) a3  <-- 0x00100098
      0x800006c4 fsd     ft0, 0(a3)             #; 19.0 ~~> Doub[0x00100090]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 20, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 20
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 20, (wrb) a1  <-- 21
                                                #; (f:fpu) ft0  <-- 20.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100098, (wrb) a3  <-- 0x001000a0
      0x800006c4 fsd     ft0, 0(a3)             #; 20.0 ~~> Doub[0x00100098]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 21, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 21
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 21, (wrb) a1  <-- 22
                                                #; (f:fpu) ft0  <-- 21.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001000a0, (wrb) a3  <-- 0x001000a8
      0x800006c4 fsd     ft0, 0(a3)             #; 21.0 ~~> Doub[0x001000a0]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 22, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 22
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 22, (wrb) a1  <-- 23
                                                #; (f:fpu) ft0  <-- 22.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001000a8, (wrb) a3  <-- 0x001000b0
      0x800006c4 fsd     ft0, 0(a3)             #; 22.0 ~~> Doub[0x001000a8]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 23, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 23
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 23, (wrb) a1  <-- 24
                                                #; (f:fpu) ft0  <-- 23.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001000b0, (wrb) a3  <-- 0x001000b8
      0x800006c4 fsd     ft0, 0(a3)             #; 23.0 ~~> Doub[0x001000b0]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 24, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 24
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 24, (wrb) a1  <-- 25
                                                #; (f:fpu) ft0  <-- 24.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001000b8, (wrb) a3  <-- 0x001000c0
      0x800006c4 fsd     ft0, 0(a3)             #; 24.0 ~~> Doub[0x001000b8]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 25, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 25
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 25, (wrb) a1  <-- 26
                                                #; (f:fpu) ft0  <-- 25.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001000c0, (wrb) a3  <-- 0x001000c8
      0x800006c4 fsd     ft0, 0(a3)             #; 25.0 ~~> Doub[0x001000c0]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 26, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 26
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 26, (wrb) a1  <-- 27
                                                #; (f:fpu) ft0  <-- 26.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001000c8, (wrb) a3  <-- 0x001000d0
      0x800006c4 fsd     ft0, 0(a3)             #; 26.0 ~~> Doub[0x001000c8]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 27, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 27
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 27, (wrb) a1  <-- 28
                                                #; (f:fpu) ft0  <-- 27.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001000d0, (wrb) a3  <-- 0x001000d8
      0x800006c4 fsd     ft0, 0(a3)             #; 27.0 ~~> Doub[0x001000d0]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 28, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 28
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 28, (wrb) a1  <-- 29
                                                #; (f:fpu) ft0  <-- 28.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001000d8, (wrb) a3  <-- 0x001000e0
      0x800006c4 fsd     ft0, 0(a3)             #; 28.0 ~~> Doub[0x001000d8]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 29, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 29
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 29, (wrb) a1  <-- 30
                                                #; (f:fpu) ft0  <-- 29.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001000e0, (wrb) a3  <-- 0x001000e8
      0x800006c4 fsd     ft0, 0(a3)             #; 29.0 ~~> Doub[0x001000e0]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 30, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 30
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 30, (wrb) a1  <-- 31
                                                #; (f:fpu) ft0  <-- 30.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001000e8, (wrb) a3  <-- 0x001000f0
      0x800006c4 fsd     ft0, 0(a3)             #; 30.0 ~~> Doub[0x001000e8]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 31, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 31
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 31, (wrb) a1  <-- 32
                                                #; (f:fpu) ft0  <-- 31.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001000f0, (wrb) a3  <-- 0x001000f8
      0x800006c4 fsd     ft0, 0(a3)             #; 31.0 ~~> Doub[0x001000f0]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 32, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 32
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 32, (wrb) a1  <-- 33
                                                #; (f:fpu) ft0  <-- 32.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001000f8, (wrb) a3  <-- 0x00100100
      0x800006c4 fsd     ft0, 0(a3)             #; 32.0 ~~> Doub[0x001000f8]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 33, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 33
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 33, (wrb) a1  <-- 34
                                                #; (f:fpu) ft0  <-- 33.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100100, (wrb) a3  <-- 0x00100108
      0x800006c4 fsd     ft0, 0(a3)             #; 33.0 ~~> Doub[0x00100100]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 34, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 34
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 34, (wrb) a1  <-- 35
                                                #; (f:fpu) ft0  <-- 34.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100108, (wrb) a3  <-- 0x00100110
      0x800006c4 fsd     ft0, 0(a3)             #; 34.0 ~~> Doub[0x00100108]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 35, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 35
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 35, (wrb) a1  <-- 36
                                                #; (f:fpu) ft0  <-- 35.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100110, (wrb) a3  <-- 0x00100118
      0x800006c4 fsd     ft0, 0(a3)             #; 35.0 ~~> Doub[0x00100110]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 36, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 36
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 36, (wrb) a1  <-- 37
                                                #; (f:fpu) ft0  <-- 36.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100118, (wrb) a3  <-- 0x00100120
      0x800006c4 fsd     ft0, 0(a3)             #; 36.0 ~~> Doub[0x00100118]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 37, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 37
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 37, (wrb) a1  <-- 38
                                                #; (f:fpu) ft0  <-- 37.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100120, (wrb) a3  <-- 0x00100128
      0x800006c4 fsd     ft0, 0(a3)             #; 37.0 ~~> Doub[0x00100120]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 38, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 38
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 38, (wrb) a1  <-- 39
                                                #; (f:fpu) ft0  <-- 38.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100128, (wrb) a3  <-- 0x00100130
      0x800006c4 fsd     ft0, 0(a3)             #; 38.0 ~~> Doub[0x00100128]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 39, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 39
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 39, (wrb) a1  <-- 40
                                                #; (f:fpu) ft0  <-- 39.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100130, (wrb) a3  <-- 0x00100138
      0x800006c4 fsd     ft0, 0(a3)             #; 39.0 ~~> Doub[0x00100130]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 40, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 40
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 40, (wrb) a1  <-- 41
                                                #; (f:fpu) ft0  <-- 40.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100138, (wrb) a3  <-- 0x00100140
      0x800006c4 fsd     ft0, 0(a3)             #; 40.0 ~~> Doub[0x00100138]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 41, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 41
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 41, (wrb) a1  <-- 42
                                                #; (f:fpu) ft0  <-- 41.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100140, (wrb) a3  <-- 0x00100148
      0x800006c4 fsd     ft0, 0(a3)             #; 41.0 ~~> Doub[0x00100140]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 42, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 42
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 42, (wrb) a1  <-- 43
                                                #; (f:fpu) ft0  <-- 42.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100148, (wrb) a3  <-- 0x00100150
      0x800006c4 fsd     ft0, 0(a3)             #; 42.0 ~~> Doub[0x00100148]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 43, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 43
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 43, (wrb) a1  <-- 44
                                                #; (f:fpu) ft0  <-- 43.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100150, (wrb) a3  <-- 0x00100158
      0x800006c4 fsd     ft0, 0(a3)             #; 43.0 ~~> Doub[0x00100150]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 44, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 44
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 44, (wrb) a1  <-- 45
                                                #; (f:fpu) ft0  <-- 44.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100158, (wrb) a3  <-- 0x00100160
      0x800006c4 fsd     ft0, 0(a3)             #; 44.0 ~~> Doub[0x00100158]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 45, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 45
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 45, (wrb) a1  <-- 46
                                                #; (f:fpu) ft0  <-- 45.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100160, (wrb) a3  <-- 0x00100168
      0x800006c4 fsd     ft0, 0(a3)             #; 45.0 ~~> Doub[0x00100160]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 46, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 46
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 46, (wrb) a1  <-- 47
                                                #; (f:fpu) ft0  <-- 46.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100168, (wrb) a3  <-- 0x00100170
      0x800006c4 fsd     ft0, 0(a3)             #; 46.0 ~~> Doub[0x00100168]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 47, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 47
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 47, (wrb) a1  <-- 48
                                                #; (f:fpu) ft0  <-- 47.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100170, (wrb) a3  <-- 0x00100178
      0x800006c4 fsd     ft0, 0(a3)             #; 47.0 ~~> Doub[0x00100170]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 48, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 48
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 48, (wrb) a1  <-- 49
                                                #; (f:fpu) ft0  <-- 48.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100178, (wrb) a3  <-- 0x00100180
      0x800006c4 fsd     ft0, 0(a3)             #; 48.0 ~~> Doub[0x00100178]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 49, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 49
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 49, (wrb) a1  <-- 50
                                                #; (f:fpu) ft0  <-- 49.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100180, (wrb) a3  <-- 0x00100188
      0x800006c4 fsd     ft0, 0(a3)             #; 49.0 ~~> Doub[0x00100180]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 50, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 50
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 50, (wrb) a1  <-- 51
                                                #; (f:fpu) ft0  <-- 50.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100188, (wrb) a3  <-- 0x00100190
      0x800006c4 fsd     ft0, 0(a3)             #; 50.0 ~~> Doub[0x00100188]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 51, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 51
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 51, (wrb) a1  <-- 52
                                                #; (f:fpu) ft0  <-- 51.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100190, (wrb) a3  <-- 0x00100198
      0x800006c4 fsd     ft0, 0(a3)             #; 51.0 ~~> Doub[0x00100190]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 52, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 52
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 52, (wrb) a1  <-- 53
                                                #; (f:fpu) ft0  <-- 52.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100198, (wrb) a3  <-- 0x001001a0
      0x800006c4 fsd     ft0, 0(a3)             #; 52.0 ~~> Doub[0x00100198]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 53, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 53
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 53, (wrb) a1  <-- 54
                                                #; (f:fpu) ft0  <-- 53.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001001a0, (wrb) a3  <-- 0x001001a8
      0x800006c4 fsd     ft0, 0(a3)             #; 53.0 ~~> Doub[0x001001a0]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 54, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 54
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 54, (wrb) a1  <-- 55
                                                #; (f:fpu) ft0  <-- 54.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001001a8, (wrb) a3  <-- 0x001001b0
      0x800006c4 fsd     ft0, 0(a3)             #; 54.0 ~~> Doub[0x001001a8]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 55, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 55
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 55, (wrb) a1  <-- 56
                                                #; (f:fpu) ft0  <-- 55.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001001b0, (wrb) a3  <-- 0x001001b8
      0x800006c4 fsd     ft0, 0(a3)             #; 55.0 ~~> Doub[0x001001b0]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 56, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 56
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 56, (wrb) a1  <-- 57
                                                #; (f:fpu) ft0  <-- 56.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001001b8, (wrb) a3  <-- 0x001001c0
      0x800006c4 fsd     ft0, 0(a3)             #; 56.0 ~~> Doub[0x001001b8]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 57, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 57
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 57, (wrb) a1  <-- 58
                                                #; (f:fpu) ft0  <-- 57.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001001c0, (wrb) a3  <-- 0x001001c8
      0x800006c4 fsd     ft0, 0(a3)             #; 57.0 ~~> Doub[0x001001c0]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 58, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 58
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 58, (wrb) a1  <-- 59
                                                #; (f:fpu) ft0  <-- 58.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001001c8, (wrb) a3  <-- 0x001001d0
      0x800006c4 fsd     ft0, 0(a3)             #; 58.0 ~~> Doub[0x001001c8]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 59, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 59
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 59, (wrb) a1  <-- 60
                                                #; (f:fpu) ft0  <-- 59.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001001d0, (wrb) a3  <-- 0x001001d8
      0x800006c4 fsd     ft0, 0(a3)             #; 59.0 ~~> Doub[0x001001d0]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 60, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 60
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 60, (wrb) a1  <-- 61
                                                #; (f:fpu) ft0  <-- 60.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001001d8, (wrb) a3  <-- 0x001001e0
      0x800006c4 fsd     ft0, 0(a3)             #; 60.0 ~~> Doub[0x001001d8]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 61, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 61
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 61, (wrb) a1  <-- 62
                                                #; (f:fpu) ft0  <-- 61.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001001e0, (wrb) a3  <-- 0x001001e8
      0x800006c4 fsd     ft0, 0(a3)             #; 61.0 ~~> Doub[0x001001e0]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 62, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 62
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 62, (wrb) a1  <-- 63
                                                #; (f:fpu) ft0  <-- 62.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001001e8, (wrb) a3  <-- 0x001001f0
      0x800006c4 fsd     ft0, 0(a3)             #; 62.0 ~~> Doub[0x001001e8]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 63, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 63
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 63, (wrb) a1  <-- 64
                                                #; (f:fpu) ft0  <-- 63.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001001f0, (wrb) a3  <-- 0x001001f8
      0x800006c4 fsd     ft0, 0(a3)             #; 63.0 ~~> Doub[0x001001f0]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 64, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 64
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 64, (wrb) a1  <-- 65
                                                #; (f:fpu) ft0  <-- 64.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001001f8, (wrb) a3  <-- 0x00100200
      0x800006c4 fsd     ft0, 0(a3)             #; 64.0 ~~> Doub[0x001001f8]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 65, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 65
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 65, (wrb) a1  <-- 66
                                                #; (f:fpu) ft0  <-- 65.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100200, (wrb) a3  <-- 0x00100208
      0x800006c4 fsd     ft0, 0(a3)             #; 65.0 ~~> Doub[0x00100200]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 66, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 66
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 66, (wrb) a1  <-- 67
                                                #; (f:fpu) ft0  <-- 66.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100208, (wrb) a3  <-- 0x00100210
      0x800006c4 fsd     ft0, 0(a3)             #; 66.0 ~~> Doub[0x00100208]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 67, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 67
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 67, (wrb) a1  <-- 68
                                                #; (f:fpu) ft0  <-- 67.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100210, (wrb) a3  <-- 0x00100218
      0x800006c4 fsd     ft0, 0(a3)             #; 67.0 ~~> Doub[0x00100210]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 68, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 68
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 68, (wrb) a1  <-- 69
                                                #; (f:fpu) ft0  <-- 68.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100218, (wrb) a3  <-- 0x00100220
      0x800006c4 fsd     ft0, 0(a3)             #; 68.0 ~~> Doub[0x00100218]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 69, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 69
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 69, (wrb) a1  <-- 70
                                                #; (f:fpu) ft0  <-- 69.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100220, (wrb) a3  <-- 0x00100228
      0x800006c4 fsd     ft0, 0(a3)             #; 69.0 ~~> Doub[0x00100220]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 70, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 70
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 70, (wrb) a1  <-- 71
                                                #; (f:fpu) ft0  <-- 70.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100228, (wrb) a3  <-- 0x00100230
      0x800006c4 fsd     ft0, 0(a3)             #; 70.0 ~~> Doub[0x00100228]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 71, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 71
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 71, (wrb) a1  <-- 72
                                                #; (f:fpu) ft0  <-- 71.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100230, (wrb) a3  <-- 0x00100238
      0x800006c4 fsd     ft0, 0(a3)             #; 71.0 ~~> Doub[0x00100230]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 72, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 72
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 72, (wrb) a1  <-- 73
                                                #; (f:fpu) ft0  <-- 72.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100238, (wrb) a3  <-- 0x00100240
      0x800006c4 fsd     ft0, 0(a3)             #; 72.0 ~~> Doub[0x00100238]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 73, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 73
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 73, (wrb) a1  <-- 74
                                                #; (f:fpu) ft0  <-- 73.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100240, (wrb) a3  <-- 0x00100248
      0x800006c4 fsd     ft0, 0(a3)             #; 73.0 ~~> Doub[0x00100240]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 74, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 74
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 74, (wrb) a1  <-- 75
                                                #; (f:fpu) ft0  <-- 74.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100248, (wrb) a3  <-- 0x00100250
      0x800006c4 fsd     ft0, 0(a3)             #; 74.0 ~~> Doub[0x00100248]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 75, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 75
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 75, (wrb) a1  <-- 76
                                                #; (f:fpu) ft0  <-- 75.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100250, (wrb) a3  <-- 0x00100258
      0x800006c4 fsd     ft0, 0(a3)             #; 75.0 ~~> Doub[0x00100250]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 76, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 76
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 76, (wrb) a1  <-- 77
                                                #; (f:fpu) ft0  <-- 76.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100258, (wrb) a3  <-- 0x00100260
      0x800006c4 fsd     ft0, 0(a3)             #; 76.0 ~~> Doub[0x00100258]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 77, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 77
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 77, (wrb) a1  <-- 78
                                                #; (f:fpu) ft0  <-- 77.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100260, (wrb) a3  <-- 0x00100268
      0x800006c4 fsd     ft0, 0(a3)             #; 77.0 ~~> Doub[0x00100260]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 78, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 78
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 78, (wrb) a1  <-- 79
                                                #; (f:fpu) ft0  <-- 78.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100268, (wrb) a3  <-- 0x00100270
      0x800006c4 fsd     ft0, 0(a3)             #; 78.0 ~~> Doub[0x00100268]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 79, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 79
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 79, (wrb) a1  <-- 80
                                                #; (f:fpu) ft0  <-- 79.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100270, (wrb) a3  <-- 0x00100278
      0x800006c4 fsd     ft0, 0(a3)             #; 79.0 ~~> Doub[0x00100270]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 80, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 80
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 80, (wrb) a1  <-- 81
                                                #; (f:fpu) ft0  <-- 80.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100278, (wrb) a3  <-- 0x00100280
      0x800006c4 fsd     ft0, 0(a3)             #; 80.0 ~~> Doub[0x00100278]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 81, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 81
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 81, (wrb) a1  <-- 82
                                                #; (f:fpu) ft0  <-- 81.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100280, (wrb) a3  <-- 0x00100288
      0x800006c4 fsd     ft0, 0(a3)             #; 81.0 ~~> Doub[0x00100280]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 82, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 82
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 82, (wrb) a1  <-- 83
                                                #; (f:fpu) ft0  <-- 82.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100288, (wrb) a3  <-- 0x00100290
      0x800006c4 fsd     ft0, 0(a3)             #; 82.0 ~~> Doub[0x00100288]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 83, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 83
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 83, (wrb) a1  <-- 84
                                                #; (f:fpu) ft0  <-- 83.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100290, (wrb) a3  <-- 0x00100298
      0x800006c4 fsd     ft0, 0(a3)             #; 83.0 ~~> Doub[0x00100290]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 84, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 84
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 84, (wrb) a1  <-- 85
                                                #; (f:fpu) ft0  <-- 84.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100298, (wrb) a3  <-- 0x001002a0
      0x800006c4 fsd     ft0, 0(a3)             #; 84.0 ~~> Doub[0x00100298]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 85, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 85
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 85, (wrb) a1  <-- 86
                                                #; (f:fpu) ft0  <-- 85.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001002a0, (wrb) a3  <-- 0x001002a8
      0x800006c4 fsd     ft0, 0(a3)             #; 85.0 ~~> Doub[0x001002a0]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 86, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 86
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 86, (wrb) a1  <-- 87
                                                #; (f:fpu) ft0  <-- 86.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001002a8, (wrb) a3  <-- 0x001002b0
      0x800006c4 fsd     ft0, 0(a3)             #; 86.0 ~~> Doub[0x001002a8]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 87, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 87
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 87, (wrb) a1  <-- 88
                                                #; (f:fpu) ft0  <-- 87.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001002b0, (wrb) a3  <-- 0x001002b8
      0x800006c4 fsd     ft0, 0(a3)             #; 87.0 ~~> Doub[0x001002b0]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 88, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 88
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 88, (wrb) a1  <-- 89
                                                #; (f:fpu) ft0  <-- 88.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001002b8, (wrb) a3  <-- 0x001002c0
      0x800006c4 fsd     ft0, 0(a3)             #; 88.0 ~~> Doub[0x001002b8]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 89, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 89
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 89, (wrb) a1  <-- 90
                                                #; (f:fpu) ft0  <-- 89.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001002c0, (wrb) a3  <-- 0x001002c8
      0x800006c4 fsd     ft0, 0(a3)             #; 89.0 ~~> Doub[0x001002c0]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 90, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 90
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 90, (wrb) a1  <-- 91
                                                #; (f:fpu) ft0  <-- 90.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001002c8, (wrb) a3  <-- 0x001002d0
      0x800006c4 fsd     ft0, 0(a3)             #; 90.0 ~~> Doub[0x001002c8]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 91, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 91
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 91, (wrb) a1  <-- 92
                                                #; (f:fpu) ft0  <-- 91.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001002d0, (wrb) a3  <-- 0x001002d8
      0x800006c4 fsd     ft0, 0(a3)             #; 91.0 ~~> Doub[0x001002d0]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 92, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 92
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 92, (wrb) a1  <-- 93
                                                #; (f:fpu) ft0  <-- 92.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001002d8, (wrb) a3  <-- 0x001002e0
      0x800006c4 fsd     ft0, 0(a3)             #; 92.0 ~~> Doub[0x001002d8]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 93, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 93
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 93, (wrb) a1  <-- 94
                                                #; (f:fpu) ft0  <-- 93.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001002e0, (wrb) a3  <-- 0x001002e8
      0x800006c4 fsd     ft0, 0(a3)             #; 93.0 ~~> Doub[0x001002e0]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 94, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 94
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 94, (wrb) a1  <-- 95
                                                #; (f:fpu) ft0  <-- 94.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001002e8, (wrb) a3  <-- 0x001002f0
      0x800006c4 fsd     ft0, 0(a3)             #; 94.0 ~~> Doub[0x001002e8]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 95, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 95
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 95, (wrb) a1  <-- 96
                                                #; (f:fpu) ft0  <-- 95.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001002f0, (wrb) a3  <-- 0x001002f8
      0x800006c4 fsd     ft0, 0(a3)             #; 95.0 ~~> Doub[0x001002f0]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 96, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 96
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 96, (wrb) a1  <-- 97
                                                #; (f:fpu) ft0  <-- 96.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x001002f8, (wrb) a3  <-- 0x00100300
      0x800006c4 fsd     ft0, 0(a3)             #; 96.0 ~~> Doub[0x001002f8]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 97, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 97
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 97, (wrb) a1  <-- 98
                                                #; (f:fpu) ft0  <-- 97.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100300, (wrb) a3  <-- 0x00100308
      0x800006c4 fsd     ft0, 0(a3)             #; 97.0 ~~> Doub[0x00100300]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 98, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 98
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 98, (wrb) a1  <-- 99
                                                #; (f:fpu) ft0  <-- 98.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100308, (wrb) a3  <-- 0x00100310
      0x800006c4 fsd     ft0, 0(a3)             #; 98.0 ~~> Doub[0x00100308]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 99, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 99
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 99, (wrb) a1  <-- 100
                                                #; (f:fpu) ft0  <-- 99.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100310, (wrb) a3  <-- 0x00100318
      0x800006c4 fsd     ft0, 0(a3)             #; 99.0 ~~> Doub[0x00100310]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 100, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 100
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 100, (wrb) a1  <-- 101
                                                #; (f:fpu) ft0  <-- 100.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100318, (wrb) a3  <-- 0x00100320
      0x800006c4 fsd     ft0, 0(a3)             #; 100.0 ~~> Doub[0x00100318]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 101, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 101
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 101, (wrb) a1  <-- 102
                                                #; (f:fpu) ft0  <-- 101.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100320, (wrb) a3  <-- 0x00100328
      0x800006c4 fsd     ft0, 0(a3)             #; 101.0 ~~> Doub[0x00100320]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 102, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 102
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 102, (wrb) a1  <-- 103
                                                #; (f:fpu) ft0  <-- 102.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100328, (wrb) a3  <-- 0x00100330
      0x800006c4 fsd     ft0, 0(a3)             #; 102.0 ~~> Doub[0x00100328]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 103, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 103
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 103, (wrb) a1  <-- 104
                                                #; (f:fpu) ft0  <-- 103.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100330, (wrb) a3  <-- 0x00100338
      0x800006c4 fsd     ft0, 0(a3)             #; 103.0 ~~> Doub[0x00100330]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 104, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 104
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 104, (wrb) a1  <-- 105
                                                #; (f:fpu) ft0  <-- 104.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100338, (wrb) a3  <-- 0x00100340
      0x800006c4 fsd     ft0, 0(a3)             #; 104.0 ~~> Doub[0x00100338]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 105, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 105
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 105, (wrb) a1  <-- 106
                                                #; (f:fpu) ft0  <-- 105.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100340, (wrb) a3  <-- 0x00100348
      0x800006c4 fsd     ft0, 0(a3)             #; 105.0 ~~> Doub[0x00100340]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 106, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 106
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 106, (wrb) a1  <-- 107
                                                #; (f:fpu) ft0  <-- 106.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100348, (wrb) a3  <-- 0x00100350
      0x800006c4 fsd     ft0, 0(a3)             #; 106.0 ~~> Doub[0x00100348]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 107, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 107
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 107, (wrb) a1  <-- 108
                                                #; (f:fpu) ft0  <-- 107.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100350, (wrb) a3  <-- 0x00100358
      0x800006c4 fsd     ft0, 0(a3)             #; 107.0 ~~> Doub[0x00100350]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 108, a2  = 109, taken, goto 0x800006c0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006c0 fcvt.d.wu ft0, a1              #; ac1  = 108
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006c8 addi    a1, a1, 1              #; a1  = 108, (wrb) a1  <-- 109
                                                #; (f:fpu) ft0  <-- 108.0
      0x800006cc addi    a3, a3, 8              #; a3  = 0x00100358, (wrb) a3  <-- 0x00100360
      0x800006c4 fsd     ft0, 0(a3)             #; 108.0 ~~> Doub[0x00100358]
      0x800006d0 bne     a1, a2, pc - 16        #; a1  = 109, a2  = 109, not taken
; main (test_access.c:26)
      0x800006d4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x00100000]
                                                #; (f:lsu) ft0  <-- 1.0
      0x800006d8 fsd     ft0, 632(sp)           #; 1.0 ~~> Doub[0x0011fee8]
      0x800006dc fld     ft0, 8(a0)             #; ft0  <~~ Doub[0x00100008]
                                                #; (f:lsu) ft0  <-- 2.0
      0x800006e0 fsd     ft0, 624(sp)           #; 2.0 ~~> Doub[0x0011fee0]
      0x800006e4 fld     ft0, 16(a0)            #; ft0  <~~ Doub[0x00100010]
                                                #; (f:lsu) ft0  <-- 3.0
      0x800006e8 fsd     ft0, 616(sp)           #; 3.0 ~~> Doub[0x0011fed8]
      0x800006ec fld     ft0, 24(a0)            #; ft0  <~~ Doub[0x00100018]
                                                #; (f:lsu) ft0  <-- 4.0
      0x800006f0 fsd     ft0, 608(sp)           #; 4.0 ~~> Doub[0x0011fed0]
      0x800006f4 fld     ft0, 32(a0)            #; ft0  <~~ Doub[0x00100020]
                                                #; (f:lsu) ft0  <-- 5.0
      0x800006f8 fsd     ft0, 600(sp)           #; 5.0 ~~> Doub[0x0011fec8]
      0x800006fc fld     ft0, 40(a0)            #; ft0  <~~ Doub[0x00100028]
                                                #; (f:lsu) ft0  <-- 6.0
      0x80000700 fsd     ft0, 592(sp)           #; 6.0 ~~> Doub[0x0011fec0]
      0x80000704 fld     ft0, 48(a0)            #; ft0  <~~ Doub[0x00100030]
                                                #; (f:lsu) ft0  <-- 7.0
      0x80000708 fsd     ft0, 584(sp)           #; 7.0 ~~> Doub[0x0011feb8]
      0x8000070c fld     ft0, 56(a0)            #; ft0  <~~ Doub[0x00100038]
                                                #; (f:lsu) ft0  <-- 8.0
      0x80000710 fsd     ft0, 576(sp)           #; 8.0 ~~> Doub[0x0011feb0]
      0x80000714 fld     ft0, 64(a0)            #; ft0  <~~ Doub[0x00100040]
                                                #; (f:lsu) ft0  <-- 9.0
      0x80000718 fsd     ft0, 568(sp)           #; 9.0 ~~> Doub[0x0011fea8]
      0x8000071c fld     ft0, 72(a0)            #; ft0  <~~ Doub[0x00100048]
                                                #; (f:lsu) ft0  <-- 10.0
      0x80000720 fsd     ft0, 560(sp)           #; 10.0 ~~> Doub[0x0011fea0]
      0x80000724 fld     ft0, 80(a0)            #; ft0  <~~ Doub[0x00100050]
                                                #; (f:lsu) ft0  <-- 11.0
      0x80000728 fsd     ft0, 552(sp)           #; 11.0 ~~> Doub[0x0011fe98]
      0x8000072c fld     ft0, 88(a0)            #; ft0  <~~ Doub[0x00100058]
                                                #; (f:lsu) ft0  <-- 12.0
      0x80000730 fsd     ft0, 544(sp)           #; 12.0 ~~> Doub[0x0011fe90]
      0x80000734 fld     ft0, 96(a0)            #; ft0  <~~ Doub[0x00100060]
                                                #; (f:lsu) ft0  <-- 13.0
      0x80000738 fsd     ft0, 536(sp)           #; 13.0 ~~> Doub[0x0011fe88]
      0x8000073c fld     ft0, 104(a0)           #; ft0  <~~ Doub[0x00100068]
                                                #; (f:lsu) ft0  <-- 14.0
      0x80000740 fsd     ft0, 528(sp)           #; 14.0 ~~> Doub[0x0011fe80]
      0x80000744 fld     ft0, 112(a0)           #; ft0  <~~ Doub[0x00100070]
                                                #; (f:lsu) ft0  <-- 15.0
      0x80000748 fsd     ft0, 520(sp)           #; 15.0 ~~> Doub[0x0011fe78]
      0x8000074c fld     ft0, 120(a0)           #; ft0  <~~ Doub[0x00100078]
                                                #; (f:lsu) ft0  <-- 16.0
      0x80000750 fsd     ft0, 512(sp)           #; 16.0 ~~> Doub[0x0011fe70]
      0x80000754 fld     ft0, 128(a0)           #; ft0  <~~ Doub[0x00100080]
                                                #; (f:lsu) ft0  <-- 17.0
      0x80000758 fsd     ft0, 504(sp)           #; 17.0 ~~> Doub[0x0011fe68]
      0x8000075c fld     ft0, 136(a0)           #; ft0  <~~ Doub[0x00100088]
                                                #; (f:lsu) ft0  <-- 18.0
      0x80000760 fsd     ft0, 496(sp)           #; 18.0 ~~> Doub[0x0011fe60]
      0x80000764 fld     ft0, 144(a0)           #; ft0  <~~ Doub[0x00100090]
                                                #; (f:lsu) ft0  <-- 19.0
      0x80000768 fsd     ft0, 488(sp)           #; 19.0 ~~> Doub[0x0011fe58]
      0x8000076c fld     ft0, 152(a0)           #; ft0  <~~ Doub[0x00100098]
                                                #; (f:lsu) ft0  <-- 20.0
      0x80000770 fsd     ft0, 480(sp)           #; 20.0 ~~> Doub[0x0011fe50]
      0x80000774 fld     ft0, 160(a0)           #; ft0  <~~ Doub[0x001000a0]
                                                #; (f:lsu) ft0  <-- 21.0
      0x80000778 fsd     ft0, 472(sp)           #; 21.0 ~~> Doub[0x0011fe48]
      0x8000077c fld     ft0, 168(a0)           #; ft0  <~~ Doub[0x001000a8]
                                                #; (f:lsu) ft0  <-- 22.0
      0x80000780 fsd     ft0, 464(sp)           #; 22.0 ~~> Doub[0x0011fe40]
      0x80000784 fld     ft0, 176(a0)           #; ft0  <~~ Doub[0x001000b0]
                                                #; (f:lsu) ft0  <-- 23.0
      0x80000788 fsd     ft0, 456(sp)           #; 23.0 ~~> Doub[0x0011fe38]
      0x8000078c fld     ft0, 184(a0)           #; ft0  <~~ Doub[0x001000b8]
                                                #; (f:lsu) ft0  <-- 24.0
      0x80000790 fsd     ft0, 448(sp)           #; 24.0 ~~> Doub[0x0011fe30]
      0x80000794 fld     ft0, 192(a0)           #; ft0  <~~ Doub[0x001000c0]
                                                #; (f:lsu) ft0  <-- 25.0
      0x80000798 fsd     ft0, 440(sp)           #; 25.0 ~~> Doub[0x0011fe28]
      0x8000079c fld     ft0, 200(a0)           #; ft0  <~~ Doub[0x001000c8]
                                                #; (f:lsu) ft0  <-- 26.0
      0x800007a0 fsd     ft0, 432(sp)           #; 26.0 ~~> Doub[0x0011fe20]
      0x800007a4 fld     ft0, 208(a0)           #; ft0  <~~ Doub[0x001000d0]
                                                #; (f:lsu) ft0  <-- 27.0
      0x800007a8 fsd     ft0, 424(sp)           #; 27.0 ~~> Doub[0x0011fe18]
      0x800007ac fld     ft0, 216(a0)           #; ft0  <~~ Doub[0x001000d8]
                                                #; (f:lsu) ft0  <-- 28.0
      0x800007b0 fsd     ft0, 416(sp)           #; 28.0 ~~> Doub[0x0011fe10]
      0x800007b4 fld     ft0, 224(a0)           #; ft0  <~~ Doub[0x001000e0]
                                                #; (f:lsu) ft0  <-- 29.0
      0x800007b8 fsd     ft0, 408(sp)           #; 29.0 ~~> Doub[0x0011fe08]
      0x800007bc fld     ft0, 232(a0)           #; ft0  <~~ Doub[0x001000e8]
                                                #; (f:lsu) ft0  <-- 30.0
      0x800007c0 fsd     ft0, 400(sp)           #; 30.0 ~~> Doub[0x0011fe00]
      0x800007c4 fld     ft0, 240(a0)           #; ft0  <~~ Doub[0x001000f0]
                                                #; (f:lsu) ft0  <-- 31.0
      0x800007c8 fsd     ft0, 392(sp)           #; 31.0 ~~> Doub[0x0011fdf8]
      0x800007cc fld     ft0, 248(a0)           #; ft0  <~~ Doub[0x001000f8]
                                                #; (f:lsu) ft0  <-- 32.0
      0x800007d0 fsd     ft0, 384(sp)           #; 32.0 ~~> Doub[0x0011fdf0]
      0x800007d4 fld     ft0, 256(a0)           #; ft0  <~~ Doub[0x00100100]
                                                #; (f:lsu) ft0  <-- 33.0
      0x800007d8 fsd     ft0, 376(sp)           #; 33.0 ~~> Doub[0x0011fde8]
      0x800007dc fld     ft0, 264(a0)           #; ft0  <~~ Doub[0x00100108]
                                                #; (f:lsu) ft0  <-- 34.0
      0x800007e0 fsd     ft0, 368(sp)           #; 34.0 ~~> Doub[0x0011fde0]
      0x800007e4 fld     ft0, 272(a0)           #; ft0  <~~ Doub[0x00100110]
                                                #; (f:lsu) ft0  <-- 35.0
      0x800007e8 fsd     ft0, 360(sp)           #; 35.0 ~~> Doub[0x0011fdd8]
      0x800007ec fld     ft0, 280(a0)           #; ft0  <~~ Doub[0x00100118]
                                                #; (f:lsu) ft0  <-- 36.0
      0x800007f0 fsd     ft0, 352(sp)           #; 36.0 ~~> Doub[0x0011fdd0]
      0x800007f4 fld     ft0, 288(a0)           #; ft0  <~~ Doub[0x00100120]
                                                #; (f:lsu) ft0  <-- 37.0
      0x800007f8 fsd     ft0, 344(sp)           #; 37.0 ~~> Doub[0x0011fdc8]
      0x800007fc fld     ft0, 296(a0)           #; ft0  <~~ Doub[0x00100128]
                                                #; (f:lsu) ft0  <-- 38.0
      0x80000800 fsd     ft0, 336(sp)           #; 38.0 ~~> Doub[0x0011fdc0]
      0x80000804 fld     ft0, 304(a0)           #; ft0  <~~ Doub[0x00100130]
                                                #; (f:lsu) ft0  <-- 39.0
      0x80000808 fsd     ft0, 328(sp)           #; 39.0 ~~> Doub[0x0011fdb8]
      0x8000080c fld     ft0, 312(a0)           #; ft0  <~~ Doub[0x00100138]
                                                #; (f:lsu) ft0  <-- 40.0
      0x80000810 fsd     ft0, 320(sp)           #; 40.0 ~~> Doub[0x0011fdb0]
      0x80000814 fld     ft0, 320(a0)           #; ft0  <~~ Doub[0x00100140]
                                                #; (f:lsu) ft0  <-- 41.0
      0x80000818 fsd     ft0, 312(sp)           #; 41.0 ~~> Doub[0x0011fda8]
      0x8000081c fld     ft0, 328(a0)           #; ft0  <~~ Doub[0x00100148]
                                                #; (f:lsu) ft0  <-- 42.0
      0x80000820 fsd     ft0, 304(sp)           #; 42.0 ~~> Doub[0x0011fda0]
      0x80000824 fld     ft0, 336(a0)           #; ft0  <~~ Doub[0x00100150]
                                                #; (f:lsu) ft0  <-- 43.0
      0x80000828 fsd     ft0, 296(sp)           #; 43.0 ~~> Doub[0x0011fd98]
      0x8000082c fld     ft0, 344(a0)           #; ft0  <~~ Doub[0x00100158]
                                                #; (f:lsu) ft0  <-- 44.0
      0x80000830 fsd     ft0, 288(sp)           #; 44.0 ~~> Doub[0x0011fd90]
      0x80000834 fld     ft0, 352(a0)           #; ft0  <~~ Doub[0x00100160]
                                                #; (f:lsu) ft0  <-- 45.0
      0x80000838 fsd     ft0, 280(sp)           #; 45.0 ~~> Doub[0x0011fd88]
      0x8000083c fld     ft0, 360(a0)           #; ft0  <~~ Doub[0x00100168]
                                                #; (f:lsu) ft0  <-- 46.0
      0x80000840 fsd     ft0, 272(sp)           #; 46.0 ~~> Doub[0x0011fd80]
      0x80000844 fld     ft0, 368(a0)           #; ft0  <~~ Doub[0x00100170]
                                                #; (f:lsu) ft0  <-- 47.0
      0x80000848 fsd     ft0, 264(sp)           #; 47.0 ~~> Doub[0x0011fd78]
      0x8000084c fld     ft0, 376(a0)           #; ft0  <~~ Doub[0x00100178]
                                                #; (f:lsu) ft0  <-- 48.0
      0x80000850 fsd     ft0, 256(sp)           #; 48.0 ~~> Doub[0x0011fd70]
      0x80000854 fld     ft0, 384(a0)           #; ft0  <~~ Doub[0x00100180]
                                                #; (f:lsu) ft0  <-- 49.0
      0x80000858 fsd     ft0, 248(sp)           #; 49.0 ~~> Doub[0x0011fd68]
      0x8000085c fld     ft0, 392(a0)           #; ft0  <~~ Doub[0x00100188]
                                                #; (f:lsu) ft0  <-- 50.0
      0x80000860 fsd     ft0, 240(sp)           #; 50.0 ~~> Doub[0x0011fd60]
      0x80000864 fld     ft0, 400(a0)           #; ft0  <~~ Doub[0x00100190]
                                                #; (f:lsu) ft0  <-- 51.0
      0x80000868 fsd     ft0, 232(sp)           #; 51.0 ~~> Doub[0x0011fd58]
      0x8000086c fld     ft0, 408(a0)           #; ft0  <~~ Doub[0x00100198]
                                                #; (f:lsu) ft0  <-- 52.0
      0x80000870 fsd     ft0, 224(sp)           #; 52.0 ~~> Doub[0x0011fd50]
      0x80000874 fld     ft4, 416(a0)           #; ft4  <~~ Doub[0x001001a0]
      0x80000878 fld     ft5, 424(a0)           #; ft5  <~~ Doub[0x001001a8], (f:lsu) ft4  <-- 53.0
      0x8000087c fld     ft6, 432(a0)           #; ft6  <~~ Doub[0x001001b0], (f:lsu) ft5  <-- 54.0
                                                #; (f:lsu) ft6  <-- 55.0
      0x80000880 fld     ft7, 440(a0)           #; ft7  <~~ Doub[0x001001b8]
      0x80000884 fld     fa0, 448(a0)           #; fa0  <~~ Doub[0x001001c0], (f:lsu) ft7  <-- 56.0
      0x80000888 fld     fa1, 456(a0)           #; fa1  <~~ Doub[0x001001c8], (f:lsu) fa0  <-- 57.0
      0x8000088c fld     fa2, 464(a0)           #; fa2  <~~ Doub[0x001001d0], (f:lsu) fa1  <-- 58.0
                                                #; (f:lsu) fa2  <-- 59.0
      0x80000890 fld     fa3, 472(a0)           #; fa3  <~~ Doub[0x001001d8]
      0x80000894 fld     fa4, 480(a0)           #; fa4  <~~ Doub[0x001001e0], (f:lsu) fa3  <-- 60.0
      0x80000898 fld     fa5, 488(a0)           #; fa5  <~~ Doub[0x001001e8], (f:lsu) fa4  <-- 61.0
      0x8000089c fld     fa6, 496(a0)           #; fa6  <~~ Doub[0x001001f0], (f:lsu) fa5  <-- 62.0
                                                #; (f:lsu) fa6  <-- 63.0
      0x800008a0 fld     fa7, 504(a0)           #; fa7  <~~ Doub[0x001001f8]
      0x800008a4 fld     ft8, 512(a0)           #; ft8  <~~ Doub[0x00100200], (f:lsu) fa7  <-- 64.0
      0x800008a8 fld     ft9, 520(a0)           #; ft9  <~~ Doub[0x00100208], (f:lsu) ft8  <-- 65.0
      0x800008ac fld     ft10, 528(a0)          #; ft10 <~~ Doub[0x00100210], (f:lsu) ft9  <-- 66.0
                                                #; (f:lsu) ft10 <-- 67.0
      0x800008b0 fld     ft11, 536(a0)          #; ft11 <~~ Doub[0x00100218]
      0x800008b4 fld     fs0, 544(a0)           #; fs0  <~~ Doub[0x00100220], (f:lsu) ft11 <-- 68.0
      0x800008b8 fld     fs1, 552(a0)           #; fs1  <~~ Doub[0x00100228], (f:lsu) fs0  <-- 69.0
      0x800008bc fld     fs2, 560(a0)           #; fs2  <~~ Doub[0x00100230], (f:lsu) fs1  <-- 70.0
                                                #; (f:lsu) fs2  <-- 71.0
      0x800008c0 fld     fs3, 568(a0)           #; fs3  <~~ Doub[0x00100238]
      0x800008c4 fld     fs4, 576(a0)           #; fs4  <~~ Doub[0x00100240], (f:lsu) fs3  <-- 72.0
      0x800008c8 fld     fs5, 584(a0)           #; fs5  <~~ Doub[0x00100248], (f:lsu) fs4  <-- 73.0
      0x800008cc fld     fs6, 592(a0)           #; fs6  <~~ Doub[0x00100250], (f:lsu) fs5  <-- 74.0
                                                #; (f:lsu) fs6  <-- 75.0
      0x800008d0 fld     fs7, 600(a0)           #; fs7  <~~ Doub[0x00100258]
      0x800008d4 fld     fs8, 608(a0)           #; fs8  <~~ Doub[0x00100260], (f:lsu) fs7  <-- 76.0
      0x800008d8 fld     fs9, 616(a0)           #; fs9  <~~ Doub[0x00100268], (f:lsu) fs8  <-- 77.0
      0x800008dc fld     fs10, 624(a0)          #; fs10 <~~ Doub[0x00100270], (f:lsu) fs9  <-- 78.0
                                                #; (f:lsu) fs10 <-- 79.0
      0x800008e0 fld     fs11, 632(a0)          #; fs11 <~~ Doub[0x00100278]
      0x800008e4 fld     ft0, 640(a0)           #; ft0  <~~ Doub[0x00100280], (f:lsu) fs11 <-- 80.0
                                                #; (f:lsu) ft0  <-- 81.0
      0x800008e8 fsd     ft0, 216(sp)           #; 81.0 ~~> Doub[0x0011fd48]
      0x800008ec fld     ft0, 648(a0)           #; ft0  <~~ Doub[0x00100288]
                                                #; (f:lsu) ft0  <-- 82.0
      0x800008f0 fsd     ft0, 208(sp)           #; 82.0 ~~> Doub[0x0011fd40]
      0x800008f4 fld     ft0, 656(a0)           #; ft0  <~~ Doub[0x00100290]
                                                #; (f:lsu) ft0  <-- 83.0
      0x800008f8 fsd     ft0, 200(sp)           #; 83.0 ~~> Doub[0x0011fd38]
      0x800008fc fld     ft0, 664(a0)           #; ft0  <~~ Doub[0x00100298]
                                                #; (f:lsu) ft0  <-- 84.0
      0x80000900 fsd     ft0, 192(sp)           #; 84.0 ~~> Doub[0x0011fd30]
      0x80000904 fld     ft0, 672(a0)           #; ft0  <~~ Doub[0x001002a0]
                                                #; (f:lsu) ft0  <-- 85.0
      0x80000908 fsd     ft0, 184(sp)           #; 85.0 ~~> Doub[0x0011fd28]
      0x8000090c fld     ft0, 680(a0)           #; ft0  <~~ Doub[0x001002a8]
                                                #; (f:lsu) ft0  <-- 86.0
      0x80000910 fsd     ft0, 176(sp)           #; 86.0 ~~> Doub[0x0011fd20]
      0x80000914 fld     ft0, 688(a0)           #; ft0  <~~ Doub[0x001002b0]
                                                #; (f:lsu) ft0  <-- 87.0
      0x80000918 fsd     ft0, 168(sp)           #; 87.0 ~~> Doub[0x0011fd18]
      0x8000091c fld     ft0, 696(a0)           #; ft0  <~~ Doub[0x001002b8]
                                                #; (f:lsu) ft0  <-- 88.0
      0x80000920 fsd     ft0, 160(sp)           #; 88.0 ~~> Doub[0x0011fd10]
      0x80000924 fld     ft0, 704(a0)           #; ft0  <~~ Doub[0x001002c0]
                                                #; (f:lsu) ft0  <-- 89.0
      0x80000928 fsd     ft0, 152(sp)           #; 89.0 ~~> Doub[0x0011fd08]
      0x8000092c fld     ft0, 712(a0)           #; ft0  <~~ Doub[0x001002c8]
                                                #; (f:lsu) ft0  <-- 90.0
      0x80000930 fsd     ft0, 144(sp)           #; 90.0 ~~> Doub[0x0011fd00]
      0x80000934 fld     ft0, 720(a0)           #; ft0  <~~ Doub[0x001002d0]
                                                #; (f:lsu) ft0  <-- 91.0
      0x80000938 fsd     ft0, 136(sp)           #; 91.0 ~~> Doub[0x0011fcf8]
      0x8000093c fld     ft0, 728(a0)           #; ft0  <~~ Doub[0x001002d8]
                                                #; (f:lsu) ft0  <-- 92.0
      0x80000940 fsd     ft0, 128(sp)           #; 92.0 ~~> Doub[0x0011fcf0]
      0x80000944 fld     ft0, 736(a0)           #; ft0  <~~ Doub[0x001002e0]
                                                #; (f:lsu) ft0  <-- 93.0
      0x80000948 fsd     ft0, 120(sp)           #; 93.0 ~~> Doub[0x0011fce8]
      0x8000094c fld     ft0, 744(a0)           #; ft0  <~~ Doub[0x001002e8]
                                                #; (f:lsu) ft0  <-- 94.0
      0x80000950 fsd     ft0, 112(sp)           #; 94.0 ~~> Doub[0x0011fce0]
      0x80000954 fld     ft0, 752(a0)           #; ft0  <~~ Doub[0x001002f0]
                                                #; (f:lsu) ft0  <-- 95.0
      0x80000958 fsd     ft0, 104(sp)           #; 95.0 ~~> Doub[0x0011fcd8]
      0x8000095c fld     ft0, 760(a0)           #; ft0  <~~ Doub[0x001002f8]
                                                #; (f:lsu) ft0  <-- 96.0
      0x80000960 fsd     ft0, 96(sp)            #; 96.0 ~~> Doub[0x0011fcd0]
      0x80000964 fld     ft0, 768(a0)           #; ft0  <~~ Doub[0x00100300]
                                                #; (f:lsu) ft0  <-- 97.0
      0x80000968 fsd     ft0, 88(sp)            #; 97.0 ~~> Doub[0x0011fcc8]
      0x8000096c fld     ft0, 776(a0)           #; ft0  <~~ Doub[0x00100308]
                                                #; (f:lsu) ft0  <-- 98.0
      0x80000970 fsd     ft0, 80(sp)            #; 98.0 ~~> Doub[0x0011fcc0]
      0x80000974 fld     ft0, 784(a0)           #; ft0  <~~ Doub[0x00100310]
                                                #; (f:lsu) ft0  <-- 99.0
      0x80000978 fsd     ft0, 72(sp)            #; 99.0 ~~> Doub[0x0011fcb8]
      0x8000097c fld     ft0, 792(a0)           #; ft0  <~~ Doub[0x00100318]
                                                #; (f:lsu) ft0  <-- 100.0
      0x80000980 fsd     ft0, 64(sp)            #; 100.0 ~~> Doub[0x0011fcb0]
      0x80000984 fld     ft0, 800(a0)           #; ft0  <~~ Doub[0x00100320]
                                                #; (f:lsu) ft0  <-- 101.0
      0x80000988 fsd     ft0, 56(sp)            #; 101.0 ~~> Doub[0x0011fca8]
      0x8000098c fld     ft0, 808(a0)           #; ft0  <~~ Doub[0x00100328]
                                                #; (f:lsu) ft0  <-- 102.0
      0x80000990 fsd     ft0, 48(sp)            #; 102.0 ~~> Doub[0x0011fca0]
      0x80000994 fld     ft0, 816(a0)           #; ft0  <~~ Doub[0x00100330]
                                                #; (f:lsu) ft0  <-- 103.0
      0x80000998 fsd     ft0, 40(sp)            #; 103.0 ~~> Doub[0x0011fc98]
      0x8000099c fld     ft0, 824(a0)           #; ft0  <~~ Doub[0x00100338]
                                                #; (f:lsu) ft0  <-- 104.0
      0x800009a0 fsd     ft0, 32(sp)            #; 104.0 ~~> Doub[0x0011fc90]
      0x800009a4 fld     ft0, 832(a0)           #; ft0  <~~ Doub[0x00100340]
                                                #; (f:lsu) ft0  <-- 105.0
      0x800009a8 fsd     ft0, 24(sp)            #; 105.0 ~~> Doub[0x0011fc88]
      0x800009ac fld     ft0, 840(a0)           #; ft0  <~~ Doub[0x00100348]
                                                #; (f:lsu) ft0  <-- 106.0
      0x800009b0 fsd     ft0, 16(sp)            #; 106.0 ~~> Doub[0x0011fc80]
      0x800009b4 fld     ft0, 848(a0)           #; ft0  <~~ Doub[0x00100350]
                                                #; (f:lsu) ft0  <-- 107.0
      0x800009b8 fsd     ft0, 8(sp)             #; 107.0 ~~> Doub[0x0011fc78]
      0x800009bc fld     ft0, 856(a0)           #; ft0  <~~ Doub[0x00100358]
                                                #; (f:lsu) ft0  <-- 108.0
      0x800009c4 addi    a0, a0, 384            #; a0  = 0x00100000, (wrb) a0  <-- 0x00100180
; main (test_access.c:0)
      0x800009c8 li      a1, -96                #; (wrb) a1  <-- -96
      0x800009c0 fsd     ft0, 0(sp)             #; 108.0 ~~> Doub[0x0011fc70]
      0x800009cc fcvt.d.w ft0, zero             #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
; main (test_access.c:34)
      0x800009d0 add     a2, a0, a1             #; a0  = 0x00100180, a1  = -96, (wrb) a2  <-- 0x00100120
      0x800009d4 fld     ft1, 3808(a2)          #; ft1  <~~ Doub[0x00100000]
      0x800009d8 fld     ft2, 3904(a2)          #; ft2  <~~ Doub[0x00100060], (f:lsu) ft1  <-- 1.0
      0x800009dc fadd.d  ft0, ft1, ft0          #; ft1  = 1.0, ft0  = 0.0, (f:lsu) ft2  <-- 13.0
                                                #; (f:fpu) ft0  <-- 1.0
      0x800009e0 fld     ft1, 4000(a2)          #; ft1  <~~ Doub[0x001000c0]
      0x800009e4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100120], (f:lsu) ft1  <-- 25.0
      0x800009e8 fadd.d  ft0, ft0, ft2          #; ft0  = 1.0, ft2  = 13.0, (f:lsu) ft3  <-- 37.0
      0x800009ec fld     ft2, 96(a2)            #; ft2  <~~ Doub[0x00100180]
                                                #; (f:lsu) ft2  <-- 49.0
                                                #; (f:fpu) ft0  <-- 14.0
      0x800009f0 fadd.d  ft0, ft0, ft1          #; ft0  = 14.0, ft1  = 25.0
                                                #; (f:fpu) ft0  <-- 39.0
      0x800009f4 fadd.d  ft0, ft0, ft3          #; ft0  = 39.0, ft3  = 37.0
      0x800009f8 fld     ft1, 192(a2)           #; ft1  <~~ Doub[0x001001e0]
                                                #; (f:lsu) ft1  <-- 61.0
                                                #; (f:fpu) ft0  <-- 76.0
      0x800009fc fadd.d  ft0, ft0, ft2          #; ft0  = 76.0, ft2  = 49.0
                                                #; (f:fpu) ft0  <-- 125.0
      0x80000a00 fld     ft2, 288(a2)           #; ft2  <~~ Doub[0x00100240]
      0x80000a04 fld     ft3, 384(a2)           #; ft3  <~~ Doub[0x001002a0], (f:lsu) ft2  <-- 73.0
      0x80000a08 fadd.d  ft0, ft0, ft1          #; ft0  = 125.0, ft1  = 61.0, (f:lsu) ft3  <-- 85.0
      0x80000a0c fld     ft1, 480(a2)           #; ft1  <~~ Doub[0x00100300]
                                                #; (f:lsu) ft1  <-- 97.0
                                                #; (f:fpu) ft0  <-- 186.0
; main (test_access.c:32)
      0x80000a18 addi    a1, a1, 8              #; a1  = -96, (wrb) a1  <-- -88
      0x80000a10 fadd.d  ft0, ft0, ft2          #; ft0  = 186.0, ft2  = 73.0
                                                #; (f:fpu) ft0  <-- 259.0
; main (test_access.c:34)
      0x80000a14 fadd.d  ft0, ft0, ft3          #; ft0  = 259.0, ft3  = 85.0
                                                #; (f:fpu) ft0  <-- 344.0
      0x80000a1c fadd.d  ft0, ft0, ft1          #; ft0  = 344.0, ft1  = 97.0
; main (test_access.c:32)
      0x80000a20 bnez    a1, pc - 80            #; a1  = -88, taken, goto 0x800009d0
; main (test_access.c:34)
      0x800009d0 add     a2, a0, a1             #; a0  = 0x00100180, a1  = -88, (wrb) a2  <-- 0x00100128
                                                #; (f:fpu) ft0  <-- 441.0
      0x800009d4 fld     ft1, 3808(a2)          #; ft1  <~~ Doub[0x00100008]
      0x800009d8 fld     ft2, 3904(a2)          #; ft2  <~~ Doub[0x00100068], (f:lsu) ft1  <-- 2.0
      0x800009dc fadd.d  ft0, ft1, ft0          #; ft1  = 2.0, ft0  = 441.0, (f:lsu) ft2  <-- 14.0
      0x800009e0 fld     ft1, 4000(a2)          #; ft1  <~~ Doub[0x001000c8]
      0x800009e4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100128], (f:lsu) ft1  <-- 26.0
                                                #; (f:fpu) ft0  <-- 443.0
      0x800009e8 fadd.d  ft0, ft0, ft2          #; ft0  = 443.0, ft2  = 14.0, (f:lsu) ft3  <-- 38.0
      0x800009ec fld     ft2, 96(a2)            #; ft2  <~~ Doub[0x00100188]
                                                #; (f:lsu) ft2  <-- 50.0
                                                #; (f:fpu) ft0  <-- 457.0
      0x800009f0 fadd.d  ft0, ft0, ft1          #; ft0  = 457.0, ft1  = 26.0
                                                #; (f:fpu) ft0  <-- 483.0
      0x800009f4 fadd.d  ft0, ft0, ft3          #; ft0  = 483.0, ft3  = 38.0
; main (test_access.c:32)
      0x80000a18 addi    a1, a1, 8              #; a1  = -88, (wrb) a1  <-- -80
      0x800009f8 fld     ft1, 192(a2)           #; ft1  <~~ Doub[0x001001e8]
                                                #; (f:lsu) ft1  <-- 62.0
      0x80000a20 bnez    a1, pc - 80            #; a1  = -80, taken, goto 0x800009d0
                                                #; (f:fpu) ft0  <-- 521.0
; main (test_access.c:34)
      0x800009d0 add     a2, a0, a1             #; a0  = 0x00100180, a1  = -80, (wrb) a2  <-- 0x00100130
      0x800009fc fadd.d  ft0, ft0, ft2          #; ft0  = 521.0, ft2  = 50.0
      0x80000a00 fld     ft2, 288(a2)           #; ft2  <~~ Doub[0x00100248]
      0x80000a04 fld     ft3, 384(a2)           #; ft3  <~~ Doub[0x001002a8], (f:lsu) ft2  <-- 74.0
                                                #; (f:fpu) ft0  <-- 571.0
      0x80000a08 fadd.d  ft0, ft0, ft1          #; ft0  = 571.0, ft1  = 62.0, (f:lsu) ft3  <-- 86.0
      0x80000a0c fld     ft1, 480(a2)           #; ft1  <~~ Doub[0x00100308]
                                                #; (f:lsu) ft1  <-- 98.0
                                                #; (f:fpu) ft0  <-- 633.0
      0x80000a10 fadd.d  ft0, ft0, ft2          #; ft0  = 633.0, ft2  = 74.0
                                                #; (f:fpu) ft0  <-- 707.0
      0x80000a14 fadd.d  ft0, ft0, ft3          #; ft0  = 707.0, ft3  = 86.0
                                                #; (f:fpu) ft0  <-- 793.0
      0x80000a1c fadd.d  ft0, ft0, ft1          #; ft0  = 793.0, ft1  = 98.0
      0x800009d4 fld     ft1, 3808(a2)          #; ft1  <~~ Doub[0x00100010]
; main (test_access.c:32)
      0x80000a18 addi    a1, a1, 8              #; a1  = -80, (wrb) a1  <-- -72
      0x800009d8 fld     ft2, 3904(a2)          #; ft2  <~~ Doub[0x00100070], (f:lsu) ft1  <-- 3.0
                                                #; (f:fpu) ft0  <-- 891.0
      0x80000a20 bnez    a1, pc - 80            #; a1  = -72, taken, goto 0x800009d0
      0x800009dc fadd.d  ft0, ft1, ft0          #; ft1  = 3.0, ft0  = 891.0, (f:lsu) ft2  <-- 15.0
; main (test_access.c:34)
      0x800009d0 add     a2, a0, a1             #; a0  = 0x00100180, a1  = -72, (wrb) a2  <-- 0x00100138
      0x800009e0 fld     ft1, 4000(a2)          #; ft1  <~~ Doub[0x001000d0]
      0x800009e4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100130], (f:lsu) ft1  <-- 27.0
                                                #; (f:fpu) ft0  <-- 894.0
      0x800009e8 fadd.d  ft0, ft0, ft2          #; ft0  = 894.0, ft2  = 15.0, (f:lsu) ft3  <-- 39.0
      0x800009ec fld     ft2, 96(a2)            #; ft2  <~~ Doub[0x00100190]
                                                #; (f:lsu) ft2  <-- 51.0
                                                #; (f:fpu) ft0  <-- 909.0
      0x800009f0 fadd.d  ft0, ft0, ft1          #; ft0  = 909.0, ft1  = 27.0
                                                #; (f:fpu) ft0  <-- 936.0
      0x800009f4 fadd.d  ft0, ft0, ft3          #; ft0  = 936.0, ft3  = 39.0
      0x800009f8 fld     ft1, 192(a2)           #; ft1  <~~ Doub[0x001001f0]
                                                #; (f:lsu) ft1  <-- 63.0
                                                #; (f:fpu) ft0  <-- 975.0
      0x800009fc fadd.d  ft0, ft0, ft2          #; ft0  = 975.0, ft2  = 51.0
      0x80000a00 fld     ft2, 288(a2)           #; ft2  <~~ Doub[0x00100250]
      0x80000a04 fld     ft3, 384(a2)           #; ft3  <~~ Doub[0x001002b0], (f:lsu) ft2  <-- 75.0
                                                #; (f:fpu) ft0  <-- 1026.0
      0x80000a08 fadd.d  ft0, ft0, ft1          #; ft0  = 1026.0, ft1  = 63.0, (f:lsu) ft3  <-- 87.0
      0x80000a0c fld     ft1, 480(a2)           #; ft1  <~~ Doub[0x00100310]
                                                #; (f:lsu) ft1  <-- 99.0
                                                #; (f:fpu) ft0  <-- 1089.0
      0x80000a10 fadd.d  ft0, ft0, ft2          #; ft0  = 1089.0, ft2  = 75.0
                                                #; (f:fpu) ft0  <-- 1164.0
      0x80000a14 fadd.d  ft0, ft0, ft3          #; ft0  = 1164.0, ft3  = 87.0
; main (test_access.c:32)
      0x80000a18 addi    a1, a1, 8              #; a1  = -72, (wrb) a1  <-- -64
                                                #; (f:fpu) ft0  <-- 1251.0
; main (test_access.c:34)
      0x80000a1c fadd.d  ft0, ft0, ft1          #; ft0  = 1251.0, ft1  = 99.0
      0x800009d4 fld     ft1, 3808(a2)          #; ft1  <~~ Doub[0x00100018]
      0x800009d8 fld     ft2, 3904(a2)          #; ft2  <~~ Doub[0x00100078], (f:lsu) ft1  <-- 4.0
; main (test_access.c:32)
      0x80000a20 bnez    a1, pc - 80            #; a1  = -64, taken, goto 0x800009d0
                                                #; (f:fpu) ft0  <-- 1350.0
; main (test_access.c:34)
      0x800009d0 add     a2, a0, a1             #; a0  = 0x00100180, a1  = -64, (wrb) a2  <-- 0x00100140
      0x800009dc fadd.d  ft0, ft1, ft0          #; ft1  = 4.0, ft0  = 1350.0, (f:lsu) ft2  <-- 16.0
      0x800009e0 fld     ft1, 4000(a2)          #; ft1  <~~ Doub[0x001000d8]
      0x800009e4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100138], (f:lsu) ft1  <-- 28.0
                                                #; (f:fpu) ft0  <-- 1354.0
      0x800009e8 fadd.d  ft0, ft0, ft2          #; ft0  = 1354.0, ft2  = 16.0, (f:lsu) ft3  <-- 40.0
      0x800009ec fld     ft2, 96(a2)            #; ft2  <~~ Doub[0x00100198]
                                                #; (f:lsu) ft2  <-- 52.0
                                                #; (f:fpu) ft0  <-- 1370.0
      0x800009f0 fadd.d  ft0, ft0, ft1          #; ft0  = 1370.0, ft1  = 28.0
                                                #; (f:fpu) ft0  <-- 1398.0
      0x800009f4 fadd.d  ft0, ft0, ft3          #; ft0  = 1398.0, ft3  = 40.0
      0x800009f8 fld     ft1, 192(a2)           #; ft1  <~~ Doub[0x001001f8]
                                                #; (f:lsu) ft1  <-- 64.0
                                                #; (f:fpu) ft0  <-- 1438.0
      0x800009fc fadd.d  ft0, ft0, ft2          #; ft0  = 1438.0, ft2  = 52.0
      0x80000a00 fld     ft2, 288(a2)           #; ft2  <~~ Doub[0x00100258]
      0x80000a04 fld     ft3, 384(a2)           #; ft3  <~~ Doub[0x001002b8], (f:lsu) ft2  <-- 76.0
                                                #; (f:fpu) ft0  <-- 1490.0
      0x80000a08 fadd.d  ft0, ft0, ft1          #; ft0  = 1490.0, ft1  = 64.0, (f:lsu) ft3  <-- 88.0
      0x80000a0c fld     ft1, 480(a2)           #; ft1  <~~ Doub[0x00100318]
                                                #; (f:lsu) ft1  <-- 100.0
                                                #; (f:fpu) ft0  <-- 1554.0
      0x80000a10 fadd.d  ft0, ft0, ft2          #; ft0  = 1554.0, ft2  = 76.0
                                                #; (f:fpu) ft0  <-- 1630.0
      0x80000a14 fadd.d  ft0, ft0, ft3          #; ft0  = 1630.0, ft3  = 88.0
; main (test_access.c:32)
      0x80000a18 addi    a1, a1, 8              #; a1  = -64, (wrb) a1  <-- -56
                                                #; (f:fpu) ft0  <-- 1718.0
; main (test_access.c:34)
      0x80000a1c fadd.d  ft0, ft0, ft1          #; ft0  = 1718.0, ft1  = 100.0
      0x800009d4 fld     ft1, 3808(a2)          #; ft1  <~~ Doub[0x00100020]
      0x800009d8 fld     ft2, 3904(a2)          #; ft2  <~~ Doub[0x00100080], (f:lsu) ft1  <-- 5.0
; main (test_access.c:32)
      0x80000a20 bnez    a1, pc - 80            #; a1  = -56, taken, goto 0x800009d0
                                                #; (f:fpu) ft0  <-- 1818.0
; main (test_access.c:34)
      0x800009d0 add     a2, a0, a1             #; a0  = 0x00100180, a1  = -56, (wrb) a2  <-- 0x00100148
      0x800009dc fadd.d  ft0, ft1, ft0          #; ft1  = 5.0, ft0  = 1818.0, (f:lsu) ft2  <-- 17.0
      0x800009e0 fld     ft1, 4000(a2)          #; ft1  <~~ Doub[0x001000e0]
      0x800009e4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100140], (f:lsu) ft1  <-- 29.0
                                                #; (f:fpu) ft0  <-- 1823.0
      0x800009e8 fadd.d  ft0, ft0, ft2          #; ft0  = 1823.0, ft2  = 17.0, (f:lsu) ft3  <-- 41.0
      0x800009ec fld     ft2, 96(a2)            #; ft2  <~~ Doub[0x001001a0]
                                                #; (f:lsu) ft2  <-- 53.0
                                                #; (f:fpu) ft0  <-- 1840.0
      0x800009f0 fadd.d  ft0, ft0, ft1          #; ft0  = 1840.0, ft1  = 29.0
                                                #; (f:fpu) ft0  <-- 1869.0
      0x800009f4 fadd.d  ft0, ft0, ft3          #; ft0  = 1869.0, ft3  = 41.0
      0x800009f8 fld     ft1, 192(a2)           #; ft1  <~~ Doub[0x00100200]
                                                #; (f:lsu) ft1  <-- 65.0
                                                #; (f:fpu) ft0  <-- 1910.0
      0x800009fc fadd.d  ft0, ft0, ft2          #; ft0  = 1910.0, ft2  = 53.0
      0x80000a00 fld     ft2, 288(a2)           #; ft2  <~~ Doub[0x00100260]
      0x80000a04 fld     ft3, 384(a2)           #; ft3  <~~ Doub[0x001002c0], (f:lsu) ft2  <-- 77.0
                                                #; (f:fpu) ft0  <-- 1963.0
      0x80000a08 fadd.d  ft0, ft0, ft1          #; ft0  = 1963.0, ft1  = 65.0, (f:lsu) ft3  <-- 89.0
      0x80000a0c fld     ft1, 480(a2)           #; ft1  <~~ Doub[0x00100320]
                                                #; (f:lsu) ft1  <-- 101.0
                                                #; (f:fpu) ft0  <-- 2028.0
      0x80000a10 fadd.d  ft0, ft0, ft2          #; ft0  = 2028.0, ft2  = 77.0
                                                #; (f:fpu) ft0  <-- 2105.0
      0x80000a14 fadd.d  ft0, ft0, ft3          #; ft0  = 2105.0, ft3  = 89.0
; main (test_access.c:32)
      0x80000a18 addi    a1, a1, 8              #; a1  = -56, (wrb) a1  <-- -48
                                                #; (f:fpu) ft0  <-- 2194.0
; main (test_access.c:34)
      0x80000a1c fadd.d  ft0, ft0, ft1          #; ft0  = 2194.0, ft1  = 101.0
      0x800009d4 fld     ft1, 3808(a2)          #; ft1  <~~ Doub[0x00100028]
      0x800009d8 fld     ft2, 3904(a2)          #; ft2  <~~ Doub[0x00100088], (f:lsu) ft1  <-- 6.0
; main (test_access.c:32)
      0x80000a20 bnez    a1, pc - 80            #; a1  = -48, taken, goto 0x800009d0
                                                #; (f:fpu) ft0  <-- 2295.0
; main (test_access.c:34)
      0x800009d0 add     a2, a0, a1             #; a0  = 0x00100180, a1  = -48, (wrb) a2  <-- 0x00100150
      0x800009dc fadd.d  ft0, ft1, ft0          #; ft1  = 6.0, ft0  = 2295.0, (f:lsu) ft2  <-- 18.0
      0x800009e0 fld     ft1, 4000(a2)          #; ft1  <~~ Doub[0x001000e8]
      0x800009e4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100148], (f:lsu) ft1  <-- 30.0
                                                #; (f:fpu) ft0  <-- 2301.0
      0x800009e8 fadd.d  ft0, ft0, ft2          #; ft0  = 2301.0, ft2  = 18.0, (f:lsu) ft3  <-- 42.0
      0x800009ec fld     ft2, 96(a2)            #; ft2  <~~ Doub[0x001001a8]
                                                #; (f:lsu) ft2  <-- 54.0
                                                #; (f:fpu) ft0  <-- 2319.0
      0x800009f0 fadd.d  ft0, ft0, ft1          #; ft0  = 2319.0, ft1  = 30.0
                                                #; (f:fpu) ft0  <-- 2349.0
      0x800009f4 fadd.d  ft0, ft0, ft3          #; ft0  = 2349.0, ft3  = 42.0
      0x800009f8 fld     ft1, 192(a2)           #; ft1  <~~ Doub[0x00100208]
                                                #; (f:lsu) ft1  <-- 66.0
                                                #; (f:fpu) ft0  <-- 2391.0
      0x800009fc fadd.d  ft0, ft0, ft2          #; ft0  = 2391.0, ft2  = 54.0
      0x80000a00 fld     ft2, 288(a2)           #; ft2  <~~ Doub[0x00100268]
      0x80000a04 fld     ft3, 384(a2)           #; ft3  <~~ Doub[0x001002c8], (f:lsu) ft2  <-- 78.0
                                                #; (f:fpu) ft0  <-- 2445.0
      0x80000a08 fadd.d  ft0, ft0, ft1          #; ft0  = 2445.0, ft1  = 66.0, (f:lsu) ft3  <-- 90.0
      0x80000a0c fld     ft1, 480(a2)           #; ft1  <~~ Doub[0x00100328]
                                                #; (f:lsu) ft1  <-- 102.0
                                                #; (f:fpu) ft0  <-- 2511.0
      0x80000a10 fadd.d  ft0, ft0, ft2          #; ft0  = 2511.0, ft2  = 78.0
                                                #; (f:fpu) ft0  <-- 2589.0
      0x80000a14 fadd.d  ft0, ft0, ft3          #; ft0  = 2589.0, ft3  = 90.0
; main (test_access.c:32)
      0x80000a18 addi    a1, a1, 8              #; a1  = -48, (wrb) a1  <-- -40
                                                #; (f:fpu) ft0  <-- 2679.0
; main (test_access.c:34)
      0x80000a1c fadd.d  ft0, ft0, ft1          #; ft0  = 2679.0, ft1  = 102.0
      0x800009d4 fld     ft1, 3808(a2)          #; ft1  <~~ Doub[0x00100030]
      0x800009d8 fld     ft2, 3904(a2)          #; ft2  <~~ Doub[0x00100090], (f:lsu) ft1  <-- 7.0
; main (test_access.c:32)
      0x80000a20 bnez    a1, pc - 80            #; a1  = -40, taken, goto 0x800009d0
                                                #; (f:fpu) ft0  <-- 2781.0
; main (test_access.c:34)
      0x800009d0 add     a2, a0, a1             #; a0  = 0x00100180, a1  = -40, (wrb) a2  <-- 0x00100158
      0x800009dc fadd.d  ft0, ft1, ft0          #; ft1  = 7.0, ft0  = 2781.0, (f:lsu) ft2  <-- 19.0
      0x800009e0 fld     ft1, 4000(a2)          #; ft1  <~~ Doub[0x001000f0]
      0x800009e4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100150], (f:lsu) ft1  <-- 31.0
                                                #; (f:fpu) ft0  <-- 2788.0
      0x800009e8 fadd.d  ft0, ft0, ft2          #; ft0  = 2788.0, ft2  = 19.0, (f:lsu) ft3  <-- 43.0
      0x800009ec fld     ft2, 96(a2)            #; ft2  <~~ Doub[0x001001b0]
                                                #; (f:lsu) ft2  <-- 55.0
                                                #; (f:fpu) ft0  <-- 2807.0
      0x800009f0 fadd.d  ft0, ft0, ft1          #; ft0  = 2807.0, ft1  = 31.0
                                                #; (f:fpu) ft0  <-- 2838.0
      0x800009f4 fadd.d  ft0, ft0, ft3          #; ft0  = 2838.0, ft3  = 43.0
      0x800009f8 fld     ft1, 192(a2)           #; ft1  <~~ Doub[0x00100210]
                                                #; (f:lsu) ft1  <-- 67.0
                                                #; (f:fpu) ft0  <-- 2881.0
      0x800009fc fadd.d  ft0, ft0, ft2          #; ft0  = 2881.0, ft2  = 55.0
      0x80000a00 fld     ft2, 288(a2)           #; ft2  <~~ Doub[0x00100270]
      0x80000a04 fld     ft3, 384(a2)           #; ft3  <~~ Doub[0x001002d0], (f:lsu) ft2  <-- 79.0
                                                #; (f:fpu) ft0  <-- 2936.0
      0x80000a08 fadd.d  ft0, ft0, ft1          #; ft0  = 2936.0, ft1  = 67.0, (f:lsu) ft3  <-- 91.0
      0x80000a0c fld     ft1, 480(a2)           #; ft1  <~~ Doub[0x00100330]
                                                #; (f:lsu) ft1  <-- 103.0
                                                #; (f:fpu) ft0  <-- 3003.0
      0x80000a10 fadd.d  ft0, ft0, ft2          #; ft0  = 3003.0, ft2  = 79.0
                                                #; (f:fpu) ft0  <-- 3082.0
      0x80000a14 fadd.d  ft0, ft0, ft3          #; ft0  = 3082.0, ft3  = 91.0
; main (test_access.c:32)
      0x80000a18 addi    a1, a1, 8              #; a1  = -40, (wrb) a1  <-- -32
                                                #; (f:fpu) ft0  <-- 3173.0
; main (test_access.c:34)
      0x80000a1c fadd.d  ft0, ft0, ft1          #; ft0  = 3173.0, ft1  = 103.0
      0x800009d4 fld     ft1, 3808(a2)          #; ft1  <~~ Doub[0x00100038]
      0x800009d8 fld     ft2, 3904(a2)          #; ft2  <~~ Doub[0x00100098], (f:lsu) ft1  <-- 8.0
; main (test_access.c:32)
      0x80000a20 bnez    a1, pc - 80            #; a1  = -32, taken, goto 0x800009d0
                                                #; (f:fpu) ft0  <-- 3276.0
; main (test_access.c:34)
      0x800009d0 add     a2, a0, a1             #; a0  = 0x00100180, a1  = -32, (wrb) a2  <-- 0x00100160
      0x800009dc fadd.d  ft0, ft1, ft0          #; ft1  = 8.0, ft0  = 3276.0, (f:lsu) ft2  <-- 20.0
      0x800009e0 fld     ft1, 4000(a2)          #; ft1  <~~ Doub[0x001000f8]
      0x800009e4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100158], (f:lsu) ft1  <-- 32.0
                                                #; (f:fpu) ft0  <-- 3284.0
      0x800009e8 fadd.d  ft0, ft0, ft2          #; ft0  = 3284.0, ft2  = 20.0, (f:lsu) ft3  <-- 44.0
      0x800009ec fld     ft2, 96(a2)            #; ft2  <~~ Doub[0x001001b8]
                                                #; (f:lsu) ft2  <-- 56.0
                                                #; (f:fpu) ft0  <-- 3304.0
      0x800009f0 fadd.d  ft0, ft0, ft1          #; ft0  = 3304.0, ft1  = 32.0
                                                #; (f:fpu) ft0  <-- 3336.0
      0x800009f4 fadd.d  ft0, ft0, ft3          #; ft0  = 3336.0, ft3  = 44.0
      0x800009f8 fld     ft1, 192(a2)           #; ft1  <~~ Doub[0x00100218]
                                                #; (f:lsu) ft1  <-- 68.0
                                                #; (f:fpu) ft0  <-- 3380.0
      0x800009fc fadd.d  ft0, ft0, ft2          #; ft0  = 3380.0, ft2  = 56.0
      0x80000a00 fld     ft2, 288(a2)           #; ft2  <~~ Doub[0x00100278]
      0x80000a04 fld     ft3, 384(a2)           #; ft3  <~~ Doub[0x001002d8], (f:lsu) ft2  <-- 80.0
                                                #; (f:fpu) ft0  <-- 3436.0
      0x80000a08 fadd.d  ft0, ft0, ft1          #; ft0  = 3436.0, ft1  = 68.0, (f:lsu) ft3  <-- 92.0
      0x80000a0c fld     ft1, 480(a2)           #; ft1  <~~ Doub[0x00100338]
                                                #; (f:lsu) ft1  <-- 104.0
                                                #; (f:fpu) ft0  <-- 3504.0
      0x80000a10 fadd.d  ft0, ft0, ft2          #; ft0  = 3504.0, ft2  = 80.0
                                                #; (f:fpu) ft0  <-- 3584.0
      0x80000a14 fadd.d  ft0, ft0, ft3          #; ft0  = 3584.0, ft3  = 92.0
; main (test_access.c:32)
      0x80000a18 addi    a1, a1, 8              #; a1  = -32, (wrb) a1  <-- -24
                                                #; (f:fpu) ft0  <-- 3676.0
; main (test_access.c:34)
      0x80000a1c fadd.d  ft0, ft0, ft1          #; ft0  = 3676.0, ft1  = 104.0
      0x800009d4 fld     ft1, 3808(a2)          #; ft1  <~~ Doub[0x00100040]
      0x800009d8 fld     ft2, 3904(a2)          #; ft2  <~~ Doub[0x001000a0], (f:lsu) ft1  <-- 9.0
; main (test_access.c:32)
      0x80000a20 bnez    a1, pc - 80            #; a1  = -24, taken, goto 0x800009d0
                                                #; (f:fpu) ft0  <-- 3780.0
; main (test_access.c:34)
      0x800009d0 add     a2, a0, a1             #; a0  = 0x00100180, a1  = -24, (wrb) a2  <-- 0x00100168
      0x800009dc fadd.d  ft0, ft1, ft0          #; ft1  = 9.0, ft0  = 3780.0, (f:lsu) ft2  <-- 21.0
      0x800009e0 fld     ft1, 4000(a2)          #; ft1  <~~ Doub[0x00100100]
      0x800009e4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100160], (f:lsu) ft1  <-- 33.0
                                                #; (f:fpu) ft0  <-- 3789.0
      0x800009e8 fadd.d  ft0, ft0, ft2          #; ft0  = 3789.0, ft2  = 21.0, (f:lsu) ft3  <-- 45.0
      0x800009ec fld     ft2, 96(a2)            #; ft2  <~~ Doub[0x001001c0]
                                                #; (f:lsu) ft2  <-- 57.0
                                                #; (f:fpu) ft0  <-- 3810.0
      0x800009f0 fadd.d  ft0, ft0, ft1          #; ft0  = 3810.0, ft1  = 33.0
                                                #; (f:fpu) ft0  <-- 3843.0
      0x800009f4 fadd.d  ft0, ft0, ft3          #; ft0  = 3843.0, ft3  = 45.0
      0x800009f8 fld     ft1, 192(a2)           #; ft1  <~~ Doub[0x00100220]
                                                #; (f:lsu) ft1  <-- 69.0
                                                #; (f:fpu) ft0  <-- 3888.0
      0x800009fc fadd.d  ft0, ft0, ft2          #; ft0  = 3888.0, ft2  = 57.0
      0x80000a00 fld     ft2, 288(a2)           #; ft2  <~~ Doub[0x00100280]
      0x80000a04 fld     ft3, 384(a2)           #; ft3  <~~ Doub[0x001002e0], (f:lsu) ft2  <-- 81.0
                                                #; (f:fpu) ft0  <-- 3945.0
      0x80000a08 fadd.d  ft0, ft0, ft1          #; ft0  = 3945.0, ft1  = 69.0, (f:lsu) ft3  <-- 93.0
      0x80000a0c fld     ft1, 480(a2)           #; ft1  <~~ Doub[0x00100340]
                                                #; (f:lsu) ft1  <-- 105.0
                                                #; (f:fpu) ft0  <-- 4014.0
      0x80000a10 fadd.d  ft0, ft0, ft2          #; ft0  = 4014.0, ft2  = 81.0
                                                #; (f:fpu) ft0  <-- 4095.0
      0x80000a14 fadd.d  ft0, ft0, ft3          #; ft0  = 4095.0, ft3  = 93.0
; main (test_access.c:32)
      0x80000a18 addi    a1, a1, 8              #; a1  = -24, (wrb) a1  <-- -16
                                                #; (f:fpu) ft0  <-- 4188.0
; main (test_access.c:34)
      0x80000a1c fadd.d  ft0, ft0, ft1          #; ft0  = 4188.0, ft1  = 105.0
      0x800009d4 fld     ft1, 3808(a2)          #; ft1  <~~ Doub[0x00100048]
      0x800009d8 fld     ft2, 3904(a2)          #; ft2  <~~ Doub[0x001000a8], (f:lsu) ft1  <-- 10.0
; main (test_access.c:32)
      0x80000a20 bnez    a1, pc - 80            #; a1  = -16, taken, goto 0x800009d0
                                                #; (f:fpu) ft0  <-- 4293.0
; main (test_access.c:34)
      0x800009d0 add     a2, a0, a1             #; a0  = 0x00100180, a1  = -16, (wrb) a2  <-- 0x00100170
      0x800009dc fadd.d  ft0, ft1, ft0          #; ft1  = 10.0, ft0  = 4293.0, (f:lsu) ft2  <-- 22.0
      0x800009e0 fld     ft1, 4000(a2)          #; ft1  <~~ Doub[0x00100108]
      0x800009e4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100168], (f:lsu) ft1  <-- 34.0
                                                #; (f:fpu) ft0  <-- 4303.0
      0x800009e8 fadd.d  ft0, ft0, ft2          #; ft0  = 4303.0, ft2  = 22.0, (f:lsu) ft3  <-- 46.0
      0x800009ec fld     ft2, 96(a2)            #; ft2  <~~ Doub[0x001001c8]
                                                #; (f:lsu) ft2  <-- 58.0
                                                #; (f:fpu) ft0  <-- 4325.0
      0x800009f0 fadd.d  ft0, ft0, ft1          #; ft0  = 4325.0, ft1  = 34.0
                                                #; (f:fpu) ft0  <-- 4359.0
      0x800009f4 fadd.d  ft0, ft0, ft3          #; ft0  = 4359.0, ft3  = 46.0
      0x800009f8 fld     ft1, 192(a2)           #; ft1  <~~ Doub[0x00100228]
                                                #; (f:lsu) ft1  <-- 70.0
                                                #; (f:fpu) ft0  <-- 4405.0
      0x800009fc fadd.d  ft0, ft0, ft2          #; ft0  = 4405.0, ft2  = 58.0
      0x80000a00 fld     ft2, 288(a2)           #; ft2  <~~ Doub[0x00100288]
      0x80000a04 fld     ft3, 384(a2)           #; ft3  <~~ Doub[0x001002e8], (f:lsu) ft2  <-- 82.0
                                                #; (f:fpu) ft0  <-- 4463.0
      0x80000a08 fadd.d  ft0, ft0, ft1          #; ft0  = 4463.0, ft1  = 70.0, (f:lsu) ft3  <-- 94.0
      0x80000a0c fld     ft1, 480(a2)           #; ft1  <~~ Doub[0x00100348]
                                                #; (f:lsu) ft1  <-- 106.0
                                                #; (f:fpu) ft0  <-- 4533.0
      0x80000a10 fadd.d  ft0, ft0, ft2          #; ft0  = 4533.0, ft2  = 82.0
                                                #; (f:fpu) ft0  <-- 4615.0
      0x80000a14 fadd.d  ft0, ft0, ft3          #; ft0  = 4615.0, ft3  = 94.0
; main (test_access.c:32)
      0x80000a18 addi    a1, a1, 8              #; a1  = -16, (wrb) a1  <-- -8
                                                #; (f:fpu) ft0  <-- 4709.0
; main (test_access.c:34)
      0x80000a1c fadd.d  ft0, ft0, ft1          #; ft0  = 4709.0, ft1  = 106.0
      0x800009d4 fld     ft1, 3808(a2)          #; ft1  <~~ Doub[0x00100050]
      0x800009d8 fld     ft2, 3904(a2)          #; ft2  <~~ Doub[0x001000b0], (f:lsu) ft1  <-- 11.0
; main (test_access.c:32)
      0x80000a20 bnez    a1, pc - 80            #; a1  = -8, taken, goto 0x800009d0
                                                #; (f:fpu) ft0  <-- 4815.0
; main (test_access.c:34)
      0x800009d0 add     a2, a0, a1             #; a0  = 0x00100180, a1  = -8, (wrb) a2  <-- 0x00100178
      0x800009dc fadd.d  ft0, ft1, ft0          #; ft1  = 11.0, ft0  = 4815.0, (f:lsu) ft2  <-- 23.0
      0x800009e0 fld     ft1, 4000(a2)          #; ft1  <~~ Doub[0x00100110]
      0x800009e4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100170], (f:lsu) ft1  <-- 35.0
                                                #; (f:fpu) ft0  <-- 4826.0
      0x800009e8 fadd.d  ft0, ft0, ft2          #; ft0  = 4826.0, ft2  = 23.0, (f:lsu) ft3  <-- 47.0
      0x800009ec fld     ft2, 96(a2)            #; ft2  <~~ Doub[0x001001d0]
                                                #; (f:lsu) ft2  <-- 59.0
                                                #; (f:fpu) ft0  <-- 4849.0
      0x800009f0 fadd.d  ft0, ft0, ft1          #; ft0  = 4849.0, ft1  = 35.0
                                                #; (f:fpu) ft0  <-- 4884.0
      0x800009f4 fadd.d  ft0, ft0, ft3          #; ft0  = 4884.0, ft3  = 47.0
      0x800009f8 fld     ft1, 192(a2)           #; ft1  <~~ Doub[0x00100230]
                                                #; (f:lsu) ft1  <-- 71.0
                                                #; (f:fpu) ft0  <-- 4931.0
      0x800009fc fadd.d  ft0, ft0, ft2          #; ft0  = 4931.0, ft2  = 59.0
      0x80000a00 fld     ft2, 288(a2)           #; ft2  <~~ Doub[0x00100290]
      0x80000a04 fld     ft3, 384(a2)           #; ft3  <~~ Doub[0x001002f0], (f:lsu) ft2  <-- 83.0
                                                #; (f:fpu) ft0  <-- 4990.0
      0x80000a08 fadd.d  ft0, ft0, ft1          #; ft0  = 4990.0, ft1  = 71.0, (f:lsu) ft3  <-- 95.0
      0x80000a0c fld     ft1, 480(a2)           #; ft1  <~~ Doub[0x00100350]
                                                #; (f:lsu) ft1  <-- 107.0
                                                #; (f:fpu) ft0  <-- 5061.0
      0x80000a10 fadd.d  ft0, ft0, ft2          #; ft0  = 5061.0, ft2  = 83.0
                                                #; (f:fpu) ft0  <-- 5144.0
      0x80000a14 fadd.d  ft0, ft0, ft3          #; ft0  = 5144.0, ft3  = 95.0
; main (test_access.c:32)
      0x80000a18 addi    a1, a1, 8              #; a1  = -8, (wrb) a1  <-- 0
                                                #; (f:fpu) ft0  <-- 5239.0
; main (test_access.c:34)
      0x80000a1c fadd.d  ft0, ft0, ft1          #; ft0  = 5239.0, ft1  = 107.0
      0x800009d4 fld     ft1, 3808(a2)          #; ft1  <~~ Doub[0x00100058]
      0x800009d8 fld     ft2, 3904(a2)          #; ft2  <~~ Doub[0x001000b8], (f:lsu) ft1  <-- 12.0
; main (test_access.c:32)
      0x80000a20 bnez    a1, pc - 80            #; a1  = 0, not taken
                                                #; (f:fpu) ft0  <-- 5346.0
; main (test_access.c:34)
      0x800009dc fadd.d  ft0, ft1, ft0          #; ft1  = 12.0, ft0  = 5346.0, (f:lsu) ft2  <-- 24.0
      0x800009e0 fld     ft1, 4000(a2)          #; ft1  <~~ Doub[0x00100118]
      0x800009e4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x00100178], (f:lsu) ft1  <-- 36.0
                                                #; (f:fpu) ft0  <-- 5358.0
      0x800009e8 fadd.d  ft0, ft0, ft2          #; ft0  = 5358.0, ft2  = 24.0, (f:lsu) ft3  <-- 48.0
      0x800009ec fld     ft2, 96(a2)            #; ft2  <~~ Doub[0x001001d8]
                                                #; (f:lsu) ft2  <-- 60.0
                                                #; (f:fpu) ft0  <-- 5382.0
      0x800009f0 fadd.d  ft0, ft0, ft1          #; ft0  = 5382.0, ft1  = 36.0
                                                #; (f:fpu) ft0  <-- 5418.0
      0x800009f4 fadd.d  ft0, ft0, ft3          #; ft0  = 5418.0, ft3  = 48.0
      0x800009f8 fld     ft1, 192(a2)           #; ft1  <~~ Doub[0x00100238]
                                                #; (f:lsu) ft1  <-- 72.0
                                                #; (f:fpu) ft0  <-- 5466.0
      0x800009fc fadd.d  ft0, ft0, ft2          #; ft0  = 5466.0, ft2  = 60.0
      0x80000a00 fld     ft2, 288(a2)           #; ft2  <~~ Doub[0x00100298]
      0x80000a04 fld     ft3, 384(a2)           #; ft3  <~~ Doub[0x001002f8], (f:lsu) ft2  <-- 84.0
                                                #; (f:fpu) ft0  <-- 5526.0
      0x80000a08 fadd.d  ft0, ft0, ft1          #; ft0  = 5526.0, ft1  = 72.0, (f:lsu) ft3  <-- 96.0
      0x80000a0c fld     ft1, 480(a2)           #; ft1  <~~ Doub[0x00100358]
                                                #; (f:lsu) ft1  <-- 108.0
                                                #; (f:fpu) ft0  <-- 5598.0
      0x80000a10 fadd.d  ft0, ft0, ft2          #; ft0  = 5598.0, ft2  = 84.0
                                                #; (f:fpu) ft0  <-- 5682.0
      0x80000a14 fadd.d  ft0, ft0, ft3          #; ft0  = 5682.0, ft3  = 96.0
                                                #; (f:fpu) ft0  <-- 5778.0
      0x80000a1c fadd.d  ft0, ft0, ft1          #; ft0  = 5778.0, ft1  = 108.0
; main (test_access.c:26)
      0x80000a24 fld     ft1, 632(sp)           #; ft1  <~~ Doub[0x0011fee8]
      0x80000a28 fld     ft2, 624(sp)           #; ft2  <~~ Doub[0x0011fee0], (f:lsu) ft1  <-- 1.0
                                                #; (f:fpu) ft0  <-- 5886.0
                                                #; (f:lsu) ft2  <-- 2.0
      0x80000a2c fadd.d  ft1, ft2, ft1          #; ft2  = 2.0, ft1  = 1.0
      0x80000a30 fld     ft2, 616(sp)           #; ft2  <~~ Doub[0x0011fed8]
                                                #; (f:lsu) ft2  <-- 3.0
                                                #; (f:fpu) ft1  <-- 3.0
      0x80000a34 fadd.d  ft1, ft1, ft2          #; ft1  = 3.0, ft2  = 3.0
      0x80000a38 fld     ft2, 608(sp)           #; ft2  <~~ Doub[0x0011fed0]
                                                #; (f:lsu) ft2  <-- 4.0
                                                #; (f:fpu) ft1  <-- 6.0
      0x80000a3c fadd.d  ft1, ft1, ft2          #; ft1  = 6.0, ft2  = 4.0
      0x80000a40 fld     ft2, 600(sp)           #; ft2  <~~ Doub[0x0011fec8]
                                                #; (f:lsu) ft2  <-- 5.0
                                                #; (f:fpu) ft1  <-- 10.0
      0x80000a44 fadd.d  ft1, ft1, ft2          #; ft1  = 10.0, ft2  = 5.0
      0x80000a48 fld     ft2, 592(sp)           #; ft2  <~~ Doub[0x0011fec0]
                                                #; (f:lsu) ft2  <-- 6.0
                                                #; (f:fpu) ft1  <-- 15.0
      0x80000a4c fadd.d  ft1, ft1, ft2          #; ft1  = 15.0, ft2  = 6.0
      0x80000a50 fld     ft2, 584(sp)           #; ft2  <~~ Doub[0x0011feb8]
                                                #; (f:lsu) ft2  <-- 7.0
                                                #; (f:fpu) ft1  <-- 21.0
      0x80000a54 fadd.d  ft1, ft1, ft2          #; ft1  = 21.0, ft2  = 7.0
      0x80000a58 fld     ft2, 576(sp)           #; ft2  <~~ Doub[0x0011feb0]
                                                #; (f:lsu) ft2  <-- 8.0
                                                #; (f:fpu) ft1  <-- 28.0
      0x80000a5c fadd.d  ft1, ft1, ft2          #; ft1  = 28.0, ft2  = 8.0
      0x80000a60 fld     ft2, 568(sp)           #; ft2  <~~ Doub[0x0011fea8]
                                                #; (f:lsu) ft2  <-- 9.0
                                                #; (f:fpu) ft1  <-- 36.0
      0x80000a64 fadd.d  ft1, ft1, ft2          #; ft1  = 36.0, ft2  = 9.0
      0x80000a68 fld     ft2, 560(sp)           #; ft2  <~~ Doub[0x0011fea0]
                                                #; (f:lsu) ft2  <-- 10.0
                                                #; (f:fpu) ft1  <-- 45.0
      0x80000a6c fadd.d  ft1, ft1, ft2          #; ft1  = 45.0, ft2  = 10.0
      0x80000a70 fld     ft2, 552(sp)           #; ft2  <~~ Doub[0x0011fe98]
                                                #; (f:lsu) ft2  <-- 11.0
                                                #; (f:fpu) ft1  <-- 55.0
      0x80000a74 fadd.d  ft1, ft1, ft2          #; ft1  = 55.0, ft2  = 11.0
      0x80000a78 fld     ft2, 544(sp)           #; ft2  <~~ Doub[0x0011fe90]
                                                #; (f:lsu) ft2  <-- 12.0
                                                #; (f:fpu) ft1  <-- 66.0
      0x80000a7c fadd.d  ft1, ft1, ft2          #; ft1  = 66.0, ft2  = 12.0
      0x80000a80 fld     ft2, 536(sp)           #; ft2  <~~ Doub[0x0011fe88]
                                                #; (f:lsu) ft2  <-- 13.0
                                                #; (f:fpu) ft1  <-- 78.0
      0x80000a84 fadd.d  ft1, ft1, ft2          #; ft1  = 78.0, ft2  = 13.0
      0x80000a88 fld     ft2, 528(sp)           #; ft2  <~~ Doub[0x0011fe80]
                                                #; (f:lsu) ft2  <-- 14.0
                                                #; (f:fpu) ft1  <-- 91.0
      0x80000a8c fadd.d  ft1, ft1, ft2          #; ft1  = 91.0, ft2  = 14.0
      0x80000a90 fld     ft2, 520(sp)           #; ft2  <~~ Doub[0x0011fe78]
                                                #; (f:lsu) ft2  <-- 15.0
                                                #; (f:fpu) ft1  <-- 105.0
      0x80000a94 fadd.d  ft1, ft1, ft2          #; ft1  = 105.0, ft2  = 15.0
      0x80000a98 fld     ft2, 512(sp)           #; ft2  <~~ Doub[0x0011fe70]
                                                #; (f:lsu) ft2  <-- 16.0
                                                #; (f:fpu) ft1  <-- 120.0
      0x80000a9c fadd.d  ft1, ft1, ft2          #; ft1  = 120.0, ft2  = 16.0
                                                #; (f:fpu) ft1  <-- 136.0
      0x80000aa0 fld     ft2, 504(sp)           #; ft2  <~~ Doub[0x0011fe68]
                                                #; (f:lsu) ft2  <-- 17.0
      0x80000aa4 fadd.d  ft1, ft1, ft2          #; ft1  = 136.0, ft2  = 17.0
      0x80000aa8 fld     ft2, 496(sp)           #; ft2  <~~ Doub[0x0011fe60]
                                                #; (f:lsu) ft2  <-- 18.0
                                                #; (f:fpu) ft1  <-- 153.0
      0x80000aac fadd.d  ft1, ft1, ft2          #; ft1  = 153.0, ft2  = 18.0
                                                #; (f:fpu) ft1  <-- 171.0
      0x80000ab0 fld     ft2, 488(sp)           #; ft2  <~~ Doub[0x0011fe58]
                                                #; (f:lsu) ft2  <-- 19.0
      0x80000ab4 fadd.d  ft1, ft1, ft2          #; ft1  = 171.0, ft2  = 19.0
      0x80000ab8 fld     ft2, 480(sp)           #; ft2  <~~ Doub[0x0011fe50]
                                                #; (f:lsu) ft2  <-- 20.0
                                                #; (f:fpu) ft1  <-- 190.0
      0x80000abc fadd.d  ft1, ft1, ft2          #; ft1  = 190.0, ft2  = 20.0
                                                #; (f:fpu) ft1  <-- 210.0
      0x80000ac0 fld     ft2, 472(sp)           #; ft2  <~~ Doub[0x0011fe48]
                                                #; (f:lsu) ft2  <-- 21.0
      0x80000ac4 fadd.d  ft1, ft1, ft2          #; ft1  = 210.0, ft2  = 21.0
      0x80000ac8 fld     ft2, 464(sp)           #; ft2  <~~ Doub[0x0011fe40]
                                                #; (f:lsu) ft2  <-- 22.0
                                                #; (f:fpu) ft1  <-- 231.0
      0x80000acc fadd.d  ft1, ft1, ft2          #; ft1  = 231.0, ft2  = 22.0
                                                #; (f:fpu) ft1  <-- 253.0
      0x80000ad0 fld     ft2, 456(sp)           #; ft2  <~~ Doub[0x0011fe38]
                                                #; (f:lsu) ft2  <-- 23.0
      0x80000ad4 fadd.d  ft1, ft1, ft2          #; ft1  = 253.0, ft2  = 23.0
      0x80000ad8 fld     ft2, 448(sp)           #; ft2  <~~ Doub[0x0011fe30]
                                                #; (f:lsu) ft2  <-- 24.0
                                                #; (f:fpu) ft1  <-- 276.0
      0x80000adc fadd.d  ft1, ft1, ft2          #; ft1  = 276.0, ft2  = 24.0
                                                #; (f:fpu) ft1  <-- 300.0
      0x80000ae0 fld     ft2, 440(sp)           #; ft2  <~~ Doub[0x0011fe28]
                                                #; (f:lsu) ft2  <-- 25.0
      0x80000ae4 fadd.d  ft1, ft1, ft2          #; ft1  = 300.0, ft2  = 25.0
      0x80000ae8 fld     ft2, 432(sp)           #; ft2  <~~ Doub[0x0011fe20]
                                                #; (f:lsu) ft2  <-- 26.0
                                                #; (f:fpu) ft1  <-- 325.0
      0x80000aec fadd.d  ft1, ft1, ft2          #; ft1  = 325.0, ft2  = 26.0
                                                #; (f:fpu) ft1  <-- 351.0
      0x80000af0 fld     ft2, 424(sp)           #; ft2  <~~ Doub[0x0011fe18]
                                                #; (f:lsu) ft2  <-- 27.0
      0x80000af4 fadd.d  ft1, ft1, ft2          #; ft1  = 351.0, ft2  = 27.0
      0x80000af8 fld     ft2, 416(sp)           #; ft2  <~~ Doub[0x0011fe10]
                                                #; (f:lsu) ft2  <-- 28.0
                                                #; (f:fpu) ft1  <-- 378.0
      0x80000afc fadd.d  ft1, ft1, ft2          #; ft1  = 378.0, ft2  = 28.0
                                                #; (f:fpu) ft1  <-- 406.0
      0x80000b00 fld     ft2, 408(sp)           #; ft2  <~~ Doub[0x0011fe08]
                                                #; (f:lsu) ft2  <-- 29.0
      0x80000b04 fadd.d  ft1, ft1, ft2          #; ft1  = 406.0, ft2  = 29.0
      0x80000b08 fld     ft2, 400(sp)           #; ft2  <~~ Doub[0x0011fe00]
                                                #; (f:lsu) ft2  <-- 30.0
                                                #; (f:fpu) ft1  <-- 435.0
      0x80000b0c fadd.d  ft1, ft1, ft2          #; ft1  = 435.0, ft2  = 30.0
                                                #; (f:fpu) ft1  <-- 465.0
      0x80000b10 fld     ft2, 392(sp)           #; ft2  <~~ Doub[0x0011fdf8]
                                                #; (f:lsu) ft2  <-- 31.0
      0x80000b14 fadd.d  ft1, ft1, ft2          #; ft1  = 465.0, ft2  = 31.0
      0x80000b18 fld     ft2, 384(sp)           #; ft2  <~~ Doub[0x0011fdf0]
                                                #; (f:lsu) ft2  <-- 32.0
                                                #; (f:fpu) ft1  <-- 496.0
      0x80000b1c fadd.d  ft1, ft1, ft2          #; ft1  = 496.0, ft2  = 32.0
                                                #; (f:fpu) ft1  <-- 528.0
      0x80000b20 fld     ft2, 376(sp)           #; ft2  <~~ Doub[0x0011fde8]
                                                #; (f:lsu) ft2  <-- 33.0
      0x80000b24 fadd.d  ft1, ft1, ft2          #; ft1  = 528.0, ft2  = 33.0
      0x80000b28 fld     ft2, 368(sp)           #; ft2  <~~ Doub[0x0011fde0]
                                                #; (f:lsu) ft2  <-- 34.0
                                                #; (f:fpu) ft1  <-- 561.0
      0x80000b2c fadd.d  ft1, ft1, ft2          #; ft1  = 561.0, ft2  = 34.0
                                                #; (f:fpu) ft1  <-- 595.0
      0x80000b30 fld     ft2, 360(sp)           #; ft2  <~~ Doub[0x0011fdd8]
                                                #; (f:lsu) ft2  <-- 35.0
      0x80000b34 fadd.d  ft1, ft1, ft2          #; ft1  = 595.0, ft2  = 35.0
      0x80000b38 fld     ft2, 352(sp)           #; ft2  <~~ Doub[0x0011fdd0]
                                                #; (f:lsu) ft2  <-- 36.0
                                                #; (f:fpu) ft1  <-- 630.0
      0x80000b3c fadd.d  ft1, ft1, ft2          #; ft1  = 630.0, ft2  = 36.0
                                                #; (f:fpu) ft1  <-- 666.0
      0x80000b40 fld     ft2, 344(sp)           #; ft2  <~~ Doub[0x0011fdc8]
                                                #; (f:lsu) ft2  <-- 37.0
      0x80000b44 fadd.d  ft1, ft1, ft2          #; ft1  = 666.0, ft2  = 37.0
      0x80000b48 fld     ft2, 336(sp)           #; ft2  <~~ Doub[0x0011fdc0]
                                                #; (f:lsu) ft2  <-- 38.0
                                                #; (f:fpu) ft1  <-- 703.0
      0x80000b4c fadd.d  ft1, ft1, ft2          #; ft1  = 703.0, ft2  = 38.0
                                                #; (f:fpu) ft1  <-- 741.0
      0x80000b50 fld     ft2, 328(sp)           #; ft2  <~~ Doub[0x0011fdb8]
                                                #; (f:lsu) ft2  <-- 39.0
      0x80000b54 fadd.d  ft1, ft1, ft2          #; ft1  = 741.0, ft2  = 39.0
      0x80000b58 fld     ft2, 320(sp)           #; ft2  <~~ Doub[0x0011fdb0]
                                                #; (f:lsu) ft2  <-- 40.0
                                                #; (f:fpu) ft1  <-- 780.0
      0x80000b5c fadd.d  ft1, ft1, ft2          #; ft1  = 780.0, ft2  = 40.0
                                                #; (f:fpu) ft1  <-- 820.0
      0x80000b60 fld     ft2, 312(sp)           #; ft2  <~~ Doub[0x0011fda8]
                                                #; (f:lsu) ft2  <-- 41.0
      0x80000b64 fadd.d  ft1, ft1, ft2          #; ft1  = 820.0, ft2  = 41.0
      0x80000b68 fld     ft2, 304(sp)           #; ft2  <~~ Doub[0x0011fda0]
                                                #; (f:lsu) ft2  <-- 42.0
                                                #; (f:fpu) ft1  <-- 861.0
      0x80000b6c fadd.d  ft1, ft1, ft2          #; ft1  = 861.0, ft2  = 42.0
                                                #; (f:fpu) ft1  <-- 903.0
      0x80000b70 fld     ft2, 296(sp)           #; ft2  <~~ Doub[0x0011fd98]
                                                #; (f:lsu) ft2  <-- 43.0
      0x80000b74 fadd.d  ft1, ft1, ft2          #; ft1  = 903.0, ft2  = 43.0
      0x80000b78 fld     ft2, 288(sp)           #; ft2  <~~ Doub[0x0011fd90]
                                                #; (f:lsu) ft2  <-- 44.0
                                                #; (f:fpu) ft1  <-- 946.0
      0x80000b7c fadd.d  ft1, ft1, ft2          #; ft1  = 946.0, ft2  = 44.0
                                                #; (f:fpu) ft1  <-- 990.0
      0x80000b80 fld     ft2, 280(sp)           #; ft2  <~~ Doub[0x0011fd88]
                                                #; (f:lsu) ft2  <-- 45.0
      0x80000b84 fadd.d  ft1, ft1, ft2          #; ft1  = 990.0, ft2  = 45.0
      0x80000b88 fld     ft2, 272(sp)           #; ft2  <~~ Doub[0x0011fd80]
                                                #; (f:lsu) ft2  <-- 46.0
                                                #; (f:fpu) ft1  <-- 1035.0
      0x80000b8c fadd.d  ft1, ft1, ft2          #; ft1  = 1035.0, ft2  = 46.0
                                                #; (f:fpu) ft1  <-- 1081.0
      0x80000b90 fld     ft2, 264(sp)           #; ft2  <~~ Doub[0x0011fd78]
                                                #; (f:lsu) ft2  <-- 47.0
      0x80000b94 fadd.d  ft1, ft1, ft2          #; ft1  = 1081.0, ft2  = 47.0
      0x80000b98 fld     ft2, 256(sp)           #; ft2  <~~ Doub[0x0011fd70]
                                                #; (f:lsu) ft2  <-- 48.0
                                                #; (f:fpu) ft1  <-- 1128.0
      0x80000b9c fadd.d  ft1, ft1, ft2          #; ft1  = 1128.0, ft2  = 48.0
                                                #; (f:fpu) ft1  <-- 1176.0
      0x80000ba0 fld     ft2, 248(sp)           #; ft2  <~~ Doub[0x0011fd68]
                                                #; (f:lsu) ft2  <-- 49.0
      0x80000ba4 fadd.d  ft1, ft1, ft2          #; ft1  = 1176.0, ft2  = 49.0
      0x80000ba8 fld     ft2, 240(sp)           #; ft2  <~~ Doub[0x0011fd60]
                                                #; (f:lsu) ft2  <-- 50.0
                                                #; (f:fpu) ft1  <-- 1225.0
      0x80000bac fadd.d  ft1, ft1, ft2          #; ft1  = 1225.0, ft2  = 50.0
                                                #; (f:fpu) ft1  <-- 1275.0
      0x80000bb0 fld     ft2, 232(sp)           #; ft2  <~~ Doub[0x0011fd58]
                                                #; (f:lsu) ft2  <-- 51.0
      0x80000bb4 fadd.d  ft1, ft1, ft2          #; ft1  = 1275.0, ft2  = 51.0
      0x80000bb8 fld     ft2, 224(sp)           #; ft2  <~~ Doub[0x0011fd50]
                                                #; (f:lsu) ft2  <-- 52.0
                                                #; (f:fpu) ft1  <-- 1326.0
      0x80000bbc fadd.d  ft1, ft1, ft2          #; ft1  = 1326.0, ft2  = 52.0
                                                #; (f:fpu) ft1  <-- 1378.0
      0x80000bc0 fadd.d  ft1, ft1, ft4          #; ft1  = 1378.0, ft4  = 53.0
                                                #; (f:fpu) ft1  <-- 1431.0
      0x80000bc4 fadd.d  ft1, ft1, ft5          #; ft1  = 1431.0, ft5  = 54.0
                                                #; (f:fpu) ft1  <-- 1485.0
      0x80000bc8 fadd.d  ft1, ft1, ft6          #; ft1  = 1485.0, ft6  = 55.0
                                                #; (f:fpu) ft1  <-- 1540.0
      0x80000bcc fadd.d  ft1, ft1, ft7          #; ft1  = 1540.0, ft7  = 56.0
                                                #; (f:fpu) ft1  <-- 1596.0
      0x80000bd0 fadd.d  ft1, ft1, fa0          #; ft1  = 1596.0, fa0  = 57.0
                                                #; (f:fpu) ft1  <-- 1653.0
      0x80000bd4 fadd.d  ft1, ft1, fa1          #; ft1  = 1653.0, fa1  = 58.0
                                                #; (f:fpu) ft1  <-- 1711.0
      0x80000bd8 fadd.d  ft1, ft1, fa2          #; ft1  = 1711.0, fa2  = 59.0
                                                #; (f:fpu) ft1  <-- 1770.0
      0x80000bdc fadd.d  ft1, ft1, fa3          #; ft1  = 1770.0, fa3  = 60.0
                                                #; (f:fpu) ft1  <-- 1830.0
      0x80000be0 fadd.d  ft1, ft1, fa4          #; ft1  = 1830.0, fa4  = 61.0
                                                #; (f:fpu) ft1  <-- 1891.0
      0x80000be4 fadd.d  ft1, ft1, fa5          #; ft1  = 1891.0, fa5  = 62.0
                                                #; (f:fpu) ft1  <-- 1953.0
      0x80000be8 fadd.d  ft1, ft1, fa6          #; ft1  = 1953.0, fa6  = 63.0
                                                #; (f:fpu) ft1  <-- 2016.0
      0x80000bec fadd.d  ft1, ft1, fa7          #; ft1  = 2016.0, fa7  = 64.0
                                                #; (f:fpu) ft1  <-- 2080.0
      0x80000bf0 fadd.d  ft1, ft1, ft8          #; ft1  = 2080.0, ft8  = 65.0
                                                #; (f:fpu) ft1  <-- 2145.0
      0x80000bf4 fadd.d  ft1, ft1, ft9          #; ft1  = 2145.0, ft9  = 66.0
                                                #; (f:fpu) ft1  <-- 2211.0
      0x80000bf8 fadd.d  ft1, ft1, ft10         #; ft1  = 2211.0, ft10 = 67.0
                                                #; (f:fpu) ft1  <-- 2278.0
      0x80000bfc fadd.d  ft1, ft1, ft11         #; ft1  = 2278.0, ft11 = 68.0
                                                #; (f:fpu) ft1  <-- 2346.0
      0x80000c00 fadd.d  ft1, ft1, fs0          #; ft1  = 2346.0, fs0  = 69.0
                                                #; (f:fpu) ft1  <-- 2415.0
      0x80000c04 fadd.d  ft1, ft1, fs1          #; ft1  = 2415.0, fs1  = 70.0
                                                #; (f:fpu) ft1  <-- 2485.0
      0x80000c08 fadd.d  ft1, ft1, fs2          #; ft1  = 2485.0, fs2  = 71.0
                                                #; (f:fpu) ft1  <-- 2556.0
      0x80000c0c fadd.d  ft1, ft1, fs3          #; ft1  = 2556.0, fs3  = 72.0
                                                #; (f:fpu) ft1  <-- 2628.0
      0x80000c10 fadd.d  ft1, ft1, fs4          #; ft1  = 2628.0, fs4  = 73.0
                                                #; (f:fpu) ft1  <-- 2701.0
      0x80000c14 fadd.d  ft1, ft1, fs5          #; ft1  = 2701.0, fs5  = 74.0
                                                #; (f:fpu) ft1  <-- 2775.0
      0x80000c18 fadd.d  ft1, ft1, fs6          #; ft1  = 2775.0, fs6  = 75.0
                                                #; (f:fpu) ft1  <-- 2850.0
      0x80000c1c fadd.d  ft1, ft1, fs7          #; ft1  = 2850.0, fs7  = 76.0
                                                #; (f:fpu) ft1  <-- 2926.0
      0x80000c20 fadd.d  ft1, ft1, fs8          #; ft1  = 2926.0, fs8  = 77.0
                                                #; (f:fpu) ft1  <-- 3003.0
      0x80000c24 fadd.d  ft1, ft1, fs9          #; ft1  = 3003.0, fs9  = 78.0
                                                #; (f:fpu) ft1  <-- 3081.0
      0x80000c28 fadd.d  ft1, ft1, fs10         #; ft1  = 3081.0, fs10 = 79.0
                                                #; (f:fpu) ft1  <-- 3160.0
      0x80000c2c fadd.d  ft1, ft1, fs11         #; ft1  = 3160.0, fs11 = 80.0
      0x80000c30 fld     ft2, 216(sp)           #; ft2  <~~ Doub[0x0011fd48]
                                                #; (f:lsu) ft2  <-- 81.0
                                                #; (f:fpu) ft1  <-- 3240.0
      0x80000c34 fadd.d  ft1, ft1, ft2          #; ft1  = 3240.0, ft2  = 81.0
      0x80000c38 fld     ft2, 208(sp)           #; ft2  <~~ Doub[0x0011fd40]
                                                #; (f:lsu) ft2  <-- 82.0
                                                #; (f:fpu) ft1  <-- 3321.0
      0x80000c3c fadd.d  ft1, ft1, ft2          #; ft1  = 3321.0, ft2  = 82.0
      0x80000c40 fld     ft2, 200(sp)           #; ft2  <~~ Doub[0x0011fd38]
                                                #; (f:lsu) ft2  <-- 83.0
                                                #; (f:fpu) ft1  <-- 3403.0
      0x80000c44 fadd.d  ft1, ft1, ft2          #; ft1  = 3403.0, ft2  = 83.0
      0x80000c48 fld     ft2, 192(sp)           #; ft2  <~~ Doub[0x0011fd30]
                                                #; (f:lsu) ft2  <-- 84.0
                                                #; (f:fpu) ft1  <-- 3486.0
      0x80000c4c fadd.d  ft1, ft1, ft2          #; ft1  = 3486.0, ft2  = 84.0
      0x80000c50 fld     ft2, 184(sp)           #; ft2  <~~ Doub[0x0011fd28]
                                                #; (f:lsu) ft2  <-- 85.0
                                                #; (f:fpu) ft1  <-- 3570.0
      0x80000c54 fadd.d  ft1, ft1, ft2          #; ft1  = 3570.0, ft2  = 85.0
      0x80000c58 fld     ft2, 176(sp)           #; ft2  <~~ Doub[0x0011fd20]
                                                #; (f:lsu) ft2  <-- 86.0
                                                #; (f:fpu) ft1  <-- 3655.0
      0x80000c5c fadd.d  ft1, ft1, ft2          #; ft1  = 3655.0, ft2  = 86.0
      0x80000c60 fld     ft2, 168(sp)           #; ft2  <~~ Doub[0x0011fd18]
                                                #; (f:lsu) ft2  <-- 87.0
                                                #; (f:fpu) ft1  <-- 3741.0
      0x80000c64 fadd.d  ft1, ft1, ft2          #; ft1  = 3741.0, ft2  = 87.0
      0x80000c68 fld     ft2, 160(sp)           #; ft2  <~~ Doub[0x0011fd10]
                                                #; (f:lsu) ft2  <-- 88.0
                                                #; (f:fpu) ft1  <-- 3828.0
      0x80000c6c fadd.d  ft1, ft1, ft2          #; ft1  = 3828.0, ft2  = 88.0
      0x80000c70 fld     ft2, 152(sp)           #; ft2  <~~ Doub[0x0011fd08]
                                                #; (f:lsu) ft2  <-- 89.0
                                                #; (f:fpu) ft1  <-- 3916.0
      0x80000c74 fadd.d  ft1, ft1, ft2          #; ft1  = 3916.0, ft2  = 89.0
      0x80000c78 fld     ft2, 144(sp)           #; ft2  <~~ Doub[0x0011fd00]
                                                #; (f:lsu) ft2  <-- 90.0
                                                #; (f:fpu) ft1  <-- 4005.0
      0x80000c7c fadd.d  ft1, ft1, ft2          #; ft1  = 4005.0, ft2  = 90.0
      0x80000c80 fld     ft2, 136(sp)           #; ft2  <~~ Doub[0x0011fcf8]
                                                #; (f:lsu) ft2  <-- 91.0
                                                #; (f:fpu) ft1  <-- 4095.0
      0x80000c84 fadd.d  ft1, ft1, ft2          #; ft1  = 4095.0, ft2  = 91.0
      0x80000c88 fld     ft2, 128(sp)           #; ft2  <~~ Doub[0x0011fcf0]
                                                #; (f:lsu) ft2  <-- 92.0
                                                #; (f:fpu) ft1  <-- 4186.0
      0x80000c8c fadd.d  ft1, ft1, ft2          #; ft1  = 4186.0, ft2  = 92.0
      0x80000c90 fld     ft2, 120(sp)           #; ft2  <~~ Doub[0x0011fce8]
                                                #; (f:lsu) ft2  <-- 93.0
                                                #; (f:fpu) ft1  <-- 4278.0
      0x80000c94 fadd.d  ft1, ft1, ft2          #; ft1  = 4278.0, ft2  = 93.0
      0x80000c98 fld     ft2, 112(sp)           #; ft2  <~~ Doub[0x0011fce0]
                                                #; (f:lsu) ft2  <-- 94.0
                                                #; (f:fpu) ft1  <-- 4371.0
      0x80000c9c fadd.d  ft1, ft1, ft2          #; ft1  = 4371.0, ft2  = 94.0
                                                #; (f:fpu) ft1  <-- 4465.0
      0x80000ca0 fld     ft2, 104(sp)           #; ft2  <~~ Doub[0x0011fcd8]
                                                #; (f:lsu) ft2  <-- 95.0
      0x80000ca4 fadd.d  ft1, ft1, ft2          #; ft1  = 4465.0, ft2  = 95.0
      0x80000ca8 fld     ft2, 96(sp)            #; ft2  <~~ Doub[0x0011fcd0]
                                                #; (f:lsu) ft2  <-- 96.0
                                                #; (f:fpu) ft1  <-- 4560.0
      0x80000cac fadd.d  ft1, ft1, ft2          #; ft1  = 4560.0, ft2  = 96.0
                                                #; (f:fpu) ft1  <-- 4656.0
      0x80000cb0 fld     ft2, 88(sp)            #; ft2  <~~ Doub[0x0011fcc8]
                                                #; (f:lsu) ft2  <-- 97.0
      0x80000cb4 fadd.d  ft1, ft1, ft2          #; ft1  = 4656.0, ft2  = 97.0
      0x80000cb8 fld     ft2, 80(sp)            #; ft2  <~~ Doub[0x0011fcc0]
                                                #; (f:lsu) ft2  <-- 98.0
                                                #; (f:fpu) ft1  <-- 4753.0
      0x80000cbc fadd.d  ft1, ft1, ft2          #; ft1  = 4753.0, ft2  = 98.0
                                                #; (f:fpu) ft1  <-- 4851.0
      0x80000cc0 fld     ft2, 72(sp)            #; ft2  <~~ Doub[0x0011fcb8]
                                                #; (f:lsu) ft2  <-- 99.0
      0x80000cc4 fadd.d  ft1, ft1, ft2          #; ft1  = 4851.0, ft2  = 99.0
      0x80000cc8 fld     ft2, 64(sp)            #; ft2  <~~ Doub[0x0011fcb0]
                                                #; (f:lsu) ft2  <-- 100.0
                                                #; (f:fpu) ft1  <-- 4950.0
      0x80000ccc fadd.d  ft1, ft1, ft2          #; ft1  = 4950.0, ft2  = 100.0
                                                #; (f:fpu) ft1  <-- 5050.0
      0x80000cd0 fld     ft2, 56(sp)            #; ft2  <~~ Doub[0x0011fca8]
                                                #; (f:lsu) ft2  <-- 101.0
      0x80000cd4 fadd.d  ft1, ft1, ft2          #; ft1  = 5050.0, ft2  = 101.0
      0x80000cd8 fld     ft2, 48(sp)            #; ft2  <~~ Doub[0x0011fca0]
                                                #; (f:lsu) ft2  <-- 102.0
                                                #; (f:fpu) ft1  <-- 5151.0
      0x80000cdc fadd.d  ft1, ft1, ft2          #; ft1  = 5151.0, ft2  = 102.0
                                                #; (f:fpu) ft1  <-- 5253.0
      0x80000ce0 fld     ft2, 40(sp)            #; ft2  <~~ Doub[0x0011fc98]
                                                #; (f:lsu) ft2  <-- 103.0
      0x80000ce4 fadd.d  ft1, ft1, ft2          #; ft1  = 5253.0, ft2  = 103.0
      0x80000ce8 fld     ft2, 32(sp)            #; ft2  <~~ Doub[0x0011fc90]
                                                #; (f:lsu) ft2  <-- 104.0
                                                #; (f:fpu) ft1  <-- 5356.0
      0x80000cec fadd.d  ft1, ft1, ft2          #; ft1  = 5356.0, ft2  = 104.0
                                                #; (f:fpu) ft1  <-- 5460.0
      0x80000cf0 fld     ft2, 24(sp)            #; ft2  <~~ Doub[0x0011fc88]
                                                #; (f:lsu) ft2  <-- 105.0
      0x80000cf4 fadd.d  ft1, ft1, ft2          #; ft1  = 5460.0, ft2  = 105.0
      0x80000cf8 fld     ft2, 16(sp)            #; ft2  <~~ Doub[0x0011fc80]
                                                #; (f:lsu) ft2  <-- 106.0
                                                #; (f:fpu) ft1  <-- 5565.0
      0x80000cfc fadd.d  ft1, ft1, ft2          #; ft1  = 5565.0, ft2  = 106.0
                                                #; (f:fpu) ft1  <-- 5671.0
      0x80000d00 fld     ft2, 8(sp)             #; ft2  <~~ Doub[0x0011fc78]
                                                #; (f:lsu) ft2  <-- 107.0
      0x80000d04 fadd.d  ft1, ft1, ft2          #; ft1  = 5671.0, ft2  = 107.0
      0x80000d08 fld     ft2, 0(sp)             #; ft2  <~~ Doub[0x0011fc70]
                                                #; (f:lsu) ft2  <-- 108.0
                                                #; (f:fpu) ft1  <-- 5778.0
      0x80000d0c fadd.d  ft1, ft1, ft2          #; ft1  = 5778.0, ft2  = 108.0
                                                #; (f:fpu) ft1  <-- 5886.0
; main (test_access.c:46)
      0x80000d10 fsub.d  ft0, ft1, ft0          #; ft1  = 5886.0, ft0  = 5886.0
; main (test_access.c:49)
      0x80000d1c lw      a2, 640(sp)            #; sp  = 0x0011fc70, a2  <~~ Word[0x0011fef0]
                                                #; (f:fpu) ft0  <-- 0.0
                                                #; (lsu) a2  <-- 0
      0x80000d14 fsgnjx.d fs0, ft0, ft0         #; ft0  = 0.0, ft0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x80000d18 fsd     fs0, 640(sp)           #; 0.0 ~~> Doub[0x0011fef0]
      0x80000d20 lw      a3, 644(sp)            #; sp  = 0x0011fc70, a3  <~~ Word[0x0011fef4]
      0x80000d24 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002d24
      0x80000d28 addi    a0, a0, 913            #; a0  = 0x80002d24, (wrb) a0  <-- 0x800030b5
      0x80000d2c auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000d2c
                                                #; (lsu) a3  <-- 0
      0x80000d30 jalr    ra, ra, 84             #; ra  = 0x80000d2c, (wrb) ra  <-- 0x80000d34, goto 0x80000d80
; printf_ (printf.c:863)
      0x80000d80 addi    sp, sp, -48            #; sp  = 0x0011fc70, (wrb) sp  <-- 0x0011fc40
      0x80000d84 sw      ra, 12(sp)             #; sp  = 0x0011fc40, 0x80000d34 ~~> Word[0x0011fc4c]
      0x80000d88 mv      t0, a0                 #; a0  = 0x800030b5, (wrb) t0  <-- 0x800030b5
      0x80000d8c sw      a7, 44(sp)             #; sp  = 0x0011fc40, 0xffff0000 ~~> Word[0x0011fc6c]
      0x80000d90 sw      a6, 40(sp)             #; sp  = 0x0011fc40, 0x00120000 ~~> Word[0x0011fc68]
      0x80000d94 sw      a5, 36(sp)             #; sp  = 0x0011fc40, 0x0011ff70 ~~> Word[0x0011fc64]
      0x80000d98 sw      a4, 32(sp)             #; sp  = 0x0011fc40, 0x0001df30 ~~> Word[0x0011fc60]
      0x80000d9c sw      a3, 28(sp)             #; sp  = 0x0011fc40, 0 ~~> Word[0x0011fc5c]
      0x80000da0 sw      a2, 24(sp)             #; sp  = 0x0011fc40, 0 ~~> Word[0x0011fc58]
      0x80000da4 sw      a1, 20(sp)             #; sp  = 0x0011fc40, 0 ~~> Word[0x0011fc54]
      0x80000da8 addi    a0, sp, 20             #; sp  = 0x0011fc40, (wrb) a0  <-- 0x0011fc54
; printf_ (printf.c:865)
      0x80000dac sw      a0, 8(sp)              #; sp  = 0x0011fc40, 0x0011fc54 ~~> Word[0x0011fc48]
; printf_ (printf.c:867)
      0x80000db0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001db0
      0x80000db4 addi    a0, a0, -988           #; a0  = 0x80001db0, (wrb) a0  <-- 0x800019d4
      0x80000db8 addi    a1, sp, 7              #; sp  = 0x0011fc40, (wrb) a1  <-- 0x0011fc47
      0x80000dbc li      a2, -1                 #; (wrb) a2  <-- -1
      0x80000dc0 addi    a4, sp, 20             #; sp  = 0x0011fc40, (wrb) a4  <-- 0x0011fc54
      0x80000dc4 mv      a3, t0                 #; t0  = 0x800030b5, (wrb) a3  <-- 0x800030b5
      0x80000dc8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000dc8
      0x80000dcc jalr    ra, ra, 20             #; ra  = 0x80000dc8, (wrb) ra  <-- 0x80000dd0, goto 0x80000ddc
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000ddc addi    sp, sp, -112           #; sp  = 0x0011fc40, (wrb) sp  <-- 0x0011fbd0
      0x80000de0 sw      ra, 108(sp)            #; sp  = 0x0011fbd0, 0x80000dd0 ~~> Word[0x0011fc3c]
      0x80000de4 sw      s0, 104(sp)            #; sp  = 0x0011fbd0, 0 ~~> Word[0x0011fc38]
      0x80000de8 sw      s1, 100(sp)            #; sp  = 0x0011fbd0, 0 ~~> Word[0x0011fc34]
      0x80000dec sw      s2, 96(sp)             #; sp  = 0x0011fbd0, 0 ~~> Word[0x0011fc30]
      0x80000df0 sw      s3, 92(sp)             #; sp  = 0x0011fbd0, 0 ~~> Word[0x0011fc2c]
      0x80000df4 sw      s4, 88(sp)             #; sp  = 0x0011fbd0, 0 ~~> Word[0x0011fc28]
      0x80000df8 sw      s5, 84(sp)             #; sp  = 0x0011fbd0, 0 ~~> Word[0x0011fc24]
      0x80000dfc sw      s6, 80(sp)             #; sp  = 0x0011fbd0, 0 ~~> Word[0x0011fc20]
      0x80000e00 sw      s7, 76(sp)             #; sp  = 0x0011fbd0, 0 ~~> Word[0x0011fc1c]
      0x80000e04 sw      s8, 72(sp)             #; sp  = 0x0011fbd0, 0 ~~> Word[0x0011fc18]
      0x80000e08 sw      s9, 68(sp)             #; sp  = 0x0011fbd0, 0 ~~> Word[0x0011fc14]
      0x80000e0c sw      s10, 64(sp)            #; sp  = 0x0011fbd0, 0 ~~> Word[0x0011fc10]
      0x80000e10 sw      s11, 60(sp)            #; sp  = 0x0011fbd0, 0 ~~> Word[0x0011fc0c]
      0x80000e14 mv      s3, a4                 #; a4  = 0x0011fc54, (wrb) s3  <-- 0x0011fc54
      0x80000e18 mv      s0, a3                 #; a3  = 0x800030b5, (wrb) s0  <-- 0x800030b5
      0x80000e1c mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x80000e20 mv      s4, a1                 #; a1  = 0x0011fc47, (wrb) s4  <-- 0x0011fc47
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x80000e24 beqz    a1, pc + 12            #; a1  = 0x0011fc47, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e28 mv      s2, a0                 #; a0  = 0x800019d4, (wrb) s2  <-- 0x800019d4
      0x80000e2c j       pc + 0xc               #; goto 0x80000e38
      0x80000e38 li      s8, 0                  #; (wrb) s8  <-- 0
      0x80000e3c li      s6, 37                 #; (wrb) s6  <-- 37
      0x80000e40 li      s11, 16                #; (wrb) s11 <-- 16
      0x80000e44 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000e48 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000e4c addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000e50 sw      a0, 24(sp)             #; sp  = 0x0011fbd0, 2048 ~~> Word[0x0011fbe8]
      0x80000e54 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000e58 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000e5c sw      a0, 16(sp)             #; sp  = 0x0011fbd0, 65535 ~~> Word[0x0011fbe0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e60 addi    s10, s0, 2             #; s0  = 0x800030b5, (wrb) s10 <-- 0x800030b7
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e64 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000e68 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e6c lbu     a0, 0(s0)              #; s0  = 0x800030b5, a0  <~~ Byte[0x800030b5]
                                                #; (lsu) a0  <-- 101
      0x80000e70 beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x80000e74 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000e78 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000e7c mv      a1, s4                 #; s4  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
      0x80000e80 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000e84 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e88 jalr    s2                     #; s2  = 0x800019d4, (wrb) ra  <-- 0x80000e8c, goto 0x800019d4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019d4 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
      0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
      0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 0
      0x800019f4 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 1 ~~> Word[0x8000340c]
      0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 0, (wrb) a4  <-- 0x8000340c
      0x80001a00 sb      a0, 72(a4)             #; a4  = 0x8000340c, 101 ~~> Byte[0x80003454]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 1
      0x80001a08 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x80001a0c snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x80001a10 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x80001a14 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a7c ret                            #; ra  = 0x80000e8c, goto 0x80000e8c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000e8c addi    s0, s0, 1              #; s0  = 0x800030b5, (wrb) s0  <-- 0x800030b6
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000e90 addi    s10, s10, 1            #; s10 = 0x800030b7, (wrb) s10 <-- 0x800030b8
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e94 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e98 lbu     a0, 0(s0)              #; s0  = 0x800030b6, a0  <~~ Byte[0x800030b6]
                                                #; (lsu) a0  <-- 114
      0x80000e9c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000e74
      0x80000e74 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000e78 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000e7c mv      a1, s4                 #; s4  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
      0x80000e80 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000e84 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e88 jalr    s2                     #; s2  = 0x800019d4, (wrb) ra  <-- 0x80000e8c, goto 0x800019d4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019d4 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
      0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
      0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 1
      0x800019f4 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 2 ~~> Word[0x8000340c]
      0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 1, (wrb) a4  <-- 0x8000340d
      0x80001a00 sb      a0, 72(a4)             #; a4  = 0x8000340d, 114 ~~> Byte[0x80003455]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 2
      0x80001a08 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x80001a0c snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x80001a10 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001a14 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a7c ret                            #; ra  = 0x80000e8c, goto 0x80000e8c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000e8c addi    s0, s0, 1              #; s0  = 0x800030b6, (wrb) s0  <-- 0x800030b7
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000e90 addi    s10, s10, 1            #; s10 = 0x800030b8, (wrb) s10 <-- 0x800030b9
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e94 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e98 lbu     a0, 0(s0)              #; s0  = 0x800030b7, a0  <~~ Byte[0x800030b7]
                                                #; (lsu) a0  <-- 114
      0x80000e9c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000e74
      0x80000e74 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000e78 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000e7c mv      a1, s4                 #; s4  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
      0x80000e80 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000e84 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e88 jalr    s2                     #; s2  = 0x800019d4, (wrb) ra  <-- 0x80000e8c, goto 0x800019d4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019d4 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
      0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
      0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 2
      0x800019f4 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 3 ~~> Word[0x8000340c]
      0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 2, (wrb) a4  <-- 0x8000340e
      0x80001a00 sb      a0, 72(a4)             #; a4  = 0x8000340e, 114 ~~> Byte[0x80003456]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 3
      0x80001a08 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x80001a0c snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x80001a10 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001a14 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a7c ret                            #; ra  = 0x80000e8c, goto 0x80000e8c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000e8c addi    s0, s0, 1              #; s0  = 0x800030b7, (wrb) s0  <-- 0x800030b8
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000e90 addi    s10, s10, 1            #; s10 = 0x800030b9, (wrb) s10 <-- 0x800030ba
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e94 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e98 lbu     a0, 0(s0)              #; s0  = 0x800030b8, a0  <~~ Byte[0x800030b8]
                                                #; (lsu) a0  <-- 111
      0x80000e9c bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000e74
      0x80000e74 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000e78 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000e7c mv      a1, s4                 #; s4  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
      0x80000e80 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000e84 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e88 jalr    s2                     #; s2  = 0x800019d4, (wrb) ra  <-- 0x80000e8c, goto 0x800019d4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019d4 beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
      0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
      0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 3
      0x800019f4 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 4 ~~> Word[0x8000340c]
      0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 3, (wrb) a4  <-- 0x8000340f
      0x80001a00 sb      a0, 72(a4)             #; a4  = 0x8000340f, 111 ~~> Byte[0x80003457]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 4
      0x80001a08 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x80001a0c snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x80001a10 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x80001a14 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a7c ret                            #; ra  = 0x80000e8c, goto 0x80000e8c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000e8c addi    s0, s0, 1              #; s0  = 0x800030b8, (wrb) s0  <-- 0x800030b9
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000e90 addi    s10, s10, 1            #; s10 = 0x800030ba, (wrb) s10 <-- 0x800030bb
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e94 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e98 lbu     a0, 0(s0)              #; s0  = 0x800030b9, a0  <~~ Byte[0x800030b9]
                                                #; (lsu) a0  <-- 114
      0x80000e9c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000e74
      0x80000e74 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000e78 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000e7c mv      a1, s4                 #; s4  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
      0x80000e80 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000e84 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e88 jalr    s2                     #; s2  = 0x800019d4, (wrb) ra  <-- 0x80000e8c, goto 0x800019d4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019d4 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
      0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
      0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 4
      0x800019f4 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 5 ~~> Word[0x8000340c]
      0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 4, (wrb) a4  <-- 0x80003410
      0x80001a00 sb      a0, 72(a4)             #; a4  = 0x80003410, 114 ~~> Byte[0x80003458]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 5
      0x80001a08 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x80001a0c snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x80001a10 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001a14 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a7c ret                            #; ra  = 0x80000e8c, goto 0x80000e8c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000e8c addi    s0, s0, 1              #; s0  = 0x800030b9, (wrb) s0  <-- 0x800030ba
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000e90 addi    s10, s10, 1            #; s10 = 0x800030bb, (wrb) s10 <-- 0x800030bc
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e94 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e98 lbu     a0, 0(s0)              #; s0  = 0x800030ba, a0  <~~ Byte[0x800030ba]
                                                #; (lsu) a0  <-- 32
      0x80000e9c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000e74
      0x80000e74 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000e78 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000e7c mv      a1, s4                 #; s4  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
      0x80000e80 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000e84 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e88 jalr    s2                     #; s2  = 0x800019d4, (wrb) ra  <-- 0x80000e8c, goto 0x800019d4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019d4 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
      0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
      0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 5
      0x800019f4 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 6 ~~> Word[0x8000340c]
      0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 5, (wrb) a4  <-- 0x80003411
      0x80001a00 sb      a0, 72(a4)             #; a4  = 0x80003411, 32 ~~> Byte[0x80003459]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 6
      0x80001a08 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x80001a0c snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x80001a10 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001a14 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a7c ret                            #; ra  = 0x80000e8c, goto 0x80000e8c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000e8c addi    s0, s0, 1              #; s0  = 0x800030ba, (wrb) s0  <-- 0x800030bb
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000e90 addi    s10, s10, 1            #; s10 = 0x800030bc, (wrb) s10 <-- 0x800030bd
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e94 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e98 lbu     a0, 0(s0)              #; s0  = 0x800030bb, a0  <~~ Byte[0x800030bb]
                                                #; (lsu) a0  <-- 61
      0x80000e9c bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000e74
      0x80000e74 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000e78 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000e7c mv      a1, s4                 #; s4  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
      0x80000e80 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000e84 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e88 jalr    s2                     #; s2  = 0x800019d4, (wrb) ra  <-- 0x80000e8c, goto 0x800019d4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019d4 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
      0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
      0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 6
      0x800019f4 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 7 ~~> Word[0x8000340c]
      0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 6, (wrb) a4  <-- 0x80003412
      0x80001a00 sb      a0, 72(a4)             #; a4  = 0x80003412, 61 ~~> Byte[0x8000345a]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 7
      0x80001a08 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x80001a0c snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x80001a10 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x80001a14 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a7c ret                            #; ra  = 0x80000e8c, goto 0x80000e8c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000e8c addi    s0, s0, 1              #; s0  = 0x800030bb, (wrb) s0  <-- 0x800030bc
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000e90 addi    s10, s10, 1            #; s10 = 0x800030bd, (wrb) s10 <-- 0x800030be
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e94 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e98 lbu     a0, 0(s0)              #; s0  = 0x800030bc, a0  <~~ Byte[0x800030bc]
                                                #; (lsu) a0  <-- 32
      0x80000e9c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000e74
      0x80000e74 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000e78 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000e7c mv      a1, s4                 #; s4  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
      0x80000e80 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000e84 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e88 jalr    s2                     #; s2  = 0x800019d4, (wrb) ra  <-- 0x80000e8c, goto 0x800019d4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019d4 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
      0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
      0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 7
      0x800019f4 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 8 ~~> Word[0x8000340c]
      0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 7, (wrb) a4  <-- 0x80003413
      0x80001a00 sb      a0, 72(a4)             #; a4  = 0x80003413, 32 ~~> Byte[0x8000345b]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 8
      0x80001a08 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x80001a0c snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x80001a10 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001a14 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a7c ret                            #; ra  = 0x80000e8c, goto 0x80000e8c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000e8c addi    s0, s0, 1              #; s0  = 0x800030bc, (wrb) s0  <-- 0x800030bd
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000e90 addi    s10, s10, 1            #; s10 = 0x800030be, (wrb) s10 <-- 0x800030bf
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e94 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e98 lbu     a0, 0(s0)              #; s0  = 0x800030bd, a0  <~~ Byte[0x800030bd]
                                                #; (lsu) a0  <-- 37
      0x80000e9c bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000e74
      0x80000e74 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000ea4
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000ea4 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ea8 j       pc + 0x10              #; goto 0x80000eb8
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000eb8 lbu     a0, -1(s10)            #; s10 = 0x800030bf, a0  <~~ Byte[0x800030be]
                                                #; (lsu) a0  <-- 102
      0x80000ebc addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000ec0 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000ef8
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000ef8 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000efc andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000f00 addi    a1, s10, -1            #; s10 = 0x800030bf, (wrb) a1  <-- 0x800030be
      0x80000f04 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000f08 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000f84
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000f84 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000f88 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000fd8
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000fd8 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000fdc mv      s10, a1                #; a1  = 0x800030be, (wrb) s10 <-- 0x800030be
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000fe0 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000fe4 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000fe8 j       pc + 0xc               #; goto 0x80000ff4
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000ff4 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000ff8 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000ffc slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80001000 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80001004 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80001008 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x8000106c
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x8000106c addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80001070 li      a2, 83                 #; (wrb) a2  <-- 83
      0x80001074 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001078 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x8000107c auipc   a2, 0x2                #; (wrb) a2  <-- 0x8000307c
      0x80001080 addi    a2, a2, 184            #; a2  = 0x8000307c, (wrb) a2  <-- 0x80003134
      0x80001084 add     a1, a1, a2             #; a1  = 260, a2  = 0x80003134, (wrb) a1  <-- 0x80003238
      0x80001088 lw      a2, 0(a1)              #; a1  = 0x80003238, a2  <~~ Word[0x80003238]
      0x8000108c li      a1, 8                  #; (wrb) a1  <-- 8
      0x80001090 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x800010c4
      0x80001094 jr      a2                     #; a2  = 0x800010c4, goto 0x800010c4
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x800010c4 li      a1, 70                 #; (wrb) a1  <-- 70
      0x800010c8 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x800010d0
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x800010d0 addi    a0, s3, 7              #; s3  = 0x0011fc54, (wrb) a0  <-- 0x0011fc5b
      0x800010d4 andi    a0, a0, -8             #; a0  = 0x0011fc5b, (wrb) a0  <-- 0x0011fc58
      0x800010dc addi    s3, a0, 8              #; a0  = 0x0011fc58, (wrb) s3  <-- 0x0011fc60
      0x800010d8 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011fc58]
                                                #; (f:lsu) fa0  <-- 0.0
      0x800010e0 mv      a0, s2                 #; s2  = 0x800019d4, (wrb) a0  <-- 0x800019d4
      0x800010e4 mv      a1, s4                 #; s4  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
      0x800010e8 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x800010ec mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800010f0 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x800010f4 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x800010f8 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x800010fc auipc   ra, 0x1                #; (wrb) ra  <-- 0x800020fc
      0x80001100 jalr    ra, ra, -1656          #; ra  = 0x800020fc, (wrb) ra  <-- 0x80001104, goto 0x80001a84
; _ftoa (printf.c:340)
      0x80001a84 addi    sp, sp, -112           #; sp  = 0x0011fbd0, (wrb) sp  <-- 0x0011fb60
      0x80001a88 sw      ra, 108(sp)            #; sp  = 0x0011fb60, 0x80001104 ~~> Word[0x0011fbcc]
      0x80001a8c sw      s0, 104(sp)            #; sp  = 0x0011fb60, 0 ~~> Word[0x0011fbc8]
      0x80001a90 sw      s1, 100(sp)            #; sp  = 0x0011fb60, 8 ~~> Word[0x0011fbc4]
      0x80001a94 sw      s2, 96(sp)             #; sp  = 0x0011fb60, 0x800019d4 ~~> Word[0x0011fbc0]
      0x80001a98 sw      s3, 92(sp)             #; sp  = 0x0011fb60, 0x0011fc60 ~~> Word[0x0011fbbc]
      0x80001a9c sw      s4, 88(sp)             #; sp  = 0x0011fb60, 0x0011fc47 ~~> Word[0x0011fbb8]
      0x80001aa0 sw      s5, 84(sp)             #; sp  = 0x0011fb60, -1 ~~> Word[0x0011fbb4]
      0x80001aa4 sw      s6, 80(sp)             #; sp  = 0x0011fb60, 0 ~~> Word[0x0011fbb0]
      0x80001aa8 sw      s7, 76(sp)             #; sp  = 0x0011fb60, 0 ~~> Word[0x0011fbac]
      0x80001aac sw      s8, 72(sp)             #; sp  = 0x0011fb60, 16 ~~> Word[0x0011fba8]
      0x80001ab0 sw      s9, 68(sp)             #; sp  = 0x0011fb60, 8 ~~> Word[0x0011fba4]
      0x80001ab4 sw      s10, 64(sp)            #; sp  = 0x0011fb60, 0x800030be ~~> Word[0x0011fba0]
      0x80001ab8 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fb98]
      0x80001abc fsd     fs1, 48(sp)            #; 70.0 ~~> Doub[0x0011fb90]
      0x80001ac4 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003ac4
      0x80001ac8 addi    s1, s1, -1892          #; s1  = 0x80003ac4, (wrb) s1  <-- 0x80003360
      0x80001ac0 fsd     fs2, 40(sp)            #; 71.0 ~~> Doub[0x0011fb88]
      0x80001acc fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003360]
; _ftoa (printf.c:351)
      0x80001ad4 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
; _ftoa (printf.c:0)
      0x80001ad8 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x80001adc mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x80001ad0 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
      0x80001ae0 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x80001ae4 mv      s6, a1                 #; a1  = 0x0011fc47, (wrb) s6  <-- 0x0011fc47
      0x80001ae8 mv      s7, a0                 #; a0  = 0x800019d4, (wrb) s7  <-- 0x800019d4
; _ftoa (printf.c:351)
      0x80001aec bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001bdc
; _ftoa (printf.c:0)
      0x80001bdc fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x80001be0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002be0
      0x80001be4 addi    a0, a0, 1928           #; a0  = 0x80002be0, (wrb) a0  <-- 0x80003368
      0x80001be8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003368]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x80001bec fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x80001bf0 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001c0c
; _ftoa (printf.c:0)
      0x80001c0c auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002c0c
      0x80001c10 addi    a0, a0, 1892           #; a0  = 0x80002c0c, (wrb) a0  <-- 0x80003370
      0x80001c18 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002c18
      0x80001c1c addi    a0, a0, 1888           #; a0  = 0x80002c18, (wrb) a0  <-- 0x80003378
      0x80001c14 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003370]
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
      0x80001c20 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003378]
; _ftoa (printf.c:358)
      0x80001c24 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
                                                #; (acc) a0  <-- 0x00b57533
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
      0x80001c28 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
                                                #; (acc) a0  <-- 0x00b57533
      0x80001c2c and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80001c30 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001d2c
; _ftoa (printf.c:374)
      0x80001d2c andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x80001d30 li      s8, 6                  #; (wrb) s8  <-- 6
      0x80001d34 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001d3c
; _ftoa (printf.c:0)
      0x80001d3c li      a0, 10                 #; (wrb) a0  <-- 10
; _ftoa (printf.c:378)
      0x80001d44 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001d7c
; _ftoa (printf.c:0)
      0x80001d40 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs2  <-- 0.0
      0x80001d7c li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x80001d80 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x80001d84 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002d84
      0x80001d88 addi    a1, a1, 1284           #; a1  = 0x80002d84, (wrb) a1  <-- 0x80003288
      0x80001d8c add     a0, a0, a1             #; a0  = 48, a1  = 0x80003288, (wrb) a0  <-- 0x800032b8
      0x80001d90 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800032b8]
; _ftoa (printf.c:383)
      0x80001d94 fcvt.w.d s1, fs2               #; fs2  = 0.0
; _ftoa (printf.c:384)
      0x80001d98 fcvt.d.w ft0, s1               #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80001d9c fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
                                                #; (f:lsu) ft1  <-- 1000000.0000000
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:0)
      0x80001da4 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002da4
      0x80001da8 addi    a0, a0, 1500           #; a0  = 0x80002da4, (wrb) a0  <-- 0x80003380
      0x80001da0 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
      0x80001dac fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003380], (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:385)
      0x80001db0 fcvt.wu.d a0, ft2              #; ft2  = 0.0
                                                #; (f:lsu) ft0  <-- 0.5
                                                #; (acc) gp  <-- 0xd21501d3
; _ftoa (printf.c:386)
      0x80001db4 fcvt.d.wu ft3, a0              #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80001db8 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:388)
      0x80001dbc fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x80001dc0 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001de0
; _ftoa (printf.c:396)
      0x80001de0 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
                                                #; (acc) s4  <-- 0x00059a63
      0x80001de4 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001df8
; _ftoa (printf.c:403)
      0x80001dfc beqz    s8, pc + 216           #; s8  = 6, not taken
      0x80001df8 fcvt.d.w fs1, zero             #; ac1  = 0
                                                #; (f:fpu) fs1  <-- 0.0
; _ftoa (printf.c:0)
      0x80001e00 li      a2, 0                  #; (wrb) a2  <-- 0
      0x80001e04 addi    a1, sp, 8              #; sp  = 0x0011fb60, (wrb) a1  <-- 0x0011fb68
; _ftoa (printf.c:414)
      0x80001e08 add     t1, a1, s0             #; a1  = 0x0011fb68, s0  = 0, (wrb) t1  <-- 0x0011fb68
      0x80001e0c li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001e10 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x80001e14 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80001e18 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80001e1c li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001e20 li      a7, 9                  #; (wrb) a7  <-- 9
      0x80001e24 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80001e28 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x80001e2c mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
      0x80001e30 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001e34 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001e38 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001e3c ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x80001e40 add     a5, t1, a2             #; t1  = 0x0011fb68, a2  = 0, (wrb) a5  <-- 0x0011fb68
      0x80001e44 sb      a3, 0(a5)              #; a5  = 0x0011fb68, 48 ~~> Byte[0x0011fb68]
; _ftoa (printf.c:417)
      0x80001e48 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80001e4c bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x80001e50 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x80001e54 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80001e58 li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001e5c sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x80001e60 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x80001e64 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x80001e68 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x80001e6c bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x80001e70 addi    a0, sp, 8              #; sp  = 0x0011fb60, (wrb) a0  <-- 0x0011fb68
; _ftoa (printf.c:422)
      0x80001e74 add     a0, a0, s0             #; a0  = 0x0011fb68, s0  = 0, (wrb) a0  <-- 0x0011fb68
      0x80001e78 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x80001e7c add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x80001e80 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x80001e84 li      a1, 31                 #; (wrb) a1  <-- 31
      0x80001e88 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x80001e8c add     a0, a0, a2             #; a0  = 0x0011fb68, a2  = 1, (wrb) a0  <-- 0x0011fb69
      0x80001e90 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x80001e94 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001e9c
      0x80001e9c addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x80001ea0 li      a1, 48                 #; (wrb) a1  <-- 48
      0x80001ea4 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x7ffffea4
      0x80001ea8 jalr    ra, ra, 1716           #; ra  = 0x7ffffea4, (wrb) ra  <-- 0x80001eac, goto 0x80000558
; memset (memset.S:30)
      0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
; memset (memset.S:31)
      0x8000055c mv      a4, a0                 #; a0  = 0x0011fb69, (wrb) a4  <-- 0x0011fb69
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
      0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fb69, 48 ~~> Byte[0x0011fb6d]
; memset (memset.S:80)
      0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fb69, 48 ~~> Byte[0x0011fb6c]
; memset (memset.S:81)
      0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fb69, 48 ~~> Byte[0x0011fb6b]
; memset (memset.S:82)
      0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fb69, 48 ~~> Byte[0x0011fb6a]
; memset (memset.S:83)
      0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fb69, 48 ~~> Byte[0x0011fb69]
; memset (memset.S:85)
      0x800005ec ret                            #; ra  = 0x80001eac, goto 0x80001eac
; _ftoa (printf.c:0)
      0x80001eac li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x80001eb0 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x80001eb4 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80001eb8 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x80001ebc snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80001ec0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001ec4 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001ec8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001eb0
      0x80001eb0 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x80001eb4 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80001eb8 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x80001ebc snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80001ec0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001ec4 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001ec8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001eb0
      0x80001eb0 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x80001eb4 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80001eb8 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x80001ebc snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80001ec0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001ec4 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001ec8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001eb0
      0x80001eb0 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x80001eb4 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80001eb8 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x80001ebc snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80001ec0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001ec4 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001ec8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001eb0
      0x80001eb0 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x80001eb4 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80001eb8 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x80001ebc snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80001ec0 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001ec4 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001ec8 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001ecc add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x80001ed0 j       pc + 0x28              #; goto 0x80001ef8
      0x80001ef8 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001efc addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001f00 addi    a1, sp, 8              #; sp  = 0x0011fb60, (wrb) a1  <-- 0x0011fb68
; _ftoa (printf.c:427)
      0x80001f04 add     a0, a1, a0             #; a1  = 0x0011fb68, a0  = 6, (wrb) a0  <-- 0x0011fb6e
      0x80001f08 li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001f0c sb      a1, 0(a0)              #; a0  = 0x0011fb6e, 46 ~~> Byte[0x0011fb6e]
      0x80001f10 j       pc + 0x8               #; goto 0x80001f18
; _ftoa (printf.c:0)
      0x80001f18 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001f1c mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001f20 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001f24 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001f2c lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001f28 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
      0x80001f30 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001f34 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001f38 addi    a3, sp, 8              #; sp  = 0x0011fb60, (wrb) a3  <-- 0x0011fb68
      0x80001f3c li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001f40 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001f44 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001f48 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001f4c srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001f50 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001f54 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001f58 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001f5c addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80001f60 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001f64 add     s0, a3, s0             #; a3  = 0x0011fb68, s0  = 7, (wrb) s0  <-- 0x0011fb6f
; _ftoa (printf.c:434)
      0x80001f68 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001f6c sb      a5, 0(s0)              #; s0  = 0x0011fb6f, 48 ~~> Byte[0x0011fb6f]
; _ftoa (printf.c:0)
      0x80001f70 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001f74 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001f78 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80001f7c j       pc + 0x8               #; goto 0x80001f84
; _ftoa (printf.c:440)
      0x80001f84 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001f88 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001f8c bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001ff8
; _ftoa (printf.c:0)
      0x80001ff8 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001ffc bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80002000 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80002018
; _ftoa (printf.c:453)
      0x80002018 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x8000201c bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80002020 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80002024 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80002050
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80002050 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80002054 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80002058 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x8000205c or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80002060 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80002064 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80002068 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80002094
; _ftoa (printf.c:0)
      0x80002094 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80002098 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x8000209c addi    s9, sp, 7              #; sp  = 0x0011fb60, (wrb) s9  <-- 0x0011fb67
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800020a0 add     a0, s9, s8             #; s9  = 0x0011fb67, s8  = 8, (wrb) a0  <-- 0x0011fb6f
      0x800020a4 lbu     a0, 0(a0)              #; a0  = 0x0011fb6f, a0  <~~ Byte[0x0011fb6f]
      0x800020a8 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x800020ac addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
                                                #; (lsu) a0  <-- 48
      0x800020b0 mv      a1, s6                 #; s6  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
      0x800020b4 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x800020b8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800020bc jalr    s7                     #; s7  = 0x800019d4, (wrb) ra  <-- 0x800020c0, goto 0x800019d4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019d4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
      0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
      0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 8
      0x800019f4 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 9 ~~> Word[0x8000340c]
      0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 8, (wrb) a4  <-- 0x80003414
      0x80001a00 sb      a0, 72(a4)             #; a4  = 0x80003414, 48 ~~> Byte[0x8000345c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 9
      0x80001a08 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x80001a0c snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x80001a10 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001a14 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a7c ret                            #; ra  = 0x800020c0, goto 0x800020c0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800020c0 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x800020c4 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800020c8 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x800020a0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800020a0 add     a0, s9, s8             #; s9  = 0x0011fb67, s8  = 7, (wrb) a0  <-- 0x0011fb6e
      0x800020a4 lbu     a0, 0(a0)              #; a0  = 0x0011fb6e, a0  <~~ Byte[0x0011fb6e]
      0x800020a8 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x800020ac addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x800020b0 mv      a1, s6                 #; s6  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
      0x800020b4 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x800020b8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800020bc jalr    s7                     #; s7  = 0x800019d4, (wrb) ra  <-- 0x800020c0, goto 0x800019d4
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019d4 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
      0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
      0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 9
      0x800019f4 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 10 ~~> Word[0x8000340c]
      0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 9, (wrb) a4  <-- 0x80003415
      0x80001a00 sb      a0, 72(a4)             #; a4  = 0x80003415, 46 ~~> Byte[0x8000345d]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 10
      0x80001a08 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x80001a0c snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x80001a10 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x80001a14 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a7c ret                            #; ra  = 0x800020c0, goto 0x800020c0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800020c0 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x800020c4 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800020c8 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x800020a0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800020a0 add     a0, s9, s8             #; s9  = 0x0011fb67, s8  = 6, (wrb) a0  <-- 0x0011fb6d
      0x800020a4 lbu     a0, 0(a0)              #; a0  = 0x0011fb6d, a0  <~~ Byte[0x0011fb6d]
      0x800020a8 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x800020ac addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x800020b0 mv      a1, s6                 #; s6  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
      0x800020b4 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x800020b8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800020bc jalr    s7                     #; s7  = 0x800019d4, (wrb) ra  <-- 0x800020c0, goto 0x800019d4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019d4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
      0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
      0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 10
      0x800019f4 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 11 ~~> Word[0x8000340c]
      0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 10, (wrb) a4  <-- 0x80003416
      0x80001a00 sb      a0, 72(a4)             #; a4  = 0x80003416, 48 ~~> Byte[0x8000345e]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 11
      0x80001a08 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x80001a0c snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x80001a10 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001a14 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a7c ret                            #; ra  = 0x800020c0, goto 0x800020c0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800020c0 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x800020c4 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800020c8 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x800020a0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800020a0 add     a0, s9, s8             #; s9  = 0x0011fb67, s8  = 5, (wrb) a0  <-- 0x0011fb6c
      0x800020a4 lbu     a0, 0(a0)              #; a0  = 0x0011fb6c, a0  <~~ Byte[0x0011fb6c]
      0x800020a8 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x800020ac addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x800020b0 mv      a1, s6                 #; s6  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
      0x800020b4 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x800020b8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800020bc jalr    s7                     #; s7  = 0x800019d4, (wrb) ra  <-- 0x800020c0, goto 0x800019d4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019d4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
      0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
      0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 11
      0x800019f4 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 12 ~~> Word[0x8000340c]
      0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 11, (wrb) a4  <-- 0x80003417
      0x80001a00 sb      a0, 72(a4)             #; a4  = 0x80003417, 48 ~~> Byte[0x8000345f]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 12
      0x80001a08 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x80001a0c snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x80001a10 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001a14 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a7c ret                            #; ra  = 0x800020c0, goto 0x800020c0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800020c0 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x800020c4 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800020c8 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x800020a0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800020a0 add     a0, s9, s8             #; s9  = 0x0011fb67, s8  = 4, (wrb) a0  <-- 0x0011fb6b
      0x800020a4 lbu     a0, 0(a0)              #; a0  = 0x0011fb6b, a0  <~~ Byte[0x0011fb6b]
      0x800020a8 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x800020ac addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x800020b0 mv      a1, s6                 #; s6  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
      0x800020b4 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x800020b8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800020bc jalr    s7                     #; s7  = 0x800019d4, (wrb) ra  <-- 0x800020c0, goto 0x800019d4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019d4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
      0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
      0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 12
      0x800019f4 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 13 ~~> Word[0x8000340c]
      0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 12, (wrb) a4  <-- 0x80003418
      0x80001a00 sb      a0, 72(a4)             #; a4  = 0x80003418, 48 ~~> Byte[0x80003460]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 13
      0x80001a08 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x80001a0c snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x80001a10 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001a14 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a7c ret                            #; ra  = 0x800020c0, goto 0x800020c0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800020c0 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x800020c4 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800020c8 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x800020a0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800020a0 add     a0, s9, s8             #; s9  = 0x0011fb67, s8  = 3, (wrb) a0  <-- 0x0011fb6a
      0x800020a4 lbu     a0, 0(a0)              #; a0  = 0x0011fb6a, a0  <~~ Byte[0x0011fb6a]
      0x800020a8 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x800020ac addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x800020b0 mv      a1, s6                 #; s6  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
      0x800020b4 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x800020b8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800020bc jalr    s7                     #; s7  = 0x800019d4, (wrb) ra  <-- 0x800020c0, goto 0x800019d4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019d4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
      0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
      0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 13
      0x800019f4 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 14 ~~> Word[0x8000340c]
      0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 13, (wrb) a4  <-- 0x80003419
      0x80001a00 sb      a0, 72(a4)             #; a4  = 0x80003419, 48 ~~> Byte[0x80003461]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 14
      0x80001a08 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x80001a0c snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x80001a10 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001a14 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a7c ret                            #; ra  = 0x800020c0, goto 0x800020c0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800020c0 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x800020c4 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800020c8 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x800020a0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800020a0 add     a0, s9, s8             #; s9  = 0x0011fb67, s8  = 2, (wrb) a0  <-- 0x0011fb69
      0x800020a4 lbu     a0, 0(a0)              #; a0  = 0x0011fb69, a0  <~~ Byte[0x0011fb69]
      0x800020a8 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x800020ac addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x800020b0 mv      a1, s6                 #; s6  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
      0x800020b4 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x800020b8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800020bc jalr    s7                     #; s7  = 0x800019d4, (wrb) ra  <-- 0x800020c0, goto 0x800019d4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019d4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
      0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
      0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 14
      0x800019f4 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 15 ~~> Word[0x8000340c]
      0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 14, (wrb) a4  <-- 0x8000341a
      0x80001a00 sb      a0, 72(a4)             #; a4  = 0x8000341a, 48 ~~> Byte[0x80003462]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 15
      0x80001a08 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x80001a0c snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x80001a10 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001a14 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a7c ret                            #; ra  = 0x800020c0, goto 0x800020c0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800020c0 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x800020c4 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800020c8 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x800020a0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800020a0 add     a0, s9, s8             #; s9  = 0x0011fb67, s8  = 1, (wrb) a0  <-- 0x0011fb68
      0x800020a4 lbu     a0, 0(a0)              #; a0  = 0x0011fb68, a0  <~~ Byte[0x0011fb68]
      0x800020a8 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x800020ac addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x800020b0 mv      a1, s6                 #; s6  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
      0x800020b4 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x800020b8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800020bc jalr    s7                     #; s7  = 0x800019d4, (wrb) ra  <-- 0x800020c0, goto 0x800019d4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019d4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
      0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
      0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 15
      0x800019f4 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 16 ~~> Word[0x8000340c]
      0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 15, (wrb) a4  <-- 0x8000341b
      0x80001a00 sb      a0, 72(a4)             #; a4  = 0x8000341b, 48 ~~> Byte[0x80003463]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 16
      0x80001a08 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x80001a0c snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x80001a10 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001a14 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001a18 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a1c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a7c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a7c ret                            #; ra  = 0x800020c0, goto 0x800020c0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800020c0 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x800020c4 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800020c8 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x800020cc j       pc + 0x8               #; goto 0x800020d4
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800020d4 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x800020d8 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x800020dc xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x800020e0 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x800020e4 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x800020e8 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80002118
; _ftoa (printf.c:0)
      0x80002118 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x8000211c mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80002120 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fb88]
      0x8000212c lw      s10, 64(sp)            #; sp  = 0x0011fb60, s10 <~~ Word[0x0011fba0]
      0x80002124 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fb90], (f:lsu) fs2  <-- 71.0
      0x80002128 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fb98], (f:lsu) fs1  <-- 70.0
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) s10 <-- 0x800030be
      0x80002130 lw      s9, 68(sp)             #; sp  = 0x0011fb60, s9  <~~ Word[0x0011fba4]
                                                #; (lsu) s9  <-- 8
      0x80002134 lw      s8, 72(sp)             #; sp  = 0x0011fb60, s8  <~~ Word[0x0011fba8]
                                                #; (lsu) s8  <-- 16
      0x80002138 lw      s7, 76(sp)             #; sp  = 0x0011fb60, s7  <~~ Word[0x0011fbac]
                                                #; (lsu) s7  <-- 0
      0x8000213c lw      s6, 80(sp)             #; sp  = 0x0011fb60, s6  <~~ Word[0x0011fbb0]
                                                #; (lsu) s6  <-- 0
      0x80002140 lw      s5, 84(sp)             #; sp  = 0x0011fb60, s5  <~~ Word[0x0011fbb4]
                                                #; (lsu) s5  <-- -1
      0x80002144 lw      s4, 88(sp)             #; sp  = 0x0011fb60, s4  <~~ Word[0x0011fbb8]
                                                #; (lsu) s4  <-- 0x0011fc47
      0x80002148 lw      s3, 92(sp)             #; sp  = 0x0011fb60, s3  <~~ Word[0x0011fbbc]
                                                #; (lsu) s3  <-- 0x0011fc60
      0x8000214c lw      s2, 96(sp)             #; sp  = 0x0011fb60, s2  <~~ Word[0x0011fbc0]
                                                #; (lsu) s2  <-- 0x800019d4
      0x80002150 lw      s1, 100(sp)            #; sp  = 0x0011fb60, s1  <~~ Word[0x0011fbc4]
                                                #; (lsu) s1  <-- 8
      0x80002154 lw      s0, 104(sp)            #; sp  = 0x0011fb60, s0  <~~ Word[0x0011fbc8]
                                                #; (lsu) s0  <-- 0
      0x80002158 lw      ra, 108(sp)            #; sp  = 0x0011fb60, ra  <~~ Word[0x0011fbcc]
      0x8000215c addi    sp, sp, 112            #; sp  = 0x0011fb60, (wrb) sp  <-- 0x0011fbd0
                                                #; (lsu) ra  <-- 0x80001104
      0x80002160 ret                            #; ra  = 0x80001104, goto 0x80001104
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001104 j       pc + 0x7c0             #; goto 0x800018c4
      0x800018c4 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x800018c8 li      s6, 37                 #; (wrb) s6  <-- 37
      0x800018cc li      s7, 46                 #; (wrb) s7  <-- 46
      0x800018d0 addi    s0, s10, 1             #; s10 = 0x800030be, (wrb) s0  <-- 0x800030bf
      0x800018d4 j       pc - 0xa74             #; goto 0x80000e60
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e60 addi    s10, s0, 2             #; s0  = 0x800030bf, (wrb) s10 <-- 0x800030c1
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e64 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x80000e68 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e6c lbu     a0, 0(s0)              #; s0  = 0x800030bf, a0  <~~ Byte[0x800030bf]
                                                #; (lsu) a0  <-- 10
      0x80000e70 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000e74 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000e78 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x80000e7c mv      a1, s4                 #; s4  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
      0x80000e80 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x80000e84 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e88 jalr    s2                     #; s2  = 0x800019d4, (wrb) ra  <-- 0x80000e8c, goto 0x800019d4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019d4 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019dc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019e4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039e4
      0x800019e8 addi    a3, a3, -1496          #; a3  = 0x800039e4, (wrb) a3  <-- 0x8000340c
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019ec add     a1, a2, a3             #; a2  = 0, a3  = 0x8000340c, (wrb) a1  <-- 0x8000340c
      0x800019f0 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 16
      0x800019f4 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x800019f8 sw      a5, 0(a1)              #; a1  = 0x8000340c, 17 ~~> Word[0x8000340c]
      0x800019fc add     a4, a1, a4             #; a1  = 0x8000340c, a4  = 16, (wrb) a4  <-- 0x8000341c
      0x80001a00 sb      a0, 72(a4)             #; a4  = 0x8000341c, 10 ~~> Byte[0x80003464]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a04 lw      a4, 0(a1)              #; a1  = 0x8000340c, a4  <~~ Word[0x8000340c]
                                                #; (lsu) a4  <-- 17
      0x80001a08 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x80001a0c snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x80001a10 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x80001a14 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x80001a18 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x80001a1c bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a20 add     a0, a3, a2             #; a3  = 0x8000340c, a2  = 0, (wrb) a0  <-- 0x8000340c
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a24 addi    a2, a0, 72             #; a0  = 0x8000340c, (wrb) a2  <-- 0x80003454
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a28 sw      zero, 12(a0)           #; a0  = 0x8000340c, 0 ~~> Word[0x80003418]
      0x80001a2c li      a3, 64                 #; (wrb) a3  <-- 64
      0x80001a30 sw      a3, 8(a0)              #; a0  = 0x8000340c, 64 ~~> Word[0x80003414]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a34 sw      zero, 20(a0)           #; a0  = 0x8000340c, 0 ~~> Word[0x80003420]
      0x80001a38 li      a3, 1                  #; (wrb) a3  <-- 1
      0x80001a3c sw      a3, 16(a0)             #; a0  = 0x8000340c, 1 ~~> Word[0x8000341c]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a40 sw      zero, 28(a0)           #; a0  = 0x8000340c, 0 ~~> Word[0x80003428]
      0x80001a44 sw      a2, 24(a0)             #; a0  = 0x8000340c, 0x80003454 ~~> Word[0x80003424]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a48 lw      a2, 0(a1)              #; a1  = 0x8000340c, a2  <~~ Word[0x8000340c]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a4c addi    a3, a0, 8              #; a0  = 0x8000340c, (wrb) a3  <-- 0x80003414
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a50 sw      zero, 36(a0)           #; a0  = 0x8000340c, 0 ~~> Word[0x80003430]
                                                #; (lsu) a2  <-- 17
      0x80001a54 sw      a2, 32(a0)             #; a0  = 0x8000340c, 17 ~~> Word[0x8000342c]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a58 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003a58
      0x80001a5c addi    a0, a0, -1880          #; a0  = 0x80003a58, (wrb) a0  <-- 0x80003300
      0x80001a60 sw      a3, 0(a0)              #; a0  = 0x80003300, 0x80003414 ~~> Word[0x80003300]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a64 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003a64
      0x80001a68 addi    a0, a0, -1828          #; a0  = 0x80003a64, (wrb) a0  <-- 0x80003340
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a6c lw      a2, 0(a0)              #; a0  = 0x80003340, a2  <~~ Word[0x80003340]
                                                #; (lsu) a2  <-- 0
      0x80001a70 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001a6c
      0x80001a6c lw      a2, 0(a0)              #; a0  = 0x80003340, a2  <~~ Word[0x80003340]
                                                #; (lsu) a2  <-- 0
      0x80001a70 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001a6c
      0x80001a6c lw      a2, 0(a0)              #; a0  = 0x80003340, a2  <~~ Word[0x80003340]
                                                #; (lsu) a2  <-- 0
      0x80001a70 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001a6c
      0x80001a6c lw      a2, 0(a0)              #; a0  = 0x80003340, a2  <~~ Word[0x80003340]
                                                #; (lsu) a2  <-- 0
      0x80001a70 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001a6c
      0x80001a6c lw      a2, 0(a0)              #; a0  = 0x80003340, a2  <~~ Word[0x80003340]
                                                #; (lsu) a2  <-- 1
      0x80001a70 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a74 sw      zero, 0(a0)            #; a0  = 0x80003340, 0 ~~> Word[0x80003340]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a78 sw      zero, 0(a1)            #; a1  = 0x8000340c, 0 ~~> Word[0x8000340c]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a7c ret                            #; ra  = 0x80000e8c, goto 0x80000e8c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000e8c addi    s0, s0, 1              #; s0  = 0x800030bf, (wrb) s0  <-- 0x800030c0
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000e90 addi    s10, s10, 1            #; s10 = 0x800030c1, (wrb) s10 <-- 0x800030c2
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e94 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e98 lbu     a0, 0(s0)              #; s0  = 0x800030c0, a0  <~~ Byte[0x800030c0]
                                                #; (lsu) a0  <-- 0
      0x80000e9c bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000ea0 j       pc + 0xad8             #; goto 0x80001978
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x80001978 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x8000197c bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001984
      0x80001984 li      a0, 0                  #; (wrb) a0  <-- 0
      0x80001988 mv      a1, s4                 #; s4  = 0x0011fc47, (wrb) a1  <-- 0x0011fc47
      0x8000198c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001990 jalr    s2                     #; s2  = 0x800019d4, (wrb) ra  <-- 0x80001994, goto 0x800019d4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019d4 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001a7c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a7c ret                            #; ra  = 0x80001994, goto 0x80001994
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x80001994 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x80001998 lw      s11, 60(sp)            #; sp  = 0x0011fbd0, s11 <~~ Word[0x0011fc0c]
                                                #; (lsu) s11 <-- 0
      0x8000199c lw      s10, 64(sp)            #; sp  = 0x0011fbd0, s10 <~~ Word[0x0011fc10]
                                                #; (lsu) s10 <-- 0
      0x800019a0 lw      s9, 68(sp)             #; sp  = 0x0011fbd0, s9  <~~ Word[0x0011fc14]
                                                #; (lsu) s9  <-- 0
      0x800019a4 lw      s8, 72(sp)             #; sp  = 0x0011fbd0, s8  <~~ Word[0x0011fc18]
                                                #; (lsu) s8  <-- 0
      0x800019a8 lw      s7, 76(sp)             #; sp  = 0x0011fbd0, s7  <~~ Word[0x0011fc1c]
                                                #; (lsu) s7  <-- 0
      0x800019ac lw      s6, 80(sp)             #; sp  = 0x0011fbd0, s6  <~~ Word[0x0011fc20]
                                                #; (lsu) s6  <-- 0
      0x800019b0 lw      s5, 84(sp)             #; sp  = 0x0011fbd0, s5  <~~ Word[0x0011fc24]
                                                #; (lsu) s5  <-- 0
      0x800019b4 lw      s4, 88(sp)             #; sp  = 0x0011fbd0, s4  <~~ Word[0x0011fc28]
                                                #; (lsu) s4  <-- 0
      0x800019b8 lw      s3, 92(sp)             #; sp  = 0x0011fbd0, s3  <~~ Word[0x0011fc2c]
                                                #; (lsu) s3  <-- 0
      0x800019bc lw      s2, 96(sp)             #; sp  = 0x0011fbd0, s2  <~~ Word[0x0011fc30]
                                                #; (lsu) s2  <-- 0
      0x800019c0 lw      s1, 100(sp)            #; sp  = 0x0011fbd0, s1  <~~ Word[0x0011fc34]
                                                #; (lsu) s1  <-- 0
      0x800019c4 lw      s0, 104(sp)            #; sp  = 0x0011fbd0, s0  <~~ Word[0x0011fc38]
                                                #; (lsu) s0  <-- 0
      0x800019c8 lw      ra, 108(sp)            #; sp  = 0x0011fbd0, ra  <~~ Word[0x0011fc3c]
      0x800019cc addi    sp, sp, 112            #; sp  = 0x0011fbd0, (wrb) sp  <-- 0x0011fc40
                                                #; (lsu) ra  <-- 0x80000dd0
      0x800019d0 ret                            #; ra  = 0x80000dd0, goto 0x80000dd0
; printf_ (printf.c:869)
      0x80000dd0 lw      ra, 12(sp)             #; sp  = 0x0011fc40, ra  <~~ Word[0x0011fc4c]
      0x80000dd4 addi    sp, sp, 48             #; sp  = 0x0011fc40, (wrb) sp  <-- 0x0011fc70
                                                #; (lsu) ra  <-- 0x80000d34
      0x80000dd8 ret                            #; ra  = 0x80000d34, goto 0x80000d34
; main (test_access.c:0)
      0x80000d34 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002d34
      0x80000d38 addi    a0, a0, 1572           #; a0  = 0x80002d34, (wrb) a0  <-- 0x80003358
      0x80000d3c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003358]
                                                #; (f:lsu) ft0  <-- 0.0001
; main (test_access.c:51)
      0x80000d40 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0
                                                #; (acc) s9  <-- 0x29813c87
      0x80000d44 fld     fs11, 648(sp)          #; fs11 <~~ Doub[0x0011fef8]
; main (test_access.c:52)
      0x80000d48 fld     fs10, 656(sp)          #; fs10 <~~ Doub[0x0011ff00], (f:lsu) fs11 <-- 0.0
      0x80000d4c fld     fs9, 664(sp)           #; fs9  <~~ Doub[0x0011ff08], (f:lsu) fs10 <-- 0.0
      0x80000d50 fld     fs8, 672(sp)           #; fs8  <~~ Doub[0x0011ff10], (f:lsu) fs9  <-- 0.0
      0x80000d54 fld     fs7, 680(sp)           #; fs7  <~~ Doub[0x0011ff18], (f:lsu) fs8  <-- 0.0
      0x80000d58 fld     fs6, 688(sp)           #; fs6  <~~ Doub[0x0011ff20], (f:lsu) fs7  <-- 0.0
      0x80000d5c fld     fs5, 696(sp)           #; fs5  <~~ Doub[0x0011ff28], (f:lsu) fs6  <-- 0.0
      0x80000d60 fld     fs4, 704(sp)           #; fs4  <~~ Doub[0x0011ff30], (f:lsu) fs5  <-- 0.0
      0x80000d64 fld     fs3, 712(sp)           #; fs3  <~~ Doub[0x0011ff38], (f:lsu) fs4  <-- 0.0
      0x80000d68 fld     fs2, 720(sp)           #; fs2  <~~ Doub[0x0011ff40], (f:lsu) fs3  <-- 0.0
      0x80000d74 lw      ra, 748(sp)            #; sp  = 0x0011fc70, ra  <~~ Word[0x0011ff5c]
      0x80000d6c fld     fs1, 728(sp)           #; fs1  <~~ Doub[0x0011ff48], (f:lsu) fs2  <-- 0.0
      0x80000d78 addi    sp, sp, 752            #; sp  = 0x0011fc70, (wrb) sp  <-- 0x0011ff60
      0x80000d70 fld     fs0, 736(sp)           #; fs0  <~~ Doub[0x0011ff50], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) ra  <-- 0x80002e30
      0x80000d7c ret                            #; ra  = 0x80002e30, goto 0x80002e30
; ?? (start.S:184)
      0x80002e30 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x80002e34 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e34
      0x80002e38 jalr    ra, ra, 524            #; ra  = 0x80002e34, (wrb) ra  <-- 0x80002e3c, goto 0x80003040
; ?? (start_snitch.S:33)
      0x80003040 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80003044 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002e3c ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80003048 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003048
      0x8000304c jalr    ra, ra, -1260          #; ra  = 0x80003048, (wrb) ra  <-- 0x80003050, goto 0x80002b5c
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002b5c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002b60 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002b64 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002b68 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002b6c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002b70 ret                            #; ra  = 0x80003050, goto 0x80003050
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80003050 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80003054 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80003058 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x8000305c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002e3c
; ?? (start_snitch.S:40)
      0x80003060 ret                            #; ra  = 0x80002e3c, goto 0x80002e3c
; ?? (start.S:195)
      0x80002e3c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x80002e40 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e40
      0x80002e44 jalr    ra, ra, 556            #; ra  = 0x80002e40, (wrb) ra  <-- 0x80002e48, goto 0x8000306c
; ?? (start_snitch.S:15)
      0x8000306c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80003070 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80003074 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002e48 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80003078 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003078
      0x8000307c jalr    ra, ra, -1340          #; ra  = 0x80003078, (wrb) ra  <-- 0x80003080, goto 0x80002b3c
; snrt_global_core_idx (team.c:32)
      0x80002b3c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002b40 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002b44 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002b48 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002b4c lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x80002b50 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x80002b54 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x80002b58 ret                            #; ra  = 0x80003080, goto 0x80003080
; ?? (start_snitch.S:20)
      0x80003080 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x80003084 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80003088 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x8000308c bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x80002e48
; ?? (start_snitch.S:28)
      0x80003090 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x80003094 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x80003098 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003098
      0x8000309c addi    t1, t1, 616            #; t1  = 0x80003098, (wrb) t1  <-- 0x80003300
; ?? (start_snitch.S:31)
      0x800030a0 sw      t0, 0(t1)              #; t1  = 0x80003300, 1 ~~> Word[0x80003300]
; ?? (start_snitch.S:32)
      0x800030a4 ret                            #; ra  = 0x80002e48, goto 0x80002e48
; ?? (start.S:198)
      0x80002e48 wfi                            #; 
                        tion 0 @ (12, 7279):
                          138
                          142
                          204
                          319
                         12.0
                       0.2159
                       0.3643
                          1.0
                          1.0
                            0
                       2.1383
                       1.2790
                       0.1237
                       0.0517
                       0.4182
                         7268
                       0.3396
