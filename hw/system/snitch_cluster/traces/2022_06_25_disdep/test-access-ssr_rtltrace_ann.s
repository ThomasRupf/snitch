; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x80003430
      0x00001014 jalr    t0                     #; t0  = 0x80003430, (wrb) ra  <-- 4120, goto 0x80003430
; ?? (start.S:20)
      0x80003430 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80004430
; ?? (start.S:21)
      0x80003434 addi    gp, gp, -232           #; gp  = 0x80004430, (wrb) gp  <-- 0x80004348
; ?? (start.S:28)
      0x80003438 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003438
      0x8000343c jalr    ra, ra, 964            #; ra  = 0x80003438, (wrb) ra  <-- 0x80003440, goto 0x800037fc
; ?? (start_snitch.S:16)
      0x800037fc mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80003800 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80003804 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80003808 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x8000380c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80003810 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80003814 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80003818 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x8000381c mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80003820 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80003824 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80003828 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x8000382c ret                            #; ra  = 0x80003440, goto 0x80003440
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x80003440 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x80003444 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x80003448 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003448
      0x8000344c jalr    ra, ra, 1036           #; ra  = 0x80003448, (wrb) ra  <-- 0x80003450, goto 0x80003854
; ?? (start_snitch.S:48)
      0x80003854 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80003858 ret                            #; ra  = 0x80003450, goto 0x80003450
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x80003450 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x80003454 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x80003458 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x8000345c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x80003460 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x80003464 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003464
      0x80003468 addi    t0, t0, 1964           #; t0  = 0x80003464, (wrb) t0  <-- 0x80003c10
; ?? (start.S:49)
      0x8000346c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000346c
      0x80003470 addi    t1, t1, 1960           #; t1  = 0x8000346c, (wrb) t1  <-- 0x80003c14
; ?? (start.S:50)
      0x80003474 bge     t0, t1, pc + 16        #; t0  = 0x80003c10, t1  = 0x80003c14, not taken
; ?? (start.S:51)
      0x80003478 sw      zero, 0(t0)            #; t0  = 0x80003c10, 0 ~~> Word[0x80003c10]
; ?? (start.S:52)
      0x8000347c addi    t0, t0, 4              #; t0  = 0x80003c10, (wrb) t0  <-- 0x80003c14
; ?? (start.S:53)
      0x80003480 blt     t0, t1, pc - 8         #; t0  = 0x80003c14, t1  = 0x80003c14, not taken
; ?? (start.S:58)
      0x80003484 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x80003488 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x8000348c beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x80003490 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x80003494 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x80003498 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x8000349c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x800034a0 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x800034a4 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x800034a8 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x800034ac fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x800034b0 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x800034b4 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x800034b8 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x800034bc fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x800034c0 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x800034c4 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x800034c8 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x800034cc fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x800034d0 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x800034d4 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x800034d8 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x800034dc fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x800034e0 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x800034e4 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x800034e8 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x800034ec fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x800034f0 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x800034f4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x800034f8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x800034fc fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x80003500 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x80003504 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x80003508 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x8000350c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x80003510 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x80003514 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x80003518 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003518
      0x8000351c lw      t0, 900(t0)            #; t0  = 0x80003518, t0  <~~ Word[0x8000389c]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x80003520 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x80003524 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x80003528 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80003528
      0x8000352c lw      t2, 880(t2)            #; t2  = 0x80003528, t2  <~~ Word[0x80003898]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x80003530 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x80003534 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x80003538 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x8000353c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x80003540 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x80003544 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x80003548 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x8000354c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x80003550 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003550
      0x80003554 addi    t0, t0, 1528           #; t0  = 0x80003550, (wrb) t0  <-- 0x80003b48
; ?? (start.S:125)
      0x80003558 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003558
      0x8000355c addi    t1, t1, 1520           #; t1  = 0x80003558, (wrb) t1  <-- 0x80003b48
; ?? (start.S:126)
      0x80003560 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80003560
      0x80003564 addi    t2, t2, 1512           #; t2  = 0x80003560, (wrb) t2  <-- 0x80003b48
; ?? (start.S:127)
      0x80003568 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80003568
      0x8000356c addi    t3, t3, 1520           #; t3  = 0x80003568, (wrb) t3  <-- 0x80003b58
; ?? (start.S:128)
      0x80003570 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003b48, (wrb) sp  <-- 0x80123ab8
; ?? (start.S:129)
      0x80003574 sub     sp, sp, t1             #; sp  = 0x80123ab8, t1  = 0x80003b48, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x80003578 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003b48, (wrb) sp  <-- 0x80123ab8
; ?? (start.S:131)
      0x8000357c sub     sp, sp, t3             #; sp  = 0x80123ab8, t3  = 0x80003b58, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x80003580 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x80003584 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x80003588 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x8000358c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x80003590 bge     t0, t1, pc + 24        #; t0  = 0x80003b48, t1  = 0x80003b48, taken, goto 0x800035a8
; ?? (start.S:147)
      0x800035a8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800035a8
      0x800035ac addi    t0, t0, 1440           #; t0  = 0x800035a8, (wrb) t0  <-- 0x80003b48
; ?? (start.S:148)
      0x800035b0 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800035b0
      0x800035b4 addi    t1, t1, 1448           #; t1  = 0x800035b0, (wrb) t1  <-- 0x80003b58
; ?? (start.S:149)
      0x800035b8 bge     t0, t1, pc + 20        #; t0  = 0x80003b48, t1  = 0x80003b58, not taken
; ?? (start.S:150)
      0x800035bc sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x800035c0 addi    t0, t0, 4              #; t0  = 0x80003b48, (wrb) t0  <-- 0x80003b4c
; ?? (start.S:152)
      0x800035c4 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x800035c8 blt     t0, t2, pc - 12        #; t0  = 0x80003b4c, t2  = 0x80003b48, not taken
; ?? (start.S:158)
      0x800035cc addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x800035d0 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x800035d4 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x800035d8 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x800035dc sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x800035e0 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x800035e4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800035e4
      0x800035e8 jalr    ra, ra, -1060          #; ra  = 0x800035e4, (wrb) ra  <-- 0x800035ec, goto 0x800031c0
; _snrt_init_team (start.c:49)
      0x800031c0 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x800031c4 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x800031c8 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x800031cc sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x800031d0 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x800031d4 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x800031d8 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x800031dc mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x800031e0 mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x800031e4 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x800031e8 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x800031ec sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x800031f0 divu    a0, a0, t0             #; a0  = 0, t0  = 8
                                                #; (acc) a6  <-- 0x00a7a823
; _snrt_init_team (start.c:54)
      0x800031f4 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x800031f8 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x800031fc sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x80003200 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x80003204 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x80003208 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x8000320c add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x80003210 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x80003214 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x80003218 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x8000321c lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x80003220 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x80003224 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x80003228 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x8000322c sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x80003230 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x80003234 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x80003238 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x8000323c add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x80003240 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x80003244 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x80003248 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x8000324c srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x80003250 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x80003254 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x80003258 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x8000325c sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x80003260 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x80003264 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x80003268 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x8000326c sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x80003270 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x80003274 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x80003278 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x8000327c sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x80003280 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80003284 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80003288 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x8000328c lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80003290 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x80003294 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x80003298 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x8000329c remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x800032a0 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x800032a4 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
                                                #; (acc) tp  <-- 0x00a5a223
      0x800032a8 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x800032ac li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x800032b0 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x800032b4 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800042b4
      0x800032b8 addi    a1, a1, -1696          #; a1  = 0x800042b4, (wrb) a1  <-- 0x80003c14
                                                #; (acc) a0  <-- 0x00b50533
      0x800032bc add     a0, a0, a1             #; a0  = 0, a1  = 0x80003c14, (wrb) a0  <-- 0x80003c14
      0x800032c0 sw      zero, 0(a0)            #; a0  = 0x80003c14, 0 ~~> Word[0x80003c14]
; _snrt_init_team (start.c:86)
      0x800032c4 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x800032c8 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x800032cc sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x800032d0 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x800032d4 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x800032d8 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x800032dc addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x800032e0 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x800032e4 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x800032e8 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x800032ec sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x800032f0 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x800032f4 lw      a0, 0(a1)              #; a1  = 0x80003c14, a0  <~~ Word[0x80003c14]
                                                #; (lsu) a0  <-- 0
      0x800032f8 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x800032fc andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x80003300 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x80003304 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x80003308 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x8000330c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80003310 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80003314 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x80003318 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000331c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80003320 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x80003324 ret                            #; ra  = 0x800035ec, goto 0x800035ec
; ?? (start.S:165)
      0x800035ec lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x800035f0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x800035f4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x800035f8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x800035fc lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x80003600 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x80003604 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003604
      0x80003608 addi    t0, t0, 60             #; t0  = 0x80003604, (wrb) t0  <-- 0x80003640
; ?? (start.S:175)
      0x8000360c csrw    mtvec, t0              #; t0  = 0x80003640, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x80003610 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003610
      0x80003614 jalr    ra, ra, 544            #; ra  = 0x80003610, (wrb) ra  <-- 0x80003618, goto 0x80003830
; ?? (start_snitch.S:33)
      0x80003830 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80003834 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80003618 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80003838 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003838
      0x8000383c jalr    ra, ra, -1264          #; ra  = 0x80003838, (wrb) ra  <-- 0x80003840, goto 0x80003348
; _snrt_barrier_reg_ptr (team.c:80)
      0x80003348 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000334c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80003350 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80003354 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80003358 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x8000335c ret                            #; ra  = 0x80003840, goto 0x80003840
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80003840 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80003844 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80003848 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x8000384c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80003618
; ?? (start_snitch.S:40)
      0x80003850 ret                            #; ra  = 0x80003618, goto 0x80003618
; ?? (start.S:183)
      0x80003618 auipc   ra, 0xffffd            #; (wrb) ra  <-- 0x80000618
      0x8000361c jalr    ra, ra, 28             #; ra  = 0x80000618, (wrb) ra  <-- 0x80003620, goto 0x80000634
; main (test_access.c:12)
      0x80000634 addi    sp, sp, -784           #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011fc50
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (test_access.c:13)
      0x80000638 sw      ra, 780(sp)            #; sp  = 0x0011fc50, 0x80003620 ~~> Word[0x0011ff5c]
      0x8000063c fsd     fs0, 768(sp)           #; 0.0 ~~> Doub[0x0011ff50]
      0x80000640 fsd     fs1, 760(sp)           #; 0.0 ~~> Doub[0x0011ff48]
      0x80000644 fsd     fs2, 752(sp)           #; 0.0 ~~> Doub[0x0011ff40]
      0x80000648 fsd     fs3, 744(sp)           #; 0.0 ~~> Doub[0x0011ff38]
      0x8000064c fsd     fs4, 736(sp)           #; 0.0 ~~> Doub[0x0011ff30]
      0x80000650 fsd     fs5, 728(sp)           #; 0.0 ~~> Doub[0x0011ff28]
      0x80000654 fsd     fs6, 720(sp)           #; 0.0 ~~> Doub[0x0011ff20]
      0x80000658 fsd     fs7, 712(sp)           #; 0.0 ~~> Doub[0x0011ff18]
      0x8000065c fsd     fs8, 704(sp)           #; 0.0 ~~> Doub[0x0011ff10]
      0x80000660 fsd     fs9, 696(sp)           #; 0.0 ~~> Doub[0x0011ff08]
      0x8000066c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000664 fsd     fs10, 688(sp)          #; 0.0 ~~> Doub[0x0011ff00]
      0x80000668 fsd     fs11, 680(sp)          #; 0.0 ~~> Doub[0x0011fef8]
      0x80000670 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000674 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
; main (test_access.c:0)
      0x80000678 li      a0, 0                  #; (wrb) a0  <-- 0
                                                #; (lsu) a1  <-- 0
; main (test_access.c:13)
      0x8000067c beqz    a1, pc + 8             #; a1  = 0, taken, goto 0x80000684
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (test_access.c:18)
      0x80000684 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000688 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000068c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80000690 lw      a2, 0(a0)              #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ff70]
                                                #; (lsu) a2  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in main (test_access.c:18)
      0x80000694 lw      a0, 88(a2)             #; a2  = 0x0011ff70, a0  <~~ Word[0x0011ffc8]
                                                #; (lsu) a0  <-- 0x00100000
      0x80000698 lw      a1, 80(a2)             #; a2  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
                                                #; (lsu) a1  <-- 0x00100000
      0x8000069c lw      a4, 84(a2)             #; a2  = 0x0011ff70, a4  <~~ Word[0x0011ffc4]
      0x800006a0 addi    a3, a0, 864            #; a0  = 0x00100000, (wrb) a3  <-- 0x00100360
                                                #; (lsu) a4  <-- 0x0001df30
      0x800006a4 add     a1, a4, a1             #; a4  = 0x0001df30, a1  = 0x00100000, (wrb) a1  <-- 0x0011df30
      0x800006a8 bgeu    a1, a3, pc + 12        #; a1  = 0x0011df30, a3  = 0x00100360, taken, goto 0x800006b4
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006b4 srli    a1, a0, 20             #; a0  = 0x00100000, (wrb) a1  <-- 1
      0x800006b8 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
      0x800006bc lui     a4, 0x120              #; (wrb) a4  <-- 0x00120000
      0x800006c0 addi    a4, a4, -855           #; a4  = 0x00120000, (wrb) a4  <-- 0x0011fca9
      0x800006c4 sltu    a4, a0, a4             #; a0  = 0x00100000, a4  = 0x0011fca9, (wrb) a4  <-- 1
      0x800006c8 and     a1, a1, a4             #; a1  = 1, a4  = 1, (wrb) a1  <-- 1
; snrt_l1alloc (alloc.c:34)
;  in main (test_access.c:18)
      0x800006cc sw      a3, 88(a2)             #; a2  = 0x0011ff70, 0x00100360 ~~> Word[0x0011ffc8]
; snrt_l1alloc (alloc.c:0)
;  in main (test_access.c:18)
      0x800006d0 beqz    a1, pc + 1092          #; a1  = 1, not taken
; main (alloc.c:0)
      0x800006d4 li      a2, 8                  #; (wrb) a2  <-- 8
      0x800006d8 li      a3, 107                #; (wrb) a3  <-- 107
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006dc li      a4, 64                 #; (wrb) a4  <-- 64
      0x800006e0 li      a5, 192                #; (wrb) a5  <-- 192
      0x800006e4 scfgw   a3, a4                 #; a3  = 107, a4  = 64
      0x800006e8 scfgw   a2, a5                 #; a2  = 8, a5  = 192
      0x800006ec li      a2, 32                 #; (wrb) a2  <-- 32
      0x800006f0 scfgw   zero, a2               #; a2  = 32
      0x800006f4 scfgwi  a0, 896                #; a0  = 0x00100000
      0x800006fc li      a2, 1                  #; (wrb) a2  <-- 1
      0x800006f8 csrrsi  a2, ssr, 1             #; 
      0x80000700 li      a3, 109                #; (wrb) a3  <-- 109
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 1
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 1, (wrb) a2  <-- 2
                                                #; (f:fpu) ft3  <-- 1.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 2, a3  = 109, taken, goto 0x80000704
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 2
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 2, (wrb) a2  <-- 3
                                                #; (f:fpu) ft3  <-- 2.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 3, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 3
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 3, (wrb) a2  <-- 4
                                                #; (f:fpu) ft3  <-- 3.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 4, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 4
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 4, (wrb) a2  <-- 5
                                                #; (f:fpu) ft3  <-- 4.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 5, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 5
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 5, (wrb) a2  <-- 6
                                                #; (f:fpu) ft3  <-- 5.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 6, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 6
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 6, (wrb) a2  <-- 7
                                                #; (f:fpu) ft3  <-- 6.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 7, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 7
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 7, (wrb) a2  <-- 8
                                                #; (f:fpu) ft3  <-- 7.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 8, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 8
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 8, (wrb) a2  <-- 9
                                                #; (f:fpu) ft3  <-- 8.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 9, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 9
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 9, (wrb) a2  <-- 10
                                                #; (f:fpu) ft3  <-- 9.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 10, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 10
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 10, (wrb) a2  <-- 11
                                                #; (f:fpu) ft3  <-- 10.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 11, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 10.0, ft3  = 10.0
                                                #; (f:fpu) ft0  <-- 10.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 11
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 11, (wrb) a2  <-- 12
                                                #; (f:fpu) ft3  <-- 11.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 12, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 11.0, ft3  = 11.0
                                                #; (f:fpu) ft0  <-- 11.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 12
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 12, (wrb) a2  <-- 13
                                                #; (f:fpu) ft3  <-- 12.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 13, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 12.0, ft3  = 12.0
                                                #; (f:fpu) ft0  <-- 12.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 13
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 13, (wrb) a2  <-- 14
                                                #; (f:fpu) ft3  <-- 13.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 14, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 13.0, ft3  = 13.0
                                                #; (f:fpu) ft0  <-- 13.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 14
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 14, (wrb) a2  <-- 15
                                                #; (f:fpu) ft3  <-- 14.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 15, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 14.0, ft3  = 14.0
                                                #; (f:fpu) ft0  <-- 14.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 15
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 15, (wrb) a2  <-- 16
                                                #; (f:fpu) ft3  <-- 15.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 16, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 15.0, ft3  = 15.0
                                                #; (f:fpu) ft0  <-- 15.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 16
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 16, (wrb) a2  <-- 17
                                                #; (f:fpu) ft3  <-- 16.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 17, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 16.0, ft3  = 16.0
                                                #; (f:fpu) ft0  <-- 16.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 17
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 17, (wrb) a2  <-- 18
                                                #; (f:fpu) ft3  <-- 17.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 18, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 17.0, ft3  = 17.0
                                                #; (f:fpu) ft0  <-- 17.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 18
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 18, (wrb) a2  <-- 19
                                                #; (f:fpu) ft3  <-- 18.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 19, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 18.0, ft3  = 18.0
                                                #; (f:fpu) ft0  <-- 18.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 19
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 19, (wrb) a2  <-- 20
                                                #; (f:fpu) ft3  <-- 19.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 20, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 19.0, ft3  = 19.0
                                                #; (f:fpu) ft0  <-- 19.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 20
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 20, (wrb) a2  <-- 21
                                                #; (f:fpu) ft3  <-- 20.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 21, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 20.0, ft3  = 20.0
                                                #; (f:fpu) ft0  <-- 20.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 21
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 21, (wrb) a2  <-- 22
                                                #; (f:fpu) ft3  <-- 21.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 22, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 21.0, ft3  = 21.0
                                                #; (f:fpu) ft0  <-- 21.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 22
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 22, (wrb) a2  <-- 23
                                                #; (f:fpu) ft3  <-- 22.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 23, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 22.0, ft3  = 22.0
                                                #; (f:fpu) ft0  <-- 22.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 23
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 23, (wrb) a2  <-- 24
                                                #; (f:fpu) ft3  <-- 23.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 24, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 23.0, ft3  = 23.0
                                                #; (f:fpu) ft0  <-- 23.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 24
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 24, (wrb) a2  <-- 25
                                                #; (f:fpu) ft3  <-- 24.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 25, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 24.0, ft3  = 24.0
                                                #; (f:fpu) ft0  <-- 24.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 25
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 25, (wrb) a2  <-- 26
                                                #; (f:fpu) ft3  <-- 25.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 26, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 25.0, ft3  = 25.0
                                                #; (f:fpu) ft0  <-- 25.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 26
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 26, (wrb) a2  <-- 27
                                                #; (f:fpu) ft3  <-- 26.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 27, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 26.0, ft3  = 26.0
                                                #; (f:fpu) ft0  <-- 26.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 27
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 27, (wrb) a2  <-- 28
                                                #; (f:fpu) ft3  <-- 27.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 28, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 27.0, ft3  = 27.0
                                                #; (f:fpu) ft0  <-- 27.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 28
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 28, (wrb) a2  <-- 29
                                                #; (f:fpu) ft3  <-- 28.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 29, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 28.0, ft3  = 28.0
                                                #; (f:fpu) ft0  <-- 28.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 29
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 29, (wrb) a2  <-- 30
                                                #; (f:fpu) ft3  <-- 29.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 30, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 29.0, ft3  = 29.0
                                                #; (f:fpu) ft0  <-- 29.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 30
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 30, (wrb) a2  <-- 31
                                                #; (f:fpu) ft3  <-- 30.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 31, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 30.0, ft3  = 30.0
                                                #; (f:fpu) ft0  <-- 30.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 31
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 31, (wrb) a2  <-- 32
                                                #; (f:fpu) ft3  <-- 31.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 32, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 31.0, ft3  = 31.0
                                                #; (f:fpu) ft0  <-- 31.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 32
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 32, (wrb) a2  <-- 33
                                                #; (f:fpu) ft3  <-- 32.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 33, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 32.0, ft3  = 32.0
                                                #; (f:fpu) ft0  <-- 32.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 33
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 33, (wrb) a2  <-- 34
                                                #; (f:fpu) ft3  <-- 33.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 34, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 33.0, ft3  = 33.0
                                                #; (f:fpu) ft0  <-- 33.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 34
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 34, (wrb) a2  <-- 35
                                                #; (f:fpu) ft3  <-- 34.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 35, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 34.0, ft3  = 34.0
                                                #; (f:fpu) ft0  <-- 34.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 35
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 35, (wrb) a2  <-- 36
                                                #; (f:fpu) ft3  <-- 35.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 36, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 35.0, ft3  = 35.0
                                                #; (f:fpu) ft0  <-- 35.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 36
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 36, (wrb) a2  <-- 37
                                                #; (f:fpu) ft3  <-- 36.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 37, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 36.0, ft3  = 36.0
                                                #; (f:fpu) ft0  <-- 36.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 37
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 37, (wrb) a2  <-- 38
                                                #; (f:fpu) ft3  <-- 37.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 38, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 37.0, ft3  = 37.0
                                                #; (f:fpu) ft0  <-- 37.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 38
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 38, (wrb) a2  <-- 39
                                                #; (f:fpu) ft3  <-- 38.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 39, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 38.0, ft3  = 38.0
                                                #; (f:fpu) ft0  <-- 38.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 39
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 39, (wrb) a2  <-- 40
                                                #; (f:fpu) ft3  <-- 39.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 40, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 39.0, ft3  = 39.0
                                                #; (f:fpu) ft0  <-- 39.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 40
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 40, (wrb) a2  <-- 41
                                                #; (f:fpu) ft3  <-- 40.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 41, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 40.0, ft3  = 40.0
                                                #; (f:fpu) ft0  <-- 40.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 41
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 41, (wrb) a2  <-- 42
                                                #; (f:fpu) ft3  <-- 41.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 42, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 41.0, ft3  = 41.0
                                                #; (f:fpu) ft0  <-- 41.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 42
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 42, (wrb) a2  <-- 43
                                                #; (f:fpu) ft3  <-- 42.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 43, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 42.0, ft3  = 42.0
                                                #; (f:fpu) ft0  <-- 42.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 43
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 43, (wrb) a2  <-- 44
                                                #; (f:fpu) ft3  <-- 43.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 44, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 43.0, ft3  = 43.0
                                                #; (f:fpu) ft0  <-- 43.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 44
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 44, (wrb) a2  <-- 45
                                                #; (f:fpu) ft3  <-- 44.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 45, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 44.0, ft3  = 44.0
                                                #; (f:fpu) ft0  <-- 44.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 45
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 45, (wrb) a2  <-- 46
                                                #; (f:fpu) ft3  <-- 45.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 46, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 45.0, ft3  = 45.0
                                                #; (f:fpu) ft0  <-- 45.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 46
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 46, (wrb) a2  <-- 47
                                                #; (f:fpu) ft3  <-- 46.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 47, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 46.0, ft3  = 46.0
                                                #; (f:fpu) ft0  <-- 46.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 47
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 47, (wrb) a2  <-- 48
                                                #; (f:fpu) ft3  <-- 47.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 48, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 47.0, ft3  = 47.0
                                                #; (f:fpu) ft0  <-- 47.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 48
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 48, (wrb) a2  <-- 49
                                                #; (f:fpu) ft3  <-- 48.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 49, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 48.0, ft3  = 48.0
                                                #; (f:fpu) ft0  <-- 48.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 49
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 49, (wrb) a2  <-- 50
                                                #; (f:fpu) ft3  <-- 49.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 50, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 49.0, ft3  = 49.0
                                                #; (f:fpu) ft0  <-- 49.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 50
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 50, (wrb) a2  <-- 51
                                                #; (f:fpu) ft3  <-- 50.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 51, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 50.0, ft3  = 50.0
                                                #; (f:fpu) ft0  <-- 50.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 51
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 51, (wrb) a2  <-- 52
                                                #; (f:fpu) ft3  <-- 51.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 52, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 51.0, ft3  = 51.0
                                                #; (f:fpu) ft0  <-- 51.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 52
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 52, (wrb) a2  <-- 53
                                                #; (f:fpu) ft3  <-- 52.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 53, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 52.0, ft3  = 52.0
                                                #; (f:fpu) ft0  <-- 52.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 53
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 53, (wrb) a2  <-- 54
                                                #; (f:fpu) ft3  <-- 53.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 54, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 53.0, ft3  = 53.0
                                                #; (f:fpu) ft0  <-- 53.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 54
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 54, (wrb) a2  <-- 55
                                                #; (f:fpu) ft3  <-- 54.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 55, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 54.0, ft3  = 54.0
                                                #; (f:fpu) ft0  <-- 54.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 55
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 55, (wrb) a2  <-- 56
                                                #; (f:fpu) ft3  <-- 55.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 56, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 55.0, ft3  = 55.0
                                                #; (f:fpu) ft0  <-- 55.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 56
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 56, (wrb) a2  <-- 57
                                                #; (f:fpu) ft3  <-- 56.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 57, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 56.0, ft3  = 56.0
                                                #; (f:fpu) ft0  <-- 56.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 57
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 57, (wrb) a2  <-- 58
                                                #; (f:fpu) ft3  <-- 57.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 58, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 57.0, ft3  = 57.0
                                                #; (f:fpu) ft0  <-- 57.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 58
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 58, (wrb) a2  <-- 59
                                                #; (f:fpu) ft3  <-- 58.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 59, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 58.0, ft3  = 58.0
                                                #; (f:fpu) ft0  <-- 58.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 59
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 59, (wrb) a2  <-- 60
                                                #; (f:fpu) ft3  <-- 59.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 60, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 59.0, ft3  = 59.0
                                                #; (f:fpu) ft0  <-- 59.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 60
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 60, (wrb) a2  <-- 61
                                                #; (f:fpu) ft3  <-- 60.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 61, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 60.0, ft3  = 60.0
                                                #; (f:fpu) ft0  <-- 60.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 61
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 61, (wrb) a2  <-- 62
                                                #; (f:fpu) ft3  <-- 61.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 62, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 61.0, ft3  = 61.0
                                                #; (f:fpu) ft0  <-- 61.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 62
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 62, (wrb) a2  <-- 63
                                                #; (f:fpu) ft3  <-- 62.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 63, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 62.0, ft3  = 62.0
                                                #; (f:fpu) ft0  <-- 62.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 63
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 63, (wrb) a2  <-- 64
                                                #; (f:fpu) ft3  <-- 63.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 64, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 63.0, ft3  = 63.0
                                                #; (f:fpu) ft0  <-- 63.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 64
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 64, (wrb) a2  <-- 65
                                                #; (f:fpu) ft3  <-- 64.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 65, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 64.0, ft3  = 64.0
                                                #; (f:fpu) ft0  <-- 64.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 65
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 65, (wrb) a2  <-- 66
                                                #; (f:fpu) ft3  <-- 65.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 66, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 65.0, ft3  = 65.0
                                                #; (f:fpu) ft0  <-- 65.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 66
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 66, (wrb) a2  <-- 67
                                                #; (f:fpu) ft3  <-- 66.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 67, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 66.0, ft3  = 66.0
                                                #; (f:fpu) ft0  <-- 66.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 67
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 67, (wrb) a2  <-- 68
                                                #; (f:fpu) ft3  <-- 67.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 68, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 67.0, ft3  = 67.0
                                                #; (f:fpu) ft0  <-- 67.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 68
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 68, (wrb) a2  <-- 69
                                                #; (f:fpu) ft3  <-- 68.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 69, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 68.0, ft3  = 68.0
                                                #; (f:fpu) ft0  <-- 68.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 69
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 69, (wrb) a2  <-- 70
                                                #; (f:fpu) ft3  <-- 69.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 70, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 69.0, ft3  = 69.0
                                                #; (f:fpu) ft0  <-- 69.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 70
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 70, (wrb) a2  <-- 71
                                                #; (f:fpu) ft3  <-- 70.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 71, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 70.0, ft3  = 70.0
                                                #; (f:fpu) ft0  <-- 70.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 71
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 71, (wrb) a2  <-- 72
                                                #; (f:fpu) ft3  <-- 71.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 72, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 71.0, ft3  = 71.0
                                                #; (f:fpu) ft0  <-- 71.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 72
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 72, (wrb) a2  <-- 73
                                                #; (f:fpu) ft3  <-- 72.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 73, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 72.0, ft3  = 72.0
                                                #; (f:fpu) ft0  <-- 72.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 73
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 73, (wrb) a2  <-- 74
                                                #; (f:fpu) ft3  <-- 73.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 74, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 73.0, ft3  = 73.0
                                                #; (f:fpu) ft0  <-- 73.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 74
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 74, (wrb) a2  <-- 75
                                                #; (f:fpu) ft3  <-- 74.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 75, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 74.0, ft3  = 74.0
                                                #; (f:fpu) ft0  <-- 74.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 75
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 75, (wrb) a2  <-- 76
                                                #; (f:fpu) ft3  <-- 75.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 76, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 75.0, ft3  = 75.0
                                                #; (f:fpu) ft0  <-- 75.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 76
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 76, (wrb) a2  <-- 77
                                                #; (f:fpu) ft3  <-- 76.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 77, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 76.0, ft3  = 76.0
                                                #; (f:fpu) ft0  <-- 76.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 77
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 77, (wrb) a2  <-- 78
                                                #; (f:fpu) ft3  <-- 77.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 78, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 77.0, ft3  = 77.0
                                                #; (f:fpu) ft0  <-- 77.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 78
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 78, (wrb) a2  <-- 79
                                                #; (f:fpu) ft3  <-- 78.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 79, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 78.0, ft3  = 78.0
                                                #; (f:fpu) ft0  <-- 78.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 79
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 79, (wrb) a2  <-- 80
                                                #; (f:fpu) ft3  <-- 79.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 80, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 79.0, ft3  = 79.0
                                                #; (f:fpu) ft0  <-- 79.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 80
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 80, (wrb) a2  <-- 81
                                                #; (f:fpu) ft3  <-- 80.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 81, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 80.0, ft3  = 80.0
                                                #; (f:fpu) ft0  <-- 80.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 81
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 81, (wrb) a2  <-- 82
                                                #; (f:fpu) ft3  <-- 81.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 82, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 81.0, ft3  = 81.0
                                                #; (f:fpu) ft0  <-- 81.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 82
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 82, (wrb) a2  <-- 83
                                                #; (f:fpu) ft3  <-- 82.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 83, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 82.0, ft3  = 82.0
                                                #; (f:fpu) ft0  <-- 82.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 83
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 83, (wrb) a2  <-- 84
                                                #; (f:fpu) ft3  <-- 83.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 84, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 83.0, ft3  = 83.0
                                                #; (f:fpu) ft0  <-- 83.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 84
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 84, (wrb) a2  <-- 85
                                                #; (f:fpu) ft3  <-- 84.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 85, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 84.0, ft3  = 84.0
                                                #; (f:fpu) ft0  <-- 84.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 85
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 85, (wrb) a2  <-- 86
                                                #; (f:fpu) ft3  <-- 85.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 86, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 85.0, ft3  = 85.0
                                                #; (f:fpu) ft0  <-- 85.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 86
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 86, (wrb) a2  <-- 87
                                                #; (f:fpu) ft3  <-- 86.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 87, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 86.0, ft3  = 86.0
                                                #; (f:fpu) ft0  <-- 86.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 87
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 87, (wrb) a2  <-- 88
                                                #; (f:fpu) ft3  <-- 87.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 88, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 87.0, ft3  = 87.0
                                                #; (f:fpu) ft0  <-- 87.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 88
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 88, (wrb) a2  <-- 89
                                                #; (f:fpu) ft3  <-- 88.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 89, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 88.0, ft3  = 88.0
                                                #; (f:fpu) ft0  <-- 88.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 89
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 89, (wrb) a2  <-- 90
                                                #; (f:fpu) ft3  <-- 89.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 90, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 89.0, ft3  = 89.0
                                                #; (f:fpu) ft0  <-- 89.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 90
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 90, (wrb) a2  <-- 91
                                                #; (f:fpu) ft3  <-- 90.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 91, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 90.0, ft3  = 90.0
                                                #; (f:fpu) ft0  <-- 90.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 91
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 91, (wrb) a2  <-- 92
                                                #; (f:fpu) ft3  <-- 91.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 92, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 91.0, ft3  = 91.0
                                                #; (f:fpu) ft0  <-- 91.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 92
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 92, (wrb) a2  <-- 93
                                                #; (f:fpu) ft3  <-- 92.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 93, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 92.0, ft3  = 92.0
                                                #; (f:fpu) ft0  <-- 92.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 93
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 93, (wrb) a2  <-- 94
                                                #; (f:fpu) ft3  <-- 93.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 94, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 93.0, ft3  = 93.0
                                                #; (f:fpu) ft0  <-- 93.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 94
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 94, (wrb) a2  <-- 95
                                                #; (f:fpu) ft3  <-- 94.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 95, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 94.0, ft3  = 94.0
                                                #; (f:fpu) ft0  <-- 94.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 95
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 95, (wrb) a2  <-- 96
                                                #; (f:fpu) ft3  <-- 95.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 96, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 95.0, ft3  = 95.0
                                                #; (f:fpu) ft0  <-- 95.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 96
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 96, (wrb) a2  <-- 97
                                                #; (f:fpu) ft3  <-- 96.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 97, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 96.0, ft3  = 96.0
                                                #; (f:fpu) ft0  <-- 96.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 97
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 97, (wrb) a2  <-- 98
                                                #; (f:fpu) ft3  <-- 97.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 98, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 97.0, ft3  = 97.0
                                                #; (f:fpu) ft0  <-- 97.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 98
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 98, (wrb) a2  <-- 99
                                                #; (f:fpu) ft3  <-- 98.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 99, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 98.0, ft3  = 98.0
                                                #; (f:fpu) ft0  <-- 98.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 99
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 99, (wrb) a2  <-- 100
                                                #; (f:fpu) ft3  <-- 99.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 100, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 99.0, ft3  = 99.0
                                                #; (f:fpu) ft0  <-- 99.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 100
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 100, (wrb) a2  <-- 101
                                                #; (f:fpu) ft3  <-- 100.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 101, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 100.0, ft3  = 100.0
                                                #; (f:fpu) ft0  <-- 100.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 101
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 101, (wrb) a2  <-- 102
                                                #; (f:fpu) ft3  <-- 101.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 102, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 101.0, ft3  = 101.0
                                                #; (f:fpu) ft0  <-- 101.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 102
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 102, (wrb) a2  <-- 103
                                                #; (f:fpu) ft3  <-- 102.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 103, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 102.0, ft3  = 102.0
                                                #; (f:fpu) ft0  <-- 102.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 103
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 103, (wrb) a2  <-- 104
                                                #; (f:fpu) ft3  <-- 103.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 104, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 103.0, ft3  = 103.0
                                                #; (f:fpu) ft0  <-- 103.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 104
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 104, (wrb) a2  <-- 105
                                                #; (f:fpu) ft3  <-- 104.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 105, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 104.0, ft3  = 104.0
                                                #; (f:fpu) ft0  <-- 104.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 105
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 105, (wrb) a2  <-- 106
                                                #; (f:fpu) ft3  <-- 105.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 106, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 105.0, ft3  = 105.0
                                                #; (f:fpu) ft0  <-- 105.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 106
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 106, (wrb) a2  <-- 107
                                                #; (f:fpu) ft3  <-- 106.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 107, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 106.0, ft3  = 106.0
                                                #; (f:fpu) ft0  <-- 106.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 107
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 107, (wrb) a2  <-- 108
                                                #; (f:fpu) ft3  <-- 107.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 108, a3  = 109, taken, goto 0x80000704
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 107.0, ft3  = 107.0
                                                #; (f:fpu) ft0  <-- 107.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 108
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x8000070c addi    a2, a2, 1              #; a2  = 108, (wrb) a2  <-- 109
                                                #; (f:fpu) ft3  <-- 108.0
      0x80000710 bne     a2, a3, pc - 12        #; a2  = 109, a3  = 109, not taken
      0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 108.0, ft3  = 108.0
                                                #; (f:fpu) ft0  <-- 108.0
; main (test_access.c:0)
      0x80000718 beqz    a1, pc + 1052          #; a1  = 1, not taken
      0x80000714 csrrci  a2, ssr, 1             #; 
      0x8000071c li      a2, 8                  #; (wrb) a2  <-- 8
      0x80000720 li      a1, 11                 #; (wrb) a1  <-- 11
; main (test_access.c:24)
      0x80000724 li      a3, 64                 #; (wrb) a3  <-- 64
      0x80000728 li      a4, 192                #; (wrb) a4  <-- 192
      0x8000072c scfgw   a1, a3                 #; a1  = 11, a3  = 64
      0x80000730 scfgw   a2, a4                 #; a2  = 8, a4  = 192
      0x80000734 li      a3, 96                 #; (wrb) a3  <-- 96
      0x80000738 li      a4, 224                #; (wrb) a4  <-- 224
      0x8000073c scfgw   a2, a3                 #; a2  = 8, a3  = 96, (acc) ra  <-- 0x00d620ab
      0x80000740 scfgw   a2, a4                 #; a2  = 8, a4  = 224
      0x80000744 li      a3, 32                 #; (wrb) a3  <-- 32
      0x80000748 scfgw   zero, a3               #; a3  = 32
      0x8000074c scfgwi  a0, 800                #; a0  = 0x00100000
      0x80000750 csrrsi  a3, ssr, 1             #; 
; main (test_access.c:26)
      0x80000754 fsgnj.d ft3, ft0, ft0          #; ft0  = 1.0, ft0  = 1.0
                                                #; (f:fpu) ft3  <-- 1.0
      0x80000758 fadd.d  ft3, ft0, ft3          #; ft0  = 2.0, ft3  = 1.0
                                                #; (f:fpu) ft3  <-- 3.0
      0x8000075c fadd.d  ft3, ft3, ft0          #; ft3  = 3.0, ft0  = 3.0
                                                #; (f:fpu) ft3  <-- 6.0
      0x80000760 fadd.d  ft3, ft3, ft0          #; ft3  = 6.0, ft0  = 4.0
                                                #; (f:fpu) ft3  <-- 10.0
      0x80000764 fadd.d  ft3, ft3, ft0          #; ft3  = 10.0, ft0  = 5.0
                                                #; (f:fpu) ft3  <-- 15.0
      0x80000768 fadd.d  ft3, ft3, ft0          #; ft3  = 15.0, ft0  = 6.0
                                                #; (f:fpu) ft3  <-- 21.0
      0x8000076c fadd.d  ft3, ft3, ft0          #; ft3  = 21.0, ft0  = 7.0
                                                #; (f:fpu) ft3  <-- 28.0
      0x80000770 fadd.d  ft3, ft3, ft0          #; ft3  = 28.0, ft0  = 8.0
                                                #; (f:fpu) ft3  <-- 36.0
      0x80000774 fadd.d  ft3, ft3, ft0          #; ft3  = 36.0, ft0  = 9.0
                                                #; (f:fpu) ft3  <-- 45.0
      0x80000778 fadd.d  ft3, ft3, ft0          #; ft3  = 45.0, ft0  = 10.0
                                                #; (f:fpu) ft3  <-- 55.0
      0x8000077c fadd.d  ft3, ft3, ft0          #; ft3  = 55.0, ft0  = 11.0
                                                #; (f:fpu) ft3  <-- 66.0
      0x80000780 fadd.d  ft3, ft3, ft0          #; ft3  = 66.0, ft0  = 12.0
                                                #; (f:fpu) ft3  <-- 78.0
      0x80000784 fadd.d  ft3, ft3, ft0          #; ft3  = 78.0, ft0  = 13.0
                                                #; (f:fpu) ft3  <-- 91.0
      0x80000788 fadd.d  ft3, ft3, ft0          #; ft3  = 91.0, ft0  = 14.0
                                                #; (f:fpu) ft3  <-- 105.0
      0x8000078c fadd.d  ft3, ft3, ft0          #; ft3  = 105.0, ft0  = 15.0
                                                #; (f:fpu) ft3  <-- 120.0
      0x80000790 fadd.d  ft3, ft3, ft0          #; ft3  = 120.0, ft0  = 16.0
                                                #; (f:fpu) ft3  <-- 136.0
      0x80000794 fadd.d  ft3, ft3, ft0          #; ft3  = 136.0, ft0  = 17.0
                                                #; (f:fpu) ft3  <-- 153.0
      0x80000798 fadd.d  ft3, ft3, ft0          #; ft3  = 153.0, ft0  = 18.0
                                                #; (f:fpu) ft3  <-- 171.0
      0x8000079c fadd.d  ft3, ft3, ft0          #; ft3  = 171.0, ft0  = 19.0
                                                #; (f:fpu) ft3  <-- 190.0
      0x800007a0 fadd.d  ft3, ft3, ft0          #; ft3  = 190.0, ft0  = 20.0
                                                #; (f:fpu) ft3  <-- 210.0
      0x800007a4 fadd.d  ft3, ft3, ft0          #; ft3  = 210.0, ft0  = 21.0
                                                #; (f:fpu) ft3  <-- 231.0
      0x800007a8 fadd.d  ft3, ft3, ft0          #; ft3  = 231.0, ft0  = 22.0
                                                #; (f:fpu) ft3  <-- 253.0
      0x800007ac fadd.d  ft3, ft3, ft0          #; ft3  = 253.0, ft0  = 23.0
                                                #; (f:fpu) ft3  <-- 276.0
      0x800007b0 fadd.d  ft3, ft3, ft0          #; ft3  = 276.0, ft0  = 24.0
                                                #; (f:fpu) ft3  <-- 300.0
      0x800007b4 fadd.d  ft3, ft3, ft0          #; ft3  = 300.0, ft0  = 25.0
                                                #; (f:fpu) ft3  <-- 325.0
      0x800007b8 fadd.d  ft3, ft3, ft0          #; ft3  = 325.0, ft0  = 26.0
                                                #; (f:fpu) ft3  <-- 351.0
      0x800007bc fadd.d  ft3, ft3, ft0          #; ft3  = 351.0, ft0  = 27.0
                                                #; (f:fpu) ft3  <-- 378.0
      0x800007c0 fadd.d  ft3, ft3, ft0          #; ft3  = 378.0, ft0  = 28.0
                                                #; (f:fpu) ft3  <-- 406.0
      0x800007c4 fadd.d  ft3, ft3, ft0          #; ft3  = 406.0, ft0  = 29.0
                                                #; (f:fpu) ft3  <-- 435.0
      0x800007c8 fadd.d  ft3, ft3, ft0          #; ft3  = 435.0, ft0  = 30.0
                                                #; (f:fpu) ft3  <-- 465.0
      0x800007cc fadd.d  ft3, ft3, ft0          #; ft3  = 465.0, ft0  = 31.0
                                                #; (f:fpu) ft3  <-- 496.0
      0x800007d0 fadd.d  ft3, ft3, ft0          #; ft3  = 496.0, ft0  = 32.0
                                                #; (f:fpu) ft3  <-- 528.0
      0x800007d4 fadd.d  ft3, ft3, ft0          #; ft3  = 528.0, ft0  = 33.0
                                                #; (f:fpu) ft3  <-- 561.0
      0x800007d8 fadd.d  ft3, ft3, ft0          #; ft3  = 561.0, ft0  = 34.0
                                                #; (f:fpu) ft3  <-- 595.0
      0x800007dc fadd.d  ft3, ft3, ft0          #; ft3  = 595.0, ft0  = 35.0
                                                #; (f:fpu) ft3  <-- 630.0
      0x800007e0 fadd.d  ft3, ft3, ft0          #; ft3  = 630.0, ft0  = 36.0
                                                #; (f:fpu) ft3  <-- 666.0
      0x800007e4 fadd.d  ft3, ft3, ft0          #; ft3  = 666.0, ft0  = 37.0
                                                #; (f:fpu) ft3  <-- 703.0
      0x800007e8 fadd.d  ft3, ft3, ft0          #; ft3  = 703.0, ft0  = 38.0
                                                #; (f:fpu) ft3  <-- 741.0
      0x800007ec fadd.d  ft3, ft3, ft0          #; ft3  = 741.0, ft0  = 39.0
                                                #; (f:fpu) ft3  <-- 780.0
      0x800007f0 fadd.d  ft3, ft3, ft0          #; ft3  = 780.0, ft0  = 40.0
                                                #; (f:fpu) ft3  <-- 820.0
      0x800007f4 fadd.d  ft3, ft3, ft0          #; ft3  = 820.0, ft0  = 41.0
                                                #; (f:fpu) ft3  <-- 861.0
      0x800007f8 fadd.d  ft3, ft3, ft0          #; ft3  = 861.0, ft0  = 42.0
                                                #; (f:fpu) ft3  <-- 903.0
      0x800007fc fadd.d  ft3, ft3, ft0          #; ft3  = 903.0, ft0  = 43.0
                                                #; (f:fpu) ft3  <-- 946.0
      0x80000800 fadd.d  ft3, ft3, ft0          #; ft3  = 946.0, ft0  = 44.0
                                                #; (f:fpu) ft3  <-- 990.0
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 990.0, ft0  = 45.0
                                                #; (f:fpu) ft3  <-- 1035.0
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 1035.0, ft0  = 46.0
                                                #; (f:fpu) ft3  <-- 1081.0
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 1081.0, ft0  = 47.0
                                                #; (f:fpu) ft3  <-- 1128.0
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 1128.0, ft0  = 48.0
                                                #; (f:fpu) ft3  <-- 1176.0
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 1176.0, ft0  = 49.0
                                                #; (f:fpu) ft3  <-- 1225.0
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 1225.0, ft0  = 50.0
                                                #; (f:fpu) ft3  <-- 1275.0
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 1275.0, ft0  = 51.0
                                                #; (f:fpu) ft3  <-- 1326.0
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 1326.0, ft0  = 52.0
                                                #; (f:fpu) ft3  <-- 1378.0
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 1378.0, ft0  = 53.0
                                                #; (f:fpu) ft3  <-- 1431.0
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 1431.0, ft0  = 54.0
                                                #; (f:fpu) ft3  <-- 1485.0
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 1485.0, ft0  = 55.0
                                                #; (f:fpu) ft3  <-- 1540.0
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 1540.0, ft0  = 56.0
                                                #; (f:fpu) ft3  <-- 1596.0
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 1596.0, ft0  = 57.0
                                                #; (f:fpu) ft3  <-- 1653.0
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 1653.0, ft0  = 58.0
                                                #; (f:fpu) ft3  <-- 1711.0
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 1711.0, ft0  = 59.0
                                                #; (f:fpu) ft3  <-- 1770.0
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 1770.0, ft0  = 60.0
                                                #; (f:fpu) ft3  <-- 1830.0
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 1830.0, ft0  = 61.0
                                                #; (f:fpu) ft3  <-- 1891.0
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 1891.0, ft0  = 62.0
                                                #; (f:fpu) ft3  <-- 1953.0
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 1953.0, ft0  = 63.0
                                                #; (f:fpu) ft3  <-- 2016.0
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 2016.0, ft0  = 64.0
                                                #; (f:fpu) ft3  <-- 2080.0
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 2080.0, ft0  = 65.0
                                                #; (f:fpu) ft3  <-- 2145.0
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 2145.0, ft0  = 66.0
                                                #; (f:fpu) ft3  <-- 2211.0
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 2211.0, ft0  = 67.0
                                                #; (f:fpu) ft3  <-- 2278.0
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 2278.0, ft0  = 68.0
                                                #; (f:fpu) ft3  <-- 2346.0
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 2346.0, ft0  = 69.0
                                                #; (f:fpu) ft3  <-- 2415.0
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 2415.0, ft0  = 70.0
                                                #; (f:fpu) ft3  <-- 2485.0
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 2485.0, ft0  = 71.0
                                                #; (f:fpu) ft3  <-- 2556.0
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 2556.0, ft0  = 72.0
                                                #; (f:fpu) ft3  <-- 2628.0
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 2628.0, ft0  = 73.0
                                                #; (f:fpu) ft3  <-- 2701.0
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 2701.0, ft0  = 74.0
                                                #; (f:fpu) ft3  <-- 2775.0
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 2775.0, ft0  = 75.0
                                                #; (f:fpu) ft3  <-- 2850.0
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 2850.0, ft0  = 76.0
                                                #; (f:fpu) ft3  <-- 2926.0
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 2926.0, ft0  = 77.0
                                                #; (f:fpu) ft3  <-- 3003.0
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 3003.0, ft0  = 78.0
                                                #; (f:fpu) ft3  <-- 3081.0
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 3081.0, ft0  = 79.0
                                                #; (f:fpu) ft3  <-- 3160.0
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 3160.0, ft0  = 80.0
                                                #; (f:fpu) ft3  <-- 3240.0
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 3240.0, ft0  = 81.0
                                                #; (f:fpu) ft3  <-- 3321.0
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 3321.0, ft0  = 82.0
                                                #; (f:fpu) ft3  <-- 3403.0
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 3403.0, ft0  = 83.0
                                                #; (f:fpu) ft3  <-- 3486.0
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 3486.0, ft0  = 84.0
                                                #; (f:fpu) ft3  <-- 3570.0
      0x800008a4 fadd.d  ft3, ft3, ft0          #; ft3  = 3570.0, ft0  = 85.0
                                                #; (f:fpu) ft3  <-- 3655.0
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 3655.0, ft0  = 86.0
                                                #; (f:fpu) ft3  <-- 3741.0
      0x800008ac fadd.d  ft3, ft3, ft0          #; ft3  = 3741.0, ft0  = 87.0
                                                #; (f:fpu) ft3  <-- 3828.0
      0x800008b0 fadd.d  ft3, ft3, ft0          #; ft3  = 3828.0, ft0  = 88.0
                                                #; (f:fpu) ft3  <-- 3916.0
      0x800008b4 fadd.d  ft3, ft3, ft0          #; ft3  = 3916.0, ft0  = 89.0
                                                #; (f:fpu) ft3  <-- 4005.0
      0x800008b8 fadd.d  ft3, ft3, ft0          #; ft3  = 4005.0, ft0  = 90.0
                                                #; (f:fpu) ft3  <-- 4095.0
      0x800008bc fadd.d  ft3, ft3, ft0          #; ft3  = 4095.0, ft0  = 91.0
                                                #; (f:fpu) ft3  <-- 4186.0
      0x800008c0 fadd.d  ft3, ft3, ft0          #; ft3  = 4186.0, ft0  = 92.0
; main (test_access.c:0)
      0x8000090c li      a3, 96                 #; (wrb) a3  <-- 96
                                                #; (f:fpu) ft3  <-- 4278.0
; main (test_access.c:32)
      0x80000910 li      a4, 64                 #; (wrb) a4  <-- 64
      0x800008c4 fadd.d  ft3, ft3, ft0          #; ft3  = 4278.0, ft0  = 93.0
      0x80000914 li      a5, 192                #; (wrb) a5  <-- 192
      0x80000918 scfgw   a2, a4                 #; a2  = 8, a4  = 64
                                                #; (f:fpu) ft3  <-- 4371.0
; main (test_access.c:26)
      0x800008c8 fadd.d  ft3, ft3, ft0          #; ft3  = 4371.0, ft0  = 94.0
                                                #; (f:fpu) ft3  <-- 4465.0
      0x800008cc fadd.d  ft3, ft3, ft0          #; ft3  = 4465.0, ft0  = 95.0
                                                #; (f:fpu) ft3  <-- 4560.0
      0x800008d0 fadd.d  ft3, ft3, ft0          #; ft3  = 4560.0, ft0  = 96.0
                                                #; (f:fpu) ft3  <-- 4656.0
      0x800008d4 fadd.d  ft3, ft3, ft0          #; ft3  = 4656.0, ft0  = 97.0
                                                #; (f:fpu) ft3  <-- 4753.0
      0x800008d8 fadd.d  ft3, ft3, ft0          #; ft3  = 4753.0, ft0  = 98.0
                                                #; (f:fpu) ft3  <-- 4851.0
      0x800008dc fadd.d  ft3, ft3, ft0          #; ft3  = 4851.0, ft0  = 99.0
                                                #; (f:fpu) ft3  <-- 4950.0
      0x800008e0 fadd.d  ft3, ft3, ft0          #; ft3  = 4950.0, ft0  = 100.0
                                                #; (f:fpu) ft3  <-- 5050.0
      0x800008e4 fadd.d  ft3, ft3, ft0          #; ft3  = 5050.0, ft0  = 101.0
                                                #; (f:fpu) ft3  <-- 5151.0
      0x800008e8 fadd.d  ft3, ft3, ft0          #; ft3  = 5151.0, ft0  = 102.0
                                                #; (f:fpu) ft3  <-- 5253.0
      0x800008ec fadd.d  ft3, ft3, ft0          #; ft3  = 5253.0, ft0  = 103.0
                                                #; (f:fpu) ft3  <-- 5356.0
      0x800008f0 fadd.d  ft3, ft3, ft0          #; ft3  = 5356.0, ft0  = 104.0
                                                #; (f:fpu) ft3  <-- 5460.0
      0x800008f4 fadd.d  ft3, ft3, ft0          #; ft3  = 5460.0, ft0  = 105.0
                                                #; (f:fpu) ft3  <-- 5565.0
      0x800008f8 fadd.d  ft3, ft3, ft0          #; ft3  = 5565.0, ft0  = 106.0
                                                #; (f:fpu) ft3  <-- 5671.0
      0x800008fc fadd.d  ft3, ft3, ft0          #; ft3  = 5671.0, ft0  = 107.0
                                                #; (f:fpu) ft3  <-- 5778.0
      0x80000900 fsd     ft3, 664(sp)           #; 5778.0 ~~> Doub[0x0011fee8]
; main (test_access.c:0)
      0x80000904 fsd     ft0, 656(sp)           #; 108.0 ~~> Doub[0x0011fee0]
      0x80000908 csrrci  a3, ssr, 1             #; 
; main (test_access.c:32)
      0x8000091c scfgw   a3, a5                 #; a3  = 96, a5  = 192
      0x80000920 li      a2, -760               #; (wrb) a2  <-- -760
      0x80000924 li      a3, 96                 #; (wrb) a3  <-- 96
      0x80000928 li      a4, 224                #; (wrb) a4  <-- 224
      0x8000092c scfgw   a1, a3                 #; a1  = 11, a3  = 96, (acc) ra  <-- 0x00d5a0ab
      0x80000930 scfgw   a2, a4                 #; a2  = -760, a4  = 224
      0x80000934 li      a1, 32                 #; (wrb) a1  <-- 32
      0x80000938 scfgw   zero, a1               #; a1  = 32
      0x8000093c scfgwi  a0, 800                #; a0  = 0x00100000
      0x80000940 csrrsi  a1, ssr, 1             #; 
; main (test_access.c:34)
      0x80000944 fsgnj.d ft3, ft0, ft0          #; ft0  = 1.0, ft0  = 1.0
                                                #; (f:fpu) ft3  <-- 1.0
; main (test_access.c:26)
      0x80000948 fld     ft7, 664(sp)           #; ft7  <~~ Doub[0x0011fee8]
      0x8000094c fld     fa0, 656(sp)           #; fa0  <~~ Doub[0x0011fee0], (f:lsu) ft7  <-- 5778.0
                                                #; (f:lsu) fa0  <-- 108.0
      0x80000950 fadd.d  ft7, ft7, fa0          #; ft7  = 5778.0, fa0  = 108.0
                                                #; (f:fpu) ft7  <-- 5886.0
; main (test_access.c:34)
      0x80000954 fsd     ft7, 656(sp)           #; 5886.0 ~~> Doub[0x0011fee0]
      0x80000958 fadd.d  ft3, ft0, ft3          #; ft0  = 13.0, ft3  = 1.0
                                                #; (f:fpu) ft3  <-- 14.0
      0x8000095c fadd.d  ft3, ft3, ft0          #; ft3  = 14.0, ft0  = 25.0
                                                #; (f:fpu) ft3  <-- 39.0
      0x80000960 fadd.d  ft3, ft3, ft0          #; ft3  = 39.0, ft0  = 37.0
                                                #; (f:fpu) ft3  <-- 76.0
      0x80000964 fadd.d  ft3, ft3, ft0          #; ft3  = 76.0, ft0  = 49.0
                                                #; (f:fpu) ft3  <-- 125.0
      0x80000968 fadd.d  ft3, ft3, ft0          #; ft3  = 125.0, ft0  = 61.0
                                                #; (f:fpu) ft3  <-- 186.0
      0x8000096c fadd.d  ft3, ft3, ft0          #; ft3  = 186.0, ft0  = 73.0
                                                #; (f:fpu) ft3  <-- 259.0
      0x80000970 fadd.d  ft3, ft3, ft0          #; ft3  = 259.0, ft0  = 85.0
                                                #; (f:fpu) ft3  <-- 344.0
      0x80000974 fadd.d  ft3, ft3, ft0          #; ft3  = 344.0, ft0  = 97.0
                                                #; (f:fpu) ft3  <-- 441.0
      0x80000978 fadd.d  ft3, ft3, ft0          #; ft3  = 441.0, ft0  = 2.0
                                                #; (f:fpu) ft3  <-- 443.0
      0x8000097c fadd.d  ft3, ft3, ft0          #; ft3  = 443.0, ft0  = 14.0
                                                #; (f:fpu) ft3  <-- 457.0
      0x80000980 fadd.d  ft3, ft3, ft0          #; ft3  = 457.0, ft0  = 26.0
                                                #; (f:fpu) ft3  <-- 483.0
      0x80000984 fadd.d  ft3, ft3, ft0          #; ft3  = 483.0, ft0  = 38.0
                                                #; (f:fpu) ft3  <-- 521.0
      0x80000988 fadd.d  ft3, ft3, ft0          #; ft3  = 521.0, ft0  = 50.0
                                                #; (f:fpu) ft3  <-- 571.0
      0x8000098c fadd.d  ft3, ft3, ft0          #; ft3  = 571.0, ft0  = 62.0
                                                #; (f:fpu) ft3  <-- 633.0
      0x80000990 fadd.d  ft3, ft3, ft0          #; ft3  = 633.0, ft0  = 74.0
                                                #; (f:fpu) ft3  <-- 707.0
      0x80000994 fadd.d  ft3, ft3, ft0          #; ft3  = 707.0, ft0  = 86.0
                                                #; (f:fpu) ft3  <-- 793.0
      0x80000998 fadd.d  ft3, ft3, ft0          #; ft3  = 793.0, ft0  = 98.0
                                                #; (f:fpu) ft3  <-- 891.0
      0x8000099c fadd.d  ft3, ft3, ft0          #; ft3  = 891.0, ft0  = 3.0
                                                #; (f:fpu) ft3  <-- 894.0
      0x800009a0 fadd.d  ft3, ft3, ft0          #; ft3  = 894.0, ft0  = 15.0
                                                #; (f:fpu) ft3  <-- 909.0
      0x800009a4 fadd.d  ft3, ft3, ft0          #; ft3  = 909.0, ft0  = 27.0
                                                #; (f:fpu) ft3  <-- 936.0
      0x800009a8 fadd.d  ft3, ft3, ft0          #; ft3  = 936.0, ft0  = 39.0
                                                #; (f:fpu) ft3  <-- 975.0
      0x800009ac fadd.d  ft3, ft3, ft0          #; ft3  = 975.0, ft0  = 51.0
                                                #; (f:fpu) ft3  <-- 1026.0
      0x800009b0 fadd.d  ft3, ft3, ft0          #; ft3  = 1026.0, ft0  = 63.0
                                                #; (f:fpu) ft3  <-- 1089.0
      0x800009b4 fadd.d  ft3, ft3, ft0          #; ft3  = 1089.0, ft0  = 75.0
                                                #; (f:fpu) ft3  <-- 1164.0
      0x800009b8 fadd.d  ft3, ft3, ft0          #; ft3  = 1164.0, ft0  = 87.0
                                                #; (f:fpu) ft3  <-- 1251.0
      0x800009bc fadd.d  ft3, ft3, ft0          #; ft3  = 1251.0, ft0  = 99.0
                                                #; (f:fpu) ft3  <-- 1350.0
      0x800009c0 fadd.d  ft3, ft3, ft0          #; ft3  = 1350.0, ft0  = 4.0
                                                #; (f:fpu) ft3  <-- 1354.0
      0x800009c4 fadd.d  ft3, ft3, ft0          #; ft3  = 1354.0, ft0  = 16.0
                                                #; (f:fpu) ft3  <-- 1370.0
      0x800009c8 fadd.d  ft3, ft3, ft0          #; ft3  = 1370.0, ft0  = 28.0
                                                #; (f:fpu) ft3  <-- 1398.0
      0x800009cc fadd.d  ft3, ft3, ft0          #; ft3  = 1398.0, ft0  = 40.0
                                                #; (f:fpu) ft3  <-- 1438.0
      0x800009d0 fadd.d  ft3, ft3, ft0          #; ft3  = 1438.0, ft0  = 52.0
                                                #; (f:fpu) ft3  <-- 1490.0
      0x800009d4 fadd.d  ft3, ft3, ft0          #; ft3  = 1490.0, ft0  = 64.0
                                                #; (f:fpu) ft3  <-- 1554.0
      0x800009d8 fadd.d  ft3, ft3, ft0          #; ft3  = 1554.0, ft0  = 76.0
                                                #; (f:fpu) ft3  <-- 1630.0
      0x800009dc fadd.d  ft3, ft3, ft0          #; ft3  = 1630.0, ft0  = 88.0
                                                #; (f:fpu) ft3  <-- 1718.0
      0x800009e0 fadd.d  ft3, ft3, ft0          #; ft3  = 1718.0, ft0  = 100.0
                                                #; (f:fpu) ft3  <-- 1818.0
      0x800009e4 fadd.d  ft3, ft3, ft0          #; ft3  = 1818.0, ft0  = 5.0
                                                #; (f:fpu) ft3  <-- 1823.0
      0x800009e8 fadd.d  ft3, ft3, ft0          #; ft3  = 1823.0, ft0  = 17.0
                                                #; (f:fpu) ft3  <-- 1840.0
      0x800009ec fadd.d  ft3, ft3, ft0          #; ft3  = 1840.0, ft0  = 29.0
                                                #; (f:fpu) ft3  <-- 1869.0
      0x800009f0 fadd.d  ft3, ft3, ft0          #; ft3  = 1869.0, ft0  = 41.0
                                                #; (f:fpu) ft3  <-- 1910.0
      0x800009f4 fadd.d  ft3, ft3, ft0          #; ft3  = 1910.0, ft0  = 53.0
                                                #; (f:fpu) ft3  <-- 1963.0
      0x800009f8 fadd.d  ft3, ft3, ft0          #; ft3  = 1963.0, ft0  = 65.0
                                                #; (f:fpu) ft3  <-- 2028.0
      0x800009fc fadd.d  ft3, ft3, ft0          #; ft3  = 2028.0, ft0  = 77.0
                                                #; (f:fpu) ft3  <-- 2105.0
      0x80000a00 fadd.d  ft3, ft3, ft0          #; ft3  = 2105.0, ft0  = 89.0
                                                #; (f:fpu) ft3  <-- 2194.0
      0x80000a04 fadd.d  ft3, ft3, ft0          #; ft3  = 2194.0, ft0  = 101.0
                                                #; (f:fpu) ft3  <-- 2295.0
      0x80000a08 fadd.d  ft3, ft3, ft0          #; ft3  = 2295.0, ft0  = 6.0
                                                #; (f:fpu) ft3  <-- 2301.0
      0x80000a0c fadd.d  ft3, ft3, ft0          #; ft3  = 2301.0, ft0  = 18.0
                                                #; (f:fpu) ft3  <-- 2319.0
      0x80000a10 fadd.d  ft3, ft3, ft0          #; ft3  = 2319.0, ft0  = 30.0
                                                #; (f:fpu) ft3  <-- 2349.0
      0x80000a14 fadd.d  ft3, ft3, ft0          #; ft3  = 2349.0, ft0  = 42.0
                                                #; (f:fpu) ft3  <-- 2391.0
      0x80000a18 fadd.d  ft3, ft3, ft0          #; ft3  = 2391.0, ft0  = 54.0
                                                #; (f:fpu) ft3  <-- 2445.0
      0x80000a1c fadd.d  ft3, ft3, ft0          #; ft3  = 2445.0, ft0  = 66.0
                                                #; (f:fpu) ft3  <-- 2511.0
      0x80000a20 fadd.d  ft3, ft3, ft0          #; ft3  = 2511.0, ft0  = 78.0
                                                #; (f:fpu) ft3  <-- 2589.0
      0x80000a24 fadd.d  ft3, ft3, ft0          #; ft3  = 2589.0, ft0  = 90.0
                                                #; (f:fpu) ft3  <-- 2679.0
      0x80000a28 fadd.d  ft3, ft3, ft0          #; ft3  = 2679.0, ft0  = 102.0
                                                #; (f:fpu) ft3  <-- 2781.0
      0x80000a2c fadd.d  ft3, ft3, ft0          #; ft3  = 2781.0, ft0  = 7.0
                                                #; (f:fpu) ft3  <-- 2788.0
      0x80000a30 fadd.d  ft3, ft3, ft0          #; ft3  = 2788.0, ft0  = 19.0
                                                #; (f:fpu) ft3  <-- 2807.0
      0x80000a34 fadd.d  ft3, ft3, ft0          #; ft3  = 2807.0, ft0  = 31.0
                                                #; (f:fpu) ft3  <-- 2838.0
      0x80000a38 fadd.d  ft3, ft3, ft0          #; ft3  = 2838.0, ft0  = 43.0
                                                #; (f:fpu) ft3  <-- 2881.0
      0x80000a3c fadd.d  ft3, ft3, ft0          #; ft3  = 2881.0, ft0  = 55.0
                                                #; (f:fpu) ft3  <-- 2936.0
      0x80000a40 fadd.d  ft3, ft3, ft0          #; ft3  = 2936.0, ft0  = 67.0
                                                #; (f:fpu) ft3  <-- 3003.0
      0x80000a44 fadd.d  ft3, ft3, ft0          #; ft3  = 3003.0, ft0  = 79.0
                                                #; (f:fpu) ft3  <-- 3082.0
      0x80000a48 fadd.d  ft3, ft3, ft0          #; ft3  = 3082.0, ft0  = 91.0
                                                #; (f:fpu) ft3  <-- 3173.0
      0x80000a4c fadd.d  ft3, ft3, ft0          #; ft3  = 3173.0, ft0  = 103.0
                                                #; (f:fpu) ft3  <-- 3276.0
      0x80000a50 fadd.d  ft3, ft3, ft0          #; ft3  = 3276.0, ft0  = 8.0
                                                #; (f:fpu) ft3  <-- 3284.0
      0x80000a54 fadd.d  ft3, ft3, ft0          #; ft3  = 3284.0, ft0  = 20.0
                                                #; (f:fpu) ft3  <-- 3304.0
      0x80000a58 fadd.d  ft3, ft3, ft0          #; ft3  = 3304.0, ft0  = 32.0
                                                #; (f:fpu) ft3  <-- 3336.0
      0x80000a5c fadd.d  ft3, ft3, ft0          #; ft3  = 3336.0, ft0  = 44.0
                                                #; (f:fpu) ft3  <-- 3380.0
      0x80000a60 fadd.d  ft3, ft3, ft0          #; ft3  = 3380.0, ft0  = 56.0
                                                #; (f:fpu) ft3  <-- 3436.0
      0x80000a64 fadd.d  ft3, ft3, ft0          #; ft3  = 3436.0, ft0  = 68.0
                                                #; (f:fpu) ft3  <-- 3504.0
      0x80000a68 fadd.d  ft3, ft3, ft0          #; ft3  = 3504.0, ft0  = 80.0
                                                #; (f:fpu) ft3  <-- 3584.0
      0x80000a6c fadd.d  ft3, ft3, ft0          #; ft3  = 3584.0, ft0  = 92.0
                                                #; (f:fpu) ft3  <-- 3676.0
      0x80000a70 fadd.d  ft3, ft3, ft0          #; ft3  = 3676.0, ft0  = 104.0
                                                #; (f:fpu) ft3  <-- 3780.0
      0x80000a74 fadd.d  ft3, ft3, ft0          #; ft3  = 3780.0, ft0  = 9.0
                                                #; (f:fpu) ft3  <-- 3789.0
      0x80000a78 fadd.d  ft3, ft3, ft0          #; ft3  = 3789.0, ft0  = 21.0
                                                #; (f:fpu) ft3  <-- 3810.0
      0x80000a7c fadd.d  ft3, ft3, ft0          #; ft3  = 3810.0, ft0  = 33.0
                                                #; (f:fpu) ft3  <-- 3843.0
      0x80000a80 fadd.d  ft3, ft3, ft0          #; ft3  = 3843.0, ft0  = 45.0
                                                #; (f:fpu) ft3  <-- 3888.0
      0x80000a84 fadd.d  ft3, ft3, ft0          #; ft3  = 3888.0, ft0  = 57.0
                                                #; (f:fpu) ft3  <-- 3945.0
      0x80000a88 fadd.d  ft3, ft3, ft0          #; ft3  = 3945.0, ft0  = 69.0
                                                #; (f:fpu) ft3  <-- 4014.0
      0x80000a8c fadd.d  ft3, ft3, ft0          #; ft3  = 4014.0, ft0  = 81.0
                                                #; (f:fpu) ft3  <-- 4095.0
      0x80000a90 fadd.d  ft3, ft3, ft0          #; ft3  = 4095.0, ft0  = 93.0
                                                #; (f:fpu) ft3  <-- 4188.0
      0x80000a94 fadd.d  ft3, ft3, ft0          #; ft3  = 4188.0, ft0  = 105.0
                                                #; (f:fpu) ft3  <-- 4293.0
      0x80000a98 fadd.d  ft3, ft3, ft0          #; ft3  = 4293.0, ft0  = 10.0
                                                #; (f:fpu) ft3  <-- 4303.0
      0x80000a9c fadd.d  ft3, ft3, ft0          #; ft3  = 4303.0, ft0  = 22.0
                                                #; (f:fpu) ft3  <-- 4325.0
      0x80000aa0 fadd.d  ft3, ft3, ft0          #; ft3  = 4325.0, ft0  = 34.0
                                                #; (f:fpu) ft3  <-- 4359.0
      0x80000aa4 fadd.d  ft3, ft3, ft0          #; ft3  = 4359.0, ft0  = 46.0
                                                #; (f:fpu) ft3  <-- 4405.0
      0x80000aa8 fadd.d  ft3, ft3, ft0          #; ft3  = 4405.0, ft0  = 58.0
                                                #; (f:fpu) ft3  <-- 4463.0
      0x80000aac fadd.d  ft3, ft3, ft0          #; ft3  = 4463.0, ft0  = 70.0
                                                #; (f:fpu) ft3  <-- 4533.0
      0x80000ab0 fadd.d  ft3, ft3, ft0          #; ft3  = 4533.0, ft0  = 82.0
                                                #; (f:fpu) ft3  <-- 4615.0
      0x80000ab4 fadd.d  ft3, ft3, ft0          #; ft3  = 4615.0, ft0  = 94.0
                                                #; (f:fpu) ft3  <-- 4709.0
      0x80000ab8 fadd.d  ft3, ft3, ft0          #; ft3  = 4709.0, ft0  = 106.0
                                                #; (f:fpu) ft3  <-- 4815.0
      0x80000abc fadd.d  ft3, ft3, ft0          #; ft3  = 4815.0, ft0  = 11.0
                                                #; (f:fpu) ft3  <-- 4826.0
      0x80000ac0 fadd.d  ft3, ft3, ft0          #; ft3  = 4826.0, ft0  = 23.0
                                                #; (f:fpu) ft3  <-- 4849.0
      0x80000ac4 fadd.d  ft3, ft3, ft0          #; ft3  = 4849.0, ft0  = 35.0
; main (test_access.c:0)
      0x80000b10 j       pc + 0x67c             #; goto 0x8000118c
                                                #; (f:fpu) ft3  <-- 4884.0
; main (test_access.c:34)
      0x80000ac8 fadd.d  ft3, ft3, ft0          #; ft3  = 4884.0, ft0  = 47.0
                                                #; (f:fpu) ft3  <-- 4931.0
      0x80000acc fadd.d  ft3, ft3, ft0          #; ft3  = 4931.0, ft0  = 59.0
                                                #; (f:fpu) ft3  <-- 4990.0
      0x80000ad0 fadd.d  ft3, ft3, ft0          #; ft3  = 4990.0, ft0  = 71.0
                                                #; (f:fpu) ft3  <-- 5061.0
      0x80000ad4 fadd.d  ft3, ft3, ft0          #; ft3  = 5061.0, ft0  = 83.0
                                                #; (f:fpu) ft3  <-- 5144.0
      0x80000ad8 fadd.d  ft3, ft3, ft0          #; ft3  = 5144.0, ft0  = 95.0
                                                #; (f:fpu) ft3  <-- 5239.0
      0x80000adc fadd.d  ft3, ft3, ft0          #; ft3  = 5239.0, ft0  = 107.0
                                                #; (f:fpu) ft3  <-- 5346.0
      0x80000ae0 fadd.d  ft3, ft3, ft0          #; ft3  = 5346.0, ft0  = 12.0
                                                #; (f:fpu) ft3  <-- 5358.0
      0x80000ae4 fadd.d  ft3, ft3, ft0          #; ft3  = 5358.0, ft0  = 24.0
                                                #; (f:fpu) ft3  <-- 5382.0
      0x80000ae8 fadd.d  ft3, ft3, ft0          #; ft3  = 5382.0, ft0  = 36.0
                                                #; (f:fpu) ft3  <-- 5418.0
      0x80000aec fadd.d  ft3, ft3, ft0          #; ft3  = 5418.0, ft0  = 48.0
                                                #; (f:fpu) ft3  <-- 5466.0
      0x80000af0 fadd.d  ft3, ft3, ft0          #; ft3  = 5466.0, ft0  = 60.0
                                                #; (f:fpu) ft3  <-- 5526.0
      0x80000af4 fadd.d  ft3, ft3, ft0          #; ft3  = 5526.0, ft0  = 72.0
                                                #; (f:fpu) ft3  <-- 5598.0
      0x80000af8 fadd.d  ft3, ft3, ft0          #; ft3  = 5598.0, ft0  = 84.0
                                                #; (f:fpu) ft3  <-- 5682.0
      0x80000afc fadd.d  ft3, ft3, ft0          #; ft3  = 5682.0, ft0  = 96.0
                                                #; (f:fpu) ft3  <-- 5778.0
      0x80000b00 fadd.d  ft3, ft3, ft0          #; ft3  = 5778.0, ft0  = 108.0
                                                #; (f:fpu) ft3  <-- 5886.0
; main (test_access.c:0)
      0x80000b04 fsd     ft3, 664(sp)           #; 5886.0 ~~> Doub[0x0011fee8]
      0x80000b08 fld     fa0, 656(sp)           #; fa0  <~~ Doub[0x0011fee0]
      0x80000b0c csrrci  a1, ssr, 1             #; (f:lsu) fa0  <-- 5886.0
; main (test_access.c:42)
      0x8000118c fld     ft3, 768(a0)           #; ft3  <~~ Doub[0x00100300]
      0x80001190 fld     ft4, 776(a0)           #; ft4  <~~ Doub[0x00100308], (f:lsu) ft3  <-- 97.0
      0x80001194 fld     ft5, 784(a0)           #; ft5  <~~ Doub[0x00100310], (f:lsu) ft4  <-- 98.0
      0x80001198 fld     ft6, 792(a0)           #; ft6  <~~ Doub[0x00100318], (f:lsu) ft5  <-- 99.0
      0x8000119c fld     ft7, 664(sp)           #; ft7  <~~ Doub[0x0011fee8], (f:lsu) ft6  <-- 100.0
                                                #; (f:lsu) ft7  <-- 5886.0
      0x800011a0 fadd.d  ft3, ft7, ft3          #; ft7  = 5886.0, ft3  = 97.0
      0x800011a4 fld     ft7, 800(a0)           #; ft7  <~~ Doub[0x00100320]
                                                #; (f:lsu) ft7  <-- 101.0
                                                #; (f:fpu) ft3  <-- 5983.0
      0x800011a8 fadd.d  ft3, ft3, ft4          #; ft3  = 5983.0, ft4  = 98.0
      0x800011ac fld     ft4, 808(a0)           #; ft4  <~~ Doub[0x00100328]
                                                #; (f:lsu) ft4  <-- 102.0
                                                #; (f:fpu) ft3  <-- 6081.0
      0x800011b0 fadd.d  ft3, ft3, ft5          #; ft3  = 6081.0, ft5  = 99.0
      0x800011b4 fld     ft5, 816(a0)           #; ft5  <~~ Doub[0x00100330]
                                                #; (f:lsu) ft5  <-- 103.0
                                                #; (f:fpu) ft3  <-- 6180.0
      0x800011b8 fadd.d  ft3, ft3, ft6          #; ft3  = 6180.0, ft6  = 100.0
      0x800011bc fld     ft6, 824(a0)           #; ft6  <~~ Doub[0x00100338]
                                                #; (f:lsu) ft6  <-- 104.0
                                                #; (f:fpu) ft3  <-- 6280.0
      0x800011c0 fadd.d  ft3, ft3, ft7          #; ft3  = 6280.0, ft7  = 101.0
      0x800011c4 fld     ft7, 832(a0)           #; ft7  <~~ Doub[0x00100340]
                                                #; (f:lsu) ft7  <-- 105.0
                                                #; (f:fpu) ft3  <-- 6381.0
      0x800011c8 fadd.d  ft3, ft3, ft4          #; ft3  = 6381.0, ft4  = 102.0
      0x800011cc fld     ft4, 840(a0)           #; ft4  <~~ Doub[0x00100348]
                                                #; (f:lsu) ft4  <-- 106.0
                                                #; (f:fpu) ft3  <-- 6483.0
      0x800011d0 fadd.d  ft3, ft3, ft5          #; ft3  = 6483.0, ft5  = 103.0
      0x800011d4 fld     ft5, 848(a0)           #; ft5  <~~ Doub[0x00100350]
                                                #; (f:lsu) ft5  <-- 107.0
                                                #; (f:fpu) ft3  <-- 6586.0
      0x800011d8 fadd.d  ft3, ft3, ft6          #; ft3  = 6586.0, ft6  = 104.0
      0x800011dc fld     ft6, 856(a0)           #; ft6  <~~ Doub[0x00100358]
                                                #; (f:lsu) ft6  <-- 108.0
                                                #; (f:fpu) ft3  <-- 6690.0
      0x800011e0 fadd.d  ft3, ft3, ft7          #; ft3  = 6690.0, ft7  = 105.0
      0x800011e4 fld     ft7, 672(a0)           #; ft7  <~~ Doub[0x001002a0]
                                                #; (f:lsu) ft7  <-- 85.0
                                                #; (f:fpu) ft3  <-- 6795.0
      0x800011e8 fadd.d  ft3, ft3, ft4          #; ft3  = 6795.0, ft4  = 106.0
      0x800011ec fld     ft4, 680(a0)           #; ft4  <~~ Doub[0x001002a8]
                                                #; (f:lsu) ft4  <-- 86.0
                                                #; (f:fpu) ft3  <-- 6901.0
      0x800011f0 fadd.d  ft3, ft3, ft5          #; ft3  = 6901.0, ft5  = 107.0
      0x800011f4 fld     ft5, 688(a0)           #; ft5  <~~ Doub[0x001002b0]
                                                #; (f:lsu) ft5  <-- 87.0
                                                #; (f:fpu) ft3  <-- 7008.0
      0x800011f8 fadd.d  ft3, ft3, ft6          #; ft3  = 7008.0, ft6  = 108.0
      0x800011fc fld     ft6, 696(a0)           #; ft6  <~~ Doub[0x001002b8]
                                                #; (f:lsu) ft6  <-- 88.0
                                                #; (f:fpu) ft3  <-- 7116.0
      0x80001200 fadd.d  ft3, ft3, ft7          #; ft3  = 7116.0, ft7  = 85.0
      0x80001204 fld     ft7, 704(a0)           #; ft7  <~~ Doub[0x001002c0]
                                                #; (f:lsu) ft7  <-- 89.0
                                                #; (f:fpu) ft3  <-- 7201.0
      0x80001208 fadd.d  ft3, ft3, ft4          #; ft3  = 7201.0, ft4  = 86.0
      0x8000120c fld     ft4, 712(a0)           #; ft4  <~~ Doub[0x001002c8]
                                                #; (f:lsu) ft4  <-- 90.0
                                                #; (f:fpu) ft3  <-- 7287.0
      0x80001210 fadd.d  ft3, ft3, ft5          #; ft3  = 7287.0, ft5  = 87.0
      0x80001214 fld     ft5, 720(a0)           #; ft5  <~~ Doub[0x001002d0]
                                                #; (f:lsu) ft5  <-- 91.0
                                                #; (f:fpu) ft3  <-- 7374.0
      0x80001218 fadd.d  ft3, ft3, ft6          #; ft3  = 7374.0, ft6  = 88.0
      0x8000121c fld     ft6, 728(a0)           #; ft6  <~~ Doub[0x001002d8]
                                                #; (f:lsu) ft6  <-- 92.0
                                                #; (f:fpu) ft3  <-- 7462.0
      0x80001220 fadd.d  ft3, ft3, ft7          #; ft3  = 7462.0, ft7  = 89.0
      0x80001224 fld     ft7, 736(a0)           #; ft7  <~~ Doub[0x001002e0]
                                                #; (f:lsu) ft7  <-- 93.0
                                                #; (f:fpu) ft3  <-- 7551.0
      0x80001228 fadd.d  ft3, ft3, ft4          #; ft3  = 7551.0, ft4  = 90.0
      0x8000122c fld     ft4, 744(a0)           #; ft4  <~~ Doub[0x001002e8]
                                                #; (f:lsu) ft4  <-- 94.0
                                                #; (f:fpu) ft3  <-- 7641.0
      0x80001230 fadd.d  ft3, ft3, ft5          #; ft3  = 7641.0, ft5  = 91.0
      0x80001234 fld     ft5, 752(a0)           #; ft5  <~~ Doub[0x001002f0]
                                                #; (f:lsu) ft5  <-- 95.0
                                                #; (f:fpu) ft3  <-- 7732.0
      0x80001238 fadd.d  ft3, ft3, ft6          #; ft3  = 7732.0, ft6  = 92.0
      0x8000123c fld     ft6, 760(a0)           #; ft6  <~~ Doub[0x001002f8]
                                                #; (f:lsu) ft6  <-- 96.0
                                                #; (f:fpu) ft3  <-- 7824.0
      0x80001240 fadd.d  ft3, ft3, ft7          #; ft3  = 7824.0, ft7  = 93.0
      0x80001244 fld     ft7, 576(a0)           #; ft7  <~~ Doub[0x00100240]
                                                #; (f:lsu) ft7  <-- 73.0
                                                #; (f:fpu) ft3  <-- 7917.0
      0x80001248 fadd.d  ft3, ft3, ft4          #; ft3  = 7917.0, ft4  = 94.0
      0x8000124c fld     ft4, 584(a0)           #; ft4  <~~ Doub[0x00100248]
                                                #; (f:lsu) ft4  <-- 74.0
                                                #; (f:fpu) ft3  <-- 8011.0
      0x80001250 fadd.d  ft3, ft3, ft5          #; ft3  = 8011.0, ft5  = 95.0
      0x80001254 fld     ft5, 592(a0)           #; ft5  <~~ Doub[0x00100250]
                                                #; (f:lsu) ft5  <-- 75.0
                                                #; (f:fpu) ft3  <-- 8106.0
      0x80001258 fadd.d  ft3, ft3, ft6          #; ft3  = 8106.0, ft6  = 96.0
      0x8000125c fld     ft6, 600(a0)           #; ft6  <~~ Doub[0x00100258]
                                                #; (f:lsu) ft6  <-- 76.0
                                                #; (f:fpu) ft3  <-- 8202.0
      0x80001260 fadd.d  ft3, ft3, ft7          #; ft3  = 8202.0, ft7  = 73.0
      0x80001264 fld     ft7, 608(a0)           #; ft7  <~~ Doub[0x00100260]
                                                #; (f:lsu) ft7  <-- 77.0
                                                #; (f:fpu) ft3  <-- 8275.0
      0x80001268 fadd.d  ft3, ft3, ft4          #; ft3  = 8275.0, ft4  = 74.0
      0x8000126c fld     ft4, 616(a0)           #; ft4  <~~ Doub[0x00100268]
                                                #; (f:lsu) ft4  <-- 78.0
                                                #; (f:fpu) ft3  <-- 8349.0
      0x80001270 fadd.d  ft3, ft3, ft5          #; ft3  = 8349.0, ft5  = 75.0
      0x80001274 fld     ft5, 624(a0)           #; ft5  <~~ Doub[0x00100270]
                                                #; (f:lsu) ft5  <-- 79.0
                                                #; (f:fpu) ft3  <-- 8424.0
      0x80001278 fadd.d  ft3, ft3, ft6          #; ft3  = 8424.0, ft6  = 76.0
      0x8000127c fld     ft6, 632(a0)           #; ft6  <~~ Doub[0x00100278]
                                                #; (f:lsu) ft6  <-- 80.0
                                                #; (f:fpu) ft3  <-- 8500.0
      0x80001280 fadd.d  ft3, ft3, ft7          #; ft3  = 8500.0, ft7  = 77.0
      0x80001284 fld     ft7, 640(a0)           #; ft7  <~~ Doub[0x00100280]
                                                #; (f:lsu) ft7  <-- 81.0
                                                #; (f:fpu) ft3  <-- 8577.0
      0x80001288 fadd.d  ft3, ft3, ft4          #; ft3  = 8577.0, ft4  = 78.0
      0x8000128c fld     ft4, 648(a0)           #; ft4  <~~ Doub[0x00100288]
                                                #; (f:lsu) ft4  <-- 82.0
                                                #; (f:fpu) ft3  <-- 8655.0
      0x80001290 fadd.d  ft3, ft3, ft5          #; ft3  = 8655.0, ft5  = 79.0
      0x80001294 fld     ft5, 656(a0)           #; ft5  <~~ Doub[0x00100290]
                                                #; (f:lsu) ft5  <-- 83.0
                                                #; (f:fpu) ft3  <-- 8734.0
      0x80001298 fadd.d  ft3, ft3, ft6          #; ft3  = 8734.0, ft6  = 80.0
      0x8000129c fld     ft6, 664(a0)           #; ft6  <~~ Doub[0x00100298]
                                                #; (f:lsu) ft6  <-- 84.0
                                                #; (f:fpu) ft3  <-- 8814.0
      0x800012a0 fadd.d  ft3, ft3, ft7          #; ft3  = 8814.0, ft7  = 81.0
      0x800012a4 fld     ft7, 480(a0)           #; ft7  <~~ Doub[0x001001e0]
                                                #; (f:lsu) ft7  <-- 61.0
                                                #; (f:fpu) ft3  <-- 8895.0
      0x800012a8 fadd.d  ft3, ft3, ft4          #; ft3  = 8895.0, ft4  = 82.0
      0x800012ac fld     ft4, 488(a0)           #; ft4  <~~ Doub[0x001001e8]
                                                #; (f:lsu) ft4  <-- 62.0
                                                #; (f:fpu) ft3  <-- 8977.0
      0x800012b0 fadd.d  ft3, ft3, ft5          #; ft3  = 8977.0, ft5  = 83.0
      0x800012b4 fld     ft5, 496(a0)           #; ft5  <~~ Doub[0x001001f0]
                                                #; (f:lsu) ft5  <-- 63.0
                                                #; (f:fpu) ft3  <-- 9060.0
      0x800012b8 fadd.d  ft3, ft3, ft6          #; ft3  = 9060.0, ft6  = 84.0
      0x800012bc fld     ft6, 504(a0)           #; ft6  <~~ Doub[0x001001f8]
                                                #; (f:lsu) ft6  <-- 64.0
                                                #; (f:fpu) ft3  <-- 9144.0
      0x800012c0 fadd.d  ft3, ft3, ft7          #; ft3  = 9144.0, ft7  = 61.0
      0x800012c4 fld     ft7, 512(a0)           #; ft7  <~~ Doub[0x00100200]
                                                #; (f:lsu) ft7  <-- 65.0
                                                #; (f:fpu) ft3  <-- 9205.0
      0x800012c8 fadd.d  ft3, ft3, ft4          #; ft3  = 9205.0, ft4  = 62.0
      0x800012cc fld     ft4, 520(a0)           #; ft4  <~~ Doub[0x00100208]
                                                #; (f:lsu) ft4  <-- 66.0
                                                #; (f:fpu) ft3  <-- 9267.0
      0x800012d0 fadd.d  ft3, ft3, ft5          #; ft3  = 9267.0, ft5  = 63.0
      0x800012d4 fld     ft5, 528(a0)           #; ft5  <~~ Doub[0x00100210]
                                                #; (f:lsu) ft5  <-- 67.0
                                                #; (f:fpu) ft3  <-- 9330.0
      0x800012d8 fadd.d  ft3, ft3, ft6          #; ft3  = 9330.0, ft6  = 64.0
      0x800012dc fld     ft6, 536(a0)           #; ft6  <~~ Doub[0x00100218]
                                                #; (f:lsu) ft6  <-- 68.0
                                                #; (f:fpu) ft3  <-- 9394.0
      0x800012e0 fadd.d  ft3, ft3, ft7          #; ft3  = 9394.0, ft7  = 65.0
      0x800012e4 fld     ft7, 544(a0)           #; ft7  <~~ Doub[0x00100220]
                                                #; (f:lsu) ft7  <-- 69.0
                                                #; (f:fpu) ft3  <-- 9459.0
      0x800012e8 fadd.d  ft3, ft3, ft4          #; ft3  = 9459.0, ft4  = 66.0
      0x800012ec fld     ft4, 552(a0)           #; ft4  <~~ Doub[0x00100228]
                                                #; (f:lsu) ft4  <-- 70.0
                                                #; (f:fpu) ft3  <-- 9525.0
      0x800012f0 fadd.d  ft3, ft3, ft5          #; ft3  = 9525.0, ft5  = 67.0
      0x800012f4 fld     ft5, 560(a0)           #; ft5  <~~ Doub[0x00100230]
                                                #; (f:lsu) ft5  <-- 71.0
                                                #; (f:fpu) ft3  <-- 9592.0
      0x800012f8 fadd.d  ft3, ft3, ft6          #; ft3  = 9592.0, ft6  = 68.0
      0x800012fc fld     ft6, 568(a0)           #; ft6  <~~ Doub[0x00100238]
                                                #; (f:lsu) ft6  <-- 72.0
                                                #; (f:fpu) ft3  <-- 9660.0
      0x80001300 fadd.d  ft3, ft3, ft7          #; ft3  = 9660.0, ft7  = 69.0
      0x80001304 fld     ft7, 384(a0)           #; ft7  <~~ Doub[0x00100180]
                                                #; (f:lsu) ft7  <-- 49.0
                                                #; (f:fpu) ft3  <-- 9729.0
      0x80001308 fadd.d  ft3, ft3, ft4          #; ft3  = 9729.0, ft4  = 70.0
      0x8000130c fld     ft4, 392(a0)           #; ft4  <~~ Doub[0x00100188]
                                                #; (f:lsu) ft4  <-- 50.0
                                                #; (f:fpu) ft3  <-- 9799.0
      0x80001310 fadd.d  ft3, ft3, ft5          #; ft3  = 9799.0, ft5  = 71.0
      0x80001314 fld     ft5, 400(a0)           #; ft5  <~~ Doub[0x00100190]
                                                #; (f:lsu) ft5  <-- 51.0
                                                #; (f:fpu) ft3  <-- 9870.0
      0x80001318 fadd.d  ft3, ft3, ft6          #; ft3  = 9870.0, ft6  = 72.0
      0x8000131c fld     ft6, 408(a0)           #; ft6  <~~ Doub[0x00100198]
                                                #; (f:lsu) ft6  <-- 52.0
                                                #; (f:fpu) ft3  <-- 9942.0
      0x80001320 fadd.d  ft3, ft3, ft7          #; ft3  = 9942.0, ft7  = 49.0
      0x80001324 fld     ft7, 416(a0)           #; ft7  <~~ Doub[0x001001a0]
                                                #; (f:lsu) ft7  <-- 53.0
                                                #; (f:fpu) ft3  <-- 9991.0
      0x80001328 fadd.d  ft3, ft3, ft4          #; ft3  = 9991.0, ft4  = 50.0
      0x8000132c fld     ft4, 424(a0)           #; ft4  <~~ Doub[0x001001a8]
                                                #; (f:lsu) ft4  <-- 54.0
                                                #; (f:fpu) ft3  <-- 10041.0
      0x80001330 fadd.d  ft3, ft3, ft5          #; ft3  = 10041.0, ft5  = 51.0
      0x80001334 fld     ft5, 432(a0)           #; ft5  <~~ Doub[0x001001b0]
                                                #; (f:lsu) ft5  <-- 55.0
                                                #; (f:fpu) ft3  <-- 10092.0
      0x80001338 fadd.d  ft3, ft3, ft6          #; ft3  = 10092.0, ft6  = 52.0
      0x8000133c fld     ft6, 440(a0)           #; ft6  <~~ Doub[0x001001b8]
                                                #; (f:lsu) ft6  <-- 56.0
                                                #; (f:fpu) ft3  <-- 10144.0
      0x80001340 fadd.d  ft3, ft3, ft7          #; ft3  = 10144.0, ft7  = 53.0
      0x80001344 fld     ft7, 448(a0)           #; ft7  <~~ Doub[0x001001c0]
                                                #; (f:lsu) ft7  <-- 57.0
                                                #; (f:fpu) ft3  <-- 10197.0
      0x80001348 fadd.d  ft3, ft3, ft4          #; ft3  = 10197.0, ft4  = 54.0
      0x8000134c fld     ft4, 456(a0)           #; ft4  <~~ Doub[0x001001c8]
                                                #; (f:lsu) ft4  <-- 58.0
                                                #; (f:fpu) ft3  <-- 10251.0
      0x80001350 fadd.d  ft3, ft3, ft5          #; ft3  = 10251.0, ft5  = 55.0
      0x80001354 fld     ft5, 464(a0)           #; ft5  <~~ Doub[0x001001d0]
                                                #; (f:lsu) ft5  <-- 59.0
                                                #; (f:fpu) ft3  <-- 10306.0
      0x80001358 fadd.d  ft3, ft3, ft6          #; ft3  = 10306.0, ft6  = 56.0
      0x8000135c fld     ft6, 472(a0)           #; ft6  <~~ Doub[0x001001d8]
                                                #; (f:lsu) ft6  <-- 60.0
                                                #; (f:fpu) ft3  <-- 10362.0
      0x80001360 fadd.d  ft3, ft3, ft7          #; ft3  = 10362.0, ft7  = 57.0
      0x80001364 fld     ft7, 288(a0)           #; ft7  <~~ Doub[0x00100120]
                                                #; (f:lsu) ft7  <-- 37.0
                                                #; (f:fpu) ft3  <-- 10419.0
      0x80001368 fadd.d  ft3, ft3, ft4          #; ft3  = 10419.0, ft4  = 58.0
      0x8000136c fld     ft4, 296(a0)           #; ft4  <~~ Doub[0x00100128]
                                                #; (f:lsu) ft4  <-- 38.0
                                                #; (f:fpu) ft3  <-- 10477.0
      0x80001370 fadd.d  ft3, ft3, ft5          #; ft3  = 10477.0, ft5  = 59.0
      0x80001374 fld     ft5, 304(a0)           #; ft5  <~~ Doub[0x00100130]
                                                #; (f:lsu) ft5  <-- 39.0
                                                #; (f:fpu) ft3  <-- 10536.0
      0x80001378 fadd.d  ft3, ft3, ft6          #; ft3  = 10536.0, ft6  = 60.0
      0x8000137c fld     ft6, 312(a0)           #; ft6  <~~ Doub[0x00100138]
                                                #; (f:lsu) ft6  <-- 40.0
                                                #; (f:fpu) ft3  <-- 10596.0
      0x80001380 fadd.d  ft3, ft3, ft7          #; ft3  = 10596.0, ft7  = 37.0
      0x80001384 fld     ft7, 320(a0)           #; ft7  <~~ Doub[0x00100140]
                                                #; (f:lsu) ft7  <-- 41.0
                                                #; (f:fpu) ft3  <-- 10633.0
      0x80001388 fadd.d  ft3, ft3, ft4          #; ft3  = 10633.0, ft4  = 38.0
      0x8000138c fld     ft4, 328(a0)           #; ft4  <~~ Doub[0x00100148]
                                                #; (f:lsu) ft4  <-- 42.0
                                                #; (f:fpu) ft3  <-- 10671.0
      0x80001390 fadd.d  ft3, ft3, ft5          #; ft3  = 10671.0, ft5  = 39.0
      0x80001394 fld     ft5, 336(a0)           #; ft5  <~~ Doub[0x00100150]
                                                #; (f:lsu) ft5  <-- 43.0
                                                #; (f:fpu) ft3  <-- 10710.0
      0x80001398 fadd.d  ft3, ft3, ft6          #; ft3  = 10710.0, ft6  = 40.0
      0x8000139c fld     ft6, 344(a0)           #; ft6  <~~ Doub[0x00100158]
                                                #; (f:lsu) ft6  <-- 44.0
                                                #; (f:fpu) ft3  <-- 10750.0
      0x800013a0 fadd.d  ft3, ft3, ft7          #; ft3  = 10750.0, ft7  = 41.0
      0x800013a4 fld     ft7, 352(a0)           #; ft7  <~~ Doub[0x00100160]
                                                #; (f:lsu) ft7  <-- 45.0
                                                #; (f:fpu) ft3  <-- 10791.0
      0x800013a8 fadd.d  ft3, ft3, ft4          #; ft3  = 10791.0, ft4  = 42.0
      0x800013ac fld     ft4, 360(a0)           #; ft4  <~~ Doub[0x00100168]
                                                #; (f:lsu) ft4  <-- 46.0
                                                #; (f:fpu) ft3  <-- 10833.0
      0x800013b0 fadd.d  ft3, ft3, ft5          #; ft3  = 10833.0, ft5  = 43.0
      0x800013b4 fld     ft5, 368(a0)           #; ft5  <~~ Doub[0x00100170]
                                                #; (f:lsu) ft5  <-- 47.0
                                                #; (f:fpu) ft3  <-- 10876.0
      0x800013b8 fadd.d  ft3, ft3, ft6          #; ft3  = 10876.0, ft6  = 44.0
      0x800013bc fld     ft6, 376(a0)           #; ft6  <~~ Doub[0x00100178]
                                                #; (f:lsu) ft6  <-- 48.0
                                                #; (f:fpu) ft3  <-- 10920.0
      0x800013c0 fadd.d  ft3, ft3, ft7          #; ft3  = 10920.0, ft7  = 45.0
      0x800013c4 fld     ft7, 192(a0)           #; ft7  <~~ Doub[0x001000c0]
                                                #; (f:lsu) ft7  <-- 25.0
                                                #; (f:fpu) ft3  <-- 10965.0
      0x800013c8 fadd.d  ft3, ft3, ft4          #; ft3  = 10965.0, ft4  = 46.0
      0x800013cc fld     ft4, 200(a0)           #; ft4  <~~ Doub[0x001000c8]
                                                #; (f:lsu) ft4  <-- 26.0
                                                #; (f:fpu) ft3  <-- 11011.0
      0x800013d0 fadd.d  ft3, ft3, ft5          #; ft3  = 11011.0, ft5  = 47.0
      0x800013d4 fld     ft5, 208(a0)           #; ft5  <~~ Doub[0x001000d0]
                                                #; (f:lsu) ft5  <-- 27.0
                                                #; (f:fpu) ft3  <-- 11058.0
      0x800013d8 fadd.d  ft3, ft3, ft6          #; ft3  = 11058.0, ft6  = 48.0
      0x800013dc fld     ft6, 216(a0)           #; ft6  <~~ Doub[0x001000d8]
                                                #; (f:lsu) ft6  <-- 28.0
                                                #; (f:fpu) ft3  <-- 11106.0
      0x800013e0 fadd.d  ft3, ft3, ft7          #; ft3  = 11106.0, ft7  = 25.0
      0x800013e4 fld     ft7, 224(a0)           #; ft7  <~~ Doub[0x001000e0]
                                                #; (f:lsu) ft7  <-- 29.0
                                                #; (f:fpu) ft3  <-- 11131.0
      0x800013e8 fadd.d  ft3, ft3, ft4          #; ft3  = 11131.0, ft4  = 26.0
      0x800013ec fld     ft4, 232(a0)           #; ft4  <~~ Doub[0x001000e8]
                                                #; (f:lsu) ft4  <-- 30.0
                                                #; (f:fpu) ft3  <-- 11157.0
      0x800013f0 fadd.d  ft3, ft3, ft5          #; ft3  = 11157.0, ft5  = 27.0
      0x800013f4 fld     ft5, 240(a0)           #; ft5  <~~ Doub[0x001000f0]
                                                #; (f:lsu) ft5  <-- 31.0
                                                #; (f:fpu) ft3  <-- 11184.0
      0x800013f8 fadd.d  ft3, ft3, ft6          #; ft3  = 11184.0, ft6  = 28.0
      0x800013fc fld     ft6, 248(a0)           #; ft6  <~~ Doub[0x001000f8]
                                                #; (f:lsu) ft6  <-- 32.0
                                                #; (f:fpu) ft3  <-- 11212.0
      0x80001400 fadd.d  ft3, ft3, ft7          #; ft3  = 11212.0, ft7  = 29.0
      0x80001404 fld     ft7, 256(a0)           #; ft7  <~~ Doub[0x00100100]
                                                #; (f:lsu) ft7  <-- 33.0
                                                #; (f:fpu) ft3  <-- 11241.0
      0x80001408 fadd.d  ft3, ft3, ft4          #; ft3  = 11241.0, ft4  = 30.0
      0x8000140c fld     ft4, 264(a0)           #; ft4  <~~ Doub[0x00100108]
                                                #; (f:lsu) ft4  <-- 34.0
                                                #; (f:fpu) ft3  <-- 11271.0
      0x80001410 fadd.d  ft3, ft3, ft5          #; ft3  = 11271.0, ft5  = 31.0
      0x80001414 fld     ft5, 272(a0)           #; ft5  <~~ Doub[0x00100110]
                                                #; (f:lsu) ft5  <-- 35.0
                                                #; (f:fpu) ft3  <-- 11302.0
      0x80001418 fadd.d  ft3, ft3, ft6          #; ft3  = 11302.0, ft6  = 32.0
      0x8000141c fld     ft6, 280(a0)           #; ft6  <~~ Doub[0x00100118]
                                                #; (f:lsu) ft6  <-- 36.0
                                                #; (f:fpu) ft3  <-- 11334.0
      0x80001420 fadd.d  ft3, ft3, ft7          #; ft3  = 11334.0, ft7  = 33.0
      0x80001424 fld     ft7, 96(a0)            #; ft7  <~~ Doub[0x00100060]
                                                #; (f:lsu) ft7  <-- 13.0
                                                #; (f:fpu) ft3  <-- 11367.0
      0x80001428 fadd.d  ft3, ft3, ft4          #; ft3  = 11367.0, ft4  = 34.0
      0x8000142c fld     ft4, 104(a0)           #; ft4  <~~ Doub[0x00100068]
                                                #; (f:lsu) ft4  <-- 14.0
                                                #; (f:fpu) ft3  <-- 11401.0
      0x80001430 fadd.d  ft3, ft3, ft5          #; ft3  = 11401.0, ft5  = 35.0
      0x80001434 fld     ft5, 112(a0)           #; ft5  <~~ Doub[0x00100070]
                                                #; (f:lsu) ft5  <-- 15.0
                                                #; (f:fpu) ft3  <-- 11436.0
      0x80001438 fadd.d  ft3, ft3, ft6          #; ft3  = 11436.0, ft6  = 36.0
      0x8000143c fld     ft6, 120(a0)           #; ft6  <~~ Doub[0x00100078]
                                                #; (f:lsu) ft6  <-- 16.0
                                                #; (f:fpu) ft3  <-- 11472.0
      0x80001440 fadd.d  ft3, ft3, ft7          #; ft3  = 11472.0, ft7  = 13.0
      0x80001444 fld     ft7, 128(a0)           #; ft7  <~~ Doub[0x00100080]
                                                #; (f:lsu) ft7  <-- 17.0
                                                #; (f:fpu) ft3  <-- 11485.0
      0x80001448 fadd.d  ft3, ft3, ft4          #; ft3  = 11485.0, ft4  = 14.0
      0x8000144c fld     ft4, 136(a0)           #; ft4  <~~ Doub[0x00100088]
                                                #; (f:lsu) ft4  <-- 18.0
                                                #; (f:fpu) ft3  <-- 11499.0
      0x80001450 fadd.d  ft3, ft3, ft5          #; ft3  = 11499.0, ft5  = 15.0
      0x80001454 fld     ft5, 144(a0)           #; ft5  <~~ Doub[0x00100090]
                                                #; (f:lsu) ft5  <-- 19.0
                                                #; (f:fpu) ft3  <-- 11514.0
      0x80001458 fadd.d  ft3, ft3, ft6          #; ft3  = 11514.0, ft6  = 16.0
      0x8000145c fld     ft6, 152(a0)           #; ft6  <~~ Doub[0x00100098]
                                                #; (f:lsu) ft6  <-- 20.0
                                                #; (f:fpu) ft3  <-- 11530.0
      0x80001460 fadd.d  ft3, ft3, ft7          #; ft3  = 11530.0, ft7  = 17.0
      0x80001464 fld     ft7, 160(a0)           #; ft7  <~~ Doub[0x001000a0]
                                                #; (f:lsu) ft7  <-- 21.0
                                                #; (f:fpu) ft3  <-- 11547.0
      0x80001468 fadd.d  ft3, ft3, ft4          #; ft3  = 11547.0, ft4  = 18.0
      0x8000146c fld     ft4, 168(a0)           #; ft4  <~~ Doub[0x001000a8]
                                                #; (f:lsu) ft4  <-- 22.0
                                                #; (f:fpu) ft3  <-- 11565.0
      0x80001470 fadd.d  ft3, ft3, ft5          #; ft3  = 11565.0, ft5  = 19.0
      0x80001474 fld     ft5, 176(a0)           #; ft5  <~~ Doub[0x001000b0]
                                                #; (f:lsu) ft5  <-- 23.0
                                                #; (f:fpu) ft3  <-- 11584.0
      0x80001478 fadd.d  ft3, ft3, ft6          #; ft3  = 11584.0, ft6  = 20.0
      0x8000147c fld     ft6, 184(a0)           #; ft6  <~~ Doub[0x001000b8]
                                                #; (f:lsu) ft6  <-- 24.0
                                                #; (f:fpu) ft3  <-- 11604.0
      0x80001480 fadd.d  ft3, ft3, ft7          #; ft3  = 11604.0, ft7  = 21.0
      0x80001484 fld     ft7, 0(a0)             #; ft7  <~~ Doub[0x00100000]
                                                #; (f:lsu) ft7  <-- 1.0
                                                #; (f:fpu) ft3  <-- 11625.0
      0x80001488 fadd.d  ft3, ft3, ft4          #; ft3  = 11625.0, ft4  = 22.0
      0x8000148c fld     ft4, 8(a0)             #; ft4  <~~ Doub[0x00100008]
                                                #; (f:lsu) ft4  <-- 2.0
                                                #; (f:fpu) ft3  <-- 11647.0
      0x80001490 fadd.d  ft3, ft3, ft5          #; ft3  = 11647.0, ft5  = 23.0
      0x80001494 fld     ft5, 16(a0)            #; ft5  <~~ Doub[0x00100010]
                                                #; (f:lsu) ft5  <-- 3.0
                                                #; (f:fpu) ft3  <-- 11670.0
      0x80001498 fadd.d  ft3, ft3, ft6          #; ft3  = 11670.0, ft6  = 24.0
      0x8000149c fld     ft6, 24(a0)            #; ft6  <~~ Doub[0x00100018]
                                                #; (f:lsu) ft6  <-- 4.0
                                                #; (f:fpu) ft3  <-- 11694.0
      0x800014a0 fadd.d  ft3, ft3, ft7          #; ft3  = 11694.0, ft7  = 1.0
      0x800014a4 fld     ft7, 32(a0)            #; ft7  <~~ Doub[0x00100020]
                                                #; (f:lsu) ft7  <-- 5.0
                                                #; (f:fpu) ft3  <-- 11695.0
      0x800014a8 fadd.d  ft3, ft3, ft4          #; ft3  = 11695.0, ft4  = 2.0
      0x800014ac fld     ft4, 40(a0)            #; ft4  <~~ Doub[0x00100028]
                                                #; (f:lsu) ft4  <-- 6.0
                                                #; (f:fpu) ft3  <-- 11697.0
      0x800014b0 fadd.d  ft3, ft3, ft5          #; ft3  = 11697.0, ft5  = 3.0
      0x800014b4 fld     ft5, 48(a0)            #; ft5  <~~ Doub[0x00100030]
                                                #; (f:lsu) ft5  <-- 7.0
                                                #; (f:fpu) ft3  <-- 11700.0
      0x800014b8 fadd.d  ft3, ft3, ft6          #; ft3  = 11700.0, ft6  = 4.0
      0x800014bc fld     ft6, 56(a0)            #; ft6  <~~ Doub[0x00100038]
                                                #; (f:lsu) ft6  <-- 8.0
                                                #; (f:fpu) ft3  <-- 11704.0
      0x800014c0 fadd.d  ft3, ft3, ft7          #; ft3  = 11704.0, ft7  = 5.0
      0x800014c4 fld     ft7, 64(a0)            #; ft7  <~~ Doub[0x00100040]
                                                #; (f:lsu) ft7  <-- 9.0
                                                #; (f:fpu) ft3  <-- 11709.0
      0x800014c8 fadd.d  ft3, ft3, ft4          #; ft3  = 11709.0, ft4  = 6.0
      0x800014cc fld     ft4, 72(a0)            #; ft4  <~~ Doub[0x00100048]
                                                #; (f:lsu) ft4  <-- 10.0
                                                #; (f:fpu) ft3  <-- 11715.0
      0x800014d0 fadd.d  ft3, ft3, ft5          #; ft3  = 11715.0, ft5  = 7.0
      0x800014d4 fld     ft5, 80(a0)            #; ft5  <~~ Doub[0x00100050]
                                                #; (f:lsu) ft5  <-- 11.0
                                                #; (f:fpu) ft3  <-- 11722.0
      0x800014d8 fadd.d  ft3, ft3, ft6          #; ft3  = 11722.0, ft6  = 8.0
      0x800014dc fld     ft6, 88(a0)            #; ft6  <~~ Doub[0x00100058]
                                                #; (f:lsu) ft6  <-- 12.0
                                                #; (f:fpu) ft3  <-- 11730.0
; main (test_access.c:0)
      0x800014e4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800034e4
      0x800014e8 addi    a0, a0, 1652           #; a0  = 0x800034e4, (wrb) a0  <-- 0x80003b58
      0x800014e0 fadd.d  ft3, ft3, ft7          #; ft3  = 11730.0, ft7  = 9.0
      0x800014ec fld     ft7, 0(a0)             #; ft7  <~~ Doub[0x80003b58], (f:fpu) ft3  <-- 11739.0
; main (test_access.c:42)
      0x800014f0 fadd.d  ft3, ft3, ft4          #; ft3  = 11739.0, ft4  = 10.0, (f:lsu) ft7  <-- -2.0
                                                #; (f:fpu) ft3  <-- 11749.0
; main (test_access.c:46)
      0x800014f4 fadd.d  ft3, ft3, ft5          #; ft3  = 11749.0, ft5  = 11.0
                                                #; (f:fpu) ft3  <-- 11760.0
      0x800014f8 fadd.d  ft3, ft3, ft6          #; ft3  = 11760.0, ft6  = 12.0
                                                #; (f:fpu) ft3  <-- 11772.0
; main (test_access.c:49)
      0x80001508 lw      a2, 672(sp)            #; sp  = 0x0011fc50, a2  <~~ Word[0x0011fef0]
      0x800014fc fmadd.d ft3, fa0, ft7, ft3     #; fa0  = 5886.0, ft7  = -2.0, ft3  = 11772.0
                                                #; (lsu) a2  <-- 0
                                                #; (f:fpu) ft3  <-- 0.0
      0x8000150c lw      a3, 676(sp)            #; sp  = 0x0011fc50, a3  <~~ Word[0x0011fef4]
      0x80001500 fsgnjx.d fs0, ft3, ft3         #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x80001504 fsd     fs0, 672(sp)           #; 0.0 ~~> Doub[0x0011fef0]
                                                #; (lsu) a3  <-- 0
      0x80001510 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003510
      0x80001514 addi    a0, a0, 917            #; a0  = 0x80003510, (wrb) a0  <-- 0x800038a5
      0x80001518 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80001518
      0x8000151c jalr    ra, ra, 84             #; ra  = 0x80001518, (wrb) ra  <-- 0x80001520, goto 0x8000156c
; printf_ (printf.c:863)
      0x8000156c addi    sp, sp, -48            #; sp  = 0x0011fc50, (wrb) sp  <-- 0x0011fc20
      0x80001570 sw      ra, 12(sp)             #; sp  = 0x0011fc20, 0x80001520 ~~> Word[0x0011fc2c]
      0x80001574 mv      t0, a0                 #; a0  = 0x800038a5, (wrb) t0  <-- 0x800038a5
      0x80001578 sw      a7, 44(sp)             #; sp  = 0x0011fc20, 0xffff0000 ~~> Word[0x0011fc4c]
      0x8000157c sw      a6, 40(sp)             #; sp  = 0x0011fc20, 0x00120000 ~~> Word[0x0011fc48]
      0x80001580 sw      a5, 36(sp)             #; sp  = 0x0011fc20, 192 ~~> Word[0x0011fc44]
      0x80001584 sw      a4, 32(sp)             #; sp  = 0x0011fc20, 224 ~~> Word[0x0011fc40]
      0x80001588 sw      a3, 28(sp)             #; sp  = 0x0011fc20, 0 ~~> Word[0x0011fc3c]
      0x8000158c sw      a2, 24(sp)             #; sp  = 0x0011fc20, 0 ~~> Word[0x0011fc38]
      0x80001590 sw      a1, 20(sp)             #; sp  = 0x0011fc20, 32 ~~> Word[0x0011fc34]
      0x80001594 addi    a0, sp, 20             #; sp  = 0x0011fc20, (wrb) a0  <-- 0x0011fc34
; printf_ (printf.c:865)
      0x80001598 sw      a0, 8(sp)              #; sp  = 0x0011fc20, 0x0011fc34 ~~> Word[0x0011fc28]
; printf_ (printf.c:867)
      0x8000159c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000259c
      0x800015a0 addi    a0, a0, -988           #; a0  = 0x8000259c, (wrb) a0  <-- 0x800021c0
      0x800015a4 addi    a1, sp, 7              #; sp  = 0x0011fc20, (wrb) a1  <-- 0x0011fc27
      0x800015a8 li      a2, -1                 #; (wrb) a2  <-- -1
      0x800015ac addi    a4, sp, 20             #; sp  = 0x0011fc20, (wrb) a4  <-- 0x0011fc34
      0x800015b0 mv      a3, t0                 #; t0  = 0x800038a5, (wrb) a3  <-- 0x800038a5
      0x800015b4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800015b4
      0x800015b8 jalr    ra, ra, 20             #; ra  = 0x800015b4, (wrb) ra  <-- 0x800015bc, goto 0x800015c8
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x800015c8 addi    sp, sp, -112           #; sp  = 0x0011fc20, (wrb) sp  <-- 0x0011fbb0
      0x800015cc sw      ra, 108(sp)            #; sp  = 0x0011fbb0, 0x800015bc ~~> Word[0x0011fc1c]
      0x800015d0 sw      s0, 104(sp)            #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fc18]
      0x800015d4 sw      s1, 100(sp)            #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fc14]
      0x800015d8 sw      s2, 96(sp)             #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fc10]
      0x800015dc sw      s3, 92(sp)             #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fc0c]
      0x800015e0 sw      s4, 88(sp)             #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fc08]
      0x800015e4 sw      s5, 84(sp)             #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fc04]
      0x800015e8 sw      s6, 80(sp)             #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fc00]
      0x800015ec sw      s7, 76(sp)             #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fbfc]
      0x800015f0 sw      s8, 72(sp)             #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fbf8]
      0x800015f4 sw      s9, 68(sp)             #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fbf4]
      0x800015f8 sw      s10, 64(sp)            #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fbf0]
      0x800015fc sw      s11, 60(sp)            #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fbec]
      0x80001600 mv      s3, a4                 #; a4  = 0x0011fc34, (wrb) s3  <-- 0x0011fc34
      0x80001604 mv      s0, a3                 #; a3  = 0x800038a5, (wrb) s0  <-- 0x800038a5
      0x80001608 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x8000160c mv      s4, a1                 #; a1  = 0x0011fc27, (wrb) s4  <-- 0x0011fc27
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x80001610 beqz    a1, pc + 12            #; a1  = 0x0011fc27, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001614 mv      s2, a0                 #; a0  = 0x800021c0, (wrb) s2  <-- 0x800021c0
      0x80001618 j       pc + 0xc               #; goto 0x80001624
      0x80001624 li      s8, 0                  #; (wrb) s8  <-- 0
      0x80001628 li      s6, 37                 #; (wrb) s6  <-- 37
      0x8000162c li      s11, 16                #; (wrb) s11 <-- 16
      0x80001630 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80001634 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80001638 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x8000163c sw      a0, 24(sp)             #; sp  = 0x0011fbb0, 2048 ~~> Word[0x0011fbc8]
      0x80001640 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80001644 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80001648 sw      a0, 16(sp)             #; sp  = 0x0011fbb0, 65535 ~~> Word[0x0011fbc0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x8000164c addi    s10, s0, 2             #; s0  = 0x800038a5, (wrb) s10 <-- 0x800038a7
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001650 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80001654 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80001658 lbu     a0, 0(s0)              #; s0  = 0x800038a5, a0  <~~ Byte[0x800038a5]
                                                #; (lsu) a0  <-- 101
      0x8000165c beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x80001660 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80001664 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80001668 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
      0x8000166c mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80001670 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001674 jalr    s2                     #; s2  = 0x800021c0, (wrb) ra  <-- 0x80001678, goto 0x800021c0
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800021c0 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021cc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800021d0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041d0
      0x800021d4 addi    a3, a3, -1468          #; a3  = 0x800041d0, (wrb) a3  <-- 0x80003c14
      0x800021d8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003c14, (wrb) a1  <-- 0x80003c14
      0x800021dc lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 0
      0x800021e0 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x800021e4 sw      a5, 0(a1)              #; a1  = 0x80003c14, 1 ~~> Word[0x80003c14]
      0x800021e8 add     a4, a1, a4             #; a1  = 0x80003c14, a4  = 0, (wrb) a4  <-- 0x80003c14
      0x800021ec sb      a0, 72(a4)             #; a4  = 0x80003c14, 101 ~~> Byte[0x80003c5c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021f0 lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 1
      0x800021f4 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x800021f8 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x800021fc addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x80002200 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x80002204 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80002208 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002268
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80002268 ret                            #; ra  = 0x80001678, goto 0x80001678
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80001678 addi    s0, s0, 1              #; s0  = 0x800038a5, (wrb) s0  <-- 0x800038a6
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x8000167c addi    s10, s10, 1            #; s10 = 0x800038a7, (wrb) s10 <-- 0x800038a8
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001680 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80001684 lbu     a0, 0(s0)              #; s0  = 0x800038a6, a0  <~~ Byte[0x800038a6]
                                                #; (lsu) a0  <-- 114
      0x80001688 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80001660
      0x80001660 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80001664 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80001668 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
      0x8000166c mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80001670 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001674 jalr    s2                     #; s2  = 0x800021c0, (wrb) ra  <-- 0x80001678, goto 0x800021c0
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800021c0 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021cc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800021d0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041d0
      0x800021d4 addi    a3, a3, -1468          #; a3  = 0x800041d0, (wrb) a3  <-- 0x80003c14
                                                #; (acc) a1  <-- 0x00d605b3
      0x800021d8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003c14, (wrb) a1  <-- 0x80003c14
      0x800021dc lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 1
      0x800021e0 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x800021e4 sw      a5, 0(a1)              #; a1  = 0x80003c14, 2 ~~> Word[0x80003c14]
      0x800021e8 add     a4, a1, a4             #; a1  = 0x80003c14, a4  = 1, (wrb) a4  <-- 0x80003c15
      0x800021ec sb      a0, 72(a4)             #; a4  = 0x80003c15, 114 ~~> Byte[0x80003c5d]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021f0 lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 2
      0x800021f4 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x800021f8 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x800021fc addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80002200 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80002204 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80002208 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002268
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80002268 ret                            #; ra  = 0x80001678, goto 0x80001678
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80001678 addi    s0, s0, 1              #; s0  = 0x800038a6, (wrb) s0  <-- 0x800038a7
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x8000167c addi    s10, s10, 1            #; s10 = 0x800038a8, (wrb) s10 <-- 0x800038a9
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001680 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80001684 lbu     a0, 0(s0)              #; s0  = 0x800038a7, a0  <~~ Byte[0x800038a7]
                                                #; (lsu) a0  <-- 114
      0x80001688 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80001660
      0x80001660 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80001664 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80001668 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
      0x8000166c mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80001670 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001674 jalr    s2                     #; s2  = 0x800021c0, (wrb) ra  <-- 0x80001678, goto 0x800021c0
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800021c0 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021cc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800021d0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041d0
      0x800021d4 addi    a3, a3, -1468          #; a3  = 0x800041d0, (wrb) a3  <-- 0x80003c14
                                                #; (acc) a1  <-- 0x00d605b3
      0x800021d8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003c14, (wrb) a1  <-- 0x80003c14
      0x800021dc lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 2
      0x800021e0 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x800021e4 sw      a5, 0(a1)              #; a1  = 0x80003c14, 3 ~~> Word[0x80003c14]
      0x800021e8 add     a4, a1, a4             #; a1  = 0x80003c14, a4  = 2, (wrb) a4  <-- 0x80003c16
      0x800021ec sb      a0, 72(a4)             #; a4  = 0x80003c16, 114 ~~> Byte[0x80003c5e]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021f0 lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 3
      0x800021f4 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x800021f8 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x800021fc addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80002200 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80002204 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80002208 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002268
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80002268 ret                            #; ra  = 0x80001678, goto 0x80001678
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80001678 addi    s0, s0, 1              #; s0  = 0x800038a7, (wrb) s0  <-- 0x800038a8
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x8000167c addi    s10, s10, 1            #; s10 = 0x800038a9, (wrb) s10 <-- 0x800038aa
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001680 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80001684 lbu     a0, 0(s0)              #; s0  = 0x800038a8, a0  <~~ Byte[0x800038a8]
                                                #; (lsu) a0  <-- 111
      0x80001688 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80001660
      0x80001660 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80001664 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80001668 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
      0x8000166c mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80001670 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001674 jalr    s2                     #; s2  = 0x800021c0, (wrb) ra  <-- 0x80001678, goto 0x800021c0
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800021c0 beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021cc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800021d0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041d0
      0x800021d4 addi    a3, a3, -1468          #; a3  = 0x800041d0, (wrb) a3  <-- 0x80003c14
                                                #; (acc) a1  <-- 0x00d605b3
      0x800021d8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003c14, (wrb) a1  <-- 0x80003c14
      0x800021dc lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 3
      0x800021e0 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x800021e4 sw      a5, 0(a1)              #; a1  = 0x80003c14, 4 ~~> Word[0x80003c14]
      0x800021e8 add     a4, a1, a4             #; a1  = 0x80003c14, a4  = 3, (wrb) a4  <-- 0x80003c17
      0x800021ec sb      a0, 72(a4)             #; a4  = 0x80003c17, 111 ~~> Byte[0x80003c5f]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021f0 lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 4
      0x800021f4 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x800021f8 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x800021fc addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x80002200 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x80002204 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80002208 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002268
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80002268 ret                            #; ra  = 0x80001678, goto 0x80001678
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80001678 addi    s0, s0, 1              #; s0  = 0x800038a8, (wrb) s0  <-- 0x800038a9
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x8000167c addi    s10, s10, 1            #; s10 = 0x800038aa, (wrb) s10 <-- 0x800038ab
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001680 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80001684 lbu     a0, 0(s0)              #; s0  = 0x800038a9, a0  <~~ Byte[0x800038a9]
                                                #; (lsu) a0  <-- 114
      0x80001688 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80001660
      0x80001660 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80001664 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80001668 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
      0x8000166c mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80001670 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001674 jalr    s2                     #; s2  = 0x800021c0, (wrb) ra  <-- 0x80001678, goto 0x800021c0
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800021c0 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021cc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800021d0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041d0
      0x800021d4 addi    a3, a3, -1468          #; a3  = 0x800041d0, (wrb) a3  <-- 0x80003c14
                                                #; (acc) a1  <-- 0x00d605b3
      0x800021d8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003c14, (wrb) a1  <-- 0x80003c14
      0x800021dc lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 4
      0x800021e0 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x800021e4 sw      a5, 0(a1)              #; a1  = 0x80003c14, 5 ~~> Word[0x80003c14]
      0x800021e8 add     a4, a1, a4             #; a1  = 0x80003c14, a4  = 4, (wrb) a4  <-- 0x80003c18
      0x800021ec sb      a0, 72(a4)             #; a4  = 0x80003c18, 114 ~~> Byte[0x80003c60]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021f0 lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 5
      0x800021f4 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x800021f8 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x800021fc addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80002200 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80002204 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80002208 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002268
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80002268 ret                            #; ra  = 0x80001678, goto 0x80001678
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80001678 addi    s0, s0, 1              #; s0  = 0x800038a9, (wrb) s0  <-- 0x800038aa
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x8000167c addi    s10, s10, 1            #; s10 = 0x800038ab, (wrb) s10 <-- 0x800038ac
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001680 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80001684 lbu     a0, 0(s0)              #; s0  = 0x800038aa, a0  <~~ Byte[0x800038aa]
                                                #; (lsu) a0  <-- 32
      0x80001688 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80001660
      0x80001660 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80001664 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80001668 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
      0x8000166c mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80001670 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001674 jalr    s2                     #; s2  = 0x800021c0, (wrb) ra  <-- 0x80001678, goto 0x800021c0
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800021c0 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021cc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800021d0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041d0
      0x800021d4 addi    a3, a3, -1468          #; a3  = 0x800041d0, (wrb) a3  <-- 0x80003c14
                                                #; (acc) a1  <-- 0x00d605b3
      0x800021d8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003c14, (wrb) a1  <-- 0x80003c14
      0x800021dc lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 5
      0x800021e0 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x800021e4 sw      a5, 0(a1)              #; a1  = 0x80003c14, 6 ~~> Word[0x80003c14]
      0x800021e8 add     a4, a1, a4             #; a1  = 0x80003c14, a4  = 5, (wrb) a4  <-- 0x80003c19
      0x800021ec sb      a0, 72(a4)             #; a4  = 0x80003c19, 32 ~~> Byte[0x80003c61]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021f0 lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 6
      0x800021f4 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x800021f8 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x800021fc addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80002200 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80002204 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80002208 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002268
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80002268 ret                            #; ra  = 0x80001678, goto 0x80001678
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80001678 addi    s0, s0, 1              #; s0  = 0x800038aa, (wrb) s0  <-- 0x800038ab
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x8000167c addi    s10, s10, 1            #; s10 = 0x800038ac, (wrb) s10 <-- 0x800038ad
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001680 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80001684 lbu     a0, 0(s0)              #; s0  = 0x800038ab, a0  <~~ Byte[0x800038ab]
                                                #; (lsu) a0  <-- 61
      0x80001688 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80001660
      0x80001660 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80001664 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80001668 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
      0x8000166c mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80001670 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001674 jalr    s2                     #; s2  = 0x800021c0, (wrb) ra  <-- 0x80001678, goto 0x800021c0
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800021c0 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021cc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800021d0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041d0
      0x800021d4 addi    a3, a3, -1468          #; a3  = 0x800041d0, (wrb) a3  <-- 0x80003c14
                                                #; (acc) a1  <-- 0x00d605b3
      0x800021d8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003c14, (wrb) a1  <-- 0x80003c14
      0x800021dc lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 6
      0x800021e0 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x800021e4 sw      a5, 0(a1)              #; a1  = 0x80003c14, 7 ~~> Word[0x80003c14]
      0x800021e8 add     a4, a1, a4             #; a1  = 0x80003c14, a4  = 6, (wrb) a4  <-- 0x80003c1a
      0x800021ec sb      a0, 72(a4)             #; a4  = 0x80003c1a, 61 ~~> Byte[0x80003c62]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021f0 lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 7
      0x800021f4 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x800021f8 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x800021fc addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x80002200 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x80002204 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80002208 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002268
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80002268 ret                            #; ra  = 0x80001678, goto 0x80001678
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80001678 addi    s0, s0, 1              #; s0  = 0x800038ab, (wrb) s0  <-- 0x800038ac
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x8000167c addi    s10, s10, 1            #; s10 = 0x800038ad, (wrb) s10 <-- 0x800038ae
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001680 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80001684 lbu     a0, 0(s0)              #; s0  = 0x800038ac, a0  <~~ Byte[0x800038ac]
                                                #; (lsu) a0  <-- 32
      0x80001688 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80001660
      0x80001660 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80001664 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80001668 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
      0x8000166c mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80001670 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001674 jalr    s2                     #; s2  = 0x800021c0, (wrb) ra  <-- 0x80001678, goto 0x800021c0
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800021c0 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021cc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800021d0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041d0
      0x800021d4 addi    a3, a3, -1468          #; a3  = 0x800041d0, (wrb) a3  <-- 0x80003c14
                                                #; (acc) a1  <-- 0x00d605b3
      0x800021d8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003c14, (wrb) a1  <-- 0x80003c14
      0x800021dc lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 7
      0x800021e0 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x800021e4 sw      a5, 0(a1)              #; a1  = 0x80003c14, 8 ~~> Word[0x80003c14]
      0x800021e8 add     a4, a1, a4             #; a1  = 0x80003c14, a4  = 7, (wrb) a4  <-- 0x80003c1b
      0x800021ec sb      a0, 72(a4)             #; a4  = 0x80003c1b, 32 ~~> Byte[0x80003c63]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021f0 lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 8
      0x800021f4 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x800021f8 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x800021fc addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80002200 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80002204 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80002208 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002268
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80002268 ret                            #; ra  = 0x80001678, goto 0x80001678
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80001678 addi    s0, s0, 1              #; s0  = 0x800038ac, (wrb) s0  <-- 0x800038ad
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x8000167c addi    s10, s10, 1            #; s10 = 0x800038ae, (wrb) s10 <-- 0x800038af
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001680 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80001684 lbu     a0, 0(s0)              #; s0  = 0x800038ad, a0  <~~ Byte[0x800038ad]
                                                #; (lsu) a0  <-- 37
      0x80001688 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80001660
      0x80001660 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80001690
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80001690 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001694 j       pc + 0x10              #; goto 0x800016a4
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x800016a4 lbu     a0, -1(s10)            #; s10 = 0x800038af, a0  <~~ Byte[0x800038ae]
                                                #; (lsu) a0  <-- 102
      0x800016a8 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x800016ac bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x800016e4
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x800016e4 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x800016e8 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x800016ec addi    a1, s10, -1            #; s10 = 0x800038af, (wrb) a1  <-- 0x800038ae
      0x800016f0 li      a3, 9                  #; (wrb) a3  <-- 9
      0x800016f4 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80001770
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80001770 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80001774 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x800017c4
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800017c4 li      s6, 0                  #; (wrb) s6  <-- 0
      0x800017c8 mv      s10, a1                #; a1  = 0x800038ae, (wrb) s10 <-- 0x800038ae
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x800017cc beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800017d0 li      s7, 0                  #; (wrb) s7  <-- 0
      0x800017d4 j       pc + 0xc               #; goto 0x800017e0
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x800017e0 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x800017e4 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x800017e8 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x800017ec or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x800017f0 li      a2, 9                  #; (wrb) a2  <-- 9
      0x800017f4 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80001858
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80001858 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x8000185c li      a2, 83                 #; (wrb) a2  <-- 83
      0x80001860 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001864 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80001868 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80003868
      0x8000186c addi    a2, a2, 188            #; a2  = 0x80003868, (wrb) a2  <-- 0x80003924
      0x80001870 add     a1, a1, a2             #; a1  = 260, a2  = 0x80003924, (wrb) a1  <-- 0x80003a28
      0x80001874 lw      a2, 0(a1)              #; a1  = 0x80003a28, a2  <~~ Word[0x80003a28]
      0x80001878 li      a1, 8                  #; (wrb) a1  <-- 8
      0x8000187c li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x800018b0
      0x80001880 jr      a2                     #; a2  = 0x800018b0, goto 0x800018b0
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x800018b0 li      a1, 70                 #; (wrb) a1  <-- 70
      0x800018b4 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x800018bc
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x800018bc addi    a0, s3, 7              #; s3  = 0x0011fc34, (wrb) a0  <-- 0x0011fc3b
      0x800018c0 andi    a0, a0, -8             #; a0  = 0x0011fc3b, (wrb) a0  <-- 0x0011fc38
      0x800018c8 addi    s3, a0, 8              #; a0  = 0x0011fc38, (wrb) s3  <-- 0x0011fc40
      0x800018cc mv      a0, s2                 #; s2  = 0x800021c0, (wrb) a0  <-- 0x800021c0
      0x800018c4 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011fc38]
                                                #; (f:lsu) fa0  <-- 0.0
      0x800018d0 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
      0x800018d4 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x800018d8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800018dc mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x800018e0 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x800018e4 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x800018e8 auipc   ra, 0x1                #; (wrb) ra  <-- 0x800028e8
      0x800018ec jalr    ra, ra, -1656          #; ra  = 0x800028e8, (wrb) ra  <-- 0x800018f0, goto 0x80002270
; _ftoa (printf.c:340)
      0x80002270 addi    sp, sp, -112           #; sp  = 0x0011fbb0, (wrb) sp  <-- 0x0011fb40
      0x80002274 sw      ra, 108(sp)            #; sp  = 0x0011fb40, 0x800018f0 ~~> Word[0x0011fbac]
      0x80002278 sw      s0, 104(sp)            #; sp  = 0x0011fb40, 0 ~~> Word[0x0011fba8]
      0x8000227c sw      s1, 100(sp)            #; sp  = 0x0011fb40, 8 ~~> Word[0x0011fba4]
      0x80002280 sw      s2, 96(sp)             #; sp  = 0x0011fb40, 0x800021c0 ~~> Word[0x0011fba0]
      0x80002284 sw      s3, 92(sp)             #; sp  = 0x0011fb40, 0x0011fc40 ~~> Word[0x0011fb9c]
      0x80002288 sw      s4, 88(sp)             #; sp  = 0x0011fb40, 0x0011fc27 ~~> Word[0x0011fb98]
      0x8000228c sw      s5, 84(sp)             #; sp  = 0x0011fb40, -1 ~~> Word[0x0011fb94]
      0x80002290 sw      s6, 80(sp)             #; sp  = 0x0011fb40, 0 ~~> Word[0x0011fb90]
      0x80002294 sw      s7, 76(sp)             #; sp  = 0x0011fb40, 0 ~~> Word[0x0011fb8c]
      0x80002298 sw      s8, 72(sp)             #; sp  = 0x0011fb40, 16 ~~> Word[0x0011fb88]
      0x8000229c sw      s9, 68(sp)             #; sp  = 0x0011fb40, 8 ~~> Word[0x0011fb84]
      0x800022a0 sw      s10, 64(sp)            #; sp  = 0x0011fb40, 0x800038ae ~~> Word[0x0011fb80]
      0x800022a4 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fb78]
      0x800022a8 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fb70]
      0x800022ac fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fb68]
      0x800022b0 auipc   s1, 0x2                #; (wrb) s1  <-- 0x800042b0
      0x800022b4 addi    s1, s1, -1864          #; s1  = 0x800042b0, (wrb) s1  <-- 0x80003b68
      0x800022b8 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003b68]
; _ftoa (printf.c:351)
      0x800022c0 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
; _ftoa (printf.c:0)
      0x800022c4 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x800022c8 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x800022bc fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
      0x800022cc mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x800022d0 mv      s6, a1                 #; a1  = 0x0011fc27, (wrb) s6  <-- 0x0011fc27
      0x800022d4 mv      s7, a0                 #; a0  = 0x800021c0, (wrb) s7  <-- 0x800021c0
; _ftoa (printf.c:351)
      0x800022d8 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x800023c8
; _ftoa (printf.c:0)
      0x800023cc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800033cc
      0x800023c8 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x800023d0 addi    a0, a0, 1956           #; a0  = 0x800033cc, (wrb) a0  <-- 0x80003b70
      0x800023d4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003b70]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x800023d8 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x800023dc bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800023f8
; _ftoa (printf.c:0)
      0x800023f8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800033f8
      0x800023fc addi    a0, a0, 1920           #; a0  = 0x800033f8, (wrb) a0  <-- 0x80003b78
      0x80002404 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80003404
      0x80002408 addi    a0, a0, 1916           #; a0  = 0x80003404, (wrb) a0  <-- 0x80003b80
      0x80002400 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003b78]
      0x8000240c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003b80]
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
; _ftoa (printf.c:358)
      0x80002410 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
                                                #; (acc) a0  <-- 0x00b57533
      0x80002414 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
                                                #; (acc) a0  <-- 0x00b57533
      0x80002418 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x8000241c bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80002518
; _ftoa (printf.c:374)
      0x80002518 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x8000251c li      s8, 6                  #; (wrb) s8  <-- 6
      0x80002520 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80002528
; _ftoa (printf.c:0)
      0x80002528 li      a0, 10                 #; (wrb) a0  <-- 10
      0x8000252c fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs2  <-- 0.0
; _ftoa (printf.c:378)
      0x80002530 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80002568
; _ftoa (printf.c:0)
      0x80002568 li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x8000256c slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x80002570 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003570
      0x80002574 addi    a1, a1, 1288           #; a1  = 0x80003570, (wrb) a1  <-- 0x80003a78
      0x80002578 add     a0, a0, a1             #; a0  = 48, a1  = 0x80003a78, (wrb) a0  <-- 0x80003aa8
      0x8000257c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003aa8]
; _ftoa (printf.c:383)
      0x80002580 fcvt.w.d s1, fs2               #; fs2  = 0.0
                                                #; (f:lsu) ft1  <-- 1000000.0000000
; _ftoa (printf.c:384)
      0x80002584 fcvt.d.w ft0, s1               #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80002588 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x8000258c fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
; _ftoa (printf.c:0)
      0x80002590 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80003590
      0x80002594 addi    a0, a0, 1528           #; a0  = 0x80003590, (wrb) a0  <-- 0x80003b88
                                                #; (f:fpu) ft2  <-- 0.0
      0x80002598 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003b88]
; _ftoa (printf.c:385)
      0x8000259c fcvt.wu.d a0, ft2              #; ft2  = 0.0
; _ftoa (printf.c:386)
      0x800025a0 fcvt.d.wu ft3, a0              #; ac1  = 0, (f:lsu) ft0  <-- 0.5
                                                #; (f:fpu) ft3  <-- 0.0
      0x800025a4 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:388)
      0x800025a8 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x800025ac bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x800025cc
; _ftoa (printf.c:396)
      0x800025cc flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x800025d0 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x800025e4
; _ftoa (printf.c:403)
      0x800025e8 beqz    s8, pc + 216           #; s8  = 6, not taken
      0x800025e4 fcvt.d.w fs1, zero             #; ac1  = 0
; _ftoa (printf.c:0)
      0x800025ec li      a2, 0                  #; (wrb) a2  <-- 0
                                                #; (f:fpu) fs1  <-- 0.0
      0x800025f0 addi    a1, sp, 8              #; sp  = 0x0011fb40, (wrb) a1  <-- 0x0011fb48
; _ftoa (printf.c:414)
      0x800025f4 add     t1, a1, s0             #; a1  = 0x0011fb48, s0  = 0, (wrb) t1  <-- 0x0011fb48
      0x800025f8 li      t0, 32                 #; (wrb) t0  <-- 32
      0x800025fc sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x80002600 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80002604 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80002608 li      a6, 10                 #; (wrb) a6  <-- 10
      0x8000260c li      a7, 9                  #; (wrb) a7  <-- 9
      0x80002610 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80002614 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x80002618 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x8000261c srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80002620 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80002624 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80002628 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x8000262c add     a5, t1, a2             #; t1  = 0x0011fb48, a2  = 0, (wrb) a5  <-- 0x0011fb48
      0x80002630 sb      a3, 0(a5)              #; a5  = 0x0011fb48, 48 ~~> Byte[0x0011fb48]
; _ftoa (printf.c:417)
      0x80002634 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80002638 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x8000263c add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x80002640 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80002644 li      a3, 30                 #; (wrb) a3  <-- 30
      0x80002648 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x8000264c xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x80002650 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x80002654 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x80002658 bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x8000265c addi    a0, sp, 8              #; sp  = 0x0011fb40, (wrb) a0  <-- 0x0011fb48
; _ftoa (printf.c:422)
      0x80002660 add     a0, a0, s0             #; a0  = 0x0011fb48, s0  = 0, (wrb) a0  <-- 0x0011fb48
      0x80002664 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x80002668 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x8000266c add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x80002670 li      a1, 31                 #; (wrb) a1  <-- 31
      0x80002674 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x80002678 add     a0, a0, a2             #; a0  = 0x0011fb48, a2  = 1, (wrb) a0  <-- 0x0011fb49
      0x8000267c mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x80002680 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80002688
      0x80002688 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x8000268c li      a1, 48                 #; (wrb) a1  <-- 48
      0x80002690 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000690
      0x80002694 jalr    ra, ra, -312           #; ra  = 0x80000690, (wrb) ra  <-- 0x80002698, goto 0x80000558
; memset (memset.S:30)
      0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
; memset (memset.S:31)
      0x8000055c mv      a4, a0                 #; a0  = 0x0011fb49, (wrb) a4  <-- 0x0011fb49
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
      0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fb49, 48 ~~> Byte[0x0011fb4d]
; memset (memset.S:80)
      0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fb49, 48 ~~> Byte[0x0011fb4c]
; memset (memset.S:81)
      0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fb49, 48 ~~> Byte[0x0011fb4b]
; memset (memset.S:82)
      0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fb49, 48 ~~> Byte[0x0011fb4a]
; memset (memset.S:83)
      0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fb49, 48 ~~> Byte[0x0011fb49]
; memset (memset.S:85)
      0x800005ec ret                            #; ra  = 0x80002698, goto 0x80002698
; _ftoa (printf.c:0)
      0x80002698 li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x8000269c add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x800026a0 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x800026a4 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x800026a8 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x800026ac and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x800026b0 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x800026b4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x8000269c
      0x8000269c add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x800026a0 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x800026a4 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x800026a8 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x800026ac and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x800026b0 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x800026b4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x8000269c
      0x8000269c add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x800026a0 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x800026a4 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x800026a8 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x800026ac and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x800026b0 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x800026b4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x8000269c
      0x8000269c add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x800026a0 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x800026a4 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x800026a8 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x800026ac and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x800026b0 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x800026b4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x8000269c
      0x8000269c add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x800026a0 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x800026a4 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x800026a8 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x800026ac and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x800026b0 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x800026b4 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x800026b8 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x800026bc j       pc + 0x28              #; goto 0x800026e4
      0x800026e4 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x800026e8 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x800026ec addi    a1, sp, 8              #; sp  = 0x0011fb40, (wrb) a1  <-- 0x0011fb48
; _ftoa (printf.c:427)
      0x800026f0 add     a0, a1, a0             #; a1  = 0x0011fb48, a0  = 6, (wrb) a0  <-- 0x0011fb4e
      0x800026f4 li      a1, 46                 #; (wrb) a1  <-- 46
      0x800026f8 sb      a1, 0(a0)              #; a0  = 0x0011fb4e, 46 ~~> Byte[0x0011fb4e]
      0x800026fc j       pc + 0x8               #; goto 0x80002704
; _ftoa (printf.c:0)
      0x80002704 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80002708 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x8000270c bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80002710 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80002718 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80002714 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
      0x8000271c addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80002720 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80002724 addi    a3, sp, 8              #; sp  = 0x0011fb40, (wrb) a3  <-- 0x0011fb48
      0x80002728 li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x8000272c beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80002730 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80002734 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80002738 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x8000273c add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80002740 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80002744 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80002748 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x8000274c addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80002750 add     s0, a3, s0             #; a3  = 0x0011fb48, s0  = 7, (wrb) s0  <-- 0x0011fb4f
; _ftoa (printf.c:434)
      0x80002754 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80002758 sb      a5, 0(s0)              #; s0  = 0x0011fb4f, 48 ~~> Byte[0x0011fb4f]
; _ftoa (printf.c:0)
      0x8000275c mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80002760 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80002764 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80002768 j       pc + 0x8               #; goto 0x80002770
; _ftoa (printf.c:440)
      0x80002770 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80002774 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80002778 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x800027e4
; _ftoa (printf.c:0)
      0x800027e4 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x800027e8 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x800027ec beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80002804
; _ftoa (printf.c:453)
      0x80002804 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80002808 bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x8000280c andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80002810 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x8000283c
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x8000283c snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80002840 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80002844 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80002848 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x8000284c andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80002850 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80002854 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80002880
; _ftoa (printf.c:0)
      0x80002880 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80002884 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x80002888 addi    s9, sp, 7              #; sp  = 0x0011fb40, (wrb) s9  <-- 0x0011fb47
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x8000288c add     a0, s9, s8             #; s9  = 0x0011fb47, s8  = 8, (wrb) a0  <-- 0x0011fb4f
      0x80002890 lbu     a0, 0(a0)              #; a0  = 0x0011fb4f, a0  <~~ Byte[0x0011fb4f]
      0x80002894 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x80002898 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
      0x8000289c mv      a1, s6                 #; s6  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
                                                #; (lsu) a0  <-- 48
      0x800028a0 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x800028a4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800028a8 jalr    s7                     #; s7  = 0x800021c0, (wrb) ra  <-- 0x800028ac, goto 0x800021c0
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800021c0 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021cc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800021d0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041d0
      0x800021d4 addi    a3, a3, -1468          #; a3  = 0x800041d0, (wrb) a3  <-- 0x80003c14
                                                #; (acc) a1  <-- 0x00d605b3
      0x800021d8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003c14, (wrb) a1  <-- 0x80003c14
      0x800021dc lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 8
      0x800021e0 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x800021e4 sw      a5, 0(a1)              #; a1  = 0x80003c14, 9 ~~> Word[0x80003c14]
      0x800021e8 add     a4, a1, a4             #; a1  = 0x80003c14, a4  = 8, (wrb) a4  <-- 0x80003c1c
      0x800021ec sb      a0, 72(a4)             #; a4  = 0x80003c1c, 48 ~~> Byte[0x80003c64]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021f0 lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 9
      0x800021f4 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x800021f8 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x800021fc addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80002200 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80002204 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80002208 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002268
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80002268 ret                            #; ra  = 0x800028ac, goto 0x800028ac
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800028ac mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x800028b0 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800028b4 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x8000288c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x8000288c add     a0, s9, s8             #; s9  = 0x0011fb47, s8  = 7, (wrb) a0  <-- 0x0011fb4e
      0x80002890 lbu     a0, 0(a0)              #; a0  = 0x0011fb4e, a0  <~~ Byte[0x0011fb4e]
      0x80002894 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80002898 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x8000289c mv      a1, s6                 #; s6  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
      0x800028a0 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x800028a4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800028a8 jalr    s7                     #; s7  = 0x800021c0, (wrb) ra  <-- 0x800028ac, goto 0x800021c0
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800021c0 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021cc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800021d0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041d0
      0x800021d4 addi    a3, a3, -1468          #; a3  = 0x800041d0, (wrb) a3  <-- 0x80003c14
                                                #; (acc) a1  <-- 0x00d605b3
      0x800021d8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003c14, (wrb) a1  <-- 0x80003c14
      0x800021dc lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 9
      0x800021e0 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x800021e4 sw      a5, 0(a1)              #; a1  = 0x80003c14, 10 ~~> Word[0x80003c14]
      0x800021e8 add     a4, a1, a4             #; a1  = 0x80003c14, a4  = 9, (wrb) a4  <-- 0x80003c1d
      0x800021ec sb      a0, 72(a4)             #; a4  = 0x80003c1d, 46 ~~> Byte[0x80003c65]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021f0 lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 10
      0x800021f4 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x800021f8 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x800021fc addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x80002200 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x80002204 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80002208 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002268
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80002268 ret                            #; ra  = 0x800028ac, goto 0x800028ac
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800028ac mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x800028b0 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800028b4 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x8000288c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x8000288c add     a0, s9, s8             #; s9  = 0x0011fb47, s8  = 6, (wrb) a0  <-- 0x0011fb4d
      0x80002890 lbu     a0, 0(a0)              #; a0  = 0x0011fb4d, a0  <~~ Byte[0x0011fb4d]
      0x80002894 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80002898 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x8000289c mv      a1, s6                 #; s6  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
      0x800028a0 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x800028a4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800028a8 jalr    s7                     #; s7  = 0x800021c0, (wrb) ra  <-- 0x800028ac, goto 0x800021c0
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800021c0 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021cc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800021d0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041d0
      0x800021d4 addi    a3, a3, -1468          #; a3  = 0x800041d0, (wrb) a3  <-- 0x80003c14
                                                #; (acc) a1  <-- 0x00d605b3
      0x800021d8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003c14, (wrb) a1  <-- 0x80003c14
      0x800021dc lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 10
      0x800021e0 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x800021e4 sw      a5, 0(a1)              #; a1  = 0x80003c14, 11 ~~> Word[0x80003c14]
      0x800021e8 add     a4, a1, a4             #; a1  = 0x80003c14, a4  = 10, (wrb) a4  <-- 0x80003c1e
      0x800021ec sb      a0, 72(a4)             #; a4  = 0x80003c1e, 48 ~~> Byte[0x80003c66]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021f0 lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 11
      0x800021f4 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x800021f8 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x800021fc addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80002200 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80002204 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80002208 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002268
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80002268 ret                            #; ra  = 0x800028ac, goto 0x800028ac
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800028ac mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x800028b0 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800028b4 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x8000288c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x8000288c add     a0, s9, s8             #; s9  = 0x0011fb47, s8  = 5, (wrb) a0  <-- 0x0011fb4c
      0x80002890 lbu     a0, 0(a0)              #; a0  = 0x0011fb4c, a0  <~~ Byte[0x0011fb4c]
      0x80002894 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80002898 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x8000289c mv      a1, s6                 #; s6  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
      0x800028a0 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x800028a4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800028a8 jalr    s7                     #; s7  = 0x800021c0, (wrb) ra  <-- 0x800028ac, goto 0x800021c0
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800021c0 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021cc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800021d0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041d0
      0x800021d4 addi    a3, a3, -1468          #; a3  = 0x800041d0, (wrb) a3  <-- 0x80003c14
                                                #; (acc) a1  <-- 0x00d605b3
      0x800021d8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003c14, (wrb) a1  <-- 0x80003c14
      0x800021dc lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 11
      0x800021e0 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x800021e4 sw      a5, 0(a1)              #; a1  = 0x80003c14, 12 ~~> Word[0x80003c14]
      0x800021e8 add     a4, a1, a4             #; a1  = 0x80003c14, a4  = 11, (wrb) a4  <-- 0x80003c1f
      0x800021ec sb      a0, 72(a4)             #; a4  = 0x80003c1f, 48 ~~> Byte[0x80003c67]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021f0 lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 12
      0x800021f4 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x800021f8 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x800021fc addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80002200 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80002204 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80002208 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002268
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80002268 ret                            #; ra  = 0x800028ac, goto 0x800028ac
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800028ac mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x800028b0 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800028b4 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x8000288c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x8000288c add     a0, s9, s8             #; s9  = 0x0011fb47, s8  = 4, (wrb) a0  <-- 0x0011fb4b
      0x80002890 lbu     a0, 0(a0)              #; a0  = 0x0011fb4b, a0  <~~ Byte[0x0011fb4b]
      0x80002894 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80002898 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x8000289c mv      a1, s6                 #; s6  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
      0x800028a0 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x800028a4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800028a8 jalr    s7                     #; s7  = 0x800021c0, (wrb) ra  <-- 0x800028ac, goto 0x800021c0
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800021c0 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021cc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800021d0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041d0
      0x800021d4 addi    a3, a3, -1468          #; a3  = 0x800041d0, (wrb) a3  <-- 0x80003c14
                                                #; (acc) a1  <-- 0x00d605b3
      0x800021d8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003c14, (wrb) a1  <-- 0x80003c14
      0x800021dc lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 12
      0x800021e0 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x800021e4 sw      a5, 0(a1)              #; a1  = 0x80003c14, 13 ~~> Word[0x80003c14]
      0x800021e8 add     a4, a1, a4             #; a1  = 0x80003c14, a4  = 12, (wrb) a4  <-- 0x80003c20
      0x800021ec sb      a0, 72(a4)             #; a4  = 0x80003c20, 48 ~~> Byte[0x80003c68]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021f0 lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 13
      0x800021f4 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x800021f8 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x800021fc addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80002200 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80002204 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80002208 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002268
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80002268 ret                            #; ra  = 0x800028ac, goto 0x800028ac
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800028ac mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x800028b0 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800028b4 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x8000288c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x8000288c add     a0, s9, s8             #; s9  = 0x0011fb47, s8  = 3, (wrb) a0  <-- 0x0011fb4a
      0x80002890 lbu     a0, 0(a0)              #; a0  = 0x0011fb4a, a0  <~~ Byte[0x0011fb4a]
      0x80002894 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80002898 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x8000289c mv      a1, s6                 #; s6  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
      0x800028a0 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x800028a4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800028a8 jalr    s7                     #; s7  = 0x800021c0, (wrb) ra  <-- 0x800028ac, goto 0x800021c0
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800021c0 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021cc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800021d0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041d0
      0x800021d4 addi    a3, a3, -1468          #; a3  = 0x800041d0, (wrb) a3  <-- 0x80003c14
                                                #; (acc) a1  <-- 0x00d605b3
      0x800021d8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003c14, (wrb) a1  <-- 0x80003c14
      0x800021dc lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 13
      0x800021e0 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x800021e4 sw      a5, 0(a1)              #; a1  = 0x80003c14, 14 ~~> Word[0x80003c14]
      0x800021e8 add     a4, a1, a4             #; a1  = 0x80003c14, a4  = 13, (wrb) a4  <-- 0x80003c21
      0x800021ec sb      a0, 72(a4)             #; a4  = 0x80003c21, 48 ~~> Byte[0x80003c69]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021f0 lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 14
      0x800021f4 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x800021f8 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x800021fc addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80002200 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80002204 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80002208 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002268
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80002268 ret                            #; ra  = 0x800028ac, goto 0x800028ac
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800028ac mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x800028b0 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800028b4 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x8000288c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x8000288c add     a0, s9, s8             #; s9  = 0x0011fb47, s8  = 2, (wrb) a0  <-- 0x0011fb49
      0x80002890 lbu     a0, 0(a0)              #; a0  = 0x0011fb49, a0  <~~ Byte[0x0011fb49]
      0x80002894 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80002898 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x8000289c mv      a1, s6                 #; s6  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
      0x800028a0 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x800028a4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800028a8 jalr    s7                     #; s7  = 0x800021c0, (wrb) ra  <-- 0x800028ac, goto 0x800021c0
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800021c0 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021cc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800021d0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041d0
      0x800021d4 addi    a3, a3, -1468          #; a3  = 0x800041d0, (wrb) a3  <-- 0x80003c14
                                                #; (acc) a1  <-- 0x00d605b3
      0x800021d8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003c14, (wrb) a1  <-- 0x80003c14
      0x800021dc lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 14
      0x800021e0 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x800021e4 sw      a5, 0(a1)              #; a1  = 0x80003c14, 15 ~~> Word[0x80003c14]
      0x800021e8 add     a4, a1, a4             #; a1  = 0x80003c14, a4  = 14, (wrb) a4  <-- 0x80003c22
      0x800021ec sb      a0, 72(a4)             #; a4  = 0x80003c22, 48 ~~> Byte[0x80003c6a]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021f0 lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 15
      0x800021f4 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x800021f8 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x800021fc addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80002200 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80002204 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80002208 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002268
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80002268 ret                            #; ra  = 0x800028ac, goto 0x800028ac
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800028ac mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x800028b0 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800028b4 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x8000288c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x8000288c add     a0, s9, s8             #; s9  = 0x0011fb47, s8  = 1, (wrb) a0  <-- 0x0011fb48
      0x80002890 lbu     a0, 0(a0)              #; a0  = 0x0011fb48, a0  <~~ Byte[0x0011fb48]
      0x80002894 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80002898 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x8000289c mv      a1, s6                 #; s6  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
      0x800028a0 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x800028a4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800028a8 jalr    s7                     #; s7  = 0x800021c0, (wrb) ra  <-- 0x800028ac, goto 0x800021c0
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800021c0 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021cc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800021d0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041d0
      0x800021d4 addi    a3, a3, -1468          #; a3  = 0x800041d0, (wrb) a3  <-- 0x80003c14
                                                #; (acc) a1  <-- 0x00d605b3
      0x800021d8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003c14, (wrb) a1  <-- 0x80003c14
      0x800021dc lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 15
      0x800021e0 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x800021e4 sw      a5, 0(a1)              #; a1  = 0x80003c14, 16 ~~> Word[0x80003c14]
      0x800021e8 add     a4, a1, a4             #; a1  = 0x80003c14, a4  = 15, (wrb) a4  <-- 0x80003c23
      0x800021ec sb      a0, 72(a4)             #; a4  = 0x80003c23, 48 ~~> Byte[0x80003c6b]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021f0 lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 16
      0x800021f4 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x800021f8 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x800021fc addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80002200 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80002204 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80002208 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002268
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80002268 ret                            #; ra  = 0x800028ac, goto 0x800028ac
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800028ac mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x800028b0 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800028b4 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x800028b8 j       pc + 0x8               #; goto 0x800028c0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800028c0 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x800028c4 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x800028c8 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x800028cc xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x800028d0 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x800028d4 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80002904
; _ftoa (printf.c:0)
      0x80002904 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x80002908 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x8000290c fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fb68]
                                                #; (f:lsu) fs2  <-- 0.0
      0x80002918 lw      s10, 64(sp)            #; sp  = 0x0011fb40, s10 <~~ Word[0x0011fb80]
      0x80002910 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fb70]
      0x80002914 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fb78], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) s10 <-- 0x800038ae
      0x8000291c lw      s9, 68(sp)             #; sp  = 0x0011fb40, s9  <~~ Word[0x0011fb84]
                                                #; (lsu) s9  <-- 8
      0x80002920 lw      s8, 72(sp)             #; sp  = 0x0011fb40, s8  <~~ Word[0x0011fb88]
                                                #; (lsu) s8  <-- 16
      0x80002924 lw      s7, 76(sp)             #; sp  = 0x0011fb40, s7  <~~ Word[0x0011fb8c]
                                                #; (lsu) s7  <-- 0
      0x80002928 lw      s6, 80(sp)             #; sp  = 0x0011fb40, s6  <~~ Word[0x0011fb90]
                                                #; (lsu) s6  <-- 0
      0x8000292c lw      s5, 84(sp)             #; sp  = 0x0011fb40, s5  <~~ Word[0x0011fb94]
                                                #; (lsu) s5  <-- -1
      0x80002930 lw      s4, 88(sp)             #; sp  = 0x0011fb40, s4  <~~ Word[0x0011fb98]
                                                #; (lsu) s4  <-- 0x0011fc27
      0x80002934 lw      s3, 92(sp)             #; sp  = 0x0011fb40, s3  <~~ Word[0x0011fb9c]
                                                #; (lsu) s3  <-- 0x0011fc40
      0x80002938 lw      s2, 96(sp)             #; sp  = 0x0011fb40, s2  <~~ Word[0x0011fba0]
                                                #; (lsu) s2  <-- 0x800021c0
      0x8000293c lw      s1, 100(sp)            #; sp  = 0x0011fb40, s1  <~~ Word[0x0011fba4]
                                                #; (lsu) s1  <-- 8
      0x80002940 lw      s0, 104(sp)            #; sp  = 0x0011fb40, s0  <~~ Word[0x0011fba8]
                                                #; (lsu) s0  <-- 0
      0x80002944 lw      ra, 108(sp)            #; sp  = 0x0011fb40, ra  <~~ Word[0x0011fbac]
      0x80002948 addi    sp, sp, 112            #; sp  = 0x0011fb40, (wrb) sp  <-- 0x0011fbb0
                                                #; (lsu) ra  <-- 0x800018f0
      0x8000294c ret                            #; ra  = 0x800018f0, goto 0x800018f0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800018f0 j       pc + 0x7c0             #; goto 0x800020b0
      0x800020b0 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x800020b4 li      s6, 37                 #; (wrb) s6  <-- 37
      0x800020b8 li      s7, 46                 #; (wrb) s7  <-- 46
      0x800020bc addi    s0, s10, 1             #; s10 = 0x800038ae, (wrb) s0  <-- 0x800038af
      0x800020c0 j       pc - 0xa74             #; goto 0x8000164c
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x8000164c addi    s10, s0, 2             #; s0  = 0x800038af, (wrb) s10 <-- 0x800038b1
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001650 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x80001654 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80001658 lbu     a0, 0(s0)              #; s0  = 0x800038af, a0  <~~ Byte[0x800038af]
                                                #; (lsu) a0  <-- 10
      0x8000165c beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80001660 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80001664 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x80001668 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
      0x8000166c mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x80001670 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001674 jalr    s2                     #; s2  = 0x800021c0, (wrb) ra  <-- 0x80001678, goto 0x800021c0
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800021c0 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021c8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021cc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800021d0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041d0
      0x800021d4 addi    a3, a3, -1468          #; a3  = 0x800041d0, (wrb) a3  <-- 0x80003c14
                                                #; (acc) a1  <-- 0x00d605b3
      0x800021d8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003c14, (wrb) a1  <-- 0x80003c14
      0x800021dc lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 16
      0x800021e0 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x800021e4 sw      a5, 0(a1)              #; a1  = 0x80003c14, 17 ~~> Word[0x80003c14]
      0x800021e8 add     a4, a1, a4             #; a1  = 0x80003c14, a4  = 16, (wrb) a4  <-- 0x80003c24
      0x800021ec sb      a0, 72(a4)             #; a4  = 0x80003c24, 10 ~~> Byte[0x80003c6c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800021f0 lw      a4, 0(a1)              #; a1  = 0x80003c14, a4  <~~ Word[0x80003c14]
                                                #; (lsu) a4  <-- 17
      0x800021f4 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x800021f8 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x800021fc addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x80002200 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x80002204 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x80002208 bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000220c add     a0, a3, a2             #; a3  = 0x80003c14, a2  = 0, (wrb) a0  <-- 0x80003c14
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80002210 addi    a2, a0, 72             #; a0  = 0x80003c14, (wrb) a2  <-- 0x80003c5c
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80002214 sw      zero, 12(a0)           #; a0  = 0x80003c14, 0 ~~> Word[0x80003c20]
      0x80002218 li      a3, 64                 #; (wrb) a3  <-- 64
      0x8000221c sw      a3, 8(a0)              #; a0  = 0x80003c14, 64 ~~> Word[0x80003c1c]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80002220 sw      zero, 20(a0)           #; a0  = 0x80003c14, 0 ~~> Word[0x80003c28]
      0x80002224 li      a3, 1                  #; (wrb) a3  <-- 1
      0x80002228 sw      a3, 16(a0)             #; a0  = 0x80003c14, 1 ~~> Word[0x80003c24]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000222c sw      zero, 28(a0)           #; a0  = 0x80003c14, 0 ~~> Word[0x80003c30]
      0x80002230 sw      a2, 24(a0)             #; a0  = 0x80003c14, 0x80003c5c ~~> Word[0x80003c2c]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80002234 lw      a2, 0(a1)              #; a1  = 0x80003c14, a2  <~~ Word[0x80003c14]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80002238 addi    a3, a0, 8              #; a0  = 0x80003c14, (wrb) a3  <-- 0x80003c1c
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000223c sw      zero, 36(a0)           #; a0  = 0x80003c14, 0 ~~> Word[0x80003c38]
                                                #; (lsu) a2  <-- 17
      0x80002240 sw      a2, 32(a0)             #; a0  = 0x80003c14, 17 ~~> Word[0x80003c34]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80002244 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80004244
      0x80002248 addi    a0, a0, -1860          #; a0  = 0x80004244, (wrb) a0  <-- 0x80003b00
      0x8000224c sw      a3, 0(a0)              #; a0  = 0x80003b00, 0x80003c1c ~~> Word[0x80003b00]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80002250 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80004250
      0x80002254 addi    a0, a0, -1808          #; a0  = 0x80004250, (wrb) a0  <-- 0x80003b40
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80002258 lw      a2, 0(a0)              #; a0  = 0x80003b40, a2  <~~ Word[0x80003b40]
                                                #; (lsu) a2  <-- 0
      0x8000225c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80002258
      0x80002258 lw      a2, 0(a0)              #; a0  = 0x80003b40, a2  <~~ Word[0x80003b40]
                                                #; (lsu) a2  <-- 0
      0x8000225c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80002258
      0x80002258 lw      a2, 0(a0)              #; a0  = 0x80003b40, a2  <~~ Word[0x80003b40]
                                                #; (lsu) a2  <-- 0
      0x8000225c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80002258
      0x80002258 lw      a2, 0(a0)              #; a0  = 0x80003b40, a2  <~~ Word[0x80003b40]
                                                #; (lsu) a2  <-- 0
      0x8000225c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80002258
      0x80002258 lw      a2, 0(a0)              #; a0  = 0x80003b40, a2  <~~ Word[0x80003b40]
                                                #; (lsu) a2  <-- 0
      0x8000225c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80002258
      0x80002258 lw      a2, 0(a0)              #; a0  = 0x80003b40, a2  <~~ Word[0x80003b40]
                                                #; (lsu) a2  <-- 0
      0x8000225c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80002258
      0x80002258 lw      a2, 0(a0)              #; a0  = 0x80003b40, a2  <~~ Word[0x80003b40]
                                                #; (lsu) a2  <-- 0
      0x8000225c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80002258
      0x80002258 lw      a2, 0(a0)              #; a0  = 0x80003b40, a2  <~~ Word[0x80003b40]
                                                #; (lsu) a2  <-- 1
      0x8000225c beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80002260 sw      zero, 0(a0)            #; a0  = 0x80003b40, 0 ~~> Word[0x80003b40]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80002264 sw      zero, 0(a1)            #; a1  = 0x80003c14, 0 ~~> Word[0x80003c14]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80002268 ret                            #; ra  = 0x80001678, goto 0x80001678
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80001678 addi    s0, s0, 1              #; s0  = 0x800038af, (wrb) s0  <-- 0x800038b0
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x8000167c addi    s10, s10, 1            #; s10 = 0x800038b1, (wrb) s10 <-- 0x800038b2
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001680 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80001684 lbu     a0, 0(s0)              #; s0  = 0x800038b0, a0  <~~ Byte[0x800038b0]
                                                #; (lsu) a0  <-- 0
      0x80001688 bnez    a0, pc - 40            #; a0  = 0, not taken
      0x8000168c j       pc + 0xad8             #; goto 0x80002164
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x80002164 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x80002168 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80002170
      0x80002170 li      a0, 0                  #; (wrb) a0  <-- 0
      0x80002174 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
      0x80002178 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x8000217c jalr    s2                     #; s2  = 0x800021c0, (wrb) ra  <-- 0x80002180, goto 0x800021c0
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800021c0 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80002268
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80002268 ret                            #; ra  = 0x80002180, goto 0x80002180
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x80002180 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x80002184 lw      s11, 60(sp)            #; sp  = 0x0011fbb0, s11 <~~ Word[0x0011fbec]
                                                #; (lsu) s11 <-- 0
      0x80002188 lw      s10, 64(sp)            #; sp  = 0x0011fbb0, s10 <~~ Word[0x0011fbf0]
                                                #; (lsu) s10 <-- 0
      0x8000218c lw      s9, 68(sp)             #; sp  = 0x0011fbb0, s9  <~~ Word[0x0011fbf4]
                                                #; (lsu) s9  <-- 0
      0x80002190 lw      s8, 72(sp)             #; sp  = 0x0011fbb0, s8  <~~ Word[0x0011fbf8]
                                                #; (lsu) s8  <-- 0
      0x80002194 lw      s7, 76(sp)             #; sp  = 0x0011fbb0, s7  <~~ Word[0x0011fbfc]
                                                #; (lsu) s7  <-- 0
      0x80002198 lw      s6, 80(sp)             #; sp  = 0x0011fbb0, s6  <~~ Word[0x0011fc00]
                                                #; (lsu) s6  <-- 0
      0x8000219c lw      s5, 84(sp)             #; sp  = 0x0011fbb0, s5  <~~ Word[0x0011fc04]
                                                #; (lsu) s5  <-- 0
      0x800021a0 lw      s4, 88(sp)             #; sp  = 0x0011fbb0, s4  <~~ Word[0x0011fc08]
                                                #; (lsu) s4  <-- 0
      0x800021a4 lw      s3, 92(sp)             #; sp  = 0x0011fbb0, s3  <~~ Word[0x0011fc0c]
                                                #; (lsu) s3  <-- 0
      0x800021a8 lw      s2, 96(sp)             #; sp  = 0x0011fbb0, s2  <~~ Word[0x0011fc10]
                                                #; (lsu) s2  <-- 0
      0x800021ac lw      s1, 100(sp)            #; sp  = 0x0011fbb0, s1  <~~ Word[0x0011fc14]
                                                #; (lsu) s1  <-- 0
      0x800021b0 lw      s0, 104(sp)            #; sp  = 0x0011fbb0, s0  <~~ Word[0x0011fc18]
                                                #; (lsu) s0  <-- 0
      0x800021b4 lw      ra, 108(sp)            #; sp  = 0x0011fbb0, ra  <~~ Word[0x0011fc1c]
      0x800021b8 addi    sp, sp, 112            #; sp  = 0x0011fbb0, (wrb) sp  <-- 0x0011fc20
                                                #; (lsu) ra  <-- 0x800015bc
      0x800021bc ret                            #; ra  = 0x800015bc, goto 0x800015bc
; printf_ (printf.c:869)
      0x800015bc lw      ra, 12(sp)             #; sp  = 0x0011fc20, ra  <~~ Word[0x0011fc2c]
      0x800015c0 addi    sp, sp, 48             #; sp  = 0x0011fc20, (wrb) sp  <-- 0x0011fc50
                                                #; (lsu) ra  <-- 0x80001520
      0x800015c4 ret                            #; ra  = 0x80001520, goto 0x80001520
; main (test_access.c:0)
      0x80001520 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003520
      0x80001524 addi    a0, a0, 1600           #; a0  = 0x80003520, (wrb) a0  <-- 0x80003b60
      0x80001528 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003b60]
                                                #; (f:lsu) ft3  <-- 0.0001
; main (test_access.c:51)
      0x8000152c flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0
                                                #; (acc) s9  <-- 0x2b813c87
      0x80001530 fld     fs11, 680(sp)          #; fs11 <~~ Doub[0x0011fef8]
; main (test_access.c:52)
      0x80001534 fld     fs10, 688(sp)          #; fs10 <~~ Doub[0x0011ff00], (f:lsu) fs11 <-- 0.0
      0x80001538 fld     fs9, 696(sp)           #; fs9  <~~ Doub[0x0011ff08], (f:lsu) fs10 <-- 0.0
      0x8000153c fld     fs8, 704(sp)           #; fs8  <~~ Doub[0x0011ff10], (f:lsu) fs9  <-- 0.0
      0x80001540 fld     fs7, 712(sp)           #; fs7  <~~ Doub[0x0011ff18], (f:lsu) fs8  <-- 0.0
      0x80001544 fld     fs6, 720(sp)           #; fs6  <~~ Doub[0x0011ff20], (f:lsu) fs7  <-- 0.0
      0x80001548 fld     fs5, 728(sp)           #; fs5  <~~ Doub[0x0011ff28], (f:lsu) fs6  <-- 0.0
      0x8000154c fld     fs4, 736(sp)           #; fs4  <~~ Doub[0x0011ff30], (f:lsu) fs5  <-- 0.0
                                                #; (f:lsu) fs4  <-- 0.0
      0x80001550 fld     fs3, 744(sp)           #; fs3  <~~ Doub[0x0011ff38]
      0x80001554 fld     fs2, 752(sp)           #; fs2  <~~ Doub[0x0011ff40], (f:lsu) fs3  <-- 0.0
      0x80001560 lw      ra, 780(sp)            #; sp  = 0x0011fc50, ra  <~~ Word[0x0011ff5c]
      0x80001558 fld     fs1, 760(sp)           #; fs1  <~~ Doub[0x0011ff48], (f:lsu) fs2  <-- 0.0
      0x80001564 addi    sp, sp, 784            #; sp  = 0x0011fc50, (wrb) sp  <-- 0x0011ff60
      0x8000155c fld     fs0, 768(sp)           #; fs0  <~~ Doub[0x0011ff50], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) ra  <-- 0x80003620
      0x80001568 ret                            #; ra  = 0x80003620, goto 0x80003620
; ?? (start.S:184)
      0x80003620 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x80003624 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003624
      0x80003628 jalr    ra, ra, 524            #; ra  = 0x80003624, (wrb) ra  <-- 0x8000362c, goto 0x80003830
; ?? (start_snitch.S:33)
      0x80003830 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80003834 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x8000362c ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80003838 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003838
      0x8000383c jalr    ra, ra, -1264          #; ra  = 0x80003838, (wrb) ra  <-- 0x80003840, goto 0x80003348
; _snrt_barrier_reg_ptr (team.c:80)
      0x80003348 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000334c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80003350 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80003354 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80003358 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x8000335c ret                            #; ra  = 0x80003840, goto 0x80003840
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80003840 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80003844 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80003848 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x8000384c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x8000362c
; ?? (start_snitch.S:40)
      0x80003850 ret                            #; ra  = 0x8000362c, goto 0x8000362c
; ?? (start.S:195)
      0x8000362c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x80003630 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003630
      0x80003634 jalr    ra, ra, 556            #; ra  = 0x80003630, (wrb) ra  <-- 0x80003638, goto 0x8000385c
; ?? (start_snitch.S:15)
      0x8000385c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80003860 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80003864 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80003638 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80003868 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003868
      0x8000386c jalr    ra, ra, -1344          #; ra  = 0x80003868, (wrb) ra  <-- 0x80003870, goto 0x80003328
; snrt_global_core_idx (team.c:32)
      0x80003328 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000332c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80003330 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80003334 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80003338 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x8000333c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x80003340 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x80003344 ret                            #; ra  = 0x80003870, goto 0x80003870
; ?? (start_snitch.S:20)
      0x80003870 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x80003874 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80003878 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x8000387c bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x80003638
; ?? (start_snitch.S:28)
      0x80003880 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x80003884 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x80003888 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003888
      0x8000388c addi    t1, t1, 632            #; t1  = 0x80003888, (wrb) t1  <-- 0x80003b00
; ?? (start_snitch.S:31)
      0x80003890 sw      t0, 0(t1)              #; t1  = 0x80003b00, 1 ~~> Word[0x80003b00]
; ?? (start_snitch.S:32)
      0x80003894 ret                            #; ra  = 0x80003638, goto 0x80003638
; ?? (start.S:198)
      0x80003638 wfi                            #; 
                        tion 0 @ (12, 7289):
                          141
                          142
                           20
                          136
                      11.9362
                       0.2025
                       0.3384
                          1.0
                          1.0
                            0
                       2.0845
                       1.4706
                       0.1036
                       0.0813
                       0.7851
                         7278
                       0.3061
