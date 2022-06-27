; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x800030e0
      0x00001014 jalr    t0                     #; t0  = 0x800030e0, (wrb) ra  <-- 4120, goto 0x800030e0
; ?? (start.S:20)
      0x800030e0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x800040e0
; ?? (start.S:21)
      0x800030e4 addi    gp, gp, -280           #; gp  = 0x800040e0, (wrb) gp  <-- 0x80003fc8
; ?? (start.S:28)
      0x800030e8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800030e8
      0x800030ec jalr    ra, ra, 964            #; ra  = 0x800030e8, (wrb) ra  <-- 0x800030f0, goto 0x800034ac
; ?? (start_snitch.S:16)
      0x800034ac mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x800034b0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x800034b4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x800034b8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x800034bc lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x800034c0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x800034c4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x800034c8 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x800034cc mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x800034d0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x800034d4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x800034d8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x800034dc ret                            #; ra  = 0x800030f0, goto 0x800030f0
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x800030f0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x800030f4 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x800030f8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800030f8
      0x800030fc jalr    ra, ra, 1036           #; ra  = 0x800030f8, (wrb) ra  <-- 0x80003100, goto 0x80003504
; ?? (start_snitch.S:48)
      0x80003504 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80003508 ret                            #; ra  = 0x80003100, goto 0x80003100
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x80003100 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x80003104 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x80003108 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x8000310c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x80003110 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x80003114 auipc   t0, 0x1                #; (wrb) t0  <-- 0x80004114
      0x80003118 addi    t0, t0, -2020          #; t0  = 0x80004114, (wrb) t0  <-- 0x80003930
; ?? (start.S:49)
      0x8000311c auipc   t1, 0x1                #; (wrb) t1  <-- 0x8000411c
      0x80003120 addi    t1, t1, -2024          #; t1  = 0x8000411c, (wrb) t1  <-- 0x80003934
; ?? (start.S:50)
      0x80003124 bge     t0, t1, pc + 16        #; t0  = 0x80003930, t1  = 0x80003934, not taken
; ?? (start.S:51)
      0x80003128 sw      zero, 0(t0)            #; t0  = 0x80003930, 0 ~~> Word[0x80003930]
; ?? (start.S:52)
      0x8000312c addi    t0, t0, 4              #; t0  = 0x80003930, (wrb) t0  <-- 0x80003934
; ?? (start.S:53)
      0x80003130 blt     t0, t1, pc - 8         #; t0  = 0x80003934, t1  = 0x80003934, not taken
; ?? (start.S:58)
      0x80003134 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x80003138 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x8000313c beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x80003140 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x80003144 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x80003148 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x8000314c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x80003150 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x80003154 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x80003158 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x8000315c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x80003160 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x80003164 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x80003168 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x8000316c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x80003170 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x80003174 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x80003178 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x8000317c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x80003180 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x80003184 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x80003188 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x8000318c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x80003190 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x80003194 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x80003198 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x8000319c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x800031a0 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x800031a4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x800031a8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x800031ac fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x800031b0 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x800031b4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x800031b8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x800031bc fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x800031c0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x800031c4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x800031c8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800031c8
      0x800031cc lw      t0, 900(t0)            #; t0  = 0x800031c8, t0  <~~ Word[0x8000354c]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x800031d0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x800031d4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x800031d8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800031d8
      0x800031dc lw      t2, 880(t2)            #; t2  = 0x800031d8, t2  <~~ Word[0x80003548]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x800031e0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x800031e4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x800031e8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x800031ec sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x800031f0 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x800031f4 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x800031f8 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x800031fc sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x80003200 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003200
      0x80003204 addi    t0, t0, 1480           #; t0  = 0x80003200, (wrb) t0  <-- 0x800037c8
; ?? (start.S:125)
      0x80003208 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003208
      0x8000320c addi    t1, t1, 1472           #; t1  = 0x80003208, (wrb) t1  <-- 0x800037c8
; ?? (start.S:126)
      0x80003210 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80003210
      0x80003214 addi    t2, t2, 1464           #; t2  = 0x80003210, (wrb) t2  <-- 0x800037c8
; ?? (start.S:127)
      0x80003218 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80003218
      0x8000321c addi    t3, t3, 1472           #; t3  = 0x80003218, (wrb) t3  <-- 0x800037d8
; ?? (start.S:128)
      0x80003220 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x800037c8, (wrb) sp  <-- 0x80123738
; ?? (start.S:129)
      0x80003224 sub     sp, sp, t1             #; sp  = 0x80123738, t1  = 0x800037c8, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x80003228 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x800037c8, (wrb) sp  <-- 0x80123738
; ?? (start.S:131)
      0x8000322c sub     sp, sp, t3             #; sp  = 0x80123738, t3  = 0x800037d8, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x80003230 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x80003234 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x80003238 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x8000323c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x80003240 bge     t0, t1, pc + 24        #; t0  = 0x800037c8, t1  = 0x800037c8, taken, goto 0x80003258
; ?? (start.S:147)
      0x80003258 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003258
      0x8000325c addi    t0, t0, 1392           #; t0  = 0x80003258, (wrb) t0  <-- 0x800037c8
; ?? (start.S:148)
      0x80003260 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003260
      0x80003264 addi    t1, t1, 1400           #; t1  = 0x80003260, (wrb) t1  <-- 0x800037d8
; ?? (start.S:149)
      0x80003268 bge     t0, t1, pc + 20        #; t0  = 0x800037c8, t1  = 0x800037d8, not taken
; ?? (start.S:150)
      0x8000326c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x80003270 addi    t0, t0, 4              #; t0  = 0x800037c8, (wrb) t0  <-- 0x800037cc
; ?? (start.S:152)
      0x80003274 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x80003278 blt     t0, t2, pc - 12        #; t0  = 0x800037cc, t2  = 0x800037c8, not taken
; ?? (start.S:158)
      0x8000327c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x80003280 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x80003284 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x80003288 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x8000328c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x80003290 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x80003294 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003294
      0x80003298 jalr    ra, ra, -1968          #; ra  = 0x80003294, (wrb) ra  <-- 0x8000329c, goto 0x80002ae4
; _snrt_init_team (start.c:49)
      0x80002ae4 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x80002ae8 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x80002aec lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x80002af0 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x80002af4 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x80002af8 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x80002afc lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x80002b00 mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x80002b04 mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x80002b08 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x80002b0c csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x80002b10 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x80002b14 divu    a0, a0, t0             #; a0  = 0, t0  = 8
                                                #; (acc) a6  <-- 0x00a7a823
; _snrt_init_team (start.c:54)
      0x80002b18 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x80002b1c sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x80002b20 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x80002b24 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x80002b28 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x80002b2c lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x80002b30 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x80002b34 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x80002b38 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x80002b3c lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x80002b40 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x80002b44 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x80002b48 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x80002b4c sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x80002b50 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x80002b54 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x80002b58 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x80002b5c lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x80002b60 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x80002b64 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x80002b68 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x80002b6c sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x80002b70 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x80002b74 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x80002b78 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x80002b7c add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x80002b80 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x80002b84 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x80002b88 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x80002b8c add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x80002b90 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x80002b94 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x80002b98 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x80002b9c sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x80002ba0 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x80002ba4 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002ba8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002bac sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x80002bb0 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002bb4 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x80002bb8 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x80002bbc sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x80002bc0 remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x80002bc4 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x80002bc8 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
                                                #; (acc) tp  <-- 0x00a5a223
      0x80002bcc sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x80002bd0 li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x80002bd4 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x80002bd8 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003bd8
      0x80002bdc addi    a1, a1, -676           #; a1  = 0x80003bd8, (wrb) a1  <-- 0x80003934
      0x80002be0 add     a0, a0, a1             #; a0  = 0, a1  = 0x80003934, (wrb) a0  <-- 0x80003934
      0x80002be4 sw      zero, 0(a0)            #; a0  = 0x80003934, 0 ~~> Word[0x80003934]
; _snrt_init_team (start.c:86)
      0x80002be8 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x80002bec sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x80002bf0 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x80002bf4 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x80002bf8 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x80002bfc sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x80002c00 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x80002c04 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x80002c08 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x80002c0c sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x80002c10 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x80002c14 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x80002c18 lw      a0, 0(a1)              #; a1  = 0x80003934, a0  <~~ Word[0x80003934]
                                                #; (lsu) a0  <-- 0
      0x80002c1c addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x80002c20 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x80002c24 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x80002c28 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x80002c2c sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x80002c30 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002c34 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002c38 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x80002c3c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002c40 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002c44 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x80002c48 ret                            #; ra  = 0x8000329c, goto 0x8000329c
; ?? (start.S:165)
      0x8000329c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x800032a0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x800032a4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x800032a8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x800032ac lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x800032b0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x800032b4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800032b4
      0x800032b8 addi    t0, t0, 60             #; t0  = 0x800032b4, (wrb) t0  <-- 0x800032f0
; ?? (start.S:175)
      0x800032bc csrw    mtvec, t0              #; t0  = 0x800032f0, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x800032c0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800032c0
      0x800032c4 jalr    ra, ra, 544            #; ra  = 0x800032c0, (wrb) ra  <-- 0x800032c8, goto 0x800034e0
; ?? (start_snitch.S:33)
      0x800034e0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x800034e4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800032c8 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x800034e8 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x800024e8
      0x800034ec jalr    ra, ra, 1924           #; ra  = 0x800024e8, (wrb) ra  <-- 0x800034f0, goto 0x80002c6c
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002c6c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002c70 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002c74 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002c78 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002c7c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002c80 ret                            #; ra  = 0x800034f0, goto 0x800034f0
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x800034f0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x800034f4 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x800034f8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x800034fc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x800032c8
; ?? (start_snitch.S:40)
      0x80003500 ret                            #; ra  = 0x800032c8, goto 0x800032c8
; ?? (start.S:183)
      0x800032c8 auipc   ra, 0xffffd            #; (wrb) ra  <-- 0x800002c8
      0x800032cc jalr    ra, ra, 876            #; ra  = 0x800002c8, (wrb) ra  <-- 0x800032d0, goto 0x80000634
; main (test_mat.c:14)
      0x80000634 addi    sp, sp, -48            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff30
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (test_mat.c:15)
      0x80000638 sw      ra, 44(sp)             #; sp  = 0x0011ff30, 0x800032d0 ~~> Word[0x0011ff5c]
      0x8000063c sw      s0, 40(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff58]
      0x80000640 sw      s1, 36(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff54]
      0x80000644 sw      s2, 32(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff50]
      0x80000648 sw      s3, 28(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff4c]
      0x8000064c sw      s4, 24(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff48]
      0x80000650 sw      s5, 20(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff44]
      0x80000654 sw      s6, 16(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff40]
      0x8000065c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000658 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff38]
      0x80000660 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000664 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
; main (test_mat.c:0)
      0x80000668 li      a0, 0                  #; (wrb) a0  <-- 0
                                                #; (lsu) a1  <-- 0
; main (test_mat.c:15)
      0x8000066c bnez    a1, pc + 2040          #; a1  = 0, not taken
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (test_mat.c:23)
      0x80000670 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000674 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000678 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000067c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in main (test_mat.c:23)
      0x80000680 lw      s0, 88(a0)             #; a0  = 0x0011ff70, s0  <~~ Word[0x0011ffc8]
                                                #; (lsu) s0  <-- 0x00100000
      0x80000684 lw      a1, 80(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
                                                #; (lsu) a1  <-- 0x00100000
      0x80000688 lw      a3, 84(a0)             #; a0  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
      0x8000068c addi    a2, s0, 240            #; s0  = 0x00100000, (wrb) a2  <-- 0x001000f0
                                                #; (lsu) a3  <-- 0x0001df30
      0x80000690 add     a1, a3, a1             #; a3  = 0x0001df30, a1  = 0x00100000, (wrb) a1  <-- 0x0011df30
      0x80000694 bgeu    a1, a2, pc + 44        #; a1  = 0x0011df30, a2  = 0x001000f0, taken, goto 0x800006c0
; snrt_l1alloc (alloc.c:33)
;  in main (test_mat.c:23)
      0x800006c0 mv      s2, s0                 #; s0  = 0x00100000, (wrb) s2  <-- 0x00100000
; snrt_l1alloc (alloc.c:34)
;  in main (test_mat.c:23)
      0x800006c4 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x001000f0 ~~> Word[0x0011ffc8]
; snrt_l1alloc (alloc.c:25)
;  in main (test_mat.c:24)
      0x800006c8 mv      s0, a2                 #; a2  = 0x001000f0, (wrb) s0  <-- 0x001000f0
      0x800006cc addi    a2, s0, 336            #; s0  = 0x001000f0, (wrb) a2  <-- 0x00100240
      0x800006d0 bgeu    a1, a2, pc - 44        #; a1  = 0x0011df30, a2  = 0x00100240, taken, goto 0x800006a4
; snrt_l1alloc (alloc.c:33)
;  in main (test_mat.c:24)
      0x800006a4 mv      s6, s0                 #; s0  = 0x001000f0, (wrb) s6  <-- 0x001000f0
; snrt_l1alloc (alloc.c:34)
;  in main (test_mat.c:24)
      0x800006a8 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x00100240 ~~> Word[0x0011ffc8]
; snrt_l1alloc (alloc.c:25)
;  in main (test_mat.c:25)
      0x800006ac mv      s0, a2                 #; a2  = 0x00100240, (wrb) s0  <-- 0x00100240
      0x800006b0 addi    a2, s0, 280            #; s0  = 0x00100240, (wrb) a2  <-- 0x00100358
      0x800006b4 bltu    a1, a2, pc + 44        #; a1  = 0x0011df30, a2  = 0x00100358, not taken
; snrt_l1alloc (alloc.c:34)
;  in main (test_mat.c:25)
      0x800006b8 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x00100358 ~~> Word[0x0011ffc8]
      0x800006bc j       pc + 0x28              #; goto 0x800006e4
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x800006e4 srli    a0, s2, 20             #; s2  = 0x00100000, (wrb) a0  <-- 1
      0x800006e8 snez    a0, a0                 #; a0  = 1, (wrb) a0  <-- 1
      0x800006ec lui     a1, 0x120              #; (wrb) a1  <-- 0x00120000
      0x800006f0 addi    a1, a1, -231           #; a1  = 0x00120000, (wrb) a1  <-- 0x0011ff19
      0x800006f4 sltu    a1, s2, a1             #; s2  = 0x00100000, a1  = 0x0011ff19, (wrb) a1  <-- 1
      0x800006f8 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
; init_data (test_mat.c:0)
;  in main (test_mat.c:27)
      0x800006fc auipc   a6, 0x3                #; (wrb) a6  <-- 0x800036fc
      0x80000700 addi    a6, a6, 220            #; a6  = 0x800036fc, (wrb) a6  <-- 0x800037d8
      0x80000704 beqz    a0, pc + 404           #; a0  = 1, not taken
      0x80000708 li      a0, 8                  #; (wrb) a0  <-- 8
      0x8000070c li      a1, 29                 #; (wrb) a1  <-- 29
; init_data (test_mat.c:9)
;  in main (test_mat.c:27)
      0x80000710 li      a2, 64                 #; (wrb) a2  <-- 64
      0x80000714 li      a3, 192                #; (wrb) a3  <-- 192
      0x80000718 scfgw   a1, a2                 #; a1  = 29, a2  = 64
      0x8000071c scfgw   a0, a3                 #; a0  = 8, a3  = 192
      0x80000720 li      a0, 32                 #; (wrb) a0  <-- 32
      0x80000724 scfgw   zero, a0               #; a0  = 32
      0x80000728 scfgwi  s2, 896                #; s2  = 0x00100000
      0x8000072c csrrsi  a0, ssr, 1             #; 
; init_data (test_mat.c:0)
;  in main (test_mat.c:27)
      0x80000734 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003734
      0x80000738 addi    a0, a0, 172            #; a0  = 0x80003734, (wrb) a0  <-- 0x800037e0
      0x80000730 fld     ft3, 0(a6)             #; ft3  <~~ Doub[0x800037d8]
      0x8000073c fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x800037e0]
                                                #; (f:lsu) ft3  <-- 3.141
      0x80000740 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003740
      0x80000744 addi    a0, a0, 168            #; a0  = 0x80003740, (wrb) a0  <-- 0x800037e8
                                                #; (f:lsu) ft4  <-- 6.282
      0x8000074c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000374c
      0x80000748 fld     ft5, 0(a0)             #; ft5  <~~ Doub[0x800037e8]
      0x80000750 addi    a0, a0, 164            #; a0  = 0x8000374c, (wrb) a0  <-- 0x800037f0
                                                #; (f:lsu) ft5  <-- 9.423
      0x80000754 fld     ft6, 0(a0)             #; ft6  <~~ Doub[0x800037f0]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000758 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.141, ft3  = 3.141
      0x8000075c fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282, (f:fpu) ft0  <-- 3.141
                                                #; (f:fpu) ft0  <-- 6.282
                                                #; (f:lsu) ft6  <-- 12.564
; init_data (test_mat.c:0)
;  in main (test_mat.c:27)
      0x80000768 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003768
      0x80000760 fsgnj.d ft0, ft5, ft5          #; ft5  = 9.423, ft5  = 9.423
      0x8000076c addi    a0, a0, 144            #; a0  = 0x80003768, (wrb) a0  <-- 0x800037f8
      0x80000764 fsgnj.d ft0, ft6, ft6          #; ft6  = 12.564, ft6  = 12.564, (f:fpu) ft0  <-- 9.423
                                                #; (f:fpu) ft0  <-- 12.564
      0x80000774 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003774
      0x80000778 addi    a0, a0, 140            #; a0  = 0x80003774, (wrb) a0  <-- 0x80003800
      0x80000770 fld     ft7, 0(a0)             #; ft7  <~~ Doub[0x800037f8]
      0x8000077c fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x80003800]
                                                #; (f:lsu) ft7  <-- 15.705
      0x80000780 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003780
      0x80000784 addi    a0, a0, 136            #; a0  = 0x80003780, (wrb) a0  <-- 0x80003808
                                                #; (f:lsu) fa0  <-- 18.846
      0x8000078c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000378c
      0x80000788 fld     fa1, 0(a0)             #; fa1  <~~ Doub[0x80003808]
      0x80000790 addi    a0, a0, 132            #; a0  = 0x8000378c, (wrb) a0  <-- 0x80003810
                                                #; (f:lsu) fa1  <-- 21.9870000
      0x80000794 fld     fa2, 0(a0)             #; fa2  <~~ Doub[0x80003810]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000798 fsgnj.d ft0, ft7, ft7          #; ft7  = 15.705, ft7  = 15.705
      0x8000079c fsgnj.d ft0, fa0, fa0          #; fa0  = 18.846, fa0  = 18.846, (f:fpu) ft0  <-- 15.705
                                                #; (f:fpu) ft0  <-- 18.846
                                                #; (f:lsu) fa2  <-- 25.128
; init_data (test_mat.c:0)
;  in main (test_mat.c:27)
      0x800007a8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800037a8
      0x800007a0 fsgnj.d ft0, fa1, fa1          #; fa1  = 21.9870000, fa1  = 21.9870000
      0x800007ac addi    a0, a0, 112            #; a0  = 0x800037a8, (wrb) a0  <-- 0x80003818
      0x800007a4 fsgnj.d ft0, fa2, fa2          #; fa2  = 25.128, fa2  = 25.128, (f:fpu) ft0  <-- 21.9870000
                                                #; (f:fpu) ft0  <-- 25.128
      0x800007b4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800037b4
      0x800007b8 addi    a0, a0, 108            #; a0  = 0x800037b4, (wrb) a0  <-- 0x80003820
      0x800007b0 fld     fa3, 0(a0)             #; fa3  <~~ Doub[0x80003818]
      0x800007bc fld     fa4, 0(a0)             #; fa4  <~~ Doub[0x80003820]
                                                #; (f:lsu) fa3  <-- 28.269
      0x800007c0 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800037c0
      0x800007c4 addi    a0, a0, 104            #; a0  = 0x800037c0, (wrb) a0  <-- 0x80003828
                                                #; (f:lsu) fa4  <-- 31.41
      0x800007cc auipc   a0, 0x3                #; (wrb) a0  <-- 0x800037cc
      0x800007c8 fld     fa5, 0(a0)             #; fa5  <~~ Doub[0x80003828]
      0x800007d0 addi    a0, a0, 100            #; a0  = 0x800037cc, (wrb) a0  <-- 0x80003830
                                                #; (f:lsu) fa5  <-- 34.551
      0x800007d4 fld     fa6, 0(a0)             #; fa6  <~~ Doub[0x80003830]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x800007d8 fsgnj.d ft0, fa3, fa3          #; fa3  = 28.269, fa3  = 28.269
      0x800007dc fsgnj.d ft0, fa4, fa4          #; fa4  = 31.41, fa4  = 31.41, (f:fpu) ft0  <-- 28.269
                                                #; (f:fpu) ft0  <-- 31.41
                                                #; (f:lsu) fa6  <-- 37.692
; init_data (test_mat.c:0)
;  in main (test_mat.c:27)
      0x800007e8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800037e8
      0x800007e0 fsgnj.d ft0, fa5, fa5          #; fa5  = 34.551, fa5  = 34.551
      0x800007ec addi    a0, a0, 80             #; a0  = 0x800037e8, (wrb) a0  <-- 0x80003838
      0x800007e4 fsgnj.d ft0, fa6, fa6          #; fa6  = 37.692, fa6  = 37.692, (f:fpu) ft0  <-- 34.551
                                                #; (f:fpu) ft0  <-- 37.692
      0x800007f4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800037f4
      0x800007f8 addi    a0, a0, 76             #; a0  = 0x800037f4, (wrb) a0  <-- 0x80003840
      0x800007f0 fld     fa5, 0(a0)             #; fa5  <~~ Doub[0x80003838]
      0x800007fc fld     fa6, 0(a0)             #; fa6  <~~ Doub[0x80003840]
                                                #; (f:lsu) fa5  <-- 40.833
      0x80000800 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003800
      0x80000804 addi    a0, a0, 72             #; a0  = 0x80003800, (wrb) a0  <-- 0x80003848
                                                #; (f:lsu) fa6  <-- 43.9740000
      0x8000080c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000380c
      0x80000808 fld     fa7, 0(a0)             #; fa7  <~~ Doub[0x80003848]
      0x80000810 addi    a0, a0, 68             #; a0  = 0x8000380c, (wrb) a0  <-- 0x80003850
                                                #; (f:lsu) fa7  <-- 47.115
      0x80000814 fld     ft8, 0(a0)             #; ft8  <~~ Doub[0x80003850]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000818 fsgnj.d ft0, fa5, fa5          #; fa5  = 40.833, fa5  = 40.833
      0x8000081c fsgnj.d ft0, fa6, fa6          #; fa6  = 43.9740000, fa6  = 43.9740000, (f:fpu) ft0  <-- 40.833
                                                #; (f:fpu) ft0  <-- 43.9740000
                                                #; (f:lsu) ft8  <-- 50.256
; init_data (test_mat.c:0)
;  in main (test_mat.c:27)
      0x80000828 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003828
      0x80000820 fsgnj.d ft0, fa7, fa7          #; fa7  = 47.115, fa7  = 47.115
      0x8000082c addi    a0, a0, 48             #; a0  = 0x80003828, (wrb) a0  <-- 0x80003858
      0x80000824 fsgnj.d ft0, ft8, ft8          #; ft8  = 50.256, ft8  = 50.256, (f:fpu) ft0  <-- 47.115
                                                #; (f:fpu) ft0  <-- 50.256
      0x80000834 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003834
      0x80000838 addi    a0, a0, 44             #; a0  = 0x80003834, (wrb) a0  <-- 0x80003860
      0x80000830 fld     fa5, 0(a0)             #; fa5  <~~ Doub[0x80003858]
      0x8000083c fld     fa6, 0(a0)             #; fa6  <~~ Doub[0x80003860]
                                                #; (f:lsu) fa5  <-- 53.397
      0x80000840 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003840
      0x80000844 addi    a0, a0, 40             #; a0  = 0x80003840, (wrb) a0  <-- 0x80003868
                                                #; (f:lsu) fa6  <-- 56.538
      0x8000084c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000384c
      0x80000848 fld     fa7, 0(a0)             #; fa7  <~~ Doub[0x80003868]
      0x80000850 addi    a0, a0, 36             #; a0  = 0x8000384c, (wrb) a0  <-- 0x80003870
                                                #; (f:lsu) fa7  <-- 59.679
      0x80000854 fld     ft8, 0(a0)             #; ft8  <~~ Doub[0x80003870]
; init_data (test_mat.c:10)
;  in main (test_mat.c:27)
      0x80000858 fsgnj.d ft0, fa5, fa5          #; fa5  = 53.397, fa5  = 53.397
      0x8000085c fsgnj.d ft0, fa6, fa6          #; fa6  = 56.538, fa6  = 56.538, (f:fpu) ft0  <-- 53.397
                                                #; (f:fpu) ft0  <-- 56.538
                                                #; (f:lsu) ft8  <-- 62.82
      0x80000860 fsgnj.d ft0, fa7, fa7          #; fa7  = 59.679, fa7  = 59.679
      0x80000864 fsgnj.d ft0, ft8, ft8          #; ft8  = 62.82, ft8  = 62.82, (f:fpu) ft0  <-- 59.679
      0x80000868 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.141, ft3  = 3.141, (f:fpu) ft0  <-- 62.82
      0x8000086c fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282, (f:fpu) ft0  <-- 3.141
                                                #; (f:fpu) ft0  <-- 6.282
      0x80000870 fsgnj.d ft0, ft5, ft5          #; ft5  = 9.423, ft5  = 9.423
      0x80000874 fsgnj.d ft0, ft6, ft6          #; ft6  = 12.564, ft6  = 12.564, (f:fpu) ft0  <-- 9.423
      0x80000878 fsgnj.d ft0, ft7, ft7          #; ft7  = 15.705, ft7  = 15.705, (f:fpu) ft0  <-- 12.564
      0x8000087c fsgnj.d ft0, fa0, fa0          #; fa0  = 18.846, fa0  = 18.846, (f:fpu) ft0  <-- 15.705
                                                #; (f:fpu) ft0  <-- 18.846
      0x80000880 fsgnj.d ft0, fa1, fa1          #; fa1  = 21.9870000, fa1  = 21.9870000
      0x80000884 fsgnj.d ft0, fa2, fa2          #; fa2  = 25.128, fa2  = 25.128, (f:fpu) ft0  <-- 21.9870000
      0x80000888 fsgnj.d ft0, fa3, fa3          #; fa3  = 28.269, fa3  = 28.269, (f:fpu) ft0  <-- 25.128
      0x8000088c fsgnj.d ft0, fa4, fa4          #; fa4  = 31.41, fa4  = 31.41, (f:fpu) ft0  <-- 28.269
                                                #; (f:fpu) ft0  <-- 31.41
; init_data (test_mat.c:0)
;  in main (test_mat.c:27)
      0x80000894 j       pc + 0x54              #; goto 0x800008e8
      0x80000890 csrrci  a0, ssr, 1             #; 
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x800008e8 srli    a0, s6, 20             #; s6  = 0x001000f0, (wrb) a0  <-- 1
      0x800008ec snez    a0, a0                 #; a0  = 1, (wrb) a0  <-- 1
      0x800008f0 lui     a1, 0x120              #; (wrb) a1  <-- 0x00120000
      0x800008f4 addi    a1, a1, -327           #; a1  = 0x00120000, (wrb) a1  <-- 0x0011feb9
      0x800008f8 sltu    a1, s6, a1             #; s6  = 0x001000f0, a1  = 0x0011feb9, (wrb) a1  <-- 1
      0x800008fc and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80000900 beqz    a0, pc + 124           #; a0  = 1, not taken
; init_data (test_mat.c:0)
;  in main (test_mat.c:28)
      0x80000904 li      a1, 0                  #; (wrb) a1  <-- 0
      0x80000908 li      a0, 8                  #; (wrb) a0  <-- 8
      0x8000090c li      a2, 41                 #; (wrb) a2  <-- 41
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000910 li      a3, 64                 #; (wrb) a3  <-- 64
      0x80000914 scfgw   a2, a3                 #; a2  = 41, a3  = 64
      0x80000918 li      a2, 192                #; (wrb) a2  <-- 192
      0x8000091c scfgw   a0, a2                 #; a0  = 8, a2  = 192
      0x80000920 li      a0, 32                 #; (wrb) a0  <-- 32
      0x80000924 scfgw   zero, a0               #; a0  = 32
      0x80000928 scfgwi  s6, 896                #; s6  = 0x001000f0
      0x8000092c csrrsi  a0, ssr, 1             #; 
      0x80000930 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000934 li      a3, 1                  #; (wrb) a3  <-- 1
      0x8000093c lui     a0, 0xccccd            #; (wrb) a0  <-- 0xccccd000
      0x80000938 fld     ft3, 0(a6)             #; ft3  <~~ Doub[0x800037d8]
      0x80000940 addi    a0, a0, -819           #; a0  = 0xccccd000, (wrb) a0  <-- 0xcccccccd
      0x80000944 li      a4, 20                 #; (wrb) a4  <-- 20
                                                #; (f:lsu) ft3  <-- 3.141
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 0, a0  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 0, (wrb) a5  <-- 0
      0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 1, a5  = 0, (wrb) a5  <-- 1
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 1
                                                #; (f:fpu) ft4  <-- 1.0
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
                                                #; (f:fpu) ft4  <-- 3.141
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80000968 addi    a2, a2, -1             #; a2  = 42, (wrb) a2  <-- 41
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
      0x8000096c addi    a3, a3, 1              #; a3  = 1, (wrb) a3  <-- 2
                                                #; (f:fpu) ft0  <-- 3.141
      0x80000970 bnez    a2, pc - 40            #; a2  = 41, taken, goto 0x80000948
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 1, a0  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 0, (wrb) a5  <-- 0
      0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 2, a5  = 0, (wrb) a5  <-- 2
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 2
                                                #; (f:fpu) ft4  <-- 2.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 41, (wrb) a2  <-- 40
      0x8000096c addi    a3, a3, 1              #; a3  = 2, (wrb) a3  <-- 3
      0x80000970 bnez    a2, pc - 40            #; a2  = 40, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 6.282
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 2, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
                                                #; (f:fpu) ft0  <-- 6.282
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 1, (wrb) a5  <-- 0
      0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 3, a5  = 0, (wrb) a5  <-- 3
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 3
                                                #; (f:fpu) ft4  <-- 3.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 40, (wrb) a2  <-- 39
      0x8000096c addi    a3, a3, 1              #; a3  = 3, (wrb) a3  <-- 4
      0x80000970 bnez    a2, pc - 40            #; a2  = 39, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 9.423
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 3, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 9.423, ft4  = 9.423
                                                #; (f:fpu) ft0  <-- 9.423
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 2, (wrb) a5  <-- 0
      0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 4, a5  = 0, (wrb) a5  <-- 4
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 4
                                                #; (f:fpu) ft4  <-- 4.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 39, (wrb) a2  <-- 38
      0x8000096c addi    a3, a3, 1              #; a3  = 4, (wrb) a3  <-- 5
      0x80000970 bnez    a2, pc - 40            #; a2  = 38, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 12.564
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 4, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564
                                                #; (f:fpu) ft0  <-- 12.564
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 3, (wrb) a5  <-- 0
      0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 5, a5  = 0, (wrb) a5  <-- 5
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 5
                                                #; (f:fpu) ft4  <-- 5.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 38, (wrb) a2  <-- 37
      0x8000096c addi    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 6
      0x80000970 bnez    a2, pc - 40            #; a2  = 37, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 15.705
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 5, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 15.705, ft4  = 15.705
                                                #; (f:fpu) ft0  <-- 15.705
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 4, (wrb) a5  <-- 0
      0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 6, a5  = 0, (wrb) a5  <-- 6
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 6
                                                #; (f:fpu) ft4  <-- 6.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 37, (wrb) a2  <-- 36
      0x8000096c addi    a3, a3, 1              #; a3  = 6, (wrb) a3  <-- 7
      0x80000970 bnez    a2, pc - 40            #; a2  = 36, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 18.846
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 6, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846
                                                #; (f:fpu) ft0  <-- 18.846
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 4, (wrb) a5  <-- 0
      0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 7, a5  = 0, (wrb) a5  <-- 7
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 7
                                                #; (f:fpu) ft4  <-- 7.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 36, (wrb) a2  <-- 35
      0x8000096c addi    a3, a3, 1              #; a3  = 7, (wrb) a3  <-- 8
      0x80000970 bnez    a2, pc - 40            #; a2  = 35, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 21.9870000
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 7, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 21.9870000, ft4  = 21.9870000
                                                #; (f:fpu) ft0  <-- 21.9870000
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 5, (wrb) a5  <-- 0
      0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 8, a5  = 0, (wrb) a5  <-- 8
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 8
                                                #; (f:fpu) ft4  <-- 8.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 7, (wrb) a1  <-- 8
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 35, (wrb) a2  <-- 34
      0x8000096c addi    a3, a3, 1              #; a3  = 8, (wrb) a3  <-- 9
      0x80000970 bnez    a2, pc - 40            #; a2  = 34, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 25.128
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 8, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128
                                                #; (f:fpu) ft0  <-- 25.128
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 6, (wrb) a5  <-- 0
      0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 9, a5  = 0, (wrb) a5  <-- 9
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 9
                                                #; (f:fpu) ft4  <-- 9.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 8, (wrb) a1  <-- 9
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 34, (wrb) a2  <-- 33
      0x8000096c addi    a3, a3, 1              #; a3  = 9, (wrb) a3  <-- 10
      0x80000970 bnez    a2, pc - 40            #; a2  = 33, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 28.269
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 9, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 28.269, ft4  = 28.269
                                                #; (f:fpu) ft0  <-- 28.269
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 7, (wrb) a5  <-- 0
      0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 10, a5  = 0, (wrb) a5  <-- 10
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 10
                                                #; (f:fpu) ft4  <-- 10.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 9, (wrb) a1  <-- 10
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 33, (wrb) a2  <-- 32
      0x8000096c addi    a3, a3, 1              #; a3  = 10, (wrb) a3  <-- 11
      0x80000970 bnez    a2, pc - 40            #; a2  = 32, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 31.41
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 10, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41
                                                #; (f:fpu) ft0  <-- 31.41
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 8, (wrb) a5  <-- 0
      0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 11, a5  = 0, (wrb) a5  <-- 11
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 11
                                                #; (f:fpu) ft4  <-- 11.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 10, (wrb) a1  <-- 11
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 32, (wrb) a2  <-- 31
      0x8000096c addi    a3, a3, 1              #; a3  = 11, (wrb) a3  <-- 12
      0x80000970 bnez    a2, pc - 40            #; a2  = 31, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 34.551
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 11, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 34.551, ft4  = 34.551
                                                #; (f:fpu) ft0  <-- 34.551
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 8, (wrb) a5  <-- 0
      0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 12, a5  = 0, (wrb) a5  <-- 12
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 12
                                                #; (f:fpu) ft4  <-- 12.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 11, (wrb) a1  <-- 12
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 12.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 31, (wrb) a2  <-- 30
      0x8000096c addi    a3, a3, 1              #; a3  = 12, (wrb) a3  <-- 13
      0x80000970 bnez    a2, pc - 40            #; a2  = 30, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 37.692
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 12, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 37.692, ft4  = 37.692
                                                #; (f:fpu) ft0  <-- 37.692
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 9, (wrb) a5  <-- 0
      0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 13, a5  = 0, (wrb) a5  <-- 13
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 13
                                                #; (f:fpu) ft4  <-- 13.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 12, (wrb) a1  <-- 13
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 13.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 30, (wrb) a2  <-- 29
      0x8000096c addi    a3, a3, 1              #; a3  = 13, (wrb) a3  <-- 14
      0x80000970 bnez    a2, pc - 40            #; a2  = 29, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 40.833
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 13, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 40.833, ft4  = 40.833
                                                #; (f:fpu) ft0  <-- 40.833
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 10, (wrb) a5  <-- 0
      0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 14, a5  = 0, (wrb) a5  <-- 14
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 14
                                                #; (f:fpu) ft4  <-- 14.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 13, (wrb) a1  <-- 14
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 14.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 29, (wrb) a2  <-- 28
      0x8000096c addi    a3, a3, 1              #; a3  = 14, (wrb) a3  <-- 15
      0x80000970 bnez    a2, pc - 40            #; a2  = 28, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 43.9740000
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 14, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 43.9740000, ft4  = 43.9740000
                                                #; (f:fpu) ft0  <-- 43.9740000
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 11, (wrb) a5  <-- 0
      0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 15, a5  = 0, (wrb) a5  <-- 15
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 15
                                                #; (f:fpu) ft4  <-- 15.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 14, (wrb) a1  <-- 15
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 15.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 28, (wrb) a2  <-- 27
      0x8000096c addi    a3, a3, 1              #; a3  = 15, (wrb) a3  <-- 16
      0x80000970 bnez    a2, pc - 40            #; a2  = 27, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 47.115
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 15, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 47.115, ft4  = 47.115
                                                #; (f:fpu) ft0  <-- 47.115
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 12, (wrb) a5  <-- 0
      0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 16, a5  = 0, (wrb) a5  <-- 16
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 16
                                                #; (f:fpu) ft4  <-- 16.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 15, (wrb) a1  <-- 16
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 16.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 27, (wrb) a2  <-- 26
      0x8000096c addi    a3, a3, 1              #; a3  = 16, (wrb) a3  <-- 17
      0x80000970 bnez    a2, pc - 40            #; a2  = 26, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 50.256
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 16, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 50.256, ft4  = 50.256
                                                #; (f:fpu) ft0  <-- 50.256
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 12, (wrb) a5  <-- 0
      0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 17, a5  = 0, (wrb) a5  <-- 17
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 17
                                                #; (f:fpu) ft4  <-- 17.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 16, (wrb) a1  <-- 17
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 17.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 26, (wrb) a2  <-- 25
      0x8000096c addi    a3, a3, 1              #; a3  = 17, (wrb) a3  <-- 18
      0x80000970 bnez    a2, pc - 40            #; a2  = 25, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 53.397
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 17, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 53.397, ft4  = 53.397
                                                #; (f:fpu) ft0  <-- 53.397
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 13, (wrb) a5  <-- 0
      0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 18, a5  = 0, (wrb) a5  <-- 18
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 18
                                                #; (f:fpu) ft4  <-- 18.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 17, (wrb) a1  <-- 18
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 18.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 25, (wrb) a2  <-- 24
      0x8000096c addi    a3, a3, 1              #; a3  = 18, (wrb) a3  <-- 19
      0x80000970 bnez    a2, pc - 40            #; a2  = 24, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 56.538
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 18, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 56.538, ft4  = 56.538
                                                #; (f:fpu) ft0  <-- 56.538
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 14, (wrb) a5  <-- 0
      0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 19, a5  = 0, (wrb) a5  <-- 19
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 19
                                                #; (f:fpu) ft4  <-- 19.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 18, (wrb) a1  <-- 19
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 19.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 24, (wrb) a2  <-- 23
      0x8000096c addi    a3, a3, 1              #; a3  = 19, (wrb) a3  <-- 20
      0x80000970 bnez    a2, pc - 40            #; a2  = 23, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 59.679
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 19, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 59.679, ft4  = 59.679
                                                #; (f:fpu) ft0  <-- 59.679
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 15, (wrb) a5  <-- 0
      0x80000950 mul     a5, a5, a4             #; a5  = 0, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 20, a5  = 0, (wrb) a5  <-- 20
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 20
                                                #; (f:fpu) ft4  <-- 20.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 19, (wrb) a1  <-- 20
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 20.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 23, (wrb) a2  <-- 22
      0x8000096c addi    a3, a3, 1              #; a3  = 20, (wrb) a3  <-- 21
      0x80000970 bnez    a2, pc - 40            #; a2  = 22, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 62.82
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 20, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 62.82, ft4  = 62.82
                                                #; (f:fpu) ft0  <-- 62.82
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 16, (wrb) a5  <-- 1
      0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 21, a5  = 20, (wrb) a5  <-- 1
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 1
                                                #; (f:fpu) ft4  <-- 1.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 20, (wrb) a1  <-- 21
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 22, (wrb) a2  <-- 21
      0x8000096c addi    a3, a3, 1              #; a3  = 21, (wrb) a3  <-- 22
      0x80000970 bnez    a2, pc - 40            #; a2  = 21, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 3.141
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 21, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
                                                #; (f:fpu) ft0  <-- 3.141
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 16, (wrb) a5  <-- 1
      0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 22, a5  = 20, (wrb) a5  <-- 2
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 2
                                                #; (f:fpu) ft4  <-- 2.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 21, (wrb) a1  <-- 22
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 21, (wrb) a2  <-- 20
      0x8000096c addi    a3, a3, 1              #; a3  = 22, (wrb) a3  <-- 23
      0x80000970 bnez    a2, pc - 40            #; a2  = 20, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 6.282
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 22, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
                                                #; (f:fpu) ft0  <-- 6.282
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 17, (wrb) a5  <-- 1
      0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 23, a5  = 20, (wrb) a5  <-- 3
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 3
                                                #; (f:fpu) ft4  <-- 3.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 22, (wrb) a1  <-- 23
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 20, (wrb) a2  <-- 19
      0x8000096c addi    a3, a3, 1              #; a3  = 23, (wrb) a3  <-- 24
      0x80000970 bnez    a2, pc - 40            #; a2  = 19, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 9.423
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 23, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 9.423, ft4  = 9.423
                                                #; (f:fpu) ft0  <-- 9.423
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 18, (wrb) a5  <-- 1
      0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 24, a5  = 20, (wrb) a5  <-- 4
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 4
                                                #; (f:fpu) ft4  <-- 4.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 23, (wrb) a1  <-- 24
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 19, (wrb) a2  <-- 18
      0x8000096c addi    a3, a3, 1              #; a3  = 24, (wrb) a3  <-- 25
      0x80000970 bnez    a2, pc - 40            #; a2  = 18, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 12.564
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 24, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564
                                                #; (f:fpu) ft0  <-- 12.564
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 19, (wrb) a5  <-- 1
      0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 25, a5  = 20, (wrb) a5  <-- 5
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 5
                                                #; (f:fpu) ft4  <-- 5.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 24, (wrb) a1  <-- 25
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 18, (wrb) a2  <-- 17
      0x8000096c addi    a3, a3, 1              #; a3  = 25, (wrb) a3  <-- 26
      0x80000970 bnez    a2, pc - 40            #; a2  = 17, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 15.705
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 25, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 15.705, ft4  = 15.705
                                                #; (f:fpu) ft0  <-- 15.705
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 20, (wrb) a5  <-- 1
      0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 26, a5  = 20, (wrb) a5  <-- 6
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 6
                                                #; (f:fpu) ft4  <-- 6.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 25, (wrb) a1  <-- 26
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 17, (wrb) a2  <-- 16
      0x8000096c addi    a3, a3, 1              #; a3  = 26, (wrb) a3  <-- 27
      0x80000970 bnez    a2, pc - 40            #; a2  = 16, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 18.846
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 26, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 18.846, ft4  = 18.846
                                                #; (f:fpu) ft0  <-- 18.846
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 20, (wrb) a5  <-- 1
      0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 27, a5  = 20, (wrb) a5  <-- 7
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 7
                                                #; (f:fpu) ft4  <-- 7.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 26, (wrb) a1  <-- 27
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 16, (wrb) a2  <-- 15
      0x8000096c addi    a3, a3, 1              #; a3  = 27, (wrb) a3  <-- 28
      0x80000970 bnez    a2, pc - 40            #; a2  = 15, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 21.9870000
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 27, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 21.9870000, ft4  = 21.9870000
                                                #; (f:fpu) ft0  <-- 21.9870000
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 21, (wrb) a5  <-- 1
      0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 28, a5  = 20, (wrb) a5  <-- 8
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 8
                                                #; (f:fpu) ft4  <-- 8.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 27, (wrb) a1  <-- 28
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 15, (wrb) a2  <-- 14
      0x8000096c addi    a3, a3, 1              #; a3  = 28, (wrb) a3  <-- 29
      0x80000970 bnez    a2, pc - 40            #; a2  = 14, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 25.128
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 28, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128
                                                #; (f:fpu) ft0  <-- 25.128
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 22, (wrb) a5  <-- 1
      0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 29, a5  = 20, (wrb) a5  <-- 9
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 9
                                                #; (f:fpu) ft4  <-- 9.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 28, (wrb) a1  <-- 29
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 14, (wrb) a2  <-- 13
      0x8000096c addi    a3, a3, 1              #; a3  = 29, (wrb) a3  <-- 30
      0x80000970 bnez    a2, pc - 40            #; a2  = 13, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 28.269
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 29, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 28.269, ft4  = 28.269
                                                #; (f:fpu) ft0  <-- 28.269
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 23, (wrb) a5  <-- 1
      0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 30, a5  = 20, (wrb) a5  <-- 10
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 10
                                                #; (f:fpu) ft4  <-- 10.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 29, (wrb) a1  <-- 30
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 13, (wrb) a2  <-- 12
      0x8000096c addi    a3, a3, 1              #; a3  = 30, (wrb) a3  <-- 31
      0x80000970 bnez    a2, pc - 40            #; a2  = 12, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 31.41
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 30, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 31.41, ft4  = 31.41
                                                #; (f:fpu) ft0  <-- 31.41
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 24, (wrb) a5  <-- 1
      0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 31, a5  = 20, (wrb) a5  <-- 11
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 11
                                                #; (f:fpu) ft4  <-- 11.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 30, (wrb) a1  <-- 31
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 12, (wrb) a2  <-- 11
      0x8000096c addi    a3, a3, 1              #; a3  = 31, (wrb) a3  <-- 32
      0x80000970 bnez    a2, pc - 40            #; a2  = 11, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 34.551
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 31, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 34.551, ft4  = 34.551
                                                #; (f:fpu) ft0  <-- 34.551
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 24, (wrb) a5  <-- 1
      0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 32, a5  = 20, (wrb) a5  <-- 12
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 12
                                                #; (f:fpu) ft4  <-- 12.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 31, (wrb) a1  <-- 32
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 12.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 11, (wrb) a2  <-- 10
      0x8000096c addi    a3, a3, 1              #; a3  = 32, (wrb) a3  <-- 33
      0x80000970 bnez    a2, pc - 40            #; a2  = 10, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 37.692
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 32, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 37.692, ft4  = 37.692
                                                #; (f:fpu) ft0  <-- 37.692
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 25, (wrb) a5  <-- 1
      0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 33, a5  = 20, (wrb) a5  <-- 13
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 13
                                                #; (f:fpu) ft4  <-- 13.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 32, (wrb) a1  <-- 33
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 13.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 10, (wrb) a2  <-- 9
      0x8000096c addi    a3, a3, 1              #; a3  = 33, (wrb) a3  <-- 34
      0x80000970 bnez    a2, pc - 40            #; a2  = 9, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 40.833
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 33, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 40.833, ft4  = 40.833
                                                #; (f:fpu) ft0  <-- 40.833
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 26, (wrb) a5  <-- 1
      0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 34, a5  = 20, (wrb) a5  <-- 14
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 14
                                                #; (f:fpu) ft4  <-- 14.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 33, (wrb) a1  <-- 34
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 14.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
      0x8000096c addi    a3, a3, 1              #; a3  = 34, (wrb) a3  <-- 35
      0x80000970 bnez    a2, pc - 40            #; a2  = 8, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 43.9740000
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 34, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 43.9740000, ft4  = 43.9740000
                                                #; (f:fpu) ft0  <-- 43.9740000
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 27, (wrb) a5  <-- 1
      0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 35, a5  = 20, (wrb) a5  <-- 15
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 15
                                                #; (f:fpu) ft4  <-- 15.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 34, (wrb) a1  <-- 35
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 15.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
      0x8000096c addi    a3, a3, 1              #; a3  = 35, (wrb) a3  <-- 36
      0x80000970 bnez    a2, pc - 40            #; a2  = 7, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 47.115
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 35, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 47.115, ft4  = 47.115
                                                #; (f:fpu) ft0  <-- 47.115
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 28, (wrb) a5  <-- 1
      0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 36, a5  = 20, (wrb) a5  <-- 16
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 16
                                                #; (f:fpu) ft4  <-- 16.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 35, (wrb) a1  <-- 36
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 16.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
      0x8000096c addi    a3, a3, 1              #; a3  = 36, (wrb) a3  <-- 37
      0x80000970 bnez    a2, pc - 40            #; a2  = 6, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 50.256
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 36, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 50.256, ft4  = 50.256
                                                #; (f:fpu) ft0  <-- 50.256
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 28, (wrb) a5  <-- 1
      0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 37, a5  = 20, (wrb) a5  <-- 17
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 17
                                                #; (f:fpu) ft4  <-- 17.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 36, (wrb) a1  <-- 37
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 17.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x8000096c addi    a3, a3, 1              #; a3  = 37, (wrb) a3  <-- 38
      0x80000970 bnez    a2, pc - 40            #; a2  = 5, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 53.397
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 37, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 53.397, ft4  = 53.397
                                                #; (f:fpu) ft0  <-- 53.397
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 29, (wrb) a5  <-- 1
      0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 38, a5  = 20, (wrb) a5  <-- 18
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 18
                                                #; (f:fpu) ft4  <-- 18.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 37, (wrb) a1  <-- 38
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 18.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x8000096c addi    a3, a3, 1              #; a3  = 38, (wrb) a3  <-- 39
      0x80000970 bnez    a2, pc - 40            #; a2  = 4, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 56.538
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 38, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 56.538, ft4  = 56.538
                                                #; (f:fpu) ft0  <-- 56.538
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 30, (wrb) a5  <-- 1
      0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 39, a5  = 20, (wrb) a5  <-- 19
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 19
                                                #; (f:fpu) ft4  <-- 19.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 38, (wrb) a1  <-- 39
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 19.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x8000096c addi    a3, a3, 1              #; a3  = 39, (wrb) a3  <-- 40
      0x80000970 bnez    a2, pc - 40            #; a2  = 3, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 59.679
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 39, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 59.679, ft4  = 59.679
                                                #; (f:fpu) ft0  <-- 59.679
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 31, (wrb) a5  <-- 1
      0x80000950 mul     a5, a5, a4             #; a5  = 1, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 40, a5  = 20, (wrb) a5  <-- 20
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 20
                                                #; (f:fpu) ft4  <-- 20.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 39, (wrb) a1  <-- 40
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 20.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x8000096c addi    a3, a3, 1              #; a3  = 40, (wrb) a3  <-- 41
      0x80000970 bnez    a2, pc - 40            #; a2  = 2, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 62.82
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 40, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 62.82, ft4  = 62.82
                                                #; (f:fpu) ft0  <-- 62.82
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 32, (wrb) a5  <-- 2
      0x80000950 mul     a5, a5, a4             #; a5  = 2, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 41, a5  = 40, (wrb) a5  <-- 1
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 1
                                                #; (f:fpu) ft4  <-- 1.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 40, (wrb) a1  <-- 41
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x8000096c addi    a3, a3, 1              #; a3  = 41, (wrb) a3  <-- 42
      0x80000970 bnez    a2, pc - 40            #; a2  = 1, taken, goto 0x80000948
                                                #; (f:fpu) ft4  <-- 3.141
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000948 mulhu   a5, a1, a0             #; a1  = 41, a0  = 0xcccccccd
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.141, ft4  = 3.141
                                                #; (f:fpu) ft0  <-- 3.141
                                                #; (acc) a5  <-- 0x0047d793
      0x8000094c srli    a5, a5, 4              #; a5  = 32, (wrb) a5  <-- 2
      0x80000950 mul     a5, a5, a4             #; a5  = 2, a4  = 20
                                                #; (acc) a5  <-- 0x40f687b3
      0x80000954 sub     a5, a3, a5             #; a3  = 42, a5  = 40, (wrb) a5  <-- 2
      0x80000958 fcvt.d.wu ft4, a5              #; ac1  = 2
                                                #; (f:fpu) ft4  <-- 2.0
; init_data (test_mat.c:9)
;  in main (test_mat.c:28)
      0x80000964 addi    a1, a1, 1              #; a1  = 41, (wrb) a1  <-- 42
      0x8000095c fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 3.141
      0x80000968 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x8000096c addi    a3, a3, 1              #; a3  = 42, (wrb) a3  <-- 43
      0x80000970 bnez    a2, pc - 40            #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 6.282
; init_data (test_mat.c:10)
;  in main (test_mat.c:28)
      0x80000960 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
; init_data (test_mat.c:0)
;  in main (test_mat.c:28)
      0x80000978 j       pc + 0x54              #; goto 0x800009cc
      0x80000974 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 6.282
; main (test_mat.c:30)
      0x800009cc li      a3, 5                  #; (wrb) a3  <-- 5
      0x800009d0 li      a4, 6                  #; (wrb) a4  <-- 6
      0x800009d4 li      a5, 7                  #; (wrb) a5  <-- 7
      0x800009d8 li      s3, 6                  #; (wrb) s3  <-- 6
      0x800009dc mv      a0, s0                 #; s0  = 0x00100240, (wrb) a0  <-- 0x00100240
      0x800009e0 mv      a1, s2                 #; s2  = 0x00100000, (wrb) a1  <-- 0x00100000
      0x800009e4 mv      a2, s6                 #; s6  = 0x001000f0, (wrb) a2  <-- 0x001000f0
      0x800009e8 auipc   ra, 0x2                #; (wrb) ra  <-- 0x800029e8
      0x800009ec jalr    ra, ra, 868            #; ra  = 0x800029e8, (wrb) ra  <-- 0x800009f0, goto 0x80002d4c
; matmul (matmul.c:5)
      0x80002d4c addi    sp, sp, -48            #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff00
      0x80002d50 sw      ra, 44(sp)             #; sp  = 0x0011ff00, 0x800009f0 ~~> Word[0x0011ff2c]
      0x80002d54 sw      s0, 40(sp)             #; sp  = 0x0011ff00, 0x00100240 ~~> Word[0x0011ff28]
      0x80002d58 sw      s1, 36(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff24]
      0x80002d5c sw      s2, 32(sp)             #; sp  = 0x0011ff00, 0x00100000 ~~> Word[0x0011ff20]
      0x80002d60 sw      s3, 28(sp)             #; sp  = 0x0011ff00, 6 ~~> Word[0x0011ff1c]
      0x80002d64 sw      s4, 24(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff18]
      0x80002d68 sw      s5, 20(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff14]
      0x80002d6c sw      s6, 16(sp)             #; sp  = 0x0011ff00, 0x001000f0 ~~> Word[0x0011ff10]
      0x80002d70 sw      s7, 12(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff0c]
      0x80002d74 mv      s6, a3                 #; a3  = 5, (wrb) s6  <-- 5
; matmul (matmul.c:6)
      0x80002d78 slti    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 0
      0x80002d7c slti    s1, a5, 1              #; a5  = 7, (wrb) s1  <-- 0
      0x80002d80 or      a3, a3, s1             #; a3  = 0, s1  = 0, (wrb) a3  <-- 0
      0x80002d84 bnez    a3, pc + 808           #; a3  = 0, not taken
; matmul (matmul.c:0)
      0x80002d88 mv      s7, a0                 #; a0  = 0x00100240, (wrb) s7  <-- 0x00100240
; matmul (matmul.c:6)
      0x80002d8c addi    a6, a5, -1             #; a5  = 7, (wrb) a6  <-- 6
      0x80002d90 slli    t4, a6, 3              #; a6  = 6, (wrb) t4  <-- 48
      0x80002d94 addi    t3, s6, -1             #; s6  = 5, (wrb) t3  <-- 4
      0x80002d98 slli    s2, a5, 3              #; a5  = 7, (wrb) s2  <-- 56
      0x80002d9c mul     a0, s2, t3             #; s2  = 56, t3  = 4
      0x80002da0 add     a0, t4, a0             #; t4  = 48, a0  = 224, (wrb) a0  <-- 272
      0x80002da4 add     t6, a0, s7             #; a0  = 272, s7  = 0x00100240, (wrb) t6  <-- 0x00100350
      0x80002da8 sltu    a0, t6, a0             #; t6  = 0x00100350, a0  = 272, (wrb) a0  <-- 0
; matmul (matmul.c:9)
      0x80002dac bge     zero, a4, pc + 80      #; a4  = 6, not taken
; matmul (matmul.c:6)
      0x80002db0 addi    a7, a4, -1             #; a4  = 6, (wrb) a7  <-- 5
      0x80002db4 slli    t1, a7, 3              #; a7  = 5, (wrb) t1  <-- 40
      0x80002db8 slli    s5, a4, 3              #; a4  = 6, (wrb) s5  <-- 48
      0x80002dbc mul     s0, s5, t3             #; s5  = 48, t3  = 4
      0x80002dc0 mul     t0, s2, a7             #; s2  = 56, a7  = 5
                                                #; (acc) t2  <-- 0x01d283b3
      0x80002dc4 add     t2, t0, t4             #; t0  = 280, t4  = 48, (wrb) t2  <-- 328
      0x80002dc8 add     t5, t2, a2             #; t2  = 328, a2  = 0x001000f0, (wrb) t5  <-- 0x00100238
      0x80002dcc beqz    a0, pc + 112           #; a0  = 0, taken, goto 0x80002e3c
; matmul (matmul.c:0)
      0x80002e3c sltu    a3, t6, a2             #; t6  = 0x00100350, a2  = 0x001000f0, (wrb) a3  <-- 0
; matmul (matmul.c:6)
      0x80002e40 add     s3, t1, s0             #; t1  = 40, s0  = 192, (wrb) s3  <-- 232
      0x80002e44 bgeu    t5, t2, pc - 104       #; t5  = 0x00100238, t2  = 328, taken, goto 0x80002ddc
; matmul (matmul.c:0)
      0x80002ddc sltu    s0, t5, s7             #; t5  = 0x00100238, s7  = 0x00100240, (wrb) s0  <-- 1
; matmul (matmul.c:6)
      0x80002de0 add     s4, s3, a1             #; s3  = 232, a1  = 0x00100000, (wrb) s4  <-- 0x001000e8
      0x80002de4 bnez    a0, pc + 112           #; a0  = 0, not taken
; matmul (matmul.c:0)
      0x80002de8 sltu    s1, t6, a1             #; t6  = 0x00100350, a1  = 0x00100000, (wrb) s1  <-- 0
; matmul (matmul.c:6)
      0x80002dec or      a3, a3, s0             #; a3  = 0, s0  = 1, (wrb) a3  <-- 1
      0x80002df0 bltu    s4, s3, pc + 112       #; s4  = 0x001000e8, s3  = 232, not taken
; matmul (matmul.c:0)
      0x80002df4 sltu    s0, s4, s7             #; s4  = 0x001000e8, s7  = 0x00100240, (wrb) s0  <-- 1
      0x80002df8 j       pc + 0x6c              #; goto 0x80002e64
; matmul (matmul.c:6)
      0x80002e64 or      s0, s0, s1             #; s0  = 1, s1  = 0, (wrb) s0  <-- 1
      0x80002e68 and     s0, a3, s0             #; a3  = 1, s0  = 1, (wrb) s0  <-- 1
      0x80002e6c srli    a3, s7, 20             #; s7  = 0x00100240, (wrb) a3  <-- 1
      0x80002e70 snez    s1, a3                 #; a3  = 1, (wrb) s1  <-- 1
      0x80002e74 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
      0x80002e78 addi    a3, a3, 1              #; a3  = 0x00120000, (wrb) a3  <-- 0x00120001
      0x80002e7c beqz    a0, pc + 12            #; a0  = 0, taken, goto 0x80002e88
; matmul (matmul.c:0)
      0x80002e88 sltu    a0, t6, a3             #; t6  = 0x00100350, a3  = 0x00120001, (wrb) a0  <-- 1
; matmul (matmul.c:6)
      0x80002e8c and     a0, s1, a0             #; s1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80002e90 and     a0, a0, s0             #; a0  = 1, s0  = 1, (wrb) a0  <-- 1
      0x80002e94 srli    s1, a1, 20             #; a1  = 0x00100000, (wrb) s1  <-- 1
      0x80002e98 snez    s1, s1                 #; s1  = 1, (wrb) s1  <-- 1
      0x80002e9c bgeu    s4, s3, pc + 12        #; s4  = 0x001000e8, s3  = 232, taken, goto 0x80002ea8
; matmul (matmul.c:0)
      0x80002ea8 sltu    s0, s4, a3             #; s4  = 0x001000e8, a3  = 0x00120001, (wrb) s0  <-- 1
; matmul (matmul.c:6)
      0x80002eac and     s1, s1, s0             #; s1  = 1, s0  = 1, (wrb) s1  <-- 1
      0x80002eb0 and     a0, s1, a0             #; s1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80002eb4 srli    s1, a2, 20             #; a2  = 0x001000f0, (wrb) s1  <-- 1
      0x80002eb8 snez    s1, s1                 #; s1  = 1, (wrb) s1  <-- 1
      0x80002ebc bgeu    t5, t2, pc + 12        #; t5  = 0x00100238, t2  = 328, taken, goto 0x80002ec8
; matmul (matmul.c:0)
      0x80002ec8 sltu    a3, t5, a3             #; t5  = 0x00100238, a3  = 0x00120001, (wrb) a3  <-- 1
; matmul (matmul.c:6)
      0x80002ecc and     a3, s1, a3             #; s1  = 1, a3  = 1, (wrb) a3  <-- 1
      0x80002ed0 and     a0, a3, a0             #; a3  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80002ed4 beqz    a0, pc + 252           #; a0  = 1, not taken
; matmul (matmul.c:0)
      0x80002ed8 li      a0, 0                  #; (wrb) a0  <-- 0
      0x80002edc li      t4, 8                  #; (wrb) t4  <-- 8
; matmul (matmul.c:6)
      0x80002ee0 li      s1, 64                 #; (wrb) s1  <-- 64
      0x80002ee4 scfgw   a6, s1                 #; a6  = 6, s1  = 64
      0x80002ee8 li      s1, 192                #; (wrb) s1  <-- 192
      0x80002eec scfgw   t4, s1                 #; t4  = 8, s1  = 192
      0x80002ef0 li      s1, 96                 #; (wrb) s1  <-- 96
      0x80002ef4 scfgw   t3, s1                 #; t3  = 4, s1  = 96
      0x80002ef8 li      s1, 224                #; (wrb) s1  <-- 224
      0x80002efc scfgw   t4, s1                 #; t4  = 8, s1  = 224
      0x80002f00 li      s1, 32                 #; (wrb) s1  <-- 32
      0x80002f04 scfgw   zero, s1               #; s1  = 32
      0x80002f08 scfgwi  s7, 928                #; s7  = 0x00100240
      0x80002f0c li      s1, 1                  #; (wrb) s1  <-- 1
      0x80002f10 addi    s0, s1, 64             #; s1  = 1, (wrb) s0  <-- 65
      0x80002f14 scfgw   a7, s0                 #; a7  = 5, s0  = 65
      0x80002f18 addi    s0, s1, 192            #; s1  = 1, (wrb) s0  <-- 193
      0x80002f1c scfgw   t4, s0                 #; t4  = 8, s0  = 193
      0x80002f20 sub     s0, zero, t1           #; t1  = 40, (wrb) s0  <-- -40
      0x80002f24 addi    a3, s1, 96             #; s1  = 1, (wrb) a3  <-- 97
      0x80002f28 scfgw   a6, a3                 #; a6  = 6, a3  = 97
      0x80002f2c addi    a3, s1, 224            #; s1  = 1, (wrb) a3  <-- 225
      0x80002f30 scfgw   s0, a3                 #; s0  = -40, a3  = 225
      0x80002f34 addi    a3, s1, 128            #; s1  = 1, (wrb) a3  <-- 129
      0x80002f38 addi    s0, s1, 256            #; s1  = 1, (wrb) s0  <-- 257
      0x80002f3c scfgw   t3, a3                 #; t3  = 4, a3  = 129, (acc) ra  <-- 0x00de20ab
      0x80002f40 scfgw   t4, s0                 #; t4  = 8, s0  = 257
      0x80002f44 addi    a3, s1, 32             #; s1  = 1, (wrb) a3  <-- 33
      0x80002f48 scfgw   zero, a3               #; a3  = 33
      0x80002f4c scfgwi  a1, 833                #; a1  = 0x00100000
      0x80002f50 li      a1, 2                  #; (wrb) a1  <-- 2
      0x80002f54 addi    a3, a1, 64             #; a1  = 2, (wrb) a3  <-- 66
      0x80002f58 addi    s1, a1, 192            #; a1  = 2, (wrb) s1  <-- 194
      0x80002f5c scfgw   a7, a3                 #; a7  = 5, a3  = 66
      0x80002f60 scfgw   s2, s1                 #; s2  = 56, s1  = 194
      0x80002f64 sub     a3, t4, t0             #; t4  = 8, t0  = 280, (wrb) a3  <-- -272
      0x80002f68 addi    s1, a1, 96             #; a1  = 2, (wrb) s1  <-- 98
      0x80002f6c addi    s0, a1, 224            #; a1  = 2, (wrb) s0  <-- 226
      0x80002f70 scfgw   a6, s1                 #; a6  = 6, s1  = 98
      0x80002f74 scfgw   a3, s0                 #; a3  = -272, s0  = 226
      0x80002f78 sub     a3, zero, t2           #; t2  = 328, (wrb) a3  <-- -328
      0x80002f7c addi    s1, a1, 128            #; a1  = 2, (wrb) s1  <-- 130
      0x80002f80 addi    s0, a1, 256            #; a1  = 2, (wrb) s0  <-- 258
      0x80002f84 scfgw   t3, s1                 #; t3  = 4, s1  = 130
      0x80002f88 scfgw   a3, s0                 #; a3  = -328, s0  = 258
      0x80002f8c addi    a1, a1, 32             #; a1  = 2, (wrb) a1  <-- 34
      0x80002f90 scfgw   zero, a1               #; a1  = 34
      0x80002f94 scfgwi  a2, 834                #; a2  = 0x001000f0
                                                #; (acc) gp  <-- 0xd20001d3
      0x80002f98 csrrsi  a1, ssr, 1             #; 
      0x80002f9c fcvt.d.w ft3, zero             #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
; matmul (matmul.c:0)
      0x80002fa0 li      a1, 0                  #; (wrb) a1  <-- 0
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
; matmul (matmul.c:0)
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 3.141, ft4  = 0.0
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                                                #; (f:fpu) ft4  <-- 9.865881
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 6.282, ft4  = 9.865881
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 167.7199770
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 9.423, ft4  = 167.7199770
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 611.6846220
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 12.564, ft4  = 611.6846220
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 690.6116700
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 15.705, ft4  = 690.6116700
                                                #; (f:fpu) ft4  <-- 1134.5763150
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 18.846, ft4  = 1134.5763150
                                                #; (f:fpu) ft4  <-- 2081.7008910
; matmul (matmul.c:12)
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 2081.7008910, ft4  = 2081.7008910
                                                #; (f:fpu) ft0  <-- 2081.7008910
; matmul (matmul.c:7)
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 1, a5  = 7, taken, goto 0x80002fa4
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
; matmul (matmul.c:0)
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 0.0
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 3.141, ft4  = 0.0
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                                                #; (f:fpu) ft4  <-- 19.7317620
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 6.282, ft4  = 19.7317620
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 197.3176200
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 9.423, ft4  = 197.3176200
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 670.8799080
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 12.564, ft4  = 670.8799080
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 789.2704800
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 15.705, ft4  = 789.2704800
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 2, a5  = 7, taken, goto 0x80002fa4
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 1282.5645300
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 18.846, ft4  = 1282.5645300
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                                                #; (f:fpu) ft4  <-- 2288.8843920
; matmul (matmul.c:12)
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 2288.8843920, ft4  = 2288.8843920
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2288.8843920
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 3.141, ft4  = 0.0
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 29.5976430
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 6.282, ft4  = 29.5976430
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 226.9152630
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 9.423, ft4  = 226.9152630
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 730.0751940
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 12.564, ft4  = 730.0751940
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 3, a5  = 7, taken, goto 0x80002fa4
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 887.9292900
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 15.705, ft4  = 887.9292900
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                                                #; (f:fpu) ft4  <-- 1430.5527450
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 18.846, ft4  = 1430.5527450
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                                                #; (f:fpu) ft4  <-- 2496.0678930
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 2496.0678930, ft4  = 2496.0678930
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2496.0678930
                                                #; (f:fpu) ft4  <-- 0.0
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 3.141, ft4  = 0.0
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 39.4635240
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 6.282, ft4  = 39.4635240
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 256.5129060
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 9.423, ft4  = 256.5129060
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 4, a5  = 7, taken, goto 0x80002fa4
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 789.2704800
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 12.564, ft4  = 789.2704800
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                                                #; (f:fpu) ft4  <-- 986.5881000
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 15.705, ft4  = 986.5881000
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                                                #; (f:fpu) ft4  <-- 1578.5409600
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 18.846, ft4  = 1578.5409600
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 2703.2513940
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 2703.2513940, ft4  = 2703.2513940
; matmul (matmul.c:0)
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2703.2513940
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 0.0
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 3.141, ft4  = 0.0
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 49.3294050
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 6.282, ft4  = 49.3294050
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 5, a5  = 7, taken, goto 0x80002fa4
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 286.1105490
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 9.423, ft4  = 286.1105490
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                                                #; (f:fpu) ft4  <-- 848.4657660
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 12.564, ft4  = 848.4657660
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                                                #; (f:fpu) ft4  <-- 1085.2469100
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 15.705, ft4  = 1085.2469100
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 1726.5291750
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 18.846, ft4  = 1726.5291750
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                                                #; (f:fpu) ft4  <-- 2910.4348950
; matmul (matmul.c:12)
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 2910.4348950, ft4  = 2910.4348950
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2910.4348950
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 3.141, ft4  = 0.0
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 6, a5  = 7, taken, goto 0x80002fa4
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 59.1952860
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 6.282, ft4  = 59.1952860
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                                                #; (f:fpu) ft4  <-- 315.7081920
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 9.423, ft4  = 315.7081920
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                                                #; (f:fpu) ft4  <-- 907.6610520
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 12.564, ft4  = 907.6610520
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 1183.9057200
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 15.705, ft4  = 1183.9057200
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                                                #; (f:fpu) ft4  <-- 1874.5173900
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 18.846, ft4  = 1874.5173900
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                                                #; (f:fpu) ft4  <-- 1933.7126760
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 7, a5  = 7, not taken
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 1933.7126760, ft4  = 1933.7126760
; matmul (matmul.c:6)
      0x80002fc4 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 1933.7126760
      0x80002fc8 bne     a0, s6, pc - 40        #; a0  = 1, s6  = 5, taken, goto 0x80002fa0
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:0)
      0x80002fa0 li      a1, 0                  #; (wrb) a1  <-- 0
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 3.141, ft4  = 0.0
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 69.0611670
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 6.282, ft4  = 69.0611670
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                                                #; (f:fpu) ft4  <-- 345.3058350
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 9.423, ft4  = 345.3058350
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 374.9034780
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 12.564, ft4  = 374.9034780
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 690.6116700
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 15.705, ft4  = 690.6116700
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                                                #; (f:fpu) ft4  <-- 1430.5527450
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 18.846, ft4  = 1430.5527450
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 1, a5  = 7, taken, goto 0x80002fa4
                                                #; (f:fpu) ft4  <-- 1548.9433170
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 1548.9433170, ft4  = 1548.9433170
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 1548.9433170
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 21.9870000, ft4  = 0.0
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                                                #; (f:fpu) ft4  <-- 69.0611670
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 25.128, ft4  = 69.0611670
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 700.4775510
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 28.269, ft4  = 700.4775510
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 2032.3714860
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 31.41, ft4  = 2032.3714860
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                                                #; (f:fpu) ft4  <-- 2229.6891060
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 34.551, ft4  = 2229.6891060
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 2, a5  = 7, taken, goto 0x80002fa4
                                                #; (f:fpu) ft4  <-- 3206.4113250
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 37.692, ft4  = 3206.4113250
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 5100.6604770
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 5100.6604770, ft4  = 5100.6604770
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5100.6604770
                                                #; (f:fpu) ft4  <-- 0.0
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 21.9870000, ft4  = 0.0
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 138.1223340
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 25.128, ft4  = 138.1223340
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 848.4657660
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 28.269, ft4  = 848.4657660
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                                                #; (f:fpu) ft4  <-- 2269.1526300
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 31.41, ft4  = 2269.1526300
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 3, a5  = 7, taken, goto 0x80002fa4
                                                #; (f:fpu) ft4  <-- 2565.1290600
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 34.551, ft4  = 2565.1290600
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 3650.3759700
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 37.692, ft4  = 3650.3759700
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 5663.0156940
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 5663.0156940, ft4  = 5663.0156940
; matmul (matmul.c:0)
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5663.0156940
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 0.0
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 21.9870000, ft4  = 0.0
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 207.1835010
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 25.128, ft4  = 207.1835010
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                                                #; (f:fpu) ft4  <-- 996.4539810
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 28.269, ft4  = 996.4539810
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 4, a5  = 7, taken, goto 0x80002fa4
                                                #; (f:fpu) ft4  <-- 2505.9337740
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 31.41, ft4  = 2505.9337740
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 2900.5690140
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 34.551, ft4  = 2900.5690140
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 4094.3406150
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 37.692, ft4  = 4094.3406150
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 6225.3709110
; matmul (matmul.c:12)
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 6225.3709110, ft4  = 6225.3709110
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 6225.3709110
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 21.9870000, ft4  = 0.0
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                                                #; (f:fpu) ft4  <-- 276.2446680
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 25.128, ft4  = 276.2446680
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 5, a5  = 7, taken, goto 0x80002fa4
                                                #; (f:fpu) ft4  <-- 1144.4421960
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 28.269, ft4  = 1144.4421960
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 2742.7149180
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 31.41, ft4  = 2742.7149180
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 3236.0089680
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 34.551, ft4  = 3236.0089680
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 4538.3052600
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 37.692, ft4  = 4538.3052600
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 6787.7261280
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 6787.7261280, ft4  = 6787.7261280
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 6787.7261280
                                                #; (f:fpu) ft4  <-- 0.0
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 21.9870000, ft4  = 0.0
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 6, a5  = 7, taken, goto 0x80002fa4
                                                #; (f:fpu) ft4  <-- 345.3058350
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 25.128, ft4  = 345.3058350
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 1292.4304110
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 28.269, ft4  = 1292.4304110
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 2979.4960620
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 31.41, ft4  = 2979.4960620
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 3571.4489220
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 34.551, ft4  = 3571.4489220
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 4982.2699050
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 37.692, ft4  = 4982.2699050
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 7350.0813450
; matmul (matmul.c:12)
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 7350.0813450, ft4  = 7350.0813450
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 7350.0813450
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 7, a5  = 7, not taken
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:6)
      0x80002fc4 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 21.9870000, ft4  = 0.0
      0x80002fc8 bne     a0, s6, pc - 40        #; a0  = 2, s6  = 5, taken, goto 0x80002fa0
; matmul (matmul.c:0)
      0x80002fa0 li      a1, 0                  #; (wrb) a1  <-- 0
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 414.3670020
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 25.128, ft4  = 414.3670020
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 1440.4186260
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 28.269, ft4  = 1440.4186260
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                                                #; (f:fpu) ft4  <-- 3216.2772060
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 31.41, ft4  = 3216.2772060
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 3906.8888760
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 34.551, ft4  = 3906.8888760
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 5426.2345500
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 37.692, ft4  = 5426.2345500
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 5544.6251220
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 5544.6251220, ft4  = 5544.6251220
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 1, a5  = 7, taken, goto 0x80002fa4
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5544.6251220
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 21.9870000, ft4  = 0.0
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 483.4281690
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 25.128, ft4  = 483.4281690
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                                                #; (f:fpu) ft4  <-- 1588.4068410
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 28.269, ft4  = 1588.4068410
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 1677.1997700
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 31.41, ft4  = 1677.1997700
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 2466.4702500
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 34.551, ft4  = 2466.4702500
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 4094.3406150
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 37.692, ft4  = 4094.3406150
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 2, a5  = 7, taken, goto 0x80002fa4
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
                                                #; (f:fpu) ft4  <-- 4331.1217590
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 4331.1217590, ft4  = 4331.1217590
; matmul (matmul.c:0)
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4331.1217590
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 40.833, ft4  = 0.0
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 128.2564530
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 43.9740000, ft4  = 128.2564530
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 1233.2351250
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 47.115, ft4  = 1233.2351250
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 3453.0583500
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 50.256, ft4  = 3453.0583500
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 3768.7665420
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 53.397, ft4  = 3768.7665420
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                                                #; (f:fpu) ft4  <-- 5278.2463350
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 3, a5  = 7, taken, goto 0x80002fa4
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 56.538, ft4  = 5278.2463350
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 8119.6200630
; matmul (matmul.c:12)
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 8119.6200630, ft4  = 8119.6200630
; matmul (matmul.c:0)
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 8119.6200630
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 40.833, ft4  = 0.0
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 256.5129060
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 43.9740000, ft4  = 256.5129060
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 1499.6139120
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 47.115, ft4  = 1499.6139120
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 3867.4253520
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 50.256, ft4  = 3867.4253520
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 4340.9876400
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 53.397, ft4  = 4340.9876400
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                                                #; (f:fpu) ft4  <-- 6018.1874100
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 4, a5  = 7, taken, goto 0x80002fa4
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 56.538, ft4  = 6018.1874100
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 9037.1469960
; matmul (matmul.c:12)
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 9037.1469960, ft4  = 9037.1469960
; matmul (matmul.c:0)
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 9037.1469960
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 40.833, ft4  = 0.0
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 384.7693590
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 43.9740000, ft4  = 384.7693590
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 1765.9926990
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 47.115, ft4  = 1765.9926990
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 4281.7923540
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 50.256, ft4  = 4281.7923540
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 4913.2087380
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 53.397, ft4  = 4913.2087380
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                                                #; (f:fpu) ft4  <-- 6758.1284850
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 5, a5  = 7, taken, goto 0x80002fa4
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 56.538, ft4  = 6758.1284850
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 9954.6739290
; matmul (matmul.c:12)
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 9954.6739290, ft4  = 9954.6739290
; matmul (matmul.c:0)
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 9954.6739290
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 40.833, ft4  = 0.0
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 513.0258120
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 43.9740000, ft4  = 513.0258120
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 2032.3714860
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 47.115, ft4  = 2032.3714860
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 4696.1593560
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 50.256, ft4  = 4696.1593560
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 5485.4298360
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 53.397, ft4  = 5485.4298360
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                                                #; (f:fpu) ft4  <-- 7498.0695600
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 6, a5  = 7, taken, goto 0x80002fa4
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 56.538, ft4  = 7498.0695600
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 10872.2008620
; matmul (matmul.c:12)
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 10872.2008620, ft4  = 10872.2008620
; matmul (matmul.c:0)
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 10872.2008620
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 40.833, ft4  = 0.0
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 641.2822650
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 43.9740000, ft4  = 641.2822650
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 2298.7502730
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 47.115, ft4  = 2298.7502730
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 5110.5263580
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 50.256, ft4  = 5110.5263580
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 6057.6509340
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 53.397, ft4  = 6057.6509340
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                                                #; (f:fpu) ft4  <-- 8238.0106350
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 7, a5  = 7, not taken
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 56.538, ft4  = 8238.0106350
; matmul (matmul.c:6)
      0x80002fc4 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80002fc8 bne     a0, s6, pc - 40        #; a0  = 3, s6  = 5, taken, goto 0x80002fa0
; matmul (matmul.c:0)
      0x80002fa0 li      a1, 0                  #; (wrb) a1  <-- 0
                                                #; (f:fpu) ft4  <-- 11789.7277950
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 11789.7277950, ft4  = 11789.7277950
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 11789.7277950
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 40.833, ft4  = 0.0
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                                                #; (f:fpu) ft4  <-- 769.5387180
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 43.9740000, ft4  = 769.5387180
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 2565.1290600
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 47.115, ft4  = 2565.1290600
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 5524.8933600
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 50.256, ft4  = 5524.8933600
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                                                #; (f:fpu) ft4  <-- 6629.8720320
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 53.397, ft4  = 6629.8720320
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
                                                #; (f:fpu) ft4  <-- 8977.9517100
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 1, a5  = 7, taken, goto 0x80002fa4
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 56.538, ft4  = 8977.9517100
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 9155.5375680
; matmul (matmul.c:12)
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 9155.5375680, ft4  = 9155.5375680
; matmul (matmul.c:0)
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 9155.5375680
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 40.833, ft4  = 0.0
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 897.7951710
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 43.9740000, ft4  = 897.7951710
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 2831.5078470
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 47.115, ft4  = 2831.5078470
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 2979.4960620
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 50.256, ft4  = 2979.4960620
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 4242.3288300
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 53.397, ft4  = 4242.3288300
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                                                #; (f:fpu) ft4  <-- 6758.1284850
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 2, a5  = 7, taken, goto 0x80002fa4
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 56.538, ft4  = 6758.1284850
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 7113.3002010
; matmul (matmul.c:12)
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 7113.3002010, ft4  = 7113.3002010
; matmul (matmul.c:0)
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 7113.3002010
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 59.679, ft4  = 0.0
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 187.4517390
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 62.82, ft4  = 187.4517390
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 1765.9926990
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 3.141, ft4  = 1765.9926990
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 1913.9809140
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 6.282, ft4  = 1913.9809140
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 1953.4444380
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 9.423, ft4  = 1953.4444380
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                                                #; (f:fpu) ft4  <-- 2219.8232250
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 3, a5  = 7, taken, goto 0x80002fa4
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 12.564, ft4  = 2219.8232250
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 2851.2396090
; matmul (matmul.c:12)
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 2851.2396090, ft4  = 2851.2396090
; matmul (matmul.c:0)
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 2851.2396090
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 59.679, ft4  = 0.0
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 374.9034780
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 62.82, ft4  = 374.9034780
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 2150.7620580
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 3.141, ft4  = 2150.7620580
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 2308.6161540
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 6.282, ft4  = 2308.6161540
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 2367.8114400
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 9.423, ft4  = 2367.8114400
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                                                #; (f:fpu) ft4  <-- 2663.7878700
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 4, a5  = 7, taken, goto 0x80002fa4
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 12.564, ft4  = 2663.7878700
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 3334.6677780
; matmul (matmul.c:12)
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 3334.6677780, ft4  = 3334.6677780
; matmul (matmul.c:0)
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 3334.6677780
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 59.679, ft4  = 0.0
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 562.3552170
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 62.82, ft4  = 562.3552170
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 2535.5314170
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 3.141, ft4  = 2535.5314170
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 2703.2513940
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 6.282, ft4  = 2703.2513940
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 2782.1784420
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 9.423, ft4  = 2782.1784420
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                                                #; (f:fpu) ft4  <-- 3107.7525150
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 5, a5  = 7, taken, goto 0x80002fa4
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 12.564, ft4  = 3107.7525150
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 3818.0959470
; matmul (matmul.c:12)
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 3818.0959470, ft4  = 3818.0959470
; matmul (matmul.c:0)
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 3818.0959470
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 59.679, ft4  = 0.0
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 749.8069560
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 62.82, ft4  = 749.8069560
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 2920.3007760
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 3.141, ft4  = 2920.3007760
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 3097.8866340
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 6.282, ft4  = 3097.8866340
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 3196.5454440
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 9.423, ft4  = 3196.5454440
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                                                #; (f:fpu) ft4  <-- 3551.7171600
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 6, a5  = 7, taken, goto 0x80002fa4
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 12.564, ft4  = 3551.7171600
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 4301.5241160
; matmul (matmul.c:12)
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 4301.5241160, ft4  = 4301.5241160
; matmul (matmul.c:0)
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4301.5241160
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 59.679, ft4  = 0.0
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 937.2586950
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 62.82, ft4  = 937.2586950
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 3305.0701350
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 3.141, ft4  = 3305.0701350
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 3492.5218740
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 6.282, ft4  = 3492.5218740
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 3610.9124460
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 9.423, ft4  = 3610.9124460
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                                                #; (f:fpu) ft4  <-- 3995.6818050
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 7, a5  = 7, not taken
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 12.564, ft4  = 3995.6818050
; matmul (matmul.c:6)
      0x80002fc4 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80002fc8 bne     a0, s6, pc - 40        #; a0  = 4, s6  = 5, taken, goto 0x80002fa0
; matmul (matmul.c:0)
      0x80002fa0 li      a1, 0                  #; (wrb) a1  <-- 0
                                                #; (f:fpu) ft4  <-- 4784.9522850
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 4784.9522850, ft4  = 4784.9522850
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4784.9522850
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 59.679, ft4  = 0.0
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                                                #; (f:fpu) ft4  <-- 1124.7104340
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 62.82, ft4  = 1124.7104340
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 3689.8394940
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 3.141, ft4  = 3689.8394940
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 3887.1571140
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 6.282, ft4  = 3887.1571140
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                                                #; (f:fpu) ft4  <-- 4025.2794480
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 9.423, ft4  = 4025.2794480
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
                                                #; (f:fpu) ft4  <-- 4439.6464500
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 1, a5  = 7, taken, goto 0x80002fa4
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 12.564, ft4  = 4439.6464500
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 4479.1099740
; matmul (matmul.c:12)
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 4479.1099740, ft4  = 4479.1099740
; matmul (matmul.c:0)
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4479.1099740
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 59.679, ft4  = 0.0
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 1312.1621730
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 62.82, ft4  = 1312.1621730
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 4074.6088530
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 3.141, ft4  = 4074.6088530
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 4084.4747340
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 6.282, ft4  = 4084.4747340
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 4242.3288300
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 9.423, ft4  = 4242.3288300
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                                                #; (f:fpu) ft4  <-- 4686.2934750
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 2, a5  = 7, taken, goto 0x80002fa4
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 12.564, ft4  = 4686.2934750
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 4765.2205230
; matmul (matmul.c:12)
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 4765.2205230, ft4  = 4765.2205230
; matmul (matmul.c:0)
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4765.2205230
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 15.705, ft4  = 0.0
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 49.3294050
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 18.846, ft4  = 49.3294050
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 522.8916930
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 21.9870000, ft4  = 522.8916930
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 1558.8091980
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 25.128, ft4  = 1558.8091980
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 1716.6632940
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 28.269, ft4  = 1716.6632940
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                                                #; (f:fpu) ft4  <-- 2515.7996550
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 3, a5  = 7, taken, goto 0x80002fa4
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 31.41, ft4  = 2515.7996550
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 4094.3406150
; matmul (matmul.c:12)
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 4094.3406150, ft4  = 4094.3406150
; matmul (matmul.c:0)
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4094.3406150
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 15.705, ft4  = 0.0
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 98.65881
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 28.269, ft1  = 18.846, ft4  = 98.65881
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 631.4163840
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 50.256, ft1  = 21.9870000, ft4  = 631.4163840
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 1736.3950560
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 25.128, ft4  = 1736.3950560
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 1973.1762000
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 28.269, ft4  = 1973.1762000
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                                                #; (f:fpu) ft4  <-- 2861.1054900
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 4, a5  = 7, taken, goto 0x80002fa4
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 31.41, ft4  = 2861.1054900
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 4538.3052600
; matmul (matmul.c:12)
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 4538.3052600, ft4  = 4538.3052600
; matmul (matmul.c:0)
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4538.3052600
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 9.423, ft1  = 15.705, ft4  = 0.0
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 147.9882150
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 31.41, ft1  = 18.846, ft4  = 147.9882150
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 739.9410750
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 53.397, ft1  = 21.9870000, ft4  = 739.9410750
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 1913.9809140
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 25.128, ft4  = 1913.9809140
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 2229.6891060
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 28.269, ft4  = 2229.6891060
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                                                #; (f:fpu) ft4  <-- 3206.4113250
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 5, a5  = 7, taken, goto 0x80002fa4
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 31.41, ft4  = 3206.4113250
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 4982.2699050
; matmul (matmul.c:12)
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 4982.2699050, ft4  = 4982.2699050
; matmul (matmul.c:0)
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4982.2699050
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 12.564, ft1  = 15.705, ft4  = 0.0
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 197.3176200
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 34.551, ft1  = 18.846, ft4  = 197.3176200
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 848.4657660
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 56.538, ft1  = 21.9870000, ft4  = 848.4657660
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 2091.5667720
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 25.128, ft4  = 2091.5667720
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 2486.2020120
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 28.269, ft4  = 2486.2020120
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                                                #; (f:fpu) ft4  <-- 3551.7171600
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 6, a5  = 7, taken, goto 0x80002fa4
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 31.41, ft4  = 3551.7171600
; matmul (matmul.c:0)
      0x80002fa4 mv      a2, a4                 #; a4  = 6, (wrb) a2  <-- 6
; matmul (matmul.c:9)
      0x80002fac addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) ft4  <-- 5426.2345500
; matmul (matmul.c:12)
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 5426.2345500, ft4  = 5426.2345500
; matmul (matmul.c:0)
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5426.2345500
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 15.705, ft1  = 15.705, ft4  = 0.0
      0x80002fac addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80002fac
                                                #; (f:fpu) ft4  <-- 246.6470250
      0x80002fac addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 37.692, ft1  = 18.846, ft4  = 246.6470250
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                                                #; (f:fpu) ft4  <-- 956.9904570
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 59.679, ft1  = 21.9870000, ft4  = 956.9904570
; matmul (matmul.c:9)
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80002fac
      0x80002fac addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) ft4  <-- 2269.1526300
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80002fac
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 25.128, ft4  = 2269.1526300
      0x80002fac addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80002fb4 bnez    a2, pc - 8             #; a2  = 0, not taken
                                                #; (f:fpu) ft4  <-- 2742.7149180
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 28.269, ft4  = 2742.7149180
; matmul (matmul.c:7)
      0x80002fbc addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                                                #; (f:fpu) ft4  <-- 3897.0229950
      0x80002fc0 bne     a1, a5, pc - 28        #; a1  = 7, a5  = 7, not taken
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 31.41, ft4  = 3897.0229950
; matmul (matmul.c:6)
      0x80002fc4 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80002fc8 bne     a0, s6, pc - 40        #; a0  = 5, s6  = 5, not taken
      0x80002fcc j       pc + 0xdc              #; goto 0x800030a8
                                                #; (f:fpu) ft4  <-- 5870.1991950
; matmul (matmul.c:12)
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 5870.1991950, ft4  = 5870.1991950
; matmul (matmul.c:0)
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 5870.1991950
                                                #; (f:fpu) ft4  <-- 0.0
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 18.846, ft1  = 15.705, ft4  = 0.0
                                                #; (f:fpu) ft4  <-- 295.9764300
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 40.833, ft1  = 18.846, ft4  = 295.9764300
                                                #; (f:fpu) ft4  <-- 1065.5151480
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 62.82, ft1  = 21.9870000, ft4  = 1065.5151480
; matmul (matmul.c:15)
      0x800030ac lw      s7, 12(sp)             #; sp  = 0x0011ff00, s7  <~~ Word[0x0011ff0c]
                                                #; (f:fpu) ft4  <-- 2446.7384880
                                                #; (lsu) s7  <-- 0
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 25.128, ft4  = 2446.7384880
                                                #; (f:fpu) ft4  <-- 2999.2278240
; matmul (matmul.c:10)
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 28.269, ft4  = 2999.2278240
                                                #; (f:fpu) ft4  <-- 4242.3288300
; matmul (matmul.c:15)
      0x800030b0 lw      s6, 16(sp)             #; sp  = 0x0011ff00, s6  <~~ Word[0x0011ff10]
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 31.41, ft4  = 4242.3288300
                                                #; (lsu) s6  <-- 0x001000f0
                                                #; (f:fpu) ft4  <-- 4340.9876400
      0x800030b4 lw      s5, 20(sp)             #; sp  = 0x0011ff00, s5  <~~ Word[0x0011ff14]
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 4340.9876400, ft4  = 4340.9876400
; matmul (matmul.c:0)
      0x80002fa8 fsgnj.d ft4, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0, (f:fpu) ft0  <-- 4340.9876400
                                                #; (f:fpu) ft4  <-- 0.0
                                                #; (lsu) s5  <-- 0
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 21.9870000, ft1  = 15.705, ft4  = 0.0
; matmul (matmul.c:15)
      0x800030b8 lw      s4, 24(sp)             #; sp  = 0x0011ff00, s4  <~~ Word[0x0011ff18]
                                                #; (f:fpu) ft4  <-- 345.3058350
                                                #; (lsu) s4  <-- 0
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 43.9740000, ft1  = 18.846, ft4  = 345.3058350
      0x800030bc lw      s3, 28(sp)             #; sp  = 0x0011ff00, s3  <~~ Word[0x0011ff1c]
                                                #; (f:fpu) ft4  <-- 1174.0398390
                                                #; (lsu) s3  <-- 6
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 3.141, ft1  = 21.9870000, ft4  = 1174.0398390
      0x800030c0 lw      s2, 32(sp)             #; sp  = 0x0011ff00, s2  <~~ Word[0x0011ff20]
                                                #; (f:fpu) ft4  <-- 1243.1010060
                                                #; (lsu) s2  <-- 0x00100000
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 25.128, ft1  = 25.128, ft4  = 1243.1010060
      0x800030c4 lw      s1, 36(sp)             #; sp  = 0x0011ff00, s1  <~~ Word[0x0011ff24]
                                                #; (f:fpu) ft4  <-- 1874.5173900
                                                #; (lsu) s1  <-- 0
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 47.115, ft1  = 28.269, ft4  = 1874.5173900
      0x800030c8 lw      s0, 40(sp)             #; sp  = 0x0011ff00, s0  <~~ Word[0x0011ff28]
                                                #; (f:fpu) ft4  <-- 3206.4113250
                                                #; (lsu) s0  <-- 0x00100240
      0x80002fb0 fmadd.d ft4, ft2, ft1, ft4     #; ft2  = 6.282, ft1  = 31.41, ft4  = 3206.4113250
      0x800030cc lw      ra, 44(sp)             #; sp  = 0x0011ff00, ra  <~~ Word[0x0011ff2c]
      0x800030d0 addi    sp, sp, 48             #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011ff30
                                                #; (f:fpu) ft4  <-- 3403.7289450
                                                #; (lsu) ra  <-- 0x800009f0
      0x80002fb8 fsgnj.d ft0, ft4, ft4          #; ft4  = 3403.7289450, ft4  = 3403.7289450
      0x800030d4 ret                            #; ra  = 0x800009f0, goto 0x800009f0
      0x800030a8 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 3403.7289450
; main (test_mat.c:31)
      0x800009f0 li      a3, 5                  #; (wrb) a3  <-- 5
      0x800009f4 li      a4, 6                  #; (wrb) a4  <-- 6
      0x800009f8 mv      a0, s0                 #; s0  = 0x00100240, (wrb) a0  <-- 0x00100240
      0x800009fc mv      a1, s2                 #; s2  = 0x00100000, (wrb) a1  <-- 0x00100000
      0x80000a00 mv      a2, s6                 #; s6  = 0x001000f0, (wrb) a2  <-- 0x001000f0
      0x80000a04 li      a5, 0                  #; (wrb) a5  <-- 0
      0x80000a08 auipc   ra, 0x2                #; (wrb) ra  <-- 0x80002a08
      0x80000a0c jalr    ra, ra, 836            #; ra  = 0x80002a08, (wrb) ra  <-- 0x80000a10, goto 0x80002d4c
; matmul (matmul.c:5)
      0x80002d4c addi    sp, sp, -48            #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff00
      0x80002d50 sw      ra, 44(sp)             #; sp  = 0x0011ff00, 0x80000a10 ~~> Word[0x0011ff2c]
      0x80002d54 sw      s0, 40(sp)             #; sp  = 0x0011ff00, 0x00100240 ~~> Word[0x0011ff28]
      0x80002d58 sw      s1, 36(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff24]
      0x80002d5c sw      s2, 32(sp)             #; sp  = 0x0011ff00, 0x00100000 ~~> Word[0x0011ff20]
      0x80002d60 sw      s3, 28(sp)             #; sp  = 0x0011ff00, 6 ~~> Word[0x0011ff1c]
      0x80002d64 sw      s4, 24(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff18]
      0x80002d68 sw      s5, 20(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff14]
      0x80002d6c sw      s6, 16(sp)             #; sp  = 0x0011ff00, 0x001000f0 ~~> Word[0x0011ff10]
      0x80002d70 sw      s7, 12(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff0c]
      0x80002d74 mv      s6, a3                 #; a3  = 5, (wrb) s6  <-- 5
; matmul (matmul.c:6)
      0x80002d78 slti    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 0
      0x80002d7c slti    s1, a5, 1              #; a5  = 0, (wrb) s1  <-- 1
      0x80002d80 or      a3, a3, s1             #; a3  = 0, s1  = 1, (wrb) a3  <-- 1
      0x80002d84 bnez    a3, pc + 808           #; a3  = 1, taken, goto 0x800030ac
; matmul (matmul.c:15)
      0x800030ac lw      s7, 12(sp)             #; sp  = 0x0011ff00, s7  <~~ Word[0x0011ff0c]
                                                #; (lsu) s7  <-- 0
      0x800030b0 lw      s6, 16(sp)             #; sp  = 0x0011ff00, s6  <~~ Word[0x0011ff10]
                                                #; (lsu) s6  <-- 0x001000f0
      0x800030b4 lw      s5, 20(sp)             #; sp  = 0x0011ff00, s5  <~~ Word[0x0011ff14]
                                                #; (lsu) s5  <-- 0
      0x800030b8 lw      s4, 24(sp)             #; sp  = 0x0011ff00, s4  <~~ Word[0x0011ff18]
                                                #; (lsu) s4  <-- 0
      0x800030bc lw      s3, 28(sp)             #; sp  = 0x0011ff00, s3  <~~ Word[0x0011ff1c]
                                                #; (lsu) s3  <-- 6
      0x800030c0 lw      s2, 32(sp)             #; sp  = 0x0011ff00, s2  <~~ Word[0x0011ff20]
                                                #; (lsu) s2  <-- 0x00100000
      0x800030c4 lw      s1, 36(sp)             #; sp  = 0x0011ff00, s1  <~~ Word[0x0011ff24]
                                                #; (lsu) s1  <-- 0
      0x800030c8 lw      s0, 40(sp)             #; sp  = 0x0011ff00, s0  <~~ Word[0x0011ff28]
                                                #; (lsu) s0  <-- 0x00100240
      0x800030cc lw      ra, 44(sp)             #; sp  = 0x0011ff00, ra  <~~ Word[0x0011ff2c]
      0x800030d0 addi    sp, sp, 48             #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011ff30
                                                #; (lsu) ra  <-- 0x80000a10
      0x800030d4 ret                            #; ra  = 0x80000a10, goto 0x80000a10
; summat (summat.c:5)
;  in main (test_mat.c:35)
      0x80000a10 srli    a0, s0, 20             #; s0  = 0x00100240, (wrb) a0  <-- 1
      0x80000a14 snez    a0, a0                 #; a0  = 1, (wrb) a0  <-- 1
      0x80000a18 lui     a1, 0x120              #; (wrb) a1  <-- 0x00120000
      0x80000a1c addi    a1, a1, -271           #; a1  = 0x00120000, (wrb) a1  <-- 0x0011fef1
      0x80000a20 sltu    a1, s0, a1             #; s0  = 0x00100240, a1  = 0x0011fef1, (wrb) a1  <-- 1
      0x80000a24 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80000a28 beqz    a0, pc + 432           #; a0  = 1, not taken
; summat (summat.c:0)
;  in main (test_mat.c:35)
      0x80000a2c li      s4, 8                  #; (wrb) s4  <-- 8
; summat (summat.c:5)
;  in main (test_mat.c:35)
      0x80000a30 li      a0, 64                 #; (wrb) a0  <-- 64
      0x80000a34 li      a1, 192                #; (wrb) a1  <-- 192
      0x80000a38 scfgw   s3, a0                 #; s3  = 6, a0  = 64
      0x80000a3c scfgw   s4, a1                 #; s4  = 8, a1  = 192
      0x80000a40 li      s5, 4                  #; (wrb) s5  <-- 4
      0x80000a44 li      a0, 96                 #; (wrb) a0  <-- 96
      0x80000a48 li      a1, 224                #; (wrb) a1  <-- 224
      0x80000a4c scfgw   s5, a0                 #; s5  = 4, a0  = 96
      0x80000a50 scfgw   s4, a1                 #; s4  = 8, a1  = 224
      0x80000a54 li      a0, 32                 #; (wrb) a0  <-- 32
      0x80000a58 scfgw   zero, a0               #; a0  = 32
      0x80000a5c scfgwi  s0, 800                #; s0  = 0x00100240
      0x80000a60 csrrsi  a0, ssr, 1             #; 
; summat (summat.c:7)
;  in main (test_mat.c:35)
      0x80000a64 fsgnj.d ft3, ft0, ft0          #; ft0  = 2081.7008910, ft0  = 2081.7008910
                                                #; (f:fpu) ft3  <-- 2081.7008910
      0x80000a68 fadd.d  ft3, ft0, ft3          #; ft0  = 2288.8843920, ft3  = 2081.7008910
                                                #; (f:fpu) ft3  <-- 4370.5852830
      0x80000a6c fadd.d  ft3, ft0, ft3          #; ft0  = 2496.0678930, ft3  = 4370.5852830
                                                #; (f:fpu) ft3  <-- 6866.6531760
      0x80000a70 fadd.d  ft3, ft0, ft3          #; ft0  = 2703.2513940, ft3  = 6866.6531760
                                                #; (f:fpu) ft3  <-- 9569.9045700
      0x80000a74 fadd.d  ft3, ft0, ft3          #; ft0  = 2910.4348950, ft3  = 9569.9045700
                                                #; (f:fpu) ft3  <-- 12480.3394650
      0x80000a78 fadd.d  ft3, ft0, ft3          #; ft0  = 1933.7126760, ft3  = 12480.3394650
                                                #; (f:fpu) ft3  <-- 14414.0521410
      0x80000a7c fadd.d  ft3, ft0, ft3          #; ft0  = 1548.9433170, ft3  = 14414.0521410
                                                #; (f:fpu) ft3  <-- 15962.9954580
      0x80000a80 fadd.d  ft3, ft0, ft3          #; ft0  = 5100.6604770, ft3  = 15962.9954580
                                                #; (f:fpu) ft3  <-- 21063.6559350
      0x80000a84 fadd.d  ft3, ft0, ft3          #; ft0  = 5663.0156940, ft3  = 21063.6559350
                                                #; (f:fpu) ft3  <-- 26726.6716290
      0x80000a88 fadd.d  ft3, ft0, ft3          #; ft0  = 6225.3709110, ft3  = 26726.6716290
                                                #; (f:fpu) ft3  <-- 32952.0425400
      0x80000a8c fadd.d  ft3, ft0, ft3          #; ft0  = 6787.7261280, ft3  = 32952.0425400
                                                #; (f:fpu) ft3  <-- 39739.7686680
      0x80000a90 fadd.d  ft3, ft0, ft3          #; ft0  = 7350.0813450, ft3  = 39739.7686680
                                                #; (f:fpu) ft3  <-- 47089.8500130
      0x80000a94 fadd.d  ft3, ft0, ft3          #; ft0  = 5544.6251220, ft3  = 47089.8500130
                                                #; (f:fpu) ft3  <-- 52634.4751350
      0x80000a98 fadd.d  ft3, ft0, ft3          #; ft0  = 4331.1217590, ft3  = 52634.4751350
                                                #; (f:fpu) ft3  <-- 56965.5968940
      0x80000a9c fadd.d  ft3, ft0, ft3          #; ft0  = 8119.6200630, ft3  = 56965.5968940
                                                #; (f:fpu) ft3  <-- 65085.2169570
      0x80000aa0 fadd.d  ft3, ft0, ft3          #; ft0  = 9037.1469960, ft3  = 65085.2169570
                                                #; (f:fpu) ft3  <-- 74122.3639530
      0x80000aa4 fadd.d  ft3, ft0, ft3          #; ft0  = 9954.6739290, ft3  = 74122.3639530
                                                #; (f:fpu) ft3  <-- 84077.0378820
      0x80000aa8 fadd.d  ft3, ft0, ft3          #; ft0  = 10872.2008620, ft3  = 84077.0378820
                                                #; (f:fpu) ft3  <-- 94949.2387440
      0x80000aac fadd.d  ft3, ft0, ft3          #; ft0  = 11789.7277950, ft3  = 94949.2387440
                                                #; (f:fpu) ft3  <-- 106738.9665390
      0x80000ab0 fadd.d  ft3, ft0, ft3          #; ft0  = 9155.5375680, ft3  = 106738.9665390
                                                #; (f:fpu) ft3  <-- 115894.5041070
      0x80000ab4 fadd.d  ft3, ft0, ft3          #; ft0  = 7113.3002010, ft3  = 115894.5041070
                                                #; (f:fpu) ft3  <-- 123007.8043080
      0x80000ab8 fadd.d  ft3, ft0, ft3          #; ft0  = 2851.2396090, ft3  = 123007.8043080
                                                #; (f:fpu) ft3  <-- 125859.0439170
      0x80000abc fadd.d  ft3, ft0, ft3          #; ft0  = 3334.6677780, ft3  = 125859.0439170
                                                #; (f:fpu) ft3  <-- 129193.7116950
      0x80000ac0 fadd.d  ft3, ft0, ft3          #; ft0  = 3818.0959470, ft3  = 129193.7116950
                                                #; (f:fpu) ft3  <-- 133011.8076420
      0x80000ac4 fadd.d  ft3, ft0, ft3          #; ft0  = 4301.5241160, ft3  = 133011.8076420
                                                #; (f:fpu) ft3  <-- 137313.3317580
      0x80000ac8 fadd.d  ft3, ft0, ft3          #; ft0  = 4784.9522850, ft3  = 137313.3317580
                                                #; (f:fpu) ft3  <-- 142098.2840430
      0x80000acc fadd.d  ft3, ft0, ft3          #; ft0  = 4479.1099740, ft3  = 142098.2840430
; main (test_mat.c:37)
      0x80000af4 li      a3, 5                  #; (wrb) a3  <-- 5
                                                #; (f:fpu) ft3  <-- 146577.3940170
      0x80000af8 li      a5, 7                  #; (wrb) a5  <-- 7
      0x80000ad0 fadd.d  ft3, ft0, ft3          #; ft0  = 4765.2205230, ft3  = 146577.3940170
      0x80000afc mv      a0, s0                 #; s0  = 0x00100240, (wrb) a0  <-- 0x00100240
                                                #; (f:fpu) ft3  <-- 151342.6145400
; summat (summat.c:7)
;  in main (test_mat.c:35)
      0x80000ad4 fadd.d  ft3, ft0, ft3          #; ft0  = 4094.3406150, ft3  = 151342.6145400
                                                #; (f:fpu) ft3  <-- 155436.9551550
      0x80000ad8 fadd.d  ft3, ft0, ft3          #; ft0  = 4538.3052600, ft3  = 155436.9551550
; main (test_mat.c:37)
      0x80000b00 mv      a1, s2                 #; s2  = 0x00100000, (wrb) a1  <-- 0x00100000
      0x80000b04 mv      a2, s6                 #; s6  = 0x001000f0, (wrb) a2  <-- 0x001000f0
                                                #; (f:fpu) ft3  <-- 159975.2604150
      0x80000b08 li      a4, 0                  #; (wrb) a4  <-- 0
      0x80000adc fadd.d  ft3, ft0, ft3          #; ft0  = 4982.2699050, ft3  = 159975.2604150
      0x80000b0c auipc   ra, 0x2                #; (wrb) ra  <-- 0x80002b0c
                                                #; (f:fpu) ft3  <-- 164957.5303200
; summat (summat.c:7)
;  in main (test_mat.c:35)
      0x80000ae0 fadd.d  ft3, ft0, ft3          #; ft0  = 5426.2345500, ft3  = 164957.5303200
                                                #; (f:fpu) ft3  <-- 170383.7648700
      0x80000ae4 fadd.d  ft3, ft0, ft3          #; ft0  = 5870.1991950, ft3  = 170383.7648700
; main (test_mat.c:37)
      0x80000b10 jalr    ra, ra, 576            #; ra  = 0x80002b0c, (wrb) ra  <-- 0x80000b14, goto 0x80002d4c
                                                #; (f:fpu) ft3  <-- 176253.9640650
; summat (summat.c:7)
;  in main (test_mat.c:35)
      0x80000ae8 fadd.d  ft3, ft0, ft3          #; ft0  = 4340.9876400, ft3  = 176253.9640650
                                                #; (f:fpu) ft3  <-- 180594.9517050
      0x80000aec fadd.d  fs0, ft0, ft3          #; ft0  = 3403.7289450, ft3  = 180594.9517050
; summat (summat.c:0)
;  in main (test_mat.c:35)
      0x80000af0 csrrci  a0, ssr, 1             #; 
                                                #; (f:fpu) fs0  <-- 183998.6806500
; matmul (matmul.c:5)
      0x80002d4c addi    sp, sp, -48            #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff00
      0x80002d50 sw      ra, 44(sp)             #; sp  = 0x0011ff00, 0x80000b14 ~~> Word[0x0011ff2c]
      0x80002d54 sw      s0, 40(sp)             #; sp  = 0x0011ff00, 0x00100240 ~~> Word[0x0011ff28]
      0x80002d58 sw      s1, 36(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff24]
      0x80002d5c sw      s2, 32(sp)             #; sp  = 0x0011ff00, 0x00100000 ~~> Word[0x0011ff20]
      0x80002d60 sw      s3, 28(sp)             #; sp  = 0x0011ff00, 6 ~~> Word[0x0011ff1c]
      0x80002d64 sw      s4, 24(sp)             #; sp  = 0x0011ff00, 8 ~~> Word[0x0011ff18]
      0x80002d68 sw      s5, 20(sp)             #; sp  = 0x0011ff00, 4 ~~> Word[0x0011ff14]
      0x80002d6c sw      s6, 16(sp)             #; sp  = 0x0011ff00, 0x001000f0 ~~> Word[0x0011ff10]
      0x80002d70 sw      s7, 12(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff0c]
      0x80002d74 mv      s6, a3                 #; a3  = 5, (wrb) s6  <-- 5
; matmul (matmul.c:6)
      0x80002d78 slti    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 0
      0x80002d7c slti    s1, a5, 1              #; a5  = 7, (wrb) s1  <-- 0
      0x80002d80 or      a3, a3, s1             #; a3  = 0, s1  = 0, (wrb) a3  <-- 0
      0x80002d84 bnez    a3, pc + 808           #; a3  = 0, not taken
; matmul (matmul.c:0)
      0x80002d88 mv      s7, a0                 #; a0  = 0x00100240, (wrb) s7  <-- 0x00100240
; matmul (matmul.c:6)
      0x80002d8c addi    a6, a5, -1             #; a5  = 7, (wrb) a6  <-- 6
      0x80002d90 slli    t4, a6, 3              #; a6  = 6, (wrb) t4  <-- 48
      0x80002d94 addi    t3, s6, -1             #; s6  = 5, (wrb) t3  <-- 4
      0x80002d98 slli    s2, a5, 3              #; a5  = 7, (wrb) s2  <-- 56
      0x80002d9c mul     a0, s2, t3             #; s2  = 56, t3  = 4
                                                #; (acc) a0  <-- 0x00ae8533
      0x80002da0 add     a0, t4, a0             #; t4  = 48, a0  = 224, (wrb) a0  <-- 272
      0x80002da4 add     t6, a0, s7             #; a0  = 272, s7  = 0x00100240, (wrb) t6  <-- 0x00100350
      0x80002da8 sltu    a0, t6, a0             #; t6  = 0x00100350, a0  = 272, (wrb) a0  <-- 0
; matmul (matmul.c:9)
      0x80002dac bge     zero, a4, pc + 80      #; a4  = 0, taken, goto 0x80002dfc
; matmul (matmul.c:6)
      0x80002dfc srli    a1, s7, 20             #; s7  = 0x00100240, (wrb) a1  <-- 1
      0x80002e00 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
      0x80002e04 beqz    a0, pc + 572           #; a0  = 0, taken, goto 0x80003040
; matmul (matmul.c:0)
      0x80003040 lui     a0, 0x120              #; (wrb) a0  <-- 0x00120000
      0x80003044 addi    a0, a0, 1              #; a0  = 0x00120000, (wrb) a0  <-- 0x00120001
      0x80003048 sltu    a0, t6, a0             #; t6  = 0x00100350, a0  = 0x00120001, (wrb) a0  <-- 1
; matmul (matmul.c:6)
      0x8000304c and     a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80003050 beqz    a0, pc - 572           #; a0  = 1, not taken
; matmul (matmul.c:0)
      0x80003054 li      a0, 0                  #; (wrb) a0  <-- 0
      0x80003058 li      a1, 8                  #; (wrb) a1  <-- 8
; matmul (matmul.c:6)
      0x8000305c li      a2, 64                 #; (wrb) a2  <-- 64
      0x80003060 scfgw   a6, a2                 #; a6  = 6, a2  = 64
      0x80003064 li      a2, 192                #; (wrb) a2  <-- 192
      0x80003068 scfgw   a1, a2                 #; a1  = 8, a2  = 192
      0x8000306c li      a2, 96                 #; (wrb) a2  <-- 96
      0x80003070 li      a3, 224                #; (wrb) a3  <-- 224
      0x80003074 scfgw   t3, a2                 #; t3  = 4, a2  = 96
      0x80003078 scfgw   a1, a3                 #; a1  = 8, a3  = 224
      0x8000307c li      a1, 32                 #; (wrb) a1  <-- 32
      0x80003080 scfgw   zero, a1               #; a1  = 32
      0x80003084 scfgwi  s7, 928                #; s7  = 0x00100240
                                                #; (acc) gp  <-- 0xd20001d3
      0x80003088 csrrsi  a1, ssr, 1             #; 
      0x8000308c fcvt.d.w ft3, zero             #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
; matmul (matmul.c:0)
      0x80003090 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
; matmul (matmul.c:7)
      0x80003098 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
      0x8000309c bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
      0x8000309c bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
      0x8000309c bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
      0x8000309c bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
      0x8000309c bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
      0x8000309c bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
      0x8000309c bnez    a1, pc - 8             #; a1  = 0, not taken
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
; matmul (matmul.c:6)
      0x800030a0 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x800030a4 bne     a0, s6, pc - 20        #; a0  = 1, s6  = 5, taken, goto 0x80003090
; matmul (matmul.c:0)
      0x80003090 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
; matmul (matmul.c:7)
      0x80003098 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
      0x8000309c bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
      0x8000309c bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
      0x8000309c bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
      0x8000309c bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
      0x8000309c bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
      0x8000309c bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
      0x8000309c bnez    a1, pc - 8             #; a1  = 0, not taken
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
; matmul (matmul.c:6)
      0x800030a0 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
                                                #; (f:fpu) ft0  <-- 0.0
      0x800030a4 bne     a0, s6, pc - 20        #; a0  = 2, s6  = 5, taken, goto 0x80003090
; matmul (matmul.c:0)
      0x80003090 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
; matmul (matmul.c:7)
      0x80003098 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
      0x8000309c bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
      0x8000309c bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
      0x8000309c bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
      0x8000309c bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
      0x8000309c bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
      0x8000309c bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
      0x8000309c bnez    a1, pc - 8             #; a1  = 0, not taken
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
; matmul (matmul.c:6)
      0x800030a0 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
                                                #; (f:fpu) ft0  <-- 0.0
      0x800030a4 bne     a0, s6, pc - 20        #; a0  = 3, s6  = 5, taken, goto 0x80003090
; matmul (matmul.c:0)
      0x80003090 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
; matmul (matmul.c:7)
      0x80003098 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
      0x8000309c bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
      0x8000309c bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
      0x8000309c bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
      0x8000309c bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
      0x8000309c bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
      0x8000309c bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
      0x8000309c bnez    a1, pc - 8             #; a1  = 0, not taken
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
; matmul (matmul.c:6)
      0x800030a0 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
                                                #; (f:fpu) ft0  <-- 0.0
      0x800030a4 bne     a0, s6, pc - 20        #; a0  = 4, s6  = 5, taken, goto 0x80003090
; matmul (matmul.c:0)
      0x80003090 mv      a1, a5                 #; a5  = 7, (wrb) a1  <-- 7
; matmul (matmul.c:7)
      0x80003098 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
      0x8000309c bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
      0x8000309c bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
      0x8000309c bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
      0x8000309c bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
      0x8000309c bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
      0x8000309c bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80003094
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80003098 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
      0x8000309c bnez    a1, pc - 8             #; a1  = 0, not taken
      0x80003094 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
; matmul (matmul.c:6)
      0x800030a0 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
                                                #; (f:fpu) ft0  <-- 0.0
      0x800030a4 bne     a0, s6, pc - 20        #; a0  = 5, s6  = 5, not taken
; matmul (matmul.c:15)
      0x800030ac lw      s7, 12(sp)             #; sp  = 0x0011ff00, s7  <~~ Word[0x0011ff0c]
      0x800030a8 csrrci  a0, ssr, 1             #; 
                                                #; (lsu) s7  <-- 0
      0x800030b0 lw      s6, 16(sp)             #; sp  = 0x0011ff00, s6  <~~ Word[0x0011ff10]
                                                #; (lsu) s6  <-- 0x001000f0
      0x800030b4 lw      s5, 20(sp)             #; sp  = 0x0011ff00, s5  <~~ Word[0x0011ff14]
                                                #; (lsu) s5  <-- 4
      0x800030b8 lw      s4, 24(sp)             #; sp  = 0x0011ff00, s4  <~~ Word[0x0011ff18]
                                                #; (lsu) s4  <-- 8
      0x800030bc lw      s3, 28(sp)             #; sp  = 0x0011ff00, s3  <~~ Word[0x0011ff1c]
                                                #; (lsu) s3  <-- 6
      0x800030c0 lw      s2, 32(sp)             #; sp  = 0x0011ff00, s2  <~~ Word[0x0011ff20]
                                                #; (lsu) s2  <-- 0x00100000
      0x800030c4 lw      s1, 36(sp)             #; sp  = 0x0011ff00, s1  <~~ Word[0x0011ff24]
                                                #; (lsu) s1  <-- 0
      0x800030c8 lw      s0, 40(sp)             #; sp  = 0x0011ff00, s0  <~~ Word[0x0011ff28]
                                                #; (lsu) s0  <-- 0x00100240
      0x800030cc lw      ra, 44(sp)             #; sp  = 0x0011ff00, ra  <~~ Word[0x0011ff2c]
      0x800030d0 addi    sp, sp, 48             #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011ff30
                                                #; (lsu) ra  <-- 0x80000b14
      0x800030d4 ret                            #; ra  = 0x80000b14, goto 0x80000b14
; summat (summat.c:5)
;  in main (test_mat.c:38)
      0x80000b14 li      a0, 64                 #; (wrb) a0  <-- 64
      0x80000b18 li      a1, 192                #; (wrb) a1  <-- 192
      0x80000b1c scfgw   s3, a0                 #; s3  = 6, a0  = 64
      0x80000b20 scfgw   s4, a1                 #; s4  = 8, a1  = 192
      0x80000b24 li      a0, 96                 #; (wrb) a0  <-- 96
      0x80000b28 li      a1, 224                #; (wrb) a1  <-- 224
      0x80000b2c scfgw   s5, a0                 #; s5  = 4, a0  = 96, (acc) ra  <-- 0x00aaa0ab
      0x80000b30 scfgw   s4, a1                 #; s4  = 8, a1  = 224
      0x80000b34 li      a0, 32                 #; (wrb) a0  <-- 32
      0x80000b38 scfgw   zero, a0               #; a0  = 32
      0x80000b3c scfgwi  s0, 800                #; s0  = 0x00100240
      0x80000b40 csrrsi  a0, ssr, 1             #; 
; summat (summat.c:7)
;  in main (test_mat.c:38)
      0x80000b44 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000b48 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000b4c fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000b50 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000b54 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000b58 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000b5c fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000b60 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000b64 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000b68 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000b6c fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000b70 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000b74 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000b78 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000b7c fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000b80 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000b84 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000b88 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000b8c fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000b90 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000b94 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000b98 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000b9c fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000ba0 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000ba4 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000ba8 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000bac fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
; summat (summat.c:0)
;  in main (test_mat.c:38)
      0x80000bd4 j       pc + 0x24c             #; goto 0x80000e20
                                                #; (f:fpu) ft3  <-- 0.0
; summat (summat.c:7)
;  in main (test_mat.c:38)
      0x80000bb0 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000bb4 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000bb8 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
; main (summat.c:0)
      0x80000e20 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003e20
      0x80000e24 addi    a0, a0, -1448          #; a0  = 0x80003e20, (wrb) a0  <-- 0x80003878
                                                #; (f:fpu) ft3  <-- 0.0
; summat (summat.c:7)
;  in main (test_mat.c:38)
      0x80000bbc fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000bc0 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000bc4 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000bc8 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000bcc fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
; summat (summat.c:0)
;  in main (test_mat.c:38)
      0x80000bd0 csrrci  a0, ssr, 1             #; 
; main (summat.c:0)
      0x80000e28 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003878], (f:fpu) ft3  <-- 0.0
; main (test_mat.c:43)
      0x80000e3c lw      a2, 0(sp)              #; sp  = 0x0011ff30, a2  <~~ Word[0x0011ff30]
                                                #; (f:lsu) ft4  <-- -183998.6806500
; main (test_mat.c:40)
      0x80000e2c fadd.d  ft4, fs0, ft4          #; fs0  = 183998.6806500, ft4  = -183998.6806500
                                                #; (lsu) a2  <-- 0
; main (test_mat.c:43)
      0x80000e40 lw      a3, 4(sp)              #; sp  = 0x0011ff30, a3  <~~ Word[0x0011ff34]
      0x80000e44 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002e44
                                                #; (f:fpu) ft4  <-- -0.0000000
      0x80000e48 addi    a0, a0, 1809           #; a0  = 0x80002e44, (wrb) a0  <-- 0x80003555
      0x80000e30 fadd.d  ft3, ft4, ft3          #; ft4  = -0.0000000, ft3  = 0.0
      0x80000e4c auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000e4c
                                                #; (lsu) a3  <-- 0
                                                #; (f:fpu) ft3  <-- -0.0000000
; main (test_mat.c:41)
      0x80000e34 fsgnjx.d fs0, ft3, ft3         #; ft3  = -0.0000000, ft3  = -0.0000000
                                                #; (f:fpu) fs0  <-- 0.0000000
; main (test_mat.c:43)
      0x80000e38 fsd     fs0, 0(sp)             #; 0.0000000 ~~> Doub[0x0011ff30]
      0x80000e50 jalr    ra, ra, 68             #; ra  = 0x80000e4c, (wrb) ra  <-- 0x80000e54, goto 0x80000e90
; printf_ (printf.c:863)
      0x80000e90 addi    sp, sp, -48            #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff00
      0x80000e94 sw      ra, 12(sp)             #; sp  = 0x0011ff00, 0x80000e54 ~~> Word[0x0011ff0c]
      0x80000e98 mv      t0, a0                 #; a0  = 0x80003555, (wrb) t0  <-- 0x80003555
      0x80000e9c sw      a7, 44(sp)             #; sp  = 0x0011ff00, 5 ~~> Word[0x0011ff2c]
      0x80000ea0 sw      a6, 40(sp)             #; sp  = 0x0011ff00, 6 ~~> Word[0x0011ff28]
      0x80000ea4 sw      a5, 36(sp)             #; sp  = 0x0011ff00, 7 ~~> Word[0x0011ff24]
      0x80000ea8 sw      a4, 32(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff20]
      0x80000eac sw      a3, 28(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff1c]
      0x80000eb0 sw      a2, 24(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff18]
      0x80000eb4 sw      a1, 20(sp)             #; sp  = 0x0011ff00, 224 ~~> Word[0x0011ff14]
      0x80000eb8 addi    a0, sp, 20             #; sp  = 0x0011ff00, (wrb) a0  <-- 0x0011ff14
; printf_ (printf.c:865)
      0x80000ebc sw      a0, 8(sp)              #; sp  = 0x0011ff00, 0x0011ff14 ~~> Word[0x0011ff08]
; printf_ (printf.c:867)
      0x80000ec0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001ec0
      0x80000ec4 addi    a0, a0, -988           #; a0  = 0x80001ec0, (wrb) a0  <-- 0x80001ae4
      0x80000ec8 addi    a1, sp, 7              #; sp  = 0x0011ff00, (wrb) a1  <-- 0x0011ff07
      0x80000ecc li      a2, -1                 #; (wrb) a2  <-- -1
      0x80000ed0 addi    a4, sp, 20             #; sp  = 0x0011ff00, (wrb) a4  <-- 0x0011ff14
      0x80000ed4 mv      a3, t0                 #; t0  = 0x80003555, (wrb) a3  <-- 0x80003555
      0x80000ed8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000ed8
      0x80000edc jalr    ra, ra, 20             #; ra  = 0x80000ed8, (wrb) ra  <-- 0x80000ee0, goto 0x80000eec
; _vsnprintf.llvm.17592004524093383706 (printf.c:578)
      0x80000eec addi    sp, sp, -112           #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011fe90
      0x80000ef0 sw      ra, 108(sp)            #; sp  = 0x0011fe90, 0x80000ee0 ~~> Word[0x0011fefc]
      0x80000ef4 sw      s0, 104(sp)            #; sp  = 0x0011fe90, 0x00100240 ~~> Word[0x0011fef8]
      0x80000ef8 sw      s1, 100(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fef4]
      0x80000efc sw      s2, 96(sp)             #; sp  = 0x0011fe90, 0x00100000 ~~> Word[0x0011fef0]
      0x80000f00 sw      s3, 92(sp)             #; sp  = 0x0011fe90, 6 ~~> Word[0x0011feec]
      0x80000f04 sw      s4, 88(sp)             #; sp  = 0x0011fe90, 8 ~~> Word[0x0011fee8]
      0x80000f08 sw      s5, 84(sp)             #; sp  = 0x0011fe90, 4 ~~> Word[0x0011fee4]
      0x80000f0c sw      s6, 80(sp)             #; sp  = 0x0011fe90, 0x001000f0 ~~> Word[0x0011fee0]
      0x80000f10 sw      s7, 76(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fedc]
      0x80000f14 sw      s8, 72(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed8]
      0x80000f18 sw      s9, 68(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed4]
      0x80000f1c sw      s10, 64(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed0]
      0x80000f20 sw      s11, 60(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fecc]
      0x80000f24 mv      s3, a4                 #; a4  = 0x0011ff14, (wrb) s3  <-- 0x0011ff14
      0x80000f28 mv      s0, a3                 #; a3  = 0x80003555, (wrb) s0  <-- 0x80003555
      0x80000f2c mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x80000f30 mv      s4, a1                 #; a1  = 0x0011ff07, (wrb) s4  <-- 0x0011ff07
; _vsnprintf.llvm.17592004524093383706 (printf.c:582)
      0x80000f34 beqz    a1, pc + 12            #; a1  = 0x0011ff07, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000f38 mv      s2, a0                 #; a0  = 0x80001ae4, (wrb) s2  <-- 0x80001ae4
      0x80000f3c j       pc + 0xc               #; goto 0x80000f48
      0x80000f48 li      s8, 0                  #; (wrb) s8  <-- 0
      0x80000f4c li      s6, 37                 #; (wrb) s6  <-- 37
      0x80000f50 li      s11, 16                #; (wrb) s11 <-- 16
      0x80000f54 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000f58 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000f5c addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000f60 sw      a0, 24(sp)             #; sp  = 0x0011fe90, 2048 ~~> Word[0x0011fea8]
      0x80000f64 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000f68 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000f6c sw      a0, 16(sp)             #; sp  = 0x0011fe90, 65535 ~~> Word[0x0011fea0]
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000f70 addi    s10, s0, 2             #; s0  = 0x80003555, (wrb) s10 <-- 0x80003557
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000f74 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000f78 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000f7c lbu     a0, 0(s0)              #; s0  = 0x80003555, a0  <~~ Byte[0x80003555]
                                                #; (lsu) a0  <-- 101
      0x80000f80 beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x80000f84 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000f88 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000f8c mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000f90 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000f94 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000f98 jalr    s2                     #; s2  = 0x80001ae4, (wrb) ra  <-- 0x80000f9c, goto 0x80001ae4
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001ae4 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
      0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
      0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 0
      0x80001b04 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 1 ~~> Word[0x80003934]
      0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 0, (wrb) a4  <-- 0x80003934
      0x80001b10 sb      a0, 72(a4)             #; a4  = 0x80003934, 101 ~~> Byte[0x8000397c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 1
      0x80001b18 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x80001b1c snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x80001b20 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x80001b24 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x80001b8c ret                            #; ra  = 0x80000f9c, goto 0x80000f9c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000f9c addi    s0, s0, 1              #; s0  = 0x80003555, (wrb) s0  <-- 0x80003556
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000fa0 addi    s10, s10, 1            #; s10 = 0x80003557, (wrb) s10 <-- 0x80003558
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000fa4 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000fa8 lbu     a0, 0(s0)              #; s0  = 0x80003556, a0  <~~ Byte[0x80003556]
                                                #; (lsu) a0  <-- 114
      0x80000fac bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000f84
      0x80000f84 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000f88 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000f8c mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000f90 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000f94 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000f98 jalr    s2                     #; s2  = 0x80001ae4, (wrb) ra  <-- 0x80000f9c, goto 0x80001ae4
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001ae4 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
      0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
      0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 1
      0x80001b04 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 2 ~~> Word[0x80003934]
      0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 1, (wrb) a4  <-- 0x80003935
      0x80001b10 sb      a0, 72(a4)             #; a4  = 0x80003935, 114 ~~> Byte[0x8000397d]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 2
      0x80001b18 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x80001b1c snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x80001b20 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001b24 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x80001b8c ret                            #; ra  = 0x80000f9c, goto 0x80000f9c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000f9c addi    s0, s0, 1              #; s0  = 0x80003556, (wrb) s0  <-- 0x80003557
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000fa0 addi    s10, s10, 1            #; s10 = 0x80003558, (wrb) s10 <-- 0x80003559
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000fa4 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000fa8 lbu     a0, 0(s0)              #; s0  = 0x80003557, a0  <~~ Byte[0x80003557]
                                                #; (lsu) a0  <-- 114
      0x80000fac bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000f84
      0x80000f84 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000f88 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000f8c mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000f90 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000f94 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000f98 jalr    s2                     #; s2  = 0x80001ae4, (wrb) ra  <-- 0x80000f9c, goto 0x80001ae4
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001ae4 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
      0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
      0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 2
      0x80001b04 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 3 ~~> Word[0x80003934]
      0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 2, (wrb) a4  <-- 0x80003936
      0x80001b10 sb      a0, 72(a4)             #; a4  = 0x80003936, 114 ~~> Byte[0x8000397e]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 3
      0x80001b18 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x80001b1c snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x80001b20 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001b24 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x80001b8c ret                            #; ra  = 0x80000f9c, goto 0x80000f9c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000f9c addi    s0, s0, 1              #; s0  = 0x80003557, (wrb) s0  <-- 0x80003558
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000fa0 addi    s10, s10, 1            #; s10 = 0x80003559, (wrb) s10 <-- 0x8000355a
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000fa4 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000fa8 lbu     a0, 0(s0)              #; s0  = 0x80003558, a0  <~~ Byte[0x80003558]
                                                #; (lsu) a0  <-- 111
      0x80000fac bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000f84
      0x80000f84 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000f88 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000f8c mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000f90 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000f94 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000f98 jalr    s2                     #; s2  = 0x80001ae4, (wrb) ra  <-- 0x80000f9c, goto 0x80001ae4
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001ae4 beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
      0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
      0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 3
      0x80001b04 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 4 ~~> Word[0x80003934]
      0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 3, (wrb) a4  <-- 0x80003937
      0x80001b10 sb      a0, 72(a4)             #; a4  = 0x80003937, 111 ~~> Byte[0x8000397f]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 4
      0x80001b18 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x80001b1c snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x80001b20 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x80001b24 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x80001b8c ret                            #; ra  = 0x80000f9c, goto 0x80000f9c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000f9c addi    s0, s0, 1              #; s0  = 0x80003558, (wrb) s0  <-- 0x80003559
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000fa0 addi    s10, s10, 1            #; s10 = 0x8000355a, (wrb) s10 <-- 0x8000355b
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000fa4 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000fa8 lbu     a0, 0(s0)              #; s0  = 0x80003559, a0  <~~ Byte[0x80003559]
                                                #; (lsu) a0  <-- 114
      0x80000fac bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000f84
      0x80000f84 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000f88 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000f8c mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000f90 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000f94 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000f98 jalr    s2                     #; s2  = 0x80001ae4, (wrb) ra  <-- 0x80000f9c, goto 0x80001ae4
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001ae4 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
      0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
      0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 4
      0x80001b04 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 5 ~~> Word[0x80003934]
      0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 4, (wrb) a4  <-- 0x80003938
      0x80001b10 sb      a0, 72(a4)             #; a4  = 0x80003938, 114 ~~> Byte[0x80003980]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 5
      0x80001b18 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x80001b1c snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x80001b20 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001b24 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x80001b8c ret                            #; ra  = 0x80000f9c, goto 0x80000f9c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000f9c addi    s0, s0, 1              #; s0  = 0x80003559, (wrb) s0  <-- 0x8000355a
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000fa0 addi    s10, s10, 1            #; s10 = 0x8000355b, (wrb) s10 <-- 0x8000355c
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000fa4 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000fa8 lbu     a0, 0(s0)              #; s0  = 0x8000355a, a0  <~~ Byte[0x8000355a]
                                                #; (lsu) a0  <-- 32
      0x80000fac bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000f84
      0x80000f84 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000f88 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000f8c mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000f90 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000f94 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000f98 jalr    s2                     #; s2  = 0x80001ae4, (wrb) ra  <-- 0x80000f9c, goto 0x80001ae4
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001ae4 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
      0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
      0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 5
      0x80001b04 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 6 ~~> Word[0x80003934]
      0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 5, (wrb) a4  <-- 0x80003939
      0x80001b10 sb      a0, 72(a4)             #; a4  = 0x80003939, 32 ~~> Byte[0x80003981]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 6
      0x80001b18 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x80001b1c snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x80001b20 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001b24 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x80001b8c ret                            #; ra  = 0x80000f9c, goto 0x80000f9c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000f9c addi    s0, s0, 1              #; s0  = 0x8000355a, (wrb) s0  <-- 0x8000355b
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000fa0 addi    s10, s10, 1            #; s10 = 0x8000355c, (wrb) s10 <-- 0x8000355d
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000fa4 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000fa8 lbu     a0, 0(s0)              #; s0  = 0x8000355b, a0  <~~ Byte[0x8000355b]
                                                #; (lsu) a0  <-- 61
      0x80000fac bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000f84
      0x80000f84 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000f88 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000f8c mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000f90 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000f94 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000f98 jalr    s2                     #; s2  = 0x80001ae4, (wrb) ra  <-- 0x80000f9c, goto 0x80001ae4
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001ae4 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
      0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
      0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 6
      0x80001b04 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 7 ~~> Word[0x80003934]
      0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 6, (wrb) a4  <-- 0x8000393a
      0x80001b10 sb      a0, 72(a4)             #; a4  = 0x8000393a, 61 ~~> Byte[0x80003982]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 7
      0x80001b18 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x80001b1c snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x80001b20 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x80001b24 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x80001b8c ret                            #; ra  = 0x80000f9c, goto 0x80000f9c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000f9c addi    s0, s0, 1              #; s0  = 0x8000355b, (wrb) s0  <-- 0x8000355c
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000fa0 addi    s10, s10, 1            #; s10 = 0x8000355d, (wrb) s10 <-- 0x8000355e
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000fa4 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000fa8 lbu     a0, 0(s0)              #; s0  = 0x8000355c, a0  <~~ Byte[0x8000355c]
                                                #; (lsu) a0  <-- 32
      0x80000fac bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000f84
      0x80000f84 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000f88 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000f8c mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000f90 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000f94 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000f98 jalr    s2                     #; s2  = 0x80001ae4, (wrb) ra  <-- 0x80000f9c, goto 0x80001ae4
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001ae4 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
      0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
      0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 7
      0x80001b04 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 8 ~~> Word[0x80003934]
      0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 7, (wrb) a4  <-- 0x8000393b
      0x80001b10 sb      a0, 72(a4)             #; a4  = 0x8000393b, 32 ~~> Byte[0x80003983]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 8
      0x80001b18 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x80001b1c snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x80001b20 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001b24 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x80001b8c ret                            #; ra  = 0x80000f9c, goto 0x80000f9c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000f9c addi    s0, s0, 1              #; s0  = 0x8000355c, (wrb) s0  <-- 0x8000355d
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000fa0 addi    s10, s10, 1            #; s10 = 0x8000355e, (wrb) s10 <-- 0x8000355f
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000fa4 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000fa8 lbu     a0, 0(s0)              #; s0  = 0x8000355d, a0  <~~ Byte[0x8000355d]
                                                #; (lsu) a0  <-- 37
      0x80000fac bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000f84
      0x80000f84 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000fb4
; _vsnprintf.llvm.17592004524093383706 (printf.c:602)
      0x80000fb4 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000fb8 j       pc + 0x10              #; goto 0x80000fc8
; _vsnprintf.llvm.17592004524093383706 (printf.c:604)
      0x80000fc8 lbu     a0, -1(s10)            #; s10 = 0x8000355f, a0  <~~ Byte[0x8000355e]
                                                #; (lsu) a0  <-- 102
      0x80000fcc addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000fd0 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80001008
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.17592004524093383706 (printf.c:616)
      0x80001008 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x8000100c andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.17592004524093383706 (printf.c:616)
      0x80001010 addi    a1, s10, -1            #; s10 = 0x8000355f, (wrb) a1  <-- 0x8000355e
      0x80001014 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80001018 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80001094
; _vsnprintf.llvm.17592004524093383706 (printf.c:619)
      0x80001094 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80001098 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x800010e8
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x800010e8 li      s6, 0                  #; (wrb) s6  <-- 0
      0x800010ec mv      s10, a1                #; a1  = 0x8000355e, (wrb) s10 <-- 0x8000355e
; _vsnprintf.llvm.17592004524093383706 (printf.c:633)
      0x800010f0 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x800010f4 li      s7, 0                  #; (wrb) s7  <-- 0
      0x800010f8 j       pc + 0xc               #; goto 0x80001104
; _vsnprintf.llvm.17592004524093383706 (printf.c:647)
      0x80001104 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80001108 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x8000110c slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80001110 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80001114 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80001118 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x8000117c
; _vsnprintf.llvm.17592004524093383706 (printf.c:683)
      0x8000117c addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80001180 li      a2, 83                 #; (wrb) a2  <-- 83
      0x80001184 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80001188 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x8000118c auipc   a2, 0x2                #; (wrb) a2  <-- 0x8000318c
      0x80001190 addi    a2, a2, 1096           #; a2  = 0x8000318c, (wrb) a2  <-- 0x800035d4
      0x80001194 add     a1, a1, a2             #; a1  = 260, a2  = 0x800035d4, (wrb) a1  <-- 0x800036d8
      0x80001198 lw      a2, 0(a1)              #; a1  = 0x800036d8, a2  <~~ Word[0x800036d8]
      0x8000119c li      a1, 8                  #; (wrb) a1  <-- 8
      0x800011a0 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x800011d4
      0x800011a4 jr      a2                     #; a2  = 0x800011d4, goto 0x800011d4
; _vsnprintf.llvm.17592004524093383706 (printf.c:760)
      0x800011d4 li      a1, 70                 #; (wrb) a1  <-- 70
      0x800011d8 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x800011e0
; _vsnprintf.llvm.17592004524093383706 (printf.c:761)
      0x800011e0 addi    a0, s3, 7              #; s3  = 0x0011ff14, (wrb) a0  <-- 0x0011ff1b
      0x800011e4 andi    a0, a0, -8             #; a0  = 0x0011ff1b, (wrb) a0  <-- 0x0011ff18
      0x800011ec addi    s3, a0, 8              #; a0  = 0x0011ff18, (wrb) s3  <-- 0x0011ff20
      0x800011e8 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff18]
                                                #; (f:lsu) fa0  <-- 0.0
      0x800011f0 mv      a0, s2                 #; s2  = 0x80001ae4, (wrb) a0  <-- 0x80001ae4
      0x800011f4 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x800011f8 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x800011fc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001200 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80001204 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80001208 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x8000120c auipc   ra, 0x1                #; (wrb) ra  <-- 0x8000220c
      0x80001210 jalr    ra, ra, -1656          #; ra  = 0x8000220c, (wrb) ra  <-- 0x80001214, goto 0x80001b94
; _ftoa (printf.c:340)
      0x80001b94 addi    sp, sp, -112           #; sp  = 0x0011fe90, (wrb) sp  <-- 0x0011fe20
      0x80001b98 sw      ra, 108(sp)            #; sp  = 0x0011fe20, 0x80001214 ~~> Word[0x0011fe8c]
      0x80001b9c sw      s0, 104(sp)            #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe88]
      0x80001ba0 sw      s1, 100(sp)            #; sp  = 0x0011fe20, 8 ~~> Word[0x0011fe84]
      0x80001ba4 sw      s2, 96(sp)             #; sp  = 0x0011fe20, 0x80001ae4 ~~> Word[0x0011fe80]
      0x80001ba8 sw      s3, 92(sp)             #; sp  = 0x0011fe20, 0x0011ff20 ~~> Word[0x0011fe7c]
      0x80001bac sw      s4, 88(sp)             #; sp  = 0x0011fe20, 0x0011ff07 ~~> Word[0x0011fe78]
      0x80001bb0 sw      s5, 84(sp)             #; sp  = 0x0011fe20, -1 ~~> Word[0x0011fe74]
      0x80001bb4 sw      s6, 80(sp)             #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe70]
      0x80001bb8 sw      s7, 76(sp)             #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe6c]
      0x80001bbc sw      s8, 72(sp)             #; sp  = 0x0011fe20, 16 ~~> Word[0x0011fe68]
      0x80001bc0 sw      s9, 68(sp)             #; sp  = 0x0011fe20, 8 ~~> Word[0x0011fe64]
      0x80001bc4 sw      s10, 64(sp)            #; sp  = 0x0011fe20, 0x8000355e ~~> Word[0x0011fe60]
      0x80001bc8 fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe58]
      0x80001bcc fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe50]
      0x80001bd4 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003bd4
      0x80001bd8 addi    s1, s1, -844           #; s1  = 0x80003bd4, (wrb) s1  <-- 0x80003888
      0x80001bd0 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe48]
      0x80001bdc fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003888]
; _ftoa (printf.c:351)
      0x80001be4 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
; _ftoa (printf.c:0)
      0x80001be8 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x80001bec mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x80001be0 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
      0x80001bf0 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x80001bf4 mv      s6, a1                 #; a1  = 0x0011ff07, (wrb) s6  <-- 0x0011ff07
      0x80001bf8 mv      s7, a0                 #; a0  = 0x80001ae4, (wrb) s7  <-- 0x80001ae4
; _ftoa (printf.c:351)
      0x80001bfc bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001cec
; _ftoa (printf.c:0)
      0x80001cec fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x80001cf0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003cf0
      0x80001cf4 addi    a0, a0, -1120          #; a0  = 0x80003cf0, (wrb) a0  <-- 0x80003890
      0x80001cf8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003890]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x80001cfc fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x80001d00 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001d1c
; _ftoa (printf.c:0)
      0x80001d1c auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003d1c
      0x80001d20 addi    a0, a0, -1156          #; a0  = 0x80003d1c, (wrb) a0  <-- 0x80003898
      0x80001d28 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003d28
      0x80001d2c addi    a0, a0, -1160          #; a0  = 0x80003d28, (wrb) a0  <-- 0x800038a0
      0x80001d24 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003898]
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
      0x80001d30 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800038a0]
; _ftoa (printf.c:358)
      0x80001d34 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
                                                #; (acc) a0  <-- 0x00b57533
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
      0x80001d38 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
                                                #; (acc) a0  <-- 0x00b57533
      0x80001d3c and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80001d40 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001e3c
; _ftoa (printf.c:374)
      0x80001e3c andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x80001e40 li      s8, 6                  #; (wrb) s8  <-- 6
      0x80001e44 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001e4c
; _ftoa (printf.c:0)
      0x80001e4c li      a0, 10                 #; (wrb) a0  <-- 10
; _ftoa (printf.c:378)
      0x80001e54 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001e8c
; _ftoa (printf.c:0)
      0x80001e50 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs2  <-- 0.0
      0x80001e8c li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x80001e90 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x80001e94 auipc   a1, 0x2                #; (wrb) a1  <-- 0x80003e94
      0x80001e98 addi    a1, a1, -1900          #; a1  = 0x80003e94, (wrb) a1  <-- 0x80003728
      0x80001e9c add     a0, a0, a1             #; a0  = 48, a1  = 0x80003728, (wrb) a0  <-- 0x80003758
      0x80001ea0 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003758]
; _ftoa (printf.c:383)
      0x80001ea4 fcvt.w.d s1, fs2               #; fs2  = 0.0
; _ftoa (printf.c:384)
      0x80001ea8 fcvt.d.w ft0, s1               #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80001eac fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
                                                #; (f:lsu) ft1  <-- 1000000.0000000
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:0)
      0x80001eb4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003eb4
      0x80001eb8 addi    a0, a0, -1548          #; a0  = 0x80003eb4, (wrb) a0  <-- 0x800038a8
      0x80001eb0 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
      0x80001ebc fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800038a8], (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:385)
      0x80001ec0 fcvt.wu.d a0, ft2              #; ft2  = 0.0
                                                #; (f:lsu) ft0  <-- 0.5
                                                #; (acc) gp  <-- 0xd21501d3
; _ftoa (printf.c:386)
      0x80001ec4 fcvt.d.wu ft3, a0              #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80001ec8 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:388)
      0x80001ecc fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x80001ed0 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001ef0
; _ftoa (printf.c:396)
      0x80001ef0 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
                                                #; (acc) s4  <-- 0x00059a63
      0x80001ef4 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001f08
; _ftoa (printf.c:403)
      0x80001f0c beqz    s8, pc + 216           #; s8  = 6, not taken
      0x80001f08 fcvt.d.w fs1, zero             #; ac1  = 0
                                                #; (f:fpu) fs1  <-- 0.0
; _ftoa (printf.c:0)
      0x80001f10 li      a2, 0                  #; (wrb) a2  <-- 0
      0x80001f14 addi    a1, sp, 8              #; sp  = 0x0011fe20, (wrb) a1  <-- 0x0011fe28
; _ftoa (printf.c:414)
      0x80001f18 add     t1, a1, s0             #; a1  = 0x0011fe28, s0  = 0, (wrb) t1  <-- 0x0011fe28
      0x80001f1c li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001f20 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x80001f24 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80001f28 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80001f2c li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001f30 li      a7, 9                  #; (wrb) a7  <-- 9
      0x80001f34 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80001f38 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x80001f3c mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
      0x80001f40 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001f44 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001f48 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001f4c ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x80001f50 add     a5, t1, a2             #; t1  = 0x0011fe28, a2  = 0, (wrb) a5  <-- 0x0011fe28
      0x80001f54 sb      a3, 0(a5)              #; a5  = 0x0011fe28, 48 ~~> Byte[0x0011fe28]
; _ftoa (printf.c:417)
      0x80001f58 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80001f5c bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x80001f60 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x80001f64 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80001f68 li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001f6c sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x80001f70 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x80001f74 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x80001f78 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x80001f7c bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x80001f80 addi    a0, sp, 8              #; sp  = 0x0011fe20, (wrb) a0  <-- 0x0011fe28
; _ftoa (printf.c:422)
      0x80001f84 add     a0, a0, s0             #; a0  = 0x0011fe28, s0  = 0, (wrb) a0  <-- 0x0011fe28
      0x80001f88 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x80001f8c add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x80001f90 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x80001f94 li      a1, 31                 #; (wrb) a1  <-- 31
      0x80001f98 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x80001f9c add     a0, a0, a2             #; a0  = 0x0011fe28, a2  = 1, (wrb) a0  <-- 0x0011fe29
      0x80001fa0 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x80001fa4 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001fac
      0x80001fac addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x80001fb0 li      a1, 48                 #; (wrb) a1  <-- 48
      0x80001fb4 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x7fffffb4
      0x80001fb8 jalr    ra, ra, 1444           #; ra  = 0x7fffffb4, (wrb) ra  <-- 0x80001fbc, goto 0x80000558
; memset (memset.S:30)
      0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
; memset (memset.S:31)
      0x8000055c mv      a4, a0                 #; a0  = 0x0011fe29, (wrb) a4  <-- 0x0011fe29
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
      0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe2d]
; memset (memset.S:80)
      0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe2c]
; memset (memset.S:81)
      0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe2b]
; memset (memset.S:82)
      0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe2a]
; memset (memset.S:83)
      0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe29]
; memset (memset.S:85)
      0x800005ec ret                            #; ra  = 0x80001fbc, goto 0x80001fbc
; _ftoa (printf.c:0)
      0x80001fbc li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x80001fc0 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x80001fc4 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80001fc8 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x80001fcc snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80001fd0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001fd4 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001fd8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001fc0
      0x80001fc0 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x80001fc4 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80001fc8 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x80001fcc snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80001fd0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001fd4 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001fd8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001fc0
      0x80001fc0 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x80001fc4 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80001fc8 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x80001fcc snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80001fd0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001fd4 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001fd8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001fc0
      0x80001fc0 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x80001fc4 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80001fc8 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x80001fcc snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80001fd0 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001fd4 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001fd8 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001fc0
      0x80001fc0 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x80001fc4 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80001fc8 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x80001fcc snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80001fd0 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001fd4 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001fd8 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001fdc add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x80001fe0 j       pc + 0x28              #; goto 0x80002008
      0x80002008 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x8000200c addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80002010 addi    a1, sp, 8              #; sp  = 0x0011fe20, (wrb) a1  <-- 0x0011fe28
; _ftoa (printf.c:427)
      0x80002014 add     a0, a1, a0             #; a1  = 0x0011fe28, a0  = 6, (wrb) a0  <-- 0x0011fe2e
      0x80002018 li      a1, 46                 #; (wrb) a1  <-- 46
      0x8000201c sb      a1, 0(a0)              #; a0  = 0x0011fe2e, 46 ~~> Byte[0x0011fe2e]
      0x80002020 j       pc + 0x8               #; goto 0x80002028
; _ftoa (printf.c:0)
      0x80002028 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x8000202c mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80002030 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80002034 li      t0, 32                 #; (wrb) t0  <-- 32
      0x8000203c lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80002038 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
      0x80002040 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80002044 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80002048 addi    a3, sp, 8              #; sp  = 0x0011fe20, (wrb) a3  <-- 0x0011fe28
      0x8000204c li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80002050 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80002054 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80002058 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x8000205c srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80002060 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80002064 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80002068 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x8000206c addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80002070 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80002074 add     s0, a3, s0             #; a3  = 0x0011fe28, s0  = 7, (wrb) s0  <-- 0x0011fe2f
; _ftoa (printf.c:434)
      0x80002078 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x8000207c sb      a5, 0(s0)              #; s0  = 0x0011fe2f, 48 ~~> Byte[0x0011fe2f]
; _ftoa (printf.c:0)
      0x80002080 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80002084 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80002088 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x8000208c j       pc + 0x8               #; goto 0x80002094
; _ftoa (printf.c:440)
      0x80002094 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80002098 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x8000209c bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80002108
; _ftoa (printf.c:0)
      0x80002108 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x8000210c bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80002110 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80002128
; _ftoa (printf.c:453)
      0x80002128 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x8000212c bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80002130 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80002134 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80002160
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80002160 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80002164 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80002168 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x8000216c or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80002170 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80002174 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80002178 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x800021a4
; _ftoa (printf.c:0)
      0x800021a4 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800021a8 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x800021ac addi    s9, sp, 7              #; sp  = 0x0011fe20, (wrb) s9  <-- 0x0011fe27
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800021b0 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 8, (wrb) a0  <-- 0x0011fe2f
      0x800021b4 lbu     a0, 0(a0)              #; a0  = 0x0011fe2f, a0  <~~ Byte[0x0011fe2f]
      0x800021b8 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x800021bc addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
                                                #; (lsu) a0  <-- 48
      0x800021c0 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x800021c4 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x800021c8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800021cc jalr    s7                     #; s7  = 0x80001ae4, (wrb) ra  <-- 0x800021d0, goto 0x80001ae4
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001ae4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
      0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
      0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 8
      0x80001b04 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 9 ~~> Word[0x80003934]
      0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 8, (wrb) a4  <-- 0x8000393c
      0x80001b10 sb      a0, 72(a4)             #; a4  = 0x8000393c, 48 ~~> Byte[0x80003984]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 9
      0x80001b18 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x80001b1c snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x80001b20 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001b24 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x80001b8c ret                            #; ra  = 0x800021d0, goto 0x800021d0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800021d0 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x800021d4 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800021d8 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x800021b0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800021b0 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 7, (wrb) a0  <-- 0x0011fe2e
      0x800021b4 lbu     a0, 0(a0)              #; a0  = 0x0011fe2e, a0  <~~ Byte[0x0011fe2e]
      0x800021b8 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x800021bc addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x800021c0 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x800021c4 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x800021c8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800021cc jalr    s7                     #; s7  = 0x80001ae4, (wrb) ra  <-- 0x800021d0, goto 0x80001ae4
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001ae4 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
      0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
      0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 9
      0x80001b04 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 10 ~~> Word[0x80003934]
      0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 9, (wrb) a4  <-- 0x8000393d
      0x80001b10 sb      a0, 72(a4)             #; a4  = 0x8000393d, 46 ~~> Byte[0x80003985]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 10
      0x80001b18 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x80001b1c snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x80001b20 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x80001b24 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x80001b8c ret                            #; ra  = 0x800021d0, goto 0x800021d0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800021d0 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x800021d4 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800021d8 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x800021b0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800021b0 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 6, (wrb) a0  <-- 0x0011fe2d
      0x800021b4 lbu     a0, 0(a0)              #; a0  = 0x0011fe2d, a0  <~~ Byte[0x0011fe2d]
      0x800021b8 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x800021bc addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x800021c0 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x800021c4 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x800021c8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800021cc jalr    s7                     #; s7  = 0x80001ae4, (wrb) ra  <-- 0x800021d0, goto 0x80001ae4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001ae4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
      0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
      0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 10
      0x80001b04 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 11 ~~> Word[0x80003934]
      0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 10, (wrb) a4  <-- 0x8000393e
      0x80001b10 sb      a0, 72(a4)             #; a4  = 0x8000393e, 48 ~~> Byte[0x80003986]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 11
      0x80001b18 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x80001b1c snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x80001b20 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001b24 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x80001b8c ret                            #; ra  = 0x800021d0, goto 0x800021d0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800021d0 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x800021d4 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800021d8 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x800021b0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800021b0 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 5, (wrb) a0  <-- 0x0011fe2c
      0x800021b4 lbu     a0, 0(a0)              #; a0  = 0x0011fe2c, a0  <~~ Byte[0x0011fe2c]
      0x800021b8 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x800021bc addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x800021c0 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x800021c4 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x800021c8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800021cc jalr    s7                     #; s7  = 0x80001ae4, (wrb) ra  <-- 0x800021d0, goto 0x80001ae4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001ae4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
      0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
      0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 11
      0x80001b04 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 12 ~~> Word[0x80003934]
      0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 11, (wrb) a4  <-- 0x8000393f
      0x80001b10 sb      a0, 72(a4)             #; a4  = 0x8000393f, 48 ~~> Byte[0x80003987]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 12
      0x80001b18 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x80001b1c snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x80001b20 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001b24 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x80001b8c ret                            #; ra  = 0x800021d0, goto 0x800021d0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800021d0 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x800021d4 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800021d8 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x800021b0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800021b0 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 4, (wrb) a0  <-- 0x0011fe2b
      0x800021b4 lbu     a0, 0(a0)              #; a0  = 0x0011fe2b, a0  <~~ Byte[0x0011fe2b]
      0x800021b8 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x800021bc addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x800021c0 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x800021c4 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x800021c8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800021cc jalr    s7                     #; s7  = 0x80001ae4, (wrb) ra  <-- 0x800021d0, goto 0x80001ae4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001ae4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
      0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
      0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 12
      0x80001b04 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 13 ~~> Word[0x80003934]
      0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 12, (wrb) a4  <-- 0x80003940
      0x80001b10 sb      a0, 72(a4)             #; a4  = 0x80003940, 48 ~~> Byte[0x80003988]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 13
      0x80001b18 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x80001b1c snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x80001b20 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001b24 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x80001b8c ret                            #; ra  = 0x800021d0, goto 0x800021d0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800021d0 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x800021d4 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800021d8 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x800021b0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800021b0 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 3, (wrb) a0  <-- 0x0011fe2a
      0x800021b4 lbu     a0, 0(a0)              #; a0  = 0x0011fe2a, a0  <~~ Byte[0x0011fe2a]
      0x800021b8 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x800021bc addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x800021c0 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x800021c4 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x800021c8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800021cc jalr    s7                     #; s7  = 0x80001ae4, (wrb) ra  <-- 0x800021d0, goto 0x80001ae4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001ae4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
      0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
      0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 13
      0x80001b04 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 14 ~~> Word[0x80003934]
      0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 13, (wrb) a4  <-- 0x80003941
      0x80001b10 sb      a0, 72(a4)             #; a4  = 0x80003941, 48 ~~> Byte[0x80003989]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 14
      0x80001b18 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x80001b1c snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x80001b20 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001b24 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x80001b8c ret                            #; ra  = 0x800021d0, goto 0x800021d0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800021d0 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x800021d4 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800021d8 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x800021b0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800021b0 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 2, (wrb) a0  <-- 0x0011fe29
      0x800021b4 lbu     a0, 0(a0)              #; a0  = 0x0011fe29, a0  <~~ Byte[0x0011fe29]
      0x800021b8 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x800021bc addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x800021c0 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x800021c4 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x800021c8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800021cc jalr    s7                     #; s7  = 0x80001ae4, (wrb) ra  <-- 0x800021d0, goto 0x80001ae4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001ae4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
      0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
      0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 14
      0x80001b04 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 15 ~~> Word[0x80003934]
      0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 14, (wrb) a4  <-- 0x80003942
      0x80001b10 sb      a0, 72(a4)             #; a4  = 0x80003942, 48 ~~> Byte[0x8000398a]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 15
      0x80001b18 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x80001b1c snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x80001b20 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001b24 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x80001b8c ret                            #; ra  = 0x800021d0, goto 0x800021d0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800021d0 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x800021d4 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800021d8 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x800021b0
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800021b0 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 1, (wrb) a0  <-- 0x0011fe28
      0x800021b4 lbu     a0, 0(a0)              #; a0  = 0x0011fe28, a0  <~~ Byte[0x0011fe28]
      0x800021b8 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x800021bc addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x800021c0 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x800021c4 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x800021c8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800021cc jalr    s7                     #; s7  = 0x80001ae4, (wrb) ra  <-- 0x800021d0, goto 0x80001ae4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001ae4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
      0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
      0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 15
      0x80001b04 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 16 ~~> Word[0x80003934]
      0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 15, (wrb) a4  <-- 0x80003943
      0x80001b10 sb      a0, 72(a4)             #; a4  = 0x80003943, 48 ~~> Byte[0x8000398b]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 16
      0x80001b18 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x80001b1c snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x80001b20 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001b24 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001b28 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001b2c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001b8c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x80001b8c ret                            #; ra  = 0x800021d0, goto 0x800021d0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800021d0 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x800021d4 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800021d8 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x800021dc j       pc + 0x8               #; goto 0x800021e4
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800021e4 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x800021e8 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x800021ec xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x800021f0 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x800021f4 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x800021f8 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80002228
; _ftoa (printf.c:0)
      0x80002228 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x8000222c mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80002230 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe48]
      0x8000223c lw      s10, 64(sp)            #; sp  = 0x0011fe20, s10 <~~ Word[0x0011fe60]
      0x80002234 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe50], (f:lsu) fs2  <-- 0.0
      0x80002238 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe58], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0000000
                                                #; (lsu) s10 <-- 0x8000355e
      0x80002240 lw      s9, 68(sp)             #; sp  = 0x0011fe20, s9  <~~ Word[0x0011fe64]
                                                #; (lsu) s9  <-- 8
      0x80002244 lw      s8, 72(sp)             #; sp  = 0x0011fe20, s8  <~~ Word[0x0011fe68]
                                                #; (lsu) s8  <-- 16
      0x80002248 lw      s7, 76(sp)             #; sp  = 0x0011fe20, s7  <~~ Word[0x0011fe6c]
                                                #; (lsu) s7  <-- 0
      0x8000224c lw      s6, 80(sp)             #; sp  = 0x0011fe20, s6  <~~ Word[0x0011fe70]
                                                #; (lsu) s6  <-- 0
      0x80002250 lw      s5, 84(sp)             #; sp  = 0x0011fe20, s5  <~~ Word[0x0011fe74]
                                                #; (lsu) s5  <-- -1
      0x80002254 lw      s4, 88(sp)             #; sp  = 0x0011fe20, s4  <~~ Word[0x0011fe78]
                                                #; (lsu) s4  <-- 0x0011ff07
      0x80002258 lw      s3, 92(sp)             #; sp  = 0x0011fe20, s3  <~~ Word[0x0011fe7c]
                                                #; (lsu) s3  <-- 0x0011ff20
      0x8000225c lw      s2, 96(sp)             #; sp  = 0x0011fe20, s2  <~~ Word[0x0011fe80]
                                                #; (lsu) s2  <-- 0x80001ae4
      0x80002260 lw      s1, 100(sp)            #; sp  = 0x0011fe20, s1  <~~ Word[0x0011fe84]
                                                #; (lsu) s1  <-- 8
      0x80002264 lw      s0, 104(sp)            #; sp  = 0x0011fe20, s0  <~~ Word[0x0011fe88]
                                                #; (lsu) s0  <-- 0
      0x80002268 lw      ra, 108(sp)            #; sp  = 0x0011fe20, ra  <~~ Word[0x0011fe8c]
      0x8000226c addi    sp, sp, 112            #; sp  = 0x0011fe20, (wrb) sp  <-- 0x0011fe90
                                                #; (lsu) ra  <-- 0x80001214
      0x80002270 ret                            #; ra  = 0x80001214, goto 0x80001214
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80001214 j       pc + 0x7c0             #; goto 0x800019d4
      0x800019d4 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x800019d8 li      s6, 37                 #; (wrb) s6  <-- 37
      0x800019dc li      s7, 46                 #; (wrb) s7  <-- 46
      0x800019e0 addi    s0, s10, 1             #; s10 = 0x8000355e, (wrb) s0  <-- 0x8000355f
      0x800019e4 j       pc - 0xa74             #; goto 0x80000f70
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000f70 addi    s10, s0, 2             #; s0  = 0x8000355f, (wrb) s10 <-- 0x80003561
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000f74 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x80000f78 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000f7c lbu     a0, 0(s0)              #; s0  = 0x8000355f, a0  <~~ Byte[0x8000355f]
                                                #; (lsu) a0  <-- 10
      0x80000f80 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000f84 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.17592004524093383706 (printf.c:592)
      0x80000f88 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x80000f8c mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000f90 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x80000f94 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000f98 jalr    s2                     #; s2  = 0x80001ae4, (wrb) ra  <-- 0x80000f9c, goto 0x80001ae4
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001ae4 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001ae8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001aec li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001af0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001af4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003af4
      0x80001af8 addi    a3, a3, -448           #; a3  = 0x80003af4, (wrb) a3  <-- 0x80003934
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001afc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003934, (wrb) a1  <-- 0x80003934
      0x80001b00 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 16
      0x80001b04 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x80001b08 sw      a5, 0(a1)              #; a1  = 0x80003934, 17 ~~> Word[0x80003934]
      0x80001b0c add     a4, a1, a4             #; a1  = 0x80003934, a4  = 16, (wrb) a4  <-- 0x80003944
      0x80001b10 sb      a0, 72(a4)             #; a4  = 0x80003944, 10 ~~> Byte[0x8000398c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b14 lw      a4, 0(a1)              #; a1  = 0x80003934, a4  <~~ Word[0x80003934]
                                                #; (lsu) a4  <-- 17
      0x80001b18 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x80001b1c snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x80001b20 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x80001b24 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x80001b28 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x80001b2c bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b30 add     a0, a3, a2             #; a3  = 0x80003934, a2  = 0, (wrb) a0  <-- 0x80003934
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b34 addi    a2, a0, 72             #; a0  = 0x80003934, (wrb) a2  <-- 0x8000397c
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b38 sw      zero, 12(a0)           #; a0  = 0x80003934, 0 ~~> Word[0x80003940]
      0x80001b3c li      a3, 64                 #; (wrb) a3  <-- 64
      0x80001b40 sw      a3, 8(a0)              #; a0  = 0x80003934, 64 ~~> Word[0x8000393c]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b44 sw      zero, 20(a0)           #; a0  = 0x80003934, 0 ~~> Word[0x80003948]
      0x80001b48 li      a3, 1                  #; (wrb) a3  <-- 1
      0x80001b4c sw      a3, 16(a0)             #; a0  = 0x80003934, 1 ~~> Word[0x80003944]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b50 sw      zero, 28(a0)           #; a0  = 0x80003934, 0 ~~> Word[0x80003950]
      0x80001b54 sw      a2, 24(a0)             #; a0  = 0x80003934, 0x8000397c ~~> Word[0x8000394c]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b58 lw      a2, 0(a1)              #; a1  = 0x80003934, a2  <~~ Word[0x80003934]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b5c addi    a3, a0, 8              #; a0  = 0x80003934, (wrb) a3  <-- 0x8000393c
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b60 sw      zero, 36(a0)           #; a0  = 0x80003934, 0 ~~> Word[0x80003958]
                                                #; (lsu) a2  <-- 17
      0x80001b64 sw      a2, 32(a0)             #; a0  = 0x80003934, 17 ~~> Word[0x80003954]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b68 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003b68
      0x80001b6c addi    a0, a0, -1000          #; a0  = 0x80003b68, (wrb) a0  <-- 0x80003780
      0x80001b70 sw      a3, 0(a0)              #; a0  = 0x80003780, 0x8000393c ~~> Word[0x80003780]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b74 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003b74
      0x80001b78 addi    a0, a0, -948           #; a0  = 0x80003b74, (wrb) a0  <-- 0x800037c0
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b7c lw      a2, 0(a0)              #; a0  = 0x800037c0, a2  <~~ Word[0x800037c0]
                                                #; (lsu) a2  <-- 0
      0x80001b80 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001b7c
      0x80001b7c lw      a2, 0(a0)              #; a0  = 0x800037c0, a2  <~~ Word[0x800037c0]
                                                #; (lsu) a2  <-- 0
      0x80001b80 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001b7c
      0x80001b7c lw      a2, 0(a0)              #; a0  = 0x800037c0, a2  <~~ Word[0x800037c0]
                                                #; (lsu) a2  <-- 0
      0x80001b80 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001b7c
      0x80001b7c lw      a2, 0(a0)              #; a0  = 0x800037c0, a2  <~~ Word[0x800037c0]
                                                #; (lsu) a2  <-- 0
      0x80001b80 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001b7c
      0x80001b7c lw      a2, 0(a0)              #; a0  = 0x800037c0, a2  <~~ Word[0x800037c0]
                                                #; (lsu) a2  <-- 0
      0x80001b80 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001b7c
      0x80001b7c lw      a2, 0(a0)              #; a0  = 0x800037c0, a2  <~~ Word[0x800037c0]
                                                #; (lsu) a2  <-- 0
      0x80001b80 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001b7c
      0x80001b7c lw      a2, 0(a0)              #; a0  = 0x800037c0, a2  <~~ Word[0x800037c0]
                                                #; (lsu) a2  <-- 0
      0x80001b80 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001b7c
      0x80001b7c lw      a2, 0(a0)              #; a0  = 0x800037c0, a2  <~~ Word[0x800037c0]
                                                #; (lsu) a2  <-- 1
      0x80001b80 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b84 sw      zero, 0(a0)            #; a0  = 0x800037c0, 0 ~~> Word[0x800037c0]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.17592004524093383706 (printf.c:153)
      0x80001b88 sw      zero, 0(a1)            #; a1  = 0x80003934, 0 ~~> Word[0x80003934]
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x80001b8c ret                            #; ra  = 0x80000f9c, goto 0x80000f9c
; _vsnprintf.llvm.17592004524093383706 (printf.c:593)
      0x80000f9c addi    s0, s0, 1              #; s0  = 0x8000355f, (wrb) s0  <-- 0x80003560
; _vsnprintf.llvm.17592004524093383706 (printf.c:594)
      0x80000fa0 addi    s10, s10, 1            #; s10 = 0x80003561, (wrb) s10 <-- 0x80003562
; _vsnprintf.llvm.17592004524093383706 (printf.c:0)
      0x80000fa4 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.17592004524093383706 (printf.c:587)
      0x80000fa8 lbu     a0, 0(s0)              #; s0  = 0x80003560, a0  <~~ Byte[0x80003560]
                                                #; (lsu) a0  <-- 0
      0x80000fac bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000fb0 j       pc + 0xad8             #; goto 0x80001a88
; _vsnprintf.llvm.17592004524093383706 (printf.c:853)
      0x80001a88 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x80001a8c bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001a94
      0x80001a94 li      a0, 0                  #; (wrb) a0  <-- 0
      0x80001a98 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80001a9c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001aa0 jalr    s2                     #; s2  = 0x80001ae4, (wrb) ra  <-- 0x80001aa4, goto 0x80001ae4
; _out_char.llvm.17592004524093383706 (printf.c:152)
      0x80001ae4 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001b8c
; _out_char.llvm.17592004524093383706 (printf.c:155)
      0x80001b8c ret                            #; ra  = 0x80001aa4, goto 0x80001aa4
; _vsnprintf.llvm.17592004524093383706 (printf.c:856)
      0x80001aa4 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x80001aa8 lw      s11, 60(sp)            #; sp  = 0x0011fe90, s11 <~~ Word[0x0011fecc]
                                                #; (lsu) s11 <-- 0
      0x80001aac lw      s10, 64(sp)            #; sp  = 0x0011fe90, s10 <~~ Word[0x0011fed0]
                                                #; (lsu) s10 <-- 0
      0x80001ab0 lw      s9, 68(sp)             #; sp  = 0x0011fe90, s9  <~~ Word[0x0011fed4]
                                                #; (lsu) s9  <-- 0
      0x80001ab4 lw      s8, 72(sp)             #; sp  = 0x0011fe90, s8  <~~ Word[0x0011fed8]
                                                #; (lsu) s8  <-- 0
      0x80001ab8 lw      s7, 76(sp)             #; sp  = 0x0011fe90, s7  <~~ Word[0x0011fedc]
                                                #; (lsu) s7  <-- 0
      0x80001abc lw      s6, 80(sp)             #; sp  = 0x0011fe90, s6  <~~ Word[0x0011fee0]
                                                #; (lsu) s6  <-- 0x001000f0
      0x80001ac0 lw      s5, 84(sp)             #; sp  = 0x0011fe90, s5  <~~ Word[0x0011fee4]
                                                #; (lsu) s5  <-- 4
      0x80001ac4 lw      s4, 88(sp)             #; sp  = 0x0011fe90, s4  <~~ Word[0x0011fee8]
                                                #; (lsu) s4  <-- 8
      0x80001ac8 lw      s3, 92(sp)             #; sp  = 0x0011fe90, s3  <~~ Word[0x0011feec]
                                                #; (lsu) s3  <-- 6
      0x80001acc lw      s2, 96(sp)             #; sp  = 0x0011fe90, s2  <~~ Word[0x0011fef0]
                                                #; (lsu) s2  <-- 0x00100000
      0x80001ad0 lw      s1, 100(sp)            #; sp  = 0x0011fe90, s1  <~~ Word[0x0011fef4]
                                                #; (lsu) s1  <-- 0
      0x80001ad4 lw      s0, 104(sp)            #; sp  = 0x0011fe90, s0  <~~ Word[0x0011fef8]
                                                #; (lsu) s0  <-- 0x00100240
      0x80001ad8 lw      ra, 108(sp)            #; sp  = 0x0011fe90, ra  <~~ Word[0x0011fefc]
      0x80001adc addi    sp, sp, 112            #; sp  = 0x0011fe90, (wrb) sp  <-- 0x0011ff00
                                                #; (lsu) ra  <-- 0x80000ee0
      0x80001ae0 ret                            #; ra  = 0x80000ee0, goto 0x80000ee0
; printf_ (printf.c:869)
      0x80000ee0 lw      ra, 12(sp)             #; sp  = 0x0011ff00, ra  <~~ Word[0x0011ff0c]
      0x80000ee4 addi    sp, sp, 48             #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011ff30
                                                #; (lsu) ra  <-- 0x80000e54
      0x80000ee8 ret                            #; ra  = 0x80000e54, goto 0x80000e54
; main (test_mat.c:0)
      0x80000e54 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003e54
      0x80000e58 addi    a0, a0, -1492          #; a0  = 0x80003e54, (wrb) a0  <-- 0x80003880
      0x80000e5c fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003880]
                                                #; (f:lsu) ft3  <-- 0.0001
; main (test_mat.c:46)
      0x80000e68 lw      s6, 16(sp)             #; sp  = 0x0011ff30, s6  <~~ Word[0x0011ff40]
      0x80000e60 flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0000000
                                                #; (acc) s5  <-- 0x01412a83
      0x80000e64 fld     fs0, 8(sp)             #; fs0  <~~ Doub[0x0011ff38]
                                                #; (lsu) s6  <-- 0
                                                #; (f:lsu) fs0  <-- 0.0
      0x80000e6c lw      s5, 20(sp)             #; sp  = 0x0011ff30, s5  <~~ Word[0x0011ff44]
                                                #; (lsu) s5  <-- 0
      0x80000e70 lw      s4, 24(sp)             #; sp  = 0x0011ff30, s4  <~~ Word[0x0011ff48]
                                                #; (lsu) s4  <-- 0
      0x80000e74 lw      s3, 28(sp)             #; sp  = 0x0011ff30, s3  <~~ Word[0x0011ff4c]
                                                #; (lsu) s3  <-- 0
      0x80000e78 lw      s2, 32(sp)             #; sp  = 0x0011ff30, s2  <~~ Word[0x0011ff50]
                                                #; (lsu) s2  <-- 0
      0x80000e7c lw      s1, 36(sp)             #; sp  = 0x0011ff30, s1  <~~ Word[0x0011ff54]
                                                #; (lsu) s1  <-- 0
      0x80000e80 lw      s0, 40(sp)             #; sp  = 0x0011ff30, s0  <~~ Word[0x0011ff58]
                                                #; (lsu) s0  <-- 0
      0x80000e84 lw      ra, 44(sp)             #; sp  = 0x0011ff30, ra  <~~ Word[0x0011ff5c]
      0x80000e88 addi    sp, sp, 48             #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x800032d0
      0x80000e8c ret                            #; ra  = 0x800032d0, goto 0x800032d0
; ?? (start.S:184)
      0x800032d0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x800032d4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800032d4
      0x800032d8 jalr    ra, ra, 524            #; ra  = 0x800032d4, (wrb) ra  <-- 0x800032dc, goto 0x800034e0
; ?? (start_snitch.S:33)
      0x800034e0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x800034e4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800032dc ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x800034e8 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x800024e8
      0x800034ec jalr    ra, ra, 1924           #; ra  = 0x800024e8, (wrb) ra  <-- 0x800034f0, goto 0x80002c6c
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002c6c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002c70 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002c74 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002c78 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002c7c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002c80 ret                            #; ra  = 0x800034f0, goto 0x800034f0
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x800034f0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x800034f4 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x800034f8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x800034fc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x800032dc
; ?? (start_snitch.S:40)
      0x80003500 ret                            #; ra  = 0x800032dc, goto 0x800032dc
; ?? (start.S:195)
      0x800032dc mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x800032e0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800032e0
      0x800032e4 jalr    ra, ra, 556            #; ra  = 0x800032e0, (wrb) ra  <-- 0x800032e8, goto 0x8000350c
; ?? (start_snitch.S:15)
      0x8000350c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80003510 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80003514 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x800032e8 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80003518 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80002518
      0x8000351c jalr    ra, ra, 1844           #; ra  = 0x80002518, (wrb) ra  <-- 0x80003520, goto 0x80002c4c
; snrt_global_core_idx (team.c:32)
      0x80002c4c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002c50 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002c54 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002c58 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002c5c lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x80002c60 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x80002c64 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x80002c68 ret                            #; ra  = 0x80003520, goto 0x80003520
; ?? (start_snitch.S:20)
      0x80003520 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x80003524 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80003528 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x8000352c bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x800032e8
; ?? (start_snitch.S:28)
      0x80003530 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x80003534 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x80003538 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003538
      0x8000353c addi    t1, t1, 584            #; t1  = 0x80003538, (wrb) t1  <-- 0x80003780
; ?? (start_snitch.S:31)
      0x80003540 sw      t0, 0(t1)              #; t1  = 0x80003780, 1 ~~> Word[0x80003780]
; ?? (start_snitch.S:32)
      0x80003544 ret                            #; ra  = 0x800032e8, goto 0x800032e8
; ?? (start.S:198)
      0x800032e8 wfi                            #; 
                        tion 0 @ (12, 8564):
                          175
                          178
                            5
                           34
                      10.2571
                       0.2976
                       0.2027
                          1.0
                          1.0
                            0
                       2.0738
                       7.8235
                       0.0756
                       0.0697
                       0.9212
                         8553
                       0.3732
