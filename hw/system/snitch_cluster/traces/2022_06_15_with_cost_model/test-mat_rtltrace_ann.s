; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x80002c20
      0x00001014 jalr    t0                     #; t0  = 0x80002c20, (wrb) ra  <-- 4120, goto 0x80002c20
; ?? (start.S:20)
      0x80002c20 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003c20
; ?? (start.S:21)
      0x80002c24 addi    gp, gp, -280           #; gp  = 0x80003c20, (wrb) gp  <-- 0x80003b08
; ?? (start.S:28)
      0x80002c28 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c28
      0x80002c2c jalr    ra, ra, 964            #; ra  = 0x80002c28, (wrb) ra  <-- 0x80002c30, goto 0x80002fec
; ?? (start_snitch.S:16)
      0x80002fec mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80002ff0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80002ff4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80002ff8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x80002ffc lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80003000 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80003004 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80003008 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x8000300c mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80003010 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80003014 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80003018 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x8000301c ret                            #; ra  = 0x80002c30, goto 0x80002c30
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x80002c30 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x80002c34 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x80002c38 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c38
      0x80002c3c jalr    ra, ra, 1036           #; ra  = 0x80002c38, (wrb) ra  <-- 0x80002c40, goto 0x80003044
; ?? (start_snitch.S:48)
      0x80003044 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80003048 ret                            #; ra  = 0x80002c40, goto 0x80002c40
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x80002c40 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x80002c44 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x80002c48 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x80002c4c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x80002c50 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x80002c54 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002c54
      0x80002c58 addi    t0, t0, 1924           #; t0  = 0x80002c54, (wrb) t0  <-- 0x800033d8
; ?? (start.S:49)
      0x80002c5c auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002c5c
      0x80002c60 addi    t1, t1, 1920           #; t1  = 0x80002c5c, (wrb) t1  <-- 0x800033dc
; ?? (start.S:50)
      0x80002c64 bge     t0, t1, pc + 16        #; t0  = 0x800033d8, t1  = 0x800033dc, not taken
; ?? (start.S:51)
      0x80002c68 sw      zero, 0(t0)            #; t0  = 0x800033d8, 0 ~~> Word[0x800033d8]
; ?? (start.S:52)
      0x80002c6c addi    t0, t0, 4              #; t0  = 0x800033d8, (wrb) t0  <-- 0x800033dc
; ?? (start.S:53)
      0x80002c70 blt     t0, t1, pc - 8         #; t0  = 0x800033dc, t1  = 0x800033dc, not taken
; ?? (start.S:58)
      0x80002c74 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x80002c78 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x80002c7c beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x80002c80 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x80002c84 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x80002c88 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x80002c8c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x80002c90 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x80002c94 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x80002c98 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x80002c9c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x80002ca0 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x80002ca4 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x80002ca8 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x80002cac fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x80002cb0 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x80002cb4 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x80002cb8 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x80002cbc fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x80002cc0 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x80002cc4 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x80002cc8 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x80002ccc fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x80002cd0 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x80002cd4 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x80002cd8 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x80002cdc fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x80002ce0 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x80002ce4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x80002ce8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x80002cec fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x80002cf0 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x80002cf4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x80002cf8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x80002cfc fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x80002d00 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x80002d04 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x80002d08 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002d08
      0x80002d0c lw      t0, 900(t0)            #; t0  = 0x80002d08, t0  <~~ Word[0x8000308c]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x80002d10 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x80002d14 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x80002d18 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002d18
      0x80002d1c lw      t2, 880(t2)            #; t2  = 0x80002d18, t2  <~~ Word[0x80003088]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x80002d20 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x80002d24 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x80002d28 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x80002d2c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x80002d30 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x80002d34 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x80002d38 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x80002d3c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x80002d40 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002d40
      0x80002d44 addi    t0, t0, 1480           #; t0  = 0x80002d40, (wrb) t0  <-- 0x80003308
; ?? (start.S:125)
      0x80002d48 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002d48
      0x80002d4c addi    t1, t1, 1472           #; t1  = 0x80002d48, (wrb) t1  <-- 0x80003308
; ?? (start.S:126)
      0x80002d50 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002d50
      0x80002d54 addi    t2, t2, 1464           #; t2  = 0x80002d50, (wrb) t2  <-- 0x80003308
; ?? (start.S:127)
      0x80002d58 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002d58
      0x80002d5c addi    t3, t3, 1472           #; t3  = 0x80002d58, (wrb) t3  <-- 0x80003318
; ?? (start.S:128)
      0x80002d60 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003308, (wrb) sp  <-- 0x80123278
; ?? (start.S:129)
      0x80002d64 sub     sp, sp, t1             #; sp  = 0x80123278, t1  = 0x80003308, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x80002d68 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003308, (wrb) sp  <-- 0x80123278
; ?? (start.S:131)
      0x80002d6c sub     sp, sp, t3             #; sp  = 0x80123278, t3  = 0x80003318, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x80002d70 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x80002d74 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x80002d78 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x80002d7c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x80002d80 bge     t0, t1, pc + 24        #; t0  = 0x80003308, t1  = 0x80003308, taken, goto 0x80002d98
; ?? (start.S:147)
      0x80002d98 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002d98
      0x80002d9c addi    t0, t0, 1392           #; t0  = 0x80002d98, (wrb) t0  <-- 0x80003308
; ?? (start.S:148)
      0x80002da0 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002da0
      0x80002da4 addi    t1, t1, 1400           #; t1  = 0x80002da0, (wrb) t1  <-- 0x80003318
; ?? (start.S:149)
      0x80002da8 bge     t0, t1, pc + 20        #; t0  = 0x80003308, t1  = 0x80003318, not taken
; ?? (start.S:150)
      0x80002dac sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x80002db0 addi    t0, t0, 4              #; t0  = 0x80003308, (wrb) t0  <-- 0x8000330c
; ?? (start.S:152)
      0x80002db4 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x80002db8 blt     t0, t2, pc - 12        #; t0  = 0x8000330c, t2  = 0x80003308, not taken
; ?? (start.S:158)
      0x80002dbc addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x80002dc0 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x80002dc4 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x80002dc8 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x80002dcc sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x80002dd0 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x80002dd4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002dd4
      0x80002dd8 jalr    ra, ra, -1056          #; ra  = 0x80002dd4, (wrb) ra  <-- 0x80002ddc, goto 0x800029b4
; _snrt_init_team (start.c:49)
      0x800029b4 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x800029b8 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x800029bc lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x800029c0 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x800029c4 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x800029c8 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x800029cc lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x800029d0 mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x800029d4 mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x800029d8 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x800029dc csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x800029e0 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x800029e4 divu    a0, a0, t0             #; a0  = 0, t0  = 8
                                                #; (acc) a6  <-- 0x00a7a823
; _snrt_init_team (start.c:54)
      0x800029e8 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x800029ec sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x800029f0 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x800029f4 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x800029f8 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x800029fc lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x80002a00 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x80002a04 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x80002a08 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x80002a0c lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x80002a10 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x80002a14 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x80002a18 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x80002a1c sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x80002a20 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x80002a24 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x80002a28 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x80002a2c lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x80002a30 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x80002a34 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x80002a38 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x80002a3c sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x80002a40 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x80002a44 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x80002a48 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x80002a4c add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x80002a50 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x80002a54 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x80002a58 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x80002a5c add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x80002a60 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x80002a64 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x80002a68 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x80002a6c sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x80002a70 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x80002a74 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002a78 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002a7c sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x80002a80 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002a84 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x80002a88 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x80002a8c sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x80002a90 remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x80002a94 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x80002a98 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
                                                #; (acc) tp  <-- 0x00a5a223
      0x80002a9c sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x80002aa0 li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x80002aa4 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x80002aa8 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003aa8
      0x80002aac addi    a1, a1, -1740          #; a1  = 0x80003aa8, (wrb) a1  <-- 0x800033dc
      0x80002ab0 add     a0, a0, a1             #; a0  = 0, a1  = 0x800033dc, (wrb) a0  <-- 0x800033dc
      0x80002ab4 sw      zero, 0(a0)            #; a0  = 0x800033dc, 0 ~~> Word[0x800033dc]
; _snrt_init_team (start.c:86)
      0x80002ab8 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x80002abc sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x80002ac0 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x80002ac4 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x80002ac8 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x80002acc sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x80002ad0 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x80002ad4 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x80002ad8 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x80002adc sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x80002ae0 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x80002ae4 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x80002ae8 lw      a0, 0(a1)              #; a1  = 0x800033dc, a0  <~~ Word[0x800033dc]
                                                #; (lsu) a0  <-- 0
      0x80002aec addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x80002af0 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x80002af4 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x80002af8 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x80002afc sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x80002b00 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002b04 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002b08 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x80002b0c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002b10 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002b14 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x80002b18 ret                            #; ra  = 0x80002ddc, goto 0x80002ddc
; ?? (start.S:165)
      0x80002ddc lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x80002de0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x80002de4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x80002de8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x80002dec lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x80002df0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x80002df4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002df4
      0x80002df8 addi    t0, t0, 60             #; t0  = 0x80002df4, (wrb) t0  <-- 0x80002e30
; ?? (start.S:175)
      0x80002dfc csrw    mtvec, t0              #; t0  = 0x80002e30, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x80002e00 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e00
      0x80002e04 jalr    ra, ra, 544            #; ra  = 0x80002e00, (wrb) ra  <-- 0x80002e08, goto 0x80003020
; ?? (start_snitch.S:33)
      0x80003020 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80003024 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002e08 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80003028 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003028
      0x8000302c jalr    ra, ra, -1260          #; ra  = 0x80003028, (wrb) ra  <-- 0x80003030, goto 0x80002b3c
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002b3c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002b40 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002b44 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002b48 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002b4c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002b50 ret                            #; ra  = 0x80003030, goto 0x80003030
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80003030 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80003034 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80003038 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x8000303c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002e08
; ?? (start_snitch.S:40)
      0x80003040 ret                            #; ra  = 0x80002e08, goto 0x80002e08
; ?? (start.S:183)
      0x80002e08 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000e08
      0x80002e0c jalr    ra, ra, -1744          #; ra  = 0x80000e08, (wrb) ra  <-- 0x80002e10, goto 0x80000738
; main (test_mat.c:14)
      0x80000738 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (test_mat.c:15)
      0x8000073c sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002e10 ~~> Word[0x0011ff5c]
      0x80000740 sw      s0, 24(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff58]
      0x80000744 sw      s1, 20(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff54]
      0x80000748 sw      s2, 16(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff50]
      0x8000074c fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
      0x80000750 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000754 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000758 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
; main (test_mat.c:0)
      0x8000075c li      a0, 0                  #; (wrb) a0  <-- 0
                                                #; (lsu) a1  <-- 0
; main (test_mat.c:15)
      0x80000760 bnez    a1, pc + 360           #; a1  = 0, not taken
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (test_mat.c:23)
      0x80000764 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000768 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000076c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80000770 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in main (test_mat.c:23)
      0x80000774 lw      s0, 88(a0)             #; a0  = 0x0011ff70, s0  <~~ Word[0x0011ffc8]
                                                #; (lsu) s0  <-- 0x00100000
      0x80000778 lw      a1, 80(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
                                                #; (lsu) a1  <-- 0x00100000
      0x8000077c lw      a3, 84(a0)             #; a0  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
      0x80000780 addi    a2, s0, 240            #; s0  = 0x00100000, (wrb) a2  <-- 0x001000f0
                                                #; (lsu) a3  <-- 0x0001df30
      0x80000784 add     a1, a3, a1             #; a3  = 0x0001df30, a1  = 0x00100000, (wrb) a1  <-- 0x0011df30
      0x80000788 bgeu    a1, a2, pc + 44        #; a1  = 0x0011df30, a2  = 0x001000f0, taken, goto 0x800007b4
; snrt_l1alloc (alloc.c:34)
;  in main (test_mat.c:23)
      0x800007b4 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x001000f0 ~~> Word[0x0011ffc8]
      0x800007b8 mv      s2, s0                 #; s0  = 0x00100000, (wrb) s2  <-- 0x00100000
; snrt_l1alloc (alloc.c:25)
;  in main (test_mat.c:24)
      0x800007bc mv      s0, a2                 #; a2  = 0x001000f0, (wrb) s0  <-- 0x001000f0
      0x800007c0 addi    a2, s0, 336            #; s0  = 0x001000f0, (wrb) a2  <-- 0x00100240
      0x800007c4 bgeu    a1, a2, pc - 44        #; a1  = 0x0011df30, a2  = 0x00100240, taken, goto 0x80000798
; snrt_l1alloc (alloc.c:34)
;  in main (test_mat.c:24)
      0x80000798 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x00100240 ~~> Word[0x0011ffc8]
      0x8000079c mv      s1, s0                 #; s0  = 0x001000f0, (wrb) s1  <-- 0x001000f0
; snrt_l1alloc (alloc.c:25)
;  in main (test_mat.c:25)
      0x800007a0 mv      s0, a2                 #; a2  = 0x00100240, (wrb) s0  <-- 0x00100240
      0x800007a4 addi    a2, s0, 280            #; s0  = 0x00100240, (wrb) a2  <-- 0x00100358
      0x800007a8 bltu    a1, a2, pc + 44        #; a1  = 0x0011df30, a2  = 0x00100358, not taken
; snrt_l1alloc (alloc.c:34)
;  in main (test_mat.c:25)
      0x800007ac sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x00100358 ~~> Word[0x0011ffc8]
      0x800007b0 j       pc + 0x28              #; goto 0x800007d8
; main (test_mat.c:27)
      0x800007d8 li      a1, 30                 #; (wrb) a1  <-- 30
      0x800007dc mv      a0, s2                 #; s2  = 0x00100000, (wrb) a0  <-- 0x00100000
      0x800007e0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800007e0
      0x800007e4 jalr    ra, ra, -428           #; ra  = 0x800007e0, (wrb) ra  <-- 0x800007e8, goto 0x80000634
; init_data (test_mat.c:9)
      0x80000634 addi    a2, a1, -1             #; a1  = 30, (wrb) a2  <-- 29
      0x80000638 slli    a5, a2, 3              #; a2  = 29, (wrb) a5  <-- 232
      0x8000063c add     a4, a5, a0             #; a5  = 232, a0  = 0x00100000, (wrb) a4  <-- 0x001000e8
      0x80000640 srli    a3, a0, 20             #; a0  = 0x00100000, (wrb) a3  <-- 1
      0x80000644 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
      0x80000648 bgeu    a4, a5, pc + 100       #; a4  = 0x001000e8, a5  = 232, taken, goto 0x800006ac
; init_data (test_mat.c:0)
      0x800006ac lui     a5, 0x120              #; (wrb) a5  <-- 0x00120000
      0x800006b0 addi    a5, a5, 1              #; a5  = 0x00120000, (wrb) a5  <-- 0x00120001
      0x800006b4 sltu    a4, a4, a5             #; a4  = 0x001000e8, a5  = 0x00120001, (wrb) a4  <-- 1
; init_data (test_mat.c:9)
      0x800006b8 and     a3, a3, a4             #; a3  = 1, a4  = 1, (wrb) a3  <-- 1
      0x800006bc beqz    a3, pc - 100           #; a3  = 1, not taken
; init_data (test_mat.c:0)
      0x800006c0 li      a3, 0                  #; (wrb) a3  <-- 0
      0x800006c4 li      a4, 8                  #; (wrb) a4  <-- 8
; init_data (test_mat.c:9)
      0x800006c8 li      a5, 64                 #; (wrb) a5  <-- 64
      0x800006cc scfgw   a2, a5                 #; a2  = 29, a5  = 64
      0x800006d0 li      a2, 192                #; (wrb) a2  <-- 192
      0x800006d4 scfgw   a4, a2                 #; a4  = 8, a2  = 192
      0x800006d8 li      a2, 32                 #; (wrb) a2  <-- 32
      0x800006dc scfgw   zero, a2               #; a2  = 32
      0x800006e0 scfgwi  a0, 896                #; a0  = 0x00100000
      0x800006e8 li      a0, 1                  #; (wrb) a0  <-- 1
      0x800006e4 csrrsi  a0, ssr, 1             #; 
; init_data (test_mat.c:0)
      0x800006ec auipc   a2, 0x3                #; (wrb) a2  <-- 0x800036ec
      0x800006f0 addi    a2, a2, -980           #; a2  = 0x800036ec, (wrb) a2  <-- 0x80003318
      0x800006f8 lui     a2, 0xccccd            #; (wrb) a2  <-- 0xccccd000
      0x800006fc addi    a2, a2, -819           #; a2  = 0xccccd000, (wrb) a2  <-- 0xcccccccd
      0x800006f4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x80003318]
      0x80000700 li      a4, 20                 #; (wrb) a4  <-- 20
                                                #; (f:lsu) ft3  <-- 3.141
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 0, a2  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 0, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
      0x80000710 sub     a5, a0, a5             #; a0  = 1, a5  = 0, (wrb) a5  <-- 1
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 1
                                                #; (f:fpu) ft4  <-- 1.0
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
                                                #; (f:fpu) ft4  <-- 3.141
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
                                                #; (f:fpu) ft0  <-- 3.141
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 0, (wrb) a3  <-- 1
      0x80000724 addi    a1, a1, -1             #; a1  = 30, (wrb) a1  <-- 29
      0x80000728 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x8000072c bnez    a1, pc - 40            #; a1  = 29, taken, goto 0x80000704
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 1, a2  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 0, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 2, a5  = 0, (wrb) a5  <-- 2
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 2
                                                #; (f:fpu) ft4  <-- 2.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 1, (wrb) a3  <-- 2
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 29, (wrb) a1  <-- 28
      0x80000728 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x8000072c bnez    a1, pc - 40            #; a1  = 28, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 6.282
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 2, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
                                                #; (f:fpu) ft0  <-- 6.282
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 1, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 3, a5  = 0, (wrb) a5  <-- 3
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 3
                                                #; (f:fpu) ft4  <-- 3.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 2, (wrb) a3  <-- 3
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 28, (wrb) a1  <-- 27
      0x80000728 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x8000072c bnez    a1, pc - 40            #; a1  = 27, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 9.423
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 3, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 9.423, ft4  = 9.423
                                                #; (f:fpu) ft0  <-- 9.423
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 2, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 4, a5  = 0, (wrb) a5  <-- 4
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 4
                                                #; (f:fpu) ft4  <-- 4.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 3, (wrb) a3  <-- 4
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 27, (wrb) a1  <-- 26
      0x80000728 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x8000072c bnez    a1, pc - 40            #; a1  = 26, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 12.564
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 4, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564
                                                #; (f:fpu) ft0  <-- 12.564
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 3, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 5, a5  = 0, (wrb) a5  <-- 5
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 5
                                                #; (f:fpu) ft4  <-- 5.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 4, (wrb) a3  <-- 5
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 26, (wrb) a1  <-- 25
      0x80000728 addi    a0, a0, 1              #; a0  = 5, (wrb) a0  <-- 6
      0x8000072c bnez    a1, pc - 40            #; a1  = 25, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 15.705
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 5, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 15.705, ft4  = 15.705
                                                #; (f:fpu) ft0  <-- 15.705
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 4, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 6, a5  = 0, (wrb) a5  <-- 6
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 6
                                                #; (f:fpu) ft4  <-- 6.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 6
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 25, (wrb) a1  <-- 24
      0x80000728 addi    a0, a0, 1              #; a0  = 6, (wrb) a0  <-- 7
      0x8000072c bnez    a1, pc - 40            #; a1  = 24, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 18.846
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 6, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846
                                                #; (f:fpu) ft0  <-- 18.846
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 4, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 7, a5  = 0, (wrb) a5  <-- 7
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 7
                                                #; (f:fpu) ft4  <-- 7.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 6, (wrb) a3  <-- 7
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 24, (wrb) a1  <-- 23
      0x80000728 addi    a0, a0, 1              #; a0  = 7, (wrb) a0  <-- 8
      0x8000072c bnez    a1, pc - 40            #; a1  = 23, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 21.9870000
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 7, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 21.9870000, ft4  = 21.9870000
                                                #; (f:fpu) ft0  <-- 21.9870000
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 5, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 8, a5  = 0, (wrb) a5  <-- 8
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 8
                                                #; (f:fpu) ft4  <-- 8.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 7, (wrb) a3  <-- 8
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 23, (wrb) a1  <-- 22
      0x80000728 addi    a0, a0, 1              #; a0  = 8, (wrb) a0  <-- 9
      0x8000072c bnez    a1, pc - 40            #; a1  = 22, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 25.128
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 8, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128
                                                #; (f:fpu) ft0  <-- 25.128
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 6, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 9, a5  = 0, (wrb) a5  <-- 9
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 9
                                                #; (f:fpu) ft4  <-- 9.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 8, (wrb) a3  <-- 9
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 22, (wrb) a1  <-- 21
      0x80000728 addi    a0, a0, 1              #; a0  = 9, (wrb) a0  <-- 10
      0x8000072c bnez    a1, pc - 40            #; a1  = 21, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 28.269
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 9, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 28.269, ft4  = 28.269
                                                #; (f:fpu) ft0  <-- 28.269
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 7, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 10, a5  = 0, (wrb) a5  <-- 10
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 10
                                                #; (f:fpu) ft4  <-- 10.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 9, (wrb) a3  <-- 10
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 21, (wrb) a1  <-- 20
      0x80000728 addi    a0, a0, 1              #; a0  = 10, (wrb) a0  <-- 11
      0x8000072c bnez    a1, pc - 40            #; a1  = 20, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 31.41
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 10, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41
                                                #; (f:fpu) ft0  <-- 31.41
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 8, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 11, a5  = 0, (wrb) a5  <-- 11
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 11
                                                #; (f:fpu) ft4  <-- 11.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 10, (wrb) a3  <-- 11
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 20, (wrb) a1  <-- 19
      0x80000728 addi    a0, a0, 1              #; a0  = 11, (wrb) a0  <-- 12
      0x8000072c bnez    a1, pc - 40            #; a1  = 19, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 34.551
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 11, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 34.551, ft4  = 34.551
                                                #; (f:fpu) ft0  <-- 34.551
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 8, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 12, a5  = 0, (wrb) a5  <-- 12
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 12
                                                #; (f:fpu) ft4  <-- 12.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 11, (wrb) a3  <-- 12
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 12.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 19, (wrb) a1  <-- 18
      0x80000728 addi    a0, a0, 1              #; a0  = 12, (wrb) a0  <-- 13
      0x8000072c bnez    a1, pc - 40            #; a1  = 18, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 37.692
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 12, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 37.692, ft4  = 37.692
                                                #; (f:fpu) ft0  <-- 37.692
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 9, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 13, a5  = 0, (wrb) a5  <-- 13
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 13
                                                #; (f:fpu) ft4  <-- 13.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 12, (wrb) a3  <-- 13
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 13.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 18, (wrb) a1  <-- 17
      0x80000728 addi    a0, a0, 1              #; a0  = 13, (wrb) a0  <-- 14
      0x8000072c bnez    a1, pc - 40            #; a1  = 17, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 40.833
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 13, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 40.833, ft4  = 40.833
                                                #; (f:fpu) ft0  <-- 40.833
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 10, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 14, a5  = 0, (wrb) a5  <-- 14
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 14
                                                #; (f:fpu) ft4  <-- 14.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 13, (wrb) a3  <-- 14
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 14.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 17, (wrb) a1  <-- 16
      0x80000728 addi    a0, a0, 1              #; a0  = 14, (wrb) a0  <-- 15
      0x8000072c bnez    a1, pc - 40            #; a1  = 16, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 43.9740000
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 14, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 43.9740000, ft4  = 43.9740000
                                                #; (f:fpu) ft0  <-- 43.9740000
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 11, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 15, a5  = 0, (wrb) a5  <-- 15
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 15
                                                #; (f:fpu) ft4  <-- 15.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 14, (wrb) a3  <-- 15
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 15.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 16, (wrb) a1  <-- 15
      0x80000728 addi    a0, a0, 1              #; a0  = 15, (wrb) a0  <-- 16
      0x8000072c bnez    a1, pc - 40            #; a1  = 15, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 47.115
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 15, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 47.115, ft4  = 47.115
                                                #; (f:fpu) ft0  <-- 47.115
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 12, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 16, a5  = 0, (wrb) a5  <-- 16
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 16
                                                #; (f:fpu) ft4  <-- 16.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 15, (wrb) a3  <-- 16
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 16.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 15, (wrb) a1  <-- 14
      0x80000728 addi    a0, a0, 1              #; a0  = 16, (wrb) a0  <-- 17
      0x8000072c bnez    a1, pc - 40            #; a1  = 14, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 50.256
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 16, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 50.256, ft4  = 50.256
                                                #; (f:fpu) ft0  <-- 50.256
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 12, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 17, a5  = 0, (wrb) a5  <-- 17
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 17
                                                #; (f:fpu) ft4  <-- 17.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 16, (wrb) a3  <-- 17
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 17.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 14, (wrb) a1  <-- 13
      0x80000728 addi    a0, a0, 1              #; a0  = 17, (wrb) a0  <-- 18
      0x8000072c bnez    a1, pc - 40            #; a1  = 13, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 53.397
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 17, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 53.397, ft4  = 53.397
                                                #; (f:fpu) ft0  <-- 53.397
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 13, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 18, a5  = 0, (wrb) a5  <-- 18
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 18
                                                #; (f:fpu) ft4  <-- 18.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 17, (wrb) a3  <-- 18
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 18.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 13, (wrb) a1  <-- 12
      0x80000728 addi    a0, a0, 1              #; a0  = 18, (wrb) a0  <-- 19
      0x8000072c bnez    a1, pc - 40            #; a1  = 12, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 56.538
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 18, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 56.538, ft4  = 56.538
                                                #; (f:fpu) ft0  <-- 56.538
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 14, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 19, a5  = 0, (wrb) a5  <-- 19
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 19
                                                #; (f:fpu) ft4  <-- 19.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 18, (wrb) a3  <-- 19
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 19.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 12, (wrb) a1  <-- 11
      0x80000728 addi    a0, a0, 1              #; a0  = 19, (wrb) a0  <-- 20
      0x8000072c bnez    a1, pc - 40            #; a1  = 11, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 59.679
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 19, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 59.679, ft4  = 59.679
                                                #; (f:fpu) ft0  <-- 59.679
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 15, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 20, a5  = 0, (wrb) a5  <-- 20
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 20
                                                #; (f:fpu) ft4  <-- 20.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 19, (wrb) a3  <-- 20
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 20.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 11, (wrb) a1  <-- 10
      0x80000728 addi    a0, a0, 1              #; a0  = 20, (wrb) a0  <-- 21
      0x8000072c bnez    a1, pc - 40            #; a1  = 10, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 62.82
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 20, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 62.82, ft4  = 62.82
                                                #; (f:fpu) ft0  <-- 62.82
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 16, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 21, a5  = 20, (wrb) a5  <-- 1
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 1
                                                #; (f:fpu) ft4  <-- 1.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 20, (wrb) a3  <-- 21
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 10, (wrb) a1  <-- 9
      0x80000728 addi    a0, a0, 1              #; a0  = 21, (wrb) a0  <-- 22
      0x8000072c bnez    a1, pc - 40            #; a1  = 9, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 3.141
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 21, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
                                                #; (f:fpu) ft0  <-- 3.141
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 16, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 22, a5  = 20, (wrb) a5  <-- 2
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 2
                                                #; (f:fpu) ft4  <-- 2.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 21, (wrb) a3  <-- 22
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 9, (wrb) a1  <-- 8
      0x80000728 addi    a0, a0, 1              #; a0  = 22, (wrb) a0  <-- 23
      0x8000072c bnez    a1, pc - 40            #; a1  = 8, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 6.282
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 22, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
                                                #; (f:fpu) ft0  <-- 6.282
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 17, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 23, a5  = 20, (wrb) a5  <-- 3
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 3
                                                #; (f:fpu) ft4  <-- 3.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 22, (wrb) a3  <-- 23
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 8, (wrb) a1  <-- 7
      0x80000728 addi    a0, a0, 1              #; a0  = 23, (wrb) a0  <-- 24
      0x8000072c bnez    a1, pc - 40            #; a1  = 7, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 9.423
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 23, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 9.423, ft4  = 9.423
                                                #; (f:fpu) ft0  <-- 9.423
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 18, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 24, a5  = 20, (wrb) a5  <-- 4
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 4
                                                #; (f:fpu) ft4  <-- 4.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 23, (wrb) a3  <-- 24
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
      0x80000728 addi    a0, a0, 1              #; a0  = 24, (wrb) a0  <-- 25
      0x8000072c bnez    a1, pc - 40            #; a1  = 6, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 12.564
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 24, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564
                                                #; (f:fpu) ft0  <-- 12.564
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 19, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 25, a5  = 20, (wrb) a5  <-- 5
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 5
                                                #; (f:fpu) ft4  <-- 5.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 24, (wrb) a3  <-- 25
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
      0x80000728 addi    a0, a0, 1              #; a0  = 25, (wrb) a0  <-- 26
      0x8000072c bnez    a1, pc - 40            #; a1  = 5, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 15.705
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 25, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 15.705, ft4  = 15.705
                                                #; (f:fpu) ft0  <-- 15.705
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 20, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 26, a5  = 20, (wrb) a5  <-- 6
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 6
                                                #; (f:fpu) ft4  <-- 6.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 25, (wrb) a3  <-- 26
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
      0x80000728 addi    a0, a0, 1              #; a0  = 26, (wrb) a0  <-- 27
      0x8000072c bnez    a1, pc - 40            #; a1  = 4, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 18.846
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 26, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846
                                                #; (f:fpu) ft0  <-- 18.846
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 20, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 27, a5  = 20, (wrb) a5  <-- 7
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 7
                                                #; (f:fpu) ft4  <-- 7.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 26, (wrb) a3  <-- 27
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
      0x80000728 addi    a0, a0, 1              #; a0  = 27, (wrb) a0  <-- 28
      0x8000072c bnez    a1, pc - 40            #; a1  = 3, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 21.9870000
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 27, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 21.9870000, ft4  = 21.9870000
                                                #; (f:fpu) ft0  <-- 21.9870000
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 21, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 28, a5  = 20, (wrb) a5  <-- 8
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 8
                                                #; (f:fpu) ft4  <-- 8.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 27, (wrb) a3  <-- 28
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
      0x80000728 addi    a0, a0, 1              #; a0  = 28, (wrb) a0  <-- 29
      0x8000072c bnez    a1, pc - 40            #; a1  = 2, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 25.128
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 28, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128
                                                #; (f:fpu) ft0  <-- 25.128
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 22, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 29, a5  = 20, (wrb) a5  <-- 9
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 9
                                                #; (f:fpu) ft4  <-- 9.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 28, (wrb) a3  <-- 29
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
      0x80000728 addi    a0, a0, 1              #; a0  = 29, (wrb) a0  <-- 30
      0x8000072c bnez    a1, pc - 40            #; a1  = 1, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 28.269
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 29, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 28.269, ft4  = 28.269
                                                #; (f:fpu) ft0  <-- 28.269
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 23, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 30, a5  = 20, (wrb) a5  <-- 10
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 10
                                                #; (f:fpu) ft4  <-- 10.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 29, (wrb) a3  <-- 30
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
      0x80000728 addi    a0, a0, 1              #; a0  = 30, (wrb) a0  <-- 31
      0x8000072c bnez    a1, pc - 40            #; a1  = 0, not taken
                                                #; (f:fpu) ft4  <-- 31.41
; init_data (test_mat.c:10)
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41
                                                #; (f:fpu) ft0  <-- 31.41
; init_data (test_mat.c:12)
      0x80000734 ret                            #; ra  = 0x800007e8, goto 0x800007e8
      0x80000730 csrrci  a0, ssr, 1             #; 
; main (test_mat.c:28)
      0x800007e8 li      a1, 42                 #; (wrb) a1  <-- 42
      0x800007ec mv      a0, s1                 #; s1  = 0x001000f0, (wrb) a0  <-- 0x001000f0
      0x800007f0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800007f0
      0x800007f4 jalr    ra, ra, -444           #; ra  = 0x800007f0, (wrb) ra  <-- 0x800007f8, goto 0x80000634
; init_data (test_mat.c:9)
      0x80000634 addi    a2, a1, -1             #; a1  = 42, (wrb) a2  <-- 41
      0x80000638 slli    a5, a2, 3              #; a2  = 41, (wrb) a5  <-- 328
      0x8000063c add     a4, a5, a0             #; a5  = 328, a0  = 0x001000f0, (wrb) a4  <-- 0x00100238
      0x80000640 srli    a3, a0, 20             #; a0  = 0x001000f0, (wrb) a3  <-- 1
      0x80000644 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
      0x80000648 bgeu    a4, a5, pc + 100       #; a4  = 0x00100238, a5  = 328, taken, goto 0x800006ac
; init_data (test_mat.c:0)
      0x800006ac lui     a5, 0x120              #; (wrb) a5  <-- 0x00120000
      0x800006b0 addi    a5, a5, 1              #; a5  = 0x00120000, (wrb) a5  <-- 0x00120001
      0x800006b4 sltu    a4, a4, a5             #; a4  = 0x00100238, a5  = 0x00120001, (wrb) a4  <-- 1
; init_data (test_mat.c:9)
      0x800006b8 and     a3, a3, a4             #; a3  = 1, a4  = 1, (wrb) a3  <-- 1
      0x800006bc beqz    a3, pc - 100           #; a3  = 1, not taken
; init_data (test_mat.c:0)
      0x800006c0 li      a3, 0                  #; (wrb) a3  <-- 0
      0x800006c4 li      a4, 8                  #; (wrb) a4  <-- 8
; init_data (test_mat.c:9)
      0x800006c8 li      a5, 64                 #; (wrb) a5  <-- 64
      0x800006cc scfgw   a2, a5                 #; a2  = 41, a5  = 64
      0x800006d0 li      a2, 192                #; (wrb) a2  <-- 192
      0x800006d4 scfgw   a4, a2                 #; a4  = 8, a2  = 192
      0x800006d8 li      a2, 32                 #; (wrb) a2  <-- 32
      0x800006dc scfgw   zero, a2               #; a2  = 32, (acc) ra  <-- 0x00c020ab
      0x800006e0 scfgwi  a0, 896                #; a0  = 0x001000f0
      0x800006e8 li      a0, 1                  #; (wrb) a0  <-- 1
      0x800006e4 csrrsi  a0, ssr, 1             #; 
; init_data (test_mat.c:0)
      0x800006ec auipc   a2, 0x3                #; (wrb) a2  <-- 0x800036ec
      0x800006f0 addi    a2, a2, -980           #; a2  = 0x800036ec, (wrb) a2  <-- 0x80003318
                                                #; (acc) gp  <-- 0x00063187
      0x800006f8 lui     a2, 0xccccd            #; (wrb) a2  <-- 0xccccd000
      0x800006fc addi    a2, a2, -819           #; a2  = 0xccccd000, (wrb) a2  <-- 0xcccccccd
      0x800006f4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x80003318]
      0x80000700 li      a4, 20                 #; (wrb) a4  <-- 20
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 0, a2  = 0xcccccccd, (acc) a5  <-- 0x02c6b7b3
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 0, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (f:lsu) ft3  <-- 3.141
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 1, a5  = 0, (wrb) a5  <-- 1
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 1
                                                #; (f:fpu) ft4  <-- 1.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 0, (wrb) a3  <-- 1
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 42, (wrb) a1  <-- 41
      0x80000728 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x8000072c bnez    a1, pc - 40            #; a1  = 41, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 3.141
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 1, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
                                                #; (f:fpu) ft0  <-- 3.141
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 0, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 2, a5  = 0, (wrb) a5  <-- 2
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 2
                                                #; (f:fpu) ft4  <-- 2.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 1, (wrb) a3  <-- 2
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 41, (wrb) a1  <-- 40
      0x80000728 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x8000072c bnez    a1, pc - 40            #; a1  = 40, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 6.282
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 2, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
                                                #; (f:fpu) ft0  <-- 6.282
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 1, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 3, a5  = 0, (wrb) a5  <-- 3
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 3
                                                #; (f:fpu) ft4  <-- 3.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 2, (wrb) a3  <-- 3
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 40, (wrb) a1  <-- 39
      0x80000728 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x8000072c bnez    a1, pc - 40            #; a1  = 39, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 9.423
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 3, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 9.423, ft4  = 9.423
                                                #; (f:fpu) ft0  <-- 9.423
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 2, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 4, a5  = 0, (wrb) a5  <-- 4
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 4
                                                #; (f:fpu) ft4  <-- 4.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 3, (wrb) a3  <-- 4
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 39, (wrb) a1  <-- 38
      0x80000728 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x8000072c bnez    a1, pc - 40            #; a1  = 38, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 12.564
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 4, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564
                                                #; (f:fpu) ft0  <-- 12.564
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 3, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 5, a5  = 0, (wrb) a5  <-- 5
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 5
                                                #; (f:fpu) ft4  <-- 5.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 4, (wrb) a3  <-- 5
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 38, (wrb) a1  <-- 37
      0x80000728 addi    a0, a0, 1              #; a0  = 5, (wrb) a0  <-- 6
      0x8000072c bnez    a1, pc - 40            #; a1  = 37, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 15.705
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 5, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 15.705, ft4  = 15.705
                                                #; (f:fpu) ft0  <-- 15.705
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 4, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 6, a5  = 0, (wrb) a5  <-- 6
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 6
                                                #; (f:fpu) ft4  <-- 6.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 6
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 37, (wrb) a1  <-- 36
      0x80000728 addi    a0, a0, 1              #; a0  = 6, (wrb) a0  <-- 7
      0x8000072c bnez    a1, pc - 40            #; a1  = 36, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 18.846
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 6, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846
                                                #; (f:fpu) ft0  <-- 18.846
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 4, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 7, a5  = 0, (wrb) a5  <-- 7
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 7
                                                #; (f:fpu) ft4  <-- 7.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 6, (wrb) a3  <-- 7
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 36, (wrb) a1  <-- 35
      0x80000728 addi    a0, a0, 1              #; a0  = 7, (wrb) a0  <-- 8
      0x8000072c bnez    a1, pc - 40            #; a1  = 35, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 21.9870000
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 7, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 21.9870000, ft4  = 21.9870000
                                                #; (f:fpu) ft0  <-- 21.9870000
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 5, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 8, a5  = 0, (wrb) a5  <-- 8
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 8
                                                #; (f:fpu) ft4  <-- 8.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 7, (wrb) a3  <-- 8
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 35, (wrb) a1  <-- 34
      0x80000728 addi    a0, a0, 1              #; a0  = 8, (wrb) a0  <-- 9
      0x8000072c bnez    a1, pc - 40            #; a1  = 34, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 25.128
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 8, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128
                                                #; (f:fpu) ft0  <-- 25.128
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 6, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 9, a5  = 0, (wrb) a5  <-- 9
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 9
                                                #; (f:fpu) ft4  <-- 9.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 8, (wrb) a3  <-- 9
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 34, (wrb) a1  <-- 33
      0x80000728 addi    a0, a0, 1              #; a0  = 9, (wrb) a0  <-- 10
      0x8000072c bnez    a1, pc - 40            #; a1  = 33, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 28.269
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 9, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 28.269, ft4  = 28.269
                                                #; (f:fpu) ft0  <-- 28.269
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 7, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 10, a5  = 0, (wrb) a5  <-- 10
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 10
                                                #; (f:fpu) ft4  <-- 10.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 9, (wrb) a3  <-- 10
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 33, (wrb) a1  <-- 32
      0x80000728 addi    a0, a0, 1              #; a0  = 10, (wrb) a0  <-- 11
      0x8000072c bnez    a1, pc - 40            #; a1  = 32, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 31.41
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 10, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41
                                                #; (f:fpu) ft0  <-- 31.41
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 8, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 11, a5  = 0, (wrb) a5  <-- 11
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 11
                                                #; (f:fpu) ft4  <-- 11.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 10, (wrb) a3  <-- 11
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 32, (wrb) a1  <-- 31
      0x80000728 addi    a0, a0, 1              #; a0  = 11, (wrb) a0  <-- 12
      0x8000072c bnez    a1, pc - 40            #; a1  = 31, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 34.551
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 11, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 34.551, ft4  = 34.551
                                                #; (f:fpu) ft0  <-- 34.551
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 8, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 12, a5  = 0, (wrb) a5  <-- 12
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 12
                                                #; (f:fpu) ft4  <-- 12.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 11, (wrb) a3  <-- 12
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 12.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 31, (wrb) a1  <-- 30
      0x80000728 addi    a0, a0, 1              #; a0  = 12, (wrb) a0  <-- 13
      0x8000072c bnez    a1, pc - 40            #; a1  = 30, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 37.692
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 12, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 37.692, ft4  = 37.692
                                                #; (f:fpu) ft0  <-- 37.692
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 9, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 13, a5  = 0, (wrb) a5  <-- 13
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 13
                                                #; (f:fpu) ft4  <-- 13.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 12, (wrb) a3  <-- 13
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 13.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 30, (wrb) a1  <-- 29
      0x80000728 addi    a0, a0, 1              #; a0  = 13, (wrb) a0  <-- 14
      0x8000072c bnez    a1, pc - 40            #; a1  = 29, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 40.833
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 13, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 40.833, ft4  = 40.833
                                                #; (f:fpu) ft0  <-- 40.833
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 10, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 14, a5  = 0, (wrb) a5  <-- 14
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 14
                                                #; (f:fpu) ft4  <-- 14.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 13, (wrb) a3  <-- 14
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 14.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 29, (wrb) a1  <-- 28
      0x80000728 addi    a0, a0, 1              #; a0  = 14, (wrb) a0  <-- 15
      0x8000072c bnez    a1, pc - 40            #; a1  = 28, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 43.9740000
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 14, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 43.9740000, ft4  = 43.9740000
                                                #; (f:fpu) ft0  <-- 43.9740000
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 11, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 15, a5  = 0, (wrb) a5  <-- 15
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 15
                                                #; (f:fpu) ft4  <-- 15.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 14, (wrb) a3  <-- 15
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 15.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 28, (wrb) a1  <-- 27
      0x80000728 addi    a0, a0, 1              #; a0  = 15, (wrb) a0  <-- 16
      0x8000072c bnez    a1, pc - 40            #; a1  = 27, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 47.115
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 15, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 47.115, ft4  = 47.115
                                                #; (f:fpu) ft0  <-- 47.115
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 12, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 16, a5  = 0, (wrb) a5  <-- 16
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 16
                                                #; (f:fpu) ft4  <-- 16.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 15, (wrb) a3  <-- 16
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 16.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 27, (wrb) a1  <-- 26
      0x80000728 addi    a0, a0, 1              #; a0  = 16, (wrb) a0  <-- 17
      0x8000072c bnez    a1, pc - 40            #; a1  = 26, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 50.256
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 16, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 50.256, ft4  = 50.256
                                                #; (f:fpu) ft0  <-- 50.256
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 12, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 17, a5  = 0, (wrb) a5  <-- 17
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 17
                                                #; (f:fpu) ft4  <-- 17.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 16, (wrb) a3  <-- 17
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 17.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 26, (wrb) a1  <-- 25
      0x80000728 addi    a0, a0, 1              #; a0  = 17, (wrb) a0  <-- 18
      0x8000072c bnez    a1, pc - 40            #; a1  = 25, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 53.397
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 17, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 53.397, ft4  = 53.397
                                                #; (f:fpu) ft0  <-- 53.397
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 13, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 18, a5  = 0, (wrb) a5  <-- 18
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 18
                                                #; (f:fpu) ft4  <-- 18.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 17, (wrb) a3  <-- 18
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 18.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 25, (wrb) a1  <-- 24
      0x80000728 addi    a0, a0, 1              #; a0  = 18, (wrb) a0  <-- 19
      0x8000072c bnez    a1, pc - 40            #; a1  = 24, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 56.538
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 18, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 56.538, ft4  = 56.538
                                                #; (f:fpu) ft0  <-- 56.538
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 14, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 19, a5  = 0, (wrb) a5  <-- 19
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 19
                                                #; (f:fpu) ft4  <-- 19.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 18, (wrb) a3  <-- 19
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 19.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 24, (wrb) a1  <-- 23
      0x80000728 addi    a0, a0, 1              #; a0  = 19, (wrb) a0  <-- 20
      0x8000072c bnez    a1, pc - 40            #; a1  = 23, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 59.679
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 19, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 59.679, ft4  = 59.679
                                                #; (f:fpu) ft0  <-- 59.679
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 15, (wrb) a5  <-- 0
      0x8000070c mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 20, a5  = 0, (wrb) a5  <-- 20
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 20
                                                #; (f:fpu) ft4  <-- 20.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 19, (wrb) a3  <-- 20
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 20.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 23, (wrb) a1  <-- 22
      0x80000728 addi    a0, a0, 1              #; a0  = 20, (wrb) a0  <-- 21
      0x8000072c bnez    a1, pc - 40            #; a1  = 22, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 62.82
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 20, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 62.82, ft4  = 62.82
                                                #; (f:fpu) ft0  <-- 62.82
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 16, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 21, a5  = 20, (wrb) a5  <-- 1
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 1
                                                #; (f:fpu) ft4  <-- 1.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 20, (wrb) a3  <-- 21
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 22, (wrb) a1  <-- 21
      0x80000728 addi    a0, a0, 1              #; a0  = 21, (wrb) a0  <-- 22
      0x8000072c bnez    a1, pc - 40            #; a1  = 21, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 3.141
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 21, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
                                                #; (f:fpu) ft0  <-- 3.141
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 16, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 22, a5  = 20, (wrb) a5  <-- 2
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 2
                                                #; (f:fpu) ft4  <-- 2.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 21, (wrb) a3  <-- 22
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 21, (wrb) a1  <-- 20
      0x80000728 addi    a0, a0, 1              #; a0  = 22, (wrb) a0  <-- 23
      0x8000072c bnez    a1, pc - 40            #; a1  = 20, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 6.282
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 22, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
                                                #; (f:fpu) ft0  <-- 6.282
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 17, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 23, a5  = 20, (wrb) a5  <-- 3
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 3
                                                #; (f:fpu) ft4  <-- 3.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 22, (wrb) a3  <-- 23
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 20, (wrb) a1  <-- 19
      0x80000728 addi    a0, a0, 1              #; a0  = 23, (wrb) a0  <-- 24
      0x8000072c bnez    a1, pc - 40            #; a1  = 19, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 9.423
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 23, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 9.423, ft4  = 9.423
                                                #; (f:fpu) ft0  <-- 9.423
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 18, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 24, a5  = 20, (wrb) a5  <-- 4
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 4
                                                #; (f:fpu) ft4  <-- 4.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 23, (wrb) a3  <-- 24
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 19, (wrb) a1  <-- 18
      0x80000728 addi    a0, a0, 1              #; a0  = 24, (wrb) a0  <-- 25
      0x8000072c bnez    a1, pc - 40            #; a1  = 18, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 12.564
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 24, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564
                                                #; (f:fpu) ft0  <-- 12.564
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 19, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 25, a5  = 20, (wrb) a5  <-- 5
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 5
                                                #; (f:fpu) ft4  <-- 5.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 24, (wrb) a3  <-- 25
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 18, (wrb) a1  <-- 17
      0x80000728 addi    a0, a0, 1              #; a0  = 25, (wrb) a0  <-- 26
      0x8000072c bnez    a1, pc - 40            #; a1  = 17, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 15.705
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 25, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 15.705, ft4  = 15.705
                                                #; (f:fpu) ft0  <-- 15.705
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 20, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 26, a5  = 20, (wrb) a5  <-- 6
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 6
                                                #; (f:fpu) ft4  <-- 6.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 25, (wrb) a3  <-- 26
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 17, (wrb) a1  <-- 16
      0x80000728 addi    a0, a0, 1              #; a0  = 26, (wrb) a0  <-- 27
      0x8000072c bnez    a1, pc - 40            #; a1  = 16, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 18.846
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 26, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846
                                                #; (f:fpu) ft0  <-- 18.846
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 20, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 27, a5  = 20, (wrb) a5  <-- 7
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 7
                                                #; (f:fpu) ft4  <-- 7.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 26, (wrb) a3  <-- 27
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 16, (wrb) a1  <-- 15
      0x80000728 addi    a0, a0, 1              #; a0  = 27, (wrb) a0  <-- 28
      0x8000072c bnez    a1, pc - 40            #; a1  = 15, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 21.9870000
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 27, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 21.9870000, ft4  = 21.9870000
                                                #; (f:fpu) ft0  <-- 21.9870000
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 21, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 28, a5  = 20, (wrb) a5  <-- 8
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 8
                                                #; (f:fpu) ft4  <-- 8.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 27, (wrb) a3  <-- 28
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 15, (wrb) a1  <-- 14
      0x80000728 addi    a0, a0, 1              #; a0  = 28, (wrb) a0  <-- 29
      0x8000072c bnez    a1, pc - 40            #; a1  = 14, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 25.128
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 28, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128
                                                #; (f:fpu) ft0  <-- 25.128
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 22, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 29, a5  = 20, (wrb) a5  <-- 9
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 9
                                                #; (f:fpu) ft4  <-- 9.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 28, (wrb) a3  <-- 29
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 14, (wrb) a1  <-- 13
      0x80000728 addi    a0, a0, 1              #; a0  = 29, (wrb) a0  <-- 30
      0x8000072c bnez    a1, pc - 40            #; a1  = 13, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 28.269
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 29, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 28.269, ft4  = 28.269
                                                #; (f:fpu) ft0  <-- 28.269
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 23, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 30, a5  = 20, (wrb) a5  <-- 10
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 10
                                                #; (f:fpu) ft4  <-- 10.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 29, (wrb) a3  <-- 30
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 13, (wrb) a1  <-- 12
      0x80000728 addi    a0, a0, 1              #; a0  = 30, (wrb) a0  <-- 31
      0x8000072c bnez    a1, pc - 40            #; a1  = 12, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 31.41
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 30, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41
                                                #; (f:fpu) ft0  <-- 31.41
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 24, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 31, a5  = 20, (wrb) a5  <-- 11
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 11
                                                #; (f:fpu) ft4  <-- 11.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 30, (wrb) a3  <-- 31
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 12, (wrb) a1  <-- 11
      0x80000728 addi    a0, a0, 1              #; a0  = 31, (wrb) a0  <-- 32
      0x8000072c bnez    a1, pc - 40            #; a1  = 11, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 34.551
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 31, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 34.551, ft4  = 34.551
                                                #; (f:fpu) ft0  <-- 34.551
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 24, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 32, a5  = 20, (wrb) a5  <-- 12
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 12
                                                #; (f:fpu) ft4  <-- 12.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 31, (wrb) a3  <-- 32
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 12.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 11, (wrb) a1  <-- 10
      0x80000728 addi    a0, a0, 1              #; a0  = 32, (wrb) a0  <-- 33
      0x8000072c bnez    a1, pc - 40            #; a1  = 10, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 37.692
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 32, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 37.692, ft4  = 37.692
                                                #; (f:fpu) ft0  <-- 37.692
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 25, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 33, a5  = 20, (wrb) a5  <-- 13
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 13
                                                #; (f:fpu) ft4  <-- 13.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 32, (wrb) a3  <-- 33
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 13.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 10, (wrb) a1  <-- 9
      0x80000728 addi    a0, a0, 1              #; a0  = 33, (wrb) a0  <-- 34
      0x8000072c bnez    a1, pc - 40            #; a1  = 9, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 40.833
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 33, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 40.833, ft4  = 40.833
                                                #; (f:fpu) ft0  <-- 40.833
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 26, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 34, a5  = 20, (wrb) a5  <-- 14
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 14
                                                #; (f:fpu) ft4  <-- 14.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 33, (wrb) a3  <-- 34
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 14.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 9, (wrb) a1  <-- 8
      0x80000728 addi    a0, a0, 1              #; a0  = 34, (wrb) a0  <-- 35
      0x8000072c bnez    a1, pc - 40            #; a1  = 8, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 43.9740000
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 34, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 43.9740000, ft4  = 43.9740000
                                                #; (f:fpu) ft0  <-- 43.9740000
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 27, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 35, a5  = 20, (wrb) a5  <-- 15
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 15
                                                #; (f:fpu) ft4  <-- 15.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 34, (wrb) a3  <-- 35
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 15.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 8, (wrb) a1  <-- 7
      0x80000728 addi    a0, a0, 1              #; a0  = 35, (wrb) a0  <-- 36
      0x8000072c bnez    a1, pc - 40            #; a1  = 7, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 47.115
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 35, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 47.115, ft4  = 47.115
                                                #; (f:fpu) ft0  <-- 47.115
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 28, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 36, a5  = 20, (wrb) a5  <-- 16
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 16
                                                #; (f:fpu) ft4  <-- 16.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 35, (wrb) a3  <-- 36
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 16.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
      0x80000728 addi    a0, a0, 1              #; a0  = 36, (wrb) a0  <-- 37
      0x8000072c bnez    a1, pc - 40            #; a1  = 6, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 50.256
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 36, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 50.256, ft4  = 50.256
                                                #; (f:fpu) ft0  <-- 50.256
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 28, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 37, a5  = 20, (wrb) a5  <-- 17
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 17
                                                #; (f:fpu) ft4  <-- 17.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 36, (wrb) a3  <-- 37
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 17.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
      0x80000728 addi    a0, a0, 1              #; a0  = 37, (wrb) a0  <-- 38
      0x8000072c bnez    a1, pc - 40            #; a1  = 5, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 53.397
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 37, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 53.397, ft4  = 53.397
                                                #; (f:fpu) ft0  <-- 53.397
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 29, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 38, a5  = 20, (wrb) a5  <-- 18
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 18
                                                #; (f:fpu) ft4  <-- 18.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 37, (wrb) a3  <-- 38
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 18.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
      0x80000728 addi    a0, a0, 1              #; a0  = 38, (wrb) a0  <-- 39
      0x8000072c bnez    a1, pc - 40            #; a1  = 4, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 56.538
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 38, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 56.538, ft4  = 56.538
                                                #; (f:fpu) ft0  <-- 56.538
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 30, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 39, a5  = 20, (wrb) a5  <-- 19
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 19
                                                #; (f:fpu) ft4  <-- 19.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 38, (wrb) a3  <-- 39
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 19.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
      0x80000728 addi    a0, a0, 1              #; a0  = 39, (wrb) a0  <-- 40
      0x8000072c bnez    a1, pc - 40            #; a1  = 3, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 59.679
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 39, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 59.679, ft4  = 59.679
                                                #; (f:fpu) ft0  <-- 59.679
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 31, (wrb) a5  <-- 1
      0x8000070c mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 40, a5  = 20, (wrb) a5  <-- 20
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 20
                                                #; (f:fpu) ft4  <-- 20.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 39, (wrb) a3  <-- 40
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 20.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
      0x80000728 addi    a0, a0, 1              #; a0  = 40, (wrb) a0  <-- 41
      0x8000072c bnez    a1, pc - 40            #; a1  = 2, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 62.82
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 40, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 62.82, ft4  = 62.82
                                                #; (f:fpu) ft0  <-- 62.82
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 32, (wrb) a5  <-- 2
      0x8000070c mul     a5, a5, a4             #; a5  = 2, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 41, a5  = 40, (wrb) a5  <-- 1
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 1
                                                #; (f:fpu) ft4  <-- 1.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 40, (wrb) a3  <-- 41
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
      0x80000728 addi    a0, a0, 1              #; a0  = 41, (wrb) a0  <-- 42
      0x8000072c bnez    a1, pc - 40            #; a1  = 1, taken, goto 0x80000704
                                                #; (f:fpu) ft4  <-- 3.141
; init_data (test_mat.c:10)
      0x80000704 mulhu   a5, a3, a2             #; a3  = 41, a2  = 0xcccccccd
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
                                                #; (f:fpu) ft0  <-- 3.141
                                                #; (acc) a5  <-- 0x0047d793
      0x80000708 srli    a5, a5, 4              #; a5  = 32, (wrb) a5  <-- 2
      0x8000070c mul     a5, a5, a4             #; a5  = 2, a4  = 20
                                                #; (acc) a5  <-- 0x40f507b3
      0x80000710 sub     a5, a0, a5             #; a0  = 42, a5  = 40, (wrb) a5  <-- 2
      0x80000714 fcvt.d.wu ft4, a5              #; ac1  = 2
                                                #; (f:fpu) ft4  <-- 2.0
; init_data (test_mat.c:9)
      0x80000720 addi    a3, a3, 1              #; a3  = 41, (wrb) a3  <-- 42
      0x80000718 fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
      0x80000724 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
      0x80000728 addi    a0, a0, 1              #; a0  = 42, (wrb) a0  <-- 43
      0x8000072c bnez    a1, pc - 40            #; a1  = 0, not taken
                                                #; (f:fpu) ft4  <-- 6.282
; init_data (test_mat.c:10)
      0x8000071c fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
                                                #; (f:fpu) ft0  <-- 6.282
; init_data (test_mat.c:12)
      0x80000734 ret                            #; ra  = 0x800007f8, goto 0x800007f8
      0x80000730 csrrci  a0, ssr, 1             #; 
; main (test_mat.c:30)
      0x800007f8 li      a3, 5                  #; (wrb) a3  <-- 5
      0x800007fc li      a4, 6                  #; (wrb) a4  <-- 6
      0x80000800 li      a5, 7                  #; (wrb) a5  <-- 7
      0x80000804 mv      a0, s0                 #; s0  = 0x00100240, (wrb) a0  <-- 0x00100240
      0x80000808 mv      a1, s2                 #; s2  = 0x00100000, (wrb) a1  <-- 0x00100000
      0x8000080c mv      a2, s1                 #; s1  = 0x001000f0, (wrb) a2  <-- 0x001000f0
      0x80000810 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000810
      0x80000814 jalr    ra, ra, 212            #; ra  = 0x80000810, (wrb) ra  <-- 0x80000818, goto 0x800008e4
; matmul (matmul.c:5)
      0x800008e4 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x800008e8 sw      ra, 44(sp)             #; sp  = 0x0011ff10, 0x80000818 ~~> Word[0x0011ff3c]
      0x800008ec sw      s0, 40(sp)             #; sp  = 0x0011ff10, 0x00100240 ~~> Word[0x0011ff38]
      0x800008f0 sw      s1, 36(sp)             #; sp  = 0x0011ff10, 0x001000f0 ~~> Word[0x0011ff34]
      0x800008f4 sw      s2, 32(sp)             #; sp  = 0x0011ff10, 0x00100000 ~~> Word[0x0011ff30]
      0x800008f8 sw      s3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
      0x800008fc sw      s4, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
      0x80000900 sw      s5, 20(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff24]
      0x80000904 sw      s6, 16(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff20]
      0x80000908 sw      s7, 12(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff1c]
      0x8000090c mv      s6, a3                 #; a3  = 5, (wrb) s6  <-- 5
; matmul (matmul.c:6)
      0x80000910 slti    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 0
      0x80000914 slti    s1, a5, 1              #; a5  = 7, (wrb) s1  <-- 0
      0x80000918 or      a3, a3, s1             #; a3  = 0, s1  = 0, (wrb) a3  <-- 0
      0x8000091c bnez    a3, pc + 808           #; a3  = 0, not taken
; matmul (matmul.c:0)
      0x80000920 mv      s7, a0                 #; a0  = 0x00100240, (wrb) s7  <-- 0x00100240
; matmul (matmul.c:6)
      0x80000924 addi    a6, a5, -1             #; a5  = 7, (wrb) a6  <-- 6
      0x80000928 slli    t4, a6, 3              #; a6  = 6, (wrb) t4  <-- 48
      0x8000092c addi    t2, s6, -1             #; s6  = 5, (wrb) t2  <-- 4
      0x80000930 slli    s2, a5, 3              #; a5  = 7, (wrb) s2  <-- 56
      0x80000934 mul     a0, s2, t2             #; s2  = 56, t2  = 4
                                                #; (acc) a0  <-- 0x00ae8533
      0x80000938 add     a0, t4, a0             #; t4  = 48, a0  = 224, (wrb) a0  <-- 272
      0x8000093c add     s3, a0, s7             #; a0  = 272, s7  = 0x00100240, (wrb) s3  <-- 0x00100350
      0x80000940 sltu    a3, s3, a0             #; s3  = 0x00100350, a0  = 272, (wrb) a3  <-- 0
; matmul (matmul.c:9)
      0x80000944 bge     zero, a4, pc + 80      #; a4  = 6, not taken
; matmul (matmul.c:6)
      0x80000948 addi    t0, a4, -1             #; a4  = 6, (wrb) t0  <-- 5
      0x8000094c slli    t1, t0, 3              #; t0  = 5, (wrb) t1  <-- 40
      0x80000950 slli    s5, a4, 3              #; a4  = 6, (wrb) s5  <-- 48
      0x80000954 mul     a0, s5, t2             #; s5  = 48, t2  = 4
                                                #; (acc) t6  <-- 0x00a30fb3
      0x80000958 add     t6, t1, a0             #; t1  = 40, a0  = 192, (wrb) t6  <-- 232
      0x8000095c add     t5, t6, a1             #; t6  = 232, a1  = 0x00100000, (wrb) t5  <-- 0x001000e8
      0x80000960 mul     a7, s2, t0             #; s2  = 56, t0  = 5
      0x80000964 beqz    a3, pc + 112           #; a3  = 0, taken, goto 0x800009d4
; matmul (matmul.c:0)
      0x800009d4 sltu    a0, s3, a1             #; s3  = 0x00100350, a1  = 0x00100000, (wrb) a0  <-- 0
; matmul (matmul.c:6)
      0x800009d8 add     t3, a7, t4             #; a7  = 280, t4  = 48, (wrb) t3  <-- 328
      0x800009dc bgeu    t5, t6, pc - 104       #; t5  = 0x001000e8, t6  = 232, taken, goto 0x80000974
; matmul (matmul.c:0)
      0x80000974 sltu    s0, t5, s7             #; t5  = 0x001000e8, s7  = 0x00100240, (wrb) s0  <-- 1
; matmul (matmul.c:6)
      0x80000978 add     s4, t3, a2             #; t3  = 328, a2  = 0x001000f0, (wrb) s4  <-- 0x00100238
      0x8000097c bnez    a3, pc + 112           #; a3  = 0, not taken
; matmul (matmul.c:0)
      0x80000980 sltu    s1, s3, a2             #; s3  = 0x00100350, a2  = 0x001000f0, (wrb) s1  <-- 0
; matmul (matmul.c:6)
      0x80000984 or      a0, s0, a0             #; s0  = 1, a0  = 0, (wrb) a0  <-- 1
      0x80000988 bltu    s4, t3, pc + 112       #; s4  = 0x00100238, t3  = 328, not taken
; matmul (matmul.c:0)
      0x8000098c sltu    s0, s4, s7             #; s4  = 0x00100238, s7  = 0x00100240, (wrb) s0  <-- 1
      0x80000990 j       pc + 0x6c              #; goto 0x800009fc
; matmul (matmul.c:6)
      0x800009fc or      s0, s1, s0             #; s1  = 0, s0  = 1, (wrb) s0  <-- 1
      0x80000a00 and     s0, a0, s0             #; a0  = 1, s0  = 1, (wrb) s0  <-- 1
      0x80000a04 srli    a0, s7, 20             #; s7  = 0x00100240, (wrb) a0  <-- 1
      0x80000a08 snez    s1, a0                 #; a0  = 1, (wrb) s1  <-- 1
      0x80000a0c lui     a0, 0x120              #; (wrb) a0  <-- 0x00120000
      0x80000a10 addi    a0, a0, 1              #; a0  = 0x00120000, (wrb) a0  <-- 0x00120001
      0x80000a14 beqz    a3, pc + 12            #; a3  = 0, taken, goto 0x80000a20
; matmul (matmul.c:0)
      0x80000a20 sltu    a3, s3, a0             #; s3  = 0x00100350, a0  = 0x00120001, (wrb) a3  <-- 1
; matmul (matmul.c:6)
      0x80000a24 and     a3, s1, a3             #; s1  = 1, a3  = 1, (wrb) a3  <-- 1
      0x80000a28 and     a3, a3, s0             #; a3  = 1, s0  = 1, (wrb) a3  <-- 1
      0x80000a2c srli    s0, a1, 20             #; a1  = 0x00100000, (wrb) s0  <-- 1
      0x80000a30 snez    s0, s0                 #; s0  = 1, (wrb) s0  <-- 1
      0x80000a34 bgeu    t5, t6, pc + 12        #; t5  = 0x001000e8, t6  = 232, taken, goto 0x80000a40
; matmul (matmul.c:0)
      0x80000a40 sltu    s1, t5, a0             #; t5  = 0x001000e8, a0  = 0x00120001, (wrb) s1  <-- 1
; matmul (matmul.c:6)
      0x80000a44 and     s1, s0, s1             #; s0  = 1, s1  = 1, (wrb) s1  <-- 1
      0x80000a48 and     a3, s1, a3             #; s1  = 1, a3  = 1, (wrb) a3  <-- 1
      0x80000a4c srli    s1, a2, 20             #; a2  = 0x001000f0, (wrb) s1  <-- 1
      0x80000a50 snez    s1, s1                 #; s1  = 1, (wrb) s1  <-- 1
      0x80000a54 bgeu    s4, t3, pc + 12        #; s4  = 0x00100238, t3  = 328, taken, goto 0x80000a60
; matmul (matmul.c:0)
      0x80000a60 sltu    a0, s4, a0             #; s4  = 0x00100238, a0  = 0x00120001, (wrb) a0  <-- 1
; matmul (matmul.c:6)
      0x80000a64 and     a0, s1, a0             #; s1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80000a68 and     a0, a0, a3             #; a0  = 1, a3  = 1, (wrb) a0  <-- 1
      0x80000a6c beqz    a0, pc + 252           #; a0  = 1, not taken
; matmul (matmul.c:0)
      0x80000a70 li      a0, 0                  #; (wrb) a0  <-- 0
      0x80000a74 li      t4, 8                  #; (wrb) t4  <-- 8
; matmul (matmul.c:6)
      0x80000a78 li      s1, 64                 #; (wrb) s1  <-- 64
      0x80000a7c scfgw   a6, s1                 #; a6  = 6, s1  = 64
      0x80000a80 li      s1, 192                #; (wrb) s1  <-- 192
      0x80000a84 scfgw   t4, s1                 #; t4  = 8, s1  = 192
      0x80000a88 li      s1, 96                 #; (wrb) s1  <-- 96
      0x80000a8c scfgw   t2, s1                 #; t2  = 4, s1  = 96
      0x80000a90 li      s1, 224                #; (wrb) s1  <-- 224
      0x80000a94 scfgw   t4, s1                 #; t4  = 8, s1  = 224
      0x80000a98 li      s1, 32                 #; (wrb) s1  <-- 32
      0x80000a9c scfgw   zero, s1               #; s1  = 32
      0x80000aa0 scfgwi  s7, 928                #; s7  = 0x00100240
      0x80000aa4 li      s1, 1                  #; (wrb) s1  <-- 1
      0x80000aa8 addi    s0, s1, 64             #; s1  = 1, (wrb) s0  <-- 65
      0x80000aac scfgw   t0, s0                 #; t0  = 5, s0  = 65, (acc) ra  <-- 0x0082a0ab
      0x80000ab0 addi    s0, s1, 192            #; s1  = 1, (wrb) s0  <-- 193
      0x80000ab4 scfgw   t4, s0                 #; t4  = 8, s0  = 193
      0x80000ab8 sub     s0, zero, t1           #; t1  = 40, (wrb) s0  <-- -40
      0x80000abc addi    a3, s1, 96             #; s1  = 1, (wrb) a3  <-- 97
      0x80000ac0 scfgw   a6, a3                 #; a6  = 6, a3  = 97
      0x80000ac4 addi    a3, s1, 224            #; s1  = 1, (wrb) a3  <-- 225
      0x80000ac8 scfgw   s0, a3                 #; s0  = -40, a3  = 225
      0x80000acc addi    a3, s1, 128            #; s1  = 1, (wrb) a3  <-- 129
      0x80000ad0 addi    s0, s1, 256            #; s1  = 1, (wrb) s0  <-- 257
      0x80000ad4 scfgw   t2, a3                 #; t2  = 4, a3  = 129
      0x80000ad8 scfgw   t4, s0                 #; t4  = 8, s0  = 257
      0x80000adc addi    a3, s1, 32             #; s1  = 1, (wrb) a3  <-- 33
      0x80000ae0 scfgw   zero, a3               #; a3  = 33
      0x80000ae4 scfgwi  a1, 833                #; a1  = 0x00100000
      0x80000ae8 li      a1, 2                  #; (wrb) a1  <-- 2
      0x80000aec addi    a3, a1, 64             #; a1  = 2, (wrb) a3  <-- 66
      0x80000af0 addi    s1, a1, 192            #; a1  = 2, (wrb) s1  <-- 194
      0x80000af4 scfgw   t0, a3                 #; t0  = 5, a3  = 66
      0x80000af8 scfgw   s2, s1                 #; s2  = 56, s1  = 194
      0x80000afc sub     a3, t4, a7             #; t4  = 8, a7  = 280, (wrb) a3  <-- -272
      0x80000b00 addi    s1, a1, 96             #; a1  = 2, (wrb) s1  <-- 98
      0x80000b04 addi    s0, a1, 224            #; a1  = 2, (wrb) s0  <-- 226
      0x80000b08 scfgw   a6, s1                 #; a6  = 6, s1  = 98
      0x80000b0c scfgw   a3, s0                 #; a3  = -272, s0  = 226
      0x80000b10 sub     a3, zero, t3           #; t3  = 328, (wrb) a3  <-- -328
      0x80000b14 addi    s1, a1, 128            #; a1  = 2, (wrb) s1  <-- 130
      0x80000b18 addi    s0, a1, 256            #; a1  = 2, (wrb) s0  <-- 258
      0x80000b1c scfgw   t2, s1                 #; t2  = 4, s1  = 130
      0x80000b20 scfgw   a3, s0                 #; a3  = -328, s0  = 258
      0x80000b24 addi    a1, a1, 32             #; a1  = 2, (wrb) a1  <-- 34
      0x80000b28 scfgw   zero, a1               #; a1  = 34
      0x80000b2c scfgwi  a2, 834                #; a2  = 0x001000f0
      0x80000b30 csrrsi  a1, ssr, 1             #; 
; matmul (matmul.c:0)
      0x80000b38 li      a1, 0                  #; (wrb) a1  <-- 0
      0x80000b34 fcvt.d.w ft3, zero             #; ac1  = 0
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft3  <-- 0.0
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
; matmul (matmul.c:0)
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 0.0
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 3.141, ft4  = 0.0
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                                                #; (f:fpu) ft4  <-- 9.865881
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 6.282, ft4  = 9.865881
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 167.7199770
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 9.423, ft4  = 167.7199770
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 611.6846220
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 12.564, ft4  = 611.6846220
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 690.6116700
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 15.705, ft4  = 690.6116700
                                                #; (f:fpu) ft4  <-- 1134.5763150
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 18.846, ft4  = 1134.5763150
                                                #; (f:fpu) ft4  <-- 2081.7008910
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 1, a5  = 7, taken, goto 0x80000b3c
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 2081.7008910, ft4  = 2081.7008910
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft0  <-- 2081.7008910
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
; matmul (matmul.c:0)
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 0.0
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 3.141, ft4  = 0.0
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                                                #; (f:fpu) ft4  <-- 19.7317620
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 6.282, ft4  = 19.7317620
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 197.3176200
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 9.423, ft4  = 197.3176200
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 670.8799080
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 12.564, ft4  = 670.8799080
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 789.2704800
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 15.705, ft4  = 789.2704800
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 2, a5  = 7, taken, goto 0x80000b3c
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 1282.5645300
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 18.846, ft4  = 1282.5645300
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                                                #; (f:fpu) ft4  <-- 2288.8843920
; matmul (matmul.c:12)
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 2288.8843920, ft4  = 2288.8843920
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2288.8843920
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 3.141, ft4  = 0.0
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 29.5976430
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 6.282, ft4  = 29.5976430
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 226.9152630
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 9.423, ft4  = 226.9152630
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 730.0751940
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 12.564, ft4  = 730.0751940
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 3, a5  = 7, taken, goto 0x80000b3c
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 887.9292900
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 15.705, ft4  = 887.9292900
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                                                #; (f:fpu) ft4  <-- 1430.5527450
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 18.846, ft4  = 1430.5527450
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                                                #; (f:fpu) ft4  <-- 2496.0678930
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 2496.0678930, ft4  = 2496.0678930
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2496.0678930
                                                #; (f:fpu) ft4  <-- 0.0
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 3.141, ft4  = 0.0
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 39.4635240
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 6.282, ft4  = 39.4635240
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 256.5129060
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 9.423, ft4  = 256.5129060
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 4, a5  = 7, taken, goto 0x80000b3c
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 789.2704800
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 12.564, ft4  = 789.2704800
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                                                #; (f:fpu) ft4  <-- 986.5881000
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 15.705, ft4  = 986.5881000
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                                                #; (f:fpu) ft4  <-- 1578.5409600
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 18.846, ft4  = 1578.5409600
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 2703.2513940
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 2703.2513940, ft4  = 2703.2513940
; matmul (matmul.c:0)
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2703.2513940
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 0.0
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 3.141, ft4  = 0.0
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 49.3294050
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 6.282, ft4  = 49.3294050
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 5, a5  = 7, taken, goto 0x80000b3c
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 286.1105490
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 9.423, ft4  = 286.1105490
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                                                #; (f:fpu) ft4  <-- 848.4657660
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 12.564, ft4  = 848.4657660
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                                                #; (f:fpu) ft4  <-- 1085.2469100
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 15.705, ft4  = 1085.2469100
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 1726.5291750
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 18.846, ft4  = 1726.5291750
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                                                #; (f:fpu) ft4  <-- 2910.4348950
; matmul (matmul.c:12)
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 2910.4348950, ft4  = 2910.4348950
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2910.4348950
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 3.141, ft4  = 0.0
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 6, a5  = 7, taken, goto 0x80000b3c
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 59.1952860
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 6.282, ft4  = 59.1952860
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                                                #; (f:fpu) ft4  <-- 315.7081920
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 9.423, ft4  = 315.7081920
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                                                #; (f:fpu) ft4  <-- 907.6610520
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 12.564, ft4  = 907.6610520
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 1183.9057200
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 15.705, ft4  = 1183.9057200
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                                                #; (f:fpu) ft4  <-- 1874.5173900
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 18.846, ft4  = 1874.5173900
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                                                #; (f:fpu) ft4  <-- 1933.7126760
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 7, a5  = 7, not taken
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 1933.7126760, ft4  = 1933.7126760
; matmul (matmul.c:6)
      0x80000b5c addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 1933.7126760
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 3.141, ft4  = 0.0
                                                #; (f:fpu) ft4  <-- 69.0611670
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 6.282, ft4  = 69.0611670
                                                #; (f:fpu) ft4  <-- 345.3058350
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 9.423, ft4  = 345.3058350
; matmul (matmul.c:6)
      0x80000b60 bne     a0, s6, pc - 40        #; a0  = 1, s6  = 5, taken, goto 0x80000b38
; matmul (matmul.c:0)
      0x80000b38 li      a1, 0                  #; (wrb) a1  <-- 0
                                                #; (f:fpu) ft4  <-- 374.9034780
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 12.564, ft4  = 374.9034780
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 690.6116700
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 15.705, ft4  = 690.6116700
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 1430.5527450
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 18.846, ft4  = 1430.5527450
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 1548.9433170
; matmul (matmul.c:12)
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 1548.9433170, ft4  = 1548.9433170
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 1548.9433170
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 21.9870000, ft4  = 0.0
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                                                #; (f:fpu) ft4  <-- 69.0611670
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 25.128, ft4  = 69.0611670
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 1, a5  = 7, taken, goto 0x80000b3c
                                                #; (f:fpu) ft4  <-- 700.4775510
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 28.269, ft4  = 700.4775510
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 2032.3714860
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 31.41, ft4  = 2032.3714860
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 2229.6891060
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 34.551, ft4  = 2229.6891060
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 3206.4113250
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 37.692, ft4  = 3206.4113250
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 5100.6604770
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 5100.6604770, ft4  = 5100.6604770
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5100.6604770
                                                #; (f:fpu) ft4  <-- 0.0
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 21.9870000, ft4  = 0.0
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 2, a5  = 7, taken, goto 0x80000b3c
                                                #; (f:fpu) ft4  <-- 138.1223340
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 25.128, ft4  = 138.1223340
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 848.4657660
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 28.269, ft4  = 848.4657660
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 2269.1526300
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 31.41, ft4  = 2269.1526300
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 2565.1290600
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 34.551, ft4  = 2565.1290600
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 3650.3759700
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 37.692, ft4  = 3650.3759700
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 5663.0156940
; matmul (matmul.c:12)
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 5663.0156940, ft4  = 5663.0156940
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5663.0156940
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 3, a5  = 7, taken, goto 0x80000b3c
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 21.9870000, ft4  = 0.0
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 207.1835010
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 25.128, ft4  = 207.1835010
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 996.4539810
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 28.269, ft4  = 996.4539810
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 2505.9337740
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 31.41, ft4  = 2505.9337740
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 2900.5690140
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 34.551, ft4  = 2900.5690140
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 4094.3406150
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 37.692, ft4  = 4094.3406150
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 4, a5  = 7, taken, goto 0x80000b3c
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 6225.3709110
; matmul (matmul.c:12)
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 6225.3709110, ft4  = 6225.3709110
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 6225.3709110
                                                #; (f:fpu) ft4  <-- 0.0
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 21.9870000, ft4  = 0.0
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 276.2446680
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 25.128, ft4  = 276.2446680
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 1144.4421960
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 28.269, ft4  = 1144.4421960
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 2742.7149180
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 31.41, ft4  = 2742.7149180
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 3236.0089680
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 34.551, ft4  = 3236.0089680
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 5, a5  = 7, taken, goto 0x80000b3c
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 4538.3052600
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 37.692, ft4  = 4538.3052600
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 6787.7261280
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 6787.7261280, ft4  = 6787.7261280
; matmul (matmul.c:0)
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 6787.7261280
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 0.0
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 21.9870000, ft4  = 0.0
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 345.3058350
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 25.128, ft4  = 345.3058350
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 1292.4304110
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 28.269, ft4  = 1292.4304110
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 2979.4960620
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 31.41, ft4  = 2979.4960620
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 6, a5  = 7, taken, goto 0x80000b3c
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 3571.4489220
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 34.551, ft4  = 3571.4489220
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 4982.2699050
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 37.692, ft4  = 4982.2699050
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                                                #; (f:fpu) ft4  <-- 7350.0813450
; matmul (matmul.c:12)
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 7350.0813450, ft4  = 7350.0813450
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 7350.0813450
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 21.9870000, ft4  = 0.0
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 414.3670020
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 25.128, ft4  = 414.3670020
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 1440.4186260
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 28.269, ft4  = 1440.4186260
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 7, a5  = 7, not taken
; matmul (matmul.c:6)
      0x80000b5c addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
                                                #; (f:fpu) ft4  <-- 3216.2772060
      0x80000b60 bne     a0, s6, pc - 40        #; a0  = 2, s6  = 5, taken, goto 0x80000b38
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 31.41, ft4  = 3216.2772060
; matmul (matmul.c:0)
      0x80000b38 li      a1, 0                  #; (wrb) a1  <-- 0
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 3906.8888760
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 34.551, ft4  = 3906.8888760
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                                                #; (f:fpu) ft4  <-- 5426.2345500
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 37.692, ft4  = 5426.2345500
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                                                #; (f:fpu) ft4  <-- 5544.6251220
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 5544.6251220, ft4  = 5544.6251220
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5544.6251220
                                                #; (f:fpu) ft4  <-- 0.0
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 21.9870000, ft4  = 0.0
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 483.4281690
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 25.128, ft4  = 483.4281690
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 1588.4068410
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 28.269, ft4  = 1588.4068410
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 1, a5  = 7, taken, goto 0x80000b3c
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 1677.1997700
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 31.41, ft4  = 1677.1997700
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                                                #; (f:fpu) ft4  <-- 2466.4702500
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 34.551, ft4  = 2466.4702500
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                                                #; (f:fpu) ft4  <-- 4094.3406150
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 37.692, ft4  = 4094.3406150
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 4331.1217590
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 4331.1217590, ft4  = 4331.1217590
; matmul (matmul.c:0)
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4331.1217590
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 0.0
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 40.833, ft4  = 0.0
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 128.2564530
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 43.9740000, ft4  = 128.2564530
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 2, a5  = 7, taken, goto 0x80000b3c
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 1233.2351250
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 47.115, ft4  = 1233.2351250
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                                                #; (f:fpu) ft4  <-- 3453.0583500
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 50.256, ft4  = 3453.0583500
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                                                #; (f:fpu) ft4  <-- 3768.7665420
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 53.397, ft4  = 3768.7665420
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 5278.2463350
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 56.538, ft4  = 5278.2463350
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                                                #; (f:fpu) ft4  <-- 8119.6200630
; matmul (matmul.c:12)
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 8119.6200630, ft4  = 8119.6200630
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 8119.6200630
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 40.833, ft4  = 0.0
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 3, a5  = 7, taken, goto 0x80000b3c
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 256.5129060
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 43.9740000, ft4  = 256.5129060
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                                                #; (f:fpu) ft4  <-- 1499.6139120
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 47.115, ft4  = 1499.6139120
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                                                #; (f:fpu) ft4  <-- 3867.4253520
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 50.256, ft4  = 3867.4253520
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 4340.9876400
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 53.397, ft4  = 4340.9876400
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                                                #; (f:fpu) ft4  <-- 6018.1874100
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 56.538, ft4  = 6018.1874100
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                                                #; (f:fpu) ft4  <-- 9037.1469960
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 4, a5  = 7, taken, goto 0x80000b3c
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 9037.1469960, ft4  = 9037.1469960
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 9037.1469960
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 40.833, ft4  = 0.0
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                                                #; (f:fpu) ft4  <-- 384.7693590
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 43.9740000, ft4  = 384.7693590
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                                                #; (f:fpu) ft4  <-- 1765.9926990
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 47.115, ft4  = 1765.9926990
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 4281.7923540
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 50.256, ft4  = 4281.7923540
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                                                #; (f:fpu) ft4  <-- 4913.2087380
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 53.397, ft4  = 4913.2087380
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                                                #; (f:fpu) ft4  <-- 6758.1284850
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 5, a5  = 7, taken, goto 0x80000b3c
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 56.538, ft4  = 6758.1284850
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 9954.6739290
; matmul (matmul.c:12)
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 9954.6739290, ft4  = 9954.6739290
; matmul (matmul.c:0)
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 9954.6739290
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 40.833, ft4  = 0.0
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 513.0258120
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 43.9740000, ft4  = 513.0258120
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 2032.3714860
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 47.115, ft4  = 2032.3714860
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 4696.1593560
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 50.256, ft4  = 4696.1593560
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 5485.4298360
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 53.397, ft4  = 5485.4298360
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                                                #; (f:fpu) ft4  <-- 7498.0695600
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 6, a5  = 7, taken, goto 0x80000b3c
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 56.538, ft4  = 7498.0695600
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 10872.2008620
; matmul (matmul.c:12)
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 10872.2008620, ft4  = 10872.2008620
; matmul (matmul.c:0)
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 10872.2008620
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 40.833, ft4  = 0.0
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 641.2822650
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 43.9740000, ft4  = 641.2822650
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 2298.7502730
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 47.115, ft4  = 2298.7502730
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 5110.5263580
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 50.256, ft4  = 5110.5263580
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 6057.6509340
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 53.397, ft4  = 6057.6509340
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                                                #; (f:fpu) ft4  <-- 8238.0106350
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 7, a5  = 7, not taken
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 56.538, ft4  = 8238.0106350
; matmul (matmul.c:6)
      0x80000b5c addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80000b60 bne     a0, s6, pc - 40        #; a0  = 3, s6  = 5, taken, goto 0x80000b38
; matmul (matmul.c:0)
      0x80000b38 li      a1, 0                  #; (wrb) a1  <-- 0
                                                #; (f:fpu) ft4  <-- 11789.7277950
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 11789.7277950, ft4  = 11789.7277950
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 11789.7277950
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 40.833, ft4  = 0.0
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                                                #; (f:fpu) ft4  <-- 769.5387180
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 43.9740000, ft4  = 769.5387180
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 2565.1290600
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 47.115, ft4  = 2565.1290600
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 5524.8933600
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 50.256, ft4  = 5524.8933600
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                                                #; (f:fpu) ft4  <-- 6629.8720320
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 53.397, ft4  = 6629.8720320
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
                                                #; (f:fpu) ft4  <-- 8977.9517100
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 1, a5  = 7, taken, goto 0x80000b3c
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 56.538, ft4  = 8977.9517100
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 9155.5375680
; matmul (matmul.c:12)
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 9155.5375680, ft4  = 9155.5375680
; matmul (matmul.c:0)
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 9155.5375680
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 40.833, ft4  = 0.0
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 897.7951710
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 43.9740000, ft4  = 897.7951710
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 2831.5078470
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 47.115, ft4  = 2831.5078470
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 2979.4960620
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 50.256, ft4  = 2979.4960620
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 4242.3288300
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 53.397, ft4  = 4242.3288300
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                                                #; (f:fpu) ft4  <-- 6758.1284850
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 2, a5  = 7, taken, goto 0x80000b3c
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 56.538, ft4  = 6758.1284850
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 7113.3002010
; matmul (matmul.c:12)
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 7113.3002010, ft4  = 7113.3002010
; matmul (matmul.c:0)
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 7113.3002010
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 59.679, ft4  = 0.0
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 187.4517390
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 62.82, ft4  = 187.4517390
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 1765.9926990
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 3.141, ft4  = 1765.9926990
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 1913.9809140
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 6.282, ft4  = 1913.9809140
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 1953.4444380
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 9.423, ft4  = 1953.4444380
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                                                #; (f:fpu) ft4  <-- 2219.8232250
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 3, a5  = 7, taken, goto 0x80000b3c
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 12.564, ft4  = 2219.8232250
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 2851.2396090
; matmul (matmul.c:12)
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 2851.2396090, ft4  = 2851.2396090
; matmul (matmul.c:0)
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2851.2396090
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 59.679, ft4  = 0.0
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 374.9034780
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 62.82, ft4  = 374.9034780
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 2150.7620580
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 3.141, ft4  = 2150.7620580
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 2308.6161540
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 6.282, ft4  = 2308.6161540
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 2367.8114400
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 9.423, ft4  = 2367.8114400
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                                                #; (f:fpu) ft4  <-- 2663.7878700
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 4, a5  = 7, taken, goto 0x80000b3c
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 12.564, ft4  = 2663.7878700
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 3334.6677780
; matmul (matmul.c:12)
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 3334.6677780, ft4  = 3334.6677780
; matmul (matmul.c:0)
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 3334.6677780
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 59.679, ft4  = 0.0
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 562.3552170
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 62.82, ft4  = 562.3552170
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 2535.5314170
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 3.141, ft4  = 2535.5314170
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 2703.2513940
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 6.282, ft4  = 2703.2513940
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 2782.1784420
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 9.423, ft4  = 2782.1784420
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                                                #; (f:fpu) ft4  <-- 3107.7525150
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 5, a5  = 7, taken, goto 0x80000b3c
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 12.564, ft4  = 3107.7525150
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 3818.0959470
; matmul (matmul.c:12)
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 3818.0959470, ft4  = 3818.0959470
; matmul (matmul.c:0)
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 3818.0959470
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 59.679, ft4  = 0.0
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 749.8069560
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 62.82, ft4  = 749.8069560
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 2920.3007760
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 3.141, ft4  = 2920.3007760
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 3097.8866340
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 6.282, ft4  = 3097.8866340
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 3196.5454440
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 9.423, ft4  = 3196.5454440
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                                                #; (f:fpu) ft4  <-- 3551.7171600
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 6, a5  = 7, taken, goto 0x80000b3c
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 12.564, ft4  = 3551.7171600
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 4301.5241160
; matmul (matmul.c:12)
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 4301.5241160, ft4  = 4301.5241160
; matmul (matmul.c:0)
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4301.5241160
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 59.679, ft4  = 0.0
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 937.2586950
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 62.82, ft4  = 937.2586950
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 3305.0701350
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 3.141, ft4  = 3305.0701350
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 3492.5218740
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 6.282, ft4  = 3492.5218740
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 3610.9124460
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 9.423, ft4  = 3610.9124460
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                                                #; (f:fpu) ft4  <-- 3995.6818050
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 7, a5  = 7, not taken
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 12.564, ft4  = 3995.6818050
; matmul (matmul.c:6)
      0x80000b5c addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80000b60 bne     a0, s6, pc - 40        #; a0  = 4, s6  = 5, taken, goto 0x80000b38
; matmul (matmul.c:0)
      0x80000b38 li      a1, 0                  #; (wrb) a1  <-- 0
                                                #; (f:fpu) ft4  <-- 4784.9522850
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 4784.9522850, ft4  = 4784.9522850
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4784.9522850
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 59.679, ft4  = 0.0
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                                                #; (f:fpu) ft4  <-- 1124.7104340
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 62.82, ft4  = 1124.7104340
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 3689.8394940
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 3.141, ft4  = 3689.8394940
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 3887.1571140
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 6.282, ft4  = 3887.1571140
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                                                #; (f:fpu) ft4  <-- 4025.2794480
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 9.423, ft4  = 4025.2794480
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
                                                #; (f:fpu) ft4  <-- 4439.6464500
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 1, a5  = 7, taken, goto 0x80000b3c
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 12.564, ft4  = 4439.6464500
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 4479.1099740
; matmul (matmul.c:12)
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 4479.1099740, ft4  = 4479.1099740
; matmul (matmul.c:0)
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4479.1099740
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 59.679, ft4  = 0.0
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 1312.1621730
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 62.82, ft4  = 1312.1621730
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 4074.6088530
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 3.141, ft4  = 4074.6088530
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 4084.4747340
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 6.282, ft4  = 4084.4747340
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 4242.3288300
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 9.423, ft4  = 4242.3288300
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                                                #; (f:fpu) ft4  <-- 4686.2934750
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 2, a5  = 7, taken, goto 0x80000b3c
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 12.564, ft4  = 4686.2934750
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 4765.2205230
; matmul (matmul.c:12)
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 4765.2205230, ft4  = 4765.2205230
; matmul (matmul.c:0)
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4765.2205230
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 15.705, ft4  = 0.0
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 49.3294050
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 18.846, ft4  = 49.3294050
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 522.8916930
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 21.9870000, ft4  = 522.8916930
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 1558.8091980
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 25.128, ft4  = 1558.8091980
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 1716.6632940
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 28.269, ft4  = 1716.6632940
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                                                #; (f:fpu) ft4  <-- 2515.7996550
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 3, a5  = 7, taken, goto 0x80000b3c
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 31.41, ft4  = 2515.7996550
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 4094.3406150
; matmul (matmul.c:12)
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 4094.3406150, ft4  = 4094.3406150
; matmul (matmul.c:0)
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4094.3406150
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 15.705, ft4  = 0.0
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 98.65881
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 18.846, ft4  = 98.65881
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 631.4163840
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 21.9870000, ft4  = 631.4163840
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 1736.3950560
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 25.128, ft4  = 1736.3950560
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 1973.1762000
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 28.269, ft4  = 1973.1762000
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                                                #; (f:fpu) ft4  <-- 2861.1054900
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 4, a5  = 7, taken, goto 0x80000b3c
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 31.41, ft4  = 2861.1054900
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 4538.3052600
; matmul (matmul.c:12)
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 4538.3052600, ft4  = 4538.3052600
; matmul (matmul.c:0)
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4538.3052600
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 15.705, ft4  = 0.0
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 147.9882150
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 18.846, ft4  = 147.9882150
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 739.9410750
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 21.9870000, ft4  = 739.9410750
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 1913.9809140
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 25.128, ft4  = 1913.9809140
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 2229.6891060
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 28.269, ft4  = 2229.6891060
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                                                #; (f:fpu) ft4  <-- 3206.4113250
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 5, a5  = 7, taken, goto 0x80000b3c
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 31.41, ft4  = 3206.4113250
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 4982.2699050
; matmul (matmul.c:12)
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 4982.2699050, ft4  = 4982.2699050
; matmul (matmul.c:0)
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4982.2699050
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 15.705, ft4  = 0.0
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 197.3176200
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 18.846, ft4  = 197.3176200
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 848.4657660
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 21.9870000, ft4  = 848.4657660
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 2091.5667720
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 25.128, ft4  = 2091.5667720
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 2486.2020120
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 28.269, ft4  = 2486.2020120
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                                                #; (f:fpu) ft4  <-- 3551.7171600
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 6, a5  = 7, taken, goto 0x80000b3c
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 31.41, ft4  = 3551.7171600
; matmul (matmul.c:0)
      0x80000b3c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80000b44 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 5426.2345500
; matmul (matmul.c:12)
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 5426.2345500, ft4  = 5426.2345500
; matmul (matmul.c:0)
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5426.2345500
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 15.705, ft4  = 0.0
      0x80000b44 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80000b4c bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000b44
                                                #; (f:fpu) ft4  <-- 246.6470250
      0x80000b44 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 18.846, ft4  = 246.6470250
      0x80000b4c bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 956.9904570
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 21.9870000, ft4  = 956.9904570
; matmul (matmul.c:9)
      0x80000b4c bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000b44
      0x80000b44 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 2269.1526300
      0x80000b4c bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000b44
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 25.128, ft4  = 2269.1526300
      0x80000b44 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000b4c bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 2742.7149180
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 28.269, ft4  = 2742.7149180
; matmul (matmul.c:7)
      0x80000b54 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                                                #; (f:fpu) ft4  <-- 3897.0229950
      0x80000b58 bne     a1, a5, pc - 28        #; a1  = 7, a5  = 7, not taken
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 31.41, ft4  = 3897.0229950
; matmul (matmul.c:6)
      0x80000b5c addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80000b60 bne     a0, s6, pc - 40        #; a0  = 5, s6  = 5, not taken
; matmul (matmul.c:0)
      0x80000b64 j       pc + 0xdc              #; goto 0x80000c40
                                                #; (f:fpu) ft4  <-- 5870.1991950
; matmul (matmul.c:12)
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 5870.1991950, ft4  = 5870.1991950
; matmul (matmul.c:0)
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5870.1991950
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 15.705, ft4  = 0.0
                                                #; (f:fpu) ft4  <-- 295.9764300
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 18.846, ft4  = 295.9764300
                                                #; (f:fpu) ft4  <-- 1065.5151480
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 21.9870000, ft4  = 1065.5151480
; matmul (matmul.c:15)
      0x80000c44 lw      s7, 12(sp)             #; sp  = 0x0011ff10, s7  <~~ Word[0x0011ff1c]
                                                #; (f:fpu) ft4  <-- 2446.7384880
                                                #; (lsu) s7  <-- 0
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 25.128, ft4  = 2446.7384880
      0x80000c48 lw      s6, 16(sp)             #; sp  = 0x0011ff10, s6  <~~ Word[0x0011ff20]
                                                #; (f:fpu) ft4  <-- 2999.2278240
                                                #; (lsu) s6  <-- 0
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 28.269, ft4  = 2999.2278240
      0x80000c4c lw      s5, 20(sp)             #; sp  = 0x0011ff10, s5  <~~ Word[0x0011ff24]
                                                #; (f:fpu) ft4  <-- 4242.3288300
                                                #; (lsu) s5  <-- 0
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 31.41, ft4  = 4242.3288300
      0x80000c50 lw      s4, 24(sp)             #; sp  = 0x0011ff10, s4  <~~ Word[0x0011ff28]
                                                #; (f:fpu) ft4  <-- 4340.9876400
                                                #; (lsu) s4  <-- 0
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 4340.9876400, ft4  = 4340.9876400
      0x80000c54 lw      s3, 28(sp)             #; sp  = 0x0011ff10, s3  <~~ Word[0x0011ff2c]
      0x80000b40 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4340.9876400
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 15.705, ft4  = 0.0
                                                #; (lsu) s3  <-- 0
; matmul (matmul.c:15)
      0x80000c58 lw      s2, 32(sp)             #; sp  = 0x0011ff10, s2  <~~ Word[0x0011ff30]
                                                #; (f:fpu) ft4  <-- 345.3058350
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 18.846, ft4  = 345.3058350
                                                #; (lsu) s2  <-- 0x00100000
; matmul (matmul.c:15)
      0x80000c5c lw      s1, 36(sp)             #; sp  = 0x0011ff10, s1  <~~ Word[0x0011ff34]
                                                #; (f:fpu) ft4  <-- 1174.0398390
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 21.9870000, ft4  = 1174.0398390
                                                #; (lsu) s1  <-- 0x001000f0
; matmul (matmul.c:15)
      0x80000c60 lw      s0, 40(sp)             #; sp  = 0x0011ff10, s0  <~~ Word[0x0011ff38]
                                                #; (f:fpu) ft4  <-- 1243.1010060
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 25.128, ft4  = 1243.1010060
                                                #; (lsu) s0  <-- 0x00100240
; matmul (matmul.c:15)
      0x80000c64 lw      ra, 44(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff3c]
      0x80000c68 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (f:fpu) ft4  <-- 1874.5173900
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 28.269, ft4  = 1874.5173900
                                                #; (lsu) ra  <-- 0x80000818
; matmul (matmul.c:15)
      0x80000c6c ret                            #; ra  = 0x80000818, goto 0x80000818
                                                #; (f:fpu) ft4  <-- 3206.4113250
; matmul (matmul.c:10)
      0x80000b48 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 31.41, ft4  = 3206.4113250
; main (test_mat.c:31)
      0x80000818 li      a3, 5                  #; (wrb) a3  <-- 5
      0x8000081c li      a4, 6                  #; (wrb) a4  <-- 6
                                                #; (f:fpu) ft4  <-- 3403.7289450
      0x80000820 mv      a0, s0                 #; s0  = 0x00100240, (wrb) a0  <-- 0x00100240
      0x80000b50 fsgnj.d ft0, ft4, ft4          #; ft4  = 3403.7289450, ft4  = 3403.7289450
      0x80000824 mv      a1, s2                 #; s2  = 0x00100000, (wrb) a1  <-- 0x00100000
      0x80000c40 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 3403.7289450
      0x80000828 mv      a2, s1                 #; s1  = 0x001000f0, (wrb) a2  <-- 0x001000f0
      0x8000082c li      a5, 0                  #; (wrb) a5  <-- 0
      0x80000830 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000830
      0x80000834 jalr    ra, ra, 180            #; ra  = 0x80000830, (wrb) ra  <-- 0x80000838, goto 0x800008e4
; matmul (matmul.c:5)
      0x800008e4 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x800008e8 sw      ra, 44(sp)             #; sp  = 0x0011ff10, 0x80000838 ~~> Word[0x0011ff3c]
      0x800008ec sw      s0, 40(sp)             #; sp  = 0x0011ff10, 0x00100240 ~~> Word[0x0011ff38]
      0x800008f0 sw      s1, 36(sp)             #; sp  = 0x0011ff10, 0x001000f0 ~~> Word[0x0011ff34]
      0x800008f4 sw      s2, 32(sp)             #; sp  = 0x0011ff10, 0x00100000 ~~> Word[0x0011ff30]
      0x800008f8 sw      s3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
      0x800008fc sw      s4, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
      0x80000900 sw      s5, 20(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff24]
      0x80000904 sw      s6, 16(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff20]
      0x80000908 sw      s7, 12(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff1c]
      0x8000090c mv      s6, a3                 #; a3  = 5, (wrb) s6  <-- 5
; matmul (matmul.c:6)
      0x80000910 slti    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 0
      0x80000914 slti    s1, a5, 1              #; a5  = 0, (wrb) s1  <-- 1
      0x80000918 or      a3, a3, s1             #; a3  = 0, s1  = 1, (wrb) a3  <-- 1
      0x8000091c bnez    a3, pc + 808           #; a3  = 1, taken, goto 0x80000c44
; matmul (matmul.c:15)
      0x80000c44 lw      s7, 12(sp)             #; sp  = 0x0011ff10, s7  <~~ Word[0x0011ff1c]
                                                #; (lsu) s7  <-- 0
      0x80000c48 lw      s6, 16(sp)             #; sp  = 0x0011ff10, s6  <~~ Word[0x0011ff20]
                                                #; (lsu) s6  <-- 0
      0x80000c4c lw      s5, 20(sp)             #; sp  = 0x0011ff10, s5  <~~ Word[0x0011ff24]
                                                #; (lsu) s5  <-- 0
      0x80000c50 lw      s4, 24(sp)             #; sp  = 0x0011ff10, s4  <~~ Word[0x0011ff28]
                                                #; (lsu) s4  <-- 0
      0x80000c54 lw      s3, 28(sp)             #; sp  = 0x0011ff10, s3  <~~ Word[0x0011ff2c]
                                                #; (lsu) s3  <-- 0
      0x80000c58 lw      s2, 32(sp)             #; sp  = 0x0011ff10, s2  <~~ Word[0x0011ff30]
                                                #; (lsu) s2  <-- 0x00100000
      0x80000c5c lw      s1, 36(sp)             #; sp  = 0x0011ff10, s1  <~~ Word[0x0011ff34]
                                                #; (lsu) s1  <-- 0x001000f0
      0x80000c60 lw      s0, 40(sp)             #; sp  = 0x0011ff10, s0  <~~ Word[0x0011ff38]
                                                #; (lsu) s0  <-- 0x00100240
      0x80000c64 lw      ra, 44(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff3c]
      0x80000c68 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x80000838
      0x80000c6c ret                            #; ra  = 0x80000838, goto 0x80000838
; main (test_mat.c:35)
      0x80000838 li      a1, 5                  #; (wrb) a1  <-- 5
      0x8000083c li      a2, 7                  #; (wrb) a2  <-- 7
      0x80000840 mv      a0, s0                 #; s0  = 0x00100240, (wrb) a0  <-- 0x00100240
      0x80000844 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000844
      0x80000848 jalr    ra, ra, 1068           #; ra  = 0x80000844, (wrb) ra  <-- 0x8000084c, goto 0x80000c70
; summat (summat.c:5)
      0x80000c70 slti    a3, a1, 1              #; a1  = 5, (wrb) a3  <-- 0
      0x80000c74 slti    a4, a2, 1              #; a2  = 7, (wrb) a4  <-- 0
      0x80000c78 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x80000c7c bnez    a3, pc + 108           #; a3  = 0, not taken
      0x80000c80 addi    a7, a2, -1             #; a2  = 7, (wrb) a7  <-- 6
      0x80000c84 addi    a6, a1, -1             #; a1  = 5, (wrb) a6  <-- 4
      0x80000c88 mul     a3, a6, a2             #; a6  = 4, a2  = 7
                                                #; (acc) a3  <-- 0x011686b3
      0x80000c8c add     a3, a3, a7             #; a3  = 28, a7  = 6, (wrb) a3  <-- 34
      0x80000c90 slli    a4, a3, 3              #; a3  = 34, (wrb) a4  <-- 272
      0x80000c94 add     a3, a4, a0             #; a4  = 272, a0  = 0x00100240, (wrb) a3  <-- 0x00100350
      0x80000c98 srli    a5, a0, 20             #; a0  = 0x00100240, (wrb) a5  <-- 1
      0x80000c9c snez    a5, a5                 #; a5  = 1, (wrb) a5  <-- 1
      0x80000ca0 bgeu    a3, a4, pc + 80        #; a3  = 0x00100350, a4  = 272, taken, goto 0x80000cf0
; summat (summat.c:0)
      0x80000cf0 lui     a4, 0x120              #; (wrb) a4  <-- 0x00120000
      0x80000cf4 addi    a4, a4, 1              #; a4  = 0x00120000, (wrb) a4  <-- 0x00120001
      0x80000cf8 sltu    a3, a3, a4             #; a3  = 0x00100350, a4  = 0x00120001, (wrb) a3  <-- 1
; summat (summat.c:5)
      0x80000cfc and     a3, a5, a3             #; a5  = 1, a3  = 1, (wrb) a3  <-- 1
      0x80000d00 beqz    a3, pc - 80            #; a3  = 1, not taken
; summat (summat.c:0)
      0x80000d04 li      a5, 0                  #; (wrb) a5  <-- 0
      0x80000d08 li      a3, 8                  #; (wrb) a3  <-- 8
; summat (summat.c:5)
      0x80000d0c li      a4, 64                 #; (wrb) a4  <-- 64
      0x80000d10 scfgw   a7, a4                 #; a7  = 6, a4  = 64
      0x80000d14 li      a4, 192                #; (wrb) a4  <-- 192
      0x80000d18 scfgw   a3, a4                 #; a3  = 8, a4  = 192
      0x80000d1c li      a4, 96                 #; (wrb) a4  <-- 96
      0x80000d20 li      a7, 224                #; (wrb) a7  <-- 224
      0x80000d24 scfgw   a6, a4                 #; a6  = 4, a4  = 96
      0x80000d28 scfgw   a3, a7                 #; a3  = 8, a7  = 224
      0x80000d2c li      a3, 32                 #; (wrb) a3  <-- 32
      0x80000d30 scfgw   zero, a3               #; a3  = 32
      0x80000d34 scfgwi  a0, 800                #; a0  = 0x00100240
                                                #; (acc) a0  <-- 0xd2000553
      0x80000d38 csrrsi  a0, ssr, 1             #; 
      0x80000d3c fcvt.d.w fa0, zero             #; ac1  = 0
                                                #; (f:fpu) fa0  <-- 0.0
; summat (summat.c:0)
      0x80000d40 mv      a0, a2                 #; a2  = 7, (wrb) a0  <-- 7
; summat (summat.c:6)
      0x80000d44 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
      0x80000d4c bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 2081.7008910, fa0  = 0.0
      0x80000d4c bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 2081.7008910
; summat (summat.c:7)
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 2288.8843920, fa0  = 2081.7008910
; summat (summat.c:6)
      0x80000d4c bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
                                                #; (f:fpu) fa0  <-- 4370.5852830
      0x80000d4c bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80000d44
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 2496.0678930, fa0  = 4370.5852830
      0x80000d44 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
      0x80000d4c bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80000d44
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 6866.6531760
; summat (summat.c:6)
      0x80000d44 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 2703.2513940, fa0  = 6866.6531760
      0x80000d4c bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 9569.9045700
; summat (summat.c:7)
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 2910.4348950, fa0  = 9569.9045700
; summat (summat.c:6)
      0x80000d4c bnez    a0, pc - 8             #; a0  = 0, not taken
                                                #; (f:fpu) fa0  <-- 12480.3394650
; summat (summat.c:7)
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 1933.7126760, fa0  = 12480.3394650
                                                #; (f:fpu) fa0  <-- 14414.0521410
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 1548.9433170, fa0  = 14414.0521410
                                                #; (f:fpu) fa0  <-- 15962.9954580
; summat (summat.c:5)
      0x80000d50 addi    a5, a5, 1              #; a5  = 0, (wrb) a5  <-- 1
      0x80000d54 bne     a5, a1, pc - 20        #; a5  = 1, a1  = 5, taken, goto 0x80000d40
; summat (summat.c:0)
      0x80000d40 mv      a0, a2                 #; a2  = 7, (wrb) a0  <-- 7
; summat (summat.c:6)
      0x80000d44 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
      0x80000d4c bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 5100.6604770, fa0  = 15962.9954580
      0x80000d4c bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 21063.6559350
; summat (summat.c:7)
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 5663.0156940, fa0  = 21063.6559350
; summat (summat.c:6)
      0x80000d4c bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
                                                #; (f:fpu) fa0  <-- 26726.6716290
      0x80000d4c bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80000d44
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 6225.3709110, fa0  = 26726.6716290
      0x80000d44 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
      0x80000d4c bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80000d44
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 32952.0425400
; summat (summat.c:6)
      0x80000d44 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 6787.7261280, fa0  = 32952.0425400
      0x80000d4c bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 39739.7686680
; summat (summat.c:7)
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 7350.0813450, fa0  = 39739.7686680
; summat (summat.c:6)
      0x80000d4c bnez    a0, pc - 8             #; a0  = 0, not taken
; summat (summat.c:5)
      0x80000d50 addi    a5, a5, 1              #; a5  = 1, (wrb) a5  <-- 2
      0x80000d54 bne     a5, a1, pc - 20        #; a5  = 2, a1  = 5, taken, goto 0x80000d40
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 47089.8500130
; summat (summat.c:0)
      0x80000d40 mv      a0, a2                 #; a2  = 7, (wrb) a0  <-- 7
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 5544.6251220, fa0  = 47089.8500130
; summat (summat.c:6)
      0x80000d44 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
      0x80000d4c bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80000d44
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 52634.4751350
; summat (summat.c:6)
      0x80000d44 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 4331.1217590, fa0  = 52634.4751350
      0x80000d4c bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 56965.5968940
; summat (summat.c:7)
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 8119.6200630, fa0  = 56965.5968940
; summat (summat.c:6)
      0x80000d4c bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
                                                #; (f:fpu) fa0  <-- 65085.2169570
      0x80000d4c bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80000d44
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 9037.1469960, fa0  = 65085.2169570
      0x80000d44 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
      0x80000d4c bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80000d44
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 74122.3639530
; summat (summat.c:6)
      0x80000d44 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 9954.6739290, fa0  = 74122.3639530
      0x80000d4c bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 84077.0378820
; summat (summat.c:7)
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 10872.2008620, fa0  = 84077.0378820
; summat (summat.c:6)
      0x80000d4c bnez    a0, pc - 8             #; a0  = 0, not taken
; summat (summat.c:5)
      0x80000d50 addi    a5, a5, 1              #; a5  = 2, (wrb) a5  <-- 3
      0x80000d54 bne     a5, a1, pc - 20        #; a5  = 3, a1  = 5, taken, goto 0x80000d40
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 94949.2387440
; summat (summat.c:0)
      0x80000d40 mv      a0, a2                 #; a2  = 7, (wrb) a0  <-- 7
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 11789.7277950, fa0  = 94949.2387440
; summat (summat.c:6)
      0x80000d44 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
      0x80000d4c bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80000d44
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 106738.9665390
; summat (summat.c:6)
      0x80000d44 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 9155.5375680, fa0  = 106738.9665390
      0x80000d4c bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 115894.5041070
; summat (summat.c:7)
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 7113.3002010, fa0  = 115894.5041070
; summat (summat.c:6)
      0x80000d4c bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
                                                #; (f:fpu) fa0  <-- 123007.8043080
      0x80000d4c bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80000d44
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 2851.2396090, fa0  = 123007.8043080
      0x80000d44 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
      0x80000d4c bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80000d44
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 125859.0439170
; summat (summat.c:6)
      0x80000d44 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 3334.6677780, fa0  = 125859.0439170
      0x80000d4c bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 129193.7116950
; summat (summat.c:7)
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 3818.0959470, fa0  = 129193.7116950
; summat (summat.c:6)
      0x80000d4c bnez    a0, pc - 8             #; a0  = 0, not taken
; summat (summat.c:5)
      0x80000d50 addi    a5, a5, 1              #; a5  = 3, (wrb) a5  <-- 4
      0x80000d54 bne     a5, a1, pc - 20        #; a5  = 4, a1  = 5, taken, goto 0x80000d40
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 133011.8076420
; summat (summat.c:0)
      0x80000d40 mv      a0, a2                 #; a2  = 7, (wrb) a0  <-- 7
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 4301.5241160, fa0  = 133011.8076420
; summat (summat.c:6)
      0x80000d44 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
      0x80000d4c bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80000d44
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 137313.3317580
; summat (summat.c:6)
      0x80000d44 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 4784.9522850, fa0  = 137313.3317580
      0x80000d4c bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 142098.2840430
; summat (summat.c:7)
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 4479.1099740, fa0  = 142098.2840430
; summat (summat.c:6)
      0x80000d4c bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
                                                #; (f:fpu) fa0  <-- 146577.3940170
      0x80000d4c bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80000d44
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 4765.2205230, fa0  = 146577.3940170
      0x80000d44 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
      0x80000d4c bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80000d44
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 151342.6145400
; summat (summat.c:6)
      0x80000d44 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 4094.3406150, fa0  = 151342.6145400
      0x80000d4c bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 155436.9551550
; summat (summat.c:7)
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 4538.3052600, fa0  = 155436.9551550
; summat (summat.c:6)
      0x80000d4c bnez    a0, pc - 8             #; a0  = 0, not taken
; summat (summat.c:5)
      0x80000d50 addi    a5, a5, 1              #; a5  = 4, (wrb) a5  <-- 5
      0x80000d54 bne     a5, a1, pc - 20        #; a5  = 5, a1  = 5, not taken
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 159975.2604150
; summat (summat.c:7)
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 4982.2699050, fa0  = 159975.2604150
; summat (summat.c:10)
      0x80000d5c ret                            #; ra  = 0x8000084c, goto 0x8000084c
                                                #; (f:fpu) fa0  <-- 164957.5303200
; summat (summat.c:7)
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 5426.2345500, fa0  = 164957.5303200
                                                #; (f:fpu) fa0  <-- 170383.7648700
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 5870.1991950, fa0  = 170383.7648700
                                                #; (f:fpu) fa0  <-- 176253.9640650
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 4340.9876400, fa0  = 176253.9640650
                                                #; (f:fpu) fa0  <-- 180594.9517050
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 3403.7289450, fa0  = 180594.9517050
; main (test_mat.c:37)
      0x80000850 li      a3, 5                  #; (wrb) a3  <-- 5
      0x80000d58 csrrci  a0, ssr, 1             #; 
      0x80000854 li      a5, 7                  #; (wrb) a5  <-- 7
      0x80000858 mv      a0, s0                 #; s0  = 0x00100240, (wrb) a0  <-- 0x00100240
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 183998.6806500
; main (test_mat.c:37)
      0x8000085c mv      a1, s2                 #; s2  = 0x00100000, (wrb) a1  <-- 0x00100000
      0x8000084c fsgnj.d fs0, fa0, fa0          #; fa0  = 183998.6806500, fa0  = 183998.6806500
                                                #; (f:fpu) fs0  <-- 183998.6806500
      0x80000860 mv      a2, s1                 #; s1  = 0x001000f0, (wrb) a2  <-- 0x001000f0
      0x80000864 li      a4, 0                  #; (wrb) a4  <-- 0
      0x80000868 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000868
      0x8000086c jalr    ra, ra, 124            #; ra  = 0x80000868, (wrb) ra  <-- 0x80000870, goto 0x800008e4
; matmul (matmul.c:5)
      0x800008e4 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x800008e8 sw      ra, 44(sp)             #; sp  = 0x0011ff10, 0x80000870 ~~> Word[0x0011ff3c]
      0x800008ec sw      s0, 40(sp)             #; sp  = 0x0011ff10, 0x00100240 ~~> Word[0x0011ff38]
      0x800008f0 sw      s1, 36(sp)             #; sp  = 0x0011ff10, 0x001000f0 ~~> Word[0x0011ff34]
      0x800008f4 sw      s2, 32(sp)             #; sp  = 0x0011ff10, 0x00100000 ~~> Word[0x0011ff30]
      0x800008f8 sw      s3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
      0x800008fc sw      s4, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
      0x80000900 sw      s5, 20(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff24]
      0x80000904 sw      s6, 16(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff20]
      0x80000908 sw      s7, 12(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff1c]
      0x8000090c mv      s6, a3                 #; a3  = 5, (wrb) s6  <-- 5
; matmul (matmul.c:6)
      0x80000910 slti    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 0
      0x80000914 slti    s1, a5, 1              #; a5  = 7, (wrb) s1  <-- 0
      0x80000918 or      a3, a3, s1             #; a3  = 0, s1  = 0, (wrb) a3  <-- 0
      0x8000091c bnez    a3, pc + 808           #; a3  = 0, not taken
; matmul (matmul.c:0)
      0x80000920 mv      s7, a0                 #; a0  = 0x00100240, (wrb) s7  <-- 0x00100240
; matmul (matmul.c:6)
      0x80000924 addi    a6, a5, -1             #; a5  = 7, (wrb) a6  <-- 6
      0x80000928 slli    t4, a6, 3              #; a6  = 6, (wrb) t4  <-- 48
      0x8000092c addi    t2, s6, -1             #; s6  = 5, (wrb) t2  <-- 4
      0x80000930 slli    s2, a5, 3              #; a5  = 7, (wrb) s2  <-- 56
      0x80000934 mul     a0, s2, t2             #; s2  = 56, t2  = 4
                                                #; (acc) a0  <-- 0x00ae8533
      0x80000938 add     a0, t4, a0             #; t4  = 48, a0  = 224, (wrb) a0  <-- 272
      0x8000093c add     s3, a0, s7             #; a0  = 272, s7  = 0x00100240, (wrb) s3  <-- 0x00100350
      0x80000940 sltu    a3, s3, a0             #; s3  = 0x00100350, a0  = 272, (wrb) a3  <-- 0
; matmul (matmul.c:9)
      0x80000944 bge     zero, a4, pc + 80      #; a4  = 0, taken, goto 0x80000994
; matmul (matmul.c:6)
      0x80000994 srli    a0, s7, 20             #; s7  = 0x00100240, (wrb) a0  <-- 1
      0x80000998 snez    a0, a0                 #; a0  = 1, (wrb) a0  <-- 1
      0x8000099c beqz    a3, pc + 572           #; a3  = 0, taken, goto 0x80000bd8
; matmul (matmul.c:0)
      0x80000bd8 lui     a1, 0x120              #; (wrb) a1  <-- 0x00120000
      0x80000bdc addi    a1, a1, 1              #; a1  = 0x00120000, (wrb) a1  <-- 0x00120001
      0x80000be0 sltu    a1, s3, a1             #; s3  = 0x00100350, a1  = 0x00120001, (wrb) a1  <-- 1
; matmul (matmul.c:6)
      0x80000be4 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80000be8 beqz    a0, pc - 572           #; a0  = 1, not taken
; matmul (matmul.c:0)
      0x80000bec li      a0, 0                  #; (wrb) a0  <-- 0
      0x80000bf0 li      a1, 8                  #; (wrb) a1  <-- 8
; matmul (matmul.c:6)
      0x80000bf4 li      a2, 64                 #; (wrb) a2  <-- 64
      0x80000bf8 scfgw   a6, a2                 #; a6  = 6, a2  = 64
      0x80000bfc li      a2, 192                #; (wrb) a2  <-- 192
      0x80000c00 scfgw   a1, a2                 #; a1  = 8, a2  = 192
      0x80000c04 li      a2, 96                 #; (wrb) a2  <-- 96
      0x80000c08 li      a3, 224                #; (wrb) a3  <-- 224
      0x80000c0c scfgw   t2, a2                 #; t2  = 4, a2  = 96, (acc) ra  <-- 0x00c3a0ab
      0x80000c10 scfgw   a1, a3                 #; a1  = 8, a3  = 224
      0x80000c14 li      a1, 32                 #; (wrb) a1  <-- 32
      0x80000c18 scfgw   zero, a1               #; a1  = 32
      0x80000c1c scfgwi  s7, 928                #; s7  = 0x00100240
      0x80000c20 csrrsi  a1, ssr, 1             #; 
; matmul (matmul.c:0)
      0x80000c28 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
      0x80000c24 fcvt.d.w ft3, zero             #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
; matmul (matmul.c:12)
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
; matmul (matmul.c:7)
      0x80000c30 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
      0x80000c34 bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80000c2c
      0x80000c30 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
      0x80000c34 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80000c2c
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
      0x80000c34 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80000c2c
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
      0x80000c34 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80000c2c
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
      0x80000c34 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80000c2c
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
      0x80000c34 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80000c2c
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
      0x80000c34 bnez    a1, pc - 8             #; a1  = 0, not taken
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
; matmul (matmul.c:6)
      0x80000c38 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c3c bne     a0, s6, pc - 20        #; a0  = 1, s6  = 5, taken, goto 0x80000c28
; matmul (matmul.c:0)
      0x80000c28 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
; matmul (matmul.c:7)
      0x80000c30 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
      0x80000c34 bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80000c2c
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
      0x80000c34 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80000c2c
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
      0x80000c34 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80000c2c
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
      0x80000c34 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80000c2c
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
      0x80000c34 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80000c2c
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
      0x80000c34 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80000c2c
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
      0x80000c34 bnez    a1, pc - 8             #; a1  = 0, not taken
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
; matmul (matmul.c:6)
      0x80000c38 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c3c bne     a0, s6, pc - 20        #; a0  = 2, s6  = 5, taken, goto 0x80000c28
; matmul (matmul.c:0)
      0x80000c28 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
; matmul (matmul.c:7)
      0x80000c30 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
      0x80000c34 bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80000c2c
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
      0x80000c34 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80000c2c
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
      0x80000c34 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80000c2c
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
      0x80000c34 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80000c2c
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
      0x80000c34 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80000c2c
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
      0x80000c34 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80000c2c
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
      0x80000c34 bnez    a1, pc - 8             #; a1  = 0, not taken
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
; matmul (matmul.c:6)
      0x80000c38 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c3c bne     a0, s6, pc - 20        #; a0  = 3, s6  = 5, taken, goto 0x80000c28
; matmul (matmul.c:0)
      0x80000c28 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
; matmul (matmul.c:7)
      0x80000c30 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
      0x80000c34 bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80000c2c
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
      0x80000c34 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80000c2c
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
      0x80000c34 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80000c2c
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
      0x80000c34 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80000c2c
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
      0x80000c34 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80000c2c
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
      0x80000c34 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80000c2c
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
      0x80000c34 bnez    a1, pc - 8             #; a1  = 0, not taken
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
; matmul (matmul.c:6)
      0x80000c38 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c3c bne     a0, s6, pc - 20        #; a0  = 4, s6  = 5, taken, goto 0x80000c28
; matmul (matmul.c:0)
      0x80000c28 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
; matmul (matmul.c:7)
      0x80000c30 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
      0x80000c34 bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80000c2c
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
      0x80000c34 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80000c2c
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
      0x80000c34 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80000c2c
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
      0x80000c34 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80000c2c
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
      0x80000c34 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80000c2c
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
      0x80000c34 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80000c2c
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
      0x80000c34 bnez    a1, pc - 8             #; a1  = 0, not taken
      0x80000c2c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
; matmul (matmul.c:6)
      0x80000c38 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c3c bne     a0, s6, pc - 20        #; a0  = 5, s6  = 5, not taken
; matmul (matmul.c:15)
      0x80000c44 lw      s7, 12(sp)             #; sp  = 0x0011ff10, s7  <~~ Word[0x0011ff1c]
      0x80000c40 csrrci  a0, ssr, 1             #; 
                                                #; (lsu) s7  <-- 0
      0x80000c48 lw      s6, 16(sp)             #; sp  = 0x0011ff10, s6  <~~ Word[0x0011ff20]
                                                #; (lsu) s6  <-- 0
      0x80000c4c lw      s5, 20(sp)             #; sp  = 0x0011ff10, s5  <~~ Word[0x0011ff24]
                                                #; (lsu) s5  <-- 0
      0x80000c50 lw      s4, 24(sp)             #; sp  = 0x0011ff10, s4  <~~ Word[0x0011ff28]
                                                #; (lsu) s4  <-- 0
      0x80000c54 lw      s3, 28(sp)             #; sp  = 0x0011ff10, s3  <~~ Word[0x0011ff2c]
                                                #; (lsu) s3  <-- 0
      0x80000c58 lw      s2, 32(sp)             #; sp  = 0x0011ff10, s2  <~~ Word[0x0011ff30]
                                                #; (lsu) s2  <-- 0x00100000
      0x80000c5c lw      s1, 36(sp)             #; sp  = 0x0011ff10, s1  <~~ Word[0x0011ff34]
                                                #; (lsu) s1  <-- 0x001000f0
      0x80000c60 lw      s0, 40(sp)             #; sp  = 0x0011ff10, s0  <~~ Word[0x0011ff38]
                                                #; (lsu) s0  <-- 0x00100240
      0x80000c64 lw      ra, 44(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff3c]
      0x80000c68 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x80000870
      0x80000c6c ret                            #; ra  = 0x80000870, goto 0x80000870
; main (test_mat.c:38)
      0x80000870 li      a1, 5                  #; (wrb) a1  <-- 5
      0x80000874 li      a2, 7                  #; (wrb) a2  <-- 7
      0x80000878 mv      a0, s0                 #; s0  = 0x00100240, (wrb) a0  <-- 0x00100240
      0x8000087c auipc   ra, 0x0                #; (wrb) ra  <-- 0x8000087c
      0x80000880 jalr    ra, ra, 1012           #; ra  = 0x8000087c, (wrb) ra  <-- 0x80000884, goto 0x80000c70
; summat (summat.c:5)
      0x80000c70 slti    a3, a1, 1              #; a1  = 5, (wrb) a3  <-- 0
      0x80000c74 slti    a4, a2, 1              #; a2  = 7, (wrb) a4  <-- 0
      0x80000c78 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x80000c7c bnez    a3, pc + 108           #; a3  = 0, not taken
      0x80000c80 addi    a7, a2, -1             #; a2  = 7, (wrb) a7  <-- 6
      0x80000c84 addi    a6, a1, -1             #; a1  = 5, (wrb) a6  <-- 4
      0x80000c88 mul     a3, a6, a2             #; a6  = 4, a2  = 7
                                                #; (acc) a3  <-- 0x011686b3
      0x80000c8c add     a3, a3, a7             #; a3  = 28, a7  = 6, (wrb) a3  <-- 34
      0x80000c90 slli    a4, a3, 3              #; a3  = 34, (wrb) a4  <-- 272
      0x80000c94 add     a3, a4, a0             #; a4  = 272, a0  = 0x00100240, (wrb) a3  <-- 0x00100350
      0x80000c98 srli    a5, a0, 20             #; a0  = 0x00100240, (wrb) a5  <-- 1
      0x80000c9c snez    a5, a5                 #; a5  = 1, (wrb) a5  <-- 1
      0x80000ca0 bgeu    a3, a4, pc + 80        #; a3  = 0x00100350, a4  = 272, taken, goto 0x80000cf0
; summat (summat.c:0)
      0x80000cf0 lui     a4, 0x120              #; (wrb) a4  <-- 0x00120000
      0x80000cf4 addi    a4, a4, 1              #; a4  = 0x00120000, (wrb) a4  <-- 0x00120001
      0x80000cf8 sltu    a3, a3, a4             #; a3  = 0x00100350, a4  = 0x00120001, (wrb) a3  <-- 1
; summat (summat.c:5)
      0x80000cfc and     a3, a5, a3             #; a5  = 1, a3  = 1, (wrb) a3  <-- 1
      0x80000d00 beqz    a3, pc - 80            #; a3  = 1, not taken
; summat (summat.c:0)
      0x80000d04 li      a5, 0                  #; (wrb) a5  <-- 0
      0x80000d08 li      a3, 8                  #; (wrb) a3  <-- 8
; summat (summat.c:5)
      0x80000d0c li      a4, 64                 #; (wrb) a4  <-- 64
      0x80000d10 scfgw   a7, a4                 #; a7  = 6, a4  = 64
      0x80000d14 li      a4, 192                #; (wrb) a4  <-- 192
      0x80000d18 scfgw   a3, a4                 #; a3  = 8, a4  = 192
      0x80000d1c li      a4, 96                 #; (wrb) a4  <-- 96
      0x80000d20 li      a7, 224                #; (wrb) a7  <-- 224
      0x80000d24 scfgw   a6, a4                 #; a6  = 4, a4  = 96, (acc) ra  <-- 0x00e820ab
      0x80000d28 scfgw   a3, a7                 #; a3  = 8, a7  = 224, (acc) ra  <-- 0x0116a0ab
      0x80000d2c li      a3, 32                 #; (wrb) a3  <-- 32
      0x80000d30 scfgw   zero, a3               #; a3  = 32, (acc) ra  <-- 0x00d020ab
      0x80000d34 scfgwi  a0, 800                #; a0  = 0x00100240
                                                #; (acc) a0  <-- 0xd2000553
      0x80000d38 csrrsi  a0, ssr, 1             #; 
; summat (summat.c:0)
      0x80000d40 mv      a0, a2                 #; a2  = 7, (wrb) a0  <-- 7
      0x80000d3c fcvt.d.w fa0, zero             #; ac1  = 0
; summat (summat.c:6)
      0x80000d44 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 0.0
                                                #; (acc) a0  <-- 0x02a07553
; summat (summat.c:6)
      0x80000d4c bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
      0x80000d4c bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 0.0
; summat (summat.c:7)
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
; summat (summat.c:6)
      0x80000d4c bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
                                                #; (f:fpu) fa0  <-- 0.0
      0x80000d4c bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80000d44
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
      0x80000d44 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
      0x80000d4c bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80000d44
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 0.0
; summat (summat.c:6)
      0x80000d44 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
      0x80000d4c bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 0.0
; summat (summat.c:7)
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
; summat (summat.c:6)
      0x80000d4c bnez    a0, pc - 8             #; a0  = 0, not taken
                                                #; (f:fpu) fa0  <-- 0.0
; summat (summat.c:5)
      0x80000d50 addi    a5, a5, 1              #; a5  = 0, (wrb) a5  <-- 1
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
      0x80000d54 bne     a5, a1, pc - 20        #; a5  = 1, a1  = 5, taken, goto 0x80000d40
; summat (summat.c:0)
      0x80000d40 mv      a0, a2                 #; a2  = 7, (wrb) a0  <-- 7
; summat (summat.c:6)
      0x80000d44 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 0.0
; summat (summat.c:7)
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
; summat (summat.c:6)
      0x80000d4c bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
                                                #; (f:fpu) fa0  <-- 0.0
      0x80000d4c bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80000d44
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
      0x80000d44 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
      0x80000d4c bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80000d44
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 0.0
; summat (summat.c:6)
      0x80000d44 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
      0x80000d4c bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 0.0
; summat (summat.c:7)
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
; summat (summat.c:6)
      0x80000d4c bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
                                                #; (f:fpu) fa0  <-- 0.0
      0x80000d4c bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80000d44
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
      0x80000d44 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
      0x80000d4c bnez    a0, pc - 8             #; a0  = 0, not taken
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 0.0
; summat (summat.c:5)
      0x80000d50 addi    a5, a5, 1              #; a5  = 1, (wrb) a5  <-- 2
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
      0x80000d54 bne     a5, a1, pc - 20        #; a5  = 2, a1  = 5, taken, goto 0x80000d40
; summat (summat.c:0)
      0x80000d40 mv      a0, a2                 #; a2  = 7, (wrb) a0  <-- 7
; summat (summat.c:6)
      0x80000d44 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 0.0
; summat (summat.c:7)
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
; summat (summat.c:6)
      0x80000d4c bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
                                                #; (f:fpu) fa0  <-- 0.0
      0x80000d4c bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80000d44
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
      0x80000d44 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
      0x80000d4c bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80000d44
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 0.0
; summat (summat.c:6)
      0x80000d44 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
      0x80000d4c bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 0.0
; summat (summat.c:7)
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
; summat (summat.c:6)
      0x80000d4c bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
                                                #; (f:fpu) fa0  <-- 0.0
      0x80000d4c bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80000d44
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
      0x80000d44 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
      0x80000d4c bnez    a0, pc - 8             #; a0  = 0, not taken
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 0.0
; summat (summat.c:5)
      0x80000d50 addi    a5, a5, 1              #; a5  = 2, (wrb) a5  <-- 3
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
      0x80000d54 bne     a5, a1, pc - 20        #; a5  = 3, a1  = 5, taken, goto 0x80000d40
; summat (summat.c:0)
      0x80000d40 mv      a0, a2                 #; a2  = 7, (wrb) a0  <-- 7
; summat (summat.c:6)
      0x80000d44 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 0.0
; summat (summat.c:7)
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
; summat (summat.c:6)
      0x80000d4c bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
                                                #; (f:fpu) fa0  <-- 0.0
      0x80000d4c bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80000d44
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
      0x80000d44 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
      0x80000d4c bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80000d44
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 0.0
; summat (summat.c:6)
      0x80000d44 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
      0x80000d4c bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 0.0
; summat (summat.c:7)
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
; summat (summat.c:6)
      0x80000d4c bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
                                                #; (f:fpu) fa0  <-- 0.0
      0x80000d4c bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80000d44
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
      0x80000d44 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
      0x80000d4c bnez    a0, pc - 8             #; a0  = 0, not taken
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 0.0
; summat (summat.c:5)
      0x80000d50 addi    a5, a5, 1              #; a5  = 3, (wrb) a5  <-- 4
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
      0x80000d54 bne     a5, a1, pc - 20        #; a5  = 4, a1  = 5, taken, goto 0x80000d40
; summat (summat.c:0)
      0x80000d40 mv      a0, a2                 #; a2  = 7, (wrb) a0  <-- 7
; summat (summat.c:6)
      0x80000d44 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 0.0
; summat (summat.c:7)
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
; summat (summat.c:6)
      0x80000d4c bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
                                                #; (f:fpu) fa0  <-- 0.0
      0x80000d4c bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80000d44
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
      0x80000d44 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
      0x80000d4c bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80000d44
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 0.0
; summat (summat.c:6)
      0x80000d44 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
      0x80000d4c bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 0.0
; summat (summat.c:7)
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
; summat (summat.c:6)
      0x80000d4c bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80000d44
      0x80000d44 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
                                                #; (f:fpu) fa0  <-- 0.0
      0x80000d4c bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80000d44
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
      0x80000d44 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
      0x80000d4c bnez    a0, pc - 8             #; a0  = 0, not taken
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 0.0
; summat (summat.c:5)
      0x80000d50 addi    a5, a5, 1              #; a5  = 4, (wrb) a5  <-- 5
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
      0x80000d54 bne     a5, a1, pc - 20        #; a5  = 5, a1  = 5, not taken
; summat (summat.c:10)
      0x80000d5c ret                            #; ra  = 0x80000884, goto 0x80000884
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 0.0
; summat (summat.c:7)
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
; main (test_mat.c:0)
      0x80000884 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003884
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 0.0
; main (test_mat.c:0)
      0x80000888 addi    a0, a0, -1380          #; a0  = 0x80003884, (wrb) a0  <-- 0x80003320
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fa0  <-- 0.0
; summat (summat.c:7)
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fa0  <-- 0.0
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fa0  <-- 0.0
      0x80000d48 fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
; summat (summat.c:0)
      0x80000d58 csrrci  a0, ssr, 1             #; 
; main (test_mat.c:0)
      0x8000088c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003320], (f:fpu) fa0  <-- 0.0
; main (test_mat.c:43)
      0x800008a0 lw      a2, 0(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff40]
                                                #; (f:lsu) ft0  <-- -183998.6806500
; main (test_mat.c:40)
      0x80000890 fadd.d  ft0, fs0, ft0          #; fs0  = 183998.6806500, ft0  = -183998.6806500
                                                #; (lsu) a2  <-- 0
; main (test_mat.c:43)
      0x800008a4 lw      a3, 4(sp)              #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff44]
      0x800008a8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028a8
                                                #; (f:fpu) ft0  <-- -0.0000000
      0x800008ac addi    a0, a0, 2029           #; a0  = 0x800028a8, (wrb) a0  <-- 0x80003095
      0x80000894 fadd.d  ft0, ft0, fa0          #; ft0  = -0.0000000, fa0  = 0.0
      0x800008b0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008b0
      0x800008b4 jalr    ra, ra, 1200           #; ra  = 0x800008b0, (wrb) ra  <-- 0x800008b8, goto 0x80000d60
; printf_ (printf.c:863)
      0x80000d60 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
                                                #; (f:fpu) ft0  <-- -0.0000000
      0x80000d64 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x800008b8 ~~> Word[0x0011ff1c], (lsu) a3  <-- 0
      0x80000898 fsgnjx.d fs0, ft0, ft0         #; ft0  = -0.0000000, ft0  = -0.0000000
      0x80000d68 mv      t0, a0                 #; a0  = 0x80003095, (wrb) t0  <-- 0x80003095
                                                #; (f:fpu) fs0  <-- 0.0000000
      0x80000d6c sw      a7, 44(sp)             #; sp  = 0x0011ff10, 224 ~~> Word[0x0011ff3c]
      0x8000089c fsd     fs0, 0(sp)             #; 0.0000000 ~~> Doub[0x0011ff40]
      0x80000d70 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 4 ~~> Word[0x0011ff38]
      0x80000d74 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 5 ~~> Word[0x0011ff34]
      0x80000d78 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 96 ~~> Word[0x0011ff30]
      0x80000d7c sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
      0x80000d80 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
      0x80000d84 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 5 ~~> Word[0x0011ff24]
      0x80000d88 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
; printf_ (printf.c:865)
      0x80000d8c sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
; printf_ (printf.c:867)
      0x80000d90 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001d90
      0x80000d94 addi    a0, a0, -988           #; a0  = 0x80001d90, (wrb) a0  <-- 0x800019b4
      0x80000d98 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
      0x80000d9c li      a2, -1                 #; (wrb) a2  <-- -1
      0x80000da0 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
      0x80000da4 mv      a3, t0                 #; t0  = 0x80003095, (wrb) a3  <-- 0x80003095
      0x80000da8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000da8
      0x80000dac jalr    ra, ra, 20             #; ra  = 0x80000da8, (wrb) ra  <-- 0x80000db0, goto 0x80000dbc
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000dbc addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
      0x80000dc0 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000db0 ~~> Word[0x0011ff0c]
      0x80000dc4 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0x00100240 ~~> Word[0x0011ff08]
      0x80000dc8 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0x001000f0 ~~> Word[0x0011ff04]
      0x80000dcc sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0x00100000 ~~> Word[0x0011ff00]
      0x80000dd0 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
      0x80000dd4 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
      0x80000dd8 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
      0x80000ddc sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
      0x80000de0 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
      0x80000de4 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
      0x80000de8 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
      0x80000dec sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
      0x80000df0 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
      0x80000df4 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
      0x80000df8 mv      s0, a3                 #; a3  = 0x80003095, (wrb) s0  <-- 0x80003095
      0x80000dfc mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x80000e00 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x80000e04 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e08 mv      s2, a0                 #; a0  = 0x800019b4, (wrb) s2  <-- 0x800019b4
      0x80000e0c j       pc + 0xc               #; goto 0x80000e18
      0x80000e18 li      s8, 0                  #; (wrb) s8  <-- 0
      0x80000e1c li      s6, 37                 #; (wrb) s6  <-- 37
      0x80000e20 li      s11, 16                #; (wrb) s11 <-- 16
      0x80000e24 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000e28 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000e2c addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000e30 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
      0x80000e34 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000e38 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000e3c sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e40 addi    s10, s0, 2             #; s0  = 0x80003095, (wrb) s10 <-- 0x80003097
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e44 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000e48 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e4c lbu     a0, 0(s0)              #; s0  = 0x80003095, a0  <~~ Byte[0x80003095]
                                                #; (lsu) a0  <-- 101
      0x80000e50 beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x80000e54 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000e58 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000e5c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000e60 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000e64 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e68 jalr    s2                     #; s2  = 0x800019b4, (wrb) ra  <-- 0x80000e6c, goto 0x800019b4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019b4 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
      0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
      0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 0
      0x800019d4 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 1 ~~> Word[0x800033dc]
      0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 0, (wrb) a4  <-- 0x800033dc
      0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033dc, 101 ~~> Byte[0x80003424]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 1
      0x800019e8 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x800019ec snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x800019f0 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x800019f4 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a5c ret                            #; ra  = 0x80000e6c, goto 0x80000e6c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000e6c addi    s0, s0, 1              #; s0  = 0x80003095, (wrb) s0  <-- 0x80003096
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000e70 addi    s10, s10, 1            #; s10 = 0x80003097, (wrb) s10 <-- 0x80003098
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e74 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e78 lbu     a0, 0(s0)              #; s0  = 0x80003096, a0  <~~ Byte[0x80003096]
                                                #; (lsu) a0  <-- 114
      0x80000e7c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000e54
      0x80000e54 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000e58 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000e5c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000e60 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000e64 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e68 jalr    s2                     #; s2  = 0x800019b4, (wrb) ra  <-- 0x80000e6c, goto 0x800019b4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019b4 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
      0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
      0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 1
      0x800019d4 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 2 ~~> Word[0x800033dc]
      0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 1, (wrb) a4  <-- 0x800033dd
      0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033dd, 114 ~~> Byte[0x80003425]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 2
      0x800019e8 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x800019ec snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x800019f0 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800019f4 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a5c ret                            #; ra  = 0x80000e6c, goto 0x80000e6c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000e6c addi    s0, s0, 1              #; s0  = 0x80003096, (wrb) s0  <-- 0x80003097
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000e70 addi    s10, s10, 1            #; s10 = 0x80003098, (wrb) s10 <-- 0x80003099
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e74 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e78 lbu     a0, 0(s0)              #; s0  = 0x80003097, a0  <~~ Byte[0x80003097]
                                                #; (lsu) a0  <-- 114
      0x80000e7c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000e54
      0x80000e54 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000e58 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000e5c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000e60 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000e64 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e68 jalr    s2                     #; s2  = 0x800019b4, (wrb) ra  <-- 0x80000e6c, goto 0x800019b4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019b4 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
      0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
      0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 2
      0x800019d4 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 3 ~~> Word[0x800033dc]
      0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 2, (wrb) a4  <-- 0x800033de
      0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033de, 114 ~~> Byte[0x80003426]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 3
      0x800019e8 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x800019ec snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x800019f0 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800019f4 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a5c ret                            #; ra  = 0x80000e6c, goto 0x80000e6c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000e6c addi    s0, s0, 1              #; s0  = 0x80003097, (wrb) s0  <-- 0x80003098
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000e70 addi    s10, s10, 1            #; s10 = 0x80003099, (wrb) s10 <-- 0x8000309a
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e74 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e78 lbu     a0, 0(s0)              #; s0  = 0x80003098, a0  <~~ Byte[0x80003098]
                                                #; (lsu) a0  <-- 111
      0x80000e7c bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000e54
      0x80000e54 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000e58 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000e5c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000e60 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000e64 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e68 jalr    s2                     #; s2  = 0x800019b4, (wrb) ra  <-- 0x80000e6c, goto 0x800019b4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019b4 beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
      0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
      0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 3
      0x800019d4 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 4 ~~> Word[0x800033dc]
      0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 3, (wrb) a4  <-- 0x800033df
      0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033df, 111 ~~> Byte[0x80003427]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 4
      0x800019e8 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x800019ec snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x800019f0 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x800019f4 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a5c ret                            #; ra  = 0x80000e6c, goto 0x80000e6c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000e6c addi    s0, s0, 1              #; s0  = 0x80003098, (wrb) s0  <-- 0x80003099
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000e70 addi    s10, s10, 1            #; s10 = 0x8000309a, (wrb) s10 <-- 0x8000309b
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e74 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e78 lbu     a0, 0(s0)              #; s0  = 0x80003099, a0  <~~ Byte[0x80003099]
                                                #; (lsu) a0  <-- 114
      0x80000e7c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000e54
      0x80000e54 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000e58 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000e5c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000e60 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000e64 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e68 jalr    s2                     #; s2  = 0x800019b4, (wrb) ra  <-- 0x80000e6c, goto 0x800019b4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019b4 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
      0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
      0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 4
      0x800019d4 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 5 ~~> Word[0x800033dc]
      0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 4, (wrb) a4  <-- 0x800033e0
      0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033e0, 114 ~~> Byte[0x80003428]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 5
      0x800019e8 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x800019ec snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x800019f0 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800019f4 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a5c ret                            #; ra  = 0x80000e6c, goto 0x80000e6c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000e6c addi    s0, s0, 1              #; s0  = 0x80003099, (wrb) s0  <-- 0x8000309a
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000e70 addi    s10, s10, 1            #; s10 = 0x8000309b, (wrb) s10 <-- 0x8000309c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e74 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e78 lbu     a0, 0(s0)              #; s0  = 0x8000309a, a0  <~~ Byte[0x8000309a]
                                                #; (lsu) a0  <-- 32
      0x80000e7c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000e54
      0x80000e54 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000e58 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000e5c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000e60 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000e64 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e68 jalr    s2                     #; s2  = 0x800019b4, (wrb) ra  <-- 0x80000e6c, goto 0x800019b4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019b4 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
      0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
      0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 5
      0x800019d4 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 6 ~~> Word[0x800033dc]
      0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 5, (wrb) a4  <-- 0x800033e1
      0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033e1, 32 ~~> Byte[0x80003429]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 6
      0x800019e8 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x800019ec snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x800019f0 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800019f4 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a5c ret                            #; ra  = 0x80000e6c, goto 0x80000e6c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000e6c addi    s0, s0, 1              #; s0  = 0x8000309a, (wrb) s0  <-- 0x8000309b
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000e70 addi    s10, s10, 1            #; s10 = 0x8000309c, (wrb) s10 <-- 0x8000309d
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e74 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e78 lbu     a0, 0(s0)              #; s0  = 0x8000309b, a0  <~~ Byte[0x8000309b]
                                                #; (lsu) a0  <-- 61
      0x80000e7c bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000e54
      0x80000e54 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000e58 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000e5c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000e60 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000e64 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e68 jalr    s2                     #; s2  = 0x800019b4, (wrb) ra  <-- 0x80000e6c, goto 0x800019b4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019b4 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
      0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
      0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 6
      0x800019d4 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 7 ~~> Word[0x800033dc]
      0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 6, (wrb) a4  <-- 0x800033e2
      0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033e2, 61 ~~> Byte[0x8000342a]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 7
      0x800019e8 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x800019ec snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x800019f0 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x800019f4 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a5c ret                            #; ra  = 0x80000e6c, goto 0x80000e6c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000e6c addi    s0, s0, 1              #; s0  = 0x8000309b, (wrb) s0  <-- 0x8000309c
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000e70 addi    s10, s10, 1            #; s10 = 0x8000309d, (wrb) s10 <-- 0x8000309e
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e74 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e78 lbu     a0, 0(s0)              #; s0  = 0x8000309c, a0  <~~ Byte[0x8000309c]
                                                #; (lsu) a0  <-- 32
      0x80000e7c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000e54
      0x80000e54 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000e58 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000e5c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000e60 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000e64 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e68 jalr    s2                     #; s2  = 0x800019b4, (wrb) ra  <-- 0x80000e6c, goto 0x800019b4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019b4 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
      0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
      0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 7
      0x800019d4 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 8 ~~> Word[0x800033dc]
      0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 7, (wrb) a4  <-- 0x800033e3
      0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033e3, 32 ~~> Byte[0x8000342b]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 8
      0x800019e8 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x800019ec snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x800019f0 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800019f4 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a5c ret                            #; ra  = 0x80000e6c, goto 0x80000e6c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000e6c addi    s0, s0, 1              #; s0  = 0x8000309c, (wrb) s0  <-- 0x8000309d
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000e70 addi    s10, s10, 1            #; s10 = 0x8000309e, (wrb) s10 <-- 0x8000309f
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e74 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e78 lbu     a0, 0(s0)              #; s0  = 0x8000309d, a0  <~~ Byte[0x8000309d]
                                                #; (lsu) a0  <-- 37
      0x80000e7c bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000e54
      0x80000e54 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000e84
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000e84 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e88 j       pc + 0x10              #; goto 0x80000e98
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000e98 lbu     a0, -1(s10)            #; s10 = 0x8000309f, a0  <~~ Byte[0x8000309e]
                                                #; (lsu) a0  <-- 102
      0x80000e9c addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000ea0 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000ed8
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000ed8 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000edc andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000ee0 addi    a1, s10, -1            #; s10 = 0x8000309f, (wrb) a1  <-- 0x8000309e
      0x80000ee4 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000ee8 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000f64
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000f64 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000f68 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000fb8
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000fb8 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000fbc mv      s10, a1                #; a1  = 0x8000309e, (wrb) s10 <-- 0x8000309e
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000fc0 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000fc4 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000fc8 j       pc + 0xc               #; goto 0x80000fd4
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000fd4 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000fd8 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000fdc slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000fe0 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000fe4 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000fe8 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x8000104c
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x8000104c addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80001050 li      a2, 83                 #; (wrb) a2  <-- 83
      0x80001054 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001058 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x8000105c auipc   a2, 0x2                #; (wrb) a2  <-- 0x8000305c
      0x80001060 addi    a2, a2, 184            #; a2  = 0x8000305c, (wrb) a2  <-- 0x80003114
      0x80001064 add     a1, a1, a2             #; a1  = 260, a2  = 0x80003114, (wrb) a1  <-- 0x80003218
      0x80001068 lw      a2, 0(a1)              #; a1  = 0x80003218, a2  <~~ Word[0x80003218]
      0x8000106c li      a1, 8                  #; (wrb) a1  <-- 8
      0x80001070 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x800010a4
      0x80001074 jr      a2                     #; a2  = 0x800010a4, goto 0x800010a4
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x800010a4 li      a1, 70                 #; (wrb) a1  <-- 70
      0x800010a8 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x800010b0
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x800010b0 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
      0x800010b4 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
      0x800010bc addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
      0x800010b8 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
                                                #; (f:lsu) fa0  <-- 0.0
      0x800010c0 mv      a0, s2                 #; s2  = 0x800019b4, (wrb) a0  <-- 0x800019b4
      0x800010c4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800010c8 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x800010cc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800010d0 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x800010d4 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x800010d8 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x800010dc auipc   ra, 0x1                #; (wrb) ra  <-- 0x800020dc
      0x800010e0 jalr    ra, ra, -1656          #; ra  = 0x800020dc, (wrb) ra  <-- 0x800010e4, goto 0x80001a64
; _ftoa (printf.c:340)
      0x80001a64 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
      0x80001a68 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x800010e4 ~~> Word[0x0011fe9c]
      0x80001a6c sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
      0x80001a70 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
      0x80001a74 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x800019b4 ~~> Word[0x0011fe90]
      0x80001a78 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
      0x80001a7c sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
      0x80001a80 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
      0x80001a84 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
      0x80001a88 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
      0x80001a8c sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
      0x80001a90 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
      0x80001a94 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x8000309e ~~> Word[0x0011fe70]
      0x80001a98 fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe68]
      0x80001a9c fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
      0x80001aa4 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003aa4
      0x80001aa8 addi    s1, s1, -1908          #; s1  = 0x80003aa4, (wrb) s1  <-- 0x80003330
      0x80001aa0 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
      0x80001aac fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003330]
; _ftoa (printf.c:351)
      0x80001ab4 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
; _ftoa (printf.c:0)
      0x80001ab8 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x80001abc mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x80001ab0 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
      0x80001ac0 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x80001ac4 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
      0x80001ac8 mv      s7, a0                 #; a0  = 0x800019b4, (wrb) s7  <-- 0x800019b4
; _ftoa (printf.c:351)
      0x80001acc bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001bbc
; _ftoa (printf.c:0)
      0x80001bbc fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x80001bc0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002bc0
      0x80001bc4 addi    a0, a0, 1912           #; a0  = 0x80002bc0, (wrb) a0  <-- 0x80003338
      0x80001bc8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003338]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x80001bcc fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x80001bd0 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001bec
; _ftoa (printf.c:0)
      0x80001bec auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002bec
      0x80001bf0 addi    a0, a0, 1876           #; a0  = 0x80002bec, (wrb) a0  <-- 0x80003340
      0x80001bf8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002bf8
      0x80001bfc addi    a0, a0, 1872           #; a0  = 0x80002bf8, (wrb) a0  <-- 0x80003348
      0x80001bf4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003340]
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
      0x80001c00 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003348]
; _ftoa (printf.c:358)
      0x80001c04 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
                                                #; (acc) a0  <-- 0x00b57533
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
      0x80001c08 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
                                                #; (acc) a0  <-- 0x00b57533
      0x80001c0c and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80001c10 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001d0c
; _ftoa (printf.c:374)
      0x80001d0c andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x80001d10 li      s8, 6                  #; (wrb) s8  <-- 6
      0x80001d14 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001d1c
; _ftoa (printf.c:0)
      0x80001d1c li      a0, 10                 #; (wrb) a0  <-- 10
; _ftoa (printf.c:378)
      0x80001d24 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001d5c
; _ftoa (printf.c:0)
      0x80001d20 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs2  <-- 0.0
      0x80001d5c li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x80001d60 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x80001d64 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002d64
      0x80001d68 addi    a1, a1, 1284           #; a1  = 0x80002d64, (wrb) a1  <-- 0x80003268
      0x80001d6c add     a0, a0, a1             #; a0  = 48, a1  = 0x80003268, (wrb) a0  <-- 0x80003298
      0x80001d70 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003298]
; _ftoa (printf.c:383)
      0x80001d74 fcvt.w.d s1, fs2               #; fs2  = 0.0
; _ftoa (printf.c:384)
      0x80001d78 fcvt.d.w ft0, s1               #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80001d7c fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
                                                #; (f:lsu) ft1  <-- 1000000.0000000
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:0)
      0x80001d84 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002d84
      0x80001d88 addi    a0, a0, 1484           #; a0  = 0x80002d84, (wrb) a0  <-- 0x80003350
      0x80001d80 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
      0x80001d8c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003350], (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:385)
      0x80001d90 fcvt.wu.d a0, ft2              #; ft2  = 0.0
                                                #; (f:lsu) ft0  <-- 0.5
                                                #; (acc) gp  <-- 0xd21501d3
; _ftoa (printf.c:386)
      0x80001d94 fcvt.d.wu ft3, a0              #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80001d98 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:388)
      0x80001d9c fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x80001da0 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001dc0
; _ftoa (printf.c:396)
      0x80001dc0 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
                                                #; (acc) s4  <-- 0x00059a63
      0x80001dc4 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001dd8
; _ftoa (printf.c:403)
      0x80001ddc beqz    s8, pc + 216           #; s8  = 6, not taken
      0x80001dd8 fcvt.d.w fs1, zero             #; ac1  = 0
                                                #; (f:fpu) fs1  <-- 0.0
; _ftoa (printf.c:0)
      0x80001de0 li      a2, 0                  #; (wrb) a2  <-- 0
      0x80001de4 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:414)
      0x80001de8 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
      0x80001dec li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001df0 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x80001df4 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80001df8 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80001dfc li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001e00 li      a7, 9                  #; (wrb) a7  <-- 9
      0x80001e04 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80001e08 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x80001e0c mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
      0x80001e10 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001e14 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001e18 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001e1c ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x80001e20 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
      0x80001e24 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
; _ftoa (printf.c:417)
      0x80001e28 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80001e2c bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x80001e30 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x80001e34 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80001e38 li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001e3c sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x80001e40 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x80001e44 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x80001e48 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x80001e4c bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x80001e50 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
; _ftoa (printf.c:422)
      0x80001e54 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
      0x80001e58 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x80001e5c add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x80001e60 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x80001e64 li      a1, 31                 #; (wrb) a1  <-- 31
      0x80001e68 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x80001e6c add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
      0x80001e70 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x80001e74 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001e7c
      0x80001e7c addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x80001e80 li      a1, 48                 #; (wrb) a1  <-- 48
      0x80001e84 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x7ffffe84
      0x80001e88 jalr    ra, ra, 380            #; ra  = 0x7ffffe84, (wrb) ra  <-- 0x80001e8c, goto 0x80000000
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
      0x80000094 ret                            #; ra  = 0x80001e8c, goto 0x80001e8c
; _ftoa (printf.c:0)
      0x80001e8c li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x80001e90 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x80001e94 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80001e98 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x80001e9c snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80001ea0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001ea4 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001ea8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001e90
      0x80001e90 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x80001e94 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80001e98 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x80001e9c snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80001ea0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001ea4 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001ea8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001e90
      0x80001e90 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x80001e94 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80001e98 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x80001e9c snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80001ea0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001ea4 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001ea8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001e90
      0x80001e90 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x80001e94 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80001e98 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x80001e9c snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80001ea0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001ea4 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001ea8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001e90
      0x80001e90 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x80001e94 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80001e98 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x80001e9c snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80001ea0 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001ea4 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001ea8 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001eac add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x80001eb0 j       pc + 0x28              #; goto 0x80001ed8
      0x80001ed8 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001edc addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001ee0 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:427)
      0x80001ee4 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
      0x80001ee8 li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001eec sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
      0x80001ef0 j       pc + 0x8               #; goto 0x80001ef8
; _ftoa (printf.c:0)
      0x80001ef8 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001efc mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001f00 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001f04 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001f0c lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001f08 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
      0x80001f10 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001f14 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001f18 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
      0x80001f1c li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001f20 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001f24 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001f28 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001f2c srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001f30 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001f34 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001f38 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001f3c addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80001f40 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001f44 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
; _ftoa (printf.c:434)
      0x80001f48 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001f4c sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
; _ftoa (printf.c:0)
      0x80001f50 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001f54 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001f58 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80001f5c j       pc + 0x8               #; goto 0x80001f64
; _ftoa (printf.c:440)
      0x80001f64 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001f68 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001f6c bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001fd8
; _ftoa (printf.c:0)
      0x80001fd8 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001fdc bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80001fe0 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001ff8
; _ftoa (printf.c:453)
      0x80001ff8 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001ffc bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80002000 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80002004 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80002030
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80002030 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80002034 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80002038 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x8000203c or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80002040 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80002044 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80002048 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80002074
; _ftoa (printf.c:0)
      0x80002074 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80002078 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x8000207c addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80002080 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
      0x80002084 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
      0x80002088 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x8000208c addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
                                                #; (lsu) a0  <-- 48
      0x80002090 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80002094 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80002098 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x8000209c jalr    s7                     #; s7  = 0x800019b4, (wrb) ra  <-- 0x800020a0, goto 0x800019b4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019b4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
      0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
      0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 8
      0x800019d4 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 9 ~~> Word[0x800033dc]
      0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 8, (wrb) a4  <-- 0x800033e4
      0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033e4, 48 ~~> Byte[0x8000342c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 9
      0x800019e8 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x800019ec snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x800019f0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800019f4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a5c ret                            #; ra  = 0x800020a0, goto 0x800020a0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800020a0 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x800020a4 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800020a8 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80002080
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80002080 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
      0x80002084 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
      0x80002088 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x8000208c addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80002090 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80002094 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80002098 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x8000209c jalr    s7                     #; s7  = 0x800019b4, (wrb) ra  <-- 0x800020a0, goto 0x800019b4
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019b4 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
      0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
      0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 9
      0x800019d4 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 10 ~~> Word[0x800033dc]
      0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 9, (wrb) a4  <-- 0x800033e5
      0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033e5, 46 ~~> Byte[0x8000342d]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 10
      0x800019e8 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x800019ec snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x800019f0 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x800019f4 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a5c ret                            #; ra  = 0x800020a0, goto 0x800020a0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800020a0 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x800020a4 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800020a8 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80002080
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80002080 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
      0x80002084 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
      0x80002088 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x8000208c addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80002090 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80002094 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80002098 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x8000209c jalr    s7                     #; s7  = 0x800019b4, (wrb) ra  <-- 0x800020a0, goto 0x800019b4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019b4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
      0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
      0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 10
      0x800019d4 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 11 ~~> Word[0x800033dc]
      0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 10, (wrb) a4  <-- 0x800033e6
      0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033e6, 48 ~~> Byte[0x8000342e]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 11
      0x800019e8 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x800019ec snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x800019f0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800019f4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a5c ret                            #; ra  = 0x800020a0, goto 0x800020a0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800020a0 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x800020a4 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800020a8 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80002080
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80002080 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
      0x80002084 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
      0x80002088 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x8000208c addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80002090 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80002094 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80002098 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x8000209c jalr    s7                     #; s7  = 0x800019b4, (wrb) ra  <-- 0x800020a0, goto 0x800019b4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019b4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
      0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
      0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 11
      0x800019d4 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 12 ~~> Word[0x800033dc]
      0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 11, (wrb) a4  <-- 0x800033e7
      0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033e7, 48 ~~> Byte[0x8000342f]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 12
      0x800019e8 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x800019ec snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x800019f0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800019f4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a5c ret                            #; ra  = 0x800020a0, goto 0x800020a0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800020a0 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x800020a4 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800020a8 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80002080
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80002080 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
      0x80002084 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
      0x80002088 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x8000208c addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80002090 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80002094 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80002098 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x8000209c jalr    s7                     #; s7  = 0x800019b4, (wrb) ra  <-- 0x800020a0, goto 0x800019b4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019b4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
      0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
      0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 12
      0x800019d4 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 13 ~~> Word[0x800033dc]
      0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 12, (wrb) a4  <-- 0x800033e8
      0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033e8, 48 ~~> Byte[0x80003430]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 13
      0x800019e8 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x800019ec snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x800019f0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800019f4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a5c ret                            #; ra  = 0x800020a0, goto 0x800020a0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800020a0 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x800020a4 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800020a8 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80002080
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80002080 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
      0x80002084 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
      0x80002088 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x8000208c addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80002090 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80002094 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80002098 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x8000209c jalr    s7                     #; s7  = 0x800019b4, (wrb) ra  <-- 0x800020a0, goto 0x800019b4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019b4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
      0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
      0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 13
      0x800019d4 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 14 ~~> Word[0x800033dc]
      0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 13, (wrb) a4  <-- 0x800033e9
      0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033e9, 48 ~~> Byte[0x80003431]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 14
      0x800019e8 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x800019ec snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x800019f0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800019f4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a5c ret                            #; ra  = 0x800020a0, goto 0x800020a0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800020a0 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x800020a4 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800020a8 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80002080
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80002080 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
      0x80002084 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
      0x80002088 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x8000208c addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80002090 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80002094 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80002098 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x8000209c jalr    s7                     #; s7  = 0x800019b4, (wrb) ra  <-- 0x800020a0, goto 0x800019b4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019b4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
      0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
      0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 14
      0x800019d4 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 15 ~~> Word[0x800033dc]
      0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 14, (wrb) a4  <-- 0x800033ea
      0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033ea, 48 ~~> Byte[0x80003432]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 15
      0x800019e8 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x800019ec snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x800019f0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800019f4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a5c ret                            #; ra  = 0x800020a0, goto 0x800020a0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800020a0 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x800020a4 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800020a8 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80002080
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80002080 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
      0x80002084 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
      0x80002088 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x8000208c addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80002090 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80002094 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80002098 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x8000209c jalr    s7                     #; s7  = 0x800019b4, (wrb) ra  <-- 0x800020a0, goto 0x800019b4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019b4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
      0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
      0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 15
      0x800019d4 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 16 ~~> Word[0x800033dc]
      0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 15, (wrb) a4  <-- 0x800033eb
      0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033eb, 48 ~~> Byte[0x80003433]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 16
      0x800019e8 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x800019ec snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x800019f0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800019f4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800019f8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800019fc bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a5c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a5c ret                            #; ra  = 0x800020a0, goto 0x800020a0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800020a0 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x800020a4 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800020a8 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x800020ac j       pc + 0x8               #; goto 0x800020b4
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800020b4 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x800020b8 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x800020bc xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x800020c0 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x800020c4 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x800020c8 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x800020f8
; _ftoa (printf.c:0)
      0x800020f8 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x800020fc mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80002100 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
      0x8000210c lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
      0x80002104 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
      0x80002108 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0000000
                                                #; (lsu) s10 <-- 0x8000309e
      0x80002110 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 8
      0x80002114 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 16
      0x80002118 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x8000211c lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x80002120 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- -1
      0x80002124 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0x0011ff17
      0x80002128 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0x0011ff30
      0x8000212c lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x800019b4
      0x80002130 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 8
      0x80002134 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0
      0x80002138 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
      0x8000213c addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x800010e4
      0x80002140 ret                            #; ra  = 0x800010e4, goto 0x800010e4
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800010e4 j       pc + 0x7c0             #; goto 0x800018a4
      0x800018a4 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x800018a8 li      s6, 37                 #; (wrb) s6  <-- 37
      0x800018ac li      s7, 46                 #; (wrb) s7  <-- 46
      0x800018b0 addi    s0, s10, 1             #; s10 = 0x8000309e, (wrb) s0  <-- 0x8000309f
      0x800018b4 j       pc - 0xa74             #; goto 0x80000e40
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e40 addi    s10, s0, 2             #; s0  = 0x8000309f, (wrb) s10 <-- 0x800030a1
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e44 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x80000e48 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e4c lbu     a0, 0(s0)              #; s0  = 0x8000309f, a0  <~~ Byte[0x8000309f]
                                                #; (lsu) a0  <-- 10
      0x80000e50 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000e54 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000e58 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x80000e5c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000e60 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x80000e64 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e68 jalr    s2                     #; s2  = 0x800019b4, (wrb) ra  <-- 0x80000e6c, goto 0x800019b4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019b4 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019b8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019bc li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019c0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019c4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039c4
      0x800019c8 addi    a3, a3, -1512          #; a3  = 0x800039c4, (wrb) a3  <-- 0x800033dc
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019cc add     a1, a2, a3             #; a2  = 0, a3  = 0x800033dc, (wrb) a1  <-- 0x800033dc
      0x800019d0 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 16
      0x800019d4 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x800019d8 sw      a5, 0(a1)              #; a1  = 0x800033dc, 17 ~~> Word[0x800033dc]
      0x800019dc add     a4, a1, a4             #; a1  = 0x800033dc, a4  = 16, (wrb) a4  <-- 0x800033ec
      0x800019e0 sb      a0, 72(a4)             #; a4  = 0x800033ec, 10 ~~> Byte[0x80003434]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019e4 lw      a4, 0(a1)              #; a1  = 0x800033dc, a4  <~~ Word[0x800033dc]
                                                #; (lsu) a4  <-- 17
      0x800019e8 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x800019ec snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x800019f0 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x800019f4 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x800019f8 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x800019fc bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a00 add     a0, a3, a2             #; a3  = 0x800033dc, a2  = 0, (wrb) a0  <-- 0x800033dc
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a04 addi    a2, a0, 72             #; a0  = 0x800033dc, (wrb) a2  <-- 0x80003424
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a08 sw      zero, 12(a0)           #; a0  = 0x800033dc, 0 ~~> Word[0x800033e8]
      0x80001a0c li      a3, 64                 #; (wrb) a3  <-- 64
      0x80001a10 sw      a3, 8(a0)              #; a0  = 0x800033dc, 64 ~~> Word[0x800033e4]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a14 sw      zero, 20(a0)           #; a0  = 0x800033dc, 0 ~~> Word[0x800033f0]
      0x80001a18 li      a3, 1                  #; (wrb) a3  <-- 1
      0x80001a1c sw      a3, 16(a0)             #; a0  = 0x800033dc, 1 ~~> Word[0x800033ec]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a20 sw      zero, 28(a0)           #; a0  = 0x800033dc, 0 ~~> Word[0x800033f8]
      0x80001a24 sw      a2, 24(a0)             #; a0  = 0x800033dc, 0x80003424 ~~> Word[0x800033f4]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a28 lw      a2, 0(a1)              #; a1  = 0x800033dc, a2  <~~ Word[0x800033dc]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a2c addi    a3, a0, 8              #; a0  = 0x800033dc, (wrb) a3  <-- 0x800033e4
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a30 sw      zero, 36(a0)           #; a0  = 0x800033dc, 0 ~~> Word[0x80003400]
                                                #; (lsu) a2  <-- 17
      0x80001a34 sw      a2, 32(a0)             #; a0  = 0x800033dc, 17 ~~> Word[0x800033fc]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a38 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003a38
      0x80001a3c addi    a0, a0, -1912          #; a0  = 0x80003a38, (wrb) a0  <-- 0x800032c0
      0x80001a40 sw      a3, 0(a0)              #; a0  = 0x800032c0, 0x800033e4 ~~> Word[0x800032c0]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a44 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003a44
      0x80001a48 addi    a0, a0, -1860          #; a0  = 0x80003a44, (wrb) a0  <-- 0x80003300
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a4c lw      a2, 0(a0)              #; a0  = 0x80003300, a2  <~~ Word[0x80003300]
                                                #; (lsu) a2  <-- 0
      0x80001a50 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001a4c
      0x80001a4c lw      a2, 0(a0)              #; a0  = 0x80003300, a2  <~~ Word[0x80003300]
                                                #; (lsu) a2  <-- 0
      0x80001a50 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001a4c
      0x80001a4c lw      a2, 0(a0)              #; a0  = 0x80003300, a2  <~~ Word[0x80003300]
                                                #; (lsu) a2  <-- 0
      0x80001a50 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001a4c
      0x80001a4c lw      a2, 0(a0)              #; a0  = 0x80003300, a2  <~~ Word[0x80003300]
                                                #; (lsu) a2  <-- 0
      0x80001a50 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001a4c
      0x80001a4c lw      a2, 0(a0)              #; a0  = 0x80003300, a2  <~~ Word[0x80003300]
                                                #; (lsu) a2  <-- 1
      0x80001a50 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a54 sw      zero, 0(a0)            #; a0  = 0x80003300, 0 ~~> Word[0x80003300]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a58 sw      zero, 0(a1)            #; a1  = 0x800033dc, 0 ~~> Word[0x800033dc]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a5c ret                            #; ra  = 0x80000e6c, goto 0x80000e6c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000e6c addi    s0, s0, 1              #; s0  = 0x8000309f, (wrb) s0  <-- 0x800030a0
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000e70 addi    s10, s10, 1            #; s10 = 0x800030a1, (wrb) s10 <-- 0x800030a2
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e74 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e78 lbu     a0, 0(s0)              #; s0  = 0x800030a0, a0  <~~ Byte[0x800030a0]
                                                #; (lsu) a0  <-- 0
      0x80000e7c bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000e80 j       pc + 0xad8             #; goto 0x80001958
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x80001958 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x8000195c bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001964
      0x80001964 li      a0, 0                  #; (wrb) a0  <-- 0
      0x80001968 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x8000196c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001970 jalr    s2                     #; s2  = 0x800019b4, (wrb) ra  <-- 0x80001974, goto 0x800019b4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019b4 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001a5c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a5c ret                            #; ra  = 0x80001974, goto 0x80001974
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x80001974 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x80001978 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
                                                #; (lsu) s11 <-- 0
      0x8000197c lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
                                                #; (lsu) s10 <-- 0
      0x80001980 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
                                                #; (lsu) s9  <-- 0
      0x80001984 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
                                                #; (lsu) s8  <-- 0
      0x80001988 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
                                                #; (lsu) s7  <-- 0
      0x8000198c lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
                                                #; (lsu) s6  <-- 0
      0x80001990 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
                                                #; (lsu) s5  <-- 0
      0x80001994 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
                                                #; (lsu) s4  <-- 0
      0x80001998 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
                                                #; (lsu) s3  <-- 0
      0x8000199c lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
                                                #; (lsu) s2  <-- 0x00100000
      0x800019a0 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
                                                #; (lsu) s1  <-- 0x001000f0
      0x800019a4 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
                                                #; (lsu) s0  <-- 0x00100240
      0x800019a8 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
      0x800019ac addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
                                                #; (lsu) ra  <-- 0x80000db0
      0x800019b0 ret                            #; ra  = 0x80000db0, goto 0x80000db0
; printf_ (printf.c:869)
      0x80000db0 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
      0x80000db4 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x800008b8
      0x80000db8 ret                            #; ra  = 0x800008b8, goto 0x800008b8
; main (test_mat.c:0)
      0x800008b8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800038b8
      0x800008bc addi    a0, a0, -1424          #; a0  = 0x800038b8, (wrb) a0  <-- 0x80003328
      0x800008c0 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003328]
; main (test_mat.c:46)
      0x800008cc lw      s2, 16(sp)             #; sp  = 0x0011ff40, s2  <~~ Word[0x0011ff50]
                                                #; (f:lsu) ft0  <-- 0.0001
; main (test_mat.c:45)
      0x800008c4 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0000000
                                                #; (lsu) s2  <-- 0
; main (test_mat.c:46)
      0x800008d0 lw      s1, 20(sp)             #; sp  = 0x0011ff40, s1  <~~ Word[0x0011ff54], (acc) s1  <-- 0x01412483
      0x800008c8 fld     fs0, 8(sp)             #; fs0  <~~ Doub[0x0011ff48]
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) s1  <-- 0
      0x800008d4 lw      s0, 24(sp)             #; sp  = 0x0011ff40, s0  <~~ Word[0x0011ff58]
                                                #; (lsu) s0  <-- 0
      0x800008d8 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
      0x800008dc addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002e10
      0x800008e0 ret                            #; ra  = 0x80002e10, goto 0x80002e10
; ?? (start.S:184)
      0x80002e10 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x80002e14 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e14
      0x80002e18 jalr    ra, ra, 524            #; ra  = 0x80002e14, (wrb) ra  <-- 0x80002e1c, goto 0x80003020
; ?? (start_snitch.S:33)
      0x80003020 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80003024 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002e1c ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80003028 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003028
      0x8000302c jalr    ra, ra, -1260          #; ra  = 0x80003028, (wrb) ra  <-- 0x80003030, goto 0x80002b3c
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002b3c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002b40 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002b44 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002b48 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002b4c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002b50 ret                            #; ra  = 0x80003030, goto 0x80003030
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80003030 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80003034 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80003038 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x8000303c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002e1c
; ?? (start_snitch.S:40)
      0x80003040 ret                            #; ra  = 0x80002e1c, goto 0x80002e1c
; ?? (start.S:195)
      0x80002e1c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x80002e20 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e20
      0x80002e24 jalr    ra, ra, 556            #; ra  = 0x80002e20, (wrb) ra  <-- 0x80002e28, goto 0x8000304c
; ?? (start_snitch.S:15)
      0x8000304c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80003050 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80003054 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002e28 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80003058 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003058
      0x8000305c jalr    ra, ra, -1340          #; ra  = 0x80003058, (wrb) ra  <-- 0x80003060, goto 0x80002b1c
; snrt_global_core_idx (team.c:32)
      0x80002b1c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002b20 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002b24 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002b28 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002b2c lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x80002b30 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x80002b34 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x80002b38 ret                            #; ra  = 0x80003060, goto 0x80003060
; ?? (start_snitch.S:20)
      0x80003060 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x80003064 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80003068 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x8000306c bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x80002e28
; ?? (start_snitch.S:28)
      0x80003070 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x80003074 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x80003078 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003078
      0x8000307c addi    t1, t1, 584            #; t1  = 0x80003078, (wrb) t1  <-- 0x800032c0
; ?? (start_snitch.S:31)
      0x80003080 sw      t0, 0(t1)              #; t1  = 0x800032c0, 1 ~~> Word[0x800032c0]
; ?? (start_snitch.S:32)
      0x80003084 ret                            #; ra  = 0x80002e28, goto 0x80002e28
; ?? (start.S:198)
      0x80002e28 wfi                            #; 
                        tion 0 @ (12, 8866):
                          168
                          174
                            5
                           15
                      10.4702
                       0.3347
                       0.1891
                          1.0
                          1.0
                            0
                       2.0683
                       6.3333
                       0.0780
                       0.0744
                       0.9537
                         8855
                       0.4128
