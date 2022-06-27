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
      0x80002c78 addi    t0, t0, 2044           #; t0  = 0x80002c74, (wrb) t0  <-- 0x80003470
; ?? (start.S:49)
      0x80002c7c auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002c7c
      0x80002c80 addi    t1, t1, 2040           #; t1  = 0x80002c7c, (wrb) t1  <-- 0x80003474
; ?? (start.S:50)
      0x80002c84 bge     t0, t1, pc + 16        #; t0  = 0x80003470, t1  = 0x80003474, not taken
; ?? (start.S:51)
      0x80002c88 sw      zero, 0(t0)            #; t0  = 0x80003470, 0 ~~> Word[0x80003470]
; ?? (start.S:52)
      0x80002c8c addi    t0, t0, 4              #; t0  = 0x80003470, (wrb) t0  <-- 0x80003474
; ?? (start.S:53)
      0x80002c90 blt     t0, t1, pc - 8         #; t0  = 0x80003474, t1  = 0x80003474, not taken
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
      0x80002df8 jalr    ra, ra, -1064          #; ra  = 0x80002df4, (wrb) ra  <-- 0x80002dfc, goto 0x800029cc
; _snrt_init_team (start.c:49)
      0x800029cc sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x800029d0 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x800029d4 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x800029d8 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x800029dc lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x800029e0 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x800029e4 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x800029e8 mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x800029ec mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x800029f0 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x800029f4 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x800029f8 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x800029fc divu    a0, a0, t0             #; a0  = 0, t0  = 8
; _snrt_init_team (start.c:54)
      0x80002a00 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x80002a04 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x80002a08 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x80002a0c sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x80002a10 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x80002a14 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x80002a18 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x80002a1c sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x80002a20 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x80002a24 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x80002a28 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x80002a2c sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x80002a30 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x80002a34 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x80002a38 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x80002a3c sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x80002a40 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x80002a44 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x80002a48 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x80002a4c addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x80002a50 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x80002a54 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x80002a58 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x80002a5c add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x80002a60 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x80002a64 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x80002a68 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x80002a6c sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x80002a70 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x80002a74 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x80002a78 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x80002a7c sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x80002a80 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x80002a84 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x80002a88 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x80002a8c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002a90 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002a94 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x80002a98 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002a9c lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x80002aa0 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x80002aa4 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x80002aa8 remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x80002aac lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x80002ab0 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
      0x80002ab4 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x80002ab8 li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x80002abc mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x80002ac0 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003ac0
      0x80002ac4 addi    a1, a1, -1612          #; a1  = 0x80003ac0, (wrb) a1  <-- 0x80003474
      0x80002ac8 add     a0, a0, a1             #; a0  = 0, a1  = 0x80003474, (wrb) a0  <-- 0x80003474
      0x80002acc sw      zero, 0(a0)            #; a0  = 0x80003474, 0 ~~> Word[0x80003474]
; _snrt_init_team (start.c:86)
      0x80002ad0 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x80002ad4 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x80002ad8 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x80002adc sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x80002ae0 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x80002ae4 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x80002ae8 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x80002aec andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x80002af0 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x80002af4 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x80002af8 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x80002afc sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x80002b00 lw      a0, 0(a1)              #; a1  = 0x80003474, a0  <~~ Word[0x80003474]
                                                #; (lsu) a0  <-- 0
      0x80002b04 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x80002b08 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x80002b0c sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x80002b10 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x80002b14 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x80002b18 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002b1c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002b20 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x80002b24 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002b28 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002b2c sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x80002b30 ret                            #; ra  = 0x80002dfc, goto 0x80002dfc
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
      0x8000304c jalr    ra, ra, -1268          #; ra  = 0x80003048, (wrb) ra  <-- 0x80003050, goto 0x80002b54
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002b54 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002b58 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002b5c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002b60 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002b64 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002b68 ret                            #; ra  = 0x80003050, goto 0x80003050
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
; main (test_conflict.c:13)
      0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (test_conflict.c:14)
      0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002e30 ~~> Word[0x0011ff5c]
      0x8000063c sw      s0, 24(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff58]
      0x80000640 sw      s1, 20(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff54]
      0x80000644 sw      s2, 16(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff50]
      0x8000064c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000648 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
      0x80000650 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000654 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
; main (test_conflict.c:0)
      0x80000658 li      a0, 0                  #; (wrb) a0  <-- 0
                                                #; (lsu) a1  <-- 0
; main (test_conflict.c:14)
      0x8000065c bnez    a1, pc + 1772          #; a1  = 0, not taken
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (test_conflict.c:18)
      0x80000660 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000664 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000668 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000066c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in main (test_conflict.c:18)
      0x80000670 lw      s0, 88(a0)             #; a0  = 0x0011ff70, s0  <~~ Word[0x0011ffc8]
                                                #; (lsu) s0  <-- 0x00100000
      0x80000674 lw      a1, 80(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
                                                #; (lsu) a1  <-- 0x00100000
      0x80000678 lw      a2, 84(a0)             #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ffc4]
      0x8000067c addi    a3, s0, 80             #; s0  = 0x00100000, (wrb) a3  <-- 0x00100050
                                                #; (lsu) a2  <-- 0x0001df30
      0x80000680 add     a1, a2, a1             #; a2  = 0x0001df30, a1  = 0x00100000, (wrb) a1  <-- 0x0011df30
      0x80000684 bgeu    a1, a3, pc + 44        #; a1  = 0x0011df30, a3  = 0x00100050, taken, goto 0x800006b0
; snrt_l1alloc (alloc.c:33)
;  in main (test_conflict.c:18)
      0x800006b0 mv      s2, s0                 #; s0  = 0x00100000, (wrb) s2  <-- 0x00100000
; snrt_l1alloc (alloc.c:34)
;  in main (test_conflict.c:18)
      0x800006b4 sw      a3, 88(a0)             #; a0  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
; snrt_l1alloc (alloc.c:25)
;  in main (test_conflict.c:19)
      0x800006b8 addi    a2, s0, 160            #; s0  = 0x00100000, (wrb) a2  <-- 0x001000a0
      0x800006bc mv      s0, a3                 #; a3  = 0x00100050, (wrb) s0  <-- 0x00100050
      0x800006c0 bgeu    a1, a2, pc - 44        #; a1  = 0x0011df30, a2  = 0x001000a0, taken, goto 0x80000694
; snrt_l1alloc (alloc.c:33)
;  in main (test_conflict.c:19)
      0x80000694 mv      s1, s0                 #; s0  = 0x00100050, (wrb) s1  <-- 0x00100050
; snrt_l1alloc (alloc.c:34)
;  in main (test_conflict.c:19)
      0x80000698 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x001000a0 ~~> Word[0x0011ffc8]
; snrt_l1alloc (alloc.c:25)
;  in main (test_conflict.c:20)
      0x8000069c addi    a3, a2, 80             #; a2  = 0x001000a0, (wrb) a3  <-- 0x001000f0
      0x800006a0 mv      s0, a2                 #; a2  = 0x001000a0, (wrb) s0  <-- 0x001000a0
      0x800006a4 bltu    a1, a3, pc + 44        #; a1  = 0x0011df30, a3  = 0x001000f0, not taken
; snrt_l1alloc (alloc.c:34)
;  in main (test_conflict.c:20)
      0x800006a8 sw      a3, 88(a0)             #; a0  = 0x0011ff70, 0x001000f0 ~~> Word[0x0011ffc8]
      0x800006ac j       pc + 0x28              #; goto 0x800006d4
; init_data (test_conflict.c:8)
;  in main (test_conflict.c:22)
      0x800006d4 srli    a0, s2, 20             #; s2  = 0x00100000, (wrb) a0  <-- 1
      0x800006d8 snez    a0, a0                 #; a0  = 1, (wrb) a0  <-- 1
      0x800006dc lui     a1, 0x120              #; (wrb) a1  <-- 0x00120000
      0x800006e0 addi    a1, a1, -71            #; a1  = 0x00120000, (wrb) a1  <-- 0x0011ffb9
      0x800006e4 sltu    a1, s2, a1             #; s2  = 0x00100000, a1  = 0x0011ffb9, (wrb) a1  <-- 1
      0x800006e8 and     a2, a0, a1             #; a0  = 1, a1  = 1, (wrb) a2  <-- 1
; init_data (test_conflict.c:0)
;  in main (test_conflict.c:22)
      0x800006ec auipc   a3, 0x3                #; (wrb) a3  <-- 0x800036ec
      0x800006f0 addi    a3, a3, -908           #; a3  = 0x800036ec, (wrb) a3  <-- 0x80003360
      0x800006f4 auipc   t5, 0x3                #; (wrb) t5  <-- 0x800036f4
      0x800006f8 addi    t5, t5, -908           #; t5  = 0x800036f4, (wrb) t5  <-- 0x80003368
      0x800006fc auipc   t4, 0x3                #; (wrb) t4  <-- 0x800036fc
      0x80000700 addi    t4, t4, -908           #; t4  = 0x800036fc, (wrb) t4  <-- 0x80003370
      0x80000704 auipc   t3, 0x3                #; (wrb) t3  <-- 0x80003704
      0x80000708 addi    t3, t3, -908           #; t3  = 0x80003704, (wrb) t3  <-- 0x80003378
      0x8000070c auipc   t2, 0x3                #; (wrb) t2  <-- 0x8000370c
      0x80000710 addi    t2, t2, -908           #; t2  = 0x8000370c, (wrb) t2  <-- 0x80003380
      0x80000714 auipc   t1, 0x3                #; (wrb) t1  <-- 0x80003714
      0x80000718 addi    t1, t1, -908           #; t1  = 0x80003714, (wrb) t1  <-- 0x80003388
      0x8000071c auipc   t0, 0x3                #; (wrb) t0  <-- 0x8000371c
      0x80000720 addi    t0, t0, -908           #; t0  = 0x8000371c, (wrb) t0  <-- 0x80003390
      0x80000724 auipc   a7, 0x3                #; (wrb) a7  <-- 0x80003724
      0x80000728 addi    a7, a7, -908           #; a7  = 0x80003724, (wrb) a7  <-- 0x80003398
      0x8000072c auipc   a6, 0x3                #; (wrb) a6  <-- 0x8000372c
      0x80000730 addi    a6, a6, -908           #; a6  = 0x8000372c, (wrb) a6  <-- 0x800033a0
      0x80000734 beqz    a2, pc + 140           #; a2  = 1, not taken
      0x80000738 li      a0, 8                  #; (wrb) a0  <-- 8
      0x8000073c li      a2, 9                  #; (wrb) a2  <-- 9
; init_data (test_conflict.c:8)
;  in main (test_conflict.c:22)
      0x80000740 li      a4, 64                 #; (wrb) a4  <-- 64
      0x80000744 li      a5, 192                #; (wrb) a5  <-- 192
      0x80000748 scfgw   a2, a4                 #; a2  = 9, a4  = 64
      0x8000074c scfgw   a0, a5                 #; a0  = 8, a5  = 192
      0x80000750 li      a0, 32                 #; (wrb) a0  <-- 32
      0x80000754 scfgw   zero, a0               #; a0  = 32
      0x80000758 scfgwi  s2, 896                #; s2  = 0x00100000
; init_data (test_conflict.c:0)
;  in main (test_conflict.c:22)
      0x8000075c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000375c
      0x80000760 addi    a0, a0, -1028          #; a0  = 0x8000375c, (wrb) a0  <-- 0x80003358
      0x80000764 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003358]
      0x80000768 fld     ft4, 0(a3)             #; ft4  <~~ Doub[0x80003360]
; init_data (test_conflict.c:8)
;  in main (test_conflict.c:22)
      0x8000076c csrrsi  a0, ssr, 1             #; 
                                                #; (f:lsu) ft3  <-- 1.4142
                                                #; (f:lsu) ft4  <-- 2.8284
; init_data (test_conflict.c:9)
;  in main (test_conflict.c:22)
      0x80000770 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.4142, ft3  = 1.4142
      0x80000774 fsgnj.d ft0, ft4, ft4          #; ft4  = 2.8284, ft4  = 2.8284, (f:fpu) ft0  <-- 1.4142
      0x80000778 fld     ft3, 0(t5)             #; ft3  <~~ Doub[0x80003368], (f:fpu) ft0  <-- 2.8284
; init_data (test_conflict.c:0)
;  in main (test_conflict.c:22)
      0x8000077c fld     ft4, 0(t4)             #; ft4  <~~ Doub[0x80003370]
                                                #; (f:lsu) ft3  <-- 4.2426000
      0x80000780 fld     ft5, 0(t3)             #; ft5  <~~ Doub[0x80003378], (f:lsu) ft4  <-- 5.6568
      0x80000784 fld     ft6, 0(t2)             #; ft6  <~~ Doub[0x80003380]
; init_data (test_conflict.c:9)
;  in main (test_conflict.c:22)
      0x80000788 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.2426000, ft3  = 4.2426000
      0x8000078c fsgnj.d ft0, ft4, ft4          #; ft4  = 5.6568, ft4  = 5.6568, (f:fpu) ft0  <-- 4.2426000
                                                #; (f:fpu) ft0  <-- 5.6568
                                                #; (f:lsu) ft5  <-- 7.071
                                                #; (f:lsu) ft6  <-- 8.4852000
      0x80000790 fsgnj.d ft0, ft5, ft5          #; ft5  = 7.071, ft5  = 7.071
      0x80000794 fsgnj.d ft0, ft6, ft6          #; ft6  = 8.4852000, ft6  = 8.4852000, (f:fpu) ft0  <-- 7.071
      0x80000798 fld     ft3, 0(t1)             #; ft3  <~~ Doub[0x80003388], (f:fpu) ft0  <-- 8.4852000
; init_data (test_conflict.c:0)
;  in main (test_conflict.c:22)
      0x8000079c fld     ft4, 0(t0)             #; ft4  <~~ Doub[0x80003390]
                                                #; (f:lsu) ft3  <-- 9.8994
      0x800007a0 fld     ft5, 0(a7)             #; ft5  <~~ Doub[0x80003398], (f:lsu) ft4  <-- 11.3136
      0x800007a4 fld     ft6, 0(a6)             #; ft6  <~~ Doub[0x800033a0]
; init_data (test_conflict.c:9)
;  in main (test_conflict.c:22)
      0x800007a8 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.8994, ft3  = 9.8994
      0x800007ac fsgnj.d ft0, ft4, ft4          #; ft4  = 11.3136, ft4  = 11.3136, (f:fpu) ft0  <-- 9.8994
                                                #; (f:fpu) ft0  <-- 11.3136
                                                #; (f:lsu) ft5  <-- 12.7278000
                                                #; (f:lsu) ft6  <-- 14.142
      0x800007b0 fsgnj.d ft0, ft5, ft5          #; ft5  = 12.7278000, ft5  = 12.7278000
; init_data (test_conflict.c:0)
;  in main (test_conflict.c:22)
      0x800007bc j       pc + 0xcc              #; goto 0x80000888
      0x800007b4 fsgnj.d ft0, ft6, ft6          #; ft6  = 14.142, ft6  = 14.142, (f:fpu) ft0  <-- 12.7278000
      0x800007b8 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 14.142
; init_data (test_conflict.c:8)
;  in main (test_conflict.c:23)
      0x80000888 srli    a0, s1, 20             #; s1  = 0x00100050, (wrb) a0  <-- 1
      0x8000088c snez    a0, a0                 #; a0  = 1, (wrb) a0  <-- 1
      0x80000890 lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
      0x80000894 addi    a2, a2, -71            #; a2  = 0x00120000, (wrb) a2  <-- 0x0011ffb9
      0x80000898 sltu    a2, s1, a2             #; s1  = 0x00100050, a2  = 0x0011ffb9, (wrb) a2  <-- 1
      0x8000089c and     a0, a0, a2             #; a0  = 1, a2  = 1, (wrb) a0  <-- 1
; init_data (test_conflict.c:0)
;  in main (test_conflict.c:23)
      0x800008a0 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800038a0
      0x800008a4 addi    a2, a2, -1272          #; a2  = 0x800038a0, (wrb) a2  <-- 0x800033a8
      0x800008a8 beqz    a0, pc + 132           #; a0  = 1, not taken
      0x800008ac li      a0, 8                  #; (wrb) a0  <-- 8
      0x800008b0 li      a4, 9                  #; (wrb) a4  <-- 9
; init_data (test_conflict.c:8)
;  in main (test_conflict.c:23)
      0x800008b4 li      a5, 64                 #; (wrb) a5  <-- 64
      0x800008b8 li      a1, 192                #; (wrb) a1  <-- 192
      0x800008bc scfgw   a4, a5                 #; a4  = 9, a5  = 64
      0x800008c0 scfgw   a0, a1                 #; a0  = 8, a1  = 192
      0x800008c4 li      a0, 32                 #; (wrb) a0  <-- 32
      0x800008c8 scfgw   zero, a0               #; a0  = 32
      0x800008cc scfgwi  s1, 896                #; s1  = 0x00100050
      0x800008d0 fld     ft3, 0(a3)             #; ft3  <~~ Doub[0x80003360]
      0x800008d4 fld     ft4, 0(t5)             #; ft4  <~~ Doub[0x80003368]
      0x800008d8 csrrsi  a0, ssr, 1             #; 
                                                #; (f:lsu) ft3  <-- 2.8284
; init_data (test_conflict.c:9)
;  in main (test_conflict.c:23)
      0x800008dc fsgnj.d ft0, ft3, ft3          #; ft3  = 2.8284, ft3  = 2.8284, (f:lsu) ft4  <-- 4.2426000
                                                #; (f:fpu) ft0  <-- 2.8284
      0x800008e0 fsgnj.d ft0, ft4, ft4          #; ft4  = 4.2426000, ft4  = 4.2426000
      0x800008e4 fld     ft3, 0(t4)             #; ft3  <~~ Doub[0x80003370], (f:fpu) ft0  <-- 4.2426000
; init_data (test_conflict.c:0)
;  in main (test_conflict.c:23)
      0x800008e8 fld     ft4, 0(t3)             #; ft4  <~~ Doub[0x80003378]
                                                #; (f:lsu) ft3  <-- 5.6568
      0x800008ec fld     ft5, 0(t2)             #; ft5  <~~ Doub[0x80003380], (f:lsu) ft4  <-- 7.071
      0x800008f0 fld     ft6, 0(t1)             #; ft6  <~~ Doub[0x80003388]
; init_data (test_conflict.c:9)
;  in main (test_conflict.c:23)
      0x800008f4 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.6568, ft3  = 5.6568
      0x800008f8 fsgnj.d ft0, ft4, ft4          #; ft4  = 7.071, ft4  = 7.071, (f:fpu) ft0  <-- 5.6568
                                                #; (f:fpu) ft0  <-- 7.071
                                                #; (f:lsu) ft5  <-- 8.4852000
      0x800008fc fsgnj.d ft0, ft5, ft5          #; ft5  = 8.4852000, ft5  = 8.4852000, (f:lsu) ft6  <-- 9.8994
                                                #; (f:fpu) ft0  <-- 8.4852000
      0x80000900 fsgnj.d ft0, ft6, ft6          #; ft6  = 9.8994, ft6  = 9.8994
      0x80000904 fld     ft3, 0(t0)             #; ft3  <~~ Doub[0x80003390], (f:fpu) ft0  <-- 9.8994
; init_data (test_conflict.c:0)
;  in main (test_conflict.c:23)
      0x80000908 fld     ft4, 0(a7)             #; ft4  <~~ Doub[0x80003398]
                                                #; (f:lsu) ft3  <-- 11.3136
      0x8000090c fld     ft5, 0(a6)             #; ft5  <~~ Doub[0x800033a0], (f:lsu) ft4  <-- 12.7278000
      0x80000910 fld     ft6, 0(a2)             #; ft6  <~~ Doub[0x800033a8]
; init_data (test_conflict.c:9)
;  in main (test_conflict.c:23)
      0x80000914 fsgnj.d ft0, ft3, ft3          #; ft3  = 11.3136, ft3  = 11.3136
      0x80000918 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.7278000, ft4  = 12.7278000, (f:fpu) ft0  <-- 11.3136
                                                #; (f:fpu) ft0  <-- 12.7278000
                                                #; (f:lsu) ft5  <-- 14.142
      0x8000091c fsgnj.d ft0, ft5, ft5          #; ft5  = 14.142, ft5  = 14.142, (f:lsu) ft6  <-- 15.5562000
                                                #; (f:fpu) ft0  <-- 14.142
; init_data (test_conflict.c:0)
;  in main (test_conflict.c:23)
      0x80000928 j       pc + 0xd4              #; goto 0x800009fc
      0x80000920 fsgnj.d ft0, ft6, ft6          #; ft6  = 15.5562000, ft6  = 15.5562000
      0x80000924 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 15.5562000
; init_data (test_conflict.c:8)
;  in main (test_conflict.c:24)
      0x800009fc srli    a0, s0, 20             #; s0  = 0x001000a0, (wrb) a0  <-- 1
      0x80000a00 snez    a0, a0                 #; a0  = 1, (wrb) a0  <-- 1
      0x80000a04 lui     a1, 0x120              #; (wrb) a1  <-- 0x00120000
      0x80000a08 addi    a1, a1, -71            #; a1  = 0x00120000, (wrb) a1  <-- 0x0011ffb9
      0x80000a0c sltu    a1, s0, a1             #; s0  = 0x001000a0, a1  = 0x0011ffb9, (wrb) a1  <-- 1
      0x80000a10 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80000a14 beqz    a0, pc + 140           #; a0  = 1, not taken
; init_data (test_conflict.c:0)
;  in main (test_conflict.c:24)
      0x80000a18 li      a0, 8                  #; (wrb) a0  <-- 8
      0x80000a1c li      a1, 9                  #; (wrb) a1  <-- 9
; init_data (test_conflict.c:8)
;  in main (test_conflict.c:24)
      0x80000a20 li      a3, 64                 #; (wrb) a3  <-- 64
      0x80000a24 li      a4, 192                #; (wrb) a4  <-- 192
      0x80000a28 scfgw   a1, a3                 #; a1  = 9, a3  = 64
      0x80000a2c scfgw   a0, a4                 #; a0  = 8, a4  = 192
      0x80000a30 li      a0, 32                 #; (wrb) a0  <-- 32
      0x80000a34 scfgw   zero, a0               #; a0  = 32
      0x80000a38 scfgwi  s0, 896                #; s0  = 0x001000a0
      0x80000a3c fld     ft3, 0(t5)             #; ft3  <~~ Doub[0x80003368]
      0x80000a40 fld     ft4, 0(t4)             #; ft4  <~~ Doub[0x80003370], (f:lsu) ft3  <-- 4.2426000
      0x80000a44 csrrsi  a0, ssr, 1             #; 
; init_data (test_conflict.c:9)
;  in main (test_conflict.c:24)
      0x80000a48 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.2426000, ft3  = 4.2426000
                                                #; (f:fpu) ft0  <-- 4.2426000
                                                #; (f:lsu) ft4  <-- 5.6568
      0x80000a4c fsgnj.d ft0, ft4, ft4          #; ft4  = 5.6568, ft4  = 5.6568
                                                #; (f:fpu) ft0  <-- 5.6568
      0x80000a50 fld     ft3, 0(t3)             #; ft3  <~~ Doub[0x80003378]
; init_data (test_conflict.c:0)
;  in main (test_conflict.c:24)
      0x80000a54 fld     ft4, 0(t2)             #; ft4  <~~ Doub[0x80003380]
                                                #; (f:lsu) ft3  <-- 7.071
      0x80000a58 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x80003388], (f:lsu) ft4  <-- 8.4852000
      0x80000a5c fld     ft6, 0(t0)             #; ft6  <~~ Doub[0x80003390]
; init_data (test_conflict.c:9)
;  in main (test_conflict.c:24)
      0x80000a60 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.071, ft3  = 7.071
      0x80000a64 fsgnj.d ft0, ft4, ft4          #; ft4  = 8.4852000, ft4  = 8.4852000, (f:fpu) ft0  <-- 7.071
                                                #; (f:fpu) ft0  <-- 8.4852000
                                                #; (f:lsu) ft5  <-- 9.8994
      0x80000a68 fsgnj.d ft0, ft5, ft5          #; ft5  = 9.8994, ft5  = 9.8994, (f:lsu) ft6  <-- 11.3136
      0x80000a6c fsgnj.d ft0, ft6, ft6          #; ft6  = 11.3136, ft6  = 11.3136, (f:fpu) ft0  <-- 9.8994
                                                #; (f:fpu) ft0  <-- 11.3136
      0x80000a70 fld     ft3, 0(a7)             #; ft3  <~~ Doub[0x80003398]
; init_data (test_conflict.c:0)
;  in main (test_conflict.c:24)
      0x80000a7c auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003a7c
      0x80000a74 fld     ft4, 0(a6)             #; ft4  <~~ Doub[0x800033a0]
                                                #; (f:lsu) ft3  <-- 12.7278000
      0x80000a80 addi    a0, a0, -1740          #; a0  = 0x80003a7c, (wrb) a0  <-- 0x800033b0
      0x80000a78 fld     ft5, 0(a2)             #; ft5  <~~ Doub[0x800033a8], (f:lsu) ft4  <-- 14.142
      0x80000a84 fld     ft6, 0(a0)             #; ft6  <~~ Doub[0x800033b0]
; init_data (test_conflict.c:9)
;  in main (test_conflict.c:24)
      0x80000a88 fsgnj.d ft0, ft3, ft3          #; ft3  = 12.7278000, ft3  = 12.7278000
      0x80000a8c fsgnj.d ft0, ft4, ft4          #; ft4  = 14.142, ft4  = 14.142, (f:fpu) ft0  <-- 12.7278000
                                                #; (f:fpu) ft0  <-- 14.142
                                                #; (f:lsu) ft5  <-- 15.5562000
                                                #; (f:lsu) ft6  <-- 16.9704000
      0x80000a90 fsgnj.d ft0, ft5, ft5          #; ft5  = 15.5562000, ft5  = 15.5562000
; init_data (test_conflict.c:0)
;  in main (test_conflict.c:24)
      0x80000a9c j       pc + 0xd4              #; goto 0x80000b70
      0x80000a94 fsgnj.d ft0, ft6, ft6          #; ft6  = 16.9704000, ft6  = 16.9704000, (f:fpu) ft0  <-- 15.5562000
      0x80000a98 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 16.9704000
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x80000b70 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
      0x80000b74 li      a1, 0                  #; (wrb) a1  <-- 0
      0x80000b78 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000b78
      0x80000b7c jalr    ra, ra, 492            #; ra  = 0x80000b78, (wrb) ra  <-- 0x80000b80, goto 0x80000d64
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000d64 slli    a1, a1, 3              #; a1  = 0, (wrb) a1  <-- 0
      0x80000d68 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 0, (wrb) a0  <-- 0x001000a0
      0x80000d6c sw      zero, 4(a0)            #; a0  = 0x001000a0, 0 ~~> Word[0x001000a4]
      0x80000d70 sw      zero, 0(a0)            #; a0  = 0x001000a0, 0 ~~> Word[0x001000a0]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000d74 ret                            #; ra  = 0x80000b80, goto 0x80000b80
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000b80 fld     ft3, 0(s2)             #; ft3  <~~ Doub[0x00100000]
      0x80000b84 fld     ft4, 0(s1)             #; ft4  <~~ Doub[0x00100050], (f:lsu) ft3  <-- 1.4142
      0x80000b88 fld     ft5, 0(s0)             #; ft5  <~~ Doub[0x001000a0], (f:lsu) ft4  <-- 2.8284
      0x80000b8c fadd.d  ft3, ft3, ft4          #; ft3  = 1.4142, ft4  = 2.8284, (f:lsu) ft5  <-- 0.0
                                                #; (f:fpu) ft3  <-- 4.2426000
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x80000b94 li      a1, 1                  #; (wrb) a1  <-- 1
      0x80000b98 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
      0x80000b90 fadd.d  fs0, ft3, ft5          #; ft3  = 4.2426000, ft5  = 0.0
      0x80000b9c auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000b9c
                                                #; (f:fpu) fs0  <-- 4.2426000
      0x80000ba0 jalr    ra, ra, 456            #; ra  = 0x80000b9c, (wrb) ra  <-- 0x80000ba4, goto 0x80000d64
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000d64 slli    a1, a1, 3              #; a1  = 1, (wrb) a1  <-- 8
      0x80000d68 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 8, (wrb) a0  <-- 0x001000a8
      0x80000d6c sw      zero, 4(a0)            #; a0  = 0x001000a8, 0 ~~> Word[0x001000ac]
      0x80000d70 sw      zero, 0(a0)            #; a0  = 0x001000a8, 0 ~~> Word[0x001000a8]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000d74 ret                            #; ra  = 0x80000ba4, goto 0x80000ba4
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000ba4 fld     ft3, 8(s2)             #; ft3  <~~ Doub[0x00100008]
      0x80000ba8 fld     ft4, 8(s1)             #; ft4  <~~ Doub[0x00100058], (f:lsu) ft3  <-- 2.8284
      0x80000bac fld     ft5, 8(s0)             #; ft5  <~~ Doub[0x001000a8], (f:lsu) ft4  <-- 4.2426000
                                                #; (f:lsu) ft5  <-- 0.0
      0x80000bb0 fadd.d  ft3, ft3, fs0          #; ft3  = 2.8284, fs0  = 4.2426000
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x80000bbc li      a1, 2                  #; (wrb) a1  <-- 2
                                                #; (f:fpu) ft3  <-- 7.071
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000bb4 fadd.d  ft3, ft3, ft4          #; ft3  = 7.071, ft4  = 4.2426000
                                                #; (f:fpu) ft3  <-- 11.3136
      0x80000bb8 fadd.d  fs0, ft3, ft5          #; ft3  = 11.3136, ft5  = 0.0
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x80000bc0 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
      0x80000bc4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000bc4
                                                #; (f:fpu) fs0  <-- 11.3136
      0x80000bc8 jalr    ra, ra, 416            #; ra  = 0x80000bc4, (wrb) ra  <-- 0x80000bcc, goto 0x80000d64
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000d64 slli    a1, a1, 3              #; a1  = 2, (wrb) a1  <-- 16
      0x80000d68 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 16, (wrb) a0  <-- 0x001000b0
      0x80000d6c sw      zero, 4(a0)            #; a0  = 0x001000b0, 0 ~~> Word[0x001000b4]
      0x80000d70 sw      zero, 0(a0)            #; a0  = 0x001000b0, 0 ~~> Word[0x001000b0]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000d74 ret                            #; ra  = 0x80000bcc, goto 0x80000bcc
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000bcc fld     ft3, 16(s2)            #; ft3  <~~ Doub[0x00100010]
                                                #; (f:lsu) ft3  <-- 4.2426000
      0x80000bd0 fld     ft4, 16(s1)            #; ft4  <~~ Doub[0x00100060]
      0x80000bd4 fld     ft5, 16(s0)            #; ft5  <~~ Doub[0x001000b0], (f:lsu) ft4  <-- 5.6568
      0x80000bd8 fadd.d  ft3, ft3, fs0          #; ft3  = 4.2426000, fs0  = 11.3136, (f:lsu) ft5  <-- 0.0
                                                #; (f:fpu) ft3  <-- 15.5562000
      0x80000bdc fadd.d  ft3, ft3, ft4          #; ft3  = 15.5562000, ft4  = 5.6568
                                                #; (f:fpu) ft3  <-- 21.2130000
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x80000be4 li      a1, 3                  #; (wrb) a1  <-- 3
      0x80000be8 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
      0x80000be0 fadd.d  fs0, ft3, ft5          #; ft3  = 21.2130000, ft5  = 0.0
      0x80000bec auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000bec
                                                #; (f:fpu) fs0  <-- 21.2130000
      0x80000bf0 jalr    ra, ra, 376            #; ra  = 0x80000bec, (wrb) ra  <-- 0x80000bf4, goto 0x80000d64
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000d64 slli    a1, a1, 3              #; a1  = 3, (wrb) a1  <-- 24
      0x80000d68 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 24, (wrb) a0  <-- 0x001000b8
      0x80000d6c sw      zero, 4(a0)            #; a0  = 0x001000b8, 0 ~~> Word[0x001000bc]
      0x80000d70 sw      zero, 0(a0)            #; a0  = 0x001000b8, 0 ~~> Word[0x001000b8]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000d74 ret                            #; ra  = 0x80000bf4, goto 0x80000bf4
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000bf4 fld     ft3, 24(s2)            #; ft3  <~~ Doub[0x00100018]
      0x80000bf8 fld     ft4, 24(s1)            #; ft4  <~~ Doub[0x00100068], (f:lsu) ft3  <-- 5.6568
      0x80000bfc fld     ft5, 24(s0)            #; ft5  <~~ Doub[0x001000b8], (f:lsu) ft4  <-- 7.071
      0x80000c00 fadd.d  ft3, ft3, fs0          #; ft3  = 5.6568, fs0  = 21.2130000, (f:lsu) ft5  <-- 0.0
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x80000c0c li      a1, 4                  #; (wrb) a1  <-- 4
                                                #; (f:fpu) ft3  <-- 26.8698000
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000c04 fadd.d  ft3, ft3, ft4          #; ft3  = 26.8698000, ft4  = 7.071
                                                #; (f:fpu) ft3  <-- 33.9408000
      0x80000c08 fadd.d  fs0, ft3, ft5          #; ft3  = 33.9408000, ft5  = 0.0
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x80000c10 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
      0x80000c14 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000c14
                                                #; (f:fpu) fs0  <-- 33.9408000
      0x80000c18 jalr    ra, ra, 336            #; ra  = 0x80000c14, (wrb) ra  <-- 0x80000c1c, goto 0x80000d64
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000d64 slli    a1, a1, 3              #; a1  = 4, (wrb) a1  <-- 32
      0x80000d68 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 32, (wrb) a0  <-- 0x001000c0
      0x80000d6c sw      zero, 4(a0)            #; a0  = 0x001000c0, 0 ~~> Word[0x001000c4]
      0x80000d70 sw      zero, 0(a0)            #; a0  = 0x001000c0, 0 ~~> Word[0x001000c0]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000d74 ret                            #; ra  = 0x80000c1c, goto 0x80000c1c
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000c1c fld     ft3, 32(s2)            #; ft3  <~~ Doub[0x00100020]
                                                #; (f:lsu) ft3  <-- 7.071
      0x80000c20 fld     ft4, 32(s1)            #; ft4  <~~ Doub[0x00100070]
      0x80000c24 fld     ft5, 32(s0)            #; ft5  <~~ Doub[0x001000c0], (f:lsu) ft4  <-- 8.4852000
      0x80000c28 fadd.d  ft3, ft3, fs0          #; ft3  = 7.071, fs0  = 33.9408000, (f:lsu) ft5  <-- 0.0
                                                #; (f:fpu) ft3  <-- 41.0118000
      0x80000c2c fadd.d  ft3, ft3, ft4          #; ft3  = 41.0118000, ft4  = 8.4852000
                                                #; (f:fpu) ft3  <-- 49.4970000
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x80000c34 li      a1, 5                  #; (wrb) a1  <-- 5
      0x80000c38 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
      0x80000c30 fadd.d  fs0, ft3, ft5          #; ft3  = 49.4970000, ft5  = 0.0
      0x80000c3c auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000c3c
                                                #; (f:fpu) fs0  <-- 49.4970000
      0x80000c40 jalr    ra, ra, 296            #; ra  = 0x80000c3c, (wrb) ra  <-- 0x80000c44, goto 0x80000d64
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000d64 slli    a1, a1, 3              #; a1  = 5, (wrb) a1  <-- 40
      0x80000d68 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 40, (wrb) a0  <-- 0x001000c8
      0x80000d6c sw      zero, 4(a0)            #; a0  = 0x001000c8, 0 ~~> Word[0x001000cc]
      0x80000d70 sw      zero, 0(a0)            #; a0  = 0x001000c8, 0 ~~> Word[0x001000c8]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000d74 ret                            #; ra  = 0x80000c44, goto 0x80000c44
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000c44 fld     ft3, 40(s2)            #; ft3  <~~ Doub[0x00100028]
      0x80000c48 fld     ft4, 40(s1)            #; ft4  <~~ Doub[0x00100078], (f:lsu) ft3  <-- 8.4852000
      0x80000c4c fld     ft5, 40(s0)            #; ft5  <~~ Doub[0x001000c8], (f:lsu) ft4  <-- 9.8994
                                                #; (f:lsu) ft5  <-- 0.0
      0x80000c50 fadd.d  ft3, ft3, fs0          #; ft3  = 8.4852000, fs0  = 49.4970000
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x80000c5c li      a1, 6                  #; (wrb) a1  <-- 6
                                                #; (f:fpu) ft3  <-- 57.9822000
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000c54 fadd.d  ft3, ft3, ft4          #; ft3  = 57.9822000, ft4  = 9.8994
                                                #; (f:fpu) ft3  <-- 67.8816000
      0x80000c58 fadd.d  fs0, ft3, ft5          #; ft3  = 67.8816000, ft5  = 0.0
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x80000c60 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
      0x80000c64 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000c64
                                                #; (f:fpu) fs0  <-- 67.8816000
      0x80000c68 jalr    ra, ra, 256            #; ra  = 0x80000c64, (wrb) ra  <-- 0x80000c6c, goto 0x80000d64
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000d64 slli    a1, a1, 3              #; a1  = 6, (wrb) a1  <-- 48
      0x80000d68 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 48, (wrb) a0  <-- 0x001000d0
      0x80000d6c sw      zero, 4(a0)            #; a0  = 0x001000d0, 0 ~~> Word[0x001000d4]
      0x80000d70 sw      zero, 0(a0)            #; a0  = 0x001000d0, 0 ~~> Word[0x001000d0]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000d74 ret                            #; ra  = 0x80000c6c, goto 0x80000c6c
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000c6c fld     ft3, 48(s2)            #; ft3  <~~ Doub[0x00100030]
      0x80000c70 fld     ft4, 48(s1)            #; ft4  <~~ Doub[0x00100080], (f:lsu) ft3  <-- 9.8994
      0x80000c74 fld     ft5, 48(s0)            #; ft5  <~~ Doub[0x001000d0], (f:lsu) ft4  <-- 11.3136
      0x80000c78 fadd.d  ft3, ft3, fs0          #; ft3  = 9.8994, fs0  = 67.8816000, (f:lsu) ft5  <-- 0.0
                                                #; (f:fpu) ft3  <-- 77.7810000
      0x80000c7c fadd.d  ft3, ft3, ft4          #; ft3  = 77.7810000, ft4  = 11.3136
                                                #; (f:fpu) ft3  <-- 89.0946000
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x80000c84 li      a1, 7                  #; (wrb) a1  <-- 7
      0x80000c88 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
      0x80000c80 fadd.d  fs0, ft3, ft5          #; ft3  = 89.0946000, ft5  = 0.0
      0x80000c8c auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000c8c
                                                #; (f:fpu) fs0  <-- 89.0946000
      0x80000c90 jalr    ra, ra, 216            #; ra  = 0x80000c8c, (wrb) ra  <-- 0x80000c94, goto 0x80000d64
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000d64 slli    a1, a1, 3              #; a1  = 7, (wrb) a1  <-- 56
      0x80000d68 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 56, (wrb) a0  <-- 0x001000d8
      0x80000d6c sw      zero, 4(a0)            #; a0  = 0x001000d8, 0 ~~> Word[0x001000dc]
      0x80000d70 sw      zero, 0(a0)            #; a0  = 0x001000d8, 0 ~~> Word[0x001000d8]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000d74 ret                            #; ra  = 0x80000c94, goto 0x80000c94
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000c94 fld     ft3, 56(s2)            #; ft3  <~~ Doub[0x00100038]
      0x80000c98 fld     ft4, 56(s1)            #; ft4  <~~ Doub[0x00100088], (f:lsu) ft3  <-- 11.3136
      0x80000c9c fld     ft5, 56(s0)            #; ft5  <~~ Doub[0x001000d8], (f:lsu) ft4  <-- 12.7278000
                                                #; (f:lsu) ft5  <-- 0.0
      0x80000ca0 fadd.d  ft3, ft3, fs0          #; ft3  = 11.3136, fs0  = 89.0946000
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x80000cac li      a1, 8                  #; (wrb) a1  <-- 8
                                                #; (f:fpu) ft3  <-- 100.4082000
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000ca4 fadd.d  ft3, ft3, ft4          #; ft3  = 100.4082000, ft4  = 12.7278000
                                                #; (f:fpu) ft3  <-- 113.1360000
      0x80000ca8 fadd.d  fs0, ft3, ft5          #; ft3  = 113.1360000, ft5  = 0.0
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x80000cb0 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
      0x80000cb4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000cb4
                                                #; (f:fpu) fs0  <-- 113.1360000
      0x80000cb8 jalr    ra, ra, 176            #; ra  = 0x80000cb4, (wrb) ra  <-- 0x80000cbc, goto 0x80000d64
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000d64 slli    a1, a1, 3              #; a1  = 8, (wrb) a1  <-- 64
      0x80000d68 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 64, (wrb) a0  <-- 0x001000e0
      0x80000d6c sw      zero, 4(a0)            #; a0  = 0x001000e0, 0 ~~> Word[0x001000e4]
      0x80000d70 sw      zero, 0(a0)            #; a0  = 0x001000e0, 0 ~~> Word[0x001000e0]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000d74 ret                            #; ra  = 0x80000cbc, goto 0x80000cbc
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000cbc fld     ft3, 64(s2)            #; ft3  <~~ Doub[0x00100040]
                                                #; (f:lsu) ft3  <-- 12.7278000
      0x80000cc0 fld     ft4, 64(s1)            #; ft4  <~~ Doub[0x00100090]
      0x80000cc4 fld     ft5, 64(s0)            #; ft5  <~~ Doub[0x001000e0], (f:lsu) ft4  <-- 14.142
      0x80000cc8 fadd.d  ft3, ft3, fs0          #; ft3  = 12.7278000, fs0  = 113.1360000, (f:lsu) ft5  <-- 0.0
                                                #; (f:fpu) ft3  <-- 125.8638000
      0x80000ccc fadd.d  ft3, ft3, ft4          #; ft3  = 125.8638000, ft4  = 14.142
                                                #; (f:fpu) ft3  <-- 140.0058
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x80000cd4 li      a1, 9                  #; (wrb) a1  <-- 9
      0x80000cd8 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
      0x80000cd0 fadd.d  fs0, ft3, ft5          #; ft3  = 140.0058, ft5  = 0.0
      0x80000cdc auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000cdc
                                                #; (f:fpu) fs0  <-- 140.0058
      0x80000ce0 jalr    ra, ra, 136            #; ra  = 0x80000cdc, (wrb) ra  <-- 0x80000ce4, goto 0x80000d64
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000d64 slli    a1, a1, 3              #; a1  = 9, (wrb) a1  <-- 72
      0x80000d68 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 72, (wrb) a0  <-- 0x001000e8
      0x80000d6c sw      zero, 4(a0)            #; a0  = 0x001000e8, 0 ~~> Word[0x001000ec]
      0x80000d70 sw      zero, 0(a0)            #; a0  = 0x001000e8, 0 ~~> Word[0x001000e8]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000d74 ret                            #; ra  = 0x80000ce4, goto 0x80000ce4
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000ce4 fld     ft3, 72(s2)            #; ft3  <~~ Doub[0x00100048]
; conflict (conflict.c:0)
;  in main (test_conflict.c:26)
      0x80000cf0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002cf0
      0x80000ce8 fld     ft4, 72(s1)            #; ft4  <~~ Doub[0x00100098], (f:lsu) ft3  <-- 14.142
      0x80000cf4 addi    a0, a0, 1736           #; a0  = 0x80002cf0, (wrb) a0  <-- 0x800033b8
      0x80000cec fld     ft5, 72(s0)            #; ft5  <~~ Doub[0x001000e8], (f:lsu) ft4  <-- 15.5562000
                                                #; (f:lsu) ft5  <-- 0.0
      0x80000cf8 fld     ft6, 0(a0)             #; ft6  <~~ Doub[0x800033b8]
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000cfc fadd.d  ft3, ft3, fs0          #; ft3  = 14.142, fs0  = 140.0058
                                                #; (f:fpu) ft3  <-- 154.1478
                                                #; (f:lsu) ft6  <-- -169.704
      0x80000d00 fadd.d  ft3, ft3, ft4          #; ft3  = 154.1478, ft4  = 15.5562000
                                                #; (f:fpu) ft3  <-- 169.7040000
      0x80000d04 fadd.d  ft3, ft3, ft5          #; ft3  = 169.7040000, ft5  = 0.0
                                                #; (f:fpu) ft3  <-- 169.7040000
; main (test_conflict.c:29)
      0x80000d08 fadd.d  ft4, ft3, ft6          #; ft3  = 169.7040000, ft6  = -169.704
; main (test_conflict.c:32)
      0x80000d14 lw      a2, 0(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff40]
                                                #; (f:fpu) ft4  <-- -0.0000000
; main (test_conflict.c:30)
      0x80000d0c fsgnjx.d fs0, ft4, ft4         #; ft4  = -0.0000000, ft4  = -0.0000000
; main (test_conflict.c:32)
      0x80000d10 fsd     ft3, 0(sp)             #; 169.7040000 ~~> Doub[0x0011ff40], (f:fpu) fs0  <-- 0.0000000
                                                #; (lsu) a2  <-- 0
      0x80000d18 lw      a3, 4(sp)              #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff44]
                                                #; (lsu) a3  <-- 0x40653687
      0x80000d1c fsd     fs0, 0(sp)             #; 0.0000000 ~~> Doub[0x0011ff40]
      0x80000d20 lw      a4, 0(sp)              #; sp  = 0x0011ff40, a4  <~~ Word[0x0011ff40]
                                                #; (lsu) a4  <-- 0
      0x80000d24 lw      a5, 4(sp)              #; sp  = 0x0011ff40, a5  <~~ Word[0x0011ff44]
      0x80000d28 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002d28
      0x80000d2c addi    a0, a0, 909            #; a0  = 0x80002d28, (wrb) a0  <-- 0x800030b5
                                                #; (lsu) a5  <-- 0x3d200000
      0x80000d30 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000d30
      0x80000d34 jalr    ra, ra, 72             #; ra  = 0x80000d30, (wrb) ra  <-- 0x80000d38, goto 0x80000d78
; printf_ (printf.c:863)
      0x80000d78 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x80000d7c sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000d38 ~~> Word[0x0011ff1c]
      0x80000d80 mv      t0, a0                 #; a0  = 0x800030b5, (wrb) t0  <-- 0x800030b5
      0x80000d84 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0x80003398 ~~> Word[0x0011ff3c]
      0x80000d88 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 0x800033a0 ~~> Word[0x0011ff38]
      0x80000d8c sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0x3d200000 ~~> Word[0x0011ff34]
      0x80000d90 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff30]
      0x80000d94 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0x40653687 ~~> Word[0x0011ff2c]
      0x80000d98 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
      0x80000d9c sw      a1, 20(sp)             #; sp  = 0x0011ff10, 72 ~~> Word[0x0011ff24]
      0x80000da0 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
; printf_ (printf.c:865)
      0x80000da4 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
; printf_ (printf.c:867)
      0x80000da8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001da8
      0x80000dac addi    a0, a0, -988           #; a0  = 0x80001da8, (wrb) a0  <-- 0x800019cc
      0x80000db0 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
      0x80000db4 li      a2, -1                 #; (wrb) a2  <-- -1
      0x80000db8 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
      0x80000dbc mv      a3, t0                 #; t0  = 0x800030b5, (wrb) a3  <-- 0x800030b5
      0x80000dc0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000dc0
      0x80000dc4 jalr    ra, ra, 20             #; ra  = 0x80000dc0, (wrb) ra  <-- 0x80000dc8, goto 0x80000dd4
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000dd4 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
      0x80000dd8 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000dc8 ~~> Word[0x0011ff0c]
      0x80000ddc sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0x001000a0 ~~> Word[0x0011ff08]
      0x80000de0 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0x00100050 ~~> Word[0x0011ff04]
      0x80000de4 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0x00100000 ~~> Word[0x0011ff00]
      0x80000de8 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
      0x80000dec sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
      0x80000df0 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
      0x80000df4 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
      0x80000df8 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
      0x80000dfc sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
      0x80000e00 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
      0x80000e04 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
      0x80000e08 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
      0x80000e0c mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
      0x80000e10 mv      s0, a3                 #; a3  = 0x800030b5, (wrb) s0  <-- 0x800030b5
      0x80000e14 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x80000e18 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x80000e1c beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e20 mv      s2, a0                 #; a0  = 0x800019cc, (wrb) s2  <-- 0x800019cc
      0x80000e24 j       pc + 0xc               #; goto 0x80000e30
      0x80000e30 li      s8, 0                  #; (wrb) s8  <-- 0
      0x80000e34 li      s6, 37                 #; (wrb) s6  <-- 37
      0x80000e38 li      s11, 16                #; (wrb) s11 <-- 16
      0x80000e3c li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000e40 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000e44 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000e48 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
      0x80000e4c lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000e50 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000e54 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e58 addi    s10, s0, 2             #; s0  = 0x800030b5, (wrb) s10 <-- 0x800030b7
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e5c mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000e60 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e64 lbu     a0, 0(s0)              #; s0  = 0x800030b5, a0  <~~ Byte[0x800030b5]
                                                #; (lsu) a0  <-- 101
      0x80000e68 beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x80000e6c beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000e70 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000e74 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000e78 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000e7c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e80 jalr    s2                     #; s2  = 0x800019cc, (wrb) ra  <-- 0x80000e84, goto 0x800019cc
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019cc beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
      0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
      0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
      0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 0
      0x800019ec addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 1 ~~> Word[0x80003474]
      0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 0, (wrb) a4  <-- 0x80003474
      0x800019f8 sb      a0, 72(a4)             #; a4  = 0x80003474, 101 ~~> Byte[0x800034bc]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 1
      0x80001a00 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x80001a04 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x80001a08 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x80001a0c snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a74 ret                            #; ra  = 0x80000e84, goto 0x80000e84
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000e84 addi    s0, s0, 1              #; s0  = 0x800030b5, (wrb) s0  <-- 0x800030b6
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000e88 addi    s10, s10, 1            #; s10 = 0x800030b7, (wrb) s10 <-- 0x800030b8
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e8c mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e90 lbu     a0, 0(s0)              #; s0  = 0x800030b6, a0  <~~ Byte[0x800030b6]
                                                #; (lsu) a0  <-- 114
      0x80000e94 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000e6c
      0x80000e6c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000e70 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000e74 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000e78 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000e7c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e80 jalr    s2                     #; s2  = 0x800019cc, (wrb) ra  <-- 0x80000e84, goto 0x800019cc
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019cc beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
      0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
      0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 1
      0x800019ec addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 2 ~~> Word[0x80003474]
      0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 1, (wrb) a4  <-- 0x80003475
      0x800019f8 sb      a0, 72(a4)             #; a4  = 0x80003475, 114 ~~> Byte[0x800034bd]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 2
      0x80001a00 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x80001a04 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x80001a08 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001a0c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a74 ret                            #; ra  = 0x80000e84, goto 0x80000e84
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000e84 addi    s0, s0, 1              #; s0  = 0x800030b6, (wrb) s0  <-- 0x800030b7
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000e88 addi    s10, s10, 1            #; s10 = 0x800030b8, (wrb) s10 <-- 0x800030b9
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e8c mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e90 lbu     a0, 0(s0)              #; s0  = 0x800030b7, a0  <~~ Byte[0x800030b7]
                                                #; (lsu) a0  <-- 114
      0x80000e94 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000e6c
      0x80000e6c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000e70 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000e74 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000e78 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000e7c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e80 jalr    s2                     #; s2  = 0x800019cc, (wrb) ra  <-- 0x80000e84, goto 0x800019cc
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019cc beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
      0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
      0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 2
      0x800019ec addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 3 ~~> Word[0x80003474]
      0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 2, (wrb) a4  <-- 0x80003476
      0x800019f8 sb      a0, 72(a4)             #; a4  = 0x80003476, 114 ~~> Byte[0x800034be]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 3
      0x80001a00 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x80001a04 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x80001a08 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001a0c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a74 ret                            #; ra  = 0x80000e84, goto 0x80000e84
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000e84 addi    s0, s0, 1              #; s0  = 0x800030b7, (wrb) s0  <-- 0x800030b8
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000e88 addi    s10, s10, 1            #; s10 = 0x800030b9, (wrb) s10 <-- 0x800030ba
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e8c mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e90 lbu     a0, 0(s0)              #; s0  = 0x800030b8, a0  <~~ Byte[0x800030b8]
                                                #; (lsu) a0  <-- 111
      0x80000e94 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000e6c
      0x80000e6c beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000e70 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000e74 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000e78 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000e7c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e80 jalr    s2                     #; s2  = 0x800019cc, (wrb) ra  <-- 0x80000e84, goto 0x800019cc
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019cc beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
      0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
      0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 3
      0x800019ec addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 4 ~~> Word[0x80003474]
      0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 3, (wrb) a4  <-- 0x80003477
      0x800019f8 sb      a0, 72(a4)             #; a4  = 0x80003477, 111 ~~> Byte[0x800034bf]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 4
      0x80001a00 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x80001a04 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x80001a08 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x80001a0c snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a74 ret                            #; ra  = 0x80000e84, goto 0x80000e84
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000e84 addi    s0, s0, 1              #; s0  = 0x800030b8, (wrb) s0  <-- 0x800030b9
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000e88 addi    s10, s10, 1            #; s10 = 0x800030ba, (wrb) s10 <-- 0x800030bb
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e8c mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e90 lbu     a0, 0(s0)              #; s0  = 0x800030b9, a0  <~~ Byte[0x800030b9]
                                                #; (lsu) a0  <-- 114
      0x80000e94 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000e6c
      0x80000e6c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000e70 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000e74 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000e78 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000e7c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e80 jalr    s2                     #; s2  = 0x800019cc, (wrb) ra  <-- 0x80000e84, goto 0x800019cc
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019cc beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
      0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
      0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 4
      0x800019ec addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 5 ~~> Word[0x80003474]
      0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 4, (wrb) a4  <-- 0x80003478
      0x800019f8 sb      a0, 72(a4)             #; a4  = 0x80003478, 114 ~~> Byte[0x800034c0]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 5
      0x80001a00 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x80001a04 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x80001a08 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001a0c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a74 ret                            #; ra  = 0x80000e84, goto 0x80000e84
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000e84 addi    s0, s0, 1              #; s0  = 0x800030b9, (wrb) s0  <-- 0x800030ba
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000e88 addi    s10, s10, 1            #; s10 = 0x800030bb, (wrb) s10 <-- 0x800030bc
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e8c mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e90 lbu     a0, 0(s0)              #; s0  = 0x800030ba, a0  <~~ Byte[0x800030ba]
                                                #; (lsu) a0  <-- 32
      0x80000e94 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000e6c
      0x80000e6c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000e70 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000e74 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000e78 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000e7c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e80 jalr    s2                     #; s2  = 0x800019cc, (wrb) ra  <-- 0x80000e84, goto 0x800019cc
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019cc beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
      0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
      0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 5
      0x800019ec addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 6 ~~> Word[0x80003474]
      0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 5, (wrb) a4  <-- 0x80003479
      0x800019f8 sb      a0, 72(a4)             #; a4  = 0x80003479, 32 ~~> Byte[0x800034c1]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 6
      0x80001a00 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x80001a04 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x80001a08 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001a0c snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a74 ret                            #; ra  = 0x80000e84, goto 0x80000e84
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000e84 addi    s0, s0, 1              #; s0  = 0x800030ba, (wrb) s0  <-- 0x800030bb
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000e88 addi    s10, s10, 1            #; s10 = 0x800030bc, (wrb) s10 <-- 0x800030bd
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e8c mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e90 lbu     a0, 0(s0)              #; s0  = 0x800030bb, a0  <~~ Byte[0x800030bb]
                                                #; (lsu) a0  <-- 61
      0x80000e94 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000e6c
      0x80000e6c beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000e70 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000e74 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000e78 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000e7c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e80 jalr    s2                     #; s2  = 0x800019cc, (wrb) ra  <-- 0x80000e84, goto 0x800019cc
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019cc beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
      0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
      0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 6
      0x800019ec addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 7 ~~> Word[0x80003474]
      0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 6, (wrb) a4  <-- 0x8000347a
      0x800019f8 sb      a0, 72(a4)             #; a4  = 0x8000347a, 61 ~~> Byte[0x800034c2]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 7
      0x80001a00 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x80001a04 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x80001a08 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x80001a0c snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a74 ret                            #; ra  = 0x80000e84, goto 0x80000e84
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000e84 addi    s0, s0, 1              #; s0  = 0x800030bb, (wrb) s0  <-- 0x800030bc
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000e88 addi    s10, s10, 1            #; s10 = 0x800030bd, (wrb) s10 <-- 0x800030be
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e8c mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e90 lbu     a0, 0(s0)              #; s0  = 0x800030bc, a0  <~~ Byte[0x800030bc]
                                                #; (lsu) a0  <-- 32
      0x80000e94 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000e6c
      0x80000e6c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000e70 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000e74 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000e78 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000e7c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e80 jalr    s2                     #; s2  = 0x800019cc, (wrb) ra  <-- 0x80000e84, goto 0x800019cc
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019cc beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
      0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
      0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 7
      0x800019ec addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 8 ~~> Word[0x80003474]
      0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 7, (wrb) a4  <-- 0x8000347b
      0x800019f8 sb      a0, 72(a4)             #; a4  = 0x8000347b, 32 ~~> Byte[0x800034c3]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 8
      0x80001a00 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x80001a04 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x80001a08 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001a0c snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a74 ret                            #; ra  = 0x80000e84, goto 0x80000e84
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000e84 addi    s0, s0, 1              #; s0  = 0x800030bc, (wrb) s0  <-- 0x800030bd
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000e88 addi    s10, s10, 1            #; s10 = 0x800030be, (wrb) s10 <-- 0x800030bf
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e8c mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e90 lbu     a0, 0(s0)              #; s0  = 0x800030bd, a0  <~~ Byte[0x800030bd]
                                                #; (lsu) a0  <-- 37
      0x80000e94 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000e6c
      0x80000e6c beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000e9c
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000e9c li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ea0 j       pc + 0x10              #; goto 0x80000eb0
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000eb0 lbu     a0, -1(s10)            #; s10 = 0x800030bf, a0  <~~ Byte[0x800030be]
                                                #; (lsu) a0  <-- 102
      0x80000eb4 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000eb8 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000ef0
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000ef0 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000ef4 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000ef8 addi    a1, s10, -1            #; s10 = 0x800030bf, (wrb) a1  <-- 0x800030be
      0x80000efc li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000f00 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000f7c
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000f7c li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000f80 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000fd0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000fd0 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000fd4 mv      s10, a1                #; a1  = 0x800030be, (wrb) s10 <-- 0x800030be
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000fd8 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000fdc li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000fe0 j       pc + 0xc               #; goto 0x80000fec
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000fec addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000ff0 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000ff4 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000ff8 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000ffc li      a2, 9                  #; (wrb) a2  <-- 9
      0x80001000 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80001064
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80001064 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80001068 li      a2, 83                 #; (wrb) a2  <-- 83
      0x8000106c bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001070 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80001074 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80003074
      0x80001078 addi    a2, a2, 192            #; a2  = 0x80003074, (wrb) a2  <-- 0x80003134
      0x8000107c add     a1, a1, a2             #; a1  = 260, a2  = 0x80003134, (wrb) a1  <-- 0x80003238
      0x80001080 lw      a2, 0(a1)              #; a1  = 0x80003238, a2  <~~ Word[0x80003238]
      0x80001084 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80001088 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x800010bc
      0x8000108c jr      a2                     #; a2  = 0x800010bc, goto 0x800010bc
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x800010bc li      a1, 70                 #; (wrb) a1  <-- 70
      0x800010c0 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x800010c8
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x800010c8 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
      0x800010cc andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
      0x800010d4 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
      0x800010d8 mv      a0, s2                 #; s2  = 0x800019cc, (wrb) a0  <-- 0x800019cc
      0x800010d0 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
      0x800010dc mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
; ?? (??:0)
                                                #; (f:lsu) fa0  <-- 169.7039795
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x800010e0 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x800010e4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800010e8 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x800010ec mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x800010f0 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x800010f4 auipc   ra, 0x1                #; (wrb) ra  <-- 0x800020f4
      0x800010f8 jalr    ra, ra, -1656          #; ra  = 0x800020f4, (wrb) ra  <-- 0x800010fc, goto 0x80001a7c
; _ftoa (printf.c:340)
      0x80001a7c addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
      0x80001a80 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x800010fc ~~> Word[0x0011fe9c]
      0x80001a84 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
      0x80001a88 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
      0x80001a8c sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x800019cc ~~> Word[0x0011fe90]
      0x80001a90 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
      0x80001a94 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
      0x80001a98 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
      0x80001a9c sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
      0x80001aa0 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
      0x80001aa4 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
      0x80001aa8 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
      0x80001aac sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x800030be ~~> Word[0x0011fe70]
      0x80001ab0 fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe68]
      0x80001abc auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003abc
      0x80001ab4 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
      0x80001ab8 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
      0x80001ac0 addi    s1, s1, -1780          #; s1  = 0x80003abc, (wrb) s1  <-- 0x800033c8
; _ftoa (printf.c:351)
      0x80001acc mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
      0x80001ac4 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x800033c8]
; _ftoa (printf.c:0)
      0x80001ad0 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x80001ad4 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x80001ac8 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 169.7039795
      0x80001ad8 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x80001adc mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
      0x80001ae0 mv      s7, a0                 #; a0  = 0x800019cc, (wrb) s7  <-- 0x800019cc
; _ftoa (printf.c:351)
      0x80001ae4 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001bd4
; _ftoa (printf.c:0)
      0x80001bd8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002bd8
      0x80001bdc addi    a0, a0, 2040           #; a0  = 0x80002bd8, (wrb) a0  <-- 0x800033d0
      0x80001bd4 fsgnj.d fs0, fa0, fa0          #; fa0  = 169.7039795, fa0  = 169.7039795
                                                #; (f:fpu) fs0  <-- 169.7039795
      0x80001be0 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800033d0]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x80001be4 fle.d   a0, fa0, ft0           #; fa0  = 169.7039795, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x80001be8 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001c04
; _ftoa (printf.c:0)
      0x80001c04 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002c04
      0x80001c08 addi    a0, a0, 2004           #; a0  = 0x80002c04, (wrb) a0  <-- 0x800033d8
      0x80001c0c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800033d8]
      0x80001c10 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002c10
      0x80001c14 addi    a0, a0, 2000           #; a0  = 0x80002c10, (wrb) a0  <-- 0x800033e0
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
      0x80001c18 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800033e0]
; _ftoa (printf.c:358)
      0x80001c1c fle.d   a0, fs0, ft0           #; fs0  = 169.7039795, ft0  = 1000000000.0000000
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
      0x80001c20 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 169.7039795
                                                #; (acc) a0  <-- 0x00b57533
      0x80001c24 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80001c28 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001d24
; _ftoa (printf.c:374)
      0x80001d24 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x80001d28 li      s8, 6                  #; (wrb) s8  <-- 6
      0x80001d2c beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001d34
; _ftoa (printf.c:0)
      0x80001d34 li      a0, 10                 #; (wrb) a0  <-- 10
; _ftoa (printf.c:378)
      0x80001d3c bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001d74
; _ftoa (printf.c:0)
      0x80001d38 fsgnjx.d fs2, fs0, fs0         #; fs0  = 169.7039795, fs0  = 169.7039795
                                                #; (f:fpu) fs2  <-- 169.7039795
      0x80001d74 li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x80001d78 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x80001d7c auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002d7c
      0x80001d80 addi    a1, a1, 1292           #; a1  = 0x80002d7c, (wrb) a1  <-- 0x80003288
      0x80001d84 add     a0, a0, a1             #; a0  = 48, a1  = 0x80003288, (wrb) a0  <-- 0x800032b8
      0x80001d88 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800032b8]
; _ftoa (printf.c:383)
      0x80001d8c fcvt.w.d s1, fs2               #; fs2  = 169.7039795
; _ftoa (printf.c:384)
      0x80001d90 fcvt.d.w ft0, s1               #; ac1  = 169, (f:lsu) ft1  <-- 1000000.0000000
                                                #; (f:fpu) ft0  <-- 169.0
; _ftoa (printf.c:0)
      0x80001d9c auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002d9c
      0x80001d94 fsub.d  ft0, fs2, ft0          #; fs2  = 169.7039795, ft0  = 169.0
                                                #; (f:fpu) ft0  <-- 0.7039795
; _ftoa (printf.c:384)
      0x80001d98 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.7039795
                                                #; (f:fpu) ft2  <-- 703979.4921875
; _ftoa (printf.c:0)
      0x80001da0 addi    a0, a0, 1612           #; a0  = 0x80002d9c, (wrb) a0  <-- 0x800033e8
      0x80001da4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800033e8]
; _ftoa (printf.c:385)
      0x80001da8 fcvt.wu.d a0, ft2              #; ft2  = 703979.4921875
                                                #; (acc) gp  <-- 0xd21501d3
; _ftoa (printf.c:386)
      0x80001dac fcvt.d.wu ft3, a0              #; ac1  = 0x000abdeb
                                                #; (f:fpu) ft3  <-- 703979.0
                                                #; (f:lsu) ft0  <-- 0.5
      0x80001db0 fsub.d  ft2, ft2, ft3          #; ft2  = 703979.4921875, ft3  = 703979.0
                                                #; (f:fpu) ft2  <-- 0.4921875
; _ftoa (printf.c:388)
      0x80001db4 fle.d   a1, ft2, ft0           #; ft2  = 0.4921875, ft0  = 0.5
      0x80001db8 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001dd8
; _ftoa (printf.c:396)
      0x80001dd8 flt.d   a1, ft2, ft0           #; ft2  = 0.4921875, ft0  = 0.5
                                                #; (acc) s4  <-- 0x00059a63
      0x80001ddc bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001df0
; _ftoa (printf.c:403)
      0x80001df4 beqz    s8, pc + 216           #; s8  = 6, not taken
      0x80001df0 fcvt.d.w fs1, zero             #; ac1  = 0
; _ftoa (printf.c:0)
      0x80001df8 li      a2, 0                  #; (wrb) a2  <-- 0
                                                #; (f:fpu) fs1  <-- 0.0
      0x80001dfc addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:414)
      0x80001e00 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
      0x80001e04 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001e08 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x80001e0c lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80001e10 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80001e14 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001e18 li      a7, 9                  #; (wrb) a7  <-- 9
      0x80001e1c beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80001e20 mv      a1, a0                 #; a0  = 0x000abdeb, (wrb) a1  <-- 0x000abdeb
; _ftoa (printf.c:417)
      0x80001e24 mulhu   a0, a0, t2             #; a0  = 0x000abdeb, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001e28 srli    a0, a0, 3              #; a0  = 0x000897ef, (wrb) a0  <-- 0x000112fd
; _ftoa (printf.c:0)
      0x80001e2c mul     a3, a0, a6             #; a0  = 0x000112fd, a6  = 10
      0x80001e30 sub     a3, a1, a3             #; a1  = 0x000abdeb, a3  = 0x000abde2, (wrb) a3  <-- 9
; _ftoa (printf.c:416)
      0x80001e34 ori     a3, a3, 48             #; a3  = 9, (wrb) a3  <-- 57
      0x80001e38 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
      0x80001e3c sb      a3, 0(a5)              #; a5  = 0x0011fe38, 57 ~~> Byte[0x0011fe38]
; _ftoa (printf.c:417)
      0x80001e40 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80001e44 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0x000abdeb, taken, goto 0x80001e1c
; _ftoa (printf.c:414)
      0x80001e1c beq     a4, a2, pc + 200       #; a4  = 32, a2  = 1, not taken
; _ftoa (printf.c:0)
      0x80001e20 mv      a1, a0                 #; a0  = 0x000112fd, (wrb) a1  <-- 0x000112fd
; _ftoa (printf.c:417)
      0x80001e24 mulhu   a0, a0, t2             #; a0  = 0x000112fd, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001e28 srli    a0, a0, 3              #; a0  = 56317, (wrb) a0  <-- 7039
; _ftoa (printf.c:0)
      0x80001e2c mul     a3, a0, a6             #; a0  = 7039, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001e30 sub     a3, a1, a3             #; a1  = 0x000112fd, a3  = 0x000112f6, (wrb) a3  <-- 7
; _ftoa (printf.c:416)
      0x80001e34 ori     a3, a3, 48             #; a3  = 7, (wrb) a3  <-- 55
      0x80001e38 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 1, (wrb) a5  <-- 0x0011fe39
      0x80001e3c sb      a3, 0(a5)              #; a5  = 0x0011fe39, 55 ~~> Byte[0x0011fe39]
; _ftoa (printf.c:417)
      0x80001e40 addi    a2, a2, 1              #; a2  = 1, (wrb) a2  <-- 2
      0x80001e44 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0x000112fd, taken, goto 0x80001e1c
; _ftoa (printf.c:414)
      0x80001e1c beq     a4, a2, pc + 200       #; a4  = 32, a2  = 2, not taken
; _ftoa (printf.c:0)
      0x80001e20 mv      a1, a0                 #; a0  = 7039, (wrb) a1  <-- 7039
; _ftoa (printf.c:417)
      0x80001e24 mulhu   a0, a0, t2             #; a0  = 7039, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001e28 srli    a0, a0, 3              #; a0  = 5631, (wrb) a0  <-- 703
; _ftoa (printf.c:0)
      0x80001e2c mul     a3, a0, a6             #; a0  = 703, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001e30 sub     a3, a1, a3             #; a1  = 7039, a3  = 7030, (wrb) a3  <-- 9
; _ftoa (printf.c:416)
      0x80001e34 ori     a3, a3, 48             #; a3  = 9, (wrb) a3  <-- 57
      0x80001e38 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 2, (wrb) a5  <-- 0x0011fe3a
      0x80001e3c sb      a3, 0(a5)              #; a5  = 0x0011fe3a, 57 ~~> Byte[0x0011fe3a]
; _ftoa (printf.c:417)
      0x80001e40 addi    a2, a2, 1              #; a2  = 2, (wrb) a2  <-- 3
      0x80001e44 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 7039, taken, goto 0x80001e1c
; _ftoa (printf.c:414)
      0x80001e1c beq     a4, a2, pc + 200       #; a4  = 32, a2  = 3, not taken
; _ftoa (printf.c:0)
      0x80001e20 mv      a1, a0                 #; a0  = 703, (wrb) a1  <-- 703
; _ftoa (printf.c:417)
      0x80001e24 mulhu   a0, a0, t2             #; a0  = 703, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001e28 srli    a0, a0, 3              #; a0  = 562, (wrb) a0  <-- 70
; _ftoa (printf.c:0)
      0x80001e2c mul     a3, a0, a6             #; a0  = 70, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001e30 sub     a3, a1, a3             #; a1  = 703, a3  = 700, (wrb) a3  <-- 3
; _ftoa (printf.c:416)
      0x80001e34 ori     a3, a3, 48             #; a3  = 3, (wrb) a3  <-- 51
      0x80001e38 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 3, (wrb) a5  <-- 0x0011fe3b
      0x80001e3c sb      a3, 0(a5)              #; a5  = 0x0011fe3b, 51 ~~> Byte[0x0011fe3b]
; _ftoa (printf.c:417)
      0x80001e40 addi    a2, a2, 1              #; a2  = 3, (wrb) a2  <-- 4
      0x80001e44 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 703, taken, goto 0x80001e1c
; _ftoa (printf.c:414)
      0x80001e1c beq     a4, a2, pc + 200       #; a4  = 32, a2  = 4, not taken
; _ftoa (printf.c:0)
      0x80001e20 mv      a1, a0                 #; a0  = 70, (wrb) a1  <-- 70
; _ftoa (printf.c:417)
      0x80001e24 mulhu   a0, a0, t2             #; a0  = 70, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001e28 srli    a0, a0, 3              #; a0  = 56, (wrb) a0  <-- 7
; _ftoa (printf.c:0)
      0x80001e2c mul     a3, a0, a6             #; a0  = 7, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001e30 sub     a3, a1, a3             #; a1  = 70, a3  = 70, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001e34 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x80001e38 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 4, (wrb) a5  <-- 0x0011fe3c
      0x80001e3c sb      a3, 0(a5)              #; a5  = 0x0011fe3c, 48 ~~> Byte[0x0011fe3c]
; _ftoa (printf.c:417)
      0x80001e40 addi    a2, a2, 1              #; a2  = 4, (wrb) a2  <-- 5
      0x80001e44 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 70, taken, goto 0x80001e1c
; _ftoa (printf.c:414)
      0x80001e1c beq     a4, a2, pc + 200       #; a4  = 32, a2  = 5, not taken
; _ftoa (printf.c:0)
      0x80001e20 mv      a1, a0                 #; a0  = 7, (wrb) a1  <-- 7
; _ftoa (printf.c:417)
      0x80001e24 mulhu   a0, a0, t2             #; a0  = 7, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001e28 srli    a0, a0, 3              #; a0  = 5, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001e2c mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001e30 sub     a3, a1, a3             #; a1  = 7, a3  = 0, (wrb) a3  <-- 7
; _ftoa (printf.c:416)
      0x80001e34 ori     a3, a3, 48             #; a3  = 7, (wrb) a3  <-- 55
      0x80001e38 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 5, (wrb) a5  <-- 0x0011fe3d
      0x80001e3c sb      a3, 0(a5)              #; a5  = 0x0011fe3d, 55 ~~> Byte[0x0011fe3d]
; _ftoa (printf.c:417)
      0x80001e40 addi    a2, a2, 1              #; a2  = 5, (wrb) a2  <-- 6
      0x80001e44 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 7, not taken
; _ftoa (printf.c:422)
      0x80001e48 add     a0, s0, a2             #; s0  = 0, a2  = 6, (wrb) a0  <-- 6
      0x80001e4c addi    a1, a0, -1             #; a0  = 6, (wrb) a1  <-- 5
      0x80001e50 li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001e54 sltu    a3, a3, a1             #; a3  = 30, a1  = 5, (wrb) a3  <-- 0
      0x80001e58 xor     a4, s8, a2             #; s8  = 6, a2  = 6, (wrb) a4  <-- 0
      0x80001e5c seqz    a4, a4                 #; a4  = 0, (wrb) a4  <-- 1
      0x80001e60 or      a3, a3, a4             #; a3  = 0, a4  = 1, (wrb) a3  <-- 1
      0x80001e64 bnez    a3, pc + 136           #; a3  = 1, taken, goto 0x80001eec
; _ftoa (printf.c:0)
      0x80001eec sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
; _ftoa (printf.c:425)
      0x80001ef0 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001ef4 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001ef8 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:427)
      0x80001efc add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
      0x80001f00 li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001f04 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
      0x80001f08 j       pc + 0x8               #; goto 0x80001f10
; _ftoa (printf.c:0)
      0x80001f10 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001f14 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001f18 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001f1c li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001f24 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001f20 flt.d   s9, fs0, fs1           #; fs0  = 169.7039795, fs1  = 0.0
      0x80001f28 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001f2c li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001f30 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
      0x80001f34 li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001f38 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001f3c mulh    a0, s1, a1             #; s1  = 169, a1  = 0x66666667
      0x80001f40 srli    a5, a0, 31             #; a0  = 67, (wrb) a5  <-- 0
      0x80001f44 srai    a0, a0, 2              #; a0  = 67, (wrb) a0  <-- 16
      0x80001f48 add     a0, a0, a5             #; a0  = 16, a5  = 0, (wrb) a0  <-- 16
; _ftoa (printf.c:0)
      0x80001f4c mul     a5, a0, a6             #; a0  = 16, a6  = 10
      0x80001f50 sub     a5, s1, a5             #; s1  = 169, a5  = 160, (wrb) a5  <-- 9
; _ftoa (printf.c:433)
      0x80001f54 addi    a5, a5, 48             #; a5  = 9, (wrb) a5  <-- 57
      0x80001f58 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001f5c add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
; _ftoa (printf.c:434)
      0x80001f60 addi    a2, s1, 9              #; s1  = 169, (wrb) a2  <-- 178
; _ftoa (printf.c:433)
      0x80001f64 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 57 ~~> Byte[0x0011fe3f]
; _ftoa (printf.c:0)
      0x80001f68 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001f6c mv      s1, a0                 #; a0  = 16, (wrb) s1  <-- 16
; _ftoa (printf.c:434)
      0x80001f70 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 178, taken, goto 0x80001f38
; _ftoa (printf.c:432)
      0x80001f38 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 8, not taken
; _ftoa (printf.c:434)
      0x80001f3c mulh    a0, s1, a1             #; s1  = 16, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001f40 srli    a5, a0, 31             #; a0  = 6, (wrb) a5  <-- 0
      0x80001f44 srai    a0, a0, 2              #; a0  = 6, (wrb) a0  <-- 1
      0x80001f48 add     a0, a0, a5             #; a0  = 1, a5  = 0, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001f4c mul     a5, a0, a6             #; a0  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001f50 sub     a5, s1, a5             #; s1  = 16, a5  = 10, (wrb) a5  <-- 6
; _ftoa (printf.c:433)
      0x80001f54 addi    a5, a5, 48             #; a5  = 6, (wrb) a5  <-- 54
      0x80001f58 addi    s8, s0, 1              #; s0  = 8, (wrb) s8  <-- 9
      0x80001f5c add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 8, (wrb) s0  <-- 0x0011fe40
; _ftoa (printf.c:434)
      0x80001f60 addi    a2, s1, 9              #; s1  = 16, (wrb) a2  <-- 25
; _ftoa (printf.c:433)
      0x80001f64 sb      a5, 0(s0)              #; s0  = 0x0011fe40, 54 ~~> Byte[0x0011fe40]
; _ftoa (printf.c:0)
      0x80001f68 mv      s0, s8                 #; s8  = 9, (wrb) s0  <-- 9
      0x80001f6c mv      s1, a0                 #; a0  = 1, (wrb) s1  <-- 1
; _ftoa (printf.c:434)
      0x80001f70 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 25, taken, goto 0x80001f38
; _ftoa (printf.c:432)
      0x80001f38 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 9, not taken
; _ftoa (printf.c:434)
      0x80001f3c mulh    a0, s1, a1             #; s1  = 1, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001f40 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001f44 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001f48 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001f4c mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001f50 sub     a5, s1, a5             #; s1  = 1, a5  = 0, (wrb) a5  <-- 1
; _ftoa (printf.c:433)
      0x80001f54 addi    a5, a5, 48             #; a5  = 1, (wrb) a5  <-- 49
      0x80001f58 addi    s8, s0, 1              #; s0  = 9, (wrb) s8  <-- 10
      0x80001f5c add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 9, (wrb) s0  <-- 0x0011fe41
; _ftoa (printf.c:434)
      0x80001f60 addi    a2, s1, 9              #; s1  = 1, (wrb) a2  <-- 10
; _ftoa (printf.c:433)
      0x80001f64 sb      a5, 0(s0)              #; s0  = 0x0011fe41, 49 ~~> Byte[0x0011fe41]
; _ftoa (printf.c:0)
      0x80001f68 mv      s0, s8                 #; s8  = 10, (wrb) s0  <-- 10
      0x80001f6c mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001f70 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 10, not taken
      0x80001f74 j       pc + 0x8               #; goto 0x80001f7c
; _ftoa (printf.c:440)
      0x80001f7c andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001f80 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001f84 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001ff0
; _ftoa (printf.c:0)
      0x80001ff0 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001ff4 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 10, not taken
; _ftoa (printf.c:450)
      0x80001ff8 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80002010
; _ftoa (printf.c:453)
      0x80002010 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80002014 bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80002018 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x8000201c beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80002048
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80002048 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x8000204c sltu    a1, s8, s2             #; s8  = 10, s2  = 0, (wrb) a1  <-- 0
      0x80002050 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80002054 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80002058 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x8000205c mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80002060 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x8000208c
; _ftoa (printf.c:0)
      0x8000208c srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80002090 beqz    s8, pc + 56            #; s8  = 10, not taken
      0x80002094 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80002098 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 10, (wrb) a0  <-- 0x0011fe41
      0x8000209c lbu     a0, 0(a0)              #; a0  = 0x0011fe41, a0  <~~ Byte[0x0011fe41]
                                                #; (lsu) a0  <-- 49
      0x800020a0 addi    s10, s8, -1            #; s8  = 10, (wrb) s10 <-- 9
      0x800020a4 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
      0x800020a8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800020ac mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x800020b0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800020b4 jalr    s7                     #; s7  = 0x800019cc, (wrb) ra  <-- 0x800020b8, goto 0x800019cc
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019cc beqz    a0, pc + 168           #; a0  = 49, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
      0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
      0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 8
      0x800019ec addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 9 ~~> Word[0x80003474]
      0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 8, (wrb) a4  <-- 0x8000347c
      0x800019f8 sb      a0, 72(a4)             #; a4  = 0x8000347c, 49 ~~> Byte[0x800034c4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 9
      0x80001a00 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x80001a04 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x80001a08 addi    a0, a0, -10            #; a0  = 49, (wrb) a0  <-- 39
      0x80001a0c snez    a0, a0                 #; a0  = 39, (wrb) a0  <-- 1
      0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a74 ret                            #; ra  = 0x800020b8, goto 0x800020b8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800020b8 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x800020bc mv      s8, s10                #; s10 = 9, (wrb) s8  <-- 9
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800020c0 bnez    s10, pc - 40           #; s10 = 9, taken, goto 0x80002098
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80002098 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 9, (wrb) a0  <-- 0x0011fe40
      0x8000209c lbu     a0, 0(a0)              #; a0  = 0x0011fe40, a0  <~~ Byte[0x0011fe40]
      0x800020a0 addi    s10, s8, -1            #; s8  = 9, (wrb) s10 <-- 8
      0x800020a4 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x800020a8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800020ac mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x800020b0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800020b4 jalr    s7                     #; s7  = 0x800019cc, (wrb) ra  <-- 0x800020b8, goto 0x800019cc
                                                #; (lsu) a0  <-- 54
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019cc beqz    a0, pc + 168           #; a0  = 54, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
      0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
      0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 9
      0x800019ec addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 10 ~~> Word[0x80003474]
      0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 9, (wrb) a4  <-- 0x8000347d
      0x800019f8 sb      a0, 72(a4)             #; a4  = 0x8000347d, 54 ~~> Byte[0x800034c5]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 10
      0x80001a00 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x80001a04 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x80001a08 addi    a0, a0, -10            #; a0  = 54, (wrb) a0  <-- 44
      0x80001a0c snez    a0, a0                 #; a0  = 44, (wrb) a0  <-- 1
      0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a74 ret                            #; ra  = 0x800020b8, goto 0x800020b8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800020b8 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x800020bc mv      s8, s10                #; s10 = 8, (wrb) s8  <-- 8
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800020c0 bnez    s10, pc - 40           #; s10 = 8, taken, goto 0x80002098
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80002098 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
      0x8000209c lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
      0x800020a0 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x800020a4 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x800020a8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800020ac mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x800020b0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800020b4 jalr    s7                     #; s7  = 0x800019cc, (wrb) ra  <-- 0x800020b8, goto 0x800019cc
                                                #; (lsu) a0  <-- 57
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019cc beqz    a0, pc + 168           #; a0  = 57, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
      0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
      0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 10
      0x800019ec addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 11 ~~> Word[0x80003474]
      0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 10, (wrb) a4  <-- 0x8000347e
      0x800019f8 sb      a0, 72(a4)             #; a4  = 0x8000347e, 57 ~~> Byte[0x800034c6]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 11
      0x80001a00 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x80001a04 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x80001a08 addi    a0, a0, -10            #; a0  = 57, (wrb) a0  <-- 47
      0x80001a0c snez    a0, a0                 #; a0  = 47, (wrb) a0  <-- 1
      0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a74 ret                            #; ra  = 0x800020b8, goto 0x800020b8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800020b8 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x800020bc mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800020c0 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80002098
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80002098 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
      0x8000209c lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
      0x800020a0 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x800020a4 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x800020a8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800020ac mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x800020b0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800020b4 jalr    s7                     #; s7  = 0x800019cc, (wrb) ra  <-- 0x800020b8, goto 0x800019cc
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019cc beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
      0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
      0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 11
      0x800019ec addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 12 ~~> Word[0x80003474]
      0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 11, (wrb) a4  <-- 0x8000347f
      0x800019f8 sb      a0, 72(a4)             #; a4  = 0x8000347f, 46 ~~> Byte[0x800034c7]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 12
      0x80001a00 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x80001a04 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x80001a08 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x80001a0c snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a74 ret                            #; ra  = 0x800020b8, goto 0x800020b8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800020b8 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x800020bc mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800020c0 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80002098
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80002098 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
      0x8000209c lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
      0x800020a0 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x800020a4 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x800020a8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800020ac mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x800020b0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800020b4 jalr    s7                     #; s7  = 0x800019cc, (wrb) ra  <-- 0x800020b8, goto 0x800019cc
                                                #; (lsu) a0  <-- 55
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019cc beqz    a0, pc + 168           #; a0  = 55, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
      0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
      0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 12
      0x800019ec addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 13 ~~> Word[0x80003474]
      0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 12, (wrb) a4  <-- 0x80003480
      0x800019f8 sb      a0, 72(a4)             #; a4  = 0x80003480, 55 ~~> Byte[0x800034c8]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 13
      0x80001a00 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x80001a04 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x80001a08 addi    a0, a0, -10            #; a0  = 55, (wrb) a0  <-- 45
      0x80001a0c snez    a0, a0                 #; a0  = 45, (wrb) a0  <-- 1
      0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a74 ret                            #; ra  = 0x800020b8, goto 0x800020b8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800020b8 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x800020bc mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800020c0 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80002098
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80002098 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
      0x8000209c lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
      0x800020a0 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x800020a4 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x800020a8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800020ac mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x800020b0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800020b4 jalr    s7                     #; s7  = 0x800019cc, (wrb) ra  <-- 0x800020b8, goto 0x800019cc
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019cc beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
      0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
      0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 13
      0x800019ec addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 14 ~~> Word[0x80003474]
      0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 13, (wrb) a4  <-- 0x80003481
      0x800019f8 sb      a0, 72(a4)             #; a4  = 0x80003481, 48 ~~> Byte[0x800034c9]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 14
      0x80001a00 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x80001a04 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x80001a08 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001a0c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a74 ret                            #; ra  = 0x800020b8, goto 0x800020b8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800020b8 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x800020bc mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800020c0 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80002098
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80002098 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
      0x8000209c lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
      0x800020a0 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x800020a4 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x800020a8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800020ac mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x800020b0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800020b4 jalr    s7                     #; s7  = 0x800019cc, (wrb) ra  <-- 0x800020b8, goto 0x800019cc
                                                #; (lsu) a0  <-- 51
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019cc beqz    a0, pc + 168           #; a0  = 51, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
      0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
      0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 14
      0x800019ec addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 15 ~~> Word[0x80003474]
      0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 14, (wrb) a4  <-- 0x80003482
      0x800019f8 sb      a0, 72(a4)             #; a4  = 0x80003482, 51 ~~> Byte[0x800034ca]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 15
      0x80001a00 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x80001a04 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x80001a08 addi    a0, a0, -10            #; a0  = 51, (wrb) a0  <-- 41
      0x80001a0c snez    a0, a0                 #; a0  = 41, (wrb) a0  <-- 1
      0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a74 ret                            #; ra  = 0x800020b8, goto 0x800020b8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800020b8 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x800020bc mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800020c0 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80002098
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80002098 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
      0x8000209c lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
      0x800020a0 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x800020a4 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x800020a8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800020ac mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x800020b0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800020b4 jalr    s7                     #; s7  = 0x800019cc, (wrb) ra  <-- 0x800020b8, goto 0x800019cc
                                                #; (lsu) a0  <-- 57
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019cc beqz    a0, pc + 168           #; a0  = 57, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
      0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
      0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 15
      0x800019ec addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 16 ~~> Word[0x80003474]
      0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 15, (wrb) a4  <-- 0x80003483
      0x800019f8 sb      a0, 72(a4)             #; a4  = 0x80003483, 57 ~~> Byte[0x800034cb]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 16
      0x80001a00 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x80001a04 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x80001a08 addi    a0, a0, -10            #; a0  = 57, (wrb) a0  <-- 47
      0x80001a0c snez    a0, a0                 #; a0  = 47, (wrb) a0  <-- 1
      0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a74 ret                            #; ra  = 0x800020b8, goto 0x800020b8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800020b8 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x800020bc mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800020c0 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80002098
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80002098 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
      0x8000209c lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
      0x800020a0 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x800020a4 addi    s1, s0, 1              #; s0  = 16, (wrb) s1  <-- 17
      0x800020a8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800020ac mv      a2, s0                 #; s0  = 16, (wrb) a2  <-- 16
      0x800020b0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800020b4 jalr    s7                     #; s7  = 0x800019cc, (wrb) ra  <-- 0x800020b8, goto 0x800019cc
                                                #; (lsu) a0  <-- 55
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019cc beqz    a0, pc + 168           #; a0  = 55, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
      0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
      0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 16
      0x800019ec addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 17 ~~> Word[0x80003474]
      0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 16, (wrb) a4  <-- 0x80003484
      0x800019f8 sb      a0, 72(a4)             #; a4  = 0x80003484, 55 ~~> Byte[0x800034cc]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 17
      0x80001a00 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x80001a04 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x80001a08 addi    a0, a0, -10            #; a0  = 55, (wrb) a0  <-- 45
      0x80001a0c snez    a0, a0                 #; a0  = 45, (wrb) a0  <-- 1
      0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a74 ret                            #; ra  = 0x800020b8, goto 0x800020b8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800020b8 mv      s0, s1                 #; s1  = 17, (wrb) s0  <-- 17
      0x800020bc mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800020c0 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80002098
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80002098 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
      0x8000209c lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
      0x800020a0 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x800020a4 addi    s1, s0, 1              #; s0  = 17, (wrb) s1  <-- 18
      0x800020a8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800020ac mv      a2, s0                 #; s0  = 17, (wrb) a2  <-- 17
      0x800020b0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800020b4 jalr    s7                     #; s7  = 0x800019cc, (wrb) ra  <-- 0x800020b8, goto 0x800019cc
                                                #; (lsu) a0  <-- 57
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019cc beqz    a0, pc + 168           #; a0  = 57, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
      0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
      0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 17
      0x800019ec addi    a5, a4, 1              #; a4  = 17, (wrb) a5  <-- 18
      0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 18 ~~> Word[0x80003474]
      0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 17, (wrb) a4  <-- 0x80003485
      0x800019f8 sb      a0, 72(a4)             #; a4  = 0x80003485, 57 ~~> Byte[0x800034cd]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 18
      0x80001a00 addi    a4, a4, -1020          #; a4  = 18, (wrb) a4  <-- -1002
      0x80001a04 snez    a4, a4                 #; a4  = -1002, (wrb) a4  <-- 1
      0x80001a08 addi    a0, a0, -10            #; a0  = 57, (wrb) a0  <-- 47
      0x80001a0c snez    a0, a0                 #; a0  = 47, (wrb) a0  <-- 1
      0x80001a10 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a14 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001a74
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a74 ret                            #; ra  = 0x800020b8, goto 0x800020b8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800020b8 mv      s0, s1                 #; s1  = 18, (wrb) s0  <-- 18
      0x800020bc mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800020c0 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x800020c4 j       pc + 0x8               #; goto 0x800020cc
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800020cc sub     a0, s1, s4             #; s1  = 18, s4  = 8, (wrb) a0  <-- 10
      0x800020d0 sltu    a0, a0, s2             #; a0  = 10, s2  = 0, (wrb) a0  <-- 0
      0x800020d4 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x800020d8 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x800020dc or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x800020e0 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80002110
; _ftoa (printf.c:0)
      0x80002110 mv      s0, s1                 #; s1  = 18, (wrb) s0  <-- 18
; _ftoa (printf.c:462)
      0x80002114 mv      a0, s0                 #; s0  = 18, (wrb) a0  <-- 18
      0x80002118 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
      0x8000211c fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
                                                #; (f:lsu) fs1  <-- 0.0
      0x80002124 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
      0x80002120 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68]
                                                #; (f:lsu) fs0  <-- 0.0000000
                                                #; (lsu) s10 <-- 0x800030be
      0x80002128 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 8
      0x8000212c lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 16
      0x80002130 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x80002134 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x80002138 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- -1
      0x8000213c lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0x0011ff17
      0x80002140 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0x0011ff30
      0x80002144 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x800019cc
      0x80002148 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 8
      0x8000214c lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0
      0x80002150 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
      0x80002154 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x800010fc
      0x80002158 ret                            #; ra  = 0x800010fc, goto 0x800010fc
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800010fc j       pc + 0x7c0             #; goto 0x800018bc
      0x800018bc mv      s8, a0                 #; a0  = 18, (wrb) s8  <-- 18
      0x800018c0 li      s6, 37                 #; (wrb) s6  <-- 37
      0x800018c4 li      s7, 46                 #; (wrb) s7  <-- 46
      0x800018c8 addi    s0, s10, 1             #; s10 = 0x800030be, (wrb) s0  <-- 0x800030bf
      0x800018cc j       pc - 0xa74             #; goto 0x80000e58
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e58 addi    s10, s0, 2             #; s0  = 0x800030bf, (wrb) s10 <-- 0x800030c1
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e5c mv      s9, s8                 #; s8  = 18, (wrb) s9  <-- 18
      0x80000e60 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e64 lbu     a0, 0(s0)              #; s0  = 0x800030bf, a0  <~~ Byte[0x800030bf]
                                                #; (lsu) a0  <-- 10
      0x80000e68 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000e6c beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000e70 addi    s1, s9, 1              #; s9  = 18, (wrb) s1  <-- 19
      0x80000e74 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000e78 mv      a2, s9                 #; s9  = 18, (wrb) a2  <-- 18
      0x80000e7c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e80 jalr    s2                     #; s2  = 0x800019cc, (wrb) ra  <-- 0x80000e84, goto 0x800019cc
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019cc beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d4 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019d8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800019dc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800039dc
      0x800019e0 addi    a3, a3, -1384          #; a3  = 0x800039dc, (wrb) a3  <-- 0x80003474
                                                #; (acc) a1  <-- 0x00d605b3
      0x800019e4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003474, (wrb) a1  <-- 0x80003474
      0x800019e8 lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 18
      0x800019ec addi    a5, a4, 1              #; a4  = 18, (wrb) a5  <-- 19
      0x800019f0 sw      a5, 0(a1)              #; a1  = 0x80003474, 19 ~~> Word[0x80003474]
      0x800019f4 add     a4, a1, a4             #; a1  = 0x80003474, a4  = 18, (wrb) a4  <-- 0x80003486
      0x800019f8 sb      a0, 72(a4)             #; a4  = 0x80003486, 10 ~~> Byte[0x800034ce]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800019fc lw      a4, 0(a1)              #; a1  = 0x80003474, a4  <~~ Word[0x80003474]
                                                #; (lsu) a4  <-- 19
      0x80001a00 addi    a4, a4, -1020          #; a4  = 19, (wrb) a4  <-- -1001
      0x80001a04 snez    a4, a4                 #; a4  = -1001, (wrb) a4  <-- 1
      0x80001a08 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x80001a0c snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x80001a10 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x80001a14 bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a18 add     a0, a3, a2             #; a3  = 0x80003474, a2  = 0, (wrb) a0  <-- 0x80003474
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a1c addi    a2, a0, 72             #; a0  = 0x80003474, (wrb) a2  <-- 0x800034bc
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a20 sw      zero, 12(a0)           #; a0  = 0x80003474, 0 ~~> Word[0x80003480]
      0x80001a24 li      a3, 64                 #; (wrb) a3  <-- 64
      0x80001a28 sw      a3, 8(a0)              #; a0  = 0x80003474, 64 ~~> Word[0x8000347c]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a2c sw      zero, 20(a0)           #; a0  = 0x80003474, 0 ~~> Word[0x80003488]
      0x80001a30 li      a3, 1                  #; (wrb) a3  <-- 1
      0x80001a34 sw      a3, 16(a0)             #; a0  = 0x80003474, 1 ~~> Word[0x80003484]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a38 sw      zero, 28(a0)           #; a0  = 0x80003474, 0 ~~> Word[0x80003490]
      0x80001a3c sw      a2, 24(a0)             #; a0  = 0x80003474, 0x800034bc ~~> Word[0x8000348c]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a40 lw      a2, 0(a1)              #; a1  = 0x80003474, a2  <~~ Word[0x80003474]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a44 addi    a3, a0, 8              #; a0  = 0x80003474, (wrb) a3  <-- 0x8000347c
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a48 sw      zero, 36(a0)           #; a0  = 0x80003474, 0 ~~> Word[0x80003498]
                                                #; (lsu) a2  <-- 19
      0x80001a4c sw      a2, 32(a0)             #; a0  = 0x80003474, 19 ~~> Word[0x80003494]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a50 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003a50
      0x80001a54 addi    a0, a0, -1872          #; a0  = 0x80003a50, (wrb) a0  <-- 0x80003300
      0x80001a58 sw      a3, 0(a0)              #; a0  = 0x80003300, 0x8000347c ~~> Word[0x80003300]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a5c auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003a5c
      0x80001a60 addi    a0, a0, -1820          #; a0  = 0x80003a5c, (wrb) a0  <-- 0x80003340
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a64 lw      a2, 0(a0)              #; a0  = 0x80003340, a2  <~~ Word[0x80003340]
                                                #; (lsu) a2  <-- 0
      0x80001a68 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001a64
      0x80001a64 lw      a2, 0(a0)              #; a0  = 0x80003340, a2  <~~ Word[0x80003340]
                                                #; (lsu) a2  <-- 1
      0x80001a68 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a6c sw      zero, 0(a0)            #; a0  = 0x80003340, 0 ~~> Word[0x80003340]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a70 sw      zero, 0(a1)            #; a1  = 0x80003474, 0 ~~> Word[0x80003474]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a74 ret                            #; ra  = 0x80000e84, goto 0x80000e84
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000e84 addi    s0, s0, 1              #; s0  = 0x800030bf, (wrb) s0  <-- 0x800030c0
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000e88 addi    s10, s10, 1            #; s10 = 0x800030c1, (wrb) s10 <-- 0x800030c2
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e8c mv      s9, s1                 #; s1  = 19, (wrb) s9  <-- 19
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000e90 lbu     a0, 0(s0)              #; s0  = 0x800030c0, a0  <~~ Byte[0x800030c0]
                                                #; (lsu) a0  <-- 0
      0x80000e94 bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000e98 j       pc + 0xad8             #; goto 0x80001970
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x80001970 mv      a2, s9                 #; s9  = 19, (wrb) a2  <-- 19
      0x80001974 bltu    s9, s5, pc + 8         #; s9  = 19, s5  = -1, taken, goto 0x8000197c
      0x8000197c li      a0, 0                  #; (wrb) a0  <-- 0
      0x80001980 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001984 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001988 jalr    s2                     #; s2  = 0x800019cc, (wrb) ra  <-- 0x8000198c, goto 0x800019cc
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800019cc beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001a74
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001a74 ret                            #; ra  = 0x8000198c, goto 0x8000198c
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x8000198c mv      a0, s9                 #; s9  = 19, (wrb) a0  <-- 19
      0x80001990 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
                                                #; (lsu) s11 <-- 0
      0x80001994 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
                                                #; (lsu) s10 <-- 0
      0x80001998 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
                                                #; (lsu) s9  <-- 0
      0x8000199c lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
                                                #; (lsu) s8  <-- 0
      0x800019a0 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
                                                #; (lsu) s7  <-- 0
      0x800019a4 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
                                                #; (lsu) s6  <-- 0
      0x800019a8 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
                                                #; (lsu) s5  <-- 0
      0x800019ac lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
                                                #; (lsu) s4  <-- 0
      0x800019b0 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
                                                #; (lsu) s3  <-- 0
      0x800019b4 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
                                                #; (lsu) s2  <-- 0x00100000
      0x800019b8 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
                                                #; (lsu) s1  <-- 0x00100050
      0x800019bc lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
                                                #; (lsu) s0  <-- 0x001000a0
      0x800019c0 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
      0x800019c4 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
                                                #; (lsu) ra  <-- 0x80000dc8
      0x800019c8 ret                            #; ra  = 0x80000dc8, goto 0x80000dc8
; printf_ (printf.c:869)
      0x80000dc8 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
      0x80000dcc addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x80000d38
      0x80000dd0 ret                            #; ra  = 0x80000d38, goto 0x80000d38
; main (test_conflict.c:0)
      0x80000d38 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002d38
      0x80000d3c addi    a0, a0, 1672           #; a0  = 0x80002d38, (wrb) a0  <-- 0x800033c0
      0x80000d40 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800033c0]
; main (test_conflict.c:35)
      0x80000d4c lw      s2, 16(sp)             #; sp  = 0x0011ff40, s2  <~~ Word[0x0011ff50]
                                                #; (f:lsu) ft3  <-- 0.0001
; main (test_conflict.c:34)
      0x80000d44 flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0000000
                                                #; (lsu) s2  <-- 0
; main (test_conflict.c:35)
      0x80000d50 lw      s1, 20(sp)             #; sp  = 0x0011ff40, s1  <~~ Word[0x0011ff54], (acc) s1  <-- 0x01412483
      0x80000d48 fld     fs0, 8(sp)             #; fs0  <~~ Doub[0x0011ff48]
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) s1  <-- 0
      0x80000d54 lw      s0, 24(sp)             #; sp  = 0x0011ff40, s0  <~~ Word[0x0011ff58]
                                                #; (lsu) s0  <-- 0
      0x80000d58 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
      0x80000d5c addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002e30
      0x80000d60 ret                            #; ra  = 0x80002e30, goto 0x80002e30
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
      0x8000304c jalr    ra, ra, -1268          #; ra  = 0x80003048, (wrb) ra  <-- 0x80003050, goto 0x80002b54
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002b54 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002b58 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002b5c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002b60 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002b64 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002b68 ret                            #; ra  = 0x80003050, goto 0x80003050
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
      0x8000307c jalr    ra, ra, -1348          #; ra  = 0x80003078, (wrb) ra  <-- 0x80003080, goto 0x80002b34
; snrt_global_core_idx (team.c:32)
      0x80002b34 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002b38 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002b3c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002b40 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002b44 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x80002b48 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x80002b4c sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x80002b50 ret                            #; ra  = 0x80003080, goto 0x80003080
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
                        tion 0 @ (12, 6050):
                          146
                          173
                            6
                           73
                      11.6849
                       0.2428
                       0.1179
                          1.0
                          1.0
                            0
                       1.5045
                       5.1644
                       0.0325
                       0.0184
                       0.5663
                         6039
                       0.2752
