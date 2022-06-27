; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x80002d90
      0x00001014 jalr    t0                     #; t0  = 0x80002d90, (wrb) ra  <-- 4120, goto 0x80002d90
; ?? (start.S:20)
      0x80002d90 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003d90
; ?? (start.S:21)
      0x80002d94 addi    gp, gp, -264           #; gp  = 0x80003d90, (wrb) gp  <-- 0x80003c88
; ?? (start.S:28)
      0x80002d98 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d98
      0x80002d9c jalr    ra, ra, 964            #; ra  = 0x80002d98, (wrb) ra  <-- 0x80002da0, goto 0x8000315c
; ?? (start_snitch.S:16)
      0x8000315c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80003160 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80003164 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80003168 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x8000316c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80003170 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80003174 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80003178 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x8000317c mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80003180 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80003184 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80003188 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x8000318c ret                            #; ra  = 0x80002da0, goto 0x80002da0
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x80002da0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x80002da4 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x80002da8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002da8
      0x80002dac jalr    ra, ra, 1036           #; ra  = 0x80002da8, (wrb) ra  <-- 0x80002db0, goto 0x800031b4
; ?? (start_snitch.S:48)
      0x800031b4 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x800031b8 ret                            #; ra  = 0x80002db0, goto 0x80002db0
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x80002db0 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x80002db4 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x80002db8 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x80002dbc sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x80002dc0 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x80002dc4 auipc   t0, 0x1                #; (wrb) t0  <-- 0x80003dc4
      0x80002dc8 addi    t0, t0, -1940          #; t0  = 0x80003dc4, (wrb) t0  <-- 0x80003630
; ?? (start.S:49)
      0x80002dcc auipc   t1, 0x1                #; (wrb) t1  <-- 0x80003dcc
      0x80002dd0 addi    t1, t1, -1944          #; t1  = 0x80003dcc, (wrb) t1  <-- 0x80003634
; ?? (start.S:50)
      0x80002dd4 bge     t0, t1, pc + 16        #; t0  = 0x80003630, t1  = 0x80003634, not taken
; ?? (start.S:51)
      0x80002dd8 sw      zero, 0(t0)            #; t0  = 0x80003630, 0 ~~> Word[0x80003630]
; ?? (start.S:52)
      0x80002ddc addi    t0, t0, 4              #; t0  = 0x80003630, (wrb) t0  <-- 0x80003634
; ?? (start.S:53)
      0x80002de0 blt     t0, t1, pc - 8         #; t0  = 0x80003634, t1  = 0x80003634, not taken
; ?? (start.S:58)
      0x80002de4 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x80002de8 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x80002dec beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x80002df0 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x80002df4 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x80002df8 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x80002dfc fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x80002e00 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x80002e04 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x80002e08 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x80002e0c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x80002e10 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x80002e14 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x80002e18 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x80002e1c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x80002e20 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x80002e24 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x80002e28 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x80002e2c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x80002e30 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x80002e34 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x80002e38 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x80002e3c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x80002e40 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x80002e44 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x80002e48 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x80002e4c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x80002e50 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x80002e54 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x80002e58 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x80002e5c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x80002e60 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x80002e64 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x80002e68 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x80002e6c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x80002e70 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x80002e74 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x80002e78 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002e78
      0x80002e7c lw      t0, 900(t0)            #; t0  = 0x80002e78, t0  <~~ Word[0x800031fc]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x80002e80 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x80002e84 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x80002e88 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002e88
      0x80002e8c lw      t2, 880(t2)            #; t2  = 0x80002e88, t2  <~~ Word[0x800031f8]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x80002e90 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x80002e94 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x80002e98 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x80002e9c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x80002ea0 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x80002ea4 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x80002ea8 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x80002eac sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x80002eb0 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002eb0
      0x80002eb4 addi    t0, t0, 1496           #; t0  = 0x80002eb0, (wrb) t0  <-- 0x80003488
; ?? (start.S:125)
      0x80002eb8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002eb8
      0x80002ebc addi    t1, t1, 1488           #; t1  = 0x80002eb8, (wrb) t1  <-- 0x80003488
; ?? (start.S:126)
      0x80002ec0 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002ec0
      0x80002ec4 addi    t2, t2, 1480           #; t2  = 0x80002ec0, (wrb) t2  <-- 0x80003488
; ?? (start.S:127)
      0x80002ec8 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002ec8
      0x80002ecc addi    t3, t3, 1488           #; t3  = 0x80002ec8, (wrb) t3  <-- 0x80003498
; ?? (start.S:128)
      0x80002ed0 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003488, (wrb) sp  <-- 0x801233f8
; ?? (start.S:129)
      0x80002ed4 sub     sp, sp, t1             #; sp  = 0x801233f8, t1  = 0x80003488, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x80002ed8 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003488, (wrb) sp  <-- 0x801233f8
; ?? (start.S:131)
      0x80002edc sub     sp, sp, t3             #; sp  = 0x801233f8, t3  = 0x80003498, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x80002ee0 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x80002ee4 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x80002ee8 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x80002eec mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x80002ef0 bge     t0, t1, pc + 24        #; t0  = 0x80003488, t1  = 0x80003488, taken, goto 0x80002f08
; ?? (start.S:147)
      0x80002f08 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002f08
      0x80002f0c addi    t0, t0, 1408           #; t0  = 0x80002f08, (wrb) t0  <-- 0x80003488
; ?? (start.S:148)
      0x80002f10 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002f10
      0x80002f14 addi    t1, t1, 1416           #; t1  = 0x80002f10, (wrb) t1  <-- 0x80003498
; ?? (start.S:149)
      0x80002f18 bge     t0, t1, pc + 20        #; t0  = 0x80003488, t1  = 0x80003498, not taken
; ?? (start.S:150)
      0x80002f1c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x80002f20 addi    t0, t0, 4              #; t0  = 0x80003488, (wrb) t0  <-- 0x8000348c
; ?? (start.S:152)
      0x80002f24 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x80002f28 blt     t0, t2, pc - 12        #; t0  = 0x8000348c, t2  = 0x80003488, not taken
; ?? (start.S:158)
      0x80002f2c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x80002f30 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x80002f34 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x80002f38 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x80002f3c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x80002f40 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x80002f44 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002f44
      0x80002f48 jalr    ra, ra, -1064          #; ra  = 0x80002f44, (wrb) ra  <-- 0x80002f4c, goto 0x80002b1c
; _snrt_init_team (start.c:49)
      0x80002b1c sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x80002b20 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x80002b24 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x80002b28 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x80002b2c lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x80002b30 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x80002b34 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x80002b38 mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x80002b3c mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x80002b40 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x80002b44 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x80002b48 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x80002b4c divu    a0, a0, t0             #; a0  = 0, t0  = 8
; _snrt_init_team (start.c:54)
      0x80002b50 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x80002b54 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x80002b58 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x80002b5c sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x80002b60 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x80002b64 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x80002b68 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x80002b6c sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x80002b70 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x80002b74 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x80002b78 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x80002b7c sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x80002b80 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x80002b84 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x80002b88 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x80002b8c sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x80002b90 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x80002b94 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x80002b98 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x80002b9c addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x80002ba0 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x80002ba4 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x80002ba8 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x80002bac add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x80002bb0 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x80002bb4 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x80002bb8 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x80002bbc sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x80002bc0 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x80002bc4 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x80002bc8 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x80002bcc sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x80002bd0 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x80002bd4 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x80002bd8 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x80002bdc lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002be0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002be4 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x80002be8 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002bec lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x80002bf0 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x80002bf4 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x80002bf8 remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x80002bfc lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x80002c00 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
      0x80002c04 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x80002c08 li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x80002c0c mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x80002c10 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003c10
      0x80002c14 addi    a1, a1, -1500          #; a1  = 0x80003c10, (wrb) a1  <-- 0x80003634
      0x80002c18 add     a0, a0, a1             #; a0  = 0, a1  = 0x80003634, (wrb) a0  <-- 0x80003634
      0x80002c1c sw      zero, 0(a0)            #; a0  = 0x80003634, 0 ~~> Word[0x80003634]
; _snrt_init_team (start.c:86)
      0x80002c20 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x80002c24 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x80002c28 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x80002c2c sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x80002c30 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x80002c34 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x80002c38 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x80002c3c andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x80002c40 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x80002c44 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x80002c48 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x80002c4c sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x80002c50 lw      a0, 0(a1)              #; a1  = 0x80003634, a0  <~~ Word[0x80003634]
                                                #; (lsu) a0  <-- 0
      0x80002c54 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x80002c58 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x80002c5c sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x80002c60 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x80002c64 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x80002c68 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002c6c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002c70 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x80002c74 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002c78 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002c7c sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x80002c80 ret                            #; ra  = 0x80002f4c, goto 0x80002f4c
; ?? (start.S:165)
      0x80002f4c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x80002f50 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x80002f54 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x80002f58 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x80002f5c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x80002f60 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x80002f64 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002f64
      0x80002f68 addi    t0, t0, 60             #; t0  = 0x80002f64, (wrb) t0  <-- 0x80002fa0
; ?? (start.S:175)
      0x80002f6c csrw    mtvec, t0              #; t0  = 0x80002fa0, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x80002f70 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002f70
      0x80002f74 jalr    ra, ra, 544            #; ra  = 0x80002f70, (wrb) ra  <-- 0x80002f78, goto 0x80003190
; ?? (start_snitch.S:33)
      0x80003190 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80003194 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002f78 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80003198 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003198
      0x8000319c jalr    ra, ra, -1268          #; ra  = 0x80003198, (wrb) ra  <-- 0x800031a0, goto 0x80002ca4
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002ca4 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002ca8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002cac lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002cb0 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002cb4 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002cb8 ret                            #; ra  = 0x800031a0, goto 0x800031a0
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x800031a0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x800031a4 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x800031a8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x800031ac addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002f78
; ?? (start_snitch.S:40)
      0x800031b0 ret                            #; ra  = 0x80002f78, goto 0x80002f78
; ?? (start.S:183)
      0x80002f78 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000f78
      0x80002f7c jalr    ra, ra, -1284          #; ra  = 0x80000f78, (wrb) ra  <-- 0x80002f80, goto 0x80000a74
; main (test_access.c:11)
      0x80000a74 addi    sp, sp, -128           #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011fee0
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (test_access.c:12)
      0x80000a78 sw      ra, 124(sp)            #; sp  = 0x0011fee0, 0x80002f80 ~~> Word[0x0011ff5c]
      0x80000a7c sw      s0, 120(sp)            #; sp  = 0x0011fee0, 0 ~~> Word[0x0011ff58]
      0x80000a80 fsd     fs0, 112(sp)           #; 0.0 ~~> Doub[0x0011ff50]
      0x80000a84 fsd     fs1, 104(sp)           #; 0.0 ~~> Doub[0x0011ff48]
      0x80000a88 fsd     fs2, 96(sp)            #; 0.0 ~~> Doub[0x0011ff40]
      0x80000a8c fsd     fs3, 88(sp)            #; 0.0 ~~> Doub[0x0011ff38]
      0x80000a90 fsd     fs4, 80(sp)            #; 0.0 ~~> Doub[0x0011ff30]
      0x80000a94 fsd     fs5, 72(sp)            #; 0.0 ~~> Doub[0x0011ff28]
      0x80000a98 fsd     fs6, 64(sp)            #; 0.0 ~~> Doub[0x0011ff20]
      0x80000a9c fsd     fs7, 56(sp)            #; 0.0 ~~> Doub[0x0011ff18]
      0x80000aa0 fsd     fs8, 48(sp)            #; 0.0 ~~> Doub[0x0011ff10]
      0x80000aa4 fsd     fs9, 40(sp)            #; 0.0 ~~> Doub[0x0011ff08]
      0x80000aa8 fsd     fs10, 32(sp)           #; 0.0 ~~> Doub[0x0011ff00]
      0x80000aac fsd     fs11, 24(sp)           #; 0.0 ~~> Doub[0x0011fef8]
      0x80000ab0 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000ab4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000ab8 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
; main (test_access.c:0)
      0x80000abc li      a0, 0                  #; (wrb) a0  <-- 0
                                                #; (lsu) a1  <-- 0
; main (test_access.c:12)
      0x80000ac0 bnez    a1, pc + 968           #; a1  = 0, not taken
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (test_access.c:17)
      0x80000ac4 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000ac8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000acc lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80000ad0 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in main (test_access.c:17)
      0x80000ad4 lw      s0, 88(a0)             #; a0  = 0x0011ff70, s0  <~~ Word[0x0011ffc8]
                                                #; (lsu) s0  <-- 0x00100000
      0x80000ad8 lw      a2, 80(a0)             #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ffc0]
                                                #; (lsu) a2  <-- 0x00100000
      0x80000adc lw      a3, 84(a0)             #; a0  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
                                                #; (lsu) a3  <-- 0x0001df30
      0x80000ae0 addi    a1, s0, 224            #; s0  = 0x00100000, (wrb) a1  <-- 0x001000e0
      0x80000ae4 add     a2, a3, a2             #; a3  = 0x0001df30, a2  = 0x00100000, (wrb) a2  <-- 0x0011df30
      0x80000ae8 bgeu    a2, a1, pc + 12        #; a2  = 0x0011df30, a1  = 0x001000e0, taken, goto 0x80000af4
; snrt_l1alloc (alloc.c:34)
;  in main (test_access.c:17)
      0x80000af4 sw      a1, 88(a0)             #; a0  = 0x0011ff70, 0x001000e0 ~~> Word[0x0011ffc8]
; main (test_access.c:19)
      0x80000af8 mv      a0, s0                 #; s0  = 0x00100000, (wrb) a0  <-- 0x00100000
      0x80000afc auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000afc
      0x80000b00 jalr    ra, ra, -1224          #; ra  = 0x80000afc, (wrb) ra  <-- 0x80000b04, goto 0x80000634
; init_data (test_access.c:6)
      0x80000634 srli    a1, a0, 20             #; a0  = 0x00100000, (wrb) a1  <-- 1
      0x80000638 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
      0x8000063c lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
      0x80000640 addi    a2, a2, -215           #; a2  = 0x00120000, (wrb) a2  <-- 0x0011ff29
      0x80000644 sltu    a2, a0, a2             #; a0  = 0x00100000, a2  = 0x0011ff29, (wrb) a2  <-- 1
      0x80000648 and     a1, a1, a2             #; a1  = 1, a2  = 1, (wrb) a1  <-- 1
      0x8000064c beqz    a1, pc + 500           #; a1  = 1, not taken
; init_data (test_access.c:0)
      0x80000650 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000654 li      a2, 27                 #; (wrb) a2  <-- 27
; init_data (test_access.c:6)
      0x80000658 li      a3, 64                 #; (wrb) a3  <-- 64
      0x8000065c li      a4, 192                #; (wrb) a4  <-- 192
      0x80000660 scfgw   a2, a3                 #; a2  = 27, a3  = 64
      0x80000664 scfgw   a1, a4                 #; a1  = 8, a4  = 192
      0x80000668 li      a1, 32                 #; (wrb) a1  <-- 32
      0x8000066c scfgw   zero, a1               #; a1  = 32, (acc) ra  <-- 0x00b020ab
      0x80000670 scfgwi  a0, 896                #; a0  = 0x00100000
; init_data (test_access.c:0)
      0x80000678 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003678
      0x80000674 csrrsi  a0, ssr, 1             #; 
      0x8000067c addi    a0, a0, -480           #; a0  = 0x80003678, (wrb) a0  <-- 0x80003498
      0x80000684 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003684
      0x80000688 addi    a0, a0, -484           #; a0  = 0x80003684, (wrb) a0  <-- 0x800034a0
      0x80000680 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003498]
      0x8000068c fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x800034a0]
                                                #; (f:lsu) ft3  <-- 3.141
      0x80000698 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003698
      0x80000690 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.141, ft3  = 3.141, (f:lsu) ft4  <-- 6.282
      0x8000069c addi    a0, a0, -496           #; a0  = 0x80003698, (wrb) a0  <-- 0x800034a8
      0x80000694 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282, (f:fpu) ft0  <-- 3.141
                                                #; (f:fpu) ft0  <-- 6.282
      0x800006a4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036a4
      0x800006a8 addi    a0, a0, -500           #; a0  = 0x800036a4, (wrb) a0  <-- 0x800034b0
      0x800006a0 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800034a8]
      0x800006ac fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x800034b0]
                                                #; (f:lsu) ft3  <-- 9.423
      0x800006b8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036b8
      0x800006b0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.423, ft3  = 9.423, (f:lsu) ft4  <-- 12.564
      0x800006bc addi    a0, a0, -512           #; a0  = 0x800036b8, (wrb) a0  <-- 0x800034b8
      0x800006b4 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564, (f:fpu) ft0  <-- 9.423
                                                #; (f:fpu) ft0  <-- 12.564
      0x800006c4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036c4
      0x800006c8 addi    a0, a0, -516           #; a0  = 0x800036c4, (wrb) a0  <-- 0x800034c0
      0x800006c0 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800034b8]
      0x800006cc fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x800034c0]
                                                #; (f:lsu) ft3  <-- 15.705
      0x800006d8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036d8
      0x800006d0 fsgnj.d ft0, ft3, ft3          #; ft3  = 15.705, ft3  = 15.705, (f:lsu) ft4  <-- 18.846
      0x800006dc addi    a0, a0, -528           #; a0  = 0x800036d8, (wrb) a0  <-- 0x800034c8
      0x800006d4 fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846, (f:fpu) ft0  <-- 15.705
                                                #; (f:fpu) ft0  <-- 18.846
      0x800006e4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036e4
      0x800006e8 addi    a0, a0, -532           #; a0  = 0x800036e4, (wrb) a0  <-- 0x800034d0
      0x800006e0 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800034c8]
      0x800006ec fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x800034d0]
                                                #; (f:lsu) ft3  <-- 21.9870000
      0x800006f8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036f8
      0x800006f0 fsgnj.d ft0, ft3, ft3          #; ft3  = 21.9870000, ft3  = 21.9870000, (f:lsu) ft4  <-- 25.128
      0x800006fc addi    a0, a0, -544           #; a0  = 0x800036f8, (wrb) a0  <-- 0x800034d8
      0x800006f4 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128, (f:fpu) ft0  <-- 21.9870000
                                                #; (f:fpu) ft0  <-- 25.128
      0x80000704 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003704
      0x80000708 addi    a0, a0, -548           #; a0  = 0x80003704, (wrb) a0  <-- 0x800034e0
      0x80000700 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800034d8]
      0x8000070c fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x800034e0]
                                                #; (f:lsu) ft3  <-- 28.269
      0x80000718 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003718
      0x80000710 fsgnj.d ft0, ft3, ft3          #; ft3  = 28.269, ft3  = 28.269, (f:lsu) ft4  <-- 31.41
      0x8000071c addi    a0, a0, -560           #; a0  = 0x80003718, (wrb) a0  <-- 0x800034e8
      0x80000714 fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41, (f:fpu) ft0  <-- 28.269
                                                #; (f:fpu) ft0  <-- 31.41
      0x80000724 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003724
      0x80000728 addi    a0, a0, -564           #; a0  = 0x80003724, (wrb) a0  <-- 0x800034f0
      0x80000720 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800034e8]
      0x8000072c fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x800034f0]
                                                #; (f:lsu) ft3  <-- 34.551
      0x80000738 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003738
      0x80000730 fsgnj.d ft0, ft3, ft3          #; ft3  = 34.551, ft3  = 34.551, (f:lsu) ft4  <-- 37.692
      0x8000073c addi    a0, a0, -576           #; a0  = 0x80003738, (wrb) a0  <-- 0x800034f8
      0x80000734 fsgnj.d ft0, ft4, ft4          #; ft4  = 37.692, ft4  = 37.692, (f:fpu) ft0  <-- 34.551
                                                #; (f:fpu) ft0  <-- 37.692
      0x80000744 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003744
      0x80000748 addi    a0, a0, -580           #; a0  = 0x80003744, (wrb) a0  <-- 0x80003500
      0x80000740 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800034f8]
      0x8000074c fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003500]
                                                #; (f:lsu) ft3  <-- 40.833
      0x80000758 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003758
      0x80000750 fsgnj.d ft0, ft3, ft3          #; ft3  = 40.833, ft3  = 40.833, (f:lsu) ft4  <-- 43.9740000
      0x8000075c addi    a0, a0, -592           #; a0  = 0x80003758, (wrb) a0  <-- 0x80003508
      0x80000754 fsgnj.d ft0, ft4, ft4          #; ft4  = 43.9740000, ft4  = 43.9740000, (f:fpu) ft0  <-- 40.833
                                                #; (f:fpu) ft0  <-- 43.9740000
      0x80000764 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003764
      0x80000768 addi    a0, a0, -596           #; a0  = 0x80003764, (wrb) a0  <-- 0x80003510
      0x80000760 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003508]
      0x8000076c fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003510]
                                                #; (f:lsu) ft3  <-- 47.115
      0x80000778 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003778
      0x80000770 fsgnj.d ft0, ft3, ft3          #; ft3  = 47.115, ft3  = 47.115, (f:lsu) ft4  <-- 50.256
      0x8000077c addi    a0, a0, -608           #; a0  = 0x80003778, (wrb) a0  <-- 0x80003518
      0x80000774 fsgnj.d ft0, ft4, ft4          #; ft4  = 50.256, ft4  = 50.256, (f:fpu) ft0  <-- 47.115
                                                #; (f:fpu) ft0  <-- 50.256
      0x80000784 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003784
      0x80000788 addi    a0, a0, -612           #; a0  = 0x80003784, (wrb) a0  <-- 0x80003520
      0x80000780 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003518]
      0x8000078c fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003520]
                                                #; (f:lsu) ft3  <-- 53.397
      0x80000798 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003798
      0x80000790 fsgnj.d ft0, ft3, ft3          #; ft3  = 53.397, ft3  = 53.397, (f:lsu) ft4  <-- 56.538
      0x8000079c addi    a0, a0, -624           #; a0  = 0x80003798, (wrb) a0  <-- 0x80003528
      0x80000794 fsgnj.d ft0, ft4, ft4          #; ft4  = 56.538, ft4  = 56.538, (f:fpu) ft0  <-- 53.397
                                                #; (f:fpu) ft0  <-- 56.538
      0x800007a4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800037a4
      0x800007a8 addi    a0, a0, -628           #; a0  = 0x800037a4, (wrb) a0  <-- 0x80003530
      0x800007a0 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003528]
      0x800007ac fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003530]
                                                #; (f:lsu) ft3  <-- 59.679
      0x800007b8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800037b8
      0x800007b0 fsgnj.d ft0, ft3, ft3          #; ft3  = 59.679, ft3  = 59.679, (f:lsu) ft4  <-- 62.82
      0x800007bc addi    a0, a0, -640           #; a0  = 0x800037b8, (wrb) a0  <-- 0x80003538
      0x800007b4 fsgnj.d ft0, ft4, ft4          #; ft4  = 62.82, ft4  = 62.82, (f:fpu) ft0  <-- 59.679
                                                #; (f:fpu) ft0  <-- 62.82
      0x800007c4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800037c4
      0x800007c8 addi    a0, a0, -644           #; a0  = 0x800037c4, (wrb) a0  <-- 0x80003540
      0x800007c0 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003538]
      0x800007cc fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003540]
                                                #; (f:lsu) ft3  <-- 65.961
      0x800007d8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800037d8
      0x800007d0 fsgnj.d ft0, ft3, ft3          #; ft3  = 65.961, ft3  = 65.961, (f:lsu) ft4  <-- 69.102
      0x800007dc addi    a0, a0, -656           #; a0  = 0x800037d8, (wrb) a0  <-- 0x80003548
      0x800007d4 fsgnj.d ft0, ft4, ft4          #; ft4  = 69.102, ft4  = 69.102, (f:fpu) ft0  <-- 65.961
                                                #; (f:fpu) ft0  <-- 69.102
      0x800007e4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800037e4
      0x800007e8 addi    a0, a0, -660           #; a0  = 0x800037e4, (wrb) a0  <-- 0x80003550
      0x800007e0 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003548]
      0x800007ec fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003550]
                                                #; (f:lsu) ft3  <-- 72.243
      0x800007f8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800037f8
      0x800007f0 fsgnj.d ft0, ft3, ft3          #; ft3  = 72.243, ft3  = 72.243, (f:lsu) ft4  <-- 75.384
      0x800007fc addi    a0, a0, -672           #; a0  = 0x800037f8, (wrb) a0  <-- 0x80003558
      0x800007f4 fsgnj.d ft0, ft4, ft4          #; ft4  = 75.384, ft4  = 75.384, (f:fpu) ft0  <-- 72.243
                                                #; (f:fpu) ft0  <-- 75.384
      0x80000804 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003804
      0x80000808 addi    a0, a0, -676           #; a0  = 0x80003804, (wrb) a0  <-- 0x80003560
      0x80000800 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003558]
      0x8000080c fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003560]
                                                #; (f:lsu) ft3  <-- 78.525
      0x80000818 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003818
      0x80000810 fsgnj.d ft0, ft3, ft3          #; ft3  = 78.525, ft3  = 78.525, (f:lsu) ft4  <-- 81.666
      0x8000081c addi    a0, a0, -688           #; a0  = 0x80003818, (wrb) a0  <-- 0x80003568
      0x80000814 fsgnj.d ft0, ft4, ft4          #; ft4  = 81.666, ft4  = 81.666, (f:fpu) ft0  <-- 78.525
                                                #; (f:fpu) ft0  <-- 81.666
      0x80000824 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003824
      0x80000828 addi    a0, a0, -692           #; a0  = 0x80003824, (wrb) a0  <-- 0x80003570
      0x80000820 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003568]
      0x8000082c fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003570]
                                                #; (f:lsu) ft3  <-- 84.807
; init_data (test_access.c:7)
      0x80000830 fsgnj.d ft0, ft3, ft3          #; ft3  = 84.807, ft3  = 84.807, (f:lsu) ft4  <-- 87.9480000
; init_data (test_access.c:9)
      0x8000083c ret                            #; ra  = 0x80000b04, goto 0x80000b04
      0x80000834 fsgnj.d ft0, ft4, ft4          #; ft4  = 87.9480000, ft4  = 87.9480000, (f:fpu) ft0  <-- 84.807
; init_data (test_access.c:0)
      0x80000838 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 87.9480000
; main (test_access.c:23)
      0x80000b04 srli    a0, s0, 20             #; s0  = 0x00100000, (wrb) a0  <-- 1
      0x80000b08 snez    a0, a0                 #; a0  = 1, (wrb) a0  <-- 1
      0x80000b0c lui     a1, 0x120              #; (wrb) a1  <-- 0x00120000
      0x80000b10 addi    a1, a1, -215           #; a1  = 0x00120000, (wrb) a1  <-- 0x0011ff29
      0x80000b14 sltu    a1, s0, a1             #; s0  = 0x00100000, a1  = 0x0011ff29, (wrb) a1  <-- 1
      0x80000b18 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80000b1c beqz    a0, pc + 460           #; a0  = 1, not taken
; main (test_access.c:0)
      0x80000b20 li      a2, 8                  #; (wrb) a2  <-- 8
      0x80000b24 li      a0, 6                  #; (wrb) a0  <-- 6
; main (test_access.c:23)
      0x80000b28 li      a1, 64                 #; (wrb) a1  <-- 64
      0x80000b2c li      a3, 192                #; (wrb) a3  <-- 192
      0x80000b30 scfgw   a0, a1                 #; a0  = 6, a1  = 64
      0x80000b34 scfgw   a2, a3                 #; a2  = 8, a3  = 192
      0x80000b38 li      a1, 3                  #; (wrb) a1  <-- 3
      0x80000b3c li      a3, 96                 #; (wrb) a3  <-- 96
      0x80000b40 li      a4, 224                #; (wrb) a4  <-- 224
      0x80000b44 scfgw   a1, a3                 #; a1  = 3, a3  = 96
      0x80000b48 scfgw   a2, a4                 #; a2  = 8, a4  = 224
      0x80000b4c li      a2, 32                 #; (wrb) a2  <-- 32
      0x80000b50 scfgw   zero, a2               #; a2  = 32
      0x80000b54 scfgwi  s0, 800                #; s0  = 0x00100000
                                                #; (acc) gp  <-- 0x220001d3
      0x80000b58 csrrsi  a2, ssr, 1             #; 
; main (test_access.c:25)
      0x80000b5c fsgnj.d ft3, ft0, ft0          #; ft0  = 3.141, ft0  = 3.141
                                                #; (f:fpu) ft3  <-- 3.141
      0x80000b60 fadd.d  ft3, ft0, ft3          #; ft0  = 6.282, ft3  = 3.141
                                                #; (f:fpu) ft3  <-- 9.423
      0x80000b64 fadd.d  ft3, ft3, ft0          #; ft3  = 9.423, ft0  = 9.423
                                                #; (f:fpu) ft3  <-- 18.846
      0x80000b68 fadd.d  ft3, ft3, ft0          #; ft3  = 18.846, ft0  = 12.564
                                                #; (f:fpu) ft3  <-- 31.41
      0x80000b6c fadd.d  ft3, ft3, ft0          #; ft3  = 31.41, ft0  = 15.705
                                                #; (f:fpu) ft3  <-- 47.115
      0x80000b70 fadd.d  ft3, ft3, ft0          #; ft3  = 47.115, ft0  = 18.846
                                                #; (f:fpu) ft3  <-- 65.961
      0x80000b74 fadd.d  ft3, ft3, ft0          #; ft3  = 65.961, ft0  = 21.9870000
                                                #; (f:fpu) ft3  <-- 87.9480000
      0x80000b78 fadd.d  ft3, ft3, ft0          #; ft3  = 87.9480000, ft0  = 25.128
                                                #; (f:fpu) ft3  <-- 113.0760000
      0x80000b7c fadd.d  ft3, ft3, ft0          #; ft3  = 113.0760000, ft0  = 28.269
                                                #; (f:fpu) ft3  <-- 141.345
      0x80000b80 fadd.d  ft3, ft3, ft0          #; ft3  = 141.345, ft0  = 31.41
                                                #; (f:fpu) ft3  <-- 172.755
      0x80000b84 fadd.d  ft3, ft3, ft0          #; ft3  = 172.755, ft0  = 34.551
                                                #; (f:fpu) ft3  <-- 207.3060000
      0x80000b88 fadd.d  ft3, ft3, ft0          #; ft3  = 207.3060000, ft0  = 37.692
                                                #; (f:fpu) ft3  <-- 244.998
      0x80000b8c fadd.d  ft3, ft3, ft0          #; ft3  = 244.998, ft0  = 40.833
                                                #; (f:fpu) ft3  <-- 285.831
      0x80000b90 fadd.d  ft3, ft3, ft0          #; ft3  = 285.831, ft0  = 43.9740000
                                                #; (f:fpu) ft3  <-- 329.805
      0x80000b94 fadd.d  ft3, ft3, ft0          #; ft3  = 329.805, ft0  = 47.115
                                                #; (f:fpu) ft3  <-- 376.92
      0x80000b98 fadd.d  ft3, ft3, ft0          #; ft3  = 376.92, ft0  = 50.256
                                                #; (f:fpu) ft3  <-- 427.1760000
      0x80000b9c fadd.d  ft3, ft3, ft0          #; ft3  = 427.1760000, ft0  = 53.397
                                                #; (f:fpu) ft3  <-- 480.5730000
      0x80000ba0 fadd.d  ft3, ft3, ft0          #; ft3  = 480.5730000, ft0  = 56.538
                                                #; (f:fpu) ft3  <-- 537.111
      0x80000ba4 fadd.d  ft3, ft3, ft0          #; ft3  = 537.111, ft0  = 59.679
                                                #; (f:fpu) ft3  <-- 596.79
      0x80000ba8 fadd.d  ft3, ft3, ft0          #; ft3  = 596.79, ft0  = 62.82
                                                #; (f:fpu) ft3  <-- 659.61
      0x80000bac fadd.d  ft3, ft3, ft0          #; ft3  = 659.61, ft0  = 65.961
                                                #; (f:fpu) ft3  <-- 725.571
      0x80000bb0 fadd.d  ft3, ft3, ft0          #; ft3  = 725.571, ft0  = 69.102
; main (test_access.c:0)
      0x80000bd4 li      a2, 56                 #; (wrb) a2  <-- 56
                                                #; (f:fpu) ft3  <-- 794.673
; main (test_access.c:31)
      0x80000bd8 li      a3, 64                 #; (wrb) a3  <-- 64
      0x80000bb4 fadd.d  ft3, ft3, ft0          #; ft3  = 794.673, ft0  = 72.243
      0x80000bdc li      a4, 192                #; (wrb) a4  <-- 192
                                                #; (f:fpu) ft3  <-- 866.9160000
; main (test_access.c:25)
      0x80000bb8 fadd.d  ft3, ft3, ft0          #; ft3  = 866.9160000, ft0  = 75.384
                                                #; (f:fpu) ft3  <-- 942.3
      0x80000bbc fadd.d  ft3, ft3, ft0          #; ft3  = 942.3, ft0  = 78.525
; main (test_access.c:31)
      0x80000be0 scfgw   a1, a3                 #; a1  = 3, a3  = 64
                                                #; (f:fpu) ft3  <-- 1020.8250000
; main (test_access.c:25)
      0x80000bc0 fadd.d  ft3, ft3, ft0          #; ft3  = 1020.8250000, ft0  = 81.666
                                                #; (f:fpu) ft3  <-- 1102.491
      0x80000bc4 fadd.d  ft3, ft3, ft0          #; ft3  = 1102.491, ft0  = 84.807
                                                #; (f:fpu) ft3  <-- 1187.298
      0x80000bc8 fadd.d  ft3, ft3, ft0          #; ft3  = 1187.298, ft0  = 87.9480000
                                                #; (f:fpu) ft3  <-- 1275.246
; main (test_access.c:0)
      0x80000bcc fsd     ft3, 8(sp)             #; 1275.246 ~~> Doub[0x0011fee8]
      0x80000bd0 csrrci  a2, ssr, 1             #; 
; main (test_access.c:31)
      0x80000be4 scfgw   a2, a4                 #; a2  = 56, a4  = 192
      0x80000be8 li      a1, -160               #; (wrb) a1  <-- -160
      0x80000bec li      a2, 96                 #; (wrb) a2  <-- 96
      0x80000bf0 li      a3, 224                #; (wrb) a3  <-- 224
      0x80000bf4 scfgw   a0, a2                 #; a0  = 6, a2  = 96, (acc) ra  <-- 0x00c520ab
      0x80000bf8 scfgw   a1, a3                 #; a1  = -160, a3  = 224, (acc) ra  <-- 0x00d5a0ab
      0x80000bfc li      a0, 32                 #; (wrb) a0  <-- 32
      0x80000c00 scfgw   zero, a0               #; a0  = 32
      0x80000c04 scfgwi  s0, 800                #; s0  = 0x00100000
                                                #; (acc) tp  <-- 0x22000253
      0x80000c08 csrrsi  a0, ssr, 1             #; 
; main (test_access.c:33)
      0x80000c0c fsgnj.d ft4, ft0, ft0          #; ft0  = 3.141, ft0  = 3.141
                                                #; (f:fpu) ft4  <-- 3.141
      0x80000c10 fadd.d  ft4, ft0, ft4          #; ft0  = 25.128, ft4  = 3.141
                                                #; (f:fpu) ft4  <-- 28.269
      0x80000c14 fadd.d  ft4, ft4, ft0          #; ft4  = 28.269, ft0  = 47.115
                                                #; (f:fpu) ft4  <-- 75.384
      0x80000c18 fadd.d  ft4, ft4, ft0          #; ft4  = 75.384, ft0  = 69.102
                                                #; (f:fpu) ft4  <-- 144.486
      0x80000c1c fadd.d  ft4, ft4, ft0          #; ft4  = 144.486, ft0  = 6.282
                                                #; (f:fpu) ft4  <-- 150.768
      0x80000c20 fadd.d  ft4, ft4, ft0          #; ft4  = 150.768, ft0  = 28.269
                                                #; (f:fpu) ft4  <-- 179.037
      0x80000c24 fadd.d  ft4, ft4, ft0          #; ft4  = 179.037, ft0  = 50.256
                                                #; (f:fpu) ft4  <-- 229.293
      0x80000c28 fadd.d  ft4, ft4, ft0          #; ft4  = 229.293, ft0  = 72.243
                                                #; (f:fpu) ft4  <-- 301.536
      0x80000c2c fadd.d  ft4, ft4, ft0          #; ft4  = 301.536, ft0  = 9.423
                                                #; (f:fpu) ft4  <-- 310.959
      0x80000c30 fadd.d  ft4, ft4, ft0          #; ft4  = 310.959, ft0  = 31.41
                                                #; (f:fpu) ft4  <-- 342.369
      0x80000c34 fadd.d  ft4, ft4, ft0          #; ft4  = 342.369, ft0  = 53.397
                                                #; (f:fpu) ft4  <-- 395.766
      0x80000c38 fadd.d  ft4, ft4, ft0          #; ft4  = 395.766, ft0  = 75.384
                                                #; (f:fpu) ft4  <-- 471.1500000
      0x80000c3c fadd.d  ft4, ft4, ft0          #; ft4  = 471.1500000, ft0  = 12.564
                                                #; (f:fpu) ft4  <-- 483.7140000
      0x80000c40 fadd.d  ft4, ft4, ft0          #; ft4  = 483.7140000, ft0  = 34.551
                                                #; (f:fpu) ft4  <-- 518.2650000
      0x80000c44 fadd.d  ft4, ft4, ft0          #; ft4  = 518.2650000, ft0  = 56.538
                                                #; (f:fpu) ft4  <-- 574.8030000
      0x80000c48 fadd.d  ft4, ft4, ft0          #; ft4  = 574.8030000, ft0  = 78.525
                                                #; (f:fpu) ft4  <-- 653.3280000
      0x80000c4c fadd.d  ft4, ft4, ft0          #; ft4  = 653.3280000, ft0  = 15.705
                                                #; (f:fpu) ft4  <-- 669.0330000
      0x80000c50 fadd.d  ft4, ft4, ft0          #; ft4  = 669.0330000, ft0  = 37.692
                                                #; (f:fpu) ft4  <-- 706.7250000
      0x80000c54 fadd.d  ft4, ft4, ft0          #; ft4  = 706.7250000, ft0  = 59.679
                                                #; (f:fpu) ft4  <-- 766.4040000
      0x80000c58 fadd.d  ft4, ft4, ft0          #; ft4  = 766.4040000, ft0  = 81.666
                                                #; (f:fpu) ft4  <-- 848.0700000
      0x80000c5c fadd.d  ft4, ft4, ft0          #; ft4  = 848.0700000, ft0  = 18.846
                                                #; (f:fpu) ft4  <-- 866.9160000
      0x80000c60 fadd.d  ft4, ft4, ft0          #; ft4  = 866.9160000, ft0  = 40.833
                                                #; (f:fpu) ft4  <-- 907.7490000
      0x80000c64 fadd.d  ft4, ft4, ft0          #; ft4  = 907.7490000, ft0  = 62.82
                                                #; (f:fpu) ft4  <-- 970.5690000
      0x80000c68 fadd.d  ft4, ft4, ft0          #; ft4  = 970.5690000, ft0  = 84.807
                                                #; (f:fpu) ft4  <-- 1055.3760000
      0x80000c6c fadd.d  ft4, ft4, ft0          #; ft4  = 1055.3760000, ft0  = 21.9870000
                                                #; (f:fpu) ft4  <-- 1077.3630000
      0x80000c70 fadd.d  ft4, ft4, ft0          #; ft4  = 1077.3630000, ft0  = 43.9740000
                                                #; (f:fpu) ft4  <-- 1121.3370000
      0x80000c74 fadd.d  ft4, ft4, ft0          #; ft4  = 1121.3370000, ft0  = 65.961
                                                #; (f:fpu) ft4  <-- 1187.2980000
      0x80000c78 fadd.d  fs9, ft4, ft0          #; ft4  = 1187.2980000, ft0  = 87.9480000
; main (test_access.c:0)
      0x80000c7c csrrci  a0, ssr, 1             #; 
; main (test_access.c:41)
      0x80000c80 fld     fs2, 168(s0)           #; fs2  <~~ Doub[0x001000a8], (f:fpu) fs9  <-- 1275.2460000
      0x80000c84 fld     fs3, 176(s0)           #; fs3  <~~ Doub[0x001000b0], (f:lsu) fs2  <-- 69.102
      0x80000c88 fld     fs4, 184(s0)           #; fs4  <~~ Doub[0x001000b8], (f:lsu) fs3  <-- 72.243
      0x80000c8c fld     fs5, 192(s0)           #; fs5  <~~ Doub[0x001000c0], (f:lsu) fs4  <-- 75.384
      0x80000c90 fld     fs6, 200(s0)           #; fs6  <~~ Doub[0x001000c8], (f:lsu) fs5  <-- 78.525
      0x80000c94 fld     fs7, 208(s0)           #; fs7  <~~ Doub[0x001000d0], (f:lsu) fs6  <-- 81.666
      0x80000c98 fld     fs8, 216(s0)           #; fs8  <~~ Doub[0x001000d8], (f:lsu) fs7  <-- 84.807
      0x80000c9c fld     fa7, 112(s0)           #; fa7  <~~ Doub[0x00100070], (f:lsu) fs8  <-- 87.9480000
                                                #; (f:lsu) fa7  <-- 47.115
      0x80000ca0 fld     ft8, 120(s0)           #; ft8  <~~ Doub[0x00100078]
      0x80000ca4 fld     ft9, 128(s0)           #; ft9  <~~ Doub[0x00100080], (f:lsu) ft8  <-- 50.256
      0x80000ca8 fld     ft10, 136(s0)          #; ft10 <~~ Doub[0x00100088], (f:lsu) ft9  <-- 53.397
      0x80000cac fld     ft11, 144(s0)          #; ft11 <~~ Doub[0x00100090], (f:lsu) ft10 <-- 56.538
                                                #; (f:lsu) ft11 <-- 59.679
      0x80000cb0 fld     fs0, 152(s0)           #; fs0  <~~ Doub[0x00100098]
      0x80000cb4 fld     fs1, 160(s0)           #; fs1  <~~ Doub[0x001000a0], (f:lsu) fs0  <-- 62.82
      0x80000cb8 fld     fa0, 56(s0)            #; fa0  <~~ Doub[0x00100038], (f:lsu) fs1  <-- 65.961
      0x80000cbc fld     fa1, 64(s0)            #; fa1  <~~ Doub[0x00100040], (f:lsu) fa0  <-- 25.128
                                                #; (f:lsu) fa1  <-- 28.269
      0x80000cc0 fld     fa2, 72(s0)            #; fa2  <~~ Doub[0x00100048]
      0x80000cc4 fld     fa3, 80(s0)            #; fa3  <~~ Doub[0x00100050], (f:lsu) fa2  <-- 31.41
      0x80000cc8 fld     fa4, 88(s0)            #; fa4  <~~ Doub[0x00100058], (f:lsu) fa3  <-- 34.551
      0x80000ccc fld     fa5, 96(s0)            #; fa5  <~~ Doub[0x00100060], (f:lsu) fa4  <-- 37.692
                                                #; (f:lsu) fa5  <-- 40.833
      0x80000cd0 fld     fa6, 104(s0)           #; fa6  <~~ Doub[0x00100068]
      0x80000cd4 fld     ft6, 24(s0)            #; ft6  <~~ Doub[0x00100018], (f:lsu) fa6  <-- 43.9740000
      0x80000cd8 fld     ft4, 32(s0)            #; ft4  <~~ Doub[0x00100020], (f:lsu) ft6  <-- 12.564
      0x80000cdc fld     ft5, 40(s0)            #; ft5  <~~ Doub[0x00100028], (f:lsu) ft4  <-- 15.705
                                                #; (f:lsu) ft5  <-- 18.846
      0x80000ce4 j       pc + 0xe4              #; goto 0x80000dc8
      0x80000ce0 fld     ft7, 48(s0)            #; ft7  <~~ Doub[0x00100030]
                                                #; (f:lsu) ft7  <-- 21.9870000
      0x80000dc8 fld     fs10, 0(s0)            #; fs10 <~~ Doub[0x00100000]
      0x80000dcc fld     fs11, 8(s0)            #; fs11 <~~ Doub[0x00100008], (f:lsu) fs10 <-- 3.141
                                                #; (f:lsu) fs11 <-- 6.282
      0x80000dd0 fld     ft3, 16(s0)            #; ft3  <~~ Doub[0x00100010]
      0x80000dd4 fadd.d  fs2, fs9, fs2          #; fs9  = 1275.2460000, fs2  = 69.102, (f:lsu) ft3  <-- 9.423
                                                #; (f:fpu) fs2  <-- 1344.3480000
      0x80000dd8 fadd.d  fs2, fs2, fs3          #; fs2  = 1344.3480000, fs3  = 72.243
                                                #; (f:fpu) fs2  <-- 1416.5910000
      0x80000ddc fadd.d  fs2, fs2, fs4          #; fs2  = 1416.5910000, fs4  = 75.384
                                                #; (f:fpu) fs2  <-- 1491.9750000
      0x80000de0 fadd.d  fs2, fs2, fs5          #; fs2  = 1491.9750000, fs5  = 78.525
                                                #; (f:fpu) fs2  <-- 1570.5000000
      0x80000de4 fadd.d  fs2, fs2, fs6          #; fs2  = 1570.5000000, fs6  = 81.666
                                                #; (f:fpu) fs2  <-- 1652.1660000
      0x80000de8 fadd.d  fs2, fs2, fs7          #; fs2  = 1652.1660000, fs7  = 84.807
                                                #; (f:fpu) fs2  <-- 1736.9730000
      0x80000dec fadd.d  fs2, fs2, fs8          #; fs2  = 1736.9730000, fs8  = 87.9480000
                                                #; (f:fpu) fs2  <-- 1824.9210000
      0x80000df0 fadd.d  fa7, fs2, fa7          #; fs2  = 1824.9210000, fa7  = 47.115
                                                #; (f:fpu) fa7  <-- 1872.0360000
      0x80000df4 fadd.d  fa7, fa7, ft8          #; fa7  = 1872.0360000, ft8  = 50.256
                                                #; (f:fpu) fa7  <-- 1922.2920000
      0x80000df8 fadd.d  fa7, fa7, ft9          #; fa7  = 1922.2920000, ft9  = 53.397
                                                #; (f:fpu) fa7  <-- 1975.6890000
      0x80000dfc fadd.d  fa7, fa7, ft10         #; fa7  = 1975.6890000, ft10 = 56.538
                                                #; (f:fpu) fa7  <-- 2032.2270000
      0x80000e00 fadd.d  fa7, fa7, ft11         #; fa7  = 2032.2270000, ft11 = 59.679
                                                #; (f:fpu) fa7  <-- 2091.9060000
      0x80000e04 fadd.d  fa7, fa7, fs0          #; fa7  = 2091.9060000, fs0  = 62.82
                                                #; (f:fpu) fa7  <-- 2154.7260000
      0x80000e08 fadd.d  fa7, fa7, fs1          #; fa7  = 2154.7260000, fs1  = 65.961
                                                #; (f:fpu) fa7  <-- 2220.6870000
      0x80000e0c fadd.d  fa0, fa7, fa0          #; fa7  = 2220.6870000, fa0  = 25.128
                                                #; (f:fpu) fa0  <-- 2245.8150000
      0x80000e10 fadd.d  fa0, fa0, fa1          #; fa0  = 2245.8150000, fa1  = 28.269
                                                #; (f:fpu) fa0  <-- 2274.0840000
      0x80000e14 fadd.d  fa0, fa0, fa2          #; fa0  = 2274.0840000, fa2  = 31.41
                                                #; (f:fpu) fa0  <-- 2305.494
      0x80000e18 fadd.d  fa0, fa0, fa3          #; fa0  = 2305.494, fa3  = 34.551
; main (test_access.c:0)
      0x80000e38 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002e38
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 2340.045
; main (test_access.c:0)
      0x80000e3c addi    a0, a0, 1856           #; a0  = 0x80002e38, (wrb) a0  <-- 0x80003578
      0x80000e1c fadd.d  fa0, fa0, fa4          #; fa0  = 2340.045, fa4  = 37.692
                                                #; (f:fpu) fa0  <-- 2377.737
; main (test_access.c:41)
      0x80000e20 fadd.d  fa0, fa0, fa5          #; fa0  = 2377.737, fa5  = 40.833
                                                #; (f:fpu) fa0  <-- 2418.57
      0x80000e24 fadd.d  fa0, fa0, fa6          #; fa0  = 2418.57, fa6  = 43.9740000
                                                #; (f:fpu) fa0  <-- 2462.5440000
      0x80000e28 fadd.d  fa0, fa0, fs10         #; fa0  = 2462.5440000, fs10 = 3.141
                                                #; (f:fpu) fa0  <-- 2465.6850000
      0x80000e2c fadd.d  fa0, fa0, fs11         #; fa0  = 2465.6850000, fs11 = 6.282
                                                #; (f:fpu) fa0  <-- 2471.9670000
      0x80000e30 fadd.d  ft3, fa0, ft3          #; fa0  = 2471.9670000, ft3  = 9.423
                                                #; (f:fpu) ft3  <-- 2481.3900000
      0x80000e34 fadd.d  ft3, ft3, ft6          #; ft3  = 2481.3900000, ft6  = 12.564
; main (test_access.c:0)
      0x80000e40 fld     ft6, 0(a0)             #; ft6  <~~ Doub[0x80003578]
                                                #; (f:fpu) ft3  <-- 2493.954
; main (test_access.c:41)
      0x80000e44 fadd.d  ft3, ft3, ft4          #; ft3  = 2493.954, ft4  = 15.705
                                                #; (f:fpu) ft3  <-- 2509.659
; main (test_access.c:45)
      0x80000e48 fadd.d  ft3, ft3, ft5          #; ft3  = 2509.659, ft5  = 18.846
; main (test_access.c:48)
      0x80000e60 lw      a2, 16(sp)             #; sp  = 0x0011fee0, a2  <~~ Word[0x0011fef0]
                                                #; (f:lsu) ft6  <-- -2.0
                                                #; (f:fpu) ft3  <-- 2528.505
                                                #; (lsu) a2  <-- 0
      0x80000e4c fadd.d  ft3, ft3, ft7          #; ft3  = 2528.505, ft7  = 21.9870000
      0x80000e64 lw      a3, 20(sp)             #; sp  = 0x0011fee0, a3  <~~ Word[0x0011fef4]
      0x80000e50 fld     ft4, 8(sp)             #; ft4  <~~ Doub[0x0011fee8]
      0x80000e68 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002e68
                                                #; (f:lsu) ft4  <-- 1275.246
      0x80000e6c addi    a0, a0, 925            #; a0  = 0x80002e68, (wrb) a0  <-- 0x80003205
                                                #; (f:fpu) ft3  <-- 2550.492
                                                #; (lsu) a3  <-- 0
      0x80000e54 fmadd.d ft3, ft4, ft6, ft3     #; ft4  = 1275.246, ft6  = -2.0, ft3  = 2550.492
                                                #; (f:fpu) ft3  <-- 0.0
; main (test_access.c:46)
      0x80000e58 fsgnjx.d fs0, ft3, ft3         #; ft3  = 0.0, ft3  = 0.0
; main (test_access.c:48)
      0x80000e70 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000e70
                                                #; (f:fpu) fs0  <-- 0.0
      0x80000e74 jalr    ra, ra, 88             #; ra  = 0x80000e70, (wrb) ra  <-- 0x80000e78, goto 0x80000ec8
      0x80000e5c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011fef0]
; printf_ (printf.c:863)
      0x80000ec8 addi    sp, sp, -48            #; sp  = 0x0011fee0, (wrb) sp  <-- 0x0011feb0
      0x80000ecc sw      ra, 12(sp)             #; sp  = 0x0011feb0, 0x80000e78 ~~> Word[0x0011febc]
      0x80000ed0 mv      t0, a0                 #; a0  = 0x80003205, (wrb) t0  <-- 0x80003205
      0x80000ed4 sw      a7, 44(sp)             #; sp  = 0x0011feb0, 0xffff0000 ~~> Word[0x0011fedc]
      0x80000ed8 sw      a6, 40(sp)             #; sp  = 0x0011feb0, 0x00120000 ~~> Word[0x0011fed8]
      0x80000edc sw      a5, 36(sp)             #; sp  = 0x0011feb0, 0x0011ff70 ~~> Word[0x0011fed4]
      0x80000ee0 sw      a4, 32(sp)             #; sp  = 0x0011feb0, 192 ~~> Word[0x0011fed0]
      0x80000ee4 sw      a3, 28(sp)             #; sp  = 0x0011feb0, 0 ~~> Word[0x0011fecc]
      0x80000ee8 sw      a2, 24(sp)             #; sp  = 0x0011feb0, 0 ~~> Word[0x0011fec8]
      0x80000eec sw      a1, 20(sp)             #; sp  = 0x0011feb0, -160 ~~> Word[0x0011fec4]
      0x80000ef0 addi    a0, sp, 20             #; sp  = 0x0011feb0, (wrb) a0  <-- 0x0011fec4
; printf_ (printf.c:865)
      0x80000ef4 sw      a0, 8(sp)              #; sp  = 0x0011feb0, 0x0011fec4 ~~> Word[0x0011feb8]
; printf_ (printf.c:867)
      0x80000ef8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001ef8
      0x80000efc addi    a0, a0, -988           #; a0  = 0x80001ef8, (wrb) a0  <-- 0x80001b1c
      0x80000f00 addi    a1, sp, 7              #; sp  = 0x0011feb0, (wrb) a1  <-- 0x0011feb7
      0x80000f04 li      a2, -1                 #; (wrb) a2  <-- -1
      0x80000f08 addi    a4, sp, 20             #; sp  = 0x0011feb0, (wrb) a4  <-- 0x0011fec4
      0x80000f0c mv      a3, t0                 #; t0  = 0x80003205, (wrb) a3  <-- 0x80003205
      0x80000f10 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000f10
      0x80000f14 jalr    ra, ra, 20             #; ra  = 0x80000f10, (wrb) ra  <-- 0x80000f18, goto 0x80000f24
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000f24 addi    sp, sp, -112           #; sp  = 0x0011feb0, (wrb) sp  <-- 0x0011fe40
      0x80000f28 sw      ra, 108(sp)            #; sp  = 0x0011fe40, 0x80000f18 ~~> Word[0x0011feac]
      0x80000f2c sw      s0, 104(sp)            #; sp  = 0x0011fe40, 0x00100000 ~~> Word[0x0011fea8]
      0x80000f30 sw      s1, 100(sp)            #; sp  = 0x0011fe40, 0 ~~> Word[0x0011fea4]
      0x80000f34 sw      s2, 96(sp)             #; sp  = 0x0011fe40, 0 ~~> Word[0x0011fea0]
      0x80000f38 sw      s3, 92(sp)             #; sp  = 0x0011fe40, 0 ~~> Word[0x0011fe9c]
      0x80000f3c sw      s4, 88(sp)             #; sp  = 0x0011fe40, 0 ~~> Word[0x0011fe98]
      0x80000f40 sw      s5, 84(sp)             #; sp  = 0x0011fe40, 0 ~~> Word[0x0011fe94]
      0x80000f44 sw      s6, 80(sp)             #; sp  = 0x0011fe40, 0 ~~> Word[0x0011fe90]
      0x80000f48 sw      s7, 76(sp)             #; sp  = 0x0011fe40, 0 ~~> Word[0x0011fe8c]
      0x80000f4c sw      s8, 72(sp)             #; sp  = 0x0011fe40, 0 ~~> Word[0x0011fe88]
      0x80000f50 sw      s9, 68(sp)             #; sp  = 0x0011fe40, 0 ~~> Word[0x0011fe84]
      0x80000f54 sw      s10, 64(sp)            #; sp  = 0x0011fe40, 0 ~~> Word[0x0011fe80]
      0x80000f58 sw      s11, 60(sp)            #; sp  = 0x0011fe40, 0 ~~> Word[0x0011fe7c]
      0x80000f5c mv      s3, a4                 #; a4  = 0x0011fec4, (wrb) s3  <-- 0x0011fec4
      0x80000f60 mv      s0, a3                 #; a3  = 0x80003205, (wrb) s0  <-- 0x80003205
      0x80000f64 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x80000f68 mv      s4, a1                 #; a1  = 0x0011feb7, (wrb) s4  <-- 0x0011feb7
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x80000f6c beqz    a1, pc + 12            #; a1  = 0x0011feb7, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000f70 mv      s2, a0                 #; a0  = 0x80001b1c, (wrb) s2  <-- 0x80001b1c
      0x80000f74 j       pc + 0xc               #; goto 0x80000f80
      0x80000f80 li      s8, 0                  #; (wrb) s8  <-- 0
      0x80000f84 li      s6, 37                 #; (wrb) s6  <-- 37
      0x80000f88 li      s11, 16                #; (wrb) s11 <-- 16
      0x80000f8c li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000f90 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000f94 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000f98 sw      a0, 24(sp)             #; sp  = 0x0011fe40, 2048 ~~> Word[0x0011fe58]
      0x80000f9c lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000fa0 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000fa4 sw      a0, 16(sp)             #; sp  = 0x0011fe40, 65535 ~~> Word[0x0011fe50]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000fa8 addi    s10, s0, 2             #; s0  = 0x80003205, (wrb) s10 <-- 0x80003207
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000fac mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000fb0 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000fb4 lbu     a0, 0(s0)              #; s0  = 0x80003205, a0  <~~ Byte[0x80003205]
                                                #; (lsu) a0  <-- 101
      0x80000fb8 beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x80000fbc beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000fc0 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000fc4 mv      a1, s4                 #; s4  = 0x0011feb7, (wrb) a1  <-- 0x0011feb7
      0x80000fc8 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000fcc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000fd0 jalr    s2                     #; s2  = 0x80001b1c, (wrb) ra  <-- 0x80000fd4, goto 0x80001b1c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001b1c beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b20 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b24 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b28 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001b2c auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b2c
      0x80001b30 addi    a3, a3, -1272          #; a3  = 0x80003b2c, (wrb) a3  <-- 0x80003634
      0x80001b34 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003634, (wrb) a1  <-- 0x80003634
      0x80001b38 lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 0
      0x80001b3c addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x80001b40 sw      a5, 0(a1)              #; a1  = 0x80003634, 1 ~~> Word[0x80003634]
      0x80001b44 add     a4, a1, a4             #; a1  = 0x80003634, a4  = 0, (wrb) a4  <-- 0x80003634
      0x80001b48 sb      a0, 72(a4)             #; a4  = 0x80003634, 101 ~~> Byte[0x8000367c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b4c lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 1
      0x80001b50 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x80001b54 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x80001b58 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x80001b5c snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x80001b60 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b64 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001bc4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001bc4 ret                            #; ra  = 0x80000fd4, goto 0x80000fd4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000fd4 addi    s0, s0, 1              #; s0  = 0x80003205, (wrb) s0  <-- 0x80003206
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000fd8 addi    s10, s10, 1            #; s10 = 0x80003207, (wrb) s10 <-- 0x80003208
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000fdc mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000fe0 lbu     a0, 0(s0)              #; s0  = 0x80003206, a0  <~~ Byte[0x80003206]
                                                #; (lsu) a0  <-- 114
      0x80000fe4 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000fbc
      0x80000fbc beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000fc0 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000fc4 mv      a1, s4                 #; s4  = 0x0011feb7, (wrb) a1  <-- 0x0011feb7
      0x80000fc8 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000fcc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000fd0 jalr    s2                     #; s2  = 0x80001b1c, (wrb) ra  <-- 0x80000fd4, goto 0x80001b1c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001b1c beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b20 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b24 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b28 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001b2c auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b2c
      0x80001b30 addi    a3, a3, -1272          #; a3  = 0x80003b2c, (wrb) a3  <-- 0x80003634
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001b34 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003634, (wrb) a1  <-- 0x80003634
      0x80001b38 lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 1
      0x80001b3c addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x80001b40 sw      a5, 0(a1)              #; a1  = 0x80003634, 2 ~~> Word[0x80003634]
      0x80001b44 add     a4, a1, a4             #; a1  = 0x80003634, a4  = 1, (wrb) a4  <-- 0x80003635
      0x80001b48 sb      a0, 72(a4)             #; a4  = 0x80003635, 114 ~~> Byte[0x8000367d]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b4c lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 2
      0x80001b50 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x80001b54 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x80001b58 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001b5c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001b60 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b64 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001bc4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001bc4 ret                            #; ra  = 0x80000fd4, goto 0x80000fd4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000fd4 addi    s0, s0, 1              #; s0  = 0x80003206, (wrb) s0  <-- 0x80003207
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000fd8 addi    s10, s10, 1            #; s10 = 0x80003208, (wrb) s10 <-- 0x80003209
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000fdc mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000fe0 lbu     a0, 0(s0)              #; s0  = 0x80003207, a0  <~~ Byte[0x80003207]
                                                #; (lsu) a0  <-- 114
      0x80000fe4 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000fbc
      0x80000fbc beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000fc0 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000fc4 mv      a1, s4                 #; s4  = 0x0011feb7, (wrb) a1  <-- 0x0011feb7
      0x80000fc8 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000fcc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000fd0 jalr    s2                     #; s2  = 0x80001b1c, (wrb) ra  <-- 0x80000fd4, goto 0x80001b1c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001b1c beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b20 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b24 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b28 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001b2c auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b2c
      0x80001b30 addi    a3, a3, -1272          #; a3  = 0x80003b2c, (wrb) a3  <-- 0x80003634
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001b34 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003634, (wrb) a1  <-- 0x80003634
      0x80001b38 lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 2
      0x80001b3c addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x80001b40 sw      a5, 0(a1)              #; a1  = 0x80003634, 3 ~~> Word[0x80003634]
      0x80001b44 add     a4, a1, a4             #; a1  = 0x80003634, a4  = 2, (wrb) a4  <-- 0x80003636
      0x80001b48 sb      a0, 72(a4)             #; a4  = 0x80003636, 114 ~~> Byte[0x8000367e]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b4c lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 3
      0x80001b50 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x80001b54 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x80001b58 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001b5c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001b60 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b64 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001bc4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001bc4 ret                            #; ra  = 0x80000fd4, goto 0x80000fd4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000fd4 addi    s0, s0, 1              #; s0  = 0x80003207, (wrb) s0  <-- 0x80003208
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000fd8 addi    s10, s10, 1            #; s10 = 0x80003209, (wrb) s10 <-- 0x8000320a
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000fdc mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000fe0 lbu     a0, 0(s0)              #; s0  = 0x80003208, a0  <~~ Byte[0x80003208]
                                                #; (lsu) a0  <-- 111
      0x80000fe4 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000fbc
      0x80000fbc beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000fc0 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000fc4 mv      a1, s4                 #; s4  = 0x0011feb7, (wrb) a1  <-- 0x0011feb7
      0x80000fc8 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000fcc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000fd0 jalr    s2                     #; s2  = 0x80001b1c, (wrb) ra  <-- 0x80000fd4, goto 0x80001b1c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001b1c beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b20 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b24 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b28 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001b2c auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b2c
      0x80001b30 addi    a3, a3, -1272          #; a3  = 0x80003b2c, (wrb) a3  <-- 0x80003634
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001b34 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003634, (wrb) a1  <-- 0x80003634
      0x80001b38 lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 3
      0x80001b3c addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x80001b40 sw      a5, 0(a1)              #; a1  = 0x80003634, 4 ~~> Word[0x80003634]
      0x80001b44 add     a4, a1, a4             #; a1  = 0x80003634, a4  = 3, (wrb) a4  <-- 0x80003637
      0x80001b48 sb      a0, 72(a4)             #; a4  = 0x80003637, 111 ~~> Byte[0x8000367f]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b4c lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 4
      0x80001b50 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x80001b54 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x80001b58 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x80001b5c snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x80001b60 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b64 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001bc4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001bc4 ret                            #; ra  = 0x80000fd4, goto 0x80000fd4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000fd4 addi    s0, s0, 1              #; s0  = 0x80003208, (wrb) s0  <-- 0x80003209
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000fd8 addi    s10, s10, 1            #; s10 = 0x8000320a, (wrb) s10 <-- 0x8000320b
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000fdc mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000fe0 lbu     a0, 0(s0)              #; s0  = 0x80003209, a0  <~~ Byte[0x80003209]
                                                #; (lsu) a0  <-- 114
      0x80000fe4 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000fbc
      0x80000fbc beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000fc0 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000fc4 mv      a1, s4                 #; s4  = 0x0011feb7, (wrb) a1  <-- 0x0011feb7
      0x80000fc8 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000fcc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000fd0 jalr    s2                     #; s2  = 0x80001b1c, (wrb) ra  <-- 0x80000fd4, goto 0x80001b1c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001b1c beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b20 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b24 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b28 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001b2c auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b2c
      0x80001b30 addi    a3, a3, -1272          #; a3  = 0x80003b2c, (wrb) a3  <-- 0x80003634
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001b34 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003634, (wrb) a1  <-- 0x80003634
      0x80001b38 lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 4
      0x80001b3c addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x80001b40 sw      a5, 0(a1)              #; a1  = 0x80003634, 5 ~~> Word[0x80003634]
      0x80001b44 add     a4, a1, a4             #; a1  = 0x80003634, a4  = 4, (wrb) a4  <-- 0x80003638
      0x80001b48 sb      a0, 72(a4)             #; a4  = 0x80003638, 114 ~~> Byte[0x80003680]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b4c lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 5
      0x80001b50 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x80001b54 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x80001b58 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001b5c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001b60 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b64 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001bc4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001bc4 ret                            #; ra  = 0x80000fd4, goto 0x80000fd4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000fd4 addi    s0, s0, 1              #; s0  = 0x80003209, (wrb) s0  <-- 0x8000320a
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000fd8 addi    s10, s10, 1            #; s10 = 0x8000320b, (wrb) s10 <-- 0x8000320c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000fdc mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000fe0 lbu     a0, 0(s0)              #; s0  = 0x8000320a, a0  <~~ Byte[0x8000320a]
                                                #; (lsu) a0  <-- 32
      0x80000fe4 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000fbc
      0x80000fbc beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000fc0 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000fc4 mv      a1, s4                 #; s4  = 0x0011feb7, (wrb) a1  <-- 0x0011feb7
      0x80000fc8 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000fcc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000fd0 jalr    s2                     #; s2  = 0x80001b1c, (wrb) ra  <-- 0x80000fd4, goto 0x80001b1c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001b1c beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b20 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b24 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b28 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001b2c auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b2c
      0x80001b30 addi    a3, a3, -1272          #; a3  = 0x80003b2c, (wrb) a3  <-- 0x80003634
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001b34 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003634, (wrb) a1  <-- 0x80003634
      0x80001b38 lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 5
      0x80001b3c addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x80001b40 sw      a5, 0(a1)              #; a1  = 0x80003634, 6 ~~> Word[0x80003634]
      0x80001b44 add     a4, a1, a4             #; a1  = 0x80003634, a4  = 5, (wrb) a4  <-- 0x80003639
      0x80001b48 sb      a0, 72(a4)             #; a4  = 0x80003639, 32 ~~> Byte[0x80003681]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b4c lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 6
      0x80001b50 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x80001b54 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x80001b58 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001b5c snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001b60 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b64 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001bc4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001bc4 ret                            #; ra  = 0x80000fd4, goto 0x80000fd4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000fd4 addi    s0, s0, 1              #; s0  = 0x8000320a, (wrb) s0  <-- 0x8000320b
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000fd8 addi    s10, s10, 1            #; s10 = 0x8000320c, (wrb) s10 <-- 0x8000320d
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000fdc mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000fe0 lbu     a0, 0(s0)              #; s0  = 0x8000320b, a0  <~~ Byte[0x8000320b]
                                                #; (lsu) a0  <-- 61
      0x80000fe4 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000fbc
      0x80000fbc beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000fc0 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000fc4 mv      a1, s4                 #; s4  = 0x0011feb7, (wrb) a1  <-- 0x0011feb7
      0x80000fc8 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000fcc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000fd0 jalr    s2                     #; s2  = 0x80001b1c, (wrb) ra  <-- 0x80000fd4, goto 0x80001b1c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001b1c beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b20 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b24 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b28 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001b2c auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b2c
      0x80001b30 addi    a3, a3, -1272          #; a3  = 0x80003b2c, (wrb) a3  <-- 0x80003634
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001b34 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003634, (wrb) a1  <-- 0x80003634
      0x80001b38 lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 6
      0x80001b3c addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x80001b40 sw      a5, 0(a1)              #; a1  = 0x80003634, 7 ~~> Word[0x80003634]
      0x80001b44 add     a4, a1, a4             #; a1  = 0x80003634, a4  = 6, (wrb) a4  <-- 0x8000363a
      0x80001b48 sb      a0, 72(a4)             #; a4  = 0x8000363a, 61 ~~> Byte[0x80003682]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b4c lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 7
      0x80001b50 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x80001b54 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x80001b58 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x80001b5c snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x80001b60 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b64 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001bc4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001bc4 ret                            #; ra  = 0x80000fd4, goto 0x80000fd4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000fd4 addi    s0, s0, 1              #; s0  = 0x8000320b, (wrb) s0  <-- 0x8000320c
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000fd8 addi    s10, s10, 1            #; s10 = 0x8000320d, (wrb) s10 <-- 0x8000320e
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000fdc mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000fe0 lbu     a0, 0(s0)              #; s0  = 0x8000320c, a0  <~~ Byte[0x8000320c]
                                                #; (lsu) a0  <-- 32
      0x80000fe4 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000fbc
      0x80000fbc beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000fc0 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000fc4 mv      a1, s4                 #; s4  = 0x0011feb7, (wrb) a1  <-- 0x0011feb7
      0x80000fc8 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000fcc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000fd0 jalr    s2                     #; s2  = 0x80001b1c, (wrb) ra  <-- 0x80000fd4, goto 0x80001b1c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001b1c beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b20 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b24 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b28 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001b2c auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b2c
      0x80001b30 addi    a3, a3, -1272          #; a3  = 0x80003b2c, (wrb) a3  <-- 0x80003634
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001b34 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003634, (wrb) a1  <-- 0x80003634
      0x80001b38 lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 7
      0x80001b3c addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x80001b40 sw      a5, 0(a1)              #; a1  = 0x80003634, 8 ~~> Word[0x80003634]
      0x80001b44 add     a4, a1, a4             #; a1  = 0x80003634, a4  = 7, (wrb) a4  <-- 0x8000363b
      0x80001b48 sb      a0, 72(a4)             #; a4  = 0x8000363b, 32 ~~> Byte[0x80003683]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b4c lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 8
      0x80001b50 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x80001b54 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x80001b58 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001b5c snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001b60 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b64 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001bc4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001bc4 ret                            #; ra  = 0x80000fd4, goto 0x80000fd4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000fd4 addi    s0, s0, 1              #; s0  = 0x8000320c, (wrb) s0  <-- 0x8000320d
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000fd8 addi    s10, s10, 1            #; s10 = 0x8000320e, (wrb) s10 <-- 0x8000320f
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000fdc mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000fe0 lbu     a0, 0(s0)              #; s0  = 0x8000320d, a0  <~~ Byte[0x8000320d]
                                                #; (lsu) a0  <-- 37
      0x80000fe4 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000fbc
      0x80000fbc beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000fec
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000fec li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ff0 j       pc + 0x10              #; goto 0x80001000
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80001000 lbu     a0, -1(s10)            #; s10 = 0x8000320f, a0  <~~ Byte[0x8000320e]
                                                #; (lsu) a0  <-- 102
      0x80001004 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80001008 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80001040
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80001040 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80001044 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80001048 addi    a1, s10, -1            #; s10 = 0x8000320f, (wrb) a1  <-- 0x8000320e
      0x8000104c li      a3, 9                  #; (wrb) a3  <-- 9
      0x80001050 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x800010cc
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x800010cc li      a2, 42                 #; (wrb) a2  <-- 42
      0x800010d0 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80001120
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001120 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80001124 mv      s10, a1                #; a1  = 0x8000320e, (wrb) s10 <-- 0x8000320e
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80001128 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x8000112c li      s7, 0                  #; (wrb) s7  <-- 0
      0x80001130 j       pc + 0xc               #; goto 0x8000113c
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x8000113c addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80001140 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80001144 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80001148 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x8000114c li      a2, 9                  #; (wrb) a2  <-- 9
      0x80001150 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x800011b4
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x800011b4 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x800011b8 li      a2, 83                 #; (wrb) a2  <-- 83
      0x800011bc bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800011c0 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x800011c4 auipc   a2, 0x2                #; (wrb) a2  <-- 0x800031c4
      0x800011c8 addi    a2, a2, 192            #; a2  = 0x800031c4, (wrb) a2  <-- 0x80003284
      0x800011cc add     a1, a1, a2             #; a1  = 260, a2  = 0x80003284, (wrb) a1  <-- 0x80003388
      0x800011d0 lw      a2, 0(a1)              #; a1  = 0x80003388, a2  <~~ Word[0x80003388]
      0x800011d4 li      a1, 8                  #; (wrb) a1  <-- 8
      0x800011d8 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x8000120c
      0x800011dc jr      a2                     #; a2  = 0x8000120c, goto 0x8000120c
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x8000120c li      a1, 70                 #; (wrb) a1  <-- 70
      0x80001210 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80001218
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80001218 addi    a0, s3, 7              #; s3  = 0x0011fec4, (wrb) a0  <-- 0x0011fecb
      0x8000121c andi    a0, a0, -8             #; a0  = 0x0011fecb, (wrb) a0  <-- 0x0011fec8
      0x80001224 addi    s3, a0, 8              #; a0  = 0x0011fec8, (wrb) s3  <-- 0x0011fed0
      0x80001228 mv      a0, s2                 #; s2  = 0x80001b1c, (wrb) a0  <-- 0x80001b1c
      0x80001220 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011fec8]
      0x8000122c mv      a1, s4                 #; s4  = 0x0011feb7, (wrb) a1  <-- 0x0011feb7
; ?? (??:0)
                                                #; (f:lsu) fa0  <-- 0.0
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80001230 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80001234 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001238 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x8000123c mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80001240 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80001244 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80002244
      0x80001248 jalr    ra, ra, -1656          #; ra  = 0x80002244, (wrb) ra  <-- 0x8000124c, goto 0x80001bcc
; _ftoa (printf.c:340)
      0x80001bcc addi    sp, sp, -112           #; sp  = 0x0011fe40, (wrb) sp  <-- 0x0011fdd0
      0x80001bd0 sw      ra, 108(sp)            #; sp  = 0x0011fdd0, 0x8000124c ~~> Word[0x0011fe3c]
      0x80001bd4 sw      s0, 104(sp)            #; sp  = 0x0011fdd0, 0 ~~> Word[0x0011fe38]
      0x80001bd8 sw      s1, 100(sp)            #; sp  = 0x0011fdd0, 8 ~~> Word[0x0011fe34]
      0x80001bdc sw      s2, 96(sp)             #; sp  = 0x0011fdd0, 0x80001b1c ~~> Word[0x0011fe30]
      0x80001be0 sw      s3, 92(sp)             #; sp  = 0x0011fdd0, 0x0011fed0 ~~> Word[0x0011fe2c]
      0x80001be4 sw      s4, 88(sp)             #; sp  = 0x0011fdd0, 0x0011feb7 ~~> Word[0x0011fe28]
      0x80001be8 sw      s5, 84(sp)             #; sp  = 0x0011fdd0, -1 ~~> Word[0x0011fe24]
      0x80001bec sw      s6, 80(sp)             #; sp  = 0x0011fdd0, 0 ~~> Word[0x0011fe20]
      0x80001bf0 sw      s7, 76(sp)             #; sp  = 0x0011fdd0, 0 ~~> Word[0x0011fe1c]
      0x80001bf4 sw      s8, 72(sp)             #; sp  = 0x0011fdd0, 16 ~~> Word[0x0011fe18]
      0x80001bf8 sw      s9, 68(sp)             #; sp  = 0x0011fdd0, 8 ~~> Word[0x0011fe14]
      0x80001bfc sw      s10, 64(sp)            #; sp  = 0x0011fdd0, 0x8000320e ~~> Word[0x0011fe10]
      0x80001c00 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe08]
      0x80001c0c auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003c0c
      0x80001c04 fsd     fs1, 48(sp)            #; 65.961 ~~> Doub[0x0011fe00]
      0x80001c08 fsd     fs2, 40(sp)            #; 1824.9210000 ~~> Doub[0x0011fdf8]
      0x80001c10 addi    s1, s1, -1668          #; s1  = 0x80003c0c, (wrb) s1  <-- 0x80003588
; _ftoa (printf.c:351)
      0x80001c1c mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
      0x80001c14 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003588]
; _ftoa (printf.c:0)
      0x80001c20 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x80001c24 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x80001c18 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
      0x80001c28 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x80001c2c mv      s6, a1                 #; a1  = 0x0011feb7, (wrb) s6  <-- 0x0011feb7
      0x80001c30 mv      s7, a0                 #; a0  = 0x80001b1c, (wrb) s7  <-- 0x80001b1c
; _ftoa (printf.c:351)
      0x80001c34 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001d24
; _ftoa (printf.c:0)
      0x80001d28 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003d28
      0x80001d2c addi    a0, a0, -1944          #; a0  = 0x80003d28, (wrb) a0  <-- 0x80003590
      0x80001d24 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x80001d30 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003590]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x80001d34 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x80001d38 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001d54
; _ftoa (printf.c:0)
      0x80001d54 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003d54
      0x80001d58 addi    a0, a0, -1980          #; a0  = 0x80003d54, (wrb) a0  <-- 0x80003598
      0x80001d5c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003598]
      0x80001d60 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003d60
      0x80001d64 addi    a0, a0, -1984          #; a0  = 0x80003d60, (wrb) a0  <-- 0x800035a0
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
      0x80001d68 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800035a0]
; _ftoa (printf.c:358)
      0x80001d6c fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
      0x80001d70 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
                                                #; (acc) a0  <-- 0x00b57533
      0x80001d74 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80001d78 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001e74
; _ftoa (printf.c:374)
      0x80001e74 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x80001e78 li      s8, 6                  #; (wrb) s8  <-- 6
      0x80001e7c beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001e84
; _ftoa (printf.c:0)
      0x80001e84 li      a0, 10                 #; (wrb) a0  <-- 10
; _ftoa (printf.c:378)
      0x80001e8c bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001ec4
; _ftoa (printf.c:0)
      0x80001e88 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs2  <-- 0.0
      0x80001ec4 li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x80001ec8 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x80001ecc auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002ecc
      0x80001ed0 addi    a1, a1, 1292           #; a1  = 0x80002ecc, (wrb) a1  <-- 0x800033d8
      0x80001ed4 add     a0, a0, a1             #; a0  = 48, a1  = 0x800033d8, (wrb) a0  <-- 0x80003408
      0x80001ed8 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003408]
; _ftoa (printf.c:383)
      0x80001edc fcvt.w.d s1, fs2               #; fs2  = 0.0
; _ftoa (printf.c:384)
      0x80001ee0 fcvt.d.w ft0, s1               #; ac1  = 0, (f:lsu) ft1  <-- 1000000.0000000
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:0)
      0x80001eec auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002eec
      0x80001ee4 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:384)
      0x80001ee8 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:0)
      0x80001ef0 addi    a0, a0, 1724           #; a0  = 0x80002eec, (wrb) a0  <-- 0x800035a8
      0x80001ef4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800035a8]
; _ftoa (printf.c:385)
      0x80001ef8 fcvt.wu.d a0, ft2              #; ft2  = 0.0
                                                #; (acc) gp  <-- 0xd21501d3
; _ftoa (printf.c:386)
      0x80001efc fcvt.d.wu ft3, a0              #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
                                                #; (f:lsu) ft0  <-- 0.5
      0x80001f00 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:388)
      0x80001f04 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x80001f08 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001f28
; _ftoa (printf.c:396)
      0x80001f28 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
                                                #; (acc) s4  <-- 0x00059a63
      0x80001f2c bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001f40
; _ftoa (printf.c:403)
      0x80001f44 beqz    s8, pc + 216           #; s8  = 6, not taken
      0x80001f40 fcvt.d.w fs1, zero             #; ac1  = 0
; _ftoa (printf.c:0)
      0x80001f48 li      a2, 0                  #; (wrb) a2  <-- 0
                                                #; (f:fpu) fs1  <-- 0.0
      0x80001f4c addi    a1, sp, 8              #; sp  = 0x0011fdd0, (wrb) a1  <-- 0x0011fdd8
; _ftoa (printf.c:414)
      0x80001f50 add     t1, a1, s0             #; a1  = 0x0011fdd8, s0  = 0, (wrb) t1  <-- 0x0011fdd8
      0x80001f54 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001f58 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x80001f5c lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80001f60 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80001f64 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001f68 li      a7, 9                  #; (wrb) a7  <-- 9
      0x80001f6c beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80001f70 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x80001f74 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001f78 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001f7c mul     a3, a0, a6             #; a0  = 0, a6  = 10
      0x80001f80 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001f84 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x80001f88 add     a5, t1, a2             #; t1  = 0x0011fdd8, a2  = 0, (wrb) a5  <-- 0x0011fdd8
      0x80001f8c sb      a3, 0(a5)              #; a5  = 0x0011fdd8, 48 ~~> Byte[0x0011fdd8]
; _ftoa (printf.c:417)
      0x80001f90 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80001f94 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x80001f98 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x80001f9c addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80001fa0 li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001fa4 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x80001fa8 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x80001fac seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x80001fb0 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x80001fb4 bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x80001fb8 addi    a0, sp, 8              #; sp  = 0x0011fdd0, (wrb) a0  <-- 0x0011fdd8
; _ftoa (printf.c:422)
      0x80001fbc add     a0, a0, s0             #; a0  = 0x0011fdd8, s0  = 0, (wrb) a0  <-- 0x0011fdd8
      0x80001fc0 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x80001fc4 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x80001fc8 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x80001fcc li      a1, 31                 #; (wrb) a1  <-- 31
      0x80001fd0 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x80001fd4 add     a0, a0, a2             #; a0  = 0x0011fdd8, a2  = 1, (wrb) a0  <-- 0x0011fdd9
      0x80001fd8 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x80001fdc bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001fe4
      0x80001fe4 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x80001fe8 li      a1, 48                 #; (wrb) a1  <-- 48
      0x80001fec auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x7fffffec
      0x80001ff0 jalr    ra, ra, 1388           #; ra  = 0x7fffffec, (wrb) ra  <-- 0x80001ff4, goto 0x80000558
; memset (memset.S:30)
      0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
; memset (memset.S:31)
      0x8000055c mv      a4, a0                 #; a0  = 0x0011fdd9, (wrb) a4  <-- 0x0011fdd9
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
      0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fdd9, 48 ~~> Byte[0x0011fddd]
; memset (memset.S:80)
      0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fdd9, 48 ~~> Byte[0x0011fddc]
; memset (memset.S:81)
      0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fdd9, 48 ~~> Byte[0x0011fddb]
; memset (memset.S:82)
      0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fdd9, 48 ~~> Byte[0x0011fdda]
; memset (memset.S:83)
      0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fdd9, 48 ~~> Byte[0x0011fdd9]
; memset (memset.S:85)
      0x800005ec ret                            #; ra  = 0x80001ff4, goto 0x80001ff4
; _ftoa (printf.c:0)
      0x80001ff4 li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x80001ff8 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x80001ffc sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80002000 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x80002004 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80002008 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x8000200c addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80002010 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ff8
      0x80001ff8 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x80001ffc sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80002000 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x80002004 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80002008 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x8000200c addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80002010 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ff8
      0x80001ff8 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x80001ffc sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80002000 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x80002004 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80002008 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x8000200c addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80002010 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ff8
      0x80001ff8 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x80001ffc sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80002000 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x80002004 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80002008 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x8000200c addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80002010 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ff8
      0x80001ff8 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x80001ffc sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80002000 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x80002004 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80002008 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x8000200c addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80002010 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80002014 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x80002018 j       pc + 0x28              #; goto 0x80002040
      0x80002040 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80002044 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80002048 addi    a1, sp, 8              #; sp  = 0x0011fdd0, (wrb) a1  <-- 0x0011fdd8
; _ftoa (printf.c:427)
      0x8000204c add     a0, a1, a0             #; a1  = 0x0011fdd8, a0  = 6, (wrb) a0  <-- 0x0011fdde
      0x80002050 li      a1, 46                 #; (wrb) a1  <-- 46
      0x80002054 sb      a1, 0(a0)              #; a0  = 0x0011fdde, 46 ~~> Byte[0x0011fdde]
      0x80002058 j       pc + 0x8               #; goto 0x80002060
; _ftoa (printf.c:0)
      0x80002060 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80002064 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80002068 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x8000206c li      t0, 32                 #; (wrb) t0  <-- 32
      0x80002074 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80002070 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
      0x80002078 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x8000207c li      a6, 10                 #; (wrb) a6  <-- 10
      0x80002080 addi    a3, sp, 8              #; sp  = 0x0011fdd0, (wrb) a3  <-- 0x0011fdd8
      0x80002084 li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80002088 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x8000208c mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
      0x80002090 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80002094 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80002098 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x8000209c mul     a5, a0, a6             #; a0  = 0, a6  = 10
      0x800020a0 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x800020a4 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x800020a8 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x800020ac add     s0, a3, s0             #; a3  = 0x0011fdd8, s0  = 7, (wrb) s0  <-- 0x0011fddf
; _ftoa (printf.c:434)
      0x800020b0 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x800020b4 sb      a5, 0(s0)              #; s0  = 0x0011fddf, 48 ~~> Byte[0x0011fddf]
; _ftoa (printf.c:0)
      0x800020b8 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x800020bc mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x800020c0 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x800020c4 j       pc + 0x8               #; goto 0x800020cc
; _ftoa (printf.c:440)
      0x800020cc andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x800020d0 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x800020d4 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80002140
; _ftoa (printf.c:0)
      0x80002140 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80002144 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80002148 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80002160
; _ftoa (printf.c:453)
      0x80002160 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80002164 bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80002168 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x8000216c beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80002198
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80002198 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x8000219c sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x800021a0 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x800021a4 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x800021a8 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x800021ac mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x800021b0 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x800021dc
; _ftoa (printf.c:0)
      0x800021dc srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800021e0 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x800021e4 addi    s9, sp, 7              #; sp  = 0x0011fdd0, (wrb) s9  <-- 0x0011fdd7
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800021e8 add     a0, s9, s8             #; s9  = 0x0011fdd7, s8  = 8, (wrb) a0  <-- 0x0011fddf
      0x800021ec lbu     a0, 0(a0)              #; a0  = 0x0011fddf, a0  <~~ Byte[0x0011fddf]
                                                #; (lsu) a0  <-- 48
      0x800021f0 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x800021f4 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
      0x800021f8 mv      a1, s6                 #; s6  = 0x0011feb7, (wrb) a1  <-- 0x0011feb7
      0x800021fc mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80002200 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80002204 jalr    s7                     #; s7  = 0x80001b1c, (wrb) ra  <-- 0x80002208, goto 0x80001b1c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001b1c beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b20 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b24 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b28 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001b2c auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b2c
      0x80001b30 addi    a3, a3, -1272          #; a3  = 0x80003b2c, (wrb) a3  <-- 0x80003634
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001b34 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003634, (wrb) a1  <-- 0x80003634
      0x80001b38 lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 8
      0x80001b3c addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x80001b40 sw      a5, 0(a1)              #; a1  = 0x80003634, 9 ~~> Word[0x80003634]
      0x80001b44 add     a4, a1, a4             #; a1  = 0x80003634, a4  = 8, (wrb) a4  <-- 0x8000363c
      0x80001b48 sb      a0, 72(a4)             #; a4  = 0x8000363c, 48 ~~> Byte[0x80003684]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b4c lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 9
      0x80001b50 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x80001b54 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x80001b58 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001b5c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001b60 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b64 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001bc4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001bc4 ret                            #; ra  = 0x80002208, goto 0x80002208
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80002208 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x8000220c mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80002210 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x800021e8
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800021e8 add     a0, s9, s8             #; s9  = 0x0011fdd7, s8  = 7, (wrb) a0  <-- 0x0011fdde
      0x800021ec lbu     a0, 0(a0)              #; a0  = 0x0011fdde, a0  <~~ Byte[0x0011fdde]
      0x800021f0 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x800021f4 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x800021f8 mv      a1, s6                 #; s6  = 0x0011feb7, (wrb) a1  <-- 0x0011feb7
      0x800021fc mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80002200 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80002204 jalr    s7                     #; s7  = 0x80001b1c, (wrb) ra  <-- 0x80002208, goto 0x80001b1c
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001b1c beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b20 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b24 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b28 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001b2c auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b2c
      0x80001b30 addi    a3, a3, -1272          #; a3  = 0x80003b2c, (wrb) a3  <-- 0x80003634
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001b34 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003634, (wrb) a1  <-- 0x80003634
      0x80001b38 lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 9
      0x80001b3c addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x80001b40 sw      a5, 0(a1)              #; a1  = 0x80003634, 10 ~~> Word[0x80003634]
      0x80001b44 add     a4, a1, a4             #; a1  = 0x80003634, a4  = 9, (wrb) a4  <-- 0x8000363d
      0x80001b48 sb      a0, 72(a4)             #; a4  = 0x8000363d, 46 ~~> Byte[0x80003685]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b4c lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 10
      0x80001b50 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x80001b54 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x80001b58 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x80001b5c snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x80001b60 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b64 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001bc4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001bc4 ret                            #; ra  = 0x80002208, goto 0x80002208
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80002208 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x8000220c mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80002210 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x800021e8
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800021e8 add     a0, s9, s8             #; s9  = 0x0011fdd7, s8  = 6, (wrb) a0  <-- 0x0011fddd
      0x800021ec lbu     a0, 0(a0)              #; a0  = 0x0011fddd, a0  <~~ Byte[0x0011fddd]
      0x800021f0 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x800021f4 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x800021f8 mv      a1, s6                 #; s6  = 0x0011feb7, (wrb) a1  <-- 0x0011feb7
      0x800021fc mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80002200 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80002204 jalr    s7                     #; s7  = 0x80001b1c, (wrb) ra  <-- 0x80002208, goto 0x80001b1c
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001b1c beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b20 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b24 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b28 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001b2c auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b2c
      0x80001b30 addi    a3, a3, -1272          #; a3  = 0x80003b2c, (wrb) a3  <-- 0x80003634
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001b34 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003634, (wrb) a1  <-- 0x80003634
      0x80001b38 lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 10
      0x80001b3c addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x80001b40 sw      a5, 0(a1)              #; a1  = 0x80003634, 11 ~~> Word[0x80003634]
      0x80001b44 add     a4, a1, a4             #; a1  = 0x80003634, a4  = 10, (wrb) a4  <-- 0x8000363e
      0x80001b48 sb      a0, 72(a4)             #; a4  = 0x8000363e, 48 ~~> Byte[0x80003686]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b4c lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 11
      0x80001b50 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x80001b54 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x80001b58 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001b5c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001b60 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b64 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001bc4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001bc4 ret                            #; ra  = 0x80002208, goto 0x80002208
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80002208 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x8000220c mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80002210 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x800021e8
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800021e8 add     a0, s9, s8             #; s9  = 0x0011fdd7, s8  = 5, (wrb) a0  <-- 0x0011fddc
      0x800021ec lbu     a0, 0(a0)              #; a0  = 0x0011fddc, a0  <~~ Byte[0x0011fddc]
      0x800021f0 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x800021f4 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x800021f8 mv      a1, s6                 #; s6  = 0x0011feb7, (wrb) a1  <-- 0x0011feb7
      0x800021fc mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80002200 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80002204 jalr    s7                     #; s7  = 0x80001b1c, (wrb) ra  <-- 0x80002208, goto 0x80001b1c
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001b1c beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b20 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b24 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b28 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001b2c auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b2c
      0x80001b30 addi    a3, a3, -1272          #; a3  = 0x80003b2c, (wrb) a3  <-- 0x80003634
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001b34 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003634, (wrb) a1  <-- 0x80003634
      0x80001b38 lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 11
      0x80001b3c addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x80001b40 sw      a5, 0(a1)              #; a1  = 0x80003634, 12 ~~> Word[0x80003634]
      0x80001b44 add     a4, a1, a4             #; a1  = 0x80003634, a4  = 11, (wrb) a4  <-- 0x8000363f
      0x80001b48 sb      a0, 72(a4)             #; a4  = 0x8000363f, 48 ~~> Byte[0x80003687]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b4c lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 12
      0x80001b50 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x80001b54 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x80001b58 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001b5c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001b60 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b64 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001bc4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001bc4 ret                            #; ra  = 0x80002208, goto 0x80002208
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80002208 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x8000220c mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80002210 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x800021e8
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800021e8 add     a0, s9, s8             #; s9  = 0x0011fdd7, s8  = 4, (wrb) a0  <-- 0x0011fddb
      0x800021ec lbu     a0, 0(a0)              #; a0  = 0x0011fddb, a0  <~~ Byte[0x0011fddb]
      0x800021f0 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x800021f4 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x800021f8 mv      a1, s6                 #; s6  = 0x0011feb7, (wrb) a1  <-- 0x0011feb7
      0x800021fc mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80002200 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80002204 jalr    s7                     #; s7  = 0x80001b1c, (wrb) ra  <-- 0x80002208, goto 0x80001b1c
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001b1c beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b20 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b24 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b28 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001b2c auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b2c
      0x80001b30 addi    a3, a3, -1272          #; a3  = 0x80003b2c, (wrb) a3  <-- 0x80003634
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001b34 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003634, (wrb) a1  <-- 0x80003634
      0x80001b38 lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 12
      0x80001b3c addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x80001b40 sw      a5, 0(a1)              #; a1  = 0x80003634, 13 ~~> Word[0x80003634]
      0x80001b44 add     a4, a1, a4             #; a1  = 0x80003634, a4  = 12, (wrb) a4  <-- 0x80003640
      0x80001b48 sb      a0, 72(a4)             #; a4  = 0x80003640, 48 ~~> Byte[0x80003688]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b4c lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 13
      0x80001b50 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x80001b54 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x80001b58 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001b5c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001b60 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b64 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001bc4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001bc4 ret                            #; ra  = 0x80002208, goto 0x80002208
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80002208 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x8000220c mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80002210 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x800021e8
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800021e8 add     a0, s9, s8             #; s9  = 0x0011fdd7, s8  = 3, (wrb) a0  <-- 0x0011fdda
      0x800021ec lbu     a0, 0(a0)              #; a0  = 0x0011fdda, a0  <~~ Byte[0x0011fdda]
      0x800021f0 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x800021f4 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x800021f8 mv      a1, s6                 #; s6  = 0x0011feb7, (wrb) a1  <-- 0x0011feb7
      0x800021fc mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80002200 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80002204 jalr    s7                     #; s7  = 0x80001b1c, (wrb) ra  <-- 0x80002208, goto 0x80001b1c
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001b1c beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b20 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b24 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b28 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001b2c auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b2c
      0x80001b30 addi    a3, a3, -1272          #; a3  = 0x80003b2c, (wrb) a3  <-- 0x80003634
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001b34 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003634, (wrb) a1  <-- 0x80003634
      0x80001b38 lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 13
      0x80001b3c addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x80001b40 sw      a5, 0(a1)              #; a1  = 0x80003634, 14 ~~> Word[0x80003634]
      0x80001b44 add     a4, a1, a4             #; a1  = 0x80003634, a4  = 13, (wrb) a4  <-- 0x80003641
      0x80001b48 sb      a0, 72(a4)             #; a4  = 0x80003641, 48 ~~> Byte[0x80003689]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b4c lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 14
      0x80001b50 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x80001b54 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x80001b58 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001b5c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001b60 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b64 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001bc4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001bc4 ret                            #; ra  = 0x80002208, goto 0x80002208
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80002208 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x8000220c mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80002210 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x800021e8
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800021e8 add     a0, s9, s8             #; s9  = 0x0011fdd7, s8  = 2, (wrb) a0  <-- 0x0011fdd9
      0x800021ec lbu     a0, 0(a0)              #; a0  = 0x0011fdd9, a0  <~~ Byte[0x0011fdd9]
      0x800021f0 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x800021f4 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x800021f8 mv      a1, s6                 #; s6  = 0x0011feb7, (wrb) a1  <-- 0x0011feb7
      0x800021fc mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80002200 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80002204 jalr    s7                     #; s7  = 0x80001b1c, (wrb) ra  <-- 0x80002208, goto 0x80001b1c
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001b1c beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b20 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b24 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b28 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001b2c auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b2c
      0x80001b30 addi    a3, a3, -1272          #; a3  = 0x80003b2c, (wrb) a3  <-- 0x80003634
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001b34 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003634, (wrb) a1  <-- 0x80003634
      0x80001b38 lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 14
      0x80001b3c addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x80001b40 sw      a5, 0(a1)              #; a1  = 0x80003634, 15 ~~> Word[0x80003634]
      0x80001b44 add     a4, a1, a4             #; a1  = 0x80003634, a4  = 14, (wrb) a4  <-- 0x80003642
      0x80001b48 sb      a0, 72(a4)             #; a4  = 0x80003642, 48 ~~> Byte[0x8000368a]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b4c lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 15
      0x80001b50 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x80001b54 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x80001b58 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001b5c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001b60 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b64 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001bc4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001bc4 ret                            #; ra  = 0x80002208, goto 0x80002208
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80002208 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x8000220c mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80002210 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x800021e8
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800021e8 add     a0, s9, s8             #; s9  = 0x0011fdd7, s8  = 1, (wrb) a0  <-- 0x0011fdd8
      0x800021ec lbu     a0, 0(a0)              #; a0  = 0x0011fdd8, a0  <~~ Byte[0x0011fdd8]
      0x800021f0 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x800021f4 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x800021f8 mv      a1, s6                 #; s6  = 0x0011feb7, (wrb) a1  <-- 0x0011feb7
      0x800021fc mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80002200 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80002204 jalr    s7                     #; s7  = 0x80001b1c, (wrb) ra  <-- 0x80002208, goto 0x80001b1c
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001b1c beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b20 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b24 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b28 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001b2c auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b2c
      0x80001b30 addi    a3, a3, -1272          #; a3  = 0x80003b2c, (wrb) a3  <-- 0x80003634
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001b34 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003634, (wrb) a1  <-- 0x80003634
      0x80001b38 lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 15
      0x80001b3c addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x80001b40 sw      a5, 0(a1)              #; a1  = 0x80003634, 16 ~~> Word[0x80003634]
      0x80001b44 add     a4, a1, a4             #; a1  = 0x80003634, a4  = 15, (wrb) a4  <-- 0x80003643
      0x80001b48 sb      a0, 72(a4)             #; a4  = 0x80003643, 48 ~~> Byte[0x8000368b]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b4c lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 16
      0x80001b50 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x80001b54 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x80001b58 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001b5c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001b60 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b64 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001bc4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001bc4 ret                            #; ra  = 0x80002208, goto 0x80002208
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80002208 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x8000220c mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80002210 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80002214 j       pc + 0x8               #; goto 0x8000221c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x8000221c sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x80002220 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80002224 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80002228 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x8000222c or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80002230 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80002260
; _ftoa (printf.c:0)
      0x80002260 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x80002264 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80002268 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fdf8]
      0x8000226c fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe00], (f:lsu) fs2  <-- 1824.9210000
                                                #; (f:lsu) fs1  <-- 65.961
      0x80002274 lw      s10, 64(sp)            #; sp  = 0x0011fdd0, s10 <~~ Word[0x0011fe10]
      0x80002270 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe08]
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) s10 <-- 0x8000320e
      0x80002278 lw      s9, 68(sp)             #; sp  = 0x0011fdd0, s9  <~~ Word[0x0011fe14]
                                                #; (lsu) s9  <-- 8
      0x8000227c lw      s8, 72(sp)             #; sp  = 0x0011fdd0, s8  <~~ Word[0x0011fe18]
                                                #; (lsu) s8  <-- 16
      0x80002280 lw      s7, 76(sp)             #; sp  = 0x0011fdd0, s7  <~~ Word[0x0011fe1c]
                                                #; (lsu) s7  <-- 0
      0x80002284 lw      s6, 80(sp)             #; sp  = 0x0011fdd0, s6  <~~ Word[0x0011fe20]
                                                #; (lsu) s6  <-- 0
      0x80002288 lw      s5, 84(sp)             #; sp  = 0x0011fdd0, s5  <~~ Word[0x0011fe24]
                                                #; (lsu) s5  <-- -1
      0x8000228c lw      s4, 88(sp)             #; sp  = 0x0011fdd0, s4  <~~ Word[0x0011fe28]
                                                #; (lsu) s4  <-- 0x0011feb7
      0x80002290 lw      s3, 92(sp)             #; sp  = 0x0011fdd0, s3  <~~ Word[0x0011fe2c]
                                                #; (lsu) s3  <-- 0x0011fed0
      0x80002294 lw      s2, 96(sp)             #; sp  = 0x0011fdd0, s2  <~~ Word[0x0011fe30]
                                                #; (lsu) s2  <-- 0x80001b1c
      0x80002298 lw      s1, 100(sp)            #; sp  = 0x0011fdd0, s1  <~~ Word[0x0011fe34]
                                                #; (lsu) s1  <-- 8
      0x8000229c lw      s0, 104(sp)            #; sp  = 0x0011fdd0, s0  <~~ Word[0x0011fe38]
                                                #; (lsu) s0  <-- 0
      0x800022a0 lw      ra, 108(sp)            #; sp  = 0x0011fdd0, ra  <~~ Word[0x0011fe3c]
      0x800022a4 addi    sp, sp, 112            #; sp  = 0x0011fdd0, (wrb) sp  <-- 0x0011fe40
                                                #; (lsu) ra  <-- 0x8000124c
      0x800022a8 ret                            #; ra  = 0x8000124c, goto 0x8000124c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x8000124c j       pc + 0x7c0             #; goto 0x80001a0c
      0x80001a0c mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x80001a10 li      s6, 37                 #; (wrb) s6  <-- 37
      0x80001a14 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80001a18 addi    s0, s10, 1             #; s10 = 0x8000320e, (wrb) s0  <-- 0x8000320f
      0x80001a1c j       pc - 0xa74             #; goto 0x80000fa8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000fa8 addi    s10, s0, 2             #; s0  = 0x8000320f, (wrb) s10 <-- 0x80003211
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000fac mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x80000fb0 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000fb4 lbu     a0, 0(s0)              #; s0  = 0x8000320f, a0  <~~ Byte[0x8000320f]
                                                #; (lsu) a0  <-- 10
      0x80000fb8 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000fbc beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000fc0 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x80000fc4 mv      a1, s4                 #; s4  = 0x0011feb7, (wrb) a1  <-- 0x0011feb7
      0x80000fc8 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x80000fcc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000fd0 jalr    s2                     #; s2  = 0x80001b1c, (wrb) ra  <-- 0x80000fd4, goto 0x80001b1c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001b1c beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b20 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b24 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b28 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001b2c auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003b2c
      0x80001b30 addi    a3, a3, -1272          #; a3  = 0x80003b2c, (wrb) a3  <-- 0x80003634
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001b34 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003634, (wrb) a1  <-- 0x80003634
      0x80001b38 lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 16
      0x80001b3c addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x80001b40 sw      a5, 0(a1)              #; a1  = 0x80003634, 17 ~~> Word[0x80003634]
      0x80001b44 add     a4, a1, a4             #; a1  = 0x80003634, a4  = 16, (wrb) a4  <-- 0x80003644
      0x80001b48 sb      a0, 72(a4)             #; a4  = 0x80003644, 10 ~~> Byte[0x8000368c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b4c lw      a4, 0(a1)              #; a1  = 0x80003634, a4  <~~ Word[0x80003634]
                                                #; (lsu) a4  <-- 17
      0x80001b50 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x80001b54 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x80001b58 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x80001b5c snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x80001b60 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x80001b64 bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b68 add     a0, a3, a2             #; a3  = 0x80003634, a2  = 0, (wrb) a0  <-- 0x80003634
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b6c addi    a2, a0, 72             #; a0  = 0x80003634, (wrb) a2  <-- 0x8000367c
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b70 sw      zero, 12(a0)           #; a0  = 0x80003634, 0 ~~> Word[0x80003640]
      0x80001b74 li      a3, 64                 #; (wrb) a3  <-- 64
      0x80001b78 sw      a3, 8(a0)              #; a0  = 0x80003634, 64 ~~> Word[0x8000363c]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b7c sw      zero, 20(a0)           #; a0  = 0x80003634, 0 ~~> Word[0x80003648]
      0x80001b80 li      a3, 1                  #; (wrb) a3  <-- 1
      0x80001b84 sw      a3, 16(a0)             #; a0  = 0x80003634, 1 ~~> Word[0x80003644]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b88 sw      zero, 28(a0)           #; a0  = 0x80003634, 0 ~~> Word[0x80003650]
      0x80001b8c sw      a2, 24(a0)             #; a0  = 0x80003634, 0x8000367c ~~> Word[0x8000364c]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b90 lw      a2, 0(a1)              #; a1  = 0x80003634, a2  <~~ Word[0x80003634]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b94 addi    a3, a0, 8              #; a0  = 0x80003634, (wrb) a3  <-- 0x8000363c
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001b98 sw      zero, 36(a0)           #; a0  = 0x80003634, 0 ~~> Word[0x80003658]
                                                #; (lsu) a2  <-- 17
      0x80001b9c sw      a2, 32(a0)             #; a0  = 0x80003634, 17 ~~> Word[0x80003654]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001ba0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003ba0
      0x80001ba4 addi    a0, a0, -1888          #; a0  = 0x80003ba0, (wrb) a0  <-- 0x80003440
      0x80001ba8 sw      a3, 0(a0)              #; a0  = 0x80003440, 0x8000363c ~~> Word[0x80003440]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001bac auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003bac
      0x80001bb0 addi    a0, a0, -1836          #; a0  = 0x80003bac, (wrb) a0  <-- 0x80003480
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001bb4 lw      a2, 0(a0)              #; a0  = 0x80003480, a2  <~~ Word[0x80003480]
                                                #; (lsu) a2  <-- 0
      0x80001bb8 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001bb4
      0x80001bb4 lw      a2, 0(a0)              #; a0  = 0x80003480, a2  <~~ Word[0x80003480]
                                                #; (lsu) a2  <-- 0
      0x80001bb8 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001bb4
      0x80001bb4 lw      a2, 0(a0)              #; a0  = 0x80003480, a2  <~~ Word[0x80003480]
                                                #; (lsu) a2  <-- 0
      0x80001bb8 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001bb4
      0x80001bb4 lw      a2, 0(a0)              #; a0  = 0x80003480, a2  <~~ Word[0x80003480]
                                                #; (lsu) a2  <-- 0
      0x80001bb8 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001bb4
      0x80001bb4 lw      a2, 0(a0)              #; a0  = 0x80003480, a2  <~~ Word[0x80003480]
                                                #; (lsu) a2  <-- 0
      0x80001bb8 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001bb4
      0x80001bb4 lw      a2, 0(a0)              #; a0  = 0x80003480, a2  <~~ Word[0x80003480]
                                                #; (lsu) a2  <-- 0
      0x80001bb8 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001bb4
      0x80001bb4 lw      a2, 0(a0)              #; a0  = 0x80003480, a2  <~~ Word[0x80003480]
                                                #; (lsu) a2  <-- 1
      0x80001bb8 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001bbc sw      zero, 0(a0)            #; a0  = 0x80003480, 0 ~~> Word[0x80003480]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001bc0 sw      zero, 0(a1)            #; a1  = 0x80003634, 0 ~~> Word[0x80003634]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001bc4 ret                            #; ra  = 0x80000fd4, goto 0x80000fd4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000fd4 addi    s0, s0, 1              #; s0  = 0x8000320f, (wrb) s0  <-- 0x80003210
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000fd8 addi    s10, s10, 1            #; s10 = 0x80003211, (wrb) s10 <-- 0x80003212
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000fdc mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000fe0 lbu     a0, 0(s0)              #; s0  = 0x80003210, a0  <~~ Byte[0x80003210]
                                                #; (lsu) a0  <-- 0
      0x80000fe4 bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000fe8 j       pc + 0xad8             #; goto 0x80001ac0
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x80001ac0 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x80001ac4 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001acc
      0x80001acc li      a0, 0                  #; (wrb) a0  <-- 0
      0x80001ad0 mv      a1, s4                 #; s4  = 0x0011feb7, (wrb) a1  <-- 0x0011feb7
      0x80001ad4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001ad8 jalr    s2                     #; s2  = 0x80001b1c, (wrb) ra  <-- 0x80001adc, goto 0x80001b1c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001b1c beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001bc4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001bc4 ret                            #; ra  = 0x80001adc, goto 0x80001adc
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x80001adc mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x80001ae0 lw      s11, 60(sp)            #; sp  = 0x0011fe40, s11 <~~ Word[0x0011fe7c]
                                                #; (lsu) s11 <-- 0
      0x80001ae4 lw      s10, 64(sp)            #; sp  = 0x0011fe40, s10 <~~ Word[0x0011fe80]
                                                #; (lsu) s10 <-- 0
      0x80001ae8 lw      s9, 68(sp)             #; sp  = 0x0011fe40, s9  <~~ Word[0x0011fe84]
                                                #; (lsu) s9  <-- 0
      0x80001aec lw      s8, 72(sp)             #; sp  = 0x0011fe40, s8  <~~ Word[0x0011fe88]
                                                #; (lsu) s8  <-- 0
      0x80001af0 lw      s7, 76(sp)             #; sp  = 0x0011fe40, s7  <~~ Word[0x0011fe8c]
                                                #; (lsu) s7  <-- 0
      0x80001af4 lw      s6, 80(sp)             #; sp  = 0x0011fe40, s6  <~~ Word[0x0011fe90]
                                                #; (lsu) s6  <-- 0
      0x80001af8 lw      s5, 84(sp)             #; sp  = 0x0011fe40, s5  <~~ Word[0x0011fe94]
                                                #; (lsu) s5  <-- 0
      0x80001afc lw      s4, 88(sp)             #; sp  = 0x0011fe40, s4  <~~ Word[0x0011fe98]
                                                #; (lsu) s4  <-- 0
      0x80001b00 lw      s3, 92(sp)             #; sp  = 0x0011fe40, s3  <~~ Word[0x0011fe9c]
                                                #; (lsu) s3  <-- 0
      0x80001b04 lw      s2, 96(sp)             #; sp  = 0x0011fe40, s2  <~~ Word[0x0011fea0]
                                                #; (lsu) s2  <-- 0
      0x80001b08 lw      s1, 100(sp)            #; sp  = 0x0011fe40, s1  <~~ Word[0x0011fea4]
                                                #; (lsu) s1  <-- 0
      0x80001b0c lw      s0, 104(sp)            #; sp  = 0x0011fe40, s0  <~~ Word[0x0011fea8]
                                                #; (lsu) s0  <-- 0x00100000
      0x80001b10 lw      ra, 108(sp)            #; sp  = 0x0011fe40, ra  <~~ Word[0x0011feac]
      0x80001b14 addi    sp, sp, 112            #; sp  = 0x0011fe40, (wrb) sp  <-- 0x0011feb0
                                                #; (lsu) ra  <-- 0x80000f18
      0x80001b18 ret                            #; ra  = 0x80000f18, goto 0x80000f18
; printf_ (printf.c:869)
      0x80000f18 lw      ra, 12(sp)             #; sp  = 0x0011feb0, ra  <~~ Word[0x0011febc]
      0x80000f1c addi    sp, sp, 48             #; sp  = 0x0011feb0, (wrb) sp  <-- 0x0011fee0
                                                #; (lsu) ra  <-- 0x80000e78
      0x80000f20 ret                            #; ra  = 0x80000e78, goto 0x80000e78
; main (test_access.c:0)
      0x80000e78 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002e78
      0x80000e7c addi    a0, a0, 1800           #; a0  = 0x80002e78, (wrb) a0  <-- 0x80003580
      0x80000e80 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003580]
                                                #; (f:lsu) ft3  <-- 0.0001
; main (test_access.c:50)
      0x80000e84 flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0
                                                #; (acc) s9  <-- 0x02813c87
      0x80000e88 fld     fs11, 24(sp)           #; fs11 <~~ Doub[0x0011fef8]
; main (test_access.c:51)
      0x80000e8c fld     fs10, 32(sp)           #; fs10 <~~ Doub[0x0011ff00], (f:lsu) fs11 <-- 0.0
      0x80000e90 fld     fs9, 40(sp)            #; fs9  <~~ Doub[0x0011ff08], (f:lsu) fs10 <-- 0.0
      0x80000e94 fld     fs8, 48(sp)            #; fs8  <~~ Doub[0x0011ff10], (f:lsu) fs9  <-- 0.0
      0x80000e98 fld     fs7, 56(sp)            #; fs7  <~~ Doub[0x0011ff18], (f:lsu) fs8  <-- 0.0
      0x80000e9c fld     fs6, 64(sp)            #; fs6  <~~ Doub[0x0011ff20], (f:lsu) fs7  <-- 0.0
      0x80000ea0 fld     fs5, 72(sp)            #; fs5  <~~ Doub[0x0011ff28], (f:lsu) fs6  <-- 0.0
      0x80000ea4 fld     fs4, 80(sp)            #; fs4  <~~ Doub[0x0011ff30], (f:lsu) fs5  <-- 0.0
      0x80000ea8 fld     fs3, 88(sp)            #; fs3  <~~ Doub[0x0011ff38], (f:lsu) fs4  <-- 0.0
      0x80000eac fld     fs2, 96(sp)            #; fs2  <~~ Doub[0x0011ff40], (f:lsu) fs3  <-- 0.0
      0x80000eb8 lw      s0, 120(sp)            #; sp  = 0x0011fee0, s0  <~~ Word[0x0011ff58]
      0x80000eb0 fld     fs1, 104(sp)           #; fs1  <~~ Doub[0x0011ff48], (f:lsu) fs2  <-- 0.0
      0x80000eb4 fld     fs0, 112(sp)           #; fs0  <~~ Doub[0x0011ff50], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) s0  <-- 0
      0x80000ebc lw      ra, 124(sp)            #; sp  = 0x0011fee0, ra  <~~ Word[0x0011ff5c]
                                                #; (lsu) ra  <-- 0x80002f80
      0x80000ec0 addi    sp, sp, 128            #; sp  = 0x0011fee0, (wrb) sp  <-- 0x0011ff60
      0x80000ec4 ret                            #; ra  = 0x80002f80, goto 0x80002f80
; ?? (start.S:184)
      0x80002f80 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x80002f84 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002f84
      0x80002f88 jalr    ra, ra, 524            #; ra  = 0x80002f84, (wrb) ra  <-- 0x80002f8c, goto 0x80003190
; ?? (start_snitch.S:33)
      0x80003190 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80003194 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002f8c ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80003198 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003198
      0x8000319c jalr    ra, ra, -1268          #; ra  = 0x80003198, (wrb) ra  <-- 0x800031a0, goto 0x80002ca4
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002ca4 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002ca8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002cac lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002cb0 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002cb4 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002cb8 ret                            #; ra  = 0x800031a0, goto 0x800031a0
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x800031a0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x800031a4 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x800031a8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x800031ac addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002f8c
; ?? (start_snitch.S:40)
      0x800031b0 ret                            #; ra  = 0x80002f8c, goto 0x80002f8c
; ?? (start.S:195)
      0x80002f8c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x80002f90 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002f90
      0x80002f94 jalr    ra, ra, 556            #; ra  = 0x80002f90, (wrb) ra  <-- 0x80002f98, goto 0x800031bc
; ?? (start_snitch.S:15)
      0x800031bc addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x800031c0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x800031c4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002f98 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x800031c8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800031c8
      0x800031cc jalr    ra, ra, -1348          #; ra  = 0x800031c8, (wrb) ra  <-- 0x800031d0, goto 0x80002c84
; snrt_global_core_idx (team.c:32)
      0x80002c84 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002c88 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002c8c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002c90 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002c94 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x80002c98 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x80002c9c sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x80002ca0 ret                            #; ra  = 0x800031d0, goto 0x800031d0
; ?? (start_snitch.S:20)
      0x800031d0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x800031d4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x800031d8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x800031dc bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x80002f98
; ?? (start_snitch.S:28)
      0x800031e0 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x800031e4 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x800031e8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800031e8
      0x800031ec addi    t1, t1, 600            #; t1  = 0x800031e8, (wrb) t1  <-- 0x80003440
; ?? (start_snitch.S:31)
      0x800031f0 sw      t0, 0(t1)              #; t1  = 0x80003440, 1 ~~> Word[0x80003440]
; ?? (start_snitch.S:32)
      0x800031f4 ret                            #; ra  = 0x80002f98, goto 0x80002f98
; ?? (start.S:198)
      0x80002f98 wfi                            #; 
                        tion 0 @ (12, 6186):
                          141
                          143
                           17
                           81
                      11.7943
                       0.2143
                       0.1684
                          1.0
                          1.0
                            0
                       1.9878
                       4.5556
                       0.0434
                       0.0266
                       0.6119
                         6175
                       0.2577
