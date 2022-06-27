; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x800031a0
      0x00001014 jalr    t0                     #; t0  = 0x800031a0, (wrb) ra  <-- 4120, goto 0x800031a0
; ?? (start.S:20)
      0x800031a0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x800041a0
; ?? (start.S:21)
      0x800031a4 addi    gp, gp, -280           #; gp  = 0x800041a0, (wrb) gp  <-- 0x80004088
; ?? (start.S:28)
      0x800031a8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800031a8
      0x800031ac jalr    ra, ra, 964            #; ra  = 0x800031a8, (wrb) ra  <-- 0x800031b0, goto 0x8000356c
; ?? (start_snitch.S:16)
      0x8000356c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80003570 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80003574 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80003578 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x8000357c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80003580 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80003584 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80003588 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x8000358c mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80003590 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80003594 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80003598 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x8000359c ret                            #; ra  = 0x800031b0, goto 0x800031b0
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x800031b0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x800031b4 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x800031b8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800031b8
      0x800031bc jalr    ra, ra, 1036           #; ra  = 0x800031b8, (wrb) ra  <-- 0x800031c0, goto 0x800035c4
; ?? (start_snitch.S:48)
      0x800035c4 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x800035c8 ret                            #; ra  = 0x800031c0, goto 0x800031c0
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x800031c0 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x800031c4 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x800031c8 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x800031cc sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x800031d0 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x800031d4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800031d4
      0x800031d8 addi    t0, t0, 1924           #; t0  = 0x800031d4, (wrb) t0  <-- 0x80003958
; ?? (start.S:49)
      0x800031dc auipc   t1, 0x0                #; (wrb) t1  <-- 0x800031dc
      0x800031e0 addi    t1, t1, 1920           #; t1  = 0x800031dc, (wrb) t1  <-- 0x8000395c
; ?? (start.S:50)
      0x800031e4 bge     t0, t1, pc + 16        #; t0  = 0x80003958, t1  = 0x8000395c, not taken
; ?? (start.S:51)
      0x800031e8 sw      zero, 0(t0)            #; t0  = 0x80003958, 0 ~~> Word[0x80003958]
; ?? (start.S:52)
      0x800031ec addi    t0, t0, 4              #; t0  = 0x80003958, (wrb) t0  <-- 0x8000395c
; ?? (start.S:53)
      0x800031f0 blt     t0, t1, pc - 8         #; t0  = 0x8000395c, t1  = 0x8000395c, not taken
; ?? (start.S:58)
      0x800031f4 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x800031f8 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x800031fc beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x80003200 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x80003204 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x80003208 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x8000320c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x80003210 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x80003214 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x80003218 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x8000321c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x80003220 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x80003224 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x80003228 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x8000322c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x80003230 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x80003234 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x80003238 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x8000323c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x80003240 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x80003244 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x80003248 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x8000324c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x80003250 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x80003254 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x80003258 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x8000325c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x80003260 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x80003264 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x80003268 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x8000326c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x80003270 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x80003274 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x80003278 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x8000327c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x80003280 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x80003284 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x80003288 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003288
      0x8000328c lw      t0, 900(t0)            #; t0  = 0x80003288, t0  <~~ Word[0x8000360c]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x80003290 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x80003294 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x80003298 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80003298
      0x8000329c lw      t2, 880(t2)            #; t2  = 0x80003298, t2  <~~ Word[0x80003608]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x800032a0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x800032a4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x800032a8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x800032ac sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x800032b0 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x800032b4 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x800032b8 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x800032bc sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x800032c0 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800032c0
      0x800032c4 addi    t0, t0, 1480           #; t0  = 0x800032c0, (wrb) t0  <-- 0x80003888
; ?? (start.S:125)
      0x800032c8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800032c8
      0x800032cc addi    t1, t1, 1472           #; t1  = 0x800032c8, (wrb) t1  <-- 0x80003888
; ?? (start.S:126)
      0x800032d0 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800032d0
      0x800032d4 addi    t2, t2, 1464           #; t2  = 0x800032d0, (wrb) t2  <-- 0x80003888
; ?? (start.S:127)
      0x800032d8 auipc   t3, 0x0                #; (wrb) t3  <-- 0x800032d8
      0x800032dc addi    t3, t3, 1472           #; t3  = 0x800032d8, (wrb) t3  <-- 0x80003898
; ?? (start.S:128)
      0x800032e0 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003888, (wrb) sp  <-- 0x801237f8
; ?? (start.S:129)
      0x800032e4 sub     sp, sp, t1             #; sp  = 0x801237f8, t1  = 0x80003888, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x800032e8 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003888, (wrb) sp  <-- 0x801237f8
; ?? (start.S:131)
      0x800032ec sub     sp, sp, t3             #; sp  = 0x801237f8, t3  = 0x80003898, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x800032f0 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x800032f4 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x800032f8 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x800032fc mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x80003300 bge     t0, t1, pc + 24        #; t0  = 0x80003888, t1  = 0x80003888, taken, goto 0x80003318
; ?? (start.S:147)
      0x80003318 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003318
      0x8000331c addi    t0, t0, 1392           #; t0  = 0x80003318, (wrb) t0  <-- 0x80003888
; ?? (start.S:148)
      0x80003320 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003320
      0x80003324 addi    t1, t1, 1400           #; t1  = 0x80003320, (wrb) t1  <-- 0x80003898
; ?? (start.S:149)
      0x80003328 bge     t0, t1, pc + 20        #; t0  = 0x80003888, t1  = 0x80003898, not taken
; ?? (start.S:150)
      0x8000332c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x80003330 addi    t0, t0, 4              #; t0  = 0x80003888, (wrb) t0  <-- 0x8000388c
; ?? (start.S:152)
      0x80003334 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x80003338 blt     t0, t2, pc - 12        #; t0  = 0x8000388c, t2  = 0x80003888, not taken
; ?? (start.S:158)
      0x8000333c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x80003340 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x80003344 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x80003348 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x8000334c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x80003350 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x80003354 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003354
      0x80003358 jalr    ra, ra, -1060          #; ra  = 0x80003354, (wrb) ra  <-- 0x8000335c, goto 0x80002f30
; _snrt_init_team (start.c:49)
      0x80002f30 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x80002f34 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x80002f38 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x80002f3c sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x80002f40 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x80002f44 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x80002f48 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x80002f4c mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x80002f50 mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x80002f54 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x80002f58 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x80002f5c sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x80002f60 divu    a0, a0, t0             #; a0  = 0, t0  = 8
                                                #; (acc) a6  <-- 0x00a7a823
; _snrt_init_team (start.c:54)
      0x80002f64 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x80002f68 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x80002f6c sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x80002f70 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x80002f74 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x80002f78 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x80002f7c add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x80002f80 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x80002f84 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x80002f88 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x80002f8c lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x80002f90 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x80002f94 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x80002f98 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x80002f9c sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x80002fa0 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x80002fa4 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x80002fa8 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x80002fac add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x80002fb0 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x80002fb4 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x80002fb8 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x80002fbc srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x80002fc0 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x80002fc4 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x80002fc8 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x80002fcc sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x80002fd0 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x80002fd4 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x80002fd8 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x80002fdc sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x80002fe0 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x80002fe4 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x80002fe8 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x80002fec sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x80002ff0 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002ff4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002ff8 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x80002ffc lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80003000 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x80003004 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x80003008 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x8000300c remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x80003010 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x80003014 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
                                                #; (acc) tp  <-- 0x00a5a223
      0x80003018 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x8000301c li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x80003020 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x80003024 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80004024
      0x80003028 addi    a1, a1, -1736          #; a1  = 0x80004024, (wrb) a1  <-- 0x8000395c
                                                #; (acc) a0  <-- 0x00b50533
      0x8000302c add     a0, a0, a1             #; a0  = 0, a1  = 0x8000395c, (wrb) a0  <-- 0x8000395c
      0x80003030 sw      zero, 0(a0)            #; a0  = 0x8000395c, 0 ~~> Word[0x8000395c]
; _snrt_init_team (start.c:86)
      0x80003034 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x80003038 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x8000303c sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x80003040 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x80003044 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x80003048 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x8000304c addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x80003050 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x80003054 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x80003058 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x8000305c sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x80003060 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x80003064 lw      a0, 0(a1)              #; a1  = 0x8000395c, a0  <~~ Word[0x8000395c]
                                                #; (lsu) a0  <-- 0
      0x80003068 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x8000306c andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x80003070 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x80003074 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x80003078 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x8000307c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80003080 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80003084 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x80003088 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000308c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80003090 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x80003094 ret                            #; ra  = 0x8000335c, goto 0x8000335c
; ?? (start.S:165)
      0x8000335c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x80003360 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x80003364 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x80003368 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x8000336c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x80003370 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x80003374 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003374
      0x80003378 addi    t0, t0, 60             #; t0  = 0x80003374, (wrb) t0  <-- 0x800033b0
; ?? (start.S:175)
      0x8000337c csrw    mtvec, t0              #; t0  = 0x800033b0, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x80003380 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003380
      0x80003384 jalr    ra, ra, 544            #; ra  = 0x80003380, (wrb) ra  <-- 0x80003388, goto 0x800035a0
; ?? (start_snitch.S:33)
      0x800035a0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x800035a4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80003388 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x800035a8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800035a8
      0x800035ac jalr    ra, ra, -1264          #; ra  = 0x800035a8, (wrb) ra  <-- 0x800035b0, goto 0x800030b8
; _snrt_barrier_reg_ptr (team.c:80)
      0x800030b8 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800030bc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800030c0 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800030c4 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800030c8 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x800030cc ret                            #; ra  = 0x800035b0, goto 0x800035b0
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x800035b0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x800035b4 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x800035b8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x800035bc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80003388
; ?? (start_snitch.S:40)
      0x800035c0 ret                            #; ra  = 0x80003388, goto 0x80003388
; ?? (start.S:183)
      0x80003388 auipc   ra, 0xffffd            #; (wrb) ra  <-- 0x80000388
      0x8000338c jalr    ra, ra, 684            #; ra  = 0x80000388, (wrb) ra  <-- 0x80003390, goto 0x80000634
; main (test_mat.c:14)
      0x80000634 addi    sp, sp, -192           #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011fea0
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (test_mat.c:15)
      0x80000638 sw      ra, 188(sp)            #; sp  = 0x0011fea0, 0x80003390 ~~> Word[0x0011ff5c]
      0x8000063c sw      s0, 184(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff58]
      0x80000640 sw      s1, 180(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff54]
      0x80000644 sw      s2, 176(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff50]
      0x80000648 sw      s3, 172(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff4c]
      0x8000064c sw      s4, 168(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff48]
      0x80000650 sw      s5, 164(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff44]
      0x80000654 sw      s6, 160(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff40]
      0x80000658 fsd     fs0, 152(sp)           #; 0.0 ~~> Doub[0x0011ff38]
      0x8000065c fsd     fs1, 144(sp)           #; 0.0 ~~> Doub[0x0011ff30]
      0x80000660 fsd     fs2, 136(sp)           #; 0.0 ~~> Doub[0x0011ff28]
      0x80000664 fsd     fs3, 128(sp)           #; 0.0 ~~> Doub[0x0011ff20]
      0x80000668 fsd     fs4, 120(sp)           #; 0.0 ~~> Doub[0x0011ff18]
      0x8000066c fsd     fs5, 112(sp)           #; 0.0 ~~> Doub[0x0011ff10]
      0x80000670 fsd     fs6, 104(sp)           #; 0.0 ~~> Doub[0x0011ff08]
      0x80000674 fsd     fs7, 96(sp)            #; 0.0 ~~> Doub[0x0011ff00]
      0x80000678 fsd     fs8, 88(sp)            #; 0.0 ~~> Doub[0x0011fef8]
      0x8000067c fsd     fs9, 80(sp)            #; 0.0 ~~> Doub[0x0011fef0]
      0x80000688 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000680 fsd     fs10, 72(sp)           #; 0.0 ~~> Doub[0x0011fee8]
      0x8000068c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000684 fsd     fs11, 64(sp)           #; 0.0 ~~> Doub[0x0011fee0]
      0x80000690 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
; main (test_mat.c:0)
      0x80000694 li      a0, 0                  #; (wrb) a0  <-- 0
                                                #; (lsu) a1  <-- 0
; main (test_mat.c:15)
      0x80000698 bnez    a1, pc + 2132          #; a1  = 0, not taken
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (test_mat.c:23)
      0x8000069c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800006a0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800006a4 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800006a8 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in main (test_mat.c:23)
      0x800006ac lw      s0, 88(a0)             #; a0  = 0x0011ff70, s0  <~~ Word[0x0011ffc8]
                                                #; (lsu) s0  <-- 0x00100000
      0x800006b0 lw      a1, 80(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
                                                #; (lsu) a1  <-- 0x00100000
      0x800006b4 lw      a3, 84(a0)             #; a0  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
      0x800006b8 addi    a2, s0, 240            #; s0  = 0x00100000, (wrb) a2  <-- 0x001000f0
                                                #; (lsu) a3  <-- 0x0001df30
      0x800006bc add     a1, a3, a1             #; a3  = 0x0001df30, a1  = 0x00100000, (wrb) a1  <-- 0x0011df30
      0x800006c0 bgeu    a1, a2, pc + 44        #; a1  = 0x0011df30, a2  = 0x001000f0, taken, goto 0x800006ec
; snrt_l1alloc (alloc.c:33)
;  in main (test_mat.c:23)
      0x800006ec mv      s2, s0                 #; s0  = 0x00100000, (wrb) s2  <-- 0x00100000
; snrt_l1alloc (alloc.c:34)
;  in main (test_mat.c:23)
      0x800006f0 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x001000f0 ~~> Word[0x0011ffc8]
; snrt_l1alloc (alloc.c:25)
;  in main (test_mat.c:24)
      0x800006f4 mv      s0, a2                 #; a2  = 0x001000f0, (wrb) s0  <-- 0x001000f0
      0x800006f8 addi    a2, s0, 336            #; s0  = 0x001000f0, (wrb) a2  <-- 0x00100240
      0x800006fc bgeu    a1, a2, pc - 44        #; a1  = 0x0011df30, a2  = 0x00100240, taken, goto 0x800006d0
; snrt_l1alloc (alloc.c:33)
;  in main (test_mat.c:24)
      0x800006d0 mv      s6, s0                 #; s0  = 0x001000f0, (wrb) s6  <-- 0x001000f0
; snrt_l1alloc (alloc.c:34)
;  in main (test_mat.c:24)
      0x800006d4 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x00100240 ~~> Word[0x0011ffc8]
; snrt_l1alloc (alloc.c:25)
;  in main (test_mat.c:25)
      0x800006d8 mv      s0, a2                 #; a2  = 0x00100240, (wrb) s0  <-- 0x00100240
      0x800006dc addi    a2, s0, 280            #; s0  = 0x00100240, (wrb) a2  <-- 0x00100358
      0x800006e0 bltu    a1, a2, pc + 44        #; a1  = 0x0011df30, a2  = 0x00100358, not taken
; snrt_l1alloc (alloc.c:34)
;  in main (test_mat.c:25)
      0x800006e4 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x00100358 ~~> Word[0x0011ffc8]
      0x800006e8 j       pc + 0x28              #; goto 0x80000710
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000710 srli    a0, s2, 20             #; s2  = 0x00100000, (wrb) a0  <-- 1
      0x80000714 snez    a0, a0                 #; a0  = 1, (wrb) a0  <-- 1
      0x80000718 lui     a1, 0x120              #; (wrb) a1  <-- 0x00120000
      0x8000071c addi    a1, a1, -231           #; a1  = 0x00120000, (wrb) a1  <-- 0x0011ff19
      0x80000720 sltu    a1, s2, a1             #; s2  = 0x00100000, a1  = 0x0011ff19, (wrb) a1  <-- 1
      0x80000724 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
; init_data (test_mat.c:0)
;  in main (test_mat.c:27)
      0x80000728 auipc   a6, 0x3                #; (wrb) a6  <-- 0x80003728
      0x8000072c addi    a6, a6, 368            #; a6  = 0x80003728, (wrb) a6  <-- 0x80003898
      0x80000730 li      a1, 0                  #; (wrb) a1  <-- 0
      0x80000734 beqz    a0, pc + 120           #; a0  = 1, not taken
      0x80000738 li      a0, 8                  #; (wrb) a0  <-- 8
      0x8000073c li      a2, 29                 #; (wrb) a2  <-- 29
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000740 li      a3, 64                 #; (wrb) a3  <-- 64
      0x80000744 li      a4, 192                #; (wrb) a4  <-- 192
      0x80000748 scfgw   a2, a3                 #; a2  = 29, a3  = 64
      0x8000074c scfgw   a0, a4                 #; a0  = 8, a4  = 192
      0x80000750 li      a0, 32                 #; (wrb) a0  <-- 32
      0x80000754 scfgw   zero, a0               #; a0  = 32
      0x80000758 scfgwi  s2, 896                #; s2  = 0x00100000
      0x8000075c csrsi   ssr, 1                 #; 
      0x80000760 li      a2, 30                 #; (wrb) a2  <-- 30
      0x80000764 li      a3, 1                  #; (wrb) a3  <-- 1
      0x8000076c lui     a0, 0xccccd            #; (wrb) a0  <-- 0xccccd000
      0x80000768 fld     ft3, 0(a6)             #; ft3  <~~ Doub[0x80003898]
      0x80000770 addi    a4, a0, -819           #; a0  = 0xccccd000, (wrb) a4  <-- 0xcccccccd
      0x80000774 li      a5, 20                 #; (wrb) a5  <-- 20
                                                #; (f:lsu) ft3  <-- 3.141
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 0, a4  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 0, (wrb) a0  <-- 0
      0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 1, a0  = 0, (wrb) a0  <-- 1
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 1
                                                #; (f:fpu) ft4  <-- 1.0
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
                                                #; (f:fpu) ft4  <-- 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80000798 addi    a2, a2, -1             #; a2  = 30, (wrb) a2  <-- 29
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
      0x8000079c addi    a3, a3, 1              #; a3  = 1, (wrb) a3  <-- 2
                                                #; (f:fpu) ft0  <-- 3.141
      0x800007a0 bnez    a2, pc - 40            #; a2  = 29, taken, goto 0x80000778
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 1, a4  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 0, (wrb) a0  <-- 0
      0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 2, a0  = 0, (wrb) a0  <-- 2
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 2
                                                #; (f:fpu) ft4  <-- 2.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
      0x80000798 addi    a2, a2, -1             #; a2  = 29, (wrb) a2  <-- 28
      0x8000079c addi    a3, a3, 1              #; a3  = 2, (wrb) a3  <-- 3
      0x800007a0 bnez    a2, pc - 40            #; a2  = 28, taken, goto 0x80000778
                                                #; (f:fpu) ft4  <-- 6.282
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 2, a4  = 0xcccccccd
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
                                                #; (f:fpu) ft0  <-- 6.282
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 1, (wrb) a0  <-- 0
      0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 3, a0  = 0, (wrb) a0  <-- 3
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 3
                                                #; (f:fpu) ft4  <-- 3.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 3.141
      0x80000798 addi    a2, a2, -1             #; a2  = 28, (wrb) a2  <-- 27
      0x8000079c addi    a3, a3, 1              #; a3  = 3, (wrb) a3  <-- 4
      0x800007a0 bnez    a2, pc - 40            #; a2  = 27, taken, goto 0x80000778
                                                #; (f:fpu) ft4  <-- 9.423
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 3, a4  = 0xcccccccd
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 9.423, ft4  = 9.423
                                                #; (f:fpu) ft0  <-- 9.423
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 2, (wrb) a0  <-- 0
      0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 4, a0  = 0, (wrb) a0  <-- 4
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 4
                                                #; (f:fpu) ft4  <-- 4.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 3.141
      0x80000798 addi    a2, a2, -1             #; a2  = 27, (wrb) a2  <-- 26
      0x8000079c addi    a3, a3, 1              #; a3  = 4, (wrb) a3  <-- 5
      0x800007a0 bnez    a2, pc - 40            #; a2  = 26, taken, goto 0x80000778
                                                #; (f:fpu) ft4  <-- 12.564
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 4, a4  = 0xcccccccd
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564
                                                #; (f:fpu) ft0  <-- 12.564
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 3, (wrb) a0  <-- 0
      0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 5, a0  = 0, (wrb) a0  <-- 5
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 5
                                                #; (f:fpu) ft4  <-- 5.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 3.141
      0x80000798 addi    a2, a2, -1             #; a2  = 26, (wrb) a2  <-- 25
      0x8000079c addi    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 6
      0x800007a0 bnez    a2, pc - 40            #; a2  = 25, taken, goto 0x80000778
                                                #; (f:fpu) ft4  <-- 15.705
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 5, a4  = 0xcccccccd
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 15.705, ft4  = 15.705
                                                #; (f:fpu) ft0  <-- 15.705
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 4, (wrb) a0  <-- 0
      0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 6, a0  = 0, (wrb) a0  <-- 6
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 6
                                                #; (f:fpu) ft4  <-- 6.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 3.141
      0x80000798 addi    a2, a2, -1             #; a2  = 25, (wrb) a2  <-- 24
      0x8000079c addi    a3, a3, 1              #; a3  = 6, (wrb) a3  <-- 7
      0x800007a0 bnez    a2, pc - 40            #; a2  = 24, taken, goto 0x80000778
                                                #; (f:fpu) ft4  <-- 18.846
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 6, a4  = 0xcccccccd
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846
                                                #; (f:fpu) ft0  <-- 18.846
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 4, (wrb) a0  <-- 0
      0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 7, a0  = 0, (wrb) a0  <-- 7
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 7
                                                #; (f:fpu) ft4  <-- 7.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 3.141
      0x80000798 addi    a2, a2, -1             #; a2  = 24, (wrb) a2  <-- 23
      0x8000079c addi    a3, a3, 1              #; a3  = 7, (wrb) a3  <-- 8
      0x800007a0 bnez    a2, pc - 40            #; a2  = 23, taken, goto 0x80000778
                                                #; (f:fpu) ft4  <-- 21.9870000
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 7, a4  = 0xcccccccd
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 21.9870000, ft4  = 21.9870000
                                                #; (f:fpu) ft0  <-- 21.9870000
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 5, (wrb) a0  <-- 0
      0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 8, a0  = 0, (wrb) a0  <-- 8
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 8
                                                #; (f:fpu) ft4  <-- 8.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 7, (wrb) a1  <-- 8
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 3.141
      0x80000798 addi    a2, a2, -1             #; a2  = 23, (wrb) a2  <-- 22
      0x8000079c addi    a3, a3, 1              #; a3  = 8, (wrb) a3  <-- 9
      0x800007a0 bnez    a2, pc - 40            #; a2  = 22, taken, goto 0x80000778
                                                #; (f:fpu) ft4  <-- 25.128
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 8, a4  = 0xcccccccd
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128
                                                #; (f:fpu) ft0  <-- 25.128
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 6, (wrb) a0  <-- 0
      0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 9, a0  = 0, (wrb) a0  <-- 9
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 9
                                                #; (f:fpu) ft4  <-- 9.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 8, (wrb) a1  <-- 9
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 3.141
      0x80000798 addi    a2, a2, -1             #; a2  = 22, (wrb) a2  <-- 21
      0x8000079c addi    a3, a3, 1              #; a3  = 9, (wrb) a3  <-- 10
      0x800007a0 bnez    a2, pc - 40            #; a2  = 21, taken, goto 0x80000778
                                                #; (f:fpu) ft4  <-- 28.269
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 9, a4  = 0xcccccccd
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 28.269, ft4  = 28.269
                                                #; (f:fpu) ft0  <-- 28.269
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 7, (wrb) a0  <-- 0
      0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 10, a0  = 0, (wrb) a0  <-- 10
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 10
                                                #; (f:fpu) ft4  <-- 10.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 9, (wrb) a1  <-- 10
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 3.141
      0x80000798 addi    a2, a2, -1             #; a2  = 21, (wrb) a2  <-- 20
      0x8000079c addi    a3, a3, 1              #; a3  = 10, (wrb) a3  <-- 11
      0x800007a0 bnez    a2, pc - 40            #; a2  = 20, taken, goto 0x80000778
                                                #; (f:fpu) ft4  <-- 31.41
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 10, a4  = 0xcccccccd
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41
                                                #; (f:fpu) ft0  <-- 31.41
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 8, (wrb) a0  <-- 0
      0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 11, a0  = 0, (wrb) a0  <-- 11
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 11
                                                #; (f:fpu) ft4  <-- 11.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 10, (wrb) a1  <-- 11
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 3.141
      0x80000798 addi    a2, a2, -1             #; a2  = 20, (wrb) a2  <-- 19
      0x8000079c addi    a3, a3, 1              #; a3  = 11, (wrb) a3  <-- 12
      0x800007a0 bnez    a2, pc - 40            #; a2  = 19, taken, goto 0x80000778
                                                #; (f:fpu) ft4  <-- 34.551
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 11, a4  = 0xcccccccd
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 34.551, ft4  = 34.551
                                                #; (f:fpu) ft0  <-- 34.551
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 8, (wrb) a0  <-- 0
      0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 12, a0  = 0, (wrb) a0  <-- 12
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 12
                                                #; (f:fpu) ft4  <-- 12.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 11, (wrb) a1  <-- 12
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 12.0, ft3  = 3.141
      0x80000798 addi    a2, a2, -1             #; a2  = 19, (wrb) a2  <-- 18
      0x8000079c addi    a3, a3, 1              #; a3  = 12, (wrb) a3  <-- 13
      0x800007a0 bnez    a2, pc - 40            #; a2  = 18, taken, goto 0x80000778
                                                #; (f:fpu) ft4  <-- 37.692
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 12, a4  = 0xcccccccd
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 37.692, ft4  = 37.692
                                                #; (f:fpu) ft0  <-- 37.692
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 9, (wrb) a0  <-- 0
      0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 13, a0  = 0, (wrb) a0  <-- 13
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 13
                                                #; (f:fpu) ft4  <-- 13.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 12, (wrb) a1  <-- 13
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 13.0, ft3  = 3.141
      0x80000798 addi    a2, a2, -1             #; a2  = 18, (wrb) a2  <-- 17
      0x8000079c addi    a3, a3, 1              #; a3  = 13, (wrb) a3  <-- 14
      0x800007a0 bnez    a2, pc - 40            #; a2  = 17, taken, goto 0x80000778
                                                #; (f:fpu) ft4  <-- 40.833
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 13, a4  = 0xcccccccd
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 40.833, ft4  = 40.833
                                                #; (f:fpu) ft0  <-- 40.833
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 10, (wrb) a0  <-- 0
      0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 14, a0  = 0, (wrb) a0  <-- 14
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 14
                                                #; (f:fpu) ft4  <-- 14.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 13, (wrb) a1  <-- 14
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 14.0, ft3  = 3.141
      0x80000798 addi    a2, a2, -1             #; a2  = 17, (wrb) a2  <-- 16
      0x8000079c addi    a3, a3, 1              #; a3  = 14, (wrb) a3  <-- 15
      0x800007a0 bnez    a2, pc - 40            #; a2  = 16, taken, goto 0x80000778
                                                #; (f:fpu) ft4  <-- 43.9740000
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 14, a4  = 0xcccccccd
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 43.9740000, ft4  = 43.9740000
                                                #; (f:fpu) ft0  <-- 43.9740000
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 11, (wrb) a0  <-- 0
      0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 15, a0  = 0, (wrb) a0  <-- 15
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 15
                                                #; (f:fpu) ft4  <-- 15.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 14, (wrb) a1  <-- 15
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 15.0, ft3  = 3.141
      0x80000798 addi    a2, a2, -1             #; a2  = 16, (wrb) a2  <-- 15
      0x8000079c addi    a3, a3, 1              #; a3  = 15, (wrb) a3  <-- 16
      0x800007a0 bnez    a2, pc - 40            #; a2  = 15, taken, goto 0x80000778
                                                #; (f:fpu) ft4  <-- 47.115
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 15, a4  = 0xcccccccd
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 47.115, ft4  = 47.115
                                                #; (f:fpu) ft0  <-- 47.115
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 12, (wrb) a0  <-- 0
      0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 16, a0  = 0, (wrb) a0  <-- 16
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 16
                                                #; (f:fpu) ft4  <-- 16.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 15, (wrb) a1  <-- 16
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 16.0, ft3  = 3.141
      0x80000798 addi    a2, a2, -1             #; a2  = 15, (wrb) a2  <-- 14
      0x8000079c addi    a3, a3, 1              #; a3  = 16, (wrb) a3  <-- 17
      0x800007a0 bnez    a2, pc - 40            #; a2  = 14, taken, goto 0x80000778
                                                #; (f:fpu) ft4  <-- 50.256
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 16, a4  = 0xcccccccd
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 50.256, ft4  = 50.256
                                                #; (f:fpu) ft0  <-- 50.256
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 12, (wrb) a0  <-- 0
      0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 17, a0  = 0, (wrb) a0  <-- 17
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 17
                                                #; (f:fpu) ft4  <-- 17.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 16, (wrb) a1  <-- 17
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 17.0, ft3  = 3.141
      0x80000798 addi    a2, a2, -1             #; a2  = 14, (wrb) a2  <-- 13
      0x8000079c addi    a3, a3, 1              #; a3  = 17, (wrb) a3  <-- 18
      0x800007a0 bnez    a2, pc - 40            #; a2  = 13, taken, goto 0x80000778
                                                #; (f:fpu) ft4  <-- 53.397
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 17, a4  = 0xcccccccd
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 53.397, ft4  = 53.397
                                                #; (f:fpu) ft0  <-- 53.397
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 13, (wrb) a0  <-- 0
      0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 18, a0  = 0, (wrb) a0  <-- 18
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 18
                                                #; (f:fpu) ft4  <-- 18.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 17, (wrb) a1  <-- 18
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 18.0, ft3  = 3.141
      0x80000798 addi    a2, a2, -1             #; a2  = 13, (wrb) a2  <-- 12
      0x8000079c addi    a3, a3, 1              #; a3  = 18, (wrb) a3  <-- 19
      0x800007a0 bnez    a2, pc - 40            #; a2  = 12, taken, goto 0x80000778
                                                #; (f:fpu) ft4  <-- 56.538
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 18, a4  = 0xcccccccd
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 56.538, ft4  = 56.538
                                                #; (f:fpu) ft0  <-- 56.538
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 14, (wrb) a0  <-- 0
      0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 19, a0  = 0, (wrb) a0  <-- 19
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 19
                                                #; (f:fpu) ft4  <-- 19.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 18, (wrb) a1  <-- 19
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 19.0, ft3  = 3.141
      0x80000798 addi    a2, a2, -1             #; a2  = 12, (wrb) a2  <-- 11
      0x8000079c addi    a3, a3, 1              #; a3  = 19, (wrb) a3  <-- 20
      0x800007a0 bnez    a2, pc - 40            #; a2  = 11, taken, goto 0x80000778
                                                #; (f:fpu) ft4  <-- 59.679
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 19, a4  = 0xcccccccd
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 59.679, ft4  = 59.679
                                                #; (f:fpu) ft0  <-- 59.679
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 15, (wrb) a0  <-- 0
      0x80000780 mul     a0, a0, a5             #; a0  = 0, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 20, a0  = 0, (wrb) a0  <-- 20
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 20
                                                #; (f:fpu) ft4  <-- 20.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 19, (wrb) a1  <-- 20
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 20.0, ft3  = 3.141
      0x80000798 addi    a2, a2, -1             #; a2  = 11, (wrb) a2  <-- 10
      0x8000079c addi    a3, a3, 1              #; a3  = 20, (wrb) a3  <-- 21
      0x800007a0 bnez    a2, pc - 40            #; a2  = 10, taken, goto 0x80000778
                                                #; (f:fpu) ft4  <-- 62.82
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 20, a4  = 0xcccccccd
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 62.82, ft4  = 62.82
                                                #; (f:fpu) ft0  <-- 62.82
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 16, (wrb) a0  <-- 1
      0x80000780 mul     a0, a0, a5             #; a0  = 1, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 21, a0  = 20, (wrb) a0  <-- 1
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 1
                                                #; (f:fpu) ft4  <-- 1.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 20, (wrb) a1  <-- 21
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
      0x80000798 addi    a2, a2, -1             #; a2  = 10, (wrb) a2  <-- 9
      0x8000079c addi    a3, a3, 1              #; a3  = 21, (wrb) a3  <-- 22
      0x800007a0 bnez    a2, pc - 40            #; a2  = 9, taken, goto 0x80000778
                                                #; (f:fpu) ft4  <-- 3.141
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 21, a4  = 0xcccccccd
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
                                                #; (f:fpu) ft0  <-- 3.141
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 16, (wrb) a0  <-- 1
      0x80000780 mul     a0, a0, a5             #; a0  = 1, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 22, a0  = 20, (wrb) a0  <-- 2
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 2
                                                #; (f:fpu) ft4  <-- 2.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 21, (wrb) a1  <-- 22
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
      0x80000798 addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
      0x8000079c addi    a3, a3, 1              #; a3  = 22, (wrb) a3  <-- 23
      0x800007a0 bnez    a2, pc - 40            #; a2  = 8, taken, goto 0x80000778
                                                #; (f:fpu) ft4  <-- 6.282
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 22, a4  = 0xcccccccd
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
                                                #; (f:fpu) ft0  <-- 6.282
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 17, (wrb) a0  <-- 1
      0x80000780 mul     a0, a0, a5             #; a0  = 1, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 23, a0  = 20, (wrb) a0  <-- 3
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 3
                                                #; (f:fpu) ft4  <-- 3.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 22, (wrb) a1  <-- 23
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 3.141
      0x80000798 addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
      0x8000079c addi    a3, a3, 1              #; a3  = 23, (wrb) a3  <-- 24
      0x800007a0 bnez    a2, pc - 40            #; a2  = 7, taken, goto 0x80000778
                                                #; (f:fpu) ft4  <-- 9.423
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 23, a4  = 0xcccccccd
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 9.423, ft4  = 9.423
                                                #; (f:fpu) ft0  <-- 9.423
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 18, (wrb) a0  <-- 1
      0x80000780 mul     a0, a0, a5             #; a0  = 1, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 24, a0  = 20, (wrb) a0  <-- 4
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 4
                                                #; (f:fpu) ft4  <-- 4.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 23, (wrb) a1  <-- 24
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 3.141
      0x80000798 addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
      0x8000079c addi    a3, a3, 1              #; a3  = 24, (wrb) a3  <-- 25
      0x800007a0 bnez    a2, pc - 40            #; a2  = 6, taken, goto 0x80000778
                                                #; (f:fpu) ft4  <-- 12.564
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 24, a4  = 0xcccccccd
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564
                                                #; (f:fpu) ft0  <-- 12.564
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 19, (wrb) a0  <-- 1
      0x80000780 mul     a0, a0, a5             #; a0  = 1, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 25, a0  = 20, (wrb) a0  <-- 5
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 5
                                                #; (f:fpu) ft4  <-- 5.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 24, (wrb) a1  <-- 25
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 3.141
      0x80000798 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x8000079c addi    a3, a3, 1              #; a3  = 25, (wrb) a3  <-- 26
      0x800007a0 bnez    a2, pc - 40            #; a2  = 5, taken, goto 0x80000778
                                                #; (f:fpu) ft4  <-- 15.705
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 25, a4  = 0xcccccccd
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 15.705, ft4  = 15.705
                                                #; (f:fpu) ft0  <-- 15.705
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 20, (wrb) a0  <-- 1
      0x80000780 mul     a0, a0, a5             #; a0  = 1, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 26, a0  = 20, (wrb) a0  <-- 6
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 6
                                                #; (f:fpu) ft4  <-- 6.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 25, (wrb) a1  <-- 26
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 3.141
      0x80000798 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x8000079c addi    a3, a3, 1              #; a3  = 26, (wrb) a3  <-- 27
      0x800007a0 bnez    a2, pc - 40            #; a2  = 4, taken, goto 0x80000778
                                                #; (f:fpu) ft4  <-- 18.846
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 26, a4  = 0xcccccccd
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846
                                                #; (f:fpu) ft0  <-- 18.846
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 20, (wrb) a0  <-- 1
      0x80000780 mul     a0, a0, a5             #; a0  = 1, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 27, a0  = 20, (wrb) a0  <-- 7
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 7
                                                #; (f:fpu) ft4  <-- 7.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 26, (wrb) a1  <-- 27
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 3.141
      0x80000798 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x8000079c addi    a3, a3, 1              #; a3  = 27, (wrb) a3  <-- 28
      0x800007a0 bnez    a2, pc - 40            #; a2  = 3, taken, goto 0x80000778
                                                #; (f:fpu) ft4  <-- 21.9870000
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 27, a4  = 0xcccccccd
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 21.9870000, ft4  = 21.9870000
                                                #; (f:fpu) ft0  <-- 21.9870000
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 21, (wrb) a0  <-- 1
      0x80000780 mul     a0, a0, a5             #; a0  = 1, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 28, a0  = 20, (wrb) a0  <-- 8
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 8
                                                #; (f:fpu) ft4  <-- 8.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 27, (wrb) a1  <-- 28
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 3.141
      0x80000798 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x8000079c addi    a3, a3, 1              #; a3  = 28, (wrb) a3  <-- 29
      0x800007a0 bnez    a2, pc - 40            #; a2  = 2, taken, goto 0x80000778
                                                #; (f:fpu) ft4  <-- 25.128
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 28, a4  = 0xcccccccd
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128
                                                #; (f:fpu) ft0  <-- 25.128
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 22, (wrb) a0  <-- 1
      0x80000780 mul     a0, a0, a5             #; a0  = 1, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 29, a0  = 20, (wrb) a0  <-- 9
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 9
                                                #; (f:fpu) ft4  <-- 9.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 28, (wrb) a1  <-- 29
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 3.141
      0x80000798 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x8000079c addi    a3, a3, 1              #; a3  = 29, (wrb) a3  <-- 30
      0x800007a0 bnez    a2, pc - 40            #; a2  = 1, taken, goto 0x80000778
                                                #; (f:fpu) ft4  <-- 28.269
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000778 mulhu   a0, a1, a4             #; a1  = 29, a4  = 0xcccccccd
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 28.269, ft4  = 28.269
                                                #; (f:fpu) ft0  <-- 28.269
                                                #; (acc) a0  <-- 0x00455513
      0x8000077c srli    a0, a0, 4              #; a0  = 23, (wrb) a0  <-- 1
      0x80000780 mul     a0, a0, a5             #; a0  = 1, a5  = 20
                                                #; (acc) a0  <-- 0x40a68533
      0x80000784 sub     a0, a3, a0             #; a3  = 30, a0  = 20, (wrb) a0  <-- 10
      0x80000788 fcvt.d.wu ft4, a0              #; ac1  = 10
                                                #; (f:fpu) ft4  <-- 10.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000794 addi    a1, a1, 1              #; a1  = 29, (wrb) a1  <-- 30
      0x8000078c fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 3.141
      0x80000798 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x8000079c addi    a3, a3, 1              #; a3  = 30, (wrb) a3  <-- 31
      0x800007a0 bnez    a2, pc - 40            #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 31.41
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000790 fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41
; init_data (test_mat.c:0)
;  in main (test_mat.c:27)
      0x800007a8 j       pc + 0x50              #; goto 0x800007f8
      0x800007a4 csrci   ssr, 1                 #; (f:fpu) ft0  <-- 31.41
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x800007f8 srli    a0, s6, 20             #; s6  = 0x001000f0, (wrb) a0  <-- 1
      0x800007fc snez    a0, a0                 #; a0  = 1, (wrb) a0  <-- 1
      0x80000800 lui     a1, 0x120              #; (wrb) a1  <-- 0x00120000
      0x80000804 addi    a1, a1, -327           #; a1  = 0x00120000, (wrb) a1  <-- 0x0011feb9
      0x80000808 sltu    a1, s6, a1             #; s6  = 0x001000f0, a1  = 0x0011feb9, (wrb) a1  <-- 1
      0x8000080c and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80000810 beqz    a0, pc + 124           #; a0  = 1, not taken
; init_data (test_mat.c:0)
;  in main (test_mat.c:28)
      0x80000814 li      a1, 0                  #; (wrb) a1  <-- 0
      0x80000818 li      a0, 8                  #; (wrb) a0  <-- 8
      0x8000081c li      a2, 41                 #; (wrb) a2  <-- 41
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000820 li      a3, 64                 #; (wrb) a3  <-- 64
      0x80000824 scfgw   a2, a3                 #; a2  = 41, a3  = 64
      0x80000828 li      a2, 192                #; (wrb) a2  <-- 192
      0x8000082c scfgw   a0, a2                 #; a0  = 8, a2  = 192
      0x80000830 li      a0, 32                 #; (wrb) a0  <-- 32
      0x80000834 scfgw   zero, a0               #; a0  = 32
      0x80000838 scfgwi  s6, 896                #; s6  = 0x001000f0
      0x8000083c csrsi   ssr, 1                 #; 
      0x80000840 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000844 li      a3, 1                  #; (wrb) a3  <-- 1
      0x8000084c lui     a0, 0xccccd            #; (wrb) a0  <-- 0xccccd000
      0x80000848 fld     ft3, 0(a6)             #; ft3  <~~ Doub[0x80003898]
      0x80000850 addi    a0, a0, -819           #; a0  = 0xccccd000, (wrb) a0  <-- 0xcccccccd
      0x80000854 li      a4, 20                 #; (wrb) a4  <-- 20
                                                #; (f:lsu) ft3  <-- 3.141
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 0, a0  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 0, (wrb) a5  <-- 0
      0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 1, a5  = 0, (wrb) a5  <-- 1
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 1
                                                #; (f:fpu) ft4  <-- 1.0
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
                                                #; (f:fpu) ft4  <-- 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80000878 addi    a2, a2, -1             #; a2  = 42, (wrb) a2  <-- 41
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
      0x8000087c addi    a3, a3, 1              #; a3  = 1, (wrb) a3  <-- 2
                                                #; (f:fpu) ft0  <-- 3.141
      0x80000880 bnez    a2, pc - 40            #; a2  = 41, taken, goto 0x80000858
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 1, a0  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 0, (wrb) a5  <-- 0
      0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 2, a5  = 0, (wrb) a5  <-- 2
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 2
                                                #; (f:fpu) ft4  <-- 2.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 41, (wrb) a2  <-- 40
      0x8000087c addi    a3, a3, 1              #; a3  = 2, (wrb) a3  <-- 3
      0x80000880 bnez    a2, pc - 40            #; a2  = 40, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 6.282
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 2, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
                                                #; (f:fpu) ft0  <-- 6.282
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 1, (wrb) a5  <-- 0
      0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 3, a5  = 0, (wrb) a5  <-- 3
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 3
                                                #; (f:fpu) ft4  <-- 3.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 40, (wrb) a2  <-- 39
      0x8000087c addi    a3, a3, 1              #; a3  = 3, (wrb) a3  <-- 4
      0x80000880 bnez    a2, pc - 40            #; a2  = 39, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 9.423
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 3, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 9.423, ft4  = 9.423
                                                #; (f:fpu) ft0  <-- 9.423
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 2, (wrb) a5  <-- 0
      0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 4, a5  = 0, (wrb) a5  <-- 4
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 4
                                                #; (f:fpu) ft4  <-- 4.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 39, (wrb) a2  <-- 38
      0x8000087c addi    a3, a3, 1              #; a3  = 4, (wrb) a3  <-- 5
      0x80000880 bnez    a2, pc - 40            #; a2  = 38, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 12.564
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 4, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564
                                                #; (f:fpu) ft0  <-- 12.564
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 3, (wrb) a5  <-- 0
      0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 5, a5  = 0, (wrb) a5  <-- 5
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 5
                                                #; (f:fpu) ft4  <-- 5.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 38, (wrb) a2  <-- 37
      0x8000087c addi    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 6
      0x80000880 bnez    a2, pc - 40            #; a2  = 37, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 15.705
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 5, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 15.705, ft4  = 15.705
                                                #; (f:fpu) ft0  <-- 15.705
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 4, (wrb) a5  <-- 0
      0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 6, a5  = 0, (wrb) a5  <-- 6
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 6
                                                #; (f:fpu) ft4  <-- 6.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 37, (wrb) a2  <-- 36
      0x8000087c addi    a3, a3, 1              #; a3  = 6, (wrb) a3  <-- 7
      0x80000880 bnez    a2, pc - 40            #; a2  = 36, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 18.846
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 6, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846
                                                #; (f:fpu) ft0  <-- 18.846
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 4, (wrb) a5  <-- 0
      0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 7, a5  = 0, (wrb) a5  <-- 7
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 7
                                                #; (f:fpu) ft4  <-- 7.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 36, (wrb) a2  <-- 35
      0x8000087c addi    a3, a3, 1              #; a3  = 7, (wrb) a3  <-- 8
      0x80000880 bnez    a2, pc - 40            #; a2  = 35, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 21.9870000
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 7, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 21.9870000, ft4  = 21.9870000
                                                #; (f:fpu) ft0  <-- 21.9870000
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 5, (wrb) a5  <-- 0
      0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 8, a5  = 0, (wrb) a5  <-- 8
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 8
                                                #; (f:fpu) ft4  <-- 8.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 7, (wrb) a1  <-- 8
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 35, (wrb) a2  <-- 34
      0x8000087c addi    a3, a3, 1              #; a3  = 8, (wrb) a3  <-- 9
      0x80000880 bnez    a2, pc - 40            #; a2  = 34, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 25.128
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 8, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128
                                                #; (f:fpu) ft0  <-- 25.128
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 6, (wrb) a5  <-- 0
      0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 9, a5  = 0, (wrb) a5  <-- 9
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 9
                                                #; (f:fpu) ft4  <-- 9.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 8, (wrb) a1  <-- 9
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 34, (wrb) a2  <-- 33
      0x8000087c addi    a3, a3, 1              #; a3  = 9, (wrb) a3  <-- 10
      0x80000880 bnez    a2, pc - 40            #; a2  = 33, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 28.269
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 9, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 28.269, ft4  = 28.269
                                                #; (f:fpu) ft0  <-- 28.269
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 7, (wrb) a5  <-- 0
      0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 10, a5  = 0, (wrb) a5  <-- 10
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 10
                                                #; (f:fpu) ft4  <-- 10.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 9, (wrb) a1  <-- 10
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 33, (wrb) a2  <-- 32
      0x8000087c addi    a3, a3, 1              #; a3  = 10, (wrb) a3  <-- 11
      0x80000880 bnez    a2, pc - 40            #; a2  = 32, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 31.41
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 10, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41
                                                #; (f:fpu) ft0  <-- 31.41
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 8, (wrb) a5  <-- 0
      0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 11, a5  = 0, (wrb) a5  <-- 11
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 11
                                                #; (f:fpu) ft4  <-- 11.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 10, (wrb) a1  <-- 11
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 32, (wrb) a2  <-- 31
      0x8000087c addi    a3, a3, 1              #; a3  = 11, (wrb) a3  <-- 12
      0x80000880 bnez    a2, pc - 40            #; a2  = 31, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 34.551
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 11, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 34.551, ft4  = 34.551
                                                #; (f:fpu) ft0  <-- 34.551
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 8, (wrb) a5  <-- 0
      0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 12, a5  = 0, (wrb) a5  <-- 12
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 12
                                                #; (f:fpu) ft4  <-- 12.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 11, (wrb) a1  <-- 12
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 12.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 31, (wrb) a2  <-- 30
      0x8000087c addi    a3, a3, 1              #; a3  = 12, (wrb) a3  <-- 13
      0x80000880 bnez    a2, pc - 40            #; a2  = 30, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 37.692
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 12, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 37.692, ft4  = 37.692
                                                #; (f:fpu) ft0  <-- 37.692
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 9, (wrb) a5  <-- 0
      0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 13, a5  = 0, (wrb) a5  <-- 13
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 13
                                                #; (f:fpu) ft4  <-- 13.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 12, (wrb) a1  <-- 13
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 13.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 30, (wrb) a2  <-- 29
      0x8000087c addi    a3, a3, 1              #; a3  = 13, (wrb) a3  <-- 14
      0x80000880 bnez    a2, pc - 40            #; a2  = 29, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 40.833
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 13, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 40.833, ft4  = 40.833
                                                #; (f:fpu) ft0  <-- 40.833
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 10, (wrb) a5  <-- 0
      0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 14, a5  = 0, (wrb) a5  <-- 14
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 14
                                                #; (f:fpu) ft4  <-- 14.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 13, (wrb) a1  <-- 14
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 14.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 29, (wrb) a2  <-- 28
      0x8000087c addi    a3, a3, 1              #; a3  = 14, (wrb) a3  <-- 15
      0x80000880 bnez    a2, pc - 40            #; a2  = 28, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 43.9740000
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 14, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 43.9740000, ft4  = 43.9740000
                                                #; (f:fpu) ft0  <-- 43.9740000
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 11, (wrb) a5  <-- 0
      0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 15, a5  = 0, (wrb) a5  <-- 15
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 15
                                                #; (f:fpu) ft4  <-- 15.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 14, (wrb) a1  <-- 15
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 15.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 28, (wrb) a2  <-- 27
      0x8000087c addi    a3, a3, 1              #; a3  = 15, (wrb) a3  <-- 16
      0x80000880 bnez    a2, pc - 40            #; a2  = 27, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 47.115
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 15, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 47.115, ft4  = 47.115
                                                #; (f:fpu) ft0  <-- 47.115
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 12, (wrb) a5  <-- 0
      0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 16, a5  = 0, (wrb) a5  <-- 16
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 16
                                                #; (f:fpu) ft4  <-- 16.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 15, (wrb) a1  <-- 16
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 16.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 27, (wrb) a2  <-- 26
      0x8000087c addi    a3, a3, 1              #; a3  = 16, (wrb) a3  <-- 17
      0x80000880 bnez    a2, pc - 40            #; a2  = 26, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 50.256
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 16, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 50.256, ft4  = 50.256
                                                #; (f:fpu) ft0  <-- 50.256
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 12, (wrb) a5  <-- 0
      0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 17, a5  = 0, (wrb) a5  <-- 17
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 17
                                                #; (f:fpu) ft4  <-- 17.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 16, (wrb) a1  <-- 17
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 17.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 26, (wrb) a2  <-- 25
      0x8000087c addi    a3, a3, 1              #; a3  = 17, (wrb) a3  <-- 18
      0x80000880 bnez    a2, pc - 40            #; a2  = 25, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 53.397
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 17, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 53.397, ft4  = 53.397
                                                #; (f:fpu) ft0  <-- 53.397
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 13, (wrb) a5  <-- 0
      0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 18, a5  = 0, (wrb) a5  <-- 18
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 18
                                                #; (f:fpu) ft4  <-- 18.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 17, (wrb) a1  <-- 18
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 18.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 25, (wrb) a2  <-- 24
      0x8000087c addi    a3, a3, 1              #; a3  = 18, (wrb) a3  <-- 19
      0x80000880 bnez    a2, pc - 40            #; a2  = 24, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 56.538
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 18, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 56.538, ft4  = 56.538
                                                #; (f:fpu) ft0  <-- 56.538
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 14, (wrb) a5  <-- 0
      0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 19, a5  = 0, (wrb) a5  <-- 19
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 19
                                                #; (f:fpu) ft4  <-- 19.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 18, (wrb) a1  <-- 19
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 19.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 24, (wrb) a2  <-- 23
      0x8000087c addi    a3, a3, 1              #; a3  = 19, (wrb) a3  <-- 20
      0x80000880 bnez    a2, pc - 40            #; a2  = 23, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 59.679
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 19, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 59.679, ft4  = 59.679
                                                #; (f:fpu) ft0  <-- 59.679
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 15, (wrb) a5  <-- 0
      0x80000860 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 20, a5  = 0, (wrb) a5  <-- 20
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 20
                                                #; (f:fpu) ft4  <-- 20.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 19, (wrb) a1  <-- 20
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 20.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 23, (wrb) a2  <-- 22
      0x8000087c addi    a3, a3, 1              #; a3  = 20, (wrb) a3  <-- 21
      0x80000880 bnez    a2, pc - 40            #; a2  = 22, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 62.82
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 20, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 62.82, ft4  = 62.82
                                                #; (f:fpu) ft0  <-- 62.82
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 16, (wrb) a5  <-- 1
      0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 21, a5  = 20, (wrb) a5  <-- 1
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 1
                                                #; (f:fpu) ft4  <-- 1.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 20, (wrb) a1  <-- 21
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 22, (wrb) a2  <-- 21
      0x8000087c addi    a3, a3, 1              #; a3  = 21, (wrb) a3  <-- 22
      0x80000880 bnez    a2, pc - 40            #; a2  = 21, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 3.141
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 21, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
                                                #; (f:fpu) ft0  <-- 3.141
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 16, (wrb) a5  <-- 1
      0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 22, a5  = 20, (wrb) a5  <-- 2
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 2
                                                #; (f:fpu) ft4  <-- 2.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 21, (wrb) a1  <-- 22
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 21, (wrb) a2  <-- 20
      0x8000087c addi    a3, a3, 1              #; a3  = 22, (wrb) a3  <-- 23
      0x80000880 bnez    a2, pc - 40            #; a2  = 20, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 6.282
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 22, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
                                                #; (f:fpu) ft0  <-- 6.282
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 17, (wrb) a5  <-- 1
      0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 23, a5  = 20, (wrb) a5  <-- 3
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 3
                                                #; (f:fpu) ft4  <-- 3.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 22, (wrb) a1  <-- 23
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 20, (wrb) a2  <-- 19
      0x8000087c addi    a3, a3, 1              #; a3  = 23, (wrb) a3  <-- 24
      0x80000880 bnez    a2, pc - 40            #; a2  = 19, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 9.423
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 23, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 9.423, ft4  = 9.423
                                                #; (f:fpu) ft0  <-- 9.423
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 18, (wrb) a5  <-- 1
      0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 24, a5  = 20, (wrb) a5  <-- 4
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 4
                                                #; (f:fpu) ft4  <-- 4.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 23, (wrb) a1  <-- 24
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 19, (wrb) a2  <-- 18
      0x8000087c addi    a3, a3, 1              #; a3  = 24, (wrb) a3  <-- 25
      0x80000880 bnez    a2, pc - 40            #; a2  = 18, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 12.564
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 24, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564
                                                #; (f:fpu) ft0  <-- 12.564
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 19, (wrb) a5  <-- 1
      0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 25, a5  = 20, (wrb) a5  <-- 5
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 5
                                                #; (f:fpu) ft4  <-- 5.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 24, (wrb) a1  <-- 25
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 18, (wrb) a2  <-- 17
      0x8000087c addi    a3, a3, 1              #; a3  = 25, (wrb) a3  <-- 26
      0x80000880 bnez    a2, pc - 40            #; a2  = 17, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 15.705
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 25, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 15.705, ft4  = 15.705
                                                #; (f:fpu) ft0  <-- 15.705
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 20, (wrb) a5  <-- 1
      0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 26, a5  = 20, (wrb) a5  <-- 6
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 6
                                                #; (f:fpu) ft4  <-- 6.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 25, (wrb) a1  <-- 26
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 17, (wrb) a2  <-- 16
      0x8000087c addi    a3, a3, 1              #; a3  = 26, (wrb) a3  <-- 27
      0x80000880 bnez    a2, pc - 40            #; a2  = 16, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 18.846
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 26, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846
                                                #; (f:fpu) ft0  <-- 18.846
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 20, (wrb) a5  <-- 1
      0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 27, a5  = 20, (wrb) a5  <-- 7
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 7
                                                #; (f:fpu) ft4  <-- 7.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 26, (wrb) a1  <-- 27
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 16, (wrb) a2  <-- 15
      0x8000087c addi    a3, a3, 1              #; a3  = 27, (wrb) a3  <-- 28
      0x80000880 bnez    a2, pc - 40            #; a2  = 15, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 21.9870000
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 27, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 21.9870000, ft4  = 21.9870000
                                                #; (f:fpu) ft0  <-- 21.9870000
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 21, (wrb) a5  <-- 1
      0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 28, a5  = 20, (wrb) a5  <-- 8
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 8
                                                #; (f:fpu) ft4  <-- 8.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 27, (wrb) a1  <-- 28
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 15, (wrb) a2  <-- 14
      0x8000087c addi    a3, a3, 1              #; a3  = 28, (wrb) a3  <-- 29
      0x80000880 bnez    a2, pc - 40            #; a2  = 14, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 25.128
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 28, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128
                                                #; (f:fpu) ft0  <-- 25.128
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 22, (wrb) a5  <-- 1
      0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 29, a5  = 20, (wrb) a5  <-- 9
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 9
                                                #; (f:fpu) ft4  <-- 9.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 28, (wrb) a1  <-- 29
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 14, (wrb) a2  <-- 13
      0x8000087c addi    a3, a3, 1              #; a3  = 29, (wrb) a3  <-- 30
      0x80000880 bnez    a2, pc - 40            #; a2  = 13, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 28.269
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 29, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 28.269, ft4  = 28.269
                                                #; (f:fpu) ft0  <-- 28.269
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 23, (wrb) a5  <-- 1
      0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 30, a5  = 20, (wrb) a5  <-- 10
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 10
                                                #; (f:fpu) ft4  <-- 10.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 29, (wrb) a1  <-- 30
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 13, (wrb) a2  <-- 12
      0x8000087c addi    a3, a3, 1              #; a3  = 30, (wrb) a3  <-- 31
      0x80000880 bnez    a2, pc - 40            #; a2  = 12, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 31.41
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 30, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41
                                                #; (f:fpu) ft0  <-- 31.41
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 24, (wrb) a5  <-- 1
      0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 31, a5  = 20, (wrb) a5  <-- 11
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 11
                                                #; (f:fpu) ft4  <-- 11.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 30, (wrb) a1  <-- 31
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 12, (wrb) a2  <-- 11
      0x8000087c addi    a3, a3, 1              #; a3  = 31, (wrb) a3  <-- 32
      0x80000880 bnez    a2, pc - 40            #; a2  = 11, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 34.551
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 31, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 34.551, ft4  = 34.551
                                                #; (f:fpu) ft0  <-- 34.551
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 24, (wrb) a5  <-- 1
      0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 32, a5  = 20, (wrb) a5  <-- 12
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 12
                                                #; (f:fpu) ft4  <-- 12.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 31, (wrb) a1  <-- 32
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 12.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 11, (wrb) a2  <-- 10
      0x8000087c addi    a3, a3, 1              #; a3  = 32, (wrb) a3  <-- 33
      0x80000880 bnez    a2, pc - 40            #; a2  = 10, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 37.692
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 32, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 37.692, ft4  = 37.692
                                                #; (f:fpu) ft0  <-- 37.692
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 25, (wrb) a5  <-- 1
      0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 33, a5  = 20, (wrb) a5  <-- 13
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 13
                                                #; (f:fpu) ft4  <-- 13.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 32, (wrb) a1  <-- 33
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 13.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 10, (wrb) a2  <-- 9
      0x8000087c addi    a3, a3, 1              #; a3  = 33, (wrb) a3  <-- 34
      0x80000880 bnez    a2, pc - 40            #; a2  = 9, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 40.833
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 33, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 40.833, ft4  = 40.833
                                                #; (f:fpu) ft0  <-- 40.833
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 26, (wrb) a5  <-- 1
      0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 34, a5  = 20, (wrb) a5  <-- 14
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 14
                                                #; (f:fpu) ft4  <-- 14.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 33, (wrb) a1  <-- 34
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 14.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
      0x8000087c addi    a3, a3, 1              #; a3  = 34, (wrb) a3  <-- 35
      0x80000880 bnez    a2, pc - 40            #; a2  = 8, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 43.9740000
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 34, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 43.9740000, ft4  = 43.9740000
                                                #; (f:fpu) ft0  <-- 43.9740000
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 27, (wrb) a5  <-- 1
      0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 35, a5  = 20, (wrb) a5  <-- 15
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 15
                                                #; (f:fpu) ft4  <-- 15.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 34, (wrb) a1  <-- 35
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 15.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
      0x8000087c addi    a3, a3, 1              #; a3  = 35, (wrb) a3  <-- 36
      0x80000880 bnez    a2, pc - 40            #; a2  = 7, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 47.115
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 35, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 47.115, ft4  = 47.115
                                                #; (f:fpu) ft0  <-- 47.115
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 28, (wrb) a5  <-- 1
      0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 36, a5  = 20, (wrb) a5  <-- 16
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 16
                                                #; (f:fpu) ft4  <-- 16.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 35, (wrb) a1  <-- 36
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 16.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
      0x8000087c addi    a3, a3, 1              #; a3  = 36, (wrb) a3  <-- 37
      0x80000880 bnez    a2, pc - 40            #; a2  = 6, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 50.256
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 36, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 50.256, ft4  = 50.256
                                                #; (f:fpu) ft0  <-- 50.256
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 28, (wrb) a5  <-- 1
      0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 37, a5  = 20, (wrb) a5  <-- 17
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 17
                                                #; (f:fpu) ft4  <-- 17.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 36, (wrb) a1  <-- 37
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 17.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x8000087c addi    a3, a3, 1              #; a3  = 37, (wrb) a3  <-- 38
      0x80000880 bnez    a2, pc - 40            #; a2  = 5, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 53.397
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 37, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 53.397, ft4  = 53.397
                                                #; (f:fpu) ft0  <-- 53.397
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 29, (wrb) a5  <-- 1
      0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 38, a5  = 20, (wrb) a5  <-- 18
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 18
                                                #; (f:fpu) ft4  <-- 18.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 37, (wrb) a1  <-- 38
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 18.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x8000087c addi    a3, a3, 1              #; a3  = 38, (wrb) a3  <-- 39
      0x80000880 bnez    a2, pc - 40            #; a2  = 4, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 56.538
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 38, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 56.538, ft4  = 56.538
                                                #; (f:fpu) ft0  <-- 56.538
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 30, (wrb) a5  <-- 1
      0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 39, a5  = 20, (wrb) a5  <-- 19
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 19
                                                #; (f:fpu) ft4  <-- 19.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 38, (wrb) a1  <-- 39
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 19.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x8000087c addi    a3, a3, 1              #; a3  = 39, (wrb) a3  <-- 40
      0x80000880 bnez    a2, pc - 40            #; a2  = 3, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 59.679
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 39, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 59.679, ft4  = 59.679
                                                #; (f:fpu) ft0  <-- 59.679
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 31, (wrb) a5  <-- 1
      0x80000860 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 40, a5  = 20, (wrb) a5  <-- 20
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 20
                                                #; (f:fpu) ft4  <-- 20.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 39, (wrb) a1  <-- 40
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 20.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x8000087c addi    a3, a3, 1              #; a3  = 40, (wrb) a3  <-- 41
      0x80000880 bnez    a2, pc - 40            #; a2  = 2, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 62.82
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 40, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 62.82, ft4  = 62.82
                                                #; (f:fpu) ft0  <-- 62.82
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 32, (wrb) a5  <-- 2
      0x80000860 mul     a5, a5, a4             #; a5  = 2, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 41, a5  = 40, (wrb) a5  <-- 1
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 1
                                                #; (f:fpu) ft4  <-- 1.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 40, (wrb) a1  <-- 41
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x8000087c addi    a3, a3, 1              #; a3  = 41, (wrb) a3  <-- 42
      0x80000880 bnez    a2, pc - 40            #; a2  = 1, taken, goto 0x80000858
                                                #; (f:fpu) ft4  <-- 3.141
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000858 mulhu   a5, a1, a0             #; a1  = 41, a0  = 0xcccccccd
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
                                                #; (f:fpu) ft0  <-- 3.141
                                                #; (acc) a5  <-- 0x0047d793
      0x8000085c srli    a5, a5, 4              #; a5  = 32, (wrb) a5  <-- 2
      0x80000860 mul     a5, a5, a4             #; a5  = 2, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000864 sub     a5, a3, a5             #; a3  = 42, a5  = 40, (wrb) a5  <-- 2
      0x80000868 fcvt.d.wu ft4, a5              #; ac1  = 2
                                                #; (f:fpu) ft4  <-- 2.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000874 addi    a1, a1, 1              #; a1  = 41, (wrb) a1  <-- 42
      0x8000086c fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
      0x80000878 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x8000087c addi    a3, a3, 1              #; a3  = 42, (wrb) a3  <-- 43
      0x80000880 bnez    a2, pc - 40            #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 6.282
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000870 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
; init_data (test_mat.c:0)
;  in main (test_mat.c:28)
      0x80000888 j       pc + 0x54              #; goto 0x800008dc
      0x80000884 csrci   ssr, 1                 #; (f:fpu) ft0  <-- 6.282
; main (test_mat.c:30)
      0x800008dc li      a3, 5                  #; (wrb) a3  <-- 5
      0x800008e0 li      a4, 6                  #; (wrb) a4  <-- 6
      0x800008e4 li      a5, 7                  #; (wrb) a5  <-- 7
      0x800008e8 li      s3, 6                  #; (wrb) s3  <-- 6
      0x800008ec mv      a0, s0                 #; s0  = 0x00100240, (wrb) a0  <-- 0x00100240
      0x800008f0 mv      a1, s2                 #; s2  = 0x00100000, (wrb) a1  <-- 0x00100000
      0x800008f4 mv      a2, s6                 #; s6  = 0x001000f0, (wrb) a2  <-- 0x001000f0
      0x800008f8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008f8
      0x800008fc jalr    ra, ra, 1612           #; ra  = 0x800008f8, (wrb) ra  <-- 0x80000900, goto 0x80000f44
; matmul (matmul.c:5)
      0x80000f44 addi    sp, sp, -48            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe70
      0x80000f48 sw      ra, 44(sp)             #; sp  = 0x0011fe70, 0x80000900 ~~> Word[0x0011fe9c]
      0x80000f4c sw      s0, 40(sp)             #; sp  = 0x0011fe70, 0x00100240 ~~> Word[0x0011fe98]
      0x80000f50 sw      s1, 36(sp)             #; sp  = 0x0011fe70, 0 ~~> Word[0x0011fe94]
      0x80000f54 sw      s2, 32(sp)             #; sp  = 0x0011fe70, 0x00100000 ~~> Word[0x0011fe90]
      0x80000f58 sw      s3, 28(sp)             #; sp  = 0x0011fe70, 6 ~~> Word[0x0011fe8c]
      0x80000f5c sw      s4, 24(sp)             #; sp  = 0x0011fe70, 0 ~~> Word[0x0011fe88]
      0x80000f60 sw      s5, 20(sp)             #; sp  = 0x0011fe70, 0 ~~> Word[0x0011fe84]
      0x80000f64 sw      s6, 16(sp)             #; sp  = 0x0011fe70, 0x001000f0 ~~> Word[0x0011fe80]
      0x80000f68 sw      s7, 12(sp)             #; sp  = 0x0011fe70, 0 ~~> Word[0x0011fe7c]
      0x80000f6c mv      s6, a3                 #; a3  = 5, (wrb) s6  <-- 5
; matmul (matmul.c:6)
      0x80000f70 slti    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 0
      0x80000f74 slti    s1, a5, 1              #; a5  = 7, (wrb) s1  <-- 0
      0x80000f78 or      a3, a3, s1             #; a3  = 0, s1  = 0, (wrb) a3  <-- 0
      0x80000f7c bnez    a3, pc + 820           #; a3  = 0, not taken
; matmul (matmul.c:0)
      0x80000f80 mv      s7, a0                 #; a0  = 0x00100240, (wrb) s7  <-- 0x00100240
; matmul (matmul.c:6)
      0x80000f84 addi    a6, a5, -1             #; a5  = 7, (wrb) a6  <-- 6
      0x80000f88 slli    t4, a6, 3              #; a6  = 6, (wrb) t4  <-- 48
      0x80000f8c addi    t2, s6, -1             #; s6  = 5, (wrb) t2  <-- 4
      0x80000f90 slli    s2, a5, 3              #; a5  = 7, (wrb) s2  <-- 56
      0x80000f94 mul     a0, s2, t2             #; s2  = 56, t2  = 4
                                                #; (acc) a0  <-- 0x00ae8533
      0x80000f98 add     a0, t4, a0             #; t4  = 48, a0  = 224, (wrb) a0  <-- 272
      0x80000f9c add     s4, a0, s7             #; a0  = 272, s7  = 0x00100240, (wrb) s4  <-- 0x00100350
      0x80000fa0 sltu    a3, s4, a0             #; s4  = 0x00100350, a0  = 272, (wrb) a3  <-- 0
; matmul (matmul.c:9)
      0x80000fa4 bge     zero, a4, pc + 80      #; a4  = 6, not taken
; matmul (matmul.c:6)
      0x80000fa8 addi    t0, a4, -1             #; a4  = 6, (wrb) t0  <-- 5
      0x80000fac slli    t1, t0, 3              #; t0  = 5, (wrb) t1  <-- 40
      0x80000fb0 slli    s5, a4, 3              #; a4  = 6, (wrb) s5  <-- 48
      0x80000fb4 mul     a0, s5, t2             #; s5  = 48, t2  = 4
                                                #; (acc) t6  <-- 0x00a30fb3
      0x80000fb8 add     t6, t1, a0             #; t1  = 40, a0  = 192, (wrb) t6  <-- 232
      0x80000fbc add     t5, t6, a1             #; t6  = 232, a1  = 0x00100000, (wrb) t5  <-- 0x001000e8
      0x80000fc0 mul     a7, s2, t0             #; s2  = 56, t0  = 5
      0x80000fc4 beqz    a3, pc + 112           #; a3  = 0, taken, goto 0x80001034
; matmul (matmul.c:0)
      0x80001034 sltu    a0, s4, a1             #; s4  = 0x00100350, a1  = 0x00100000, (wrb) a0  <-- 0
; matmul (matmul.c:6)
      0x80001038 add     t3, a7, t4             #; a7  = 280, t4  = 48, (wrb) t3  <-- 328
      0x8000103c bgeu    t5, t6, pc - 104       #; t5  = 0x001000e8, t6  = 232, taken, goto 0x80000fd4
; matmul (matmul.c:0)
      0x80000fd4 sltu    s0, t5, s7             #; t5  = 0x001000e8, s7  = 0x00100240, (wrb) s0  <-- 1
; matmul (matmul.c:6)
      0x80000fd8 add     s3, t3, a2             #; t3  = 328, a2  = 0x001000f0, (wrb) s3  <-- 0x00100238
      0x80000fdc bnez    a3, pc + 112           #; a3  = 0, not taken
; matmul (matmul.c:0)
      0x80000fe0 sltu    s1, s4, a2             #; s4  = 0x00100350, a2  = 0x001000f0, (wrb) s1  <-- 0
; matmul (matmul.c:6)
      0x80000fe4 or      a0, s0, a0             #; s0  = 1, a0  = 0, (wrb) a0  <-- 1
      0x80000fe8 bltu    s3, t3, pc + 112       #; s3  = 0x00100238, t3  = 328, not taken
; matmul (matmul.c:0)
      0x80000fec sltu    s0, s3, s7             #; s3  = 0x00100238, s7  = 0x00100240, (wrb) s0  <-- 1
      0x80000ff0 j       pc + 0x6c              #; goto 0x8000105c
; matmul (matmul.c:6)
      0x8000105c or      s0, s1, s0             #; s1  = 0, s0  = 1, (wrb) s0  <-- 1
      0x80001060 and     s0, a0, s0             #; a0  = 1, s0  = 1, (wrb) s0  <-- 1
      0x80001064 srli    a0, s7, 20             #; s7  = 0x00100240, (wrb) a0  <-- 1
      0x80001068 snez    s1, a0                 #; a0  = 1, (wrb) s1  <-- 1
      0x8000106c lui     a0, 0x120              #; (wrb) a0  <-- 0x00120000
      0x80001070 addi    a0, a0, 1              #; a0  = 0x00120000, (wrb) a0  <-- 0x00120001
      0x80001074 beqz    a3, pc + 12            #; a3  = 0, taken, goto 0x80001080
; matmul (matmul.c:0)
      0x80001080 sltu    a3, s4, a0             #; s4  = 0x00100350, a0  = 0x00120001, (wrb) a3  <-- 1
; matmul (matmul.c:6)
      0x80001084 and     a3, s1, a3             #; s1  = 1, a3  = 1, (wrb) a3  <-- 1
      0x80001088 and     a3, a3, s0             #; a3  = 1, s0  = 1, (wrb) a3  <-- 1
      0x8000108c srli    s0, a1, 20             #; a1  = 0x00100000, (wrb) s0  <-- 1
      0x80001090 snez    s0, s0                 #; s0  = 1, (wrb) s0  <-- 1
      0x80001094 bgeu    t5, t6, pc + 12        #; t5  = 0x001000e8, t6  = 232, taken, goto 0x800010a0
; matmul (matmul.c:0)
      0x800010a0 sltu    s1, t5, a0             #; t5  = 0x001000e8, a0  = 0x00120001, (wrb) s1  <-- 1
; matmul (matmul.c:6)
      0x800010a4 and     s1, s0, s1             #; s0  = 1, s1  = 1, (wrb) s1  <-- 1
      0x800010a8 and     a3, s1, a3             #; s1  = 1, a3  = 1, (wrb) a3  <-- 1
      0x800010ac srli    s1, a2, 20             #; a2  = 0x001000f0, (wrb) s1  <-- 1
      0x800010b0 snez    s1, s1                 #; s1  = 1, (wrb) s1  <-- 1
      0x800010b4 bgeu    s3, t3, pc + 12        #; s3  = 0x00100238, t3  = 328, taken, goto 0x800010c0
; matmul (matmul.c:0)
      0x800010c0 sltu    a0, s3, a0             #; s3  = 0x00100238, a0  = 0x00120001, (wrb) a0  <-- 1
; matmul (matmul.c:6)
      0x800010c4 and     a0, s1, a0             #; s1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x800010c8 and     a0, a0, a3             #; a0  = 1, a3  = 1, (wrb) a0  <-- 1
      0x800010cc beqz    a0, pc + 264           #; a0  = 1, not taken
; matmul (matmul.c:0)
      0x800010d0 li      a0, 0                  #; (wrb) a0  <-- 0
      0x800010d4 li      t4, 8                  #; (wrb) t4  <-- 8
; matmul (matmul.c:6)
      0x800010d8 li      s1, 64                 #; (wrb) s1  <-- 64
      0x800010dc scfgw   a6, s1                 #; a6  = 6, s1  = 64
      0x800010e0 li      s1, 192                #; (wrb) s1  <-- 192
      0x800010e4 scfgw   t4, s1                 #; t4  = 8, s1  = 192
      0x800010e8 li      s1, 96                 #; (wrb) s1  <-- 96
      0x800010ec scfgw   t2, s1                 #; t2  = 4, s1  = 96
      0x800010f0 li      s1, 224                #; (wrb) s1  <-- 224
      0x800010f4 scfgw   t4, s1                 #; t4  = 8, s1  = 224
      0x800010f8 li      s1, 32                 #; (wrb) s1  <-- 32
      0x800010fc scfgw   zero, s1               #; s1  = 32
      0x80001100 scfgwi  s7, 928                #; s7  = 0x00100240
      0x80001104 li      s1, 1                  #; (wrb) s1  <-- 1
      0x80001108 addi    s0, s1, 64             #; s1  = 1, (wrb) s0  <-- 65
      0x8000110c scfgw   t0, s0                 #; t0  = 5, s0  = 65, (acc) ra  <-- 0x0082a0ab
      0x80001110 addi    s0, s1, 192            #; s1  = 1, (wrb) s0  <-- 193
      0x80001114 scfgw   t4, s0                 #; t4  = 8, s0  = 193
      0x80001118 sub     s0, zero, t1           #; t1  = 40, (wrb) s0  <-- -40
      0x8000111c addi    a3, s1, 96             #; s1  = 1, (wrb) a3  <-- 97
      0x80001120 scfgw   a6, a3                 #; a6  = 6, a3  = 97
      0x80001124 addi    a3, s1, 224            #; s1  = 1, (wrb) a3  <-- 225
      0x80001128 scfgw   s0, a3                 #; s0  = -40, a3  = 225
      0x8000112c addi    a3, s1, 128            #; s1  = 1, (wrb) a3  <-- 129
      0x80001130 addi    s0, s1, 256            #; s1  = 1, (wrb) s0  <-- 257
      0x80001134 scfgw   t2, a3                 #; t2  = 4, a3  = 129
      0x80001138 scfgw   t4, s0                 #; t4  = 8, s0  = 257
      0x8000113c addi    a3, s1, 32             #; s1  = 1, (wrb) a3  <-- 33
      0x80001140 scfgw   zero, a3               #; a3  = 33
      0x80001144 scfgwi  a1, 833                #; a1  = 0x00100000
      0x80001148 li      a1, 2                  #; (wrb) a1  <-- 2
      0x8000114c addi    a3, a1, 64             #; a1  = 2, (wrb) a3  <-- 66
      0x80001150 addi    s1, a1, 192            #; a1  = 2, (wrb) s1  <-- 194
      0x80001154 scfgw   t0, a3                 #; t0  = 5, a3  = 66
      0x80001158 scfgw   s2, s1                 #; s2  = 56, s1  = 194
      0x8000115c sub     a3, t4, a7             #; t4  = 8, a7  = 280, (wrb) a3  <-- -272
      0x80001160 addi    s1, a1, 96             #; a1  = 2, (wrb) s1  <-- 98
      0x80001164 addi    s0, a1, 224            #; a1  = 2, (wrb) s0  <-- 226
      0x80001168 scfgw   a6, s1                 #; a6  = 6, s1  = 98
      0x8000116c scfgw   a3, s0                 #; a3  = -272, s0  = 226
      0x80001170 sub     a3, zero, t3           #; t3  = 328, (wrb) a3  <-- -328
      0x80001174 addi    s1, a1, 128            #; a1  = 2, (wrb) s1  <-- 130
      0x80001178 addi    s0, a1, 256            #; a1  = 2, (wrb) s0  <-- 258
      0x8000117c scfgw   t2, s1                 #; t2  = 4, s1  = 130
      0x80001180 scfgw   a3, s0                 #; a3  = -328, s0  = 258
      0x80001184 addi    a1, a1, 32             #; a1  = 2, (wrb) a1  <-- 34
      0x80001188 scfgw   zero, a1               #; a1  = 34
      0x8000118c scfgwi  a2, 834                #; a2  = 0x001000f0
      0x80001190 csrsi   ssr, 1                 #; 
; matmul (matmul.c:0)
      0x80001198 li      a1, 0                  #; (wrb) a1  <-- 0
      0x80001194 fcvt.d.w ft3, zero             #; ac1  = 0
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft3  <-- 0.0
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 3.141
                                                #; (f:fpu) ft6  <-- 3.141
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 3.141, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 25.128, ft2  = 25.128, (f:fpu) ft5  <-- 6.282
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 9.865881
                                                #; (f:fpu) ft6  <-- 25.128
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 6.282, ft4  = 9.865881
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 47.115, ft2  = 47.115, (f:fpu) ft5  <-- 9.423
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 47.115
                                                #; (f:fpu) ft4  <-- 167.7199770
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 9.423, ft4  = 167.7199770
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 12.564
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 6.282
                                                #; (f:fpu) ft4  <-- 611.6846220
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 12.564, ft4  = 611.6846220
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 28.269, ft2  = 28.269, (f:fpu) ft5  <-- 15.705
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 28.269
                                                #; (f:fpu) ft4  <-- 690.6116700
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 15.705, ft4  = 690.6116700
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 50.256, ft2  = 50.256, (f:fpu) ft5  <-- 18.846
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 50.256
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
                                                #; (f:fpu) ft4  <-- 1134.5763150
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 18.846, ft4  = 1134.5763150
                                                #; (f:fpu) ft4  <-- 2081.7008910
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 2081.7008910, ft4  = 2081.7008910
                                                #; (f:fpu) ft0  <-- 2081.7008910
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 1, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 3.141
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 6.282
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 3.141, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 28.269, ft2  = 28.269, (f:fpu) ft5  <-- 6.282
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 19.7317620
                                                #; (f:fpu) ft6  <-- 28.269
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 6.282, ft4  = 19.7317620
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 50.256, ft2  = 50.256, (f:fpu) ft5  <-- 9.423
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 50.256
                                                #; (f:fpu) ft4  <-- 197.3176200
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 9.423, ft4  = 197.3176200
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 9.423, ft2  = 9.423, (f:fpu) ft5  <-- 12.564
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 9.423
                                                #; (f:fpu) ft4  <-- 670.8799080
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 12.564, ft4  = 670.8799080
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 31.41, ft2  = 31.41, (f:fpu) ft5  <-- 15.705
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 31.41
                                                #; (f:fpu) ft4  <-- 789.2704800
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 15.705, ft4  = 789.2704800
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 53.397, ft2  = 53.397, (f:fpu) ft5  <-- 18.846
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 53.397
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                                                #; (f:fpu) ft4  <-- 1282.5645300
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 18.846, ft4  = 1282.5645300
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 2, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 2288.8843920
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 2288.8843920, ft4  = 2288.8843920
; matmul (matmul.c:0)
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2288.8843920
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 9.423, ft2  = 9.423, (f:fpu) ft5  <-- 3.141
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 9.423
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 3.141, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 31.41, ft2  = 31.41, (f:fpu) ft5  <-- 6.282
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 29.5976430
                                                #; (f:fpu) ft6  <-- 31.41
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 6.282, ft4  = 29.5976430
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 53.397, ft2  = 53.397, (f:fpu) ft5  <-- 9.423
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 53.397
                                                #; (f:fpu) ft4  <-- 226.9152630
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 9.423, ft4  = 226.9152630
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 12.564, ft2  = 12.564, (f:fpu) ft5  <-- 12.564
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 12.564
                                                #; (f:fpu) ft4  <-- 730.0751940
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 12.564, ft4  = 730.0751940
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 34.551, ft2  = 34.551, (f:fpu) ft5  <-- 15.705
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 34.551
                                                #; (f:fpu) ft4  <-- 887.9292900
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 15.705, ft4  = 887.9292900
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 56.538, ft2  = 56.538, (f:fpu) ft5  <-- 18.846
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 56.538
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                                                #; (f:fpu) ft4  <-- 1430.5527450
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 18.846, ft4  = 1430.5527450
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 3, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 2496.0678930
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 2496.0678930, ft4  = 2496.0678930
; matmul (matmul.c:0)
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2496.0678930
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 12.564, ft2  = 12.564, (f:fpu) ft5  <-- 3.141
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 12.564
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 3.141, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 34.551, ft2  = 34.551, (f:fpu) ft5  <-- 6.282
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 39.4635240
                                                #; (f:fpu) ft6  <-- 34.551
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 6.282, ft4  = 39.4635240
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 56.538, ft2  = 56.538, (f:fpu) ft5  <-- 9.423
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 56.538
                                                #; (f:fpu) ft4  <-- 256.5129060
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 9.423, ft4  = 256.5129060
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 15.705, ft2  = 15.705, (f:fpu) ft5  <-- 12.564
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 15.705
                                                #; (f:fpu) ft4  <-- 789.2704800
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 12.564, ft4  = 789.2704800
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 37.692, ft2  = 37.692, (f:fpu) ft5  <-- 15.705
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 37.692
                                                #; (f:fpu) ft4  <-- 986.5881000
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 15.705, ft4  = 986.5881000
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 59.679, ft2  = 59.679, (f:fpu) ft5  <-- 18.846
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 59.679
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                                                #; (f:fpu) ft4  <-- 1578.5409600
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 18.846, ft4  = 1578.5409600
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 4, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 2703.2513940
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 2703.2513940, ft4  = 2703.2513940
; matmul (matmul.c:0)
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2703.2513940
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 15.705, ft2  = 15.705, (f:fpu) ft5  <-- 3.141
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 15.705
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 3.141, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 37.692, ft2  = 37.692, (f:fpu) ft5  <-- 6.282
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 49.3294050
                                                #; (f:fpu) ft6  <-- 37.692
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 6.282, ft4  = 49.3294050
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 59.679, ft2  = 59.679, (f:fpu) ft5  <-- 9.423
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 59.679
                                                #; (f:fpu) ft4  <-- 286.1105490
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 9.423, ft4  = 286.1105490
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 18.846, ft2  = 18.846, (f:fpu) ft5  <-- 12.564
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 18.846
                                                #; (f:fpu) ft4  <-- 848.4657660
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 12.564, ft4  = 848.4657660
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 40.833, ft2  = 40.833, (f:fpu) ft5  <-- 15.705
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 40.833
                                                #; (f:fpu) ft4  <-- 1085.2469100
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 15.705, ft4  = 1085.2469100
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 62.82, ft2  = 62.82, (f:fpu) ft5  <-- 18.846
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 62.82
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                                                #; (f:fpu) ft4  <-- 1726.5291750
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 18.846, ft4  = 1726.5291750
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 5, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 2910.4348950
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 2910.4348950, ft4  = 2910.4348950
; matmul (matmul.c:0)
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2910.4348950
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 18.846, ft2  = 18.846, (f:fpu) ft5  <-- 3.141
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 18.846
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 3.141, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 40.833, ft2  = 40.833, (f:fpu) ft5  <-- 6.282
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 59.1952860
                                                #; (f:fpu) ft6  <-- 40.833
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 6.282, ft4  = 59.1952860
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 62.82, ft2  = 62.82, (f:fpu) ft5  <-- 9.423
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 62.82
                                                #; (f:fpu) ft4  <-- 315.7081920
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 9.423, ft4  = 315.7081920
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 21.9870000, ft2  = 21.9870000, (f:fpu) ft5  <-- 12.564
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 21.9870000
                                                #; (f:fpu) ft4  <-- 907.6610520
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 12.564, ft4  = 907.6610520
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 43.9740000, ft2  = 43.9740000, (f:fpu) ft5  <-- 15.705
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 43.9740000
                                                #; (f:fpu) ft4  <-- 1183.9057200
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 15.705, ft4  = 1183.9057200
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 18.846
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 3.141
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                                                #; (f:fpu) ft4  <-- 1874.5173900
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 18.846, ft4  = 1874.5173900
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 6, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 1933.7126760
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 1933.7126760, ft4  = 1933.7126760
; matmul (matmul.c:0)
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 1933.7126760
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 21.9870000, ft2  = 21.9870000, (f:fpu) ft5  <-- 3.141
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 21.9870000
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 3.141, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 43.9740000, ft2  = 43.9740000, (f:fpu) ft5  <-- 6.282
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 69.0611670
                                                #; (f:fpu) ft6  <-- 43.9740000
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 6.282, ft4  = 69.0611670
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 9.423
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 3.141
                                                #; (f:fpu) ft4  <-- 345.3058350
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 9.423, ft4  = 345.3058350
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 25.128, ft2  = 25.128, (f:fpu) ft5  <-- 12.564
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 25.128
                                                #; (f:fpu) ft4  <-- 374.9034780
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 12.564, ft4  = 374.9034780
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 47.115, ft2  = 47.115, (f:fpu) ft5  <-- 15.705
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 47.115
                                                #; (f:fpu) ft4  <-- 690.6116700
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 15.705, ft4  = 690.6116700
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 18.846
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 6.282
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                                                #; (f:fpu) ft4  <-- 1430.5527450
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 18.846, ft4  = 1430.5527450
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 7, a5  = 7, not taken
; matmul (matmul.c:6)
      0x800011c4 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x800011c8 bne     a0, s6, pc - 48        #; a0  = 1, s6  = 5, taken, goto 0x80001198
                                                #; (f:fpu) ft4  <-- 1548.9433170
; matmul (matmul.c:0)
      0x80001198 li      a1, 0                  #; (wrb) a1  <-- 0
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 1548.9433170, ft4  = 1548.9433170
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft0  <-- 1548.9433170
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 21.9870000
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 3.141
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 21.9870000, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 25.128, ft1  = 25.128
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 25.128, ft2  = 25.128, (f:fpu) ft5  <-- 25.128
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 69.0611670
                                                #; (f:fpu) ft6  <-- 25.128
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 25.128, ft4  = 69.0611670
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 47.115, ft2  = 47.115, (f:fpu) ft5  <-- 28.269
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 47.115
                                                #; (f:fpu) ft4  <-- 700.4775510
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 28.269, ft4  = 700.4775510
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 31.41
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 6.282
                                                #; (f:fpu) ft4  <-- 2032.3714860
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 31.41, ft4  = 2032.3714860
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 34.551, ft1  = 34.551
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 28.269, ft2  = 28.269, (f:fpu) ft5  <-- 34.551
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 28.269
                                                #; (f:fpu) ft4  <-- 2229.6891060
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 34.551, ft4  = 2229.6891060
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 37.692, ft1  = 37.692
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 50.256, ft2  = 50.256, (f:fpu) ft5  <-- 37.692
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 50.256
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
                                                #; (f:fpu) ft4  <-- 3206.4113250
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 37.692, ft4  = 3206.4113250
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 1, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 5100.6604770
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 5100.6604770, ft4  = 5100.6604770
; matmul (matmul.c:0)
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5100.6604770
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 21.9870000
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 6.282
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 21.9870000, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 25.128, ft1  = 25.128
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 28.269, ft2  = 28.269, (f:fpu) ft5  <-- 25.128
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 138.1223340
                                                #; (f:fpu) ft6  <-- 28.269
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 25.128, ft4  = 138.1223340
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 50.256, ft2  = 50.256, (f:fpu) ft5  <-- 28.269
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 50.256
                                                #; (f:fpu) ft4  <-- 848.4657660
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 28.269, ft4  = 848.4657660
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 9.423, ft2  = 9.423, (f:fpu) ft5  <-- 31.41
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 9.423
                                                #; (f:fpu) ft4  <-- 2269.1526300
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 31.41, ft4  = 2269.1526300
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 34.551, ft1  = 34.551
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 31.41, ft2  = 31.41, (f:fpu) ft5  <-- 34.551
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 31.41
                                                #; (f:fpu) ft4  <-- 2565.1290600
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 34.551, ft4  = 2565.1290600
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 37.692, ft1  = 37.692
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 53.397, ft2  = 53.397, (f:fpu) ft5  <-- 37.692
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 53.397
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                                                #; (f:fpu) ft4  <-- 3650.3759700
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 37.692, ft4  = 3650.3759700
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 2, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 5663.0156940
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 5663.0156940, ft4  = 5663.0156940
; matmul (matmul.c:0)
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5663.0156940
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 9.423, ft2  = 9.423, (f:fpu) ft5  <-- 21.9870000
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 9.423
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 21.9870000, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 25.128, ft1  = 25.128
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 31.41, ft2  = 31.41, (f:fpu) ft5  <-- 25.128
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 207.1835010
                                                #; (f:fpu) ft6  <-- 31.41
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 25.128, ft4  = 207.1835010
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 53.397, ft2  = 53.397, (f:fpu) ft5  <-- 28.269
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 53.397
                                                #; (f:fpu) ft4  <-- 996.4539810
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 28.269, ft4  = 996.4539810
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 12.564, ft2  = 12.564, (f:fpu) ft5  <-- 31.41
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 12.564
                                                #; (f:fpu) ft4  <-- 2505.9337740
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 31.41, ft4  = 2505.9337740
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 34.551, ft1  = 34.551
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 34.551, ft2  = 34.551, (f:fpu) ft5  <-- 34.551
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 34.551
                                                #; (f:fpu) ft4  <-- 2900.5690140
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 34.551, ft4  = 2900.5690140
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 37.692, ft1  = 37.692
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 56.538, ft2  = 56.538, (f:fpu) ft5  <-- 37.692
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 56.538
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                                                #; (f:fpu) ft4  <-- 4094.3406150
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 37.692, ft4  = 4094.3406150
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 3, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 6225.3709110
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 6225.3709110, ft4  = 6225.3709110
; matmul (matmul.c:0)
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 6225.3709110
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 12.564, ft2  = 12.564, (f:fpu) ft5  <-- 21.9870000
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 12.564
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 21.9870000, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 25.128, ft1  = 25.128
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 34.551, ft2  = 34.551, (f:fpu) ft5  <-- 25.128
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 276.2446680
                                                #; (f:fpu) ft6  <-- 34.551
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 25.128, ft4  = 276.2446680
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 56.538, ft2  = 56.538, (f:fpu) ft5  <-- 28.269
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 56.538
                                                #; (f:fpu) ft4  <-- 1144.4421960
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 28.269, ft4  = 1144.4421960
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 15.705, ft2  = 15.705, (f:fpu) ft5  <-- 31.41
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 15.705
                                                #; (f:fpu) ft4  <-- 2742.7149180
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 31.41, ft4  = 2742.7149180
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 34.551, ft1  = 34.551
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 37.692, ft2  = 37.692, (f:fpu) ft5  <-- 34.551
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 37.692
                                                #; (f:fpu) ft4  <-- 3236.0089680
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 34.551, ft4  = 3236.0089680
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 37.692, ft1  = 37.692
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 59.679, ft2  = 59.679, (f:fpu) ft5  <-- 37.692
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 59.679
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                                                #; (f:fpu) ft4  <-- 4538.3052600
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 37.692, ft4  = 4538.3052600
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 4, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 6787.7261280
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 6787.7261280, ft4  = 6787.7261280
; matmul (matmul.c:0)
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 6787.7261280
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 15.705, ft2  = 15.705, (f:fpu) ft5  <-- 21.9870000
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 15.705
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 21.9870000, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 25.128, ft1  = 25.128
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 37.692, ft2  = 37.692, (f:fpu) ft5  <-- 25.128
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 345.3058350
                                                #; (f:fpu) ft6  <-- 37.692
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 25.128, ft4  = 345.3058350
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 59.679, ft2  = 59.679, (f:fpu) ft5  <-- 28.269
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 59.679
                                                #; (f:fpu) ft4  <-- 1292.4304110
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 28.269, ft4  = 1292.4304110
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 18.846, ft2  = 18.846, (f:fpu) ft5  <-- 31.41
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 18.846
                                                #; (f:fpu) ft4  <-- 2979.4960620
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 31.41, ft4  = 2979.4960620
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 34.551, ft1  = 34.551
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 40.833, ft2  = 40.833, (f:fpu) ft5  <-- 34.551
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 40.833
                                                #; (f:fpu) ft4  <-- 3571.4489220
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 34.551, ft4  = 3571.4489220
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 37.692, ft1  = 37.692
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 62.82, ft2  = 62.82, (f:fpu) ft5  <-- 37.692
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 62.82
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                                                #; (f:fpu) ft4  <-- 4982.2699050
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 37.692, ft4  = 4982.2699050
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 5, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 7350.0813450
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 7350.0813450, ft4  = 7350.0813450
; matmul (matmul.c:0)
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 7350.0813450
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 18.846, ft2  = 18.846, (f:fpu) ft5  <-- 21.9870000
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 18.846
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 21.9870000, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 25.128, ft1  = 25.128
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 40.833, ft2  = 40.833, (f:fpu) ft5  <-- 25.128
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 414.3670020
                                                #; (f:fpu) ft6  <-- 40.833
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 25.128, ft4  = 414.3670020
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 62.82, ft2  = 62.82, (f:fpu) ft5  <-- 28.269
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 62.82
                                                #; (f:fpu) ft4  <-- 1440.4186260
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 28.269, ft4  = 1440.4186260
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 21.9870000, ft2  = 21.9870000, (f:fpu) ft5  <-- 31.41
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 21.9870000
                                                #; (f:fpu) ft4  <-- 3216.2772060
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 31.41, ft4  = 3216.2772060
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 34.551, ft1  = 34.551
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 43.9740000, ft2  = 43.9740000, (f:fpu) ft5  <-- 34.551
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 43.9740000
                                                #; (f:fpu) ft4  <-- 3906.8888760
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 34.551, ft4  = 3906.8888760
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 37.692, ft1  = 37.692
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 37.692
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 3.141
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                                                #; (f:fpu) ft4  <-- 5426.2345500
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 37.692, ft4  = 5426.2345500
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 6, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 5544.6251220
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 5544.6251220, ft4  = 5544.6251220
; matmul (matmul.c:0)
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5544.6251220
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 21.9870000, ft2  = 21.9870000, (f:fpu) ft5  <-- 21.9870000
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 21.9870000
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 21.9870000, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 25.128, ft1  = 25.128
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 43.9740000, ft2  = 43.9740000, (f:fpu) ft5  <-- 25.128
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 483.4281690
                                                #; (f:fpu) ft6  <-- 43.9740000
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 25.128, ft4  = 483.4281690
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 28.269
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 3.141
                                                #; (f:fpu) ft4  <-- 1588.4068410
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 28.269, ft4  = 1588.4068410
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 25.128, ft2  = 25.128, (f:fpu) ft5  <-- 31.41
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 25.128
                                                #; (f:fpu) ft4  <-- 1677.1997700
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 31.41, ft4  = 1677.1997700
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 34.551, ft1  = 34.551
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 47.115, ft2  = 47.115, (f:fpu) ft5  <-- 34.551
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 47.115
                                                #; (f:fpu) ft4  <-- 2466.4702500
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 34.551, ft4  = 2466.4702500
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 37.692, ft1  = 37.692
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 37.692
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 6.282
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                                                #; (f:fpu) ft4  <-- 4094.3406150
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 37.692, ft4  = 4094.3406150
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 7, a5  = 7, not taken
; matmul (matmul.c:6)
      0x800011c4 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x800011c8 bne     a0, s6, pc - 48        #; a0  = 2, s6  = 5, taken, goto 0x80001198
                                                #; (f:fpu) ft4  <-- 4331.1217590
; matmul (matmul.c:0)
      0x80001198 li      a1, 0                  #; (wrb) a1  <-- 0
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 4331.1217590, ft4  = 4331.1217590
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft0  <-- 4331.1217590
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 40.833, ft1  = 40.833, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 40.833
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 3.141
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 40.833, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 43.9740000, ft1  = 43.9740000
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 25.128, ft2  = 25.128, (f:fpu) ft5  <-- 43.9740000
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 128.2564530
                                                #; (f:fpu) ft6  <-- 25.128
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 43.9740000, ft4  = 128.2564530
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 47.115, ft1  = 47.115
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 47.115, ft2  = 47.115, (f:fpu) ft5  <-- 47.115
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 47.115
                                                #; (f:fpu) ft4  <-- 1233.2351250
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 47.115, ft4  = 1233.2351250
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 50.256, ft1  = 50.256
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 50.256
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 6.282
                                                #; (f:fpu) ft4  <-- 3453.0583500
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 50.256, ft4  = 3453.0583500
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 53.397, ft1  = 53.397
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 28.269, ft2  = 28.269, (f:fpu) ft5  <-- 53.397
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 28.269
                                                #; (f:fpu) ft4  <-- 3768.7665420
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 53.397, ft4  = 3768.7665420
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 56.538, ft1  = 56.538
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 50.256, ft2  = 50.256, (f:fpu) ft5  <-- 56.538
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 50.256
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
                                                #; (f:fpu) ft4  <-- 5278.2463350
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 56.538, ft4  = 5278.2463350
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 1, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 8119.6200630
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 8119.6200630, ft4  = 8119.6200630
; matmul (matmul.c:0)
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 8119.6200630
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 40.833, ft1  = 40.833, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 40.833
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 6.282
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 40.833, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 43.9740000, ft1  = 43.9740000
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 28.269, ft2  = 28.269, (f:fpu) ft5  <-- 43.9740000
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 256.5129060
                                                #; (f:fpu) ft6  <-- 28.269
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 43.9740000, ft4  = 256.5129060
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 47.115, ft1  = 47.115
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 50.256, ft2  = 50.256, (f:fpu) ft5  <-- 47.115
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 50.256
                                                #; (f:fpu) ft4  <-- 1499.6139120
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 47.115, ft4  = 1499.6139120
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 50.256, ft1  = 50.256
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 9.423, ft2  = 9.423, (f:fpu) ft5  <-- 50.256
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 9.423
                                                #; (f:fpu) ft4  <-- 3867.4253520
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 50.256, ft4  = 3867.4253520
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 53.397, ft1  = 53.397
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 31.41, ft2  = 31.41, (f:fpu) ft5  <-- 53.397
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 31.41
                                                #; (f:fpu) ft4  <-- 4340.9876400
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 53.397, ft4  = 4340.9876400
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 56.538, ft1  = 56.538
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 53.397, ft2  = 53.397, (f:fpu) ft5  <-- 56.538
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 53.397
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                                                #; (f:fpu) ft4  <-- 6018.1874100
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 56.538, ft4  = 6018.1874100
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 2, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 9037.1469960
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 9037.1469960, ft4  = 9037.1469960
; matmul (matmul.c:0)
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 9037.1469960
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 40.833, ft1  = 40.833, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 9.423, ft2  = 9.423, (f:fpu) ft5  <-- 40.833
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 9.423
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 40.833, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 43.9740000, ft1  = 43.9740000
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 31.41, ft2  = 31.41, (f:fpu) ft5  <-- 43.9740000
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 384.7693590
                                                #; (f:fpu) ft6  <-- 31.41
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 43.9740000, ft4  = 384.7693590
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 47.115, ft1  = 47.115
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 53.397, ft2  = 53.397, (f:fpu) ft5  <-- 47.115
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 53.397
                                                #; (f:fpu) ft4  <-- 1765.9926990
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 47.115, ft4  = 1765.9926990
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 50.256, ft1  = 50.256
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 12.564, ft2  = 12.564, (f:fpu) ft5  <-- 50.256
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 12.564
                                                #; (f:fpu) ft4  <-- 4281.7923540
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 50.256, ft4  = 4281.7923540
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 53.397, ft1  = 53.397
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 34.551, ft2  = 34.551, (f:fpu) ft5  <-- 53.397
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 34.551
                                                #; (f:fpu) ft4  <-- 4913.2087380
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 53.397, ft4  = 4913.2087380
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 56.538, ft1  = 56.538
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 56.538, ft2  = 56.538, (f:fpu) ft5  <-- 56.538
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 56.538
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                                                #; (f:fpu) ft4  <-- 6758.1284850
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 56.538, ft4  = 6758.1284850
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 3, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 9954.6739290
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 9954.6739290, ft4  = 9954.6739290
; matmul (matmul.c:0)
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 9954.6739290
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 40.833, ft1  = 40.833, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 12.564, ft2  = 12.564, (f:fpu) ft5  <-- 40.833
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 12.564
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 40.833, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 43.9740000, ft1  = 43.9740000
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 34.551, ft2  = 34.551, (f:fpu) ft5  <-- 43.9740000
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 513.0258120
                                                #; (f:fpu) ft6  <-- 34.551
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 43.9740000, ft4  = 513.0258120
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 47.115, ft1  = 47.115
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 56.538, ft2  = 56.538, (f:fpu) ft5  <-- 47.115
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 56.538
                                                #; (f:fpu) ft4  <-- 2032.3714860
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 47.115, ft4  = 2032.3714860
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 50.256, ft1  = 50.256
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 15.705, ft2  = 15.705, (f:fpu) ft5  <-- 50.256
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 15.705
                                                #; (f:fpu) ft4  <-- 4696.1593560
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 50.256, ft4  = 4696.1593560
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 53.397, ft1  = 53.397
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 37.692, ft2  = 37.692, (f:fpu) ft5  <-- 53.397
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 37.692
                                                #; (f:fpu) ft4  <-- 5485.4298360
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 53.397, ft4  = 5485.4298360
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 56.538, ft1  = 56.538
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 59.679, ft2  = 59.679, (f:fpu) ft5  <-- 56.538
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 59.679
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                                                #; (f:fpu) ft4  <-- 7498.0695600
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 56.538, ft4  = 7498.0695600
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 4, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 10872.2008620
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 10872.2008620, ft4  = 10872.2008620
; matmul (matmul.c:0)
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 10872.2008620
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 40.833, ft1  = 40.833, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 15.705, ft2  = 15.705, (f:fpu) ft5  <-- 40.833
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 15.705
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 40.833, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 43.9740000, ft1  = 43.9740000
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 37.692, ft2  = 37.692, (f:fpu) ft5  <-- 43.9740000
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 641.2822650
                                                #; (f:fpu) ft6  <-- 37.692
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 43.9740000, ft4  = 641.2822650
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 47.115, ft1  = 47.115
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 59.679, ft2  = 59.679, (f:fpu) ft5  <-- 47.115
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 59.679
                                                #; (f:fpu) ft4  <-- 2298.7502730
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 47.115, ft4  = 2298.7502730
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 50.256, ft1  = 50.256
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 18.846, ft2  = 18.846, (f:fpu) ft5  <-- 50.256
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 18.846
                                                #; (f:fpu) ft4  <-- 5110.5263580
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 50.256, ft4  = 5110.5263580
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 53.397, ft1  = 53.397
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 40.833, ft2  = 40.833, (f:fpu) ft5  <-- 53.397
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 40.833
                                                #; (f:fpu) ft4  <-- 6057.6509340
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 53.397, ft4  = 6057.6509340
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 56.538, ft1  = 56.538
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 62.82, ft2  = 62.82, (f:fpu) ft5  <-- 56.538
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 62.82
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                                                #; (f:fpu) ft4  <-- 8238.0106350
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 56.538, ft4  = 8238.0106350
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 5, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 11789.7277950
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 11789.7277950, ft4  = 11789.7277950
; matmul (matmul.c:0)
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 11789.7277950
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 40.833, ft1  = 40.833, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 18.846, ft2  = 18.846, (f:fpu) ft5  <-- 40.833
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 18.846
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 40.833, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 43.9740000, ft1  = 43.9740000
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 40.833, ft2  = 40.833, (f:fpu) ft5  <-- 43.9740000
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 769.5387180
                                                #; (f:fpu) ft6  <-- 40.833
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 43.9740000, ft4  = 769.5387180
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 47.115, ft1  = 47.115
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 62.82, ft2  = 62.82, (f:fpu) ft5  <-- 47.115
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 62.82
                                                #; (f:fpu) ft4  <-- 2565.1290600
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 47.115, ft4  = 2565.1290600
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 50.256, ft1  = 50.256
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 21.9870000, ft2  = 21.9870000, (f:fpu) ft5  <-- 50.256
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 21.9870000
                                                #; (f:fpu) ft4  <-- 5524.8933600
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 50.256, ft4  = 5524.8933600
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 53.397, ft1  = 53.397
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 43.9740000, ft2  = 43.9740000, (f:fpu) ft5  <-- 53.397
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 43.9740000
                                                #; (f:fpu) ft4  <-- 6629.8720320
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 53.397, ft4  = 6629.8720320
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 56.538, ft1  = 56.538
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 56.538
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 3.141
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                                                #; (f:fpu) ft4  <-- 8977.9517100
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 56.538, ft4  = 8977.9517100
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 6, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 9155.5375680
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 9155.5375680, ft4  = 9155.5375680
; matmul (matmul.c:0)
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 9155.5375680
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 40.833, ft1  = 40.833, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 21.9870000, ft2  = 21.9870000, (f:fpu) ft5  <-- 40.833
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 21.9870000
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 40.833, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 43.9740000, ft1  = 43.9740000
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 43.9740000, ft2  = 43.9740000, (f:fpu) ft5  <-- 43.9740000
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 897.7951710
                                                #; (f:fpu) ft6  <-- 43.9740000
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 43.9740000, ft4  = 897.7951710
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 47.115, ft1  = 47.115
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 47.115
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 3.141
                                                #; (f:fpu) ft4  <-- 2831.5078470
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 47.115, ft4  = 2831.5078470
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 50.256, ft1  = 50.256
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 25.128, ft2  = 25.128, (f:fpu) ft5  <-- 50.256
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 25.128
                                                #; (f:fpu) ft4  <-- 2979.4960620
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 50.256, ft4  = 2979.4960620
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 53.397, ft1  = 53.397
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 47.115, ft2  = 47.115, (f:fpu) ft5  <-- 53.397
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 47.115
                                                #; (f:fpu) ft4  <-- 4242.3288300
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 53.397, ft4  = 4242.3288300
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 56.538, ft1  = 56.538
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 56.538
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 6.282
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                                                #; (f:fpu) ft4  <-- 6758.1284850
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 56.538, ft4  = 6758.1284850
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 7, a5  = 7, not taken
; matmul (matmul.c:6)
      0x800011c4 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x800011c8 bne     a0, s6, pc - 48        #; a0  = 3, s6  = 5, taken, goto 0x80001198
                                                #; (f:fpu) ft4  <-- 7113.3002010
; matmul (matmul.c:0)
      0x80001198 li      a1, 0                  #; (wrb) a1  <-- 0
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 7113.3002010, ft4  = 7113.3002010
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft0  <-- 7113.3002010
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 59.679, ft1  = 59.679, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 59.679
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 3.141
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 59.679, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 62.82, ft1  = 62.82
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 25.128, ft2  = 25.128, (f:fpu) ft5  <-- 62.82
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 187.4517390
                                                #; (f:fpu) ft6  <-- 25.128
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 62.82, ft4  = 187.4517390
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 47.115, ft2  = 47.115, (f:fpu) ft5  <-- 3.141
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 47.115
                                                #; (f:fpu) ft4  <-- 1765.9926990
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 3.141, ft4  = 1765.9926990
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 6.282
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 6.282
                                                #; (f:fpu) ft4  <-- 1913.9809140
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 6.282, ft4  = 1913.9809140
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 28.269, ft2  = 28.269, (f:fpu) ft5  <-- 9.423
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 28.269
                                                #; (f:fpu) ft4  <-- 1953.4444380
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 9.423, ft4  = 1953.4444380
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 50.256, ft2  = 50.256, (f:fpu) ft5  <-- 12.564
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 50.256
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
                                                #; (f:fpu) ft4  <-- 2219.8232250
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 12.564, ft4  = 2219.8232250
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 1, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 2851.2396090
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 2851.2396090, ft4  = 2851.2396090
; matmul (matmul.c:0)
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2851.2396090
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 59.679, ft1  = 59.679, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 59.679
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 6.282
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 59.679, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 62.82, ft1  = 62.82
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 28.269, ft2  = 28.269, (f:fpu) ft5  <-- 62.82
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 374.9034780
                                                #; (f:fpu) ft6  <-- 28.269
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 62.82, ft4  = 374.9034780
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 50.256, ft2  = 50.256, (f:fpu) ft5  <-- 3.141
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 50.256
                                                #; (f:fpu) ft4  <-- 2150.7620580
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 3.141, ft4  = 2150.7620580
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 9.423, ft2  = 9.423, (f:fpu) ft5  <-- 6.282
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 9.423
                                                #; (f:fpu) ft4  <-- 2308.6161540
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 6.282, ft4  = 2308.6161540
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 31.41, ft2  = 31.41, (f:fpu) ft5  <-- 9.423
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 31.41
                                                #; (f:fpu) ft4  <-- 2367.8114400
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 9.423, ft4  = 2367.8114400
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 53.397, ft2  = 53.397, (f:fpu) ft5  <-- 12.564
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 53.397
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                                                #; (f:fpu) ft4  <-- 2663.7878700
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 12.564, ft4  = 2663.7878700
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 2, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 3334.6677780
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 3334.6677780, ft4  = 3334.6677780
; matmul (matmul.c:0)
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 3334.6677780
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 59.679, ft1  = 59.679, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 9.423, ft2  = 9.423, (f:fpu) ft5  <-- 59.679
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 9.423
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 59.679, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 62.82, ft1  = 62.82
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 31.41, ft2  = 31.41, (f:fpu) ft5  <-- 62.82
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 562.3552170
                                                #; (f:fpu) ft6  <-- 31.41
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 62.82, ft4  = 562.3552170
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 53.397, ft2  = 53.397, (f:fpu) ft5  <-- 3.141
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 53.397
                                                #; (f:fpu) ft4  <-- 2535.5314170
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 3.141, ft4  = 2535.5314170
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 12.564, ft2  = 12.564, (f:fpu) ft5  <-- 6.282
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 12.564
                                                #; (f:fpu) ft4  <-- 2703.2513940
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 6.282, ft4  = 2703.2513940
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 34.551, ft2  = 34.551, (f:fpu) ft5  <-- 9.423
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 34.551
                                                #; (f:fpu) ft4  <-- 2782.1784420
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 9.423, ft4  = 2782.1784420
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 56.538, ft2  = 56.538, (f:fpu) ft5  <-- 12.564
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 56.538
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                                                #; (f:fpu) ft4  <-- 3107.7525150
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 12.564, ft4  = 3107.7525150
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 3, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 3818.0959470
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 3818.0959470, ft4  = 3818.0959470
; matmul (matmul.c:0)
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 3818.0959470
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 59.679, ft1  = 59.679, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 12.564, ft2  = 12.564, (f:fpu) ft5  <-- 59.679
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 12.564
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 59.679, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 62.82, ft1  = 62.82
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 34.551, ft2  = 34.551, (f:fpu) ft5  <-- 62.82
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 749.8069560
                                                #; (f:fpu) ft6  <-- 34.551
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 62.82, ft4  = 749.8069560
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 56.538, ft2  = 56.538, (f:fpu) ft5  <-- 3.141
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 56.538
                                                #; (f:fpu) ft4  <-- 2920.3007760
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 3.141, ft4  = 2920.3007760
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 15.705, ft2  = 15.705, (f:fpu) ft5  <-- 6.282
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 15.705
                                                #; (f:fpu) ft4  <-- 3097.8866340
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 6.282, ft4  = 3097.8866340
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 37.692, ft2  = 37.692, (f:fpu) ft5  <-- 9.423
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 37.692
                                                #; (f:fpu) ft4  <-- 3196.5454440
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 9.423, ft4  = 3196.5454440
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 59.679, ft2  = 59.679, (f:fpu) ft5  <-- 12.564
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 59.679
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                                                #; (f:fpu) ft4  <-- 3551.7171600
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 12.564, ft4  = 3551.7171600
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 4, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 4301.5241160
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 4301.5241160, ft4  = 4301.5241160
; matmul (matmul.c:0)
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4301.5241160
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 59.679, ft1  = 59.679, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 15.705, ft2  = 15.705, (f:fpu) ft5  <-- 59.679
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 15.705
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 59.679, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 62.82, ft1  = 62.82
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 37.692, ft2  = 37.692, (f:fpu) ft5  <-- 62.82
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 937.2586950
                                                #; (f:fpu) ft6  <-- 37.692
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 62.82, ft4  = 937.2586950
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 59.679, ft2  = 59.679, (f:fpu) ft5  <-- 3.141
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 59.679
                                                #; (f:fpu) ft4  <-- 3305.0701350
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 3.141, ft4  = 3305.0701350
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 18.846, ft2  = 18.846, (f:fpu) ft5  <-- 6.282
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 18.846
                                                #; (f:fpu) ft4  <-- 3492.5218740
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 6.282, ft4  = 3492.5218740
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 40.833, ft2  = 40.833, (f:fpu) ft5  <-- 9.423
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 40.833
                                                #; (f:fpu) ft4  <-- 3610.9124460
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 9.423, ft4  = 3610.9124460
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 62.82, ft2  = 62.82, (f:fpu) ft5  <-- 12.564
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 62.82
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                                                #; (f:fpu) ft4  <-- 3995.6818050
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 12.564, ft4  = 3995.6818050
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 5, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 4784.9522850
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 4784.9522850, ft4  = 4784.9522850
; matmul (matmul.c:0)
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4784.9522850
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 59.679, ft1  = 59.679, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 18.846, ft2  = 18.846, (f:fpu) ft5  <-- 59.679
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 18.846
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 59.679, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 62.82, ft1  = 62.82
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 40.833, ft2  = 40.833, (f:fpu) ft5  <-- 62.82
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 1124.7104340
                                                #; (f:fpu) ft6  <-- 40.833
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 62.82, ft4  = 1124.7104340
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 62.82, ft2  = 62.82, (f:fpu) ft5  <-- 3.141
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 62.82
                                                #; (f:fpu) ft4  <-- 3689.8394940
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 3.141, ft4  = 3689.8394940
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 21.9870000, ft2  = 21.9870000, (f:fpu) ft5  <-- 6.282
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 21.9870000
                                                #; (f:fpu) ft4  <-- 3887.1571140
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 6.282, ft4  = 3887.1571140
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 43.9740000, ft2  = 43.9740000, (f:fpu) ft5  <-- 9.423
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 43.9740000
                                                #; (f:fpu) ft4  <-- 4025.2794480
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 9.423, ft4  = 4025.2794480
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 12.564
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 3.141
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                                                #; (f:fpu) ft4  <-- 4439.6464500
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 12.564, ft4  = 4439.6464500
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 6, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 4479.1099740
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 4479.1099740, ft4  = 4479.1099740
; matmul (matmul.c:0)
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4479.1099740
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 59.679, ft1  = 59.679, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 21.9870000, ft2  = 21.9870000, (f:fpu) ft5  <-- 59.679
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 21.9870000
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 59.679, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 62.82, ft1  = 62.82
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 43.9740000, ft2  = 43.9740000, (f:fpu) ft5  <-- 62.82
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 1312.1621730
                                                #; (f:fpu) ft6  <-- 43.9740000
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 62.82, ft4  = 1312.1621730
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 3.141
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 3.141
                                                #; (f:fpu) ft4  <-- 4074.6088530
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 3.141, ft4  = 4074.6088530
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 25.128, ft2  = 25.128, (f:fpu) ft5  <-- 6.282
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 25.128
                                                #; (f:fpu) ft4  <-- 4084.4747340
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 6.282, ft4  = 4084.4747340
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 47.115, ft2  = 47.115, (f:fpu) ft5  <-- 9.423
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 47.115
                                                #; (f:fpu) ft4  <-- 4242.3288300
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 9.423, ft4  = 4242.3288300
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 12.564
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 6.282
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                                                #; (f:fpu) ft4  <-- 4686.2934750
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 12.564, ft4  = 4686.2934750
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 7, a5  = 7, not taken
; matmul (matmul.c:6)
      0x800011c4 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x800011c8 bne     a0, s6, pc - 48        #; a0  = 4, s6  = 5, taken, goto 0x80001198
                                                #; (f:fpu) ft4  <-- 4765.2205230
; matmul (matmul.c:0)
      0x80001198 li      a1, 0                  #; (wrb) a1  <-- 0
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 4765.2205230, ft4  = 4765.2205230
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft0  <-- 4765.2205230
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 15.705
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 3.141
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 15.705, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 25.128, ft2  = 25.128, (f:fpu) ft5  <-- 18.846
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 49.3294050
                                                #; (f:fpu) ft6  <-- 25.128
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 18.846, ft4  = 49.3294050
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 47.115, ft2  = 47.115, (f:fpu) ft5  <-- 21.9870000
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 47.115
                                                #; (f:fpu) ft4  <-- 522.8916930
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 21.9870000, ft4  = 522.8916930
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 25.128, ft1  = 25.128
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 25.128
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 6.282
                                                #; (f:fpu) ft4  <-- 1558.8091980
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 25.128, ft4  = 1558.8091980
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 28.269, ft2  = 28.269, (f:fpu) ft5  <-- 28.269
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 28.269
                                                #; (f:fpu) ft4  <-- 1716.6632940
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 28.269, ft4  = 1716.6632940
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 50.256, ft2  = 50.256, (f:fpu) ft5  <-- 31.41
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 50.256
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
                                                #; (f:fpu) ft4  <-- 2515.7996550
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 31.41, ft4  = 2515.7996550
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 1, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 4094.3406150
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 4094.3406150, ft4  = 4094.3406150
; matmul (matmul.c:0)
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4094.3406150
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 15.705
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 6.282
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 15.705, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 28.269, ft2  = 28.269, (f:fpu) ft5  <-- 18.846
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 98.65881
                                                #; (f:fpu) ft6  <-- 28.269
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 28.269, ft5  = 18.846, ft4  = 98.65881
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 50.256, ft2  = 50.256, (f:fpu) ft5  <-- 21.9870000
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 50.256
                                                #; (f:fpu) ft4  <-- 631.4163840
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 50.256, ft5  = 21.9870000, ft4  = 631.4163840
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 25.128, ft1  = 25.128
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 9.423, ft2  = 9.423, (f:fpu) ft5  <-- 25.128
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 9.423
                                                #; (f:fpu) ft4  <-- 1736.3950560
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 25.128, ft4  = 1736.3950560
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 31.41, ft2  = 31.41, (f:fpu) ft5  <-- 28.269
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 31.41
                                                #; (f:fpu) ft4  <-- 1973.1762000
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 28.269, ft4  = 1973.1762000
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 53.397, ft2  = 53.397, (f:fpu) ft5  <-- 31.41
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 53.397
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                                                #; (f:fpu) ft4  <-- 2861.1054900
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 31.41, ft4  = 2861.1054900
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 2, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 4538.3052600
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 4538.3052600, ft4  = 4538.3052600
; matmul (matmul.c:0)
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4538.3052600
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 9.423, ft2  = 9.423, (f:fpu) ft5  <-- 15.705
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 9.423
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 9.423, ft5  = 15.705, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 31.41, ft2  = 31.41, (f:fpu) ft5  <-- 18.846
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 147.9882150
                                                #; (f:fpu) ft6  <-- 31.41
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 31.41, ft5  = 18.846, ft4  = 147.9882150
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 53.397, ft2  = 53.397, (f:fpu) ft5  <-- 21.9870000
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 53.397
                                                #; (f:fpu) ft4  <-- 739.9410750
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 53.397, ft5  = 21.9870000, ft4  = 739.9410750
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 25.128, ft1  = 25.128
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 12.564, ft2  = 12.564, (f:fpu) ft5  <-- 25.128
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 12.564
                                                #; (f:fpu) ft4  <-- 1913.9809140
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 25.128, ft4  = 1913.9809140
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 34.551, ft2  = 34.551, (f:fpu) ft5  <-- 28.269
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 34.551
                                                #; (f:fpu) ft4  <-- 2229.6891060
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 28.269, ft4  = 2229.6891060
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 56.538, ft2  = 56.538, (f:fpu) ft5  <-- 31.41
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 56.538
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                                                #; (f:fpu) ft4  <-- 3206.4113250
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 31.41, ft4  = 3206.4113250
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 3, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 4982.2699050
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 4982.2699050, ft4  = 4982.2699050
; matmul (matmul.c:0)
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4982.2699050
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 12.564, ft2  = 12.564, (f:fpu) ft5  <-- 15.705
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 12.564
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 12.564, ft5  = 15.705, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 34.551, ft2  = 34.551, (f:fpu) ft5  <-- 18.846
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 197.3176200
                                                #; (f:fpu) ft6  <-- 34.551
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 34.551, ft5  = 18.846, ft4  = 197.3176200
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 56.538, ft2  = 56.538, (f:fpu) ft5  <-- 21.9870000
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 56.538
                                                #; (f:fpu) ft4  <-- 848.4657660
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 56.538, ft5  = 21.9870000, ft4  = 848.4657660
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 25.128, ft1  = 25.128
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 15.705, ft2  = 15.705, (f:fpu) ft5  <-- 25.128
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 15.705
                                                #; (f:fpu) ft4  <-- 2091.5667720
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 25.128, ft4  = 2091.5667720
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 37.692, ft2  = 37.692, (f:fpu) ft5  <-- 28.269
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 37.692
                                                #; (f:fpu) ft4  <-- 2486.2020120
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 28.269, ft4  = 2486.2020120
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 59.679, ft2  = 59.679, (f:fpu) ft5  <-- 31.41
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 59.679
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                                                #; (f:fpu) ft4  <-- 3551.7171600
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 31.41, ft4  = 3551.7171600
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 4, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 5426.2345500
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 5426.2345500, ft4  = 5426.2345500
; matmul (matmul.c:0)
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5426.2345500
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 15.705, ft2  = 15.705, (f:fpu) ft5  <-- 15.705
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 15.705
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 15.705, ft5  = 15.705, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 37.692, ft2  = 37.692, (f:fpu) ft5  <-- 18.846
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 246.6470250
                                                #; (f:fpu) ft6  <-- 37.692
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 37.692, ft5  = 18.846, ft4  = 246.6470250
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 59.679, ft2  = 59.679, (f:fpu) ft5  <-- 21.9870000
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 59.679
                                                #; (f:fpu) ft4  <-- 956.9904570
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 59.679, ft5  = 21.9870000, ft4  = 956.9904570
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 25.128, ft1  = 25.128
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 18.846, ft2  = 18.846, (f:fpu) ft5  <-- 25.128
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 18.846
                                                #; (f:fpu) ft4  <-- 2269.1526300
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 25.128, ft4  = 2269.1526300
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 40.833, ft2  = 40.833, (f:fpu) ft5  <-- 28.269
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 40.833
                                                #; (f:fpu) ft4  <-- 2742.7149180
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 28.269, ft4  = 2742.7149180
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 62.82, ft2  = 62.82, (f:fpu) ft5  <-- 31.41
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 62.82
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                                                #; (f:fpu) ft4  <-- 3897.0229950
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 31.41, ft4  = 3897.0229950
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 5, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 5870.1991950
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 5870.1991950, ft4  = 5870.1991950
; matmul (matmul.c:0)
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5870.1991950
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 18.846, ft2  = 18.846, (f:fpu) ft5  <-- 15.705
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 18.846
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 18.846, ft5  = 15.705, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 40.833, ft2  = 40.833, (f:fpu) ft5  <-- 18.846
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 295.9764300
                                                #; (f:fpu) ft6  <-- 40.833
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 40.833, ft5  = 18.846, ft4  = 295.9764300
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 62.82, ft2  = 62.82, (f:fpu) ft5  <-- 21.9870000
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 62.82
                                                #; (f:fpu) ft4  <-- 1065.5151480
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 62.82, ft5  = 21.9870000, ft4  = 1065.5151480
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 25.128, ft1  = 25.128
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 21.9870000, ft2  = 21.9870000, (f:fpu) ft5  <-- 25.128
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 21.9870000
                                                #; (f:fpu) ft4  <-- 2446.7384880
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 25.128, ft4  = 2446.7384880
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 43.9740000, ft2  = 43.9740000, (f:fpu) ft5  <-- 28.269
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 43.9740000
                                                #; (f:fpu) ft4  <-- 2999.2278240
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 28.269, ft4  = 2999.2278240
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 31.41
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 3.141
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                                                #; (f:fpu) ft4  <-- 4242.3288300
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 31.41, ft4  = 4242.3288300
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 6, a5  = 7, taken, goto 0x8000119c
; matmul (matmul.c:0)
      0x8000119c mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 4340.9876400
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 4340.9876400, ft4  = 4340.9876400
; matmul (matmul.c:0)
      0x800011a0 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4340.9876400
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705, (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 21.9870000, ft2  = 21.9870000, (f:fpu) ft5  <-- 15.705
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 5, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 21.9870000
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 21.9870000, ft5  = 15.705, ft4  = 0.0
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 43.9740000, ft2  = 43.9740000, (f:fpu) ft5  <-- 18.846
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 4, taken, goto 0x800011a4
                                                #; (f:fpu) ft4  <-- 345.3058350
                                                #; (f:fpu) ft6  <-- 43.9740000
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 43.9740000, ft5  = 18.846, ft4  = 345.3058350
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 3.141, ft2  = 3.141, (f:fpu) ft5  <-- 21.9870000
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 3, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 3.141
                                                #; (f:fpu) ft4  <-- 1174.0398390
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 3.141, ft5  = 21.9870000, ft4  = 1174.0398390
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 25.128, ft1  = 25.128
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 25.128, ft2  = 25.128, (f:fpu) ft5  <-- 25.128
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 2, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 25.128
                                                #; (f:fpu) ft4  <-- 1243.1010060
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 25.128, ft5  = 25.128, ft4  = 1243.1010060
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 47.115, ft2  = 47.115, (f:fpu) ft5  <-- 28.269
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800011a4
                                                #; (f:fpu) ft6  <-- 47.115
                                                #; (f:fpu) ft4  <-- 1874.5173900
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 47.115, ft5  = 28.269, ft4  = 1874.5173900
; matmul (matmul.c:9)
      0x800011ac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x800011a4 fsgnj.d ft5, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
; matmul (matmul.c:10)
      0x800011a8 fsgnj.d ft6, ft2, ft2          #; ft2  = 6.282, ft2  = 6.282, (f:fpu) ft5  <-- 31.41
; matmul (matmul.c:9)
      0x800011b4 bnez    a2, pc - 16            #; a2  = 0, not taken
                                                #; (f:fpu) ft6  <-- 6.282
; matmul (matmul.c:7)
      0x800011b8 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                                                #; (f:fpu) ft4  <-- 3206.4113250
; matmul (matmul.c:10)
      0x800011b0 fmadd.d ft4, ft6, ft5, ft4     #; ft6  = 6.282, ft5  = 31.41, ft4  = 3206.4113250
; matmul (matmul.c:7)
      0x800011c0 bne     a1, a5, pc - 36        #; a1  = 7, a5  = 7, not taken
; matmul (matmul.c:6)
      0x800011c4 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x800011c8 bne     a0, s6, pc - 48        #; a0  = 5, s6  = 5, not taken
                                                #; (f:fpu) ft4  <-- 3403.7289450
; matmul (matmul.c:12)
      0x800011bc fsgnj.d ft0, ft4, ft4          #; ft4  = 3403.7289450, ft4  = 3403.7289450
; matmul (matmul.c:0)
      0x800011cc csrci   ssr, 1                 #; (f:fpu) ft0  <-- 3403.7289450
      0x800011d0 j       pc + 0xe0              #; goto 0x800012b0
; matmul (matmul.c:15)
      0x800012b0 lw      s7, 12(sp)             #; sp  = 0x0011fe70, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x800012b4 lw      s6, 16(sp)             #; sp  = 0x0011fe70, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0x001000f0
      0x800012b8 lw      s5, 20(sp)             #; sp  = 0x0011fe70, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- 0
      0x800012bc lw      s4, 24(sp)             #; sp  = 0x0011fe70, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0
      0x800012c0 lw      s3, 28(sp)             #; sp  = 0x0011fe70, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 6
      0x800012c4 lw      s2, 32(sp)             #; sp  = 0x0011fe70, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x00100000
      0x800012c8 lw      s1, 36(sp)             #; sp  = 0x0011fe70, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 0
      0x800012cc lw      s0, 40(sp)             #; sp  = 0x0011fe70, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0x00100240
      0x800012d0 lw      ra, 44(sp)             #; sp  = 0x0011fe70, ra  <~~ Word[0x0011fe9c]
      0x800012d4 addi    sp, sp, 48             #; sp  = 0x0011fe70, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80000900
      0x800012d8 ret                            #; ra  = 0x80000900, goto 0x80000900
; main (test_mat.c:31)
      0x80000900 li      a3, 5                  #; (wrb) a3  <-- 5
      0x80000904 li      a4, 6                  #; (wrb) a4  <-- 6
      0x80000908 mv      a0, s0                 #; s0  = 0x00100240, (wrb) a0  <-- 0x00100240
      0x8000090c mv      a1, s2                 #; s2  = 0x00100000, (wrb) a1  <-- 0x00100000
      0x80000910 mv      a2, s6                 #; s6  = 0x001000f0, (wrb) a2  <-- 0x001000f0
      0x80000914 li      a5, 0                  #; (wrb) a5  <-- 0
      0x80000918 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000918
      0x8000091c jalr    ra, ra, 1580           #; ra  = 0x80000918, (wrb) ra  <-- 0x80000920, goto 0x80000f44
; matmul (matmul.c:5)
      0x80000f44 addi    sp, sp, -48            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe70
      0x80000f48 sw      ra, 44(sp)             #; sp  = 0x0011fe70, 0x80000920 ~~> Word[0x0011fe9c]
      0x80000f4c sw      s0, 40(sp)             #; sp  = 0x0011fe70, 0x00100240 ~~> Word[0x0011fe98]
      0x80000f50 sw      s1, 36(sp)             #; sp  = 0x0011fe70, 0 ~~> Word[0x0011fe94]
      0x80000f54 sw      s2, 32(sp)             #; sp  = 0x0011fe70, 0x00100000 ~~> Word[0x0011fe90]
      0x80000f58 sw      s3, 28(sp)             #; sp  = 0x0011fe70, 6 ~~> Word[0x0011fe8c]
      0x80000f5c sw      s4, 24(sp)             #; sp  = 0x0011fe70, 0 ~~> Word[0x0011fe88]
      0x80000f60 sw      s5, 20(sp)             #; sp  = 0x0011fe70, 0 ~~> Word[0x0011fe84]
      0x80000f64 sw      s6, 16(sp)             #; sp  = 0x0011fe70, 0x001000f0 ~~> Word[0x0011fe80]
      0x80000f68 sw      s7, 12(sp)             #; sp  = 0x0011fe70, 0 ~~> Word[0x0011fe7c]
      0x80000f6c mv      s6, a3                 #; a3  = 5, (wrb) s6  <-- 5
; matmul (matmul.c:6)
      0x80000f70 slti    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 0
      0x80000f74 slti    s1, a5, 1              #; a5  = 0, (wrb) s1  <-- 1
      0x80000f78 or      a3, a3, s1             #; a3  = 0, s1  = 1, (wrb) a3  <-- 1
      0x80000f7c bnez    a3, pc + 820           #; a3  = 1, taken, goto 0x800012b0
; matmul (matmul.c:15)
      0x800012b0 lw      s7, 12(sp)             #; sp  = 0x0011fe70, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x800012b4 lw      s6, 16(sp)             #; sp  = 0x0011fe70, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0x001000f0
      0x800012b8 lw      s5, 20(sp)             #; sp  = 0x0011fe70, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- 0
      0x800012bc lw      s4, 24(sp)             #; sp  = 0x0011fe70, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0
      0x800012c0 lw      s3, 28(sp)             #; sp  = 0x0011fe70, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 6
      0x800012c4 lw      s2, 32(sp)             #; sp  = 0x0011fe70, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x00100000
      0x800012c8 lw      s1, 36(sp)             #; sp  = 0x0011fe70, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 0
      0x800012cc lw      s0, 40(sp)             #; sp  = 0x0011fe70, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0x00100240
      0x800012d0 lw      ra, 44(sp)             #; sp  = 0x0011fe70, ra  <~~ Word[0x0011fe9c]
      0x800012d4 addi    sp, sp, 48             #; sp  = 0x0011fe70, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80000920
      0x800012d8 ret                            #; ra  = 0x80000920, goto 0x80000920
; summat (summat.c:5)
;  in main (test_mat.c:35)
      0x80000920 srli    a0, s0, 20             #; s0  = 0x00100240, (wrb) a0  <-- 1
      0x80000924 snez    a0, a0                 #; a0  = 1, (wrb) a0  <-- 1
      0x80000928 lui     a1, 0x120              #; (wrb) a1  <-- 0x00120000
      0x8000092c addi    a1, a1, -271           #; a1  = 0x00120000, (wrb) a1  <-- 0x0011fef1
      0x80000930 sltu    a1, s0, a1             #; s0  = 0x00100240, a1  = 0x0011fef1, (wrb) a1  <-- 1
      0x80000934 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80000938 beqz    a0, pc + 808           #; a0  = 1, not taken
; summat (summat.c:0)
;  in main (test_mat.c:35)
      0x8000093c li      s4, 8                  #; (wrb) s4  <-- 8
; summat (summat.c:5)
;  in main (test_mat.c:35)
      0x80000940 li      a0, 64                 #; (wrb) a0  <-- 64
      0x80000944 li      a1, 192                #; (wrb) a1  <-- 192
      0x80000948 scfgw   s3, a0                 #; s3  = 6, a0  = 64
      0x8000094c scfgw   s4, a1                 #; s4  = 8, a1  = 192
      0x80000950 li      s5, 4                  #; (wrb) s5  <-- 4
      0x80000954 li      a0, 96                 #; (wrb) a0  <-- 96
      0x80000958 li      a1, 224                #; (wrb) a1  <-- 224
      0x8000095c scfgw   s5, a0                 #; s5  = 4, a0  = 96
      0x80000960 scfgw   s4, a1                 #; s4  = 8, a1  = 224
      0x80000964 li      a0, 32                 #; (wrb) a0  <-- 32
      0x80000968 scfgw   zero, a0               #; a0  = 32
      0x8000096c scfgwi  s0, 800                #; s0  = 0x00100240
      0x80000970 csrsi   ssr, 1                 #; 
; summat (summat.c:7)
;  in main (test_mat.c:35)
      0x80000974 fsgnj.d ft3, ft0, ft0          #; ft0  = 2081.7008910, ft0  = 2081.7008910
                                                #; (f:fpu) ft3  <-- 2081.7008910
      0x80000978 fsd     ft3, 48(sp)            #; 2081.7008910 ~~> Doub[0x0011fed0]
      0x8000097c fsgnj.d ft3, ft0, ft0          #; ft0  = 2288.8843920, ft0  = 2288.8843920
                                                #; (f:fpu) ft3  <-- 2288.8843920
      0x80000980 fsd     ft3, 40(sp)            #; 2288.8843920 ~~> Doub[0x0011fec8]
      0x80000984 fsgnj.d ft3, ft0, ft0          #; ft0  = 2496.0678930, ft0  = 2496.0678930
                                                #; (f:fpu) ft3  <-- 2496.0678930
      0x80000988 fsd     ft3, 32(sp)            #; 2496.0678930 ~~> Doub[0x0011fec0]
      0x8000098c fsgnj.d ft3, ft0, ft0          #; ft0  = 2703.2513940, ft0  = 2703.2513940
                                                #; (f:fpu) ft3  <-- 2703.2513940
      0x80000990 fsd     ft3, 24(sp)            #; 2703.2513940 ~~> Doub[0x0011feb8]
      0x80000994 fsgnj.d ft3, ft0, ft0          #; ft0  = 2910.4348950, ft0  = 2910.4348950
                                                #; (f:fpu) ft3  <-- 2910.4348950
      0x80000998 fsd     ft3, 16(sp)            #; 2910.4348950 ~~> Doub[0x0011feb0]
      0x8000099c fsgnj.d ft3, ft0, ft0          #; ft0  = 1933.7126760, ft0  = 1933.7126760
                                                #; (f:fpu) ft3  <-- 1933.7126760
      0x800009a0 fsd     ft3, 8(sp)             #; 1933.7126760 ~~> Doub[0x0011fea8]
      0x800009a4 fsgnj.d fa1, ft0, ft0          #; ft0  = 1548.9433170, ft0  = 1548.9433170
      0x800009a8 fsgnj.d fa2, ft0, ft0          #; ft0  = 5100.6604770, ft0  = 5100.6604770, (f:fpu) fa1  <-- 1548.9433170
      0x800009ac fsgnj.d fa3, ft0, ft0          #; ft0  = 5663.0156940, ft0  = 5663.0156940, (f:fpu) fa2  <-- 5100.6604770
                                                #; (f:fpu) fa3  <-- 5663.0156940
      0x800009b0 fsgnj.d fa4, ft0, ft0          #; ft0  = 6225.3709110, ft0  = 6225.3709110
      0x800009b4 fsgnj.d fa5, ft0, ft0          #; ft0  = 6787.7261280, ft0  = 6787.7261280, (f:fpu) fa4  <-- 6225.3709110
      0x800009b8 fsgnj.d fa6, ft0, ft0          #; ft0  = 7350.0813450, ft0  = 7350.0813450, (f:fpu) fa5  <-- 6787.7261280
      0x800009bc fsgnj.d fa7, ft0, ft0          #; ft0  = 5544.6251220, ft0  = 5544.6251220, (f:fpu) fa6  <-- 7350.0813450
                                                #; (f:fpu) fa7  <-- 5544.6251220
      0x800009c0 fsgnj.d ft8, ft0, ft0          #; ft0  = 4331.1217590, ft0  = 4331.1217590
      0x800009c4 fsgnj.d ft9, ft0, ft0          #; ft0  = 8119.6200630, ft0  = 8119.6200630, (f:fpu) ft8  <-- 4331.1217590
      0x800009c8 fsgnj.d ft10, ft0, ft0         #; ft0  = 9037.1469960, ft0  = 9037.1469960, (f:fpu) ft9  <-- 8119.6200630
      0x800009cc fsgnj.d ft11, ft0, ft0         #; ft0  = 9954.6739290, ft0  = 9954.6739290, (f:fpu) ft10 <-- 9037.1469960
                                                #; (f:fpu) ft11 <-- 9954.6739290
      0x800009d0 fsgnj.d fs0, ft0, ft0          #; ft0  = 10872.2008620, ft0  = 10872.2008620
      0x800009d4 fsgnj.d fs1, ft0, ft0          #; ft0  = 11789.7277950, ft0  = 11789.7277950, (f:fpu) fs0  <-- 10872.2008620
      0x800009d8 fsgnj.d fs2, ft0, ft0          #; ft0  = 9155.5375680, ft0  = 9155.5375680, (f:fpu) fs1  <-- 11789.7277950
      0x800009dc fsgnj.d fs3, ft0, ft0          #; ft0  = 7113.3002010, ft0  = 7113.3002010, (f:fpu) fs2  <-- 9155.5375680
                                                #; (f:fpu) fs3  <-- 7113.3002010
      0x800009e0 fsgnj.d fs4, ft0, ft0          #; ft0  = 2851.2396090, ft0  = 2851.2396090
      0x800009e4 fsgnj.d fs5, ft0, ft0          #; ft0  = 3334.6677780, ft0  = 3334.6677780, (f:fpu) fs4  <-- 2851.2396090
      0x800009e8 fsgnj.d fs6, ft0, ft0          #; ft0  = 3818.0959470, ft0  = 3818.0959470, (f:fpu) fs5  <-- 3334.6677780
      0x800009ec fsgnj.d fs7, ft0, ft0          #; ft0  = 4301.5241160, ft0  = 4301.5241160, (f:fpu) fs6  <-- 3818.0959470
                                                #; (f:fpu) fs7  <-- 4301.5241160
      0x800009f0 fsgnj.d fs8, ft0, ft0          #; ft0  = 4784.9522850, ft0  = 4784.9522850
      0x800009f4 fsgnj.d fs9, ft0, ft0          #; ft0  = 4479.1099740, ft0  = 4479.1099740, (f:fpu) fs8  <-- 4784.9522850
      0x800009f8 fsgnj.d fs10, ft0, ft0         #; ft0  = 4765.2205230, ft0  = 4765.2205230, (f:fpu) fs9  <-- 4479.1099740
      0x800009fc fsgnj.d fs11, ft0, ft0         #; ft0  = 4094.3406150, ft0  = 4094.3406150, (f:fpu) fs10 <-- 4765.2205230
                                                #; (f:fpu) fs11 <-- 4094.3406150
      0x80000a00 fsgnj.d fa0, ft0, ft0          #; ft0  = 4538.3052600, ft0  = 4538.3052600
      0x80000a04 fsgnj.d ft7, ft0, ft0          #; ft0  = 4982.2699050, ft0  = 4982.2699050, (f:fpu) fa0  <-- 4538.3052600
      0x80000a08 fsgnj.d ft6, ft0, ft0          #; ft0  = 5426.2345500, ft0  = 5426.2345500, (f:fpu) ft7  <-- 4982.2699050
      0x80000a0c fsgnj.d ft5, ft0, ft0          #; ft0  = 5870.1991950, ft0  = 5870.1991950, (f:fpu) ft6  <-- 5426.2345500
                                                #; (f:fpu) ft5  <-- 5870.1991950
      0x80000a10 fsgnj.d ft4, ft0, ft0          #; ft0  = 4340.9876400, ft0  = 4340.9876400
      0x80000a14 fsgnj.d ft3, ft0, ft0          #; ft0  = 3403.7289450, ft0  = 3403.7289450, (f:fpu) ft4  <-- 4340.9876400
      0x80000a18 csrci   ssr, 1                 #; (f:fpu) ft3  <-- 3403.7289450
      0x80000a1c fld     ft0, 48(sp)            #; ft0  <~~ Doub[0x0011fed0]
                                                #; (f:lsu) ft0  <-- 2081.7008910
      0x80000a20 fld     ft1, 40(sp)            #; ft1  <~~ Doub[0x0011fec8]
                                                #; (f:lsu) ft1  <-- 2288.8843920
      0x80000a24 fadd.d  ft0, ft1, ft0          #; ft1  = 2288.8843920, ft0  = 2081.7008910
      0x80000a28 fld     ft1, 32(sp)            #; ft1  <~~ Doub[0x0011fec0]
                                                #; (f:lsu) ft1  <-- 2496.0678930
                                                #; (f:fpu) ft0  <-- 4370.5852830
      0x80000a2c fadd.d  ft0, ft1, ft0          #; ft1  = 2496.0678930, ft0  = 4370.5852830
                                                #; (f:fpu) ft0  <-- 6866.6531760
      0x80000a30 fld     ft1, 24(sp)            #; ft1  <~~ Doub[0x0011feb8]
                                                #; (f:lsu) ft1  <-- 2703.2513940
      0x80000a34 fadd.d  ft0, ft1, ft0          #; ft1  = 2703.2513940, ft0  = 6866.6531760
      0x80000a38 fld     ft1, 16(sp)            #; ft1  <~~ Doub[0x0011feb0]
                                                #; (f:lsu) ft1  <-- 2910.4348950
                                                #; (f:fpu) ft0  <-- 9569.9045700
      0x80000a3c fadd.d  ft0, ft1, ft0          #; ft1  = 2910.4348950, ft0  = 9569.9045700
                                                #; (f:fpu) ft0  <-- 12480.3394650
      0x80000a40 fld     ft1, 8(sp)             #; ft1  <~~ Doub[0x0011fea8]
                                                #; (f:lsu) ft1  <-- 1933.7126760
      0x80000a44 fadd.d  ft0, ft1, ft0          #; ft1  = 1933.7126760, ft0  = 12480.3394650
                                                #; (f:fpu) ft0  <-- 14414.0521410
      0x80000a48 fadd.d  ft0, fa1, ft0          #; fa1  = 1548.9433170, ft0  = 14414.0521410
                                                #; (f:fpu) ft0  <-- 15962.9954580
      0x80000a4c fadd.d  ft0, fa2, ft0          #; fa2  = 5100.6604770, ft0  = 15962.9954580
                                                #; (f:fpu) ft0  <-- 21063.6559350
      0x80000a50 fadd.d  ft0, fa3, ft0          #; fa3  = 5663.0156940, ft0  = 21063.6559350
                                                #; (f:fpu) ft0  <-- 26726.6716290
      0x80000a54 fadd.d  ft0, fa4, ft0          #; fa4  = 6225.3709110, ft0  = 26726.6716290
                                                #; (f:fpu) ft0  <-- 32952.0425400
      0x80000a58 fadd.d  ft0, fa5, ft0          #; fa5  = 6787.7261280, ft0  = 32952.0425400
                                                #; (f:fpu) ft0  <-- 39739.7686680
      0x80000a5c fadd.d  ft0, fa6, ft0          #; fa6  = 7350.0813450, ft0  = 39739.7686680
                                                #; (f:fpu) ft0  <-- 47089.8500130
      0x80000a60 fadd.d  ft0, fa7, ft0          #; fa7  = 5544.6251220, ft0  = 47089.8500130
                                                #; (f:fpu) ft0  <-- 52634.4751350
      0x80000a64 fadd.d  ft0, ft8, ft0          #; ft8  = 4331.1217590, ft0  = 52634.4751350
                                                #; (f:fpu) ft0  <-- 56965.5968940
      0x80000a68 fadd.d  ft0, ft9, ft0          #; ft9  = 8119.6200630, ft0  = 56965.5968940
                                                #; (f:fpu) ft0  <-- 65085.2169570
      0x80000a6c fadd.d  ft0, ft10, ft0         #; ft10 = 9037.1469960, ft0  = 65085.2169570
                                                #; (f:fpu) ft0  <-- 74122.3639530
      0x80000a70 fadd.d  ft0, ft11, ft0         #; ft11 = 9954.6739290, ft0  = 74122.3639530
                                                #; (f:fpu) ft0  <-- 84077.0378820
      0x80000a74 fadd.d  ft0, fs0, ft0          #; fs0  = 10872.2008620, ft0  = 84077.0378820
                                                #; (f:fpu) ft0  <-- 94949.2387440
      0x80000a78 fadd.d  ft0, fs1, ft0          #; fs1  = 11789.7277950, ft0  = 94949.2387440
                                                #; (f:fpu) ft0  <-- 106738.9665390
      0x80000a7c fadd.d  ft0, fs2, ft0          #; fs2  = 9155.5375680, ft0  = 106738.9665390
                                                #; (f:fpu) ft0  <-- 115894.5041070
      0x80000a80 fadd.d  ft0, fs3, ft0          #; fs3  = 7113.3002010, ft0  = 115894.5041070
                                                #; (f:fpu) ft0  <-- 123007.8043080
      0x80000a84 fadd.d  ft0, fs4, ft0          #; fs4  = 2851.2396090, ft0  = 123007.8043080
                                                #; (f:fpu) ft0  <-- 125859.0439170
      0x80000a88 fadd.d  ft0, fs5, ft0          #; fs5  = 3334.6677780, ft0  = 125859.0439170
                                                #; (f:fpu) ft0  <-- 129193.7116950
      0x80000a8c fadd.d  ft0, fs6, ft0          #; fs6  = 3818.0959470, ft0  = 129193.7116950
                                                #; (f:fpu) ft0  <-- 133011.8076420
      0x80000a90 fadd.d  ft0, fs7, ft0          #; fs7  = 4301.5241160, ft0  = 133011.8076420
                                                #; (f:fpu) ft0  <-- 137313.3317580
      0x80000a94 fadd.d  ft0, fs8, ft0          #; fs8  = 4784.9522850, ft0  = 137313.3317580
                                                #; (f:fpu) ft0  <-- 142098.2840430
      0x80000a98 fadd.d  ft0, fs9, ft0          #; fs9  = 4479.1099740, ft0  = 142098.2840430
                                                #; (f:fpu) ft0  <-- 146577.3940170
      0x80000a9c fadd.d  ft0, fs10, ft0         #; fs10 = 4765.2205230, ft0  = 146577.3940170
                                                #; (f:fpu) ft0  <-- 151342.6145400
; main (test_mat.c:37)
      0x80000ac0 li      a3, 5                  #; (wrb) a3  <-- 5
      0x80000aa0 fadd.d  ft0, fs11, ft0         #; fs11 = 4094.3406150, ft0  = 151342.6145400
      0x80000ac4 li      a5, 7                  #; (wrb) a5  <-- 7
      0x80000ac8 mv      a0, s0                 #; s0  = 0x00100240, (wrb) a0  <-- 0x00100240
      0x80000acc mv      a1, s2                 #; s2  = 0x00100000, (wrb) a1  <-- 0x00100000
                                                #; (f:fpu) ft0  <-- 155436.9551550
; summat (summat.c:7)
;  in main (test_mat.c:35)
      0x80000aa4 fadd.d  ft0, fa0, ft0          #; fa0  = 4538.3052600, ft0  = 155436.9551550
                                                #; (f:fpu) ft0  <-- 159975.2604150
      0x80000aa8 fadd.d  ft0, ft7, ft0          #; ft7  = 4982.2699050, ft0  = 159975.2604150
                                                #; (f:fpu) ft0  <-- 164957.5303200
; main (test_mat.c:37)
      0x80000ad0 mv      a2, s6                 #; s6  = 0x001000f0, (wrb) a2  <-- 0x001000f0
      0x80000aac fadd.d  ft0, ft6, ft0          #; ft6  = 5426.2345500, ft0  = 164957.5303200
      0x80000ad4 li      a4, 0                  #; (wrb) a4  <-- 0
      0x80000ad8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000ad8
      0x80000adc jalr    ra, ra, 1132           #; ra  = 0x80000ad8, (wrb) ra  <-- 0x80000ae0, goto 0x80000f44
                                                #; (f:fpu) ft0  <-- 170383.7648700
; summat (summat.c:7)
;  in main (test_mat.c:35)
      0x80000ab0 fadd.d  ft0, ft5, ft0          #; ft5  = 5870.1991950, ft0  = 170383.7648700
                                                #; (f:fpu) ft0  <-- 176253.9640650
      0x80000ab4 fadd.d  ft0, ft4, ft0          #; ft4  = 4340.9876400, ft0  = 176253.9640650
                                                #; (f:fpu) ft0  <-- 180594.9517050
      0x80000ab8 fadd.d  ft0, ft3, ft0          #; ft3  = 3403.7289450, ft0  = 180594.9517050
; matmul (matmul.c:5)
      0x80000f44 addi    sp, sp, -48            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe70
      0x80000f48 sw      ra, 44(sp)             #; sp  = 0x0011fe70, 0x80000ae0 ~~> Word[0x0011fe9c]
                                                #; (f:fpu) ft0  <-- 183998.6806500
      0x80000f4c sw      s0, 40(sp)             #; sp  = 0x0011fe70, 0x00100240 ~~> Word[0x0011fe98]
      0x80000abc fsd     ft0, 48(sp)            #; 183998.6806500 ~~> Doub[0x0011fed0]
      0x80000f50 sw      s1, 36(sp)             #; sp  = 0x0011fe70, 0 ~~> Word[0x0011fe94]
      0x80000f54 sw      s2, 32(sp)             #; sp  = 0x0011fe70, 0x00100000 ~~> Word[0x0011fe90]
      0x80000f58 sw      s3, 28(sp)             #; sp  = 0x0011fe70, 6 ~~> Word[0x0011fe8c]
      0x80000f5c sw      s4, 24(sp)             #; sp  = 0x0011fe70, 8 ~~> Word[0x0011fe88]
      0x80000f60 sw      s5, 20(sp)             #; sp  = 0x0011fe70, 4 ~~> Word[0x0011fe84]
      0x80000f64 sw      s6, 16(sp)             #; sp  = 0x0011fe70, 0x001000f0 ~~> Word[0x0011fe80]
      0x80000f68 sw      s7, 12(sp)             #; sp  = 0x0011fe70, 0 ~~> Word[0x0011fe7c]
      0x80000f6c mv      s6, a3                 #; a3  = 5, (wrb) s6  <-- 5
; matmul (matmul.c:6)
      0x80000f70 slti    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 0
      0x80000f74 slti    s1, a5, 1              #; a5  = 7, (wrb) s1  <-- 0
      0x80000f78 or      a3, a3, s1             #; a3  = 0, s1  = 0, (wrb) a3  <-- 0
      0x80000f7c bnez    a3, pc + 820           #; a3  = 0, not taken
; matmul (matmul.c:0)
      0x80000f80 mv      s7, a0                 #; a0  = 0x00100240, (wrb) s7  <-- 0x00100240
; matmul (matmul.c:6)
      0x80000f84 addi    a6, a5, -1             #; a5  = 7, (wrb) a6  <-- 6
      0x80000f88 slli    t4, a6, 3              #; a6  = 6, (wrb) t4  <-- 48
      0x80000f8c addi    t2, s6, -1             #; s6  = 5, (wrb) t2  <-- 4
      0x80000f90 slli    s2, a5, 3              #; a5  = 7, (wrb) s2  <-- 56
      0x80000f94 mul     a0, s2, t2             #; s2  = 56, t2  = 4
                                                #; (acc) a0  <-- 0x00ae8533
      0x80000f98 add     a0, t4, a0             #; t4  = 48, a0  = 224, (wrb) a0  <-- 272
      0x80000f9c add     s4, a0, s7             #; a0  = 272, s7  = 0x00100240, (wrb) s4  <-- 0x00100350
      0x80000fa0 sltu    a3, s4, a0             #; s4  = 0x00100350, a0  = 272, (wrb) a3  <-- 0
; matmul (matmul.c:9)
      0x80000fa4 bge     zero, a4, pc + 80      #; a4  = 0, taken, goto 0x80000ff4
; matmul (matmul.c:6)
      0x80000ff4 srli    a0, s7, 20             #; s7  = 0x00100240, (wrb) a0  <-- 1
      0x80000ff8 snez    a0, a0                 #; a0  = 1, (wrb) a0  <-- 1
      0x80000ffc beqz    a3, pc + 584           #; a3  = 0, taken, goto 0x80001244
; matmul (matmul.c:0)
      0x80001244 lui     a1, 0x120              #; (wrb) a1  <-- 0x00120000
      0x80001248 addi    a1, a1, 1              #; a1  = 0x00120000, (wrb) a1  <-- 0x00120001
      0x8000124c sltu    a1, s4, a1             #; s4  = 0x00100350, a1  = 0x00120001, (wrb) a1  <-- 1
; matmul (matmul.c:6)
      0x80001250 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80001254 beqz    a0, pc - 584           #; a0  = 1, not taken
; matmul (matmul.c:0)
      0x80001258 li      a0, 0                  #; (wrb) a0  <-- 0
      0x8000125c li      a1, 8                  #; (wrb) a1  <-- 8
; matmul (matmul.c:6)
      0x80001260 li      a2, 64                 #; (wrb) a2  <-- 64
      0x80001264 scfgw   a6, a2                 #; a6  = 6, a2  = 64
      0x80001268 li      a2, 192                #; (wrb) a2  <-- 192
      0x8000126c scfgw   a1, a2                 #; a1  = 8, a2  = 192
      0x80001270 li      a2, 96                 #; (wrb) a2  <-- 96
      0x80001274 li      a3, 224                #; (wrb) a3  <-- 224
      0x80001278 scfgw   t2, a2                 #; t2  = 4, a2  = 96
      0x8000127c scfgw   a1, a3                 #; a1  = 8, a3  = 224
      0x80001280 li      a1, 32                 #; (wrb) a1  <-- 32
      0x80001284 scfgw   zero, a1               #; a1  = 32
      0x80001288 scfgwi  s7, 928                #; s7  = 0x00100240
      0x8000128c csrsi   ssr, 1                 #; 
; matmul (matmul.c:0)
      0x80001294 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
      0x80001290 fcvt.d.w ft3, zero             #; ac1  = 0
; matmul (matmul.c:7)
      0x80001298 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
                                                #; (f:fpu) ft3  <-- 0.0
; matmul (matmul.c:12)
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
; matmul (matmul.c:7)
      0x800012a0 bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
      0x800012a0 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800012a0 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800012a0 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800012a0 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800012a0 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800012a0 bnez    a1, pc - 8             #; a1  = 0, not taken
; matmul (matmul.c:6)
      0x800012a4 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800012a8 bne     a0, s6, pc - 20        #; a0  = 1, s6  = 5, taken, goto 0x80001294
                                                #; (f:fpu) ft0  <-- 0.0
; matmul (matmul.c:0)
      0x80001294 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
; matmul (matmul.c:7)
      0x80001298 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
      0x800012a0 bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800012a0 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800012a0 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800012a0 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800012a0 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800012a0 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800012a0 bnez    a1, pc - 8             #; a1  = 0, not taken
; matmul (matmul.c:6)
      0x800012a4 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800012a8 bne     a0, s6, pc - 20        #; a0  = 2, s6  = 5, taken, goto 0x80001294
                                                #; (f:fpu) ft0  <-- 0.0
; matmul (matmul.c:0)
      0x80001294 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
; matmul (matmul.c:7)
      0x80001298 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
      0x800012a0 bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800012a0 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800012a0 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800012a0 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800012a0 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800012a0 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800012a0 bnez    a1, pc - 8             #; a1  = 0, not taken
; matmul (matmul.c:6)
      0x800012a4 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800012a8 bne     a0, s6, pc - 20        #; a0  = 3, s6  = 5, taken, goto 0x80001294
                                                #; (f:fpu) ft0  <-- 0.0
; matmul (matmul.c:0)
      0x80001294 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
; matmul (matmul.c:7)
      0x80001298 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
      0x800012a0 bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800012a0 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800012a0 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800012a0 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800012a0 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800012a0 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800012a0 bnez    a1, pc - 8             #; a1  = 0, not taken
; matmul (matmul.c:6)
      0x800012a4 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800012a8 bne     a0, s6, pc - 20        #; a0  = 4, s6  = 5, taken, goto 0x80001294
                                                #; (f:fpu) ft0  <-- 0.0
; matmul (matmul.c:0)
      0x80001294 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
; matmul (matmul.c:7)
      0x80001298 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
      0x800012a0 bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800012a0 bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800012a0 bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800012a0 bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800012a0 bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800012a0 bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80001298
      0x80001298 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800012a0 bnez    a1, pc - 8             #; a1  = 0, not taken
; matmul (matmul.c:6)
      0x800012a4 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x8000129c fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
      0x800012a8 bne     a0, s6, pc - 20        #; a0  = 5, s6  = 5, not taken
                                                #; (f:fpu) ft0  <-- 0.0
; matmul (matmul.c:0)
      0x800012ac csrci   ssr, 1                 #; 
; matmul (matmul.c:15)
      0x800012b0 lw      s7, 12(sp)             #; sp  = 0x0011fe70, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x800012b4 lw      s6, 16(sp)             #; sp  = 0x0011fe70, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0x001000f0
      0x800012b8 lw      s5, 20(sp)             #; sp  = 0x0011fe70, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- 4
      0x800012bc lw      s4, 24(sp)             #; sp  = 0x0011fe70, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 8
      0x800012c0 lw      s3, 28(sp)             #; sp  = 0x0011fe70, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 6
      0x800012c4 lw      s2, 32(sp)             #; sp  = 0x0011fe70, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x00100000
      0x800012c8 lw      s1, 36(sp)             #; sp  = 0x0011fe70, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 0
      0x800012cc lw      s0, 40(sp)             #; sp  = 0x0011fe70, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0x00100240
      0x800012d0 lw      ra, 44(sp)             #; sp  = 0x0011fe70, ra  <~~ Word[0x0011fe9c]
      0x800012d4 addi    sp, sp, 48             #; sp  = 0x0011fe70, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80000ae0
      0x800012d8 ret                            #; ra  = 0x80000ae0, goto 0x80000ae0
; summat (summat.c:5)
;  in main (test_mat.c:38)
      0x80000ae0 li      a0, 64                 #; (wrb) a0  <-- 64
      0x80000ae4 li      a1, 192                #; (wrb) a1  <-- 192
      0x80000ae8 scfgw   s3, a0                 #; s3  = 6, a0  = 64
      0x80000aec scfgw   s4, a1                 #; s4  = 8, a1  = 192
      0x80000af0 li      a0, 96                 #; (wrb) a0  <-- 96
      0x80000af4 li      a1, 224                #; (wrb) a1  <-- 224
      0x80000af8 scfgw   s5, a0                 #; s5  = 4, a0  = 96
      0x80000afc scfgw   s4, a1                 #; s4  = 8, a1  = 224
      0x80000b00 li      a0, 32                 #; (wrb) a0  <-- 32
      0x80000b04 scfgw   zero, a0               #; a0  = 32
      0x80000b08 scfgwi  s0, 800                #; s0  = 0x00100240
      0x80000b0c csrsi   ssr, 1                 #; 
; summat (summat.c:7)
;  in main (test_mat.c:38)
      0x80000b10 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000b14 fsd     ft3, 40(sp)            #; 0.0 ~~> Doub[0x0011fec8]
      0x80000b18 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000b1c fsd     ft3, 32(sp)            #; 0.0 ~~> Doub[0x0011fec0]
      0x80000b20 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000b24 fsd     ft3, 24(sp)            #; 0.0 ~~> Doub[0x0011feb8]
      0x80000b28 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000b2c fsd     ft3, 16(sp)            #; 0.0 ~~> Doub[0x0011feb0]
      0x80000b30 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000b34 fsd     ft3, 8(sp)             #; 0.0 ~~> Doub[0x0011fea8]
      0x80000b38 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000b3c fsd     ft3, 0(sp)             #; 0.0 ~~> Doub[0x0011fea0]
      0x80000b40 fsgnj.d fa1, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
      0x80000b44 fsgnj.d fa2, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fa1  <-- 0.0
      0x80000b48 fsgnj.d fa3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fa2  <-- 0.0
      0x80000b4c fsgnj.d fa4, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fa3  <-- 0.0
                                                #; (f:fpu) fa4  <-- 0.0
      0x80000b50 fsgnj.d fa5, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
      0x80000b54 fsgnj.d fa6, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fa5  <-- 0.0
      0x80000b58 fsgnj.d fa7, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fa6  <-- 0.0
      0x80000b5c fsgnj.d ft8, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fa7  <-- 0.0
                                                #; (f:fpu) ft8  <-- 0.0
      0x80000b60 fsgnj.d ft9, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
      0x80000b64 fsgnj.d ft10, ft0, ft0         #; ft0  = 0.0, ft0  = 0.0, (f:fpu) ft9  <-- 0.0
      0x80000b68 fsgnj.d ft11, ft0, ft0         #; ft0  = 0.0, ft0  = 0.0, (f:fpu) ft10 <-- 0.0
      0x80000b6c fsgnj.d fs1, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) ft11 <-- 0.0
                                                #; (f:fpu) fs1  <-- 0.0
      0x80000b70 fsgnj.d fs2, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
      0x80000b74 fsgnj.d fs3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fs2  <-- 0.0
      0x80000b78 fsgnj.d fs4, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fs3  <-- 0.0
      0x80000b7c fsgnj.d fs5, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fs4  <-- 0.0
                                                #; (f:fpu) fs5  <-- 0.0
      0x80000b80 fsgnj.d fs6, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
      0x80000b84 fsgnj.d fs7, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fs6  <-- 0.0
      0x80000b88 fsgnj.d fs8, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fs7  <-- 0.0
      0x80000b8c fsgnj.d fs9, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fs8  <-- 0.0
                                                #; (f:fpu) fs9  <-- 0.0
      0x80000b90 fsgnj.d fs10, ft0, ft0         #; ft0  = 0.0, ft0  = 0.0
      0x80000b94 fsgnj.d fs11, ft0, ft0         #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fs10 <-- 0.0
      0x80000b98 fsgnj.d fs0, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fs11 <-- 0.0
      0x80000b9c fsgnj.d fa0, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fs0  <-- 0.0
                                                #; (f:fpu) fa0  <-- 0.0
      0x80000ba0 fsgnj.d ft7, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
      0x80000ba4 fsgnj.d ft6, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) ft7  <-- 0.0
      0x80000ba8 fsgnj.d ft5, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) ft6  <-- 0.0
      0x80000bac fsgnj.d ft4, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) ft5  <-- 0.0
                                                #; (f:fpu) ft4  <-- 0.0
      0x80000bb0 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
      0x80000bb4 csrci   ssr, 1                 #; (f:fpu) ft3  <-- 0.0
      0x80000bb8 fld     ft0, 40(sp)            #; ft0  <~~ Doub[0x0011fec8]
      0x80000bbc fld     ft1, 32(sp)            #; ft1  <~~ Doub[0x0011fec0], (f:lsu) ft0  <-- 0.0
                                                #; (f:lsu) ft1  <-- 0.0
      0x80000bc0 fadd.d  ft0, ft1, ft0          #; ft1  = 0.0, ft0  = 0.0
      0x80000bc4 fld     ft1, 24(sp)            #; ft1  <~~ Doub[0x0011feb8]
                                                #; (f:lsu) ft1  <-- 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000bc8 fadd.d  ft0, ft1, ft0          #; ft1  = 0.0, ft0  = 0.0
      0x80000bcc fld     ft1, 16(sp)            #; ft1  <~~ Doub[0x0011feb0]
                                                #; (f:lsu) ft1  <-- 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000bd0 fadd.d  ft0, ft1, ft0          #; ft1  = 0.0, ft0  = 0.0
      0x80000bd4 fld     ft1, 8(sp)             #; ft1  <~~ Doub[0x0011fea8]
                                                #; (f:lsu) ft1  <-- 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000bd8 fadd.d  ft0, ft1, ft0          #; ft1  = 0.0, ft0  = 0.0
      0x80000bdc fld     ft1, 0(sp)             #; ft1  <~~ Doub[0x0011fea0]
                                                #; (f:lsu) ft1  <-- 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000be0 fadd.d  ft0, ft1, ft0          #; ft1  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000be4 fadd.d  ft0, fa1, ft0          #; fa1  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000be8 fadd.d  ft0, fa2, ft0          #; fa2  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000bec fadd.d  ft0, fa3, ft0          #; fa3  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000bf0 fadd.d  ft0, fa4, ft0          #; fa4  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000bf4 fadd.d  ft0, fa5, ft0          #; fa5  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000bf8 fadd.d  ft0, fa6, ft0          #; fa6  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000bfc fadd.d  ft0, fa7, ft0          #; fa7  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c00 fadd.d  ft0, ft8, ft0          #; ft8  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c04 fadd.d  ft0, ft9, ft0          #; ft9  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c08 fadd.d  ft0, ft10, ft0         #; ft10 = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c0c fadd.d  ft0, ft11, ft0         #; ft11 = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c10 fadd.d  ft0, fs1, ft0          #; fs1  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c14 fadd.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c18 fadd.d  ft0, fs3, ft0          #; fs3  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c1c fadd.d  ft0, fs4, ft0          #; fs4  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c20 fadd.d  ft0, fs5, ft0          #; fs5  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c24 fadd.d  ft0, fs6, ft0          #; fs6  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c28 fadd.d  ft0, fs7, ft0          #; fs7  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c2c fadd.d  ft0, fs8, ft0          #; fs8  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c30 fadd.d  ft0, fs9, ft0          #; fs9  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c34 fadd.d  ft0, fs10, ft0         #; fs10 = 0.0, ft0  = 0.0
; summat (summat.c:0)
;  in main (test_mat.c:38)
      0x80000c5c j       pc + 0x24c             #; goto 0x80000ea8
                                                #; (f:fpu) ft0  <-- 0.0
; summat (summat.c:7)
;  in main (test_mat.c:38)
      0x80000c38 fadd.d  ft0, fs11, ft0         #; fs11 = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c3c fadd.d  ft0, fs0, ft0          #; fs0  = 0.0, ft0  = 0.0
; summat (summat.c:0)
;  in main (test_mat.c:38)
      0x80000c40 fld     fs0, 48(sp)            #; fs0  <~~ Doub[0x0011fed0]
; main (summat.c:0)
      0x80000ea8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003ea8
                                                #; (f:lsu) fs0  <-- 183998.6806500
      0x80000eac addi    a0, a0, -1544          #; a0  = 0x80003ea8, (wrb) a0  <-- 0x800038a0
                                                #; (f:fpu) ft0  <-- 0.0
; summat (summat.c:7)
;  in main (test_mat.c:38)
      0x80000c44 fadd.d  ft0, fa0, ft0          #; fa0  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c48 fadd.d  ft0, ft7, ft0          #; ft7  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c4c fadd.d  ft0, ft6, ft0          #; ft6  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c50 fadd.d  ft0, ft5, ft0          #; ft5  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c54 fadd.d  ft0, ft4, ft0          #; ft4  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000c58 fadd.d  ft0, ft3, ft0          #; ft3  = 0.0, ft0  = 0.0
; main (summat.c:0)
      0x80000eb0 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800038a0]
; main (test_mat.c:43)
      0x80000ec4 lw      a2, 56(sp)             #; sp  = 0x0011fea0, a2  <~~ Word[0x0011fed8]
                                                #; (f:fpu) ft0  <-- 0.0
                                                #; (f:lsu) ft1  <-- -183998.6806500
; main (test_mat.c:40)
      0x80000eb4 fadd.d  ft1, fs0, ft1          #; fs0  = 183998.6806500, ft1  = -183998.6806500
                                                #; (lsu) a2  <-- 0
; main (test_mat.c:43)
      0x80000ec8 lw      a3, 60(sp)             #; sp  = 0x0011fea0, a3  <~~ Word[0x0011fedc]
      0x80000ecc auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002ecc
                                                #; (f:fpu) ft1  <-- -0.0000000
      0x80000ed0 addi    a0, a0, 1865           #; a0  = 0x80002ecc, (wrb) a0  <-- 0x80003615
      0x80000eb8 fadd.d  ft0, ft1, ft0          #; ft1  = -0.0000000, ft0  = 0.0
      0x80000ed4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000ed4
      0x80000ed8 jalr    ra, ra, 1032           #; ra  = 0x80000ed4, (wrb) ra  <-- 0x80000edc, goto 0x800012dc
                                                #; (lsu) a3  <-- 0
                                                #; (f:fpu) ft0  <-- -0.0000000
; main (test_mat.c:41)
      0x80000ebc fsgnjx.d fs0, ft0, ft0         #; ft0  = -0.0000000, ft0  = -0.0000000
; printf_ (printf.c:863)
      0x800012dc addi    sp, sp, -48            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe70
                                                #; (f:fpu) fs0  <-- 0.0000000
; main (test_mat.c:43)
      0x80000ec0 fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fed8]
; printf_ (printf.c:863)
      0x800012e0 sw      ra, 12(sp)             #; sp  = 0x0011fe70, 0x80000edc ~~> Word[0x0011fe7c]
      0x800012e4 mv      t0, a0                 #; a0  = 0x80003615, (wrb) t0  <-- 0x80003615
      0x800012e8 sw      a7, 44(sp)             #; sp  = 0x0011fe70, 280 ~~> Word[0x0011fe9c]
      0x800012ec sw      a6, 40(sp)             #; sp  = 0x0011fe70, 6 ~~> Word[0x0011fe98]
      0x800012f0 sw      a5, 36(sp)             #; sp  = 0x0011fe70, 7 ~~> Word[0x0011fe94]
      0x800012f4 sw      a4, 32(sp)             #; sp  = 0x0011fe70, 0 ~~> Word[0x0011fe90]
      0x800012f8 sw      a3, 28(sp)             #; sp  = 0x0011fe70, 0 ~~> Word[0x0011fe8c]
      0x800012fc sw      a2, 24(sp)             #; sp  = 0x0011fe70, 0 ~~> Word[0x0011fe88]
      0x80001300 sw      a1, 20(sp)             #; sp  = 0x0011fe70, 224 ~~> Word[0x0011fe84]
      0x80001304 addi    a0, sp, 20             #; sp  = 0x0011fe70, (wrb) a0  <-- 0x0011fe84
; printf_ (printf.c:865)
      0x80001308 sw      a0, 8(sp)              #; sp  = 0x0011fe70, 0x0011fe84 ~~> Word[0x0011fe78]
; printf_ (printf.c:867)
      0x8000130c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000230c
      0x80001310 addi    a0, a0, -988           #; a0  = 0x8000230c, (wrb) a0  <-- 0x80001f30
      0x80001314 addi    a1, sp, 7              #; sp  = 0x0011fe70, (wrb) a1  <-- 0x0011fe77
      0x80001318 li      a2, -1                 #; (wrb) a2  <-- -1
      0x8000131c addi    a4, sp, 20             #; sp  = 0x0011fe70, (wrb) a4  <-- 0x0011fe84
      0x80001320 mv      a3, t0                 #; t0  = 0x80003615, (wrb) a3  <-- 0x80003615
      0x80001324 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80001324
      0x80001328 jalr    ra, ra, 20             #; ra  = 0x80001324, (wrb) ra  <-- 0x8000132c, goto 0x80001338
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80001338 addi    sp, sp, -112           #; sp  = 0x0011fe70, (wrb) sp  <-- 0x0011fe00
      0x8000133c sw      ra, 108(sp)            #; sp  = 0x0011fe00, 0x8000132c ~~> Word[0x0011fe6c]
      0x80001340 sw      s0, 104(sp)            #; sp  = 0x0011fe00, 0x00100240 ~~> Word[0x0011fe68]
      0x80001344 sw      s1, 100(sp)            #; sp  = 0x0011fe00, 0 ~~> Word[0x0011fe64]
      0x80001348 sw      s2, 96(sp)             #; sp  = 0x0011fe00, 0x00100000 ~~> Word[0x0011fe60]
      0x8000134c sw      s3, 92(sp)             #; sp  = 0x0011fe00, 6 ~~> Word[0x0011fe5c]
      0x80001350 sw      s4, 88(sp)             #; sp  = 0x0011fe00, 8 ~~> Word[0x0011fe58]
      0x80001354 sw      s5, 84(sp)             #; sp  = 0x0011fe00, 4 ~~> Word[0x0011fe54]
      0x80001358 sw      s6, 80(sp)             #; sp  = 0x0011fe00, 0x001000f0 ~~> Word[0x0011fe50]
      0x8000135c sw      s7, 76(sp)             #; sp  = 0x0011fe00, 0 ~~> Word[0x0011fe4c]
      0x80001360 sw      s8, 72(sp)             #; sp  = 0x0011fe00, 0 ~~> Word[0x0011fe48]
      0x80001364 sw      s9, 68(sp)             #; sp  = 0x0011fe00, 0 ~~> Word[0x0011fe44]
      0x80001368 sw      s10, 64(sp)            #; sp  = 0x0011fe00, 0 ~~> Word[0x0011fe40]
      0x8000136c sw      s11, 60(sp)            #; sp  = 0x0011fe00, 0 ~~> Word[0x0011fe3c]
      0x80001370 mv      s3, a4                 #; a4  = 0x0011fe84, (wrb) s3  <-- 0x0011fe84
      0x80001374 mv      s0, a3                 #; a3  = 0x80003615, (wrb) s0  <-- 0x80003615
      0x80001378 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x8000137c mv      s4, a1                 #; a1  = 0x0011fe77, (wrb) s4  <-- 0x0011fe77
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x80001380 beqz    a1, pc + 12            #; a1  = 0x0011fe77, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001384 mv      s2, a0                 #; a0  = 0x80001f30, (wrb) s2  <-- 0x80001f30
      0x80001388 j       pc + 0xc               #; goto 0x80001394
      0x80001394 li      s8, 0                  #; (wrb) s8  <-- 0
      0x80001398 li      s6, 37                 #; (wrb) s6  <-- 37
      0x8000139c li      s11, 16                #; (wrb) s11 <-- 16
      0x800013a0 li      s7, 46                 #; (wrb) s7  <-- 46
      0x800013a4 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x800013a8 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x800013ac sw      a0, 24(sp)             #; sp  = 0x0011fe00, 2048 ~~> Word[0x0011fe18]
      0x800013b0 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x800013b4 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x800013b8 sw      a0, 16(sp)             #; sp  = 0x0011fe00, 65535 ~~> Word[0x0011fe10]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800013bc addi    s10, s0, 2             #; s0  = 0x80003615, (wrb) s10 <-- 0x80003617
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800013c0 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x800013c4 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800013c8 lbu     a0, 0(s0)              #; s0  = 0x80003615, a0  <~~ Byte[0x80003615]
                                                #; (lsu) a0  <-- 101
      0x800013cc beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x800013d0 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800013d4 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x800013d8 mv      a1, s4                 #; s4  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
      0x800013dc mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x800013e0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800013e4 jalr    s2                     #; s2  = 0x80001f30, (wrb) ra  <-- 0x800013e8, goto 0x80001f30
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001f30 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
      0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
      0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
      0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 0
      0x80001f50 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 1 ~~> Word[0x8000395c]
      0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 0, (wrb) a4  <-- 0x8000395c
      0x80001f5c sb      a0, 72(a4)             #; a4  = 0x8000395c, 101 ~~> Byte[0x800039a4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 1
      0x80001f64 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x80001f68 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x80001f6c addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x80001f70 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001fd8 ret                            #; ra  = 0x800013e8, goto 0x800013e8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800013e8 addi    s0, s0, 1              #; s0  = 0x80003615, (wrb) s0  <-- 0x80003616
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800013ec addi    s10, s10, 1            #; s10 = 0x80003617, (wrb) s10 <-- 0x80003618
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800013f0 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800013f4 lbu     a0, 0(s0)              #; s0  = 0x80003616, a0  <~~ Byte[0x80003616]
                                                #; (lsu) a0  <-- 114
      0x800013f8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800013d0
      0x800013d0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800013d4 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x800013d8 mv      a1, s4                 #; s4  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
      0x800013dc mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x800013e0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800013e4 jalr    s2                     #; s2  = 0x80001f30, (wrb) ra  <-- 0x800013e8, goto 0x80001f30
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001f30 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
      0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
      0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 1
      0x80001f50 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 2 ~~> Word[0x8000395c]
      0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 1, (wrb) a4  <-- 0x8000395d
      0x80001f5c sb      a0, 72(a4)             #; a4  = 0x8000395d, 114 ~~> Byte[0x800039a5]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 2
      0x80001f64 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x80001f68 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x80001f6c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001f70 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001fd8 ret                            #; ra  = 0x800013e8, goto 0x800013e8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800013e8 addi    s0, s0, 1              #; s0  = 0x80003616, (wrb) s0  <-- 0x80003617
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800013ec addi    s10, s10, 1            #; s10 = 0x80003618, (wrb) s10 <-- 0x80003619
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800013f0 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800013f4 lbu     a0, 0(s0)              #; s0  = 0x80003617, a0  <~~ Byte[0x80003617]
                                                #; (lsu) a0  <-- 114
      0x800013f8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800013d0
      0x800013d0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800013d4 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x800013d8 mv      a1, s4                 #; s4  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
      0x800013dc mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x800013e0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800013e4 jalr    s2                     #; s2  = 0x80001f30, (wrb) ra  <-- 0x800013e8, goto 0x80001f30
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001f30 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
      0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
      0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 2
      0x80001f50 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 3 ~~> Word[0x8000395c]
      0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 2, (wrb) a4  <-- 0x8000395e
      0x80001f5c sb      a0, 72(a4)             #; a4  = 0x8000395e, 114 ~~> Byte[0x800039a6]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 3
      0x80001f64 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x80001f68 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x80001f6c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001f70 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001fd8 ret                            #; ra  = 0x800013e8, goto 0x800013e8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800013e8 addi    s0, s0, 1              #; s0  = 0x80003617, (wrb) s0  <-- 0x80003618
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800013ec addi    s10, s10, 1            #; s10 = 0x80003619, (wrb) s10 <-- 0x8000361a
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800013f0 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800013f4 lbu     a0, 0(s0)              #; s0  = 0x80003618, a0  <~~ Byte[0x80003618]
                                                #; (lsu) a0  <-- 111
      0x800013f8 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x800013d0
      0x800013d0 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800013d4 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x800013d8 mv      a1, s4                 #; s4  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
      0x800013dc mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x800013e0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800013e4 jalr    s2                     #; s2  = 0x80001f30, (wrb) ra  <-- 0x800013e8, goto 0x80001f30
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001f30 beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
      0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
      0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 3
      0x80001f50 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 4 ~~> Word[0x8000395c]
      0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 3, (wrb) a4  <-- 0x8000395f
      0x80001f5c sb      a0, 72(a4)             #; a4  = 0x8000395f, 111 ~~> Byte[0x800039a7]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 4
      0x80001f64 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x80001f68 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x80001f6c addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x80001f70 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001fd8 ret                            #; ra  = 0x800013e8, goto 0x800013e8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800013e8 addi    s0, s0, 1              #; s0  = 0x80003618, (wrb) s0  <-- 0x80003619
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800013ec addi    s10, s10, 1            #; s10 = 0x8000361a, (wrb) s10 <-- 0x8000361b
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800013f0 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800013f4 lbu     a0, 0(s0)              #; s0  = 0x80003619, a0  <~~ Byte[0x80003619]
                                                #; (lsu) a0  <-- 114
      0x800013f8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800013d0
      0x800013d0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800013d4 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x800013d8 mv      a1, s4                 #; s4  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
      0x800013dc mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x800013e0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800013e4 jalr    s2                     #; s2  = 0x80001f30, (wrb) ra  <-- 0x800013e8, goto 0x80001f30
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001f30 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
      0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
      0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 4
      0x80001f50 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 5 ~~> Word[0x8000395c]
      0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 4, (wrb) a4  <-- 0x80003960
      0x80001f5c sb      a0, 72(a4)             #; a4  = 0x80003960, 114 ~~> Byte[0x800039a8]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 5
      0x80001f64 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x80001f68 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x80001f6c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001f70 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001fd8 ret                            #; ra  = 0x800013e8, goto 0x800013e8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800013e8 addi    s0, s0, 1              #; s0  = 0x80003619, (wrb) s0  <-- 0x8000361a
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800013ec addi    s10, s10, 1            #; s10 = 0x8000361b, (wrb) s10 <-- 0x8000361c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800013f0 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800013f4 lbu     a0, 0(s0)              #; s0  = 0x8000361a, a0  <~~ Byte[0x8000361a]
                                                #; (lsu) a0  <-- 32
      0x800013f8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800013d0
      0x800013d0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800013d4 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x800013d8 mv      a1, s4                 #; s4  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
      0x800013dc mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x800013e0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800013e4 jalr    s2                     #; s2  = 0x80001f30, (wrb) ra  <-- 0x800013e8, goto 0x80001f30
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001f30 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
      0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
      0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 5
      0x80001f50 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 6 ~~> Word[0x8000395c]
      0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 5, (wrb) a4  <-- 0x80003961
      0x80001f5c sb      a0, 72(a4)             #; a4  = 0x80003961, 32 ~~> Byte[0x800039a9]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 6
      0x80001f64 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x80001f68 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x80001f6c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001f70 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001fd8 ret                            #; ra  = 0x800013e8, goto 0x800013e8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800013e8 addi    s0, s0, 1              #; s0  = 0x8000361a, (wrb) s0  <-- 0x8000361b
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800013ec addi    s10, s10, 1            #; s10 = 0x8000361c, (wrb) s10 <-- 0x8000361d
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800013f0 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800013f4 lbu     a0, 0(s0)              #; s0  = 0x8000361b, a0  <~~ Byte[0x8000361b]
                                                #; (lsu) a0  <-- 61
      0x800013f8 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x800013d0
      0x800013d0 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800013d4 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x800013d8 mv      a1, s4                 #; s4  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
      0x800013dc mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x800013e0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800013e4 jalr    s2                     #; s2  = 0x80001f30, (wrb) ra  <-- 0x800013e8, goto 0x80001f30
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001f30 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
      0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
      0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 6
      0x80001f50 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 7 ~~> Word[0x8000395c]
      0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 6, (wrb) a4  <-- 0x80003962
      0x80001f5c sb      a0, 72(a4)             #; a4  = 0x80003962, 61 ~~> Byte[0x800039aa]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 7
      0x80001f64 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x80001f68 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x80001f6c addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x80001f70 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001fd8 ret                            #; ra  = 0x800013e8, goto 0x800013e8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800013e8 addi    s0, s0, 1              #; s0  = 0x8000361b, (wrb) s0  <-- 0x8000361c
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800013ec addi    s10, s10, 1            #; s10 = 0x8000361d, (wrb) s10 <-- 0x8000361e
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800013f0 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800013f4 lbu     a0, 0(s0)              #; s0  = 0x8000361c, a0  <~~ Byte[0x8000361c]
                                                #; (lsu) a0  <-- 32
      0x800013f8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800013d0
      0x800013d0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800013d4 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x800013d8 mv      a1, s4                 #; s4  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
      0x800013dc mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x800013e0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800013e4 jalr    s2                     #; s2  = 0x80001f30, (wrb) ra  <-- 0x800013e8, goto 0x80001f30
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001f30 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
      0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
      0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 7
      0x80001f50 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 8 ~~> Word[0x8000395c]
      0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 7, (wrb) a4  <-- 0x80003963
      0x80001f5c sb      a0, 72(a4)             #; a4  = 0x80003963, 32 ~~> Byte[0x800039ab]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 8
      0x80001f64 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x80001f68 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x80001f6c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001f70 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001fd8 ret                            #; ra  = 0x800013e8, goto 0x800013e8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800013e8 addi    s0, s0, 1              #; s0  = 0x8000361c, (wrb) s0  <-- 0x8000361d
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800013ec addi    s10, s10, 1            #; s10 = 0x8000361e, (wrb) s10 <-- 0x8000361f
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800013f0 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800013f4 lbu     a0, 0(s0)              #; s0  = 0x8000361d, a0  <~~ Byte[0x8000361d]
                                                #; (lsu) a0  <-- 37
      0x800013f8 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x800013d0
      0x800013d0 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80001400
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80001400 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001404 j       pc + 0x10              #; goto 0x80001414
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80001414 lbu     a0, -1(s10)            #; s10 = 0x8000361f, a0  <~~ Byte[0x8000361e]
                                                #; (lsu) a0  <-- 102
      0x80001418 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x8000141c bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80001454
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80001454 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80001458 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x8000145c addi    a1, s10, -1            #; s10 = 0x8000361f, (wrb) a1  <-- 0x8000361e
      0x80001460 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80001464 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x800014e0
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x800014e0 li      a2, 42                 #; (wrb) a2  <-- 42
      0x800014e4 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80001534
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001534 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80001538 mv      s10, a1                #; a1  = 0x8000361e, (wrb) s10 <-- 0x8000361e
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x8000153c beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001540 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80001544 j       pc + 0xc               #; goto 0x80001550
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80001550 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80001554 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80001558 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x8000155c or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80001560 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80001564 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x800015c8
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x800015c8 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x800015cc li      a2, 83                 #; (wrb) a2  <-- 83
      0x800015d0 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800015d4 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x800015d8 auipc   a2, 0x2                #; (wrb) a2  <-- 0x800035d8
      0x800015dc addi    a2, a2, 188            #; a2  = 0x800035d8, (wrb) a2  <-- 0x80003694
      0x800015e0 add     a1, a1, a2             #; a1  = 260, a2  = 0x80003694, (wrb) a1  <-- 0x80003798
      0x800015e4 lw      a2, 0(a1)              #; a1  = 0x80003798, a2  <~~ Word[0x80003798]
      0x800015e8 li      a1, 8                  #; (wrb) a1  <-- 8
      0x800015ec li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80001620
      0x800015f0 jr      a2                     #; a2  = 0x80001620, goto 0x80001620
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80001620 li      a1, 70                 #; (wrb) a1  <-- 70
      0x80001624 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x8000162c
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x8000162c addi    a0, s3, 7              #; s3  = 0x0011fe84, (wrb) a0  <-- 0x0011fe8b
      0x80001630 andi    a0, a0, -8             #; a0  = 0x0011fe8b, (wrb) a0  <-- 0x0011fe88
      0x80001638 addi    s3, a0, 8              #; a0  = 0x0011fe88, (wrb) s3  <-- 0x0011fe90
      0x8000163c mv      a0, s2                 #; s2  = 0x80001f30, (wrb) a0  <-- 0x80001f30
      0x80001634 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011fe88]
                                                #; (f:lsu) fa0  <-- 0.0
      0x80001640 mv      a1, s4                 #; s4  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
      0x80001644 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80001648 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x8000164c mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80001650 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80001654 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80001658 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80002658
      0x8000165c jalr    ra, ra, -1656          #; ra  = 0x80002658, (wrb) ra  <-- 0x80001660, goto 0x80001fe0
; _ftoa (printf.c:340)
      0x80001fe0 addi    sp, sp, -112           #; sp  = 0x0011fe00, (wrb) sp  <-- 0x0011fd90
      0x80001fe4 sw      ra, 108(sp)            #; sp  = 0x0011fd90, 0x80001660 ~~> Word[0x0011fdfc]
      0x80001fe8 sw      s0, 104(sp)            #; sp  = 0x0011fd90, 0 ~~> Word[0x0011fdf8]
      0x80001fec sw      s1, 100(sp)            #; sp  = 0x0011fd90, 8 ~~> Word[0x0011fdf4]
      0x80001ff0 sw      s2, 96(sp)             #; sp  = 0x0011fd90, 0x80001f30 ~~> Word[0x0011fdf0]
      0x80001ff4 sw      s3, 92(sp)             #; sp  = 0x0011fd90, 0x0011fe90 ~~> Word[0x0011fdec]
      0x80001ff8 sw      s4, 88(sp)             #; sp  = 0x0011fd90, 0x0011fe77 ~~> Word[0x0011fde8]
      0x80001ffc sw      s5, 84(sp)             #; sp  = 0x0011fd90, -1 ~~> Word[0x0011fde4]
      0x80002000 sw      s6, 80(sp)             #; sp  = 0x0011fd90, 0 ~~> Word[0x0011fde0]
      0x80002004 sw      s7, 76(sp)             #; sp  = 0x0011fd90, 0 ~~> Word[0x0011fddc]
      0x80002008 sw      s8, 72(sp)             #; sp  = 0x0011fd90, 16 ~~> Word[0x0011fdd8]
      0x8000200c sw      s9, 68(sp)             #; sp  = 0x0011fd90, 8 ~~> Word[0x0011fdd4]
      0x80002010 sw      s10, 64(sp)            #; sp  = 0x0011fd90, 0x8000361e ~~> Word[0x0011fdd0]
      0x80002014 fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fdc8]
      0x80002018 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fdc0]
      0x8000201c fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fdb8]
      0x80002020 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80004020
      0x80002024 addi    s1, s1, -1904          #; s1  = 0x80004020, (wrb) s1  <-- 0x800038b0
      0x80002028 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x800038b0]
; _ftoa (printf.c:351)
      0x80002030 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
; _ftoa (printf.c:0)
      0x80002034 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x80002038 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x8000202c fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
      0x8000203c mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x80002040 mv      s6, a1                 #; a1  = 0x0011fe77, (wrb) s6  <-- 0x0011fe77
      0x80002044 mv      s7, a0                 #; a0  = 0x80001f30, (wrb) s7  <-- 0x80001f30
; _ftoa (printf.c:351)
      0x80002048 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80002138
; _ftoa (printf.c:0)
      0x8000213c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000313c
      0x80002138 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x80002140 addi    a0, a0, 1916           #; a0  = 0x8000313c, (wrb) a0  <-- 0x800038b8
      0x80002144 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800038b8]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x80002148 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x8000214c bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80002168
; _ftoa (printf.c:0)
      0x80002168 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80003168
      0x8000216c addi    a0, a0, 1880           #; a0  = 0x80003168, (wrb) a0  <-- 0x800038c0
      0x80002174 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80003174
      0x80002178 addi    a0, a0, 1876           #; a0  = 0x80003174, (wrb) a0  <-- 0x800038c8
      0x80002170 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800038c0]
      0x8000217c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800038c8]
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
; _ftoa (printf.c:358)
      0x80002180 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
                                                #; (acc) a0  <-- 0x00b57533
      0x80002184 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
                                                #; (acc) a0  <-- 0x00b57533
      0x80002188 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x8000218c bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80002288
; _ftoa (printf.c:374)
      0x80002288 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x8000228c li      s8, 6                  #; (wrb) s8  <-- 6
      0x80002290 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80002298
; _ftoa (printf.c:0)
      0x80002298 li      a0, 10                 #; (wrb) a0  <-- 10
      0x8000229c fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs2  <-- 0.0
; _ftoa (printf.c:378)
      0x800022a0 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x800022d8
; _ftoa (printf.c:0)
      0x800022d8 li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x800022dc slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x800022e0 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800032e0
      0x800022e4 addi    a1, a1, 1288           #; a1  = 0x800032e0, (wrb) a1  <-- 0x800037e8
      0x800022e8 add     a0, a0, a1             #; a0  = 48, a1  = 0x800037e8, (wrb) a0  <-- 0x80003818
      0x800022ec fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003818]
; _ftoa (printf.c:383)
      0x800022f0 fcvt.w.d s1, fs2               #; fs2  = 0.0
                                                #; (f:lsu) ft1  <-- 1000000.0000000
; _ftoa (printf.c:384)
      0x800022f4 fcvt.d.w ft0, s1               #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800022f8 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800022fc fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
; _ftoa (printf.c:0)
      0x80002300 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80003300
      0x80002304 addi    a0, a0, 1488           #; a0  = 0x80003300, (wrb) a0  <-- 0x800038d0
                                                #; (f:fpu) ft2  <-- 0.0
      0x80002308 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800038d0]
; _ftoa (printf.c:385)
      0x8000230c fcvt.wu.d a0, ft2              #; ft2  = 0.0
; _ftoa (printf.c:386)
      0x80002310 fcvt.d.wu ft3, a0              #; ac1  = 0, (f:lsu) ft0  <-- 0.5
                                                #; (f:fpu) ft3  <-- 0.0
      0x80002314 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:388)
      0x80002318 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x8000231c bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x8000233c
; _ftoa (printf.c:396)
      0x8000233c flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x80002340 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80002354
; _ftoa (printf.c:403)
      0x80002358 beqz    s8, pc + 216           #; s8  = 6, not taken
      0x80002354 fcvt.d.w fs1, zero             #; ac1  = 0
; _ftoa (printf.c:0)
      0x8000235c li      a2, 0                  #; (wrb) a2  <-- 0
                                                #; (f:fpu) fs1  <-- 0.0
      0x80002360 addi    a1, sp, 8              #; sp  = 0x0011fd90, (wrb) a1  <-- 0x0011fd98
; _ftoa (printf.c:414)
      0x80002364 add     t1, a1, s0             #; a1  = 0x0011fd98, s0  = 0, (wrb) t1  <-- 0x0011fd98
      0x80002368 li      t0, 32                 #; (wrb) t0  <-- 32
      0x8000236c sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x80002370 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80002374 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80002378 li      a6, 10                 #; (wrb) a6  <-- 10
      0x8000237c li      a7, 9                  #; (wrb) a7  <-- 9
      0x80002380 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80002384 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x80002388 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x8000238c srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80002390 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80002394 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80002398 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x8000239c add     a5, t1, a2             #; t1  = 0x0011fd98, a2  = 0, (wrb) a5  <-- 0x0011fd98
      0x800023a0 sb      a3, 0(a5)              #; a5  = 0x0011fd98, 48 ~~> Byte[0x0011fd98]
; _ftoa (printf.c:417)
      0x800023a4 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x800023a8 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x800023ac add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x800023b0 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x800023b4 li      a3, 30                 #; (wrb) a3  <-- 30
      0x800023b8 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x800023bc xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x800023c0 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x800023c4 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x800023c8 bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x800023cc addi    a0, sp, 8              #; sp  = 0x0011fd90, (wrb) a0  <-- 0x0011fd98
; _ftoa (printf.c:422)
      0x800023d0 add     a0, a0, s0             #; a0  = 0x0011fd98, s0  = 0, (wrb) a0  <-- 0x0011fd98
      0x800023d4 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x800023d8 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x800023dc add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x800023e0 li      a1, 31                 #; (wrb) a1  <-- 31
      0x800023e4 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x800023e8 add     a0, a0, a2             #; a0  = 0x0011fd98, a2  = 1, (wrb) a0  <-- 0x0011fd99
      0x800023ec mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x800023f0 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x800023f8
      0x800023f8 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x800023fc li      a1, 48                 #; (wrb) a1  <-- 48
      0x80002400 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000400
      0x80002404 jalr    ra, ra, -1024          #; ra  = 0x80000400, (wrb) ra  <-- 0x80002408, goto 0x80000000
; memset (memset.S:30)
      0x80000000 li      t1, 15                 #; (wrb) t1  <-- 15
; memset (memset.S:31)
      0x80000004 mv      a4, a0                 #; a0  = 0x0011fd99, (wrb) a4  <-- 0x0011fd99
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
      0x80000080 sb      a1, 4(a4)              #; a4  = 0x0011fd99, 48 ~~> Byte[0x0011fd9d]
; memset (memset.S:80)
      0x80000084 sb      a1, 3(a4)              #; a4  = 0x0011fd99, 48 ~~> Byte[0x0011fd9c]
; memset (memset.S:81)
      0x80000088 sb      a1, 2(a4)              #; a4  = 0x0011fd99, 48 ~~> Byte[0x0011fd9b]
; memset (memset.S:82)
      0x8000008c sb      a1, 1(a4)              #; a4  = 0x0011fd99, 48 ~~> Byte[0x0011fd9a]
; memset (memset.S:83)
      0x80000090 sb      a1, 0(a4)              #; a4  = 0x0011fd99, 48 ~~> Byte[0x0011fd99]
; memset (memset.S:85)
      0x80000094 ret                            #; ra  = 0x80002408, goto 0x80002408
; _ftoa (printf.c:0)
      0x80002408 li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x8000240c add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x80002410 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80002414 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x80002418 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x8000241c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80002420 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80002424 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x8000240c
      0x8000240c add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x80002410 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80002414 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x80002418 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x8000241c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80002420 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80002424 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x8000240c
      0x8000240c add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x80002410 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80002414 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x80002418 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x8000241c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80002420 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80002424 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x8000240c
      0x8000240c add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x80002410 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80002414 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x80002418 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x8000241c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80002420 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80002424 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x8000240c
      0x8000240c add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x80002410 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80002414 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x80002418 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x8000241c and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80002420 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80002424 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80002428 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x8000242c j       pc + 0x28              #; goto 0x80002454
      0x80002454 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80002458 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x8000245c addi    a1, sp, 8              #; sp  = 0x0011fd90, (wrb) a1  <-- 0x0011fd98
; _ftoa (printf.c:427)
      0x80002460 add     a0, a1, a0             #; a1  = 0x0011fd98, a0  = 6, (wrb) a0  <-- 0x0011fd9e
      0x80002464 li      a1, 46                 #; (wrb) a1  <-- 46
      0x80002468 sb      a1, 0(a0)              #; a0  = 0x0011fd9e, 46 ~~> Byte[0x0011fd9e]
      0x8000246c j       pc + 0x8               #; goto 0x80002474
; _ftoa (printf.c:0)
      0x80002474 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80002478 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x8000247c bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80002480 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80002488 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80002484 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
      0x8000248c addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80002490 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80002494 addi    a3, sp, 8              #; sp  = 0x0011fd90, (wrb) a3  <-- 0x0011fd98
      0x80002498 li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x8000249c beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x800024a0 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x800024a4 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x800024a8 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x800024ac add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x800024b0 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x800024b4 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x800024b8 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x800024bc addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x800024c0 add     s0, a3, s0             #; a3  = 0x0011fd98, s0  = 7, (wrb) s0  <-- 0x0011fd9f
; _ftoa (printf.c:434)
      0x800024c4 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x800024c8 sb      a5, 0(s0)              #; s0  = 0x0011fd9f, 48 ~~> Byte[0x0011fd9f]
; _ftoa (printf.c:0)
      0x800024cc mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x800024d0 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x800024d4 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x800024d8 j       pc + 0x8               #; goto 0x800024e0
; _ftoa (printf.c:440)
      0x800024e0 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x800024e4 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x800024e8 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80002554
; _ftoa (printf.c:0)
      0x80002554 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80002558 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x8000255c beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80002574
; _ftoa (printf.c:453)
      0x80002574 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80002578 bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x8000257c andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80002580 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x800025ac
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x800025ac snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x800025b0 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x800025b4 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x800025b8 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x800025bc andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x800025c0 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x800025c4 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x800025f0
; _ftoa (printf.c:0)
      0x800025f0 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800025f4 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x800025f8 addi    s9, sp, 7              #; sp  = 0x0011fd90, (wrb) s9  <-- 0x0011fd97
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800025fc add     a0, s9, s8             #; s9  = 0x0011fd97, s8  = 8, (wrb) a0  <-- 0x0011fd9f
      0x80002600 lbu     a0, 0(a0)              #; a0  = 0x0011fd9f, a0  <~~ Byte[0x0011fd9f]
      0x80002604 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x80002608 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
      0x8000260c mv      a1, s6                 #; s6  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
                                                #; (lsu) a0  <-- 48
      0x80002610 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80002614 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80002618 jalr    s7                     #; s7  = 0x80001f30, (wrb) ra  <-- 0x8000261c, goto 0x80001f30
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001f30 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
      0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
      0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 8
      0x80001f50 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 9 ~~> Word[0x8000395c]
      0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 8, (wrb) a4  <-- 0x80003964
      0x80001f5c sb      a0, 72(a4)             #; a4  = 0x80003964, 48 ~~> Byte[0x800039ac]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 9
      0x80001f64 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x80001f68 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x80001f6c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001f70 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001fd8 ret                            #; ra  = 0x8000261c, goto 0x8000261c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x8000261c mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x80002620 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80002624 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x800025fc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800025fc add     a0, s9, s8             #; s9  = 0x0011fd97, s8  = 7, (wrb) a0  <-- 0x0011fd9e
      0x80002600 lbu     a0, 0(a0)              #; a0  = 0x0011fd9e, a0  <~~ Byte[0x0011fd9e]
      0x80002604 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80002608 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x8000260c mv      a1, s6                 #; s6  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
      0x80002610 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80002614 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80002618 jalr    s7                     #; s7  = 0x80001f30, (wrb) ra  <-- 0x8000261c, goto 0x80001f30
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001f30 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
      0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
      0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 9
      0x80001f50 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 10 ~~> Word[0x8000395c]
      0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 9, (wrb) a4  <-- 0x80003965
      0x80001f5c sb      a0, 72(a4)             #; a4  = 0x80003965, 46 ~~> Byte[0x800039ad]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 10
      0x80001f64 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x80001f68 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x80001f6c addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x80001f70 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001fd8 ret                            #; ra  = 0x8000261c, goto 0x8000261c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x8000261c mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80002620 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80002624 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x800025fc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800025fc add     a0, s9, s8             #; s9  = 0x0011fd97, s8  = 6, (wrb) a0  <-- 0x0011fd9d
      0x80002600 lbu     a0, 0(a0)              #; a0  = 0x0011fd9d, a0  <~~ Byte[0x0011fd9d]
      0x80002604 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80002608 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x8000260c mv      a1, s6                 #; s6  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
      0x80002610 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80002614 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80002618 jalr    s7                     #; s7  = 0x80001f30, (wrb) ra  <-- 0x8000261c, goto 0x80001f30
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001f30 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
      0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
      0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 10
      0x80001f50 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 11 ~~> Word[0x8000395c]
      0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 10, (wrb) a4  <-- 0x80003966
      0x80001f5c sb      a0, 72(a4)             #; a4  = 0x80003966, 48 ~~> Byte[0x800039ae]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 11
      0x80001f64 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x80001f68 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x80001f6c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001f70 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001fd8 ret                            #; ra  = 0x8000261c, goto 0x8000261c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x8000261c mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80002620 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80002624 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x800025fc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800025fc add     a0, s9, s8             #; s9  = 0x0011fd97, s8  = 5, (wrb) a0  <-- 0x0011fd9c
      0x80002600 lbu     a0, 0(a0)              #; a0  = 0x0011fd9c, a0  <~~ Byte[0x0011fd9c]
      0x80002604 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80002608 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x8000260c mv      a1, s6                 #; s6  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
      0x80002610 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80002614 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80002618 jalr    s7                     #; s7  = 0x80001f30, (wrb) ra  <-- 0x8000261c, goto 0x80001f30
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001f30 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
      0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
      0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 11
      0x80001f50 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 12 ~~> Word[0x8000395c]
      0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 11, (wrb) a4  <-- 0x80003967
      0x80001f5c sb      a0, 72(a4)             #; a4  = 0x80003967, 48 ~~> Byte[0x800039af]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 12
      0x80001f64 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x80001f68 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x80001f6c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001f70 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001fd8 ret                            #; ra  = 0x8000261c, goto 0x8000261c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x8000261c mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80002620 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80002624 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x800025fc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800025fc add     a0, s9, s8             #; s9  = 0x0011fd97, s8  = 4, (wrb) a0  <-- 0x0011fd9b
      0x80002600 lbu     a0, 0(a0)              #; a0  = 0x0011fd9b, a0  <~~ Byte[0x0011fd9b]
      0x80002604 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80002608 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x8000260c mv      a1, s6                 #; s6  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
      0x80002610 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80002614 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80002618 jalr    s7                     #; s7  = 0x80001f30, (wrb) ra  <-- 0x8000261c, goto 0x80001f30
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001f30 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
      0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
      0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 12
      0x80001f50 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 13 ~~> Word[0x8000395c]
      0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 12, (wrb) a4  <-- 0x80003968
      0x80001f5c sb      a0, 72(a4)             #; a4  = 0x80003968, 48 ~~> Byte[0x800039b0]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 13
      0x80001f64 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x80001f68 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x80001f6c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001f70 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001fd8 ret                            #; ra  = 0x8000261c, goto 0x8000261c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x8000261c mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80002620 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80002624 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x800025fc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800025fc add     a0, s9, s8             #; s9  = 0x0011fd97, s8  = 3, (wrb) a0  <-- 0x0011fd9a
      0x80002600 lbu     a0, 0(a0)              #; a0  = 0x0011fd9a, a0  <~~ Byte[0x0011fd9a]
      0x80002604 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80002608 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x8000260c mv      a1, s6                 #; s6  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
      0x80002610 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80002614 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80002618 jalr    s7                     #; s7  = 0x80001f30, (wrb) ra  <-- 0x8000261c, goto 0x80001f30
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001f30 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
      0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
      0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 13
      0x80001f50 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 14 ~~> Word[0x8000395c]
      0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 13, (wrb) a4  <-- 0x80003969
      0x80001f5c sb      a0, 72(a4)             #; a4  = 0x80003969, 48 ~~> Byte[0x800039b1]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 14
      0x80001f64 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x80001f68 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x80001f6c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001f70 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001fd8 ret                            #; ra  = 0x8000261c, goto 0x8000261c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x8000261c mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80002620 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80002624 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x800025fc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800025fc add     a0, s9, s8             #; s9  = 0x0011fd97, s8  = 2, (wrb) a0  <-- 0x0011fd99
      0x80002600 lbu     a0, 0(a0)              #; a0  = 0x0011fd99, a0  <~~ Byte[0x0011fd99]
      0x80002604 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80002608 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x8000260c mv      a1, s6                 #; s6  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
      0x80002610 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80002614 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80002618 jalr    s7                     #; s7  = 0x80001f30, (wrb) ra  <-- 0x8000261c, goto 0x80001f30
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001f30 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
      0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
      0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 14
      0x80001f50 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 15 ~~> Word[0x8000395c]
      0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 14, (wrb) a4  <-- 0x8000396a
      0x80001f5c sb      a0, 72(a4)             #; a4  = 0x8000396a, 48 ~~> Byte[0x800039b2]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 15
      0x80001f64 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x80001f68 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x80001f6c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001f70 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001fd8 ret                            #; ra  = 0x8000261c, goto 0x8000261c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x8000261c mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80002620 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80002624 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x800025fc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800025fc add     a0, s9, s8             #; s9  = 0x0011fd97, s8  = 1, (wrb) a0  <-- 0x0011fd98
      0x80002600 lbu     a0, 0(a0)              #; a0  = 0x0011fd98, a0  <~~ Byte[0x0011fd98]
      0x80002604 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80002608 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x8000260c mv      a1, s6                 #; s6  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
      0x80002610 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80002614 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80002618 jalr    s7                     #; s7  = 0x80001f30, (wrb) ra  <-- 0x8000261c, goto 0x80001f30
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001f30 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
      0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
      0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 15
      0x80001f50 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 16 ~~> Word[0x8000395c]
      0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 15, (wrb) a4  <-- 0x8000396b
      0x80001f5c sb      a0, 72(a4)             #; a4  = 0x8000396b, 48 ~~> Byte[0x800039b3]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 16
      0x80001f64 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x80001f68 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x80001f6c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001f70 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001f74 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001f78 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001fd8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001fd8 ret                            #; ra  = 0x8000261c, goto 0x8000261c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x8000261c mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80002620 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80002624 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80002628 j       pc + 0x8               #; goto 0x80002630
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80002630 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x80002634 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80002638 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x8000263c xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80002640 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80002644 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80002674
; _ftoa (printf.c:0)
      0x80002674 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x80002678 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x8000267c fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fdb8]
                                                #; (f:lsu) fs2  <-- 0.0
      0x80002688 lw      s10, 64(sp)            #; sp  = 0x0011fd90, s10 <~~ Word[0x0011fdd0]
      0x80002680 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fdc0]
      0x80002684 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fdc8], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0000000
                                                #; (lsu) s10 <-- 0x8000361e
      0x8000268c lw      s9, 68(sp)             #; sp  = 0x0011fd90, s9  <~~ Word[0x0011fdd4]
                                                #; (lsu) s9  <-- 8
      0x80002690 lw      s8, 72(sp)             #; sp  = 0x0011fd90, s8  <~~ Word[0x0011fdd8]
                                                #; (lsu) s8  <-- 16
      0x80002694 lw      s7, 76(sp)             #; sp  = 0x0011fd90, s7  <~~ Word[0x0011fddc]
                                                #; (lsu) s7  <-- 0
      0x80002698 lw      s6, 80(sp)             #; sp  = 0x0011fd90, s6  <~~ Word[0x0011fde0]
                                                #; (lsu) s6  <-- 0
      0x8000269c lw      s5, 84(sp)             #; sp  = 0x0011fd90, s5  <~~ Word[0x0011fde4]
                                                #; (lsu) s5  <-- -1
      0x800026a0 lw      s4, 88(sp)             #; sp  = 0x0011fd90, s4  <~~ Word[0x0011fde8]
                                                #; (lsu) s4  <-- 0x0011fe77
      0x800026a4 lw      s3, 92(sp)             #; sp  = 0x0011fd90, s3  <~~ Word[0x0011fdec]
                                                #; (lsu) s3  <-- 0x0011fe90
      0x800026a8 lw      s2, 96(sp)             #; sp  = 0x0011fd90, s2  <~~ Word[0x0011fdf0]
                                                #; (lsu) s2  <-- 0x80001f30
      0x800026ac lw      s1, 100(sp)            #; sp  = 0x0011fd90, s1  <~~ Word[0x0011fdf4]
                                                #; (lsu) s1  <-- 8
      0x800026b0 lw      s0, 104(sp)            #; sp  = 0x0011fd90, s0  <~~ Word[0x0011fdf8]
                                                #; (lsu) s0  <-- 0
      0x800026b4 lw      ra, 108(sp)            #; sp  = 0x0011fd90, ra  <~~ Word[0x0011fdfc]
      0x800026b8 addi    sp, sp, 112            #; sp  = 0x0011fd90, (wrb) sp  <-- 0x0011fe00
                                                #; (lsu) ra  <-- 0x80001660
      0x800026bc ret                            #; ra  = 0x80001660, goto 0x80001660
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001660 j       pc + 0x7c0             #; goto 0x80001e20
      0x80001e20 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x80001e24 li      s6, 37                 #; (wrb) s6  <-- 37
      0x80001e28 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80001e2c addi    s0, s10, 1             #; s10 = 0x8000361e, (wrb) s0  <-- 0x8000361f
      0x80001e30 j       pc - 0xa74             #; goto 0x800013bc
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800013bc addi    s10, s0, 2             #; s0  = 0x8000361f, (wrb) s10 <-- 0x80003621
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800013c0 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x800013c4 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800013c8 lbu     a0, 0(s0)              #; s0  = 0x8000361f, a0  <~~ Byte[0x8000361f]
                                                #; (lsu) a0  <-- 10
      0x800013cc beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x800013d0 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800013d4 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x800013d8 mv      a1, s4                 #; s4  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
      0x800013dc mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x800013e0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800013e4 jalr    s2                     #; s2  = 0x80001f30, (wrb) ra  <-- 0x800013e8, goto 0x80001f30
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001f30 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f34 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f38 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f3c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001f40 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003f40
      0x80001f44 addi    a3, a3, -1508          #; a3  = 0x80003f40, (wrb) a3  <-- 0x8000395c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001f48 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000395c, (wrb) a1  <-- 0x8000395c
      0x80001f4c lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 16
      0x80001f50 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x80001f54 sw      a5, 0(a1)              #; a1  = 0x8000395c, 17 ~~> Word[0x8000395c]
      0x80001f58 add     a4, a1, a4             #; a1  = 0x8000395c, a4  = 16, (wrb) a4  <-- 0x8000396c
      0x80001f5c sb      a0, 72(a4)             #; a4  = 0x8000396c, 10 ~~> Byte[0x800039b4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f60 lw      a4, 0(a1)              #; a1  = 0x8000395c, a4  <~~ Word[0x8000395c]
                                                #; (lsu) a4  <-- 17
      0x80001f64 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x80001f68 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x80001f6c addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x80001f70 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x80001f74 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x80001f78 bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f7c add     a0, a3, a2             #; a3  = 0x8000395c, a2  = 0, (wrb) a0  <-- 0x8000395c
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f80 addi    a2, a0, 72             #; a0  = 0x8000395c, (wrb) a2  <-- 0x800039a4
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f84 sw      zero, 12(a0)           #; a0  = 0x8000395c, 0 ~~> Word[0x80003968]
      0x80001f88 li      a3, 64                 #; (wrb) a3  <-- 64
      0x80001f8c sw      a3, 8(a0)              #; a0  = 0x8000395c, 64 ~~> Word[0x80003964]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f90 sw      zero, 20(a0)           #; a0  = 0x8000395c, 0 ~~> Word[0x80003970]
      0x80001f94 li      a3, 1                  #; (wrb) a3  <-- 1
      0x80001f98 sw      a3, 16(a0)             #; a0  = 0x8000395c, 1 ~~> Word[0x8000396c]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001f9c sw      zero, 28(a0)           #; a0  = 0x8000395c, 0 ~~> Word[0x80003978]
      0x80001fa0 sw      a2, 24(a0)             #; a0  = 0x8000395c, 0x800039a4 ~~> Word[0x80003974]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001fa4 lw      a2, 0(a1)              #; a1  = 0x8000395c, a2  <~~ Word[0x8000395c]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001fa8 addi    a3, a0, 8              #; a0  = 0x8000395c, (wrb) a3  <-- 0x80003964
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001fac sw      zero, 36(a0)           #; a0  = 0x8000395c, 0 ~~> Word[0x80003980]
                                                #; (lsu) a2  <-- 17
      0x80001fb0 sw      a2, 32(a0)             #; a0  = 0x8000395c, 17 ~~> Word[0x8000397c]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001fb4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003fb4
      0x80001fb8 addi    a0, a0, -1908          #; a0  = 0x80003fb4, (wrb) a0  <-- 0x80003840
      0x80001fbc sw      a3, 0(a0)              #; a0  = 0x80003840, 0x80003964 ~~> Word[0x80003840]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001fc0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003fc0
      0x80001fc4 addi    a0, a0, -1856          #; a0  = 0x80003fc0, (wrb) a0  <-- 0x80003880
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001fc8 lw      a2, 0(a0)              #; a0  = 0x80003880, a2  <~~ Word[0x80003880]
                                                #; (lsu) a2  <-- 0
      0x80001fcc beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001fc8
      0x80001fc8 lw      a2, 0(a0)              #; a0  = 0x80003880, a2  <~~ Word[0x80003880]
                                                #; (lsu) a2  <-- 0
      0x80001fcc beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001fc8
      0x80001fc8 lw      a2, 0(a0)              #; a0  = 0x80003880, a2  <~~ Word[0x80003880]
                                                #; (lsu) a2  <-- 0
      0x80001fcc beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001fc8
      0x80001fc8 lw      a2, 0(a0)              #; a0  = 0x80003880, a2  <~~ Word[0x80003880]
                                                #; (lsu) a2  <-- 1
      0x80001fcc beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001fd0 sw      zero, 0(a0)            #; a0  = 0x80003880, 0 ~~> Word[0x80003880]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001fd4 sw      zero, 0(a1)            #; a1  = 0x8000395c, 0 ~~> Word[0x8000395c]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001fd8 ret                            #; ra  = 0x800013e8, goto 0x800013e8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800013e8 addi    s0, s0, 1              #; s0  = 0x8000361f, (wrb) s0  <-- 0x80003620
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800013ec addi    s10, s10, 1            #; s10 = 0x80003621, (wrb) s10 <-- 0x80003622
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800013f0 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800013f4 lbu     a0, 0(s0)              #; s0  = 0x80003620, a0  <~~ Byte[0x80003620]
                                                #; (lsu) a0  <-- 0
      0x800013f8 bnez    a0, pc - 40            #; a0  = 0, not taken
      0x800013fc j       pc + 0xad8             #; goto 0x80001ed4
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x80001ed4 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x80001ed8 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001ee0
      0x80001ee0 li      a0, 0                  #; (wrb) a0  <-- 0
      0x80001ee4 mv      a1, s4                 #; s4  = 0x0011fe77, (wrb) a1  <-- 0x0011fe77
      0x80001ee8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001eec jalr    s2                     #; s2  = 0x80001f30, (wrb) ra  <-- 0x80001ef0, goto 0x80001f30
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001f30 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001fd8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001fd8 ret                            #; ra  = 0x80001ef0, goto 0x80001ef0
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x80001ef0 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x80001ef4 lw      s11, 60(sp)            #; sp  = 0x0011fe00, s11 <~~ Word[0x0011fe3c]
                                                #; (lsu) s11 <-- 0
      0x80001ef8 lw      s10, 64(sp)            #; sp  = 0x0011fe00, s10 <~~ Word[0x0011fe40]
                                                #; (lsu) s10 <-- 0
      0x80001efc lw      s9, 68(sp)             #; sp  = 0x0011fe00, s9  <~~ Word[0x0011fe44]
                                                #; (lsu) s9  <-- 0
      0x80001f00 lw      s8, 72(sp)             #; sp  = 0x0011fe00, s8  <~~ Word[0x0011fe48]
                                                #; (lsu) s8  <-- 0
      0x80001f04 lw      s7, 76(sp)             #; sp  = 0x0011fe00, s7  <~~ Word[0x0011fe4c]
                                                #; (lsu) s7  <-- 0
      0x80001f08 lw      s6, 80(sp)             #; sp  = 0x0011fe00, s6  <~~ Word[0x0011fe50]
                                                #; (lsu) s6  <-- 0x001000f0
      0x80001f0c lw      s5, 84(sp)             #; sp  = 0x0011fe00, s5  <~~ Word[0x0011fe54]
                                                #; (lsu) s5  <-- 4
      0x80001f10 lw      s4, 88(sp)             #; sp  = 0x0011fe00, s4  <~~ Word[0x0011fe58]
                                                #; (lsu) s4  <-- 8
      0x80001f14 lw      s3, 92(sp)             #; sp  = 0x0011fe00, s3  <~~ Word[0x0011fe5c]
                                                #; (lsu) s3  <-- 6
      0x80001f18 lw      s2, 96(sp)             #; sp  = 0x0011fe00, s2  <~~ Word[0x0011fe60]
                                                #; (lsu) s2  <-- 0x00100000
      0x80001f1c lw      s1, 100(sp)            #; sp  = 0x0011fe00, s1  <~~ Word[0x0011fe64]
                                                #; (lsu) s1  <-- 0
      0x80001f20 lw      s0, 104(sp)            #; sp  = 0x0011fe00, s0  <~~ Word[0x0011fe68]
                                                #; (lsu) s0  <-- 0x00100240
      0x80001f24 lw      ra, 108(sp)            #; sp  = 0x0011fe00, ra  <~~ Word[0x0011fe6c]
      0x80001f28 addi    sp, sp, 112            #; sp  = 0x0011fe00, (wrb) sp  <-- 0x0011fe70
                                                #; (lsu) ra  <-- 0x8000132c
      0x80001f2c ret                            #; ra  = 0x8000132c, goto 0x8000132c
; printf_ (printf.c:869)
      0x8000132c lw      ra, 12(sp)             #; sp  = 0x0011fe70, ra  <~~ Word[0x0011fe7c]
      0x80001330 addi    sp, sp, 48             #; sp  = 0x0011fe70, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80000edc
      0x80001334 ret                            #; ra  = 0x80000edc, goto 0x80000edc
; main (test_mat.c:0)
      0x80000edc auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003edc
      0x80000ee0 addi    a0, a0, -1588          #; a0  = 0x80003edc, (wrb) a0  <-- 0x800038a8
      0x80000ee4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800038a8]
                                                #; (f:lsu) ft0  <-- 0.0001
; main (test_mat.c:45)
      0x80000ee8 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0000000
                                                #; (acc) s9  <-- 0x05013c87
      0x80000eec fld     fs11, 64(sp)           #; fs11 <~~ Doub[0x0011fee0]
; main (test_mat.c:46)
      0x80000ef0 fld     fs10, 72(sp)           #; fs10 <~~ Doub[0x0011fee8], (f:lsu) fs11 <-- 0.0
      0x80000ef4 fld     fs9, 80(sp)            #; fs9  <~~ Doub[0x0011fef0], (f:lsu) fs10 <-- 0.0
      0x80000ef8 fld     fs8, 88(sp)            #; fs8  <~~ Doub[0x0011fef8], (f:lsu) fs9  <-- 0.0
      0x80000efc fld     fs7, 96(sp)            #; fs7  <~~ Doub[0x0011ff00], (f:lsu) fs8  <-- 0.0
      0x80000f00 fld     fs6, 104(sp)           #; fs6  <~~ Doub[0x0011ff08], (f:lsu) fs7  <-- 0.0
      0x80000f04 fld     fs5, 112(sp)           #; fs5  <~~ Doub[0x0011ff10], (f:lsu) fs6  <-- 0.0
      0x80000f08 fld     fs4, 120(sp)           #; fs4  <~~ Doub[0x0011ff18], (f:lsu) fs5  <-- 0.0
      0x80000f0c fld     fs3, 128(sp)           #; fs3  <~~ Doub[0x0011ff20], (f:lsu) fs4  <-- 0.0
      0x80000f10 fld     fs2, 136(sp)           #; fs2  <~~ Doub[0x0011ff28], (f:lsu) fs3  <-- 0.0
      0x80000f1c lw      s6, 160(sp)            #; sp  = 0x0011fea0, s6  <~~ Word[0x0011ff40]
      0x80000f14 fld     fs1, 144(sp)           #; fs1  <~~ Doub[0x0011ff30], (f:lsu) fs2  <-- 0.0
      0x80000f18 fld     fs0, 152(sp)           #; fs0  <~~ Doub[0x0011ff38], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) s6  <-- 0
      0x80000f20 lw      s5, 164(sp)            #; sp  = 0x0011fea0, s5  <~~ Word[0x0011ff44]
                                                #; (lsu) s5  <-- 0
      0x80000f24 lw      s4, 168(sp)            #; sp  = 0x0011fea0, s4  <~~ Word[0x0011ff48]
                                                #; (lsu) s4  <-- 0
      0x80000f28 lw      s3, 172(sp)            #; sp  = 0x0011fea0, s3  <~~ Word[0x0011ff4c]
                                                #; (lsu) s3  <-- 0
      0x80000f2c lw      s2, 176(sp)            #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff50]
                                                #; (lsu) s2  <-- 0
      0x80000f30 lw      s1, 180(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff54]
                                                #; (lsu) s1  <-- 0
      0x80000f34 lw      s0, 184(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff58]
                                                #; (lsu) s0  <-- 0
      0x80000f38 lw      ra, 188(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff5c]
      0x80000f3c addi    sp, sp, 192            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80003390
      0x80000f40 ret                            #; ra  = 0x80003390, goto 0x80003390
; ?? (start.S:184)
      0x80003390 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x80003394 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003394
      0x80003398 jalr    ra, ra, 524            #; ra  = 0x80003394, (wrb) ra  <-- 0x8000339c, goto 0x800035a0
; ?? (start_snitch.S:33)
      0x800035a0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x800035a4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x8000339c ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x800035a8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800035a8
      0x800035ac jalr    ra, ra, -1264          #; ra  = 0x800035a8, (wrb) ra  <-- 0x800035b0, goto 0x800030b8
; _snrt_barrier_reg_ptr (team.c:80)
      0x800030b8 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800030bc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800030c0 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800030c4 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800030c8 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x800030cc ret                            #; ra  = 0x800035b0, goto 0x800035b0
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x800035b0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x800035b4 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x800035b8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x800035bc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x8000339c
; ?? (start_snitch.S:40)
      0x800035c0 ret                            #; ra  = 0x8000339c, goto 0x8000339c
; ?? (start.S:195)
      0x8000339c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x800033a0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800033a0
      0x800033a4 jalr    ra, ra, 556            #; ra  = 0x800033a0, (wrb) ra  <-- 0x800033a8, goto 0x800035cc
; ?? (start_snitch.S:15)
      0x800035cc addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x800035d0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x800035d4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x800033a8 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x800035d8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800035d8
      0x800035dc jalr    ra, ra, -1344          #; ra  = 0x800035d8, (wrb) ra  <-- 0x800035e0, goto 0x80003098
; snrt_global_core_idx (team.c:32)
      0x80003098 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000309c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800030a0 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800030a4 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800030a8 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x800030ac csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x800030b0 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x800030b4 ret                            #; ra  = 0x800035e0, goto 0x800035e0
; ?? (start_snitch.S:20)
      0x800035e0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x800035e4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x800035e8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x800035ec bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x800033a8
; ?? (start_snitch.S:28)
      0x800035f0 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x800035f4 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x800035f8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800035f8
      0x800035fc addi    t1, t1, 584            #; t1  = 0x800035f8, (wrb) t1  <-- 0x80003840
; ?? (start_snitch.S:31)
      0x80003600 sw      t0, 0(t1)              #; t1  = 0x80003840, 1 ~~> Word[0x80003840]
; ?? (start_snitch.S:32)
      0x80003604 ret                            #; ra  = 0x800033a8, goto 0x800033a8
; ?? (start.S:198)
      0x800033a8 wfi                            #; 
                        tion 0 @ (12, 9405):
                          171
                          178
                           29
                           39
                      10.2281
                       0.2922
                       0.3084
                          1.0
                          1.0
                            0
                       1.7955
                       3.0513
                       0.1303
                       0.1218
                       0.9346
                         9394
                       0.4225
