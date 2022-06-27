; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x80002cc0
      0x00001014 jalr    t0                     #; t0  = 0x80002cc0, (wrb) ra  <-- 4120, goto 0x80002cc0
; ?? (start.S:20)
      0x80002cc0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003cc0
; ?? (start.S:21)
      0x80002cc4 addi    gp, gp, -248           #; gp  = 0x80003cc0, (wrb) gp  <-- 0x80003bc8
; ?? (start.S:28)
      0x80002cc8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002cc8
      0x80002ccc jalr    ra, ra, 964            #; ra  = 0x80002cc8, (wrb) ra  <-- 0x80002cd0, goto 0x8000308c
; ?? (start_snitch.S:16)
      0x8000308c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80003090 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80003094 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80003098 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x8000309c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x800030a0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x800030a4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x800030a8 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x800030ac mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x800030b0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x800030b4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x800030b8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x800030bc ret                            #; ra  = 0x80002cd0, goto 0x80002cd0
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x80002cd0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x80002cd4 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x80002cd8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002cd8
      0x80002cdc jalr    ra, ra, 1036           #; ra  = 0x80002cd8, (wrb) ra  <-- 0x80002ce0, goto 0x800030e4
; ?? (start_snitch.S:48)
      0x800030e4 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x800030e8 ret                            #; ra  = 0x80002ce0, goto 0x80002ce0
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x80002ce0 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x80002ce4 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x80002ce8 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x80002cec sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x80002cf0 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x80002cf4 auipc   t0, 0x1                #; (wrb) t0  <-- 0x80003cf4
      0x80002cf8 addi    t0, t0, -1924          #; t0  = 0x80003cf4, (wrb) t0  <-- 0x80003570
; ?? (start.S:49)
      0x80002cfc auipc   t1, 0x1                #; (wrb) t1  <-- 0x80003cfc
      0x80002d00 addi    t1, t1, -1928          #; t1  = 0x80003cfc, (wrb) t1  <-- 0x80003574
; ?? (start.S:50)
      0x80002d04 bge     t0, t1, pc + 16        #; t0  = 0x80003570, t1  = 0x80003574, not taken
; ?? (start.S:51)
      0x80002d08 sw      zero, 0(t0)            #; t0  = 0x80003570, 0 ~~> Word[0x80003570]
; ?? (start.S:52)
      0x80002d0c addi    t0, t0, 4              #; t0  = 0x80003570, (wrb) t0  <-- 0x80003574
; ?? (start.S:53)
      0x80002d10 blt     t0, t1, pc - 8         #; t0  = 0x80003574, t1  = 0x80003574, not taken
; ?? (start.S:58)
      0x80002d14 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x80002d18 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x80002d1c beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x80002d20 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x80002d24 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x80002d28 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x80002d2c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x80002d30 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x80002d34 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x80002d38 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x80002d3c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x80002d40 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x80002d44 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x80002d48 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x80002d4c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x80002d50 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x80002d54 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x80002d58 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x80002d5c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x80002d60 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x80002d64 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x80002d68 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x80002d6c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x80002d70 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x80002d74 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x80002d78 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x80002d7c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x80002d80 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x80002d84 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x80002d88 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x80002d8c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x80002d90 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x80002d94 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x80002d98 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x80002d9c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x80002da0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x80002da4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x80002da8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002da8
      0x80002dac lw      t0, 900(t0)            #; t0  = 0x80002da8, t0  <~~ Word[0x8000312c]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x80002db0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x80002db4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x80002db8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002db8
      0x80002dbc lw      t2, 880(t2)            #; t2  = 0x80002db8, t2  <~~ Word[0x80003128]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x80002dc0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x80002dc4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x80002dc8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x80002dcc sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x80002dd0 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x80002dd4 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x80002dd8 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x80002ddc sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x80002de0 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002de0
      0x80002de4 addi    t0, t0, 1512           #; t0  = 0x80002de0, (wrb) t0  <-- 0x800033c8
; ?? (start.S:125)
      0x80002de8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002de8
      0x80002dec addi    t1, t1, 1504           #; t1  = 0x80002de8, (wrb) t1  <-- 0x800033c8
; ?? (start.S:126)
      0x80002df0 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002df0
      0x80002df4 addi    t2, t2, 1496           #; t2  = 0x80002df0, (wrb) t2  <-- 0x800033c8
; ?? (start.S:127)
      0x80002df8 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002df8
      0x80002dfc addi    t3, t3, 1504           #; t3  = 0x80002df8, (wrb) t3  <-- 0x800033d8
; ?? (start.S:128)
      0x80002e00 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x800033c8, (wrb) sp  <-- 0x80123338
; ?? (start.S:129)
      0x80002e04 sub     sp, sp, t1             #; sp  = 0x80123338, t1  = 0x800033c8, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x80002e08 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x800033c8, (wrb) sp  <-- 0x80123338
; ?? (start.S:131)
      0x80002e0c sub     sp, sp, t3             #; sp  = 0x80123338, t3  = 0x800033d8, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x80002e10 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x80002e14 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x80002e18 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x80002e1c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x80002e20 bge     t0, t1, pc + 24        #; t0  = 0x800033c8, t1  = 0x800033c8, taken, goto 0x80002e38
; ?? (start.S:147)
      0x80002e38 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002e38
      0x80002e3c addi    t0, t0, 1424           #; t0  = 0x80002e38, (wrb) t0  <-- 0x800033c8
; ?? (start.S:148)
      0x80002e40 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002e40
      0x80002e44 addi    t1, t1, 1432           #; t1  = 0x80002e40, (wrb) t1  <-- 0x800033d8
; ?? (start.S:149)
      0x80002e48 bge     t0, t1, pc + 20        #; t0  = 0x800033c8, t1  = 0x800033d8, not taken
; ?? (start.S:150)
      0x80002e4c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x80002e50 addi    t0, t0, 4              #; t0  = 0x800033c8, (wrb) t0  <-- 0x800033cc
; ?? (start.S:152)
      0x80002e54 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x80002e58 blt     t0, t2, pc - 12        #; t0  = 0x800033cc, t2  = 0x800033c8, not taken
; ?? (start.S:158)
      0x80002e5c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x80002e60 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x80002e64 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x80002e68 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x80002e6c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x80002e70 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x80002e74 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e74
      0x80002e78 jalr    ra, ra, -1056          #; ra  = 0x80002e74, (wrb) ra  <-- 0x80002e7c, goto 0x80002a54
; _snrt_init_team (start.c:49)
      0x80002a54 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x80002a58 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x80002a5c lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x80002a60 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x80002a64 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x80002a68 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x80002a6c lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x80002a70 mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x80002a74 mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x80002a78 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x80002a7c csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x80002a80 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x80002a84 divu    a0, a0, t0             #; a0  = 0, t0  = 8
                                                #; (acc) a6  <-- 0x00a7a823
; _snrt_init_team (start.c:54)
      0x80002a88 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x80002a8c sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x80002a90 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x80002a94 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x80002a98 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x80002a9c lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x80002aa0 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x80002aa4 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x80002aa8 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x80002aac lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x80002ab0 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x80002ab4 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x80002ab8 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x80002abc sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x80002ac0 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x80002ac4 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x80002ac8 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x80002acc lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x80002ad0 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x80002ad4 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x80002ad8 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x80002adc sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x80002ae0 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x80002ae4 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x80002ae8 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x80002aec add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x80002af0 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x80002af4 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x80002af8 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x80002afc add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x80002b00 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x80002b04 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x80002b08 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x80002b0c sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x80002b10 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x80002b14 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002b18 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002b1c sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x80002b20 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002b24 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x80002b28 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x80002b2c sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x80002b30 remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x80002b34 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x80002b38 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
                                                #; (acc) tp  <-- 0x00a5a223
      0x80002b3c sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x80002b40 li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x80002b44 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x80002b48 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003b48
      0x80002b4c addi    a1, a1, -1492          #; a1  = 0x80003b48, (wrb) a1  <-- 0x80003574
      0x80002b50 add     a0, a0, a1             #; a0  = 0, a1  = 0x80003574, (wrb) a0  <-- 0x80003574
      0x80002b54 sw      zero, 0(a0)            #; a0  = 0x80003574, 0 ~~> Word[0x80003574]
; _snrt_init_team (start.c:86)
      0x80002b58 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x80002b5c sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x80002b60 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x80002b64 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x80002b68 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x80002b6c sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x80002b70 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x80002b74 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x80002b78 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x80002b7c sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x80002b80 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x80002b84 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x80002b88 lw      a0, 0(a1)              #; a1  = 0x80003574, a0  <~~ Word[0x80003574]
                                                #; (lsu) a0  <-- 0
      0x80002b8c addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x80002b90 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x80002b94 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x80002b98 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x80002b9c sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x80002ba0 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002ba4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002ba8 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x80002bac lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002bb0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002bb4 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x80002bb8 ret                            #; ra  = 0x80002e7c, goto 0x80002e7c
; ?? (start.S:165)
      0x80002e7c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x80002e80 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x80002e84 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x80002e88 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x80002e8c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x80002e90 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x80002e94 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002e94
      0x80002e98 addi    t0, t0, 60             #; t0  = 0x80002e94, (wrb) t0  <-- 0x80002ed0
; ?? (start.S:175)
      0x80002e9c csrw    mtvec, t0              #; t0  = 0x80002ed0, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x80002ea0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ea0
      0x80002ea4 jalr    ra, ra, 544            #; ra  = 0x80002ea0, (wrb) ra  <-- 0x80002ea8, goto 0x800030c0
; ?? (start_snitch.S:33)
      0x800030c0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x800030c4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002ea8 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x800030c8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800030c8
      0x800030cc jalr    ra, ra, -1260          #; ra  = 0x800030c8, (wrb) ra  <-- 0x800030d0, goto 0x80002bdc
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002bdc lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002be0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002be4 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002be8 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002bec lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002bf0 ret                            #; ra  = 0x800030d0, goto 0x800030d0
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x800030d0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x800030d4 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x800030d8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x800030dc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002ea8
; ?? (start_snitch.S:40)
      0x800030e0 ret                            #; ra  = 0x80002ea8, goto 0x80002ea8
; ?? (start.S:183)
      0x80002ea8 auipc   ra, 0xffffd            #; (wrb) ra  <-- 0x7ffffea8
      0x80002eac jalr    ra, ra, 1932           #; ra  = 0x7ffffea8, (wrb) ra  <-- 0x80002eb0, goto 0x80000634
; main (test_access.c:11)
      0x80000634 addi    sp, sp, -96            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff00
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (test_access.c:12)
      0x80000638 sw      ra, 92(sp)             #; sp  = 0x0011ff00, 0x80002eb0 ~~> Word[0x0011ff5c]
      0x8000063c fsd     fs0, 80(sp)            #; 0.0 ~~> Doub[0x0011ff50]
      0x80000640 fsd     fs1, 72(sp)            #; 0.0 ~~> Doub[0x0011ff48]
      0x80000644 fsd     fs2, 64(sp)            #; 0.0 ~~> Doub[0x0011ff40]
      0x80000648 fsd     fs3, 56(sp)            #; 0.0 ~~> Doub[0x0011ff38]
      0x8000064c fsd     fs4, 48(sp)            #; 0.0 ~~> Doub[0x0011ff30]
      0x80000650 fsd     fs5, 40(sp)            #; 0.0 ~~> Doub[0x0011ff28]
      0x80000654 fsd     fs6, 32(sp)            #; 0.0 ~~> Doub[0x0011ff20]
      0x80000658 fsd     fs7, 24(sp)            #; 0.0 ~~> Doub[0x0011ff18]
      0x8000065c fsd     fs8, 16(sp)            #; 0.0 ~~> Doub[0x0011ff10]
      0x80000664 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000668 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000660 fsd     fs9, 8(sp)             #; 0.0 ~~> Doub[0x0011ff08]
      0x8000066c lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
                                                #; (lsu) a1  <-- 0
; main (test_access.c:0)
      0x80000670 li      a0, 0                  #; (wrb) a0  <-- 0
; main (test_access.c:12)
      0x80000674 bnez    a1, pc + 1880          #; a1  = 0, not taken
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (test_access.c:17)
      0x80000678 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000067c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000680 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80000684 lw      a1, 0(a0)              #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff70]
                                                #; (lsu) a1  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in main (test_access.c:17)
      0x80000688 lw      a0, 88(a1)             #; a1  = 0x0011ff70, a0  <~~ Word[0x0011ffc8]
                                                #; (lsu) a0  <-- 0x00100000
      0x8000068c lw      a3, 80(a1)             #; a1  = 0x0011ff70, a3  <~~ Word[0x0011ffc0]
                                                #; (lsu) a3  <-- 0x00100000
      0x80000690 lw      a4, 84(a1)             #; a1  = 0x0011ff70, a4  <~~ Word[0x0011ffc4]
      0x80000694 addi    a2, a0, 224            #; a0  = 0x00100000, (wrb) a2  <-- 0x001000e0
                                                #; (lsu) a4  <-- 0x0001df30
      0x80000698 add     a3, a4, a3             #; a4  = 0x0001df30, a3  = 0x00100000, (wrb) a3  <-- 0x0011df30
      0x8000069c bgeu    a3, a2, pc + 12        #; a3  = 0x0011df30, a2  = 0x001000e0, taken, goto 0x800006a8
; init_data (test_access.c:6)
;  in main (test_access.c:19)
      0x800006a8 srli    a3, a0, 20             #; a0  = 0x00100000, (wrb) a3  <-- 1
      0x800006ac snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
      0x800006b0 lui     a4, 0x120              #; (wrb) a4  <-- 0x00120000
      0x800006b4 addi    a4, a4, -215           #; a4  = 0x00120000, (wrb) a4  <-- 0x0011ff29
      0x800006b8 sltu    a4, a0, a4             #; a0  = 0x00100000, a4  = 0x0011ff29, (wrb) a4  <-- 1
      0x800006bc and     a3, a3, a4             #; a3  = 1, a4  = 1, (wrb) a3  <-- 1
; snrt_l1alloc (alloc.c:34)
;  in main (test_access.c:17)
      0x800006c0 sw      a2, 88(a1)             #; a1  = 0x0011ff70, 0x001000e0 ~~> Word[0x0011ffc8]
; snrt_l1alloc (alloc.c:0)
;  in main (test_access.c:17)
      0x800006c4 beqz    a3, pc + 616           #; a3  = 1, not taken
; main (alloc.c:0)
      0x800006c8 li      a1, 8                  #; (wrb) a1  <-- 8
      0x800006cc li      a2, 27                 #; (wrb) a2  <-- 27
; init_data (test_access.c:6)
;  in main (test_access.c:19)
      0x800006d0 li      a3, 64                 #; (wrb) a3  <-- 64
      0x800006d4 li      a4, 192                #; (wrb) a4  <-- 192
      0x800006d8 scfgw   a2, a3                 #; a2  = 27, a3  = 64
      0x800006dc scfgw   a1, a4                 #; a1  = 8, a4  = 192
      0x800006e0 li      a1, 32                 #; (wrb) a1  <-- 32
      0x800006e4 scfgw   zero, a1               #; a1  = 32
      0x800006e8 scfgwi  a0, 896                #; a0  = 0x00100000
      0x800006ec csrsi   ssr, 1                 #; 
; init_data (test_access.c:0)
;  in main (test_access.c:19)
      0x800006f0 auipc   a1, 0x3                #; (wrb) a1  <-- 0x800036f0
      0x800006f4 addi    a1, a1, -792           #; a1  = 0x800036f0, (wrb) a1  <-- 0x800033d8
      0x800006fc auipc   a1, 0x3                #; (wrb) a1  <-- 0x800036fc
      0x800006f8 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x800033d8]
      0x80000700 addi    a1, a1, -796           #; a1  = 0x800036fc, (wrb) a1  <-- 0x800033e0
                                                #; (f:lsu) ft3  <-- 3.141
      0x80000708 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003708
      0x8000070c addi    a1, a1, -800           #; a1  = 0x80003708, (wrb) a1  <-- 0x800033e8
      0x80000704 fld     ft4, 0(a1)             #; ft4  <~~ Doub[0x800033e0]
                                                #; (f:lsu) ft4  <-- 6.282
      0x80000714 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003714
      0x80000718 addi    a1, a1, -804           #; a1  = 0x80003714, (wrb) a1  <-- 0x800033f0
      0x80000710 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x800033e8]
      0x8000071c fld     ft6, 0(a1)             #; ft6  <~~ Doub[0x800033f0]
                                                #; (f:lsu) ft5  <-- 9.423
; init_data (test_access.c:7)
;  in main (test_access.c:19)
      0x80000720 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.141, ft3  = 3.141, (f:lsu) ft6  <-- 12.564
      0x80000724 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282, (f:fpu) ft0  <-- 3.141
      0x80000728 fsgnj.d ft0, ft5, ft5          #; ft5  = 9.423, ft5  = 9.423, (f:fpu) ft0  <-- 6.282
      0x8000072c fsgnj.d ft0, ft6, ft6          #; ft6  = 12.564, ft6  = 12.564, (f:fpu) ft0  <-- 9.423
                                                #; (f:fpu) ft0  <-- 12.564
; init_data (test_access.c:0)
;  in main (test_access.c:19)
      0x80000730 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003730
      0x80000734 addi    a1, a1, -824           #; a1  = 0x80003730, (wrb) a1  <-- 0x800033f8
      0x8000073c auipc   a1, 0x3                #; (wrb) a1  <-- 0x8000373c
      0x80000738 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x800033f8]
      0x80000740 addi    a1, a1, -828           #; a1  = 0x8000373c, (wrb) a1  <-- 0x80003400
                                                #; (f:lsu) ft3  <-- 15.705
      0x80000748 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003748
      0x8000074c addi    a1, a1, -832           #; a1  = 0x80003748, (wrb) a1  <-- 0x80003408
      0x80000744 fld     ft4, 0(a1)             #; ft4  <~~ Doub[0x80003400]
                                                #; (f:lsu) ft4  <-- 18.846
      0x80000754 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003754
      0x80000758 addi    a1, a1, -836           #; a1  = 0x80003754, (wrb) a1  <-- 0x80003410
      0x80000750 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x80003408]
      0x8000075c fld     ft6, 0(a1)             #; ft6  <~~ Doub[0x80003410]
                                                #; (f:lsu) ft5  <-- 21.9870000
; init_data (test_access.c:7)
;  in main (test_access.c:19)
      0x80000760 fsgnj.d ft0, ft3, ft3          #; ft3  = 15.705, ft3  = 15.705, (f:lsu) ft6  <-- 25.128
      0x80000764 fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846, (f:fpu) ft0  <-- 15.705
      0x80000768 fsgnj.d ft0, ft5, ft5          #; ft5  = 21.9870000, ft5  = 21.9870000, (f:fpu) ft0  <-- 18.846
      0x8000076c fsgnj.d ft0, ft6, ft6          #; ft6  = 25.128, ft6  = 25.128, (f:fpu) ft0  <-- 21.9870000
                                                #; (f:fpu) ft0  <-- 25.128
; init_data (test_access.c:0)
;  in main (test_access.c:19)
      0x80000770 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003770
      0x80000774 addi    a1, a1, -856           #; a1  = 0x80003770, (wrb) a1  <-- 0x80003418
      0x8000077c auipc   a1, 0x3                #; (wrb) a1  <-- 0x8000377c
      0x80000778 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x80003418]
      0x80000780 addi    a1, a1, -860           #; a1  = 0x8000377c, (wrb) a1  <-- 0x80003420
                                                #; (f:lsu) ft3  <-- 28.269
      0x80000788 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003788
      0x8000078c addi    a1, a1, -864           #; a1  = 0x80003788, (wrb) a1  <-- 0x80003428
      0x80000784 fld     ft4, 0(a1)             #; ft4  <~~ Doub[0x80003420]
                                                #; (f:lsu) ft4  <-- 31.41
      0x80000794 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003794
      0x80000798 addi    a1, a1, -868           #; a1  = 0x80003794, (wrb) a1  <-- 0x80003430
      0x80000790 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x80003428]
      0x8000079c fld     ft6, 0(a1)             #; ft6  <~~ Doub[0x80003430]
                                                #; (f:lsu) ft5  <-- 34.551
; init_data (test_access.c:7)
;  in main (test_access.c:19)
      0x800007a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 28.269, ft3  = 28.269, (f:lsu) ft6  <-- 37.692
      0x800007a4 fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41, (f:fpu) ft0  <-- 28.269
      0x800007a8 fsgnj.d ft0, ft5, ft5          #; ft5  = 34.551, ft5  = 34.551, (f:fpu) ft0  <-- 31.41
      0x800007ac fsgnj.d ft0, ft6, ft6          #; ft6  = 37.692, ft6  = 37.692, (f:fpu) ft0  <-- 34.551
                                                #; (f:fpu) ft0  <-- 37.692
; init_data (test_access.c:0)
;  in main (test_access.c:19)
      0x800007b0 auipc   a1, 0x3                #; (wrb) a1  <-- 0x800037b0
      0x800007b4 addi    a1, a1, -888           #; a1  = 0x800037b0, (wrb) a1  <-- 0x80003438
      0x800007bc auipc   a1, 0x3                #; (wrb) a1  <-- 0x800037bc
      0x800007b8 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x80003438]
      0x800007c0 addi    a1, a1, -892           #; a1  = 0x800037bc, (wrb) a1  <-- 0x80003440
                                                #; (f:lsu) ft3  <-- 40.833
      0x800007c8 auipc   a1, 0x3                #; (wrb) a1  <-- 0x800037c8
      0x800007cc addi    a1, a1, -896           #; a1  = 0x800037c8, (wrb) a1  <-- 0x80003448
      0x800007c4 fld     ft4, 0(a1)             #; ft4  <~~ Doub[0x80003440]
                                                #; (f:lsu) ft4  <-- 43.9740000
      0x800007d4 auipc   a1, 0x3                #; (wrb) a1  <-- 0x800037d4
      0x800007d8 addi    a1, a1, -900           #; a1  = 0x800037d4, (wrb) a1  <-- 0x80003450
      0x800007d0 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x80003448]
      0x800007dc fld     ft6, 0(a1)             #; ft6  <~~ Doub[0x80003450]
                                                #; (f:lsu) ft5  <-- 47.115
; init_data (test_access.c:7)
;  in main (test_access.c:19)
      0x800007e0 fsgnj.d ft0, ft3, ft3          #; ft3  = 40.833, ft3  = 40.833, (f:lsu) ft6  <-- 50.256
      0x800007e4 fsgnj.d ft0, ft4, ft4          #; ft4  = 43.9740000, ft4  = 43.9740000, (f:fpu) ft0  <-- 40.833
      0x800007e8 fsgnj.d ft0, ft5, ft5          #; ft5  = 47.115, ft5  = 47.115, (f:fpu) ft0  <-- 43.9740000
      0x800007ec fsgnj.d ft0, ft6, ft6          #; ft6  = 50.256, ft6  = 50.256, (f:fpu) ft0  <-- 47.115
                                                #; (f:fpu) ft0  <-- 50.256
; init_data (test_access.c:0)
;  in main (test_access.c:19)
      0x800007f0 auipc   a1, 0x3                #; (wrb) a1  <-- 0x800037f0
      0x800007f4 addi    a1, a1, -920           #; a1  = 0x800037f0, (wrb) a1  <-- 0x80003458
      0x800007fc auipc   a1, 0x3                #; (wrb) a1  <-- 0x800037fc
      0x800007f8 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x80003458]
      0x80000800 addi    a1, a1, -924           #; a1  = 0x800037fc, (wrb) a1  <-- 0x80003460
                                                #; (f:lsu) ft3  <-- 53.397
      0x80000808 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003808
      0x8000080c addi    a1, a1, -928           #; a1  = 0x80003808, (wrb) a1  <-- 0x80003468
      0x80000804 fld     ft4, 0(a1)             #; ft4  <~~ Doub[0x80003460]
                                                #; (f:lsu) ft4  <-- 56.538
      0x80000814 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003814
      0x80000818 addi    a1, a1, -932           #; a1  = 0x80003814, (wrb) a1  <-- 0x80003470
      0x80000810 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x80003468]
      0x8000081c fld     ft6, 0(a1)             #; ft6  <~~ Doub[0x80003470]
                                                #; (f:lsu) ft5  <-- 59.679
; init_data (test_access.c:7)
;  in main (test_access.c:19)
      0x80000820 fsgnj.d ft0, ft3, ft3          #; ft3  = 53.397, ft3  = 53.397, (f:lsu) ft6  <-- 62.82
      0x80000824 fsgnj.d ft0, ft4, ft4          #; ft4  = 56.538, ft4  = 56.538, (f:fpu) ft0  <-- 53.397
      0x80000828 fsgnj.d ft0, ft5, ft5          #; ft5  = 59.679, ft5  = 59.679, (f:fpu) ft0  <-- 56.538
      0x8000082c fsgnj.d ft0, ft6, ft6          #; ft6  = 62.82, ft6  = 62.82, (f:fpu) ft0  <-- 59.679
                                                #; (f:fpu) ft0  <-- 62.82
; init_data (test_access.c:0)
;  in main (test_access.c:19)
      0x80000830 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003830
      0x80000834 addi    a1, a1, -952           #; a1  = 0x80003830, (wrb) a1  <-- 0x80003478
      0x8000083c auipc   a1, 0x3                #; (wrb) a1  <-- 0x8000383c
      0x80000838 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x80003478]
      0x80000840 addi    a1, a1, -956           #; a1  = 0x8000383c, (wrb) a1  <-- 0x80003480
                                                #; (f:lsu) ft3  <-- 65.961
      0x80000848 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003848
      0x8000084c addi    a1, a1, -960           #; a1  = 0x80003848, (wrb) a1  <-- 0x80003488
      0x80000844 fld     ft4, 0(a1)             #; ft4  <~~ Doub[0x80003480]
                                                #; (f:lsu) ft4  <-- 69.102
      0x80000854 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003854
      0x80000858 addi    a1, a1, -964           #; a1  = 0x80003854, (wrb) a1  <-- 0x80003490
      0x80000850 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x80003488]
      0x8000085c fld     ft6, 0(a1)             #; ft6  <~~ Doub[0x80003490]
                                                #; (f:lsu) ft5  <-- 72.243
; init_data (test_access.c:7)
;  in main (test_access.c:19)
      0x80000860 fsgnj.d ft0, ft3, ft3          #; ft3  = 65.961, ft3  = 65.961, (f:lsu) ft6  <-- 75.384
      0x80000864 fsgnj.d ft0, ft4, ft4          #; ft4  = 69.102, ft4  = 69.102, (f:fpu) ft0  <-- 65.961
      0x80000868 fsgnj.d ft0, ft5, ft5          #; ft5  = 72.243, ft5  = 72.243, (f:fpu) ft0  <-- 69.102
      0x8000086c fsgnj.d ft0, ft6, ft6          #; ft6  = 75.384, ft6  = 75.384, (f:fpu) ft0  <-- 72.243
                                                #; (f:fpu) ft0  <-- 75.384
; init_data (test_access.c:0)
;  in main (test_access.c:19)
      0x80000870 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003870
      0x80000874 addi    a1, a1, -984           #; a1  = 0x80003870, (wrb) a1  <-- 0x80003498
      0x8000087c auipc   a1, 0x3                #; (wrb) a1  <-- 0x8000387c
      0x80000878 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x80003498]
      0x80000880 addi    a1, a1, -988           #; a1  = 0x8000387c, (wrb) a1  <-- 0x800034a0
                                                #; (f:lsu) ft3  <-- 78.525
      0x80000888 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003888
      0x8000088c addi    a1, a1, -992           #; a1  = 0x80003888, (wrb) a1  <-- 0x800034a8
      0x80000884 fld     ft4, 0(a1)             #; ft4  <~~ Doub[0x800034a0]
                                                #; (f:lsu) ft4  <-- 81.666
      0x80000894 auipc   a1, 0x3                #; (wrb) a1  <-- 0x80003894
      0x80000898 addi    a1, a1, -996           #; a1  = 0x80003894, (wrb) a1  <-- 0x800034b0
      0x80000890 fld     ft5, 0(a1)             #; ft5  <~~ Doub[0x800034a8]
      0x8000089c fld     ft6, 0(a1)             #; ft6  <~~ Doub[0x800034b0]
                                                #; (f:lsu) ft5  <-- 84.807
; init_data (test_access.c:7)
;  in main (test_access.c:19)
      0x800008a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 78.525, ft3  = 78.525, (f:lsu) ft6  <-- 87.9480000
      0x800008a4 fsgnj.d ft0, ft4, ft4          #; ft4  = 81.666, ft4  = 81.666, (f:fpu) ft0  <-- 78.525
      0x800008a8 fsgnj.d ft0, ft5, ft5          #; ft5  = 84.807, ft5  = 84.807, (f:fpu) ft0  <-- 81.666
      0x800008ac fsgnj.d ft0, ft6, ft6          #; ft6  = 87.9480000, ft6  = 87.9480000, (f:fpu) ft0  <-- 84.807
                                                #; (f:fpu) ft0  <-- 87.9480000
; init_data (test_access.c:0)
;  in main (test_access.c:19)
      0x800008b0 csrci   ssr, 1                 #; 
; main (test_access.c:25)
      0x800008b4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x00100000]
      0x800008b8 fld     ft1, 8(a0)             #; ft1  <~~ Doub[0x00100008], (f:lsu) ft0  <-- 3.141
      0x800008bc fld     ft3, 16(a0)            #; ft3  <~~ Doub[0x00100010], (f:lsu) ft1  <-- 6.282
                                                #; (f:lsu) ft3  <-- 9.423
      0x800008c0 fld     ft5, 24(a0)            #; ft5  <~~ Doub[0x00100018]
      0x800008c4 fld     ft2, 32(a0)            #; ft2  <~~ Doub[0x00100020], (f:lsu) ft5  <-- 12.564
      0x800008c8 fld     ft4, 40(a0)            #; ft4  <~~ Doub[0x00100028], (f:lsu) ft2  <-- 15.705
      0x800008cc fld     ft6, 48(a0)            #; ft6  <~~ Doub[0x00100030], (f:lsu) ft4  <-- 18.846
                                                #; (f:lsu) ft6  <-- 21.9870000
      0x800008d0 fld     ft7, 56(a0)            #; ft7  <~~ Doub[0x00100038]
      0x800008d4 fld     fa0, 64(a0)            #; fa0  <~~ Doub[0x00100040], (f:lsu) ft7  <-- 25.128
      0x800008d8 fld     fa1, 72(a0)            #; fa1  <~~ Doub[0x00100048], (f:lsu) fa0  <-- 28.269
      0x800008dc fld     fa2, 80(a0)            #; fa2  <~~ Doub[0x00100050], (f:lsu) fa1  <-- 31.41
                                                #; (f:lsu) fa2  <-- 34.551
      0x800008e0 fld     fa3, 88(a0)            #; fa3  <~~ Doub[0x00100058]
      0x800008e4 fld     fa4, 96(a0)            #; fa4  <~~ Doub[0x00100060], (f:lsu) fa3  <-- 37.692
      0x800008e8 fld     fa5, 104(a0)           #; fa5  <~~ Doub[0x00100068], (f:lsu) fa4  <-- 40.833
      0x800008ec fld     fa6, 112(a0)           #; fa6  <~~ Doub[0x00100070], (f:lsu) fa5  <-- 43.9740000
                                                #; (f:lsu) fa6  <-- 47.115
      0x800008f0 fld     fa7, 120(a0)           #; fa7  <~~ Doub[0x00100078]
      0x800008f4 fld     ft8, 128(a0)           #; ft8  <~~ Doub[0x00100080], (f:lsu) fa7  <-- 50.256
      0x800008f8 fld     ft9, 136(a0)           #; ft9  <~~ Doub[0x00100088], (f:lsu) ft8  <-- 53.397
      0x800008fc fld     ft10, 144(a0)          #; ft10 <~~ Doub[0x00100090], (f:lsu) ft9  <-- 56.538
                                                #; (f:lsu) ft10 <-- 59.679
      0x80000900 fld     ft11, 152(a0)          #; ft11 <~~ Doub[0x00100098]
      0x80000904 fld     fs0, 160(a0)           #; fs0  <~~ Doub[0x001000a0], (f:lsu) ft11 <-- 62.82
      0x80000908 fld     fs2, 168(a0)           #; fs2  <~~ Doub[0x001000a8], (f:lsu) fs0  <-- 65.961
      0x8000090c fld     fs3, 176(a0)           #; fs3  <~~ Doub[0x001000b0], (f:lsu) fs2  <-- 69.102
                                                #; (f:lsu) fs3  <-- 72.243
      0x80000910 fld     fs4, 184(a0)           #; fs4  <~~ Doub[0x001000b8]
      0x80000914 fld     fs5, 192(a0)           #; fs5  <~~ Doub[0x001000c0], (f:lsu) fs4  <-- 75.384
      0x80000918 fld     fs6, 200(a0)           #; fs6  <~~ Doub[0x001000c8], (f:lsu) fs5  <-- 78.525
      0x8000091c fld     fs7, 208(a0)           #; fs7  <~~ Doub[0x001000d0], (f:lsu) fs6  <-- 81.666
                                                #; (f:lsu) fs7  <-- 84.807
; main (test_access.c:33)
      0x80000928 j       pc + 0x388             #; goto 0x80000cb0
      0x80000920 fld     fs8, 216(a0)           #; fs8  <~~ Doub[0x001000d8]
      0x80000924 fsgnj.d fs1, ft0, ft0          #; ft0  = 3.141, ft0  = 3.141, (f:lsu) fs8  <-- 87.9480000
                                                #; (f:fpu) fs1  <-- 3.141
; main (test_access.c:25)
      0x80000cb0 fadd.d  fs9, fs7, fs8          #; fs7  = 84.807, fs8  = 87.9480000
                                                #; (f:fpu) fs9  <-- 172.755
      0x80000cb4 fadd.d  fs9, fs9, fs6          #; fs9  = 172.755, fs6  = 81.666
                                                #; (f:fpu) fs9  <-- 254.421
      0x80000cb8 fadd.d  fs9, fs9, fs5          #; fs9  = 254.421, fs5  = 78.525
                                                #; (f:fpu) fs9  <-- 332.946
      0x80000cbc fadd.d  fs9, fs9, fs4          #; fs9  = 332.946, fs4  = 75.384
                                                #; (f:fpu) fs9  <-- 408.3300000
      0x80000cc0 fadd.d  fs9, fs9, fs3          #; fs9  = 408.3300000, fs3  = 72.243
                                                #; (f:fpu) fs9  <-- 480.5730000
      0x80000cc4 fadd.d  fs9, fs9, fs2          #; fs9  = 480.5730000, fs2  = 69.102
                                                #; (f:fpu) fs9  <-- 549.6750000
      0x80000cc8 fadd.d  fs9, fs9, fs0          #; fs9  = 549.6750000, fs0  = 65.961
                                                #; (f:fpu) fs9  <-- 615.6360000
      0x80000ccc fadd.d  fs9, fs9, ft11         #; fs9  = 615.6360000, ft11 = 62.82
                                                #; (f:fpu) fs9  <-- 678.4560000
      0x80000cd0 fadd.d  fs9, fs9, ft10         #; fs9  = 678.4560000, ft10 = 59.679
                                                #; (f:fpu) fs9  <-- 738.1350000
      0x80000cd4 fadd.d  fs9, fs9, ft9          #; fs9  = 738.1350000, ft9  = 56.538
                                                #; (f:fpu) fs9  <-- 794.6730000
      0x80000cd8 fadd.d  fs9, fs9, ft8          #; fs9  = 794.6730000, ft8  = 53.397
                                                #; (f:fpu) fs9  <-- 848.0700000
      0x80000cdc fadd.d  fs9, fs9, fa7          #; fs9  = 848.0700000, fa7  = 50.256
                                                #; (f:fpu) fs9  <-- 898.3260000
      0x80000ce0 fadd.d  fs9, fs9, fa6          #; fs9  = 898.3260000, fa6  = 47.115
                                                #; (f:fpu) fs9  <-- 945.4410000
      0x80000ce4 fadd.d  fs9, fs9, fa5          #; fs9  = 945.4410000, fa5  = 43.9740000
                                                #; (f:fpu) fs9  <-- 989.4150000
      0x80000ce8 fadd.d  fs9, fs9, fa4          #; fs9  = 989.4150000, fa4  = 40.833
                                                #; (f:fpu) fs9  <-- 1030.2480000
      0x80000cec fadd.d  fs9, fs9, fa3          #; fs9  = 1030.2480000, fa3  = 37.692
                                                #; (f:fpu) fs9  <-- 1067.9400000
      0x80000cf0 fadd.d  fs9, fs9, fa2          #; fs9  = 1067.9400000, fa2  = 34.551
                                                #; (f:fpu) fs9  <-- 1102.4910000
      0x80000cf4 fadd.d  fs9, fs9, fa1          #; fs9  = 1102.4910000, fa1  = 31.41
                                                #; (f:fpu) fs9  <-- 1133.9010000
      0x80000cf8 fadd.d  fs9, fs9, fa0          #; fs9  = 1133.9010000, fa0  = 28.269
                                                #; (f:fpu) fs9  <-- 1162.1700000
      0x80000cfc fadd.d  fs9, fs9, ft7          #; fs9  = 1162.1700000, ft7  = 25.128
                                                #; (f:fpu) fs9  <-- 1187.2980000
      0x80000d00 fadd.d  fs9, fs9, ft6          #; fs9  = 1187.2980000, ft6  = 21.9870000
                                                #; (f:fpu) fs9  <-- 1209.2850000
      0x80000d04 fadd.d  fs9, fs9, ft4          #; fs9  = 1209.2850000, ft4  = 18.846
                                                #; (f:fpu) fs9  <-- 1228.1310000
      0x80000d08 fadd.d  fs9, fs9, ft2          #; fs9  = 1228.1310000, ft2  = 15.705
                                                #; (f:fpu) fs9  <-- 1243.8360000
      0x80000d0c fadd.d  fs9, fs9, ft5          #; fs9  = 1243.8360000, ft5  = 12.564
                                                #; (f:fpu) fs9  <-- 1256.4000000
      0x80000d10 fadd.d  fs9, fs9, ft3          #; fs9  = 1256.4000000, ft3  = 9.423
                                                #; (f:fpu) fs9  <-- 1265.8230000
      0x80000d14 fadd.d  fs9, fs9, ft1          #; fs9  = 1265.8230000, ft1  = 6.282
                                                #; (f:fpu) fs9  <-- 1272.1050000
      0x80000d18 fadd.d  fs1, fs9, fs1          #; fs9  = 1272.1050000, fs1  = 3.141
                                                #; (f:fpu) fs1  <-- 1275.2460000
; main (test_access.c:33)
      0x80000d1c fadd.d  fs2, fs2, fs1          #; fs2  = 69.102, fs1  = 1275.2460000
                                                #; (f:fpu) fs2  <-- 1344.3480000
      0x80000d20 fadd.d  fs2, fs3, fs2          #; fs3  = 72.243, fs2  = 1344.3480000
                                                #; (f:fpu) fs2  <-- 1416.5910000
      0x80000d24 fadd.d  fs2, fs4, fs2          #; fs4  = 75.384, fs2  = 1416.5910000
                                                #; (f:fpu) fs2  <-- 1491.9750000
      0x80000d28 fadd.d  fs2, fs5, fs2          #; fs5  = 78.525, fs2  = 1491.9750000
                                                #; (f:fpu) fs2  <-- 1570.5000000
      0x80000d2c fadd.d  fs2, fs6, fs2          #; fs6  = 81.666, fs2  = 1570.5000000
                                                #; (f:fpu) fs2  <-- 1652.1660000
      0x80000d30 fadd.d  fs2, fs7, fs2          #; fs7  = 84.807, fs2  = 1652.1660000
                                                #; (f:fpu) fs2  <-- 1736.9730000
      0x80000d34 fadd.d  fs2, fs8, fs2          #; fs8  = 87.9480000, fs2  = 1736.9730000
                                                #; (f:fpu) fs2  <-- 1824.9210000
      0x80000d38 fadd.d  fa6, fa6, fs2          #; fa6  = 47.115, fs2  = 1824.9210000
                                                #; (f:fpu) fa6  <-- 1872.0360000
      0x80000d3c fadd.d  fa6, fa7, fa6          #; fa7  = 50.256, fa6  = 1872.0360000
                                                #; (f:fpu) fa6  <-- 1922.2920000
      0x80000d40 fadd.d  fa6, ft8, fa6          #; ft8  = 53.397, fa6  = 1922.2920000
                                                #; (f:fpu) fa6  <-- 1975.6890000
      0x80000d44 fadd.d  fa6, ft9, fa6          #; ft9  = 56.538, fa6  = 1975.6890000
                                                #; (f:fpu) fa6  <-- 2032.2270000
      0x80000d48 fadd.d  fa6, ft10, fa6         #; ft10 = 59.679, fa6  = 2032.2270000
; main (test_access.c:0)
      0x80000d80 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002d80
      0x80000d84 addi    a0, a0, 1848           #; a0  = 0x80002d80, (wrb) a0  <-- 0x800034b8
; ?? (??:0)
                                                #; (f:fpu) fa6  <-- 2091.9060000
; main (test_access.c:33)
      0x80000d4c fadd.d  fa6, ft11, fa6         #; ft11 = 62.82, fa6  = 2091.9060000
                                                #; (f:fpu) fa6  <-- 2154.7260000
      0x80000d50 fadd.d  fa6, fs0, fa6          #; fs0  = 65.961, fa6  = 2154.7260000
                                                #; (f:fpu) fa6  <-- 2220.6870000
      0x80000d54 fadd.d  ft7, ft7, fa6          #; ft7  = 25.128, fa6  = 2220.6870000
                                                #; (f:fpu) ft7  <-- 2245.8150000
      0x80000d58 fadd.d  ft7, fa0, ft7          #; fa0  = 28.269, ft7  = 2245.8150000
                                                #; (f:fpu) ft7  <-- 2274.0840000
      0x80000d5c fadd.d  ft7, fa1, ft7          #; fa1  = 31.41, ft7  = 2274.0840000
                                                #; (f:fpu) ft7  <-- 2305.494
      0x80000d60 fadd.d  ft7, fa2, ft7          #; fa2  = 34.551, ft7  = 2305.494
; main (test_access.c:48)
      0x80000da4 lw      a2, 0(sp)              #; sp  = 0x0011ff00, a2  <~~ Word[0x0011ff00]
                                                #; (f:fpu) ft7  <-- 2340.045
; main (test_access.c:33)
      0x80000d64 fadd.d  ft7, fa3, ft7          #; fa3  = 37.692, ft7  = 2340.045
                                                #; (lsu) a2  <-- 0
; main (test_access.c:48)
      0x80000da8 lw      a3, 4(sp)              #; sp  = 0x0011ff00, a3  <~~ Word[0x0011ff04]
                                                #; (f:fpu) ft7  <-- 2377.737
      0x80000dac auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002dac
      0x80000d68 fadd.d  ft7, fa4, ft7          #; fa4  = 40.833, ft7  = 2377.737
                                                #; (lsu) a3  <-- 0
                                                #; (f:fpu) ft7  <-- 2418.57
; main (test_access.c:33)
      0x80000d6c fadd.d  ft7, fa5, ft7          #; fa5  = 43.9740000, ft7  = 2418.57
; main (test_access.c:48)
      0x80000db0 addi    a0, a0, 905            #; a0  = 0x80002dac, (wrb) a0  <-- 0x80003135
      0x80000db4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000db4
                                                #; (f:fpu) ft7  <-- 2462.5440000
      0x80000db8 jalr    ra, ra, 76             #; ra  = 0x80000db4, (wrb) ra  <-- 0x80000dbc, goto 0x80000e00
      0x80000d70 fadd.d  ft0, ft0, ft7          #; ft0  = 3.141, ft7  = 2462.5440000
; printf_ (printf.c:863)
      0x80000e00 addi    sp, sp, -48            #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011fed0
                                                #; (f:fpu) ft0  <-- 2465.6850000
      0x80000e04 sw      ra, 12(sp)             #; sp  = 0x0011fed0, 0x80000dbc ~~> Word[0x0011fedc]
      0x80000d74 fadd.d  ft0, ft1, ft0          #; ft1  = 6.282, ft0  = 2465.6850000
      0x80000e08 mv      t0, a0                 #; a0  = 0x80003135, (wrb) t0  <-- 0x80003135
      0x80000e0c sw      a7, 44(sp)             #; sp  = 0x0011fed0, 0xffff0000 ~~> Word[0x0011fefc]
                                                #; (f:fpu) ft0  <-- 2471.9670000
; main (test_access.c:33)
      0x80000d78 fadd.d  ft0, ft3, ft0          #; ft3  = 9.423, ft0  = 2471.9670000
                                                #; (f:fpu) ft0  <-- 2481.3900000
      0x80000d7c fadd.d  ft0, ft5, ft0          #; ft5  = 12.564, ft0  = 2481.3900000
; main (test_access.c:0)
      0x80000d88 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800034b8]
; printf_ (printf.c:863)
      0x80000e10 sw      a6, 40(sp)             #; sp  = 0x0011fed0, 0x00120000 ~~> Word[0x0011fef8]
                                                #; (f:fpu) ft0  <-- 2493.954
      0x80000e14 sw      a5, 36(sp)             #; sp  = 0x0011fed0, 0x0011ff70 ~~> Word[0x0011fef4]
      0x80000d8c fadd.d  ft0, ft2, ft0          #; ft2  = 15.705, ft0  = 2493.954
      0x80000e18 sw      a4, 32(sp)             #; sp  = 0x0011fed0, 192 ~~> Word[0x0011fef0]
      0x80000e1c sw      a3, 28(sp)             #; sp  = 0x0011fed0, 0 ~~> Word[0x0011feec]
                                                #; (f:fpu) ft0  <-- 2509.659
; main (test_access.c:33)
      0x80000d90 fadd.d  ft0, ft4, ft0          #; ft4  = 18.846, ft0  = 2509.659
                                                #; (f:lsu) ft1  <-- -2.0
                                                #; (f:fpu) ft0  <-- 2528.505
; main (test_access.c:45)
      0x80000d94 fadd.d  ft0, ft6, ft0          #; ft6  = 21.9870000, ft0  = 2528.505
; printf_ (printf.c:863)
      0x80000e20 sw      a2, 24(sp)             #; sp  = 0x0011fed0, 0 ~~> Word[0x0011fee8]
                                                #; (f:fpu) ft0  <-- 2550.492
      0x80000e24 sw      a1, 20(sp)             #; sp  = 0x0011fed0, 0x800034b0 ~~> Word[0x0011fee4]
      0x80000d98 fmadd.d ft0, fs1, ft1, ft0     #; fs1  = 1275.2460000, ft1  = -2.0, ft0  = 2550.492
      0x80000e28 addi    a0, sp, 20             #; sp  = 0x0011fed0, (wrb) a0  <-- 0x0011fee4
; printf_ (printf.c:865)
      0x80000e2c sw      a0, 8(sp)              #; sp  = 0x0011fed0, 0x0011fee4 ~~> Word[0x0011fed8]
                                                #; (f:fpu) ft0  <-- -0.0000000
; main (test_access.c:46)
      0x80000d9c fsgnjx.d fs0, ft0, ft0         #; ft0  = -0.0000000, ft0  = -0.0000000
                                                #; (f:fpu) fs0  <-- 0.0000000
; main (test_access.c:48)
      0x80000da0 fsd     fs0, 0(sp)             #; 0.0000000 ~~> Doub[0x0011ff00]
; printf_ (printf.c:867)
      0x80000e30 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001e30
      0x80000e34 addi    a0, a0, -988           #; a0  = 0x80001e30, (wrb) a0  <-- 0x80001a54
      0x80000e38 addi    a1, sp, 7              #; sp  = 0x0011fed0, (wrb) a1  <-- 0x0011fed7
      0x80000e3c li      a2, -1                 #; (wrb) a2  <-- -1
      0x80000e40 addi    a4, sp, 20             #; sp  = 0x0011fed0, (wrb) a4  <-- 0x0011fee4
      0x80000e44 mv      a3, t0                 #; t0  = 0x80003135, (wrb) a3  <-- 0x80003135
      0x80000e48 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000e48
      0x80000e4c jalr    ra, ra, 20             #; ra  = 0x80000e48, (wrb) ra  <-- 0x80000e50, goto 0x80000e5c
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000e5c addi    sp, sp, -112           #; sp  = 0x0011fed0, (wrb) sp  <-- 0x0011fe60
      0x80000e60 sw      ra, 108(sp)            #; sp  = 0x0011fe60, 0x80000e50 ~~> Word[0x0011fecc]
      0x80000e64 sw      s0, 104(sp)            #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fec8]
      0x80000e68 sw      s1, 100(sp)            #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fec4]
      0x80000e6c sw      s2, 96(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fec0]
      0x80000e70 sw      s3, 92(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011febc]
      0x80000e74 sw      s4, 88(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011feb8]
      0x80000e78 sw      s5, 84(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011feb4]
      0x80000e7c sw      s6, 80(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011feb0]
      0x80000e80 sw      s7, 76(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011feac]
      0x80000e84 sw      s8, 72(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fea8]
      0x80000e88 sw      s9, 68(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fea4]
      0x80000e8c sw      s10, 64(sp)            #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fea0]
      0x80000e90 sw      s11, 60(sp)            #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fe9c]
      0x80000e94 mv      s3, a4                 #; a4  = 0x0011fee4, (wrb) s3  <-- 0x0011fee4
      0x80000e98 mv      s0, a3                 #; a3  = 0x80003135, (wrb) s0  <-- 0x80003135
      0x80000e9c mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x80000ea0 mv      s4, a1                 #; a1  = 0x0011fed7, (wrb) s4  <-- 0x0011fed7
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x80000ea4 beqz    a1, pc + 12            #; a1  = 0x0011fed7, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ea8 mv      s2, a0                 #; a0  = 0x80001a54, (wrb) s2  <-- 0x80001a54
      0x80000eac j       pc + 0xc               #; goto 0x80000eb8
      0x80000eb8 li      s8, 0                  #; (wrb) s8  <-- 0
      0x80000ebc li      s6, 37                 #; (wrb) s6  <-- 37
      0x80000ec0 li      s11, 16                #; (wrb) s11 <-- 16
      0x80000ec4 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000ec8 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000ecc addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000ed0 sw      a0, 24(sp)             #; sp  = 0x0011fe60, 2048 ~~> Word[0x0011fe78]
      0x80000ed4 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000ed8 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000edc sw      a0, 16(sp)             #; sp  = 0x0011fe60, 65535 ~~> Word[0x0011fe70]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ee0 addi    s10, s0, 2             #; s0  = 0x80003135, (wrb) s10 <-- 0x80003137
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ee4 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000ee8 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000eec lbu     a0, 0(s0)              #; s0  = 0x80003135, a0  <~~ Byte[0x80003135]
                                                #; (lsu) a0  <-- 101
      0x80000ef0 beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x80000ef4 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ef8 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000efc mv      a1, s4                 #; s4  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
      0x80000f00 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000f04 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000f08 jalr    s2                     #; s2  = 0x80001a54, (wrb) ra  <-- 0x80000f0c, goto 0x80001a54
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001a54 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
      0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
      0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 0
      0x80001a74 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 1 ~~> Word[0x80003574]
      0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 0, (wrb) a4  <-- 0x80003574
      0x80001a80 sb      a0, 72(a4)             #; a4  = 0x80003574, 101 ~~> Byte[0x800035bc]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 1
      0x80001a88 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x80001a8c snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x80001a90 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x80001a94 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001afc ret                            #; ra  = 0x80000f0c, goto 0x80000f0c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000f0c addi    s0, s0, 1              #; s0  = 0x80003135, (wrb) s0  <-- 0x80003136
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000f10 addi    s10, s10, 1            #; s10 = 0x80003137, (wrb) s10 <-- 0x80003138
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000f14 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000f18 lbu     a0, 0(s0)              #; s0  = 0x80003136, a0  <~~ Byte[0x80003136]
                                                #; (lsu) a0  <-- 114
      0x80000f1c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ef4
      0x80000ef4 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ef8 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000efc mv      a1, s4                 #; s4  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
      0x80000f00 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000f04 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000f08 jalr    s2                     #; s2  = 0x80001a54, (wrb) ra  <-- 0x80000f0c, goto 0x80001a54
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001a54 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
      0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
      0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 1
      0x80001a74 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 2 ~~> Word[0x80003574]
      0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 1, (wrb) a4  <-- 0x80003575
      0x80001a80 sb      a0, 72(a4)             #; a4  = 0x80003575, 114 ~~> Byte[0x800035bd]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 2
      0x80001a88 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x80001a8c snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x80001a90 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001a94 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001afc ret                            #; ra  = 0x80000f0c, goto 0x80000f0c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000f0c addi    s0, s0, 1              #; s0  = 0x80003136, (wrb) s0  <-- 0x80003137
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000f10 addi    s10, s10, 1            #; s10 = 0x80003138, (wrb) s10 <-- 0x80003139
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000f14 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000f18 lbu     a0, 0(s0)              #; s0  = 0x80003137, a0  <~~ Byte[0x80003137]
                                                #; (lsu) a0  <-- 114
      0x80000f1c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ef4
      0x80000ef4 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ef8 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000efc mv      a1, s4                 #; s4  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
      0x80000f00 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000f04 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000f08 jalr    s2                     #; s2  = 0x80001a54, (wrb) ra  <-- 0x80000f0c, goto 0x80001a54
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001a54 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
      0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
      0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 2
      0x80001a74 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 3 ~~> Word[0x80003574]
      0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 2, (wrb) a4  <-- 0x80003576
      0x80001a80 sb      a0, 72(a4)             #; a4  = 0x80003576, 114 ~~> Byte[0x800035be]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 3
      0x80001a88 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x80001a8c snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x80001a90 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001a94 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001afc ret                            #; ra  = 0x80000f0c, goto 0x80000f0c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000f0c addi    s0, s0, 1              #; s0  = 0x80003137, (wrb) s0  <-- 0x80003138
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000f10 addi    s10, s10, 1            #; s10 = 0x80003139, (wrb) s10 <-- 0x8000313a
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000f14 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000f18 lbu     a0, 0(s0)              #; s0  = 0x80003138, a0  <~~ Byte[0x80003138]
                                                #; (lsu) a0  <-- 111
      0x80000f1c bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000ef4
      0x80000ef4 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ef8 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000efc mv      a1, s4                 #; s4  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
      0x80000f00 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000f04 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000f08 jalr    s2                     #; s2  = 0x80001a54, (wrb) ra  <-- 0x80000f0c, goto 0x80001a54
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001a54 beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
      0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
      0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 3
      0x80001a74 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 4 ~~> Word[0x80003574]
      0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 3, (wrb) a4  <-- 0x80003577
      0x80001a80 sb      a0, 72(a4)             #; a4  = 0x80003577, 111 ~~> Byte[0x800035bf]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 4
      0x80001a88 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x80001a8c snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x80001a90 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x80001a94 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001afc ret                            #; ra  = 0x80000f0c, goto 0x80000f0c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000f0c addi    s0, s0, 1              #; s0  = 0x80003138, (wrb) s0  <-- 0x80003139
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000f10 addi    s10, s10, 1            #; s10 = 0x8000313a, (wrb) s10 <-- 0x8000313b
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000f14 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000f18 lbu     a0, 0(s0)              #; s0  = 0x80003139, a0  <~~ Byte[0x80003139]
                                                #; (lsu) a0  <-- 114
      0x80000f1c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ef4
      0x80000ef4 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ef8 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000efc mv      a1, s4                 #; s4  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
      0x80000f00 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000f04 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000f08 jalr    s2                     #; s2  = 0x80001a54, (wrb) ra  <-- 0x80000f0c, goto 0x80001a54
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001a54 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
      0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
      0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 4
      0x80001a74 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 5 ~~> Word[0x80003574]
      0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 4, (wrb) a4  <-- 0x80003578
      0x80001a80 sb      a0, 72(a4)             #; a4  = 0x80003578, 114 ~~> Byte[0x800035c0]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 5
      0x80001a88 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x80001a8c snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x80001a90 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001a94 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001afc ret                            #; ra  = 0x80000f0c, goto 0x80000f0c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000f0c addi    s0, s0, 1              #; s0  = 0x80003139, (wrb) s0  <-- 0x8000313a
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000f10 addi    s10, s10, 1            #; s10 = 0x8000313b, (wrb) s10 <-- 0x8000313c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000f14 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000f18 lbu     a0, 0(s0)              #; s0  = 0x8000313a, a0  <~~ Byte[0x8000313a]
                                                #; (lsu) a0  <-- 32
      0x80000f1c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000ef4
      0x80000ef4 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ef8 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000efc mv      a1, s4                 #; s4  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
      0x80000f00 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000f04 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000f08 jalr    s2                     #; s2  = 0x80001a54, (wrb) ra  <-- 0x80000f0c, goto 0x80001a54
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001a54 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
      0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
      0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 5
      0x80001a74 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 6 ~~> Word[0x80003574]
      0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 5, (wrb) a4  <-- 0x80003579
      0x80001a80 sb      a0, 72(a4)             #; a4  = 0x80003579, 32 ~~> Byte[0x800035c1]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 6
      0x80001a88 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x80001a8c snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x80001a90 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001a94 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001afc ret                            #; ra  = 0x80000f0c, goto 0x80000f0c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000f0c addi    s0, s0, 1              #; s0  = 0x8000313a, (wrb) s0  <-- 0x8000313b
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000f10 addi    s10, s10, 1            #; s10 = 0x8000313c, (wrb) s10 <-- 0x8000313d
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000f14 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000f18 lbu     a0, 0(s0)              #; s0  = 0x8000313b, a0  <~~ Byte[0x8000313b]
                                                #; (lsu) a0  <-- 61
      0x80000f1c bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000ef4
      0x80000ef4 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ef8 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000efc mv      a1, s4                 #; s4  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
      0x80000f00 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000f04 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000f08 jalr    s2                     #; s2  = 0x80001a54, (wrb) ra  <-- 0x80000f0c, goto 0x80001a54
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001a54 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
      0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
      0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 6
      0x80001a74 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 7 ~~> Word[0x80003574]
      0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 6, (wrb) a4  <-- 0x8000357a
      0x80001a80 sb      a0, 72(a4)             #; a4  = 0x8000357a, 61 ~~> Byte[0x800035c2]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 7
      0x80001a88 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x80001a8c snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x80001a90 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x80001a94 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001afc ret                            #; ra  = 0x80000f0c, goto 0x80000f0c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000f0c addi    s0, s0, 1              #; s0  = 0x8000313b, (wrb) s0  <-- 0x8000313c
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000f10 addi    s10, s10, 1            #; s10 = 0x8000313d, (wrb) s10 <-- 0x8000313e
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000f14 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000f18 lbu     a0, 0(s0)              #; s0  = 0x8000313c, a0  <~~ Byte[0x8000313c]
                                                #; (lsu) a0  <-- 32
      0x80000f1c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000ef4
      0x80000ef4 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ef8 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000efc mv      a1, s4                 #; s4  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
      0x80000f00 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000f04 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000f08 jalr    s2                     #; s2  = 0x80001a54, (wrb) ra  <-- 0x80000f0c, goto 0x80001a54
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001a54 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
      0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
      0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 7
      0x80001a74 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 8 ~~> Word[0x80003574]
      0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 7, (wrb) a4  <-- 0x8000357b
      0x80001a80 sb      a0, 72(a4)             #; a4  = 0x8000357b, 32 ~~> Byte[0x800035c3]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 8
      0x80001a88 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x80001a8c snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x80001a90 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001a94 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001afc ret                            #; ra  = 0x80000f0c, goto 0x80000f0c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000f0c addi    s0, s0, 1              #; s0  = 0x8000313c, (wrb) s0  <-- 0x8000313d
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000f10 addi    s10, s10, 1            #; s10 = 0x8000313e, (wrb) s10 <-- 0x8000313f
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000f14 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000f18 lbu     a0, 0(s0)              #; s0  = 0x8000313d, a0  <~~ Byte[0x8000313d]
                                                #; (lsu) a0  <-- 37
      0x80000f1c bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000ef4
      0x80000ef4 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000f24
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000f24 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000f28 j       pc + 0x10              #; goto 0x80000f38
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000f38 lbu     a0, -1(s10)            #; s10 = 0x8000313f, a0  <~~ Byte[0x8000313e]
                                                #; (lsu) a0  <-- 102
      0x80000f3c addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000f40 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000f78
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000f78 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000f7c andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000f80 addi    a1, s10, -1            #; s10 = 0x8000313f, (wrb) a1  <-- 0x8000313e
      0x80000f84 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000f88 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80001004
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80001004 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80001008 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80001058
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001058 li      s6, 0                  #; (wrb) s6  <-- 0
      0x8000105c mv      s10, a1                #; a1  = 0x8000313e, (wrb) s10 <-- 0x8000313e
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80001060 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001064 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80001068 j       pc + 0xc               #; goto 0x80001074
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80001074 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80001078 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x8000107c slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80001080 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80001084 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80001088 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x800010ec
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x800010ec addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x800010f0 li      a2, 83                 #; (wrb) a2  <-- 83
      0x800010f4 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800010f8 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x800010fc auipc   a2, 0x2                #; (wrb) a2  <-- 0x800030fc
      0x80001100 addi    a2, a2, 184            #; a2  = 0x800030fc, (wrb) a2  <-- 0x800031b4
      0x80001104 add     a1, a1, a2             #; a1  = 260, a2  = 0x800031b4, (wrb) a1  <-- 0x800032b8
      0x80001108 lw      a2, 0(a1)              #; a1  = 0x800032b8, a2  <~~ Word[0x800032b8]
      0x8000110c li      a1, 8                  #; (wrb) a1  <-- 8
      0x80001110 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80001144
      0x80001114 jr      a2                     #; a2  = 0x80001144, goto 0x80001144
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80001144 li      a1, 70                 #; (wrb) a1  <-- 70
      0x80001148 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80001150
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80001150 addi    a0, s3, 7              #; s3  = 0x0011fee4, (wrb) a0  <-- 0x0011feeb
      0x80001154 andi    a0, a0, -8             #; a0  = 0x0011feeb, (wrb) a0  <-- 0x0011fee8
      0x8000115c addi    s3, a0, 8              #; a0  = 0x0011fee8, (wrb) s3  <-- 0x0011fef0
      0x80001158 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011fee8]
                                                #; (f:lsu) fa0  <-- 0.0
      0x80001160 mv      a0, s2                 #; s2  = 0x80001a54, (wrb) a0  <-- 0x80001a54
      0x80001164 mv      a1, s4                 #; s4  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
      0x80001168 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x8000116c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001170 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80001174 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80001178 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x8000117c auipc   ra, 0x1                #; (wrb) ra  <-- 0x8000217c
      0x80001180 jalr    ra, ra, -1656          #; ra  = 0x8000217c, (wrb) ra  <-- 0x80001184, goto 0x80001b04
; _ftoa (printf.c:340)
      0x80001b04 addi    sp, sp, -112           #; sp  = 0x0011fe60, (wrb) sp  <-- 0x0011fdf0
      0x80001b08 sw      ra, 108(sp)            #; sp  = 0x0011fdf0, 0x80001184 ~~> Word[0x0011fe5c]
      0x80001b0c sw      s0, 104(sp)            #; sp  = 0x0011fdf0, 0 ~~> Word[0x0011fe58]
      0x80001b10 sw      s1, 100(sp)            #; sp  = 0x0011fdf0, 8 ~~> Word[0x0011fe54]
      0x80001b14 sw      s2, 96(sp)             #; sp  = 0x0011fdf0, 0x80001a54 ~~> Word[0x0011fe50]
      0x80001b18 sw      s3, 92(sp)             #; sp  = 0x0011fdf0, 0x0011fef0 ~~> Word[0x0011fe4c]
      0x80001b1c sw      s4, 88(sp)             #; sp  = 0x0011fdf0, 0x0011fed7 ~~> Word[0x0011fe48]
      0x80001b20 sw      s5, 84(sp)             #; sp  = 0x0011fdf0, -1 ~~> Word[0x0011fe44]
      0x80001b24 sw      s6, 80(sp)             #; sp  = 0x0011fdf0, 0 ~~> Word[0x0011fe40]
      0x80001b28 sw      s7, 76(sp)             #; sp  = 0x0011fdf0, 0 ~~> Word[0x0011fe3c]
      0x80001b2c sw      s8, 72(sp)             #; sp  = 0x0011fdf0, 16 ~~> Word[0x0011fe38]
      0x80001b30 sw      s9, 68(sp)             #; sp  = 0x0011fdf0, 8 ~~> Word[0x0011fe34]
      0x80001b34 sw      s10, 64(sp)            #; sp  = 0x0011fdf0, 0x8000313e ~~> Word[0x0011fe30]
      0x80001b38 fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe28]
      0x80001b3c fsd     fs1, 48(sp)            #; 1275.2460000 ~~> Doub[0x0011fe20]
      0x80001b44 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003b44
      0x80001b48 addi    s1, s1, -1660          #; s1  = 0x80003b44, (wrb) s1  <-- 0x800034c8
      0x80001b40 fsd     fs2, 40(sp)            #; 1824.9210000 ~~> Doub[0x0011fe18]
      0x80001b4c fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x800034c8]
; _ftoa (printf.c:351)
      0x80001b54 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
; _ftoa (printf.c:0)
      0x80001b58 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x80001b5c mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x80001b50 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
      0x80001b60 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x80001b64 mv      s6, a1                 #; a1  = 0x0011fed7, (wrb) s6  <-- 0x0011fed7
      0x80001b68 mv      s7, a0                 #; a0  = 0x80001a54, (wrb) s7  <-- 0x80001a54
; _ftoa (printf.c:351)
      0x80001b6c bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001c5c
; _ftoa (printf.c:0)
      0x80001c5c fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x80001c60 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003c60
      0x80001c64 addi    a0, a0, -1936          #; a0  = 0x80003c60, (wrb) a0  <-- 0x800034d0
      0x80001c68 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800034d0]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x80001c6c fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x80001c70 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001c8c
; _ftoa (printf.c:0)
      0x80001c8c auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003c8c
      0x80001c90 addi    a0, a0, -1972          #; a0  = 0x80003c8c, (wrb) a0  <-- 0x800034d8
      0x80001c98 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003c98
      0x80001c9c addi    a0, a0, -1976          #; a0  = 0x80003c98, (wrb) a0  <-- 0x800034e0
      0x80001c94 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800034d8]
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
      0x80001ca0 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800034e0]
; _ftoa (printf.c:358)
      0x80001ca4 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
                                                #; (acc) a0  <-- 0x00b57533
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
      0x80001ca8 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
                                                #; (acc) a0  <-- 0x00b57533
      0x80001cac and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80001cb0 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001dac
; _ftoa (printf.c:374)
      0x80001dac andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x80001db0 li      s8, 6                  #; (wrb) s8  <-- 6
      0x80001db4 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001dbc
; _ftoa (printf.c:0)
      0x80001dbc li      a0, 10                 #; (wrb) a0  <-- 10
; _ftoa (printf.c:378)
      0x80001dc4 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001dfc
; _ftoa (printf.c:0)
      0x80001dc0 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs2  <-- 0.0
      0x80001dfc li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x80001e00 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x80001e04 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002e04
      0x80001e08 addi    a1, a1, 1284           #; a1  = 0x80002e04, (wrb) a1  <-- 0x80003308
      0x80001e0c add     a0, a0, a1             #; a0  = 48, a1  = 0x80003308, (wrb) a0  <-- 0x80003338
      0x80001e10 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003338]
; _ftoa (printf.c:383)
      0x80001e14 fcvt.w.d s1, fs2               #; fs2  = 0.0
; _ftoa (printf.c:384)
      0x80001e18 fcvt.d.w ft0, s1               #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80001e1c fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
                                                #; (f:lsu) ft1  <-- 1000000.0000000
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:0)
      0x80001e24 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002e24
      0x80001e28 addi    a0, a0, 1732           #; a0  = 0x80002e24, (wrb) a0  <-- 0x800034e8
      0x80001e20 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
      0x80001e2c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800034e8], (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:385)
      0x80001e30 fcvt.wu.d a0, ft2              #; ft2  = 0.0
                                                #; (f:lsu) ft0  <-- 0.5
                                                #; (acc) gp  <-- 0xd21501d3
; _ftoa (printf.c:386)
      0x80001e34 fcvt.d.wu ft3, a0              #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80001e38 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:388)
      0x80001e3c fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x80001e40 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001e60
; _ftoa (printf.c:396)
      0x80001e60 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
                                                #; (acc) s4  <-- 0x00059a63
      0x80001e64 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001e78
; _ftoa (printf.c:403)
      0x80001e7c beqz    s8, pc + 216           #; s8  = 6, not taken
      0x80001e78 fcvt.d.w fs1, zero             #; ac1  = 0
                                                #; (f:fpu) fs1  <-- 0.0
; _ftoa (printf.c:0)
      0x80001e80 li      a2, 0                  #; (wrb) a2  <-- 0
      0x80001e84 addi    a1, sp, 8              #; sp  = 0x0011fdf0, (wrb) a1  <-- 0x0011fdf8
; _ftoa (printf.c:414)
      0x80001e88 add     t1, a1, s0             #; a1  = 0x0011fdf8, s0  = 0, (wrb) t1  <-- 0x0011fdf8
      0x80001e8c li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001e90 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x80001e94 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80001e98 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80001e9c li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001ea0 li      a7, 9                  #; (wrb) a7  <-- 9
      0x80001ea4 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80001ea8 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x80001eac mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
      0x80001eb0 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001eb4 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001eb8 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001ebc ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x80001ec0 add     a5, t1, a2             #; t1  = 0x0011fdf8, a2  = 0, (wrb) a5  <-- 0x0011fdf8
      0x80001ec4 sb      a3, 0(a5)              #; a5  = 0x0011fdf8, 48 ~~> Byte[0x0011fdf8]
; _ftoa (printf.c:417)
      0x80001ec8 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80001ecc bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x80001ed0 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x80001ed4 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80001ed8 li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001edc sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x80001ee0 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x80001ee4 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x80001ee8 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x80001eec bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x80001ef0 addi    a0, sp, 8              #; sp  = 0x0011fdf0, (wrb) a0  <-- 0x0011fdf8
; _ftoa (printf.c:422)
      0x80001ef4 add     a0, a0, s0             #; a0  = 0x0011fdf8, s0  = 0, (wrb) a0  <-- 0x0011fdf8
      0x80001ef8 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x80001efc add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x80001f00 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x80001f04 li      a1, 31                 #; (wrb) a1  <-- 31
      0x80001f08 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x80001f0c add     a0, a0, a2             #; a0  = 0x0011fdf8, a2  = 1, (wrb) a0  <-- 0x0011fdf9
      0x80001f10 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x80001f14 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001f1c
      0x80001f1c addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x80001f20 li      a1, 48                 #; (wrb) a1  <-- 48
      0x80001f24 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x7fffff24
      0x80001f28 jalr    ra, ra, 1588           #; ra  = 0x7fffff24, (wrb) ra  <-- 0x80001f2c, goto 0x80000558
; memset (memset.S:30)
      0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
; memset (memset.S:31)
      0x8000055c mv      a4, a0                 #; a0  = 0x0011fdf9, (wrb) a4  <-- 0x0011fdf9
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
      0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fdf9, 48 ~~> Byte[0x0011fdfd]
; memset (memset.S:80)
      0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fdf9, 48 ~~> Byte[0x0011fdfc]
; memset (memset.S:81)
      0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fdf9, 48 ~~> Byte[0x0011fdfb]
; memset (memset.S:82)
      0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fdf9, 48 ~~> Byte[0x0011fdfa]
; memset (memset.S:83)
      0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fdf9, 48 ~~> Byte[0x0011fdf9]
; memset (memset.S:85)
      0x800005ec ret                            #; ra  = 0x80001f2c, goto 0x80001f2c
; _ftoa (printf.c:0)
      0x80001f2c li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x80001f30 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x80001f34 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80001f38 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x80001f3c snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80001f40 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001f44 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001f48 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001f30
      0x80001f30 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x80001f34 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80001f38 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x80001f3c snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80001f40 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001f44 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001f48 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001f30
      0x80001f30 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x80001f34 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80001f38 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x80001f3c snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80001f40 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001f44 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001f48 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001f30
      0x80001f30 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x80001f34 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80001f38 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x80001f3c snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80001f40 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001f44 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001f48 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001f30
      0x80001f30 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x80001f34 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80001f38 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x80001f3c snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80001f40 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001f44 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001f48 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001f4c add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x80001f50 j       pc + 0x28              #; goto 0x80001f78
      0x80001f78 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001f7c addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001f80 addi    a1, sp, 8              #; sp  = 0x0011fdf0, (wrb) a1  <-- 0x0011fdf8
; _ftoa (printf.c:427)
      0x80001f84 add     a0, a1, a0             #; a1  = 0x0011fdf8, a0  = 6, (wrb) a0  <-- 0x0011fdfe
      0x80001f88 li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001f8c sb      a1, 0(a0)              #; a0  = 0x0011fdfe, 46 ~~> Byte[0x0011fdfe]
      0x80001f90 j       pc + 0x8               #; goto 0x80001f98
; _ftoa (printf.c:0)
      0x80001f98 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001f9c mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001fa0 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001fa4 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001fac lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001fa8 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
      0x80001fb0 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001fb4 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001fb8 addi    a3, sp, 8              #; sp  = 0x0011fdf0, (wrb) a3  <-- 0x0011fdf8
      0x80001fbc li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001fc0 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001fc4 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001fc8 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001fcc srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001fd0 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001fd4 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001fd8 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001fdc addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80001fe0 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001fe4 add     s0, a3, s0             #; a3  = 0x0011fdf8, s0  = 7, (wrb) s0  <-- 0x0011fdff
; _ftoa (printf.c:434)
      0x80001fe8 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001fec sb      a5, 0(s0)              #; s0  = 0x0011fdff, 48 ~~> Byte[0x0011fdff]
; _ftoa (printf.c:0)
      0x80001ff0 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001ff4 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001ff8 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80001ffc j       pc + 0x8               #; goto 0x80002004
; _ftoa (printf.c:440)
      0x80002004 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80002008 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x8000200c bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80002078
; _ftoa (printf.c:0)
      0x80002078 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x8000207c bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80002080 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80002098
; _ftoa (printf.c:453)
      0x80002098 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x8000209c bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x800020a0 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x800020a4 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x800020d0
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x800020d0 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x800020d4 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x800020d8 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x800020dc or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x800020e0 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x800020e4 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x800020e8 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80002114
; _ftoa (printf.c:0)
      0x80002114 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80002118 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x8000211c addi    s9, sp, 7              #; sp  = 0x0011fdf0, (wrb) s9  <-- 0x0011fdf7
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80002120 add     a0, s9, s8             #; s9  = 0x0011fdf7, s8  = 8, (wrb) a0  <-- 0x0011fdff
      0x80002124 lbu     a0, 0(a0)              #; a0  = 0x0011fdff, a0  <~~ Byte[0x0011fdff]
      0x80002128 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x8000212c addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
                                                #; (lsu) a0  <-- 48
      0x80002130 mv      a1, s6                 #; s6  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
      0x80002134 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80002138 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x8000213c jalr    s7                     #; s7  = 0x80001a54, (wrb) ra  <-- 0x80002140, goto 0x80001a54
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001a54 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
      0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
      0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 8
      0x80001a74 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 9 ~~> Word[0x80003574]
      0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 8, (wrb) a4  <-- 0x8000357c
      0x80001a80 sb      a0, 72(a4)             #; a4  = 0x8000357c, 48 ~~> Byte[0x800035c4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 9
      0x80001a88 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x80001a8c snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x80001a90 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001a94 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001afc ret                            #; ra  = 0x80002140, goto 0x80002140
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80002140 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x80002144 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80002148 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80002120
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80002120 add     a0, s9, s8             #; s9  = 0x0011fdf7, s8  = 7, (wrb) a0  <-- 0x0011fdfe
      0x80002124 lbu     a0, 0(a0)              #; a0  = 0x0011fdfe, a0  <~~ Byte[0x0011fdfe]
      0x80002128 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x8000212c addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80002130 mv      a1, s6                 #; s6  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
      0x80002134 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80002138 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x8000213c jalr    s7                     #; s7  = 0x80001a54, (wrb) ra  <-- 0x80002140, goto 0x80001a54
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001a54 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
      0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
      0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 9
      0x80001a74 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 10 ~~> Word[0x80003574]
      0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 9, (wrb) a4  <-- 0x8000357d
      0x80001a80 sb      a0, 72(a4)             #; a4  = 0x8000357d, 46 ~~> Byte[0x800035c5]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 10
      0x80001a88 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x80001a8c snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x80001a90 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x80001a94 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001afc ret                            #; ra  = 0x80002140, goto 0x80002140
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80002140 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80002144 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80002148 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80002120
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80002120 add     a0, s9, s8             #; s9  = 0x0011fdf7, s8  = 6, (wrb) a0  <-- 0x0011fdfd
      0x80002124 lbu     a0, 0(a0)              #; a0  = 0x0011fdfd, a0  <~~ Byte[0x0011fdfd]
      0x80002128 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x8000212c addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80002130 mv      a1, s6                 #; s6  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
      0x80002134 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80002138 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x8000213c jalr    s7                     #; s7  = 0x80001a54, (wrb) ra  <-- 0x80002140, goto 0x80001a54
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001a54 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
      0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
      0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 10
      0x80001a74 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 11 ~~> Word[0x80003574]
      0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 10, (wrb) a4  <-- 0x8000357e
      0x80001a80 sb      a0, 72(a4)             #; a4  = 0x8000357e, 48 ~~> Byte[0x800035c6]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 11
      0x80001a88 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x80001a8c snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x80001a90 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001a94 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001afc ret                            #; ra  = 0x80002140, goto 0x80002140
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80002140 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80002144 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80002148 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80002120
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80002120 add     a0, s9, s8             #; s9  = 0x0011fdf7, s8  = 5, (wrb) a0  <-- 0x0011fdfc
      0x80002124 lbu     a0, 0(a0)              #; a0  = 0x0011fdfc, a0  <~~ Byte[0x0011fdfc]
      0x80002128 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x8000212c addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80002130 mv      a1, s6                 #; s6  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
      0x80002134 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80002138 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x8000213c jalr    s7                     #; s7  = 0x80001a54, (wrb) ra  <-- 0x80002140, goto 0x80001a54
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001a54 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
      0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
      0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 11
      0x80001a74 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 12 ~~> Word[0x80003574]
      0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 11, (wrb) a4  <-- 0x8000357f
      0x80001a80 sb      a0, 72(a4)             #; a4  = 0x8000357f, 48 ~~> Byte[0x800035c7]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 12
      0x80001a88 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x80001a8c snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x80001a90 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001a94 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001afc ret                            #; ra  = 0x80002140, goto 0x80002140
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80002140 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80002144 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80002148 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80002120
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80002120 add     a0, s9, s8             #; s9  = 0x0011fdf7, s8  = 4, (wrb) a0  <-- 0x0011fdfb
      0x80002124 lbu     a0, 0(a0)              #; a0  = 0x0011fdfb, a0  <~~ Byte[0x0011fdfb]
      0x80002128 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x8000212c addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80002130 mv      a1, s6                 #; s6  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
      0x80002134 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80002138 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x8000213c jalr    s7                     #; s7  = 0x80001a54, (wrb) ra  <-- 0x80002140, goto 0x80001a54
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001a54 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
      0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
      0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 12
      0x80001a74 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 13 ~~> Word[0x80003574]
      0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 12, (wrb) a4  <-- 0x80003580
      0x80001a80 sb      a0, 72(a4)             #; a4  = 0x80003580, 48 ~~> Byte[0x800035c8]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 13
      0x80001a88 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x80001a8c snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x80001a90 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001a94 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001afc ret                            #; ra  = 0x80002140, goto 0x80002140
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80002140 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80002144 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80002148 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80002120
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80002120 add     a0, s9, s8             #; s9  = 0x0011fdf7, s8  = 3, (wrb) a0  <-- 0x0011fdfa
      0x80002124 lbu     a0, 0(a0)              #; a0  = 0x0011fdfa, a0  <~~ Byte[0x0011fdfa]
      0x80002128 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x8000212c addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80002130 mv      a1, s6                 #; s6  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
      0x80002134 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80002138 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x8000213c jalr    s7                     #; s7  = 0x80001a54, (wrb) ra  <-- 0x80002140, goto 0x80001a54
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001a54 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
      0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
      0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 13
      0x80001a74 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 14 ~~> Word[0x80003574]
      0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 13, (wrb) a4  <-- 0x80003581
      0x80001a80 sb      a0, 72(a4)             #; a4  = 0x80003581, 48 ~~> Byte[0x800035c9]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 14
      0x80001a88 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x80001a8c snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x80001a90 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001a94 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001afc ret                            #; ra  = 0x80002140, goto 0x80002140
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80002140 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80002144 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80002148 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80002120
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80002120 add     a0, s9, s8             #; s9  = 0x0011fdf7, s8  = 2, (wrb) a0  <-- 0x0011fdf9
      0x80002124 lbu     a0, 0(a0)              #; a0  = 0x0011fdf9, a0  <~~ Byte[0x0011fdf9]
      0x80002128 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x8000212c addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80002130 mv      a1, s6                 #; s6  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
      0x80002134 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80002138 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x8000213c jalr    s7                     #; s7  = 0x80001a54, (wrb) ra  <-- 0x80002140, goto 0x80001a54
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001a54 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
      0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
      0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 14
      0x80001a74 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 15 ~~> Word[0x80003574]
      0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 14, (wrb) a4  <-- 0x80003582
      0x80001a80 sb      a0, 72(a4)             #; a4  = 0x80003582, 48 ~~> Byte[0x800035ca]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 15
      0x80001a88 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x80001a8c snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x80001a90 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001a94 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001afc ret                            #; ra  = 0x80002140, goto 0x80002140
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80002140 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80002144 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80002148 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80002120
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80002120 add     a0, s9, s8             #; s9  = 0x0011fdf7, s8  = 1, (wrb) a0  <-- 0x0011fdf8
      0x80002124 lbu     a0, 0(a0)              #; a0  = 0x0011fdf8, a0  <~~ Byte[0x0011fdf8]
      0x80002128 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x8000212c addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80002130 mv      a1, s6                 #; s6  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
      0x80002134 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80002138 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x8000213c jalr    s7                     #; s7  = 0x80001a54, (wrb) ra  <-- 0x80002140, goto 0x80001a54
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001a54 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
      0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
      0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 15
      0x80001a74 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 16 ~~> Word[0x80003574]
      0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 15, (wrb) a4  <-- 0x80003583
      0x80001a80 sb      a0, 72(a4)             #; a4  = 0x80003583, 48 ~~> Byte[0x800035cb]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 16
      0x80001a88 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x80001a8c snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x80001a90 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001a94 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001a98 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001a9c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001afc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001afc ret                            #; ra  = 0x80002140, goto 0x80002140
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80002140 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80002144 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80002148 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x8000214c j       pc + 0x8               #; goto 0x80002154
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80002154 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x80002158 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x8000215c xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80002160 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80002164 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80002168 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80002198
; _ftoa (printf.c:0)
      0x80002198 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x8000219c mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x800021a0 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe18]
      0x800021ac lw      s10, 64(sp)            #; sp  = 0x0011fdf0, s10 <~~ Word[0x0011fe30]
      0x800021a4 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe20], (f:lsu) fs2  <-- 1824.9210000
      0x800021a8 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe28], (f:lsu) fs1  <-- 1275.2460000
                                                #; (f:lsu) fs0  <-- 0.0000000
                                                #; (lsu) s10 <-- 0x8000313e
      0x800021b0 lw      s9, 68(sp)             #; sp  = 0x0011fdf0, s9  <~~ Word[0x0011fe34]
                                                #; (lsu) s9  <-- 8
      0x800021b4 lw      s8, 72(sp)             #; sp  = 0x0011fdf0, s8  <~~ Word[0x0011fe38]
                                                #; (lsu) s8  <-- 16
      0x800021b8 lw      s7, 76(sp)             #; sp  = 0x0011fdf0, s7  <~~ Word[0x0011fe3c]
                                                #; (lsu) s7  <-- 0
      0x800021bc lw      s6, 80(sp)             #; sp  = 0x0011fdf0, s6  <~~ Word[0x0011fe40]
                                                #; (lsu) s6  <-- 0
      0x800021c0 lw      s5, 84(sp)             #; sp  = 0x0011fdf0, s5  <~~ Word[0x0011fe44]
                                                #; (lsu) s5  <-- -1
      0x800021c4 lw      s4, 88(sp)             #; sp  = 0x0011fdf0, s4  <~~ Word[0x0011fe48]
                                                #; (lsu) s4  <-- 0x0011fed7
      0x800021c8 lw      s3, 92(sp)             #; sp  = 0x0011fdf0, s3  <~~ Word[0x0011fe4c]
                                                #; (lsu) s3  <-- 0x0011fef0
      0x800021cc lw      s2, 96(sp)             #; sp  = 0x0011fdf0, s2  <~~ Word[0x0011fe50]
                                                #; (lsu) s2  <-- 0x80001a54
      0x800021d0 lw      s1, 100(sp)            #; sp  = 0x0011fdf0, s1  <~~ Word[0x0011fe54]
                                                #; (lsu) s1  <-- 8
      0x800021d4 lw      s0, 104(sp)            #; sp  = 0x0011fdf0, s0  <~~ Word[0x0011fe58]
                                                #; (lsu) s0  <-- 0
      0x800021d8 lw      ra, 108(sp)            #; sp  = 0x0011fdf0, ra  <~~ Word[0x0011fe5c]
      0x800021dc addi    sp, sp, 112            #; sp  = 0x0011fdf0, (wrb) sp  <-- 0x0011fe60
                                                #; (lsu) ra  <-- 0x80001184
      0x800021e0 ret                            #; ra  = 0x80001184, goto 0x80001184
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001184 j       pc + 0x7c0             #; goto 0x80001944
      0x80001944 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x80001948 li      s6, 37                 #; (wrb) s6  <-- 37
      0x8000194c li      s7, 46                 #; (wrb) s7  <-- 46
      0x80001950 addi    s0, s10, 1             #; s10 = 0x8000313e, (wrb) s0  <-- 0x8000313f
      0x80001954 j       pc - 0xa74             #; goto 0x80000ee0
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ee0 addi    s10, s0, 2             #; s0  = 0x8000313f, (wrb) s10 <-- 0x80003141
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ee4 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x80000ee8 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000eec lbu     a0, 0(s0)              #; s0  = 0x8000313f, a0  <~~ Byte[0x8000313f]
                                                #; (lsu) a0  <-- 10
      0x80000ef0 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000ef4 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ef8 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x80000efc mv      a1, s4                 #; s4  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
      0x80000f00 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x80000f04 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000f08 jalr    s2                     #; s2  = 0x80001a54, (wrb) ra  <-- 0x80000f0c, goto 0x80001a54
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001a54 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a58 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a5c li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a60 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001a64 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003a64
      0x80001a68 addi    a3, a3, -1264          #; a3  = 0x80003a64, (wrb) a3  <-- 0x80003574
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001a6c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003574, (wrb) a1  <-- 0x80003574
      0x80001a70 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 16
      0x80001a74 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x80001a78 sw      a5, 0(a1)              #; a1  = 0x80003574, 17 ~~> Word[0x80003574]
      0x80001a7c add     a4, a1, a4             #; a1  = 0x80003574, a4  = 16, (wrb) a4  <-- 0x80003584
      0x80001a80 sb      a0, 72(a4)             #; a4  = 0x80003584, 10 ~~> Byte[0x800035cc]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001a84 lw      a4, 0(a1)              #; a1  = 0x80003574, a4  <~~ Word[0x80003574]
                                                #; (lsu) a4  <-- 17
      0x80001a88 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x80001a8c snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x80001a90 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x80001a94 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x80001a98 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x80001a9c bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001aa0 add     a0, a3, a2             #; a3  = 0x80003574, a2  = 0, (wrb) a0  <-- 0x80003574
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001aa4 addi    a2, a0, 72             #; a0  = 0x80003574, (wrb) a2  <-- 0x800035bc
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001aa8 sw      zero, 12(a0)           #; a0  = 0x80003574, 0 ~~> Word[0x80003580]
      0x80001aac li      a3, 64                 #; (wrb) a3  <-- 64
      0x80001ab0 sw      a3, 8(a0)              #; a0  = 0x80003574, 64 ~~> Word[0x8000357c]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001ab4 sw      zero, 20(a0)           #; a0  = 0x80003574, 0 ~~> Word[0x80003588]
      0x80001ab8 li      a3, 1                  #; (wrb) a3  <-- 1
      0x80001abc sw      a3, 16(a0)             #; a0  = 0x80003574, 1 ~~> Word[0x80003584]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001ac0 sw      zero, 28(a0)           #; a0  = 0x80003574, 0 ~~> Word[0x80003590]
      0x80001ac4 sw      a2, 24(a0)             #; a0  = 0x80003574, 0x800035bc ~~> Word[0x8000358c]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001ac8 lw      a2, 0(a1)              #; a1  = 0x80003574, a2  <~~ Word[0x80003574]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001acc addi    a3, a0, 8              #; a0  = 0x80003574, (wrb) a3  <-- 0x8000357c
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001ad0 sw      zero, 36(a0)           #; a0  = 0x80003574, 0 ~~> Word[0x80003598]
                                                #; (lsu) a2  <-- 17
      0x80001ad4 sw      a2, 32(a0)             #; a0  = 0x80003574, 17 ~~> Word[0x80003594]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001ad8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003ad8
      0x80001adc addi    a0, a0, -1880          #; a0  = 0x80003ad8, (wrb) a0  <-- 0x80003380
      0x80001ae0 sw      a3, 0(a0)              #; a0  = 0x80003380, 0x8000357c ~~> Word[0x80003380]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001ae4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003ae4
      0x80001ae8 addi    a0, a0, -1828          #; a0  = 0x80003ae4, (wrb) a0  <-- 0x800033c0
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001aec lw      a2, 0(a0)              #; a0  = 0x800033c0, a2  <~~ Word[0x800033c0]
                                                #; (lsu) a2  <-- 0
      0x80001af0 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001aec
      0x80001aec lw      a2, 0(a0)              #; a0  = 0x800033c0, a2  <~~ Word[0x800033c0]
                                                #; (lsu) a2  <-- 1
      0x80001af0 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001af4 sw      zero, 0(a0)            #; a0  = 0x800033c0, 0 ~~> Word[0x800033c0]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001af8 sw      zero, 0(a1)            #; a1  = 0x80003574, 0 ~~> Word[0x80003574]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001afc ret                            #; ra  = 0x80000f0c, goto 0x80000f0c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000f0c addi    s0, s0, 1              #; s0  = 0x8000313f, (wrb) s0  <-- 0x80003140
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000f10 addi    s10, s10, 1            #; s10 = 0x80003141, (wrb) s10 <-- 0x80003142
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000f14 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000f18 lbu     a0, 0(s0)              #; s0  = 0x80003140, a0  <~~ Byte[0x80003140]
                                                #; (lsu) a0  <-- 0
      0x80000f1c bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000f20 j       pc + 0xad8             #; goto 0x800019f8
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x800019f8 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x800019fc bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001a04
      0x80001a04 li      a0, 0                  #; (wrb) a0  <-- 0
      0x80001a08 mv      a1, s4                 #; s4  = 0x0011fed7, (wrb) a1  <-- 0x0011fed7
      0x80001a0c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001a10 jalr    s2                     #; s2  = 0x80001a54, (wrb) ra  <-- 0x80001a14, goto 0x80001a54
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001a54 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001afc
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001afc ret                            #; ra  = 0x80001a14, goto 0x80001a14
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x80001a14 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x80001a18 lw      s11, 60(sp)            #; sp  = 0x0011fe60, s11 <~~ Word[0x0011fe9c]
                                                #; (lsu) s11 <-- 0
      0x80001a1c lw      s10, 64(sp)            #; sp  = 0x0011fe60, s10 <~~ Word[0x0011fea0]
                                                #; (lsu) s10 <-- 0
      0x80001a20 lw      s9, 68(sp)             #; sp  = 0x0011fe60, s9  <~~ Word[0x0011fea4]
                                                #; (lsu) s9  <-- 0
      0x80001a24 lw      s8, 72(sp)             #; sp  = 0x0011fe60, s8  <~~ Word[0x0011fea8]
                                                #; (lsu) s8  <-- 0
      0x80001a28 lw      s7, 76(sp)             #; sp  = 0x0011fe60, s7  <~~ Word[0x0011feac]
                                                #; (lsu) s7  <-- 0
      0x80001a2c lw      s6, 80(sp)             #; sp  = 0x0011fe60, s6  <~~ Word[0x0011feb0]
                                                #; (lsu) s6  <-- 0
      0x80001a30 lw      s5, 84(sp)             #; sp  = 0x0011fe60, s5  <~~ Word[0x0011feb4]
                                                #; (lsu) s5  <-- 0
      0x80001a34 lw      s4, 88(sp)             #; sp  = 0x0011fe60, s4  <~~ Word[0x0011feb8]
                                                #; (lsu) s4  <-- 0
      0x80001a38 lw      s3, 92(sp)             #; sp  = 0x0011fe60, s3  <~~ Word[0x0011febc]
                                                #; (lsu) s3  <-- 0
      0x80001a3c lw      s2, 96(sp)             #; sp  = 0x0011fe60, s2  <~~ Word[0x0011fec0]
                                                #; (lsu) s2  <-- 0
      0x80001a40 lw      s1, 100(sp)            #; sp  = 0x0011fe60, s1  <~~ Word[0x0011fec4]
                                                #; (lsu) s1  <-- 0
      0x80001a44 lw      s0, 104(sp)            #; sp  = 0x0011fe60, s0  <~~ Word[0x0011fec8]
                                                #; (lsu) s0  <-- 0
      0x80001a48 lw      ra, 108(sp)            #; sp  = 0x0011fe60, ra  <~~ Word[0x0011fecc]
      0x80001a4c addi    sp, sp, 112            #; sp  = 0x0011fe60, (wrb) sp  <-- 0x0011fed0
                                                #; (lsu) ra  <-- 0x80000e50
      0x80001a50 ret                            #; ra  = 0x80000e50, goto 0x80000e50
; printf_ (printf.c:869)
      0x80000e50 lw      ra, 12(sp)             #; sp  = 0x0011fed0, ra  <~~ Word[0x0011fedc]
      0x80000e54 addi    sp, sp, 48             #; sp  = 0x0011fed0, (wrb) sp  <-- 0x0011ff00
                                                #; (lsu) ra  <-- 0x80000dbc
      0x80000e58 ret                            #; ra  = 0x80000dbc, goto 0x80000dbc
; main (test_access.c:0)
      0x80000dbc auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002dbc
      0x80000dc0 addi    a0, a0, 1796           #; a0  = 0x80002dbc, (wrb) a0  <-- 0x800034c0
      0x80000dc4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800034c0]
                                                #; (f:lsu) ft0  <-- 0.0001
; main (test_access.c:50)
      0x80000dc8 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0000000
                                                #; (acc) s7  <-- 0x01813b87
      0x80000dcc fld     fs9, 8(sp)             #; fs9  <~~ Doub[0x0011ff08]
; main (test_access.c:51)
      0x80000dd0 fld     fs8, 16(sp)            #; fs8  <~~ Doub[0x0011ff10], (f:lsu) fs9  <-- 0.0
      0x80000dd4 fld     fs7, 24(sp)            #; fs7  <~~ Doub[0x0011ff18], (f:lsu) fs8  <-- 0.0
      0x80000dd8 fld     fs6, 32(sp)            #; fs6  <~~ Doub[0x0011ff20], (f:lsu) fs7  <-- 0.0
      0x80000ddc fld     fs5, 40(sp)            #; fs5  <~~ Doub[0x0011ff28], (f:lsu) fs6  <-- 0.0
      0x80000de0 fld     fs4, 48(sp)            #; fs4  <~~ Doub[0x0011ff30], (f:lsu) fs5  <-- 0.0
      0x80000de4 fld     fs3, 56(sp)            #; fs3  <~~ Doub[0x0011ff38], (f:lsu) fs4  <-- 0.0
      0x80000de8 fld     fs2, 64(sp)            #; fs2  <~~ Doub[0x0011ff40], (f:lsu) fs3  <-- 0.0
      0x80000df4 lw      ra, 92(sp)             #; sp  = 0x0011ff00, ra  <~~ Word[0x0011ff5c]
      0x80000dec fld     fs1, 72(sp)            #; fs1  <~~ Doub[0x0011ff48], (f:lsu) fs2  <-- 0.0
      0x80000df8 addi    sp, sp, 96             #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011ff60
      0x80000df0 fld     fs0, 80(sp)            #; fs0  <~~ Doub[0x0011ff50], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) ra  <-- 0x80002eb0
      0x80000dfc ret                            #; ra  = 0x80002eb0, goto 0x80002eb0
; ?? (start.S:184)
      0x80002eb0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x80002eb4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002eb4
      0x80002eb8 jalr    ra, ra, 524            #; ra  = 0x80002eb4, (wrb) ra  <-- 0x80002ebc, goto 0x800030c0
; ?? (start_snitch.S:33)
      0x800030c0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x800030c4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002ebc ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x800030c8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800030c8
      0x800030cc jalr    ra, ra, -1260          #; ra  = 0x800030c8, (wrb) ra  <-- 0x800030d0, goto 0x80002bdc
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002bdc lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002be0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002be4 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002be8 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002bec lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002bf0 ret                            #; ra  = 0x800030d0, goto 0x800030d0
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x800030d0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x800030d4 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x800030d8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x800030dc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002ebc
; ?? (start_snitch.S:40)
      0x800030e0 ret                            #; ra  = 0x80002ebc, goto 0x80002ebc
; ?? (start.S:195)
      0x80002ebc mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x80002ec0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ec0
      0x80002ec4 jalr    ra, ra, 556            #; ra  = 0x80002ec0, (wrb) ra  <-- 0x80002ec8, goto 0x800030ec
; ?? (start_snitch.S:15)
      0x800030ec addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x800030f0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x800030f4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002ec8 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x800030f8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800030f8
      0x800030fc jalr    ra, ra, -1340          #; ra  = 0x800030f8, (wrb) ra  <-- 0x80003100, goto 0x80002bbc
; snrt_global_core_idx (team.c:32)
      0x80002bbc lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002bc0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002bc4 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002bc8 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002bcc lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x80002bd0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x80002bd4 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x80002bd8 ret                            #; ra  = 0x80003100, goto 0x80003100
; ?? (start_snitch.S:20)
      0x80003100 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x80003104 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80003108 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x8000310c bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x80002ec8
; ?? (start_snitch.S:28)
      0x80003110 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x80003114 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x80003118 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003118
      0x8000311c addi    t1, t1, 616            #; t1  = 0x80003118, (wrb) t1  <-- 0x80003380
; ?? (start_snitch.S:31)
      0x80003120 sw      t0, 0(t1)              #; t1  = 0x80003380, 1 ~~> Word[0x80003380]
; ?? (start_snitch.S:32)
      0x80003124 ret                            #; ra  = 0x80002ec8, goto 0x80002ec8
; ?? (start.S:198)
      0x80002ec8 wfi                            #; 
                        tion 0 @ (12, 5776):
                          135
                          142
                           14
                           78
                      12.0148
                       0.2208
                       0.1530
                          1.0
                          1.0
                            0
                       1.7941
                       4.6923
                       0.0399
                       0.0236
                       0.5913
                         5765
                       0.2607
