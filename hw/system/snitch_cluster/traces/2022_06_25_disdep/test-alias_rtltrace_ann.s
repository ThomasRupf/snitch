; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x80002570
      0x00001014 jalr    t0                     #; t0  = 0x80002570, (wrb) ra  <-- 4120, goto 0x80002570
; ?? (start.S:20)
      0x80002570 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003570
; ?? (start.S:21)
      0x80002574 addi    gp, gp, -232           #; gp  = 0x80003570, (wrb) gp  <-- 0x80003488
; ?? (start.S:28)
      0x80002578 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002578
      0x8000257c jalr    ra, ra, 964            #; ra  = 0x80002578, (wrb) ra  <-- 0x80002580, goto 0x8000293c
; ?? (start_snitch.S:16)
      0x8000293c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80002940 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80002944 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80002948 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x8000294c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80002950 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80002954 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80002958 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x8000295c mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80002960 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80002964 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80002968 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x8000296c ret                            #; ra  = 0x80002580, goto 0x80002580
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x80002580 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x80002584 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x80002588 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002588
      0x8000258c jalr    ra, ra, 1036           #; ra  = 0x80002588, (wrb) ra  <-- 0x80002590, goto 0x80002994
; ?? (start_snitch.S:48)
      0x80002994 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80002998 ret                            #; ra  = 0x80002590, goto 0x80002590
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x80002590 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x80002594 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x80002598 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x8000259c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x800025a0 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x800025a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800025a4
      0x800025a8 addi    t0, t0, 1948           #; t0  = 0x800025a4, (wrb) t0  <-- 0x80002d40
; ?? (start.S:49)
      0x800025ac auipc   t1, 0x0                #; (wrb) t1  <-- 0x800025ac
      0x800025b0 addi    t1, t1, 1944           #; t1  = 0x800025ac, (wrb) t1  <-- 0x80002d44
; ?? (start.S:50)
      0x800025b4 bge     t0, t1, pc + 16        #; t0  = 0x80002d40, t1  = 0x80002d44, not taken
; ?? (start.S:51)
      0x800025b8 sw      zero, 0(t0)            #; t0  = 0x80002d40, 0 ~~> Word[0x80002d40]
; ?? (start.S:52)
      0x800025bc addi    t0, t0, 4              #; t0  = 0x80002d40, (wrb) t0  <-- 0x80002d44
; ?? (start.S:53)
      0x800025c0 blt     t0, t1, pc - 8         #; t0  = 0x80002d44, t1  = 0x80002d44, not taken
; ?? (start.S:58)
      0x800025c4 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x800025c8 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x800025cc beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x800025d0 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x800025d4 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x800025d8 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x800025dc fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x800025e0 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x800025e4 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x800025e8 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x800025ec fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x800025f0 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x800025f4 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x800025f8 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x800025fc fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x80002600 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x80002604 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x80002608 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x8000260c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x80002610 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x80002614 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x80002618 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x8000261c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x80002620 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x80002624 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x80002628 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x8000262c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x80002630 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x80002634 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x80002638 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x8000263c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x80002640 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x80002644 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x80002648 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x8000264c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x80002650 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x80002654 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x80002658 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002658
      0x8000265c lw      t0, 900(t0)            #; t0  = 0x80002658, t0  <~~ Word[0x800029dc]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x80002660 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x80002664 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x80002668 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002668
      0x8000266c lw      t2, 880(t2)            #; t2  = 0x80002668, t2  <~~ Word[0x800029d8]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x80002670 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x80002674 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x80002678 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x8000267c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x80002680 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x80002684 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x80002688 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x8000268c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x80002690 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002690
      0x80002694 addi    t0, t0, 1528           #; t0  = 0x80002690, (wrb) t0  <-- 0x80002c88
; ?? (start.S:125)
      0x80002698 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002698
      0x8000269c addi    t1, t1, 1520           #; t1  = 0x80002698, (wrb) t1  <-- 0x80002c88
; ?? (start.S:126)
      0x800026a0 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800026a0
      0x800026a4 addi    t2, t2, 1512           #; t2  = 0x800026a0, (wrb) t2  <-- 0x80002c88
; ?? (start.S:127)
      0x800026a8 auipc   t3, 0x0                #; (wrb) t3  <-- 0x800026a8
      0x800026ac addi    t3, t3, 1520           #; t3  = 0x800026a8, (wrb) t3  <-- 0x80002c98
; ?? (start.S:128)
      0x800026b0 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002c88, (wrb) sp  <-- 0x80122bf8
; ?? (start.S:129)
      0x800026b4 sub     sp, sp, t1             #; sp  = 0x80122bf8, t1  = 0x80002c88, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x800026b8 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002c88, (wrb) sp  <-- 0x80122bf8
; ?? (start.S:131)
      0x800026bc sub     sp, sp, t3             #; sp  = 0x80122bf8, t3  = 0x80002c98, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x800026c0 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x800026c4 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x800026c8 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x800026cc mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x800026d0 bge     t0, t1, pc + 24        #; t0  = 0x80002c88, t1  = 0x80002c88, taken, goto 0x800026e8
; ?? (start.S:147)
      0x800026e8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800026e8
      0x800026ec addi    t0, t0, 1440           #; t0  = 0x800026e8, (wrb) t0  <-- 0x80002c88
; ?? (start.S:148)
      0x800026f0 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800026f0
      0x800026f4 addi    t1, t1, 1448           #; t1  = 0x800026f0, (wrb) t1  <-- 0x80002c98
; ?? (start.S:149)
      0x800026f8 bge     t0, t1, pc + 20        #; t0  = 0x80002c88, t1  = 0x80002c98, not taken
; ?? (start.S:150)
      0x800026fc sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x80002700 addi    t0, t0, 4              #; t0  = 0x80002c88, (wrb) t0  <-- 0x80002c8c
; ?? (start.S:152)
      0x80002704 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x80002708 blt     t0, t2, pc - 12        #; t0  = 0x80002c8c, t2  = 0x80002c88, not taken
; ?? (start.S:158)
      0x8000270c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x80002710 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x80002714 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x80002718 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x8000271c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x80002720 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x80002724 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002724
      0x80002728 jalr    ra, ra, -1060          #; ra  = 0x80002724, (wrb) ra  <-- 0x8000272c, goto 0x80002300
; _snrt_init_team (start.c:49)
      0x80002300 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x80002304 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x80002308 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x8000230c sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x80002310 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x80002314 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x80002318 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x8000231c mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x80002320 mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x80002324 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x80002328 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x8000232c sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x80002330 divu    a0, a0, t0             #; a0  = 0, t0  = 8
                                                #; (acc) a6  <-- 0x00a7a823
; _snrt_init_team (start.c:54)
      0x80002334 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x80002338 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x8000233c sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x80002340 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x80002344 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x80002348 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x8000234c add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x80002350 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x80002354 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x80002358 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x8000235c lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x80002360 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x80002364 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x80002368 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x8000236c sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x80002370 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x80002374 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x80002378 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x8000237c add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x80002380 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x80002384 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x80002388 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x8000238c srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x80002390 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x80002394 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x80002398 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x8000239c sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x800023a0 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x800023a4 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x800023a8 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x800023ac sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x800023b0 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x800023b4 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x800023b8 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x800023bc sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x800023c0 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800023c4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800023c8 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x800023cc lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800023d0 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x800023d4 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x800023d8 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x800023dc remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x800023e0 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x800023e4 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
                                                #; (acc) tp  <-- 0x00a5a223
      0x800023e8 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x800023ec li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x800023f0 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x800023f4 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800033f4
      0x800023f8 addi    a1, a1, -1712          #; a1  = 0x800033f4, (wrb) a1  <-- 0x80002d44
                                                #; (acc) a0  <-- 0x00b50533
      0x800023fc add     a0, a0, a1             #; a0  = 0, a1  = 0x80002d44, (wrb) a0  <-- 0x80002d44
      0x80002400 sw      zero, 0(a0)            #; a0  = 0x80002d44, 0 ~~> Word[0x80002d44]
; _snrt_init_team (start.c:86)
      0x80002404 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x80002408 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x8000240c sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x80002410 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x80002414 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x80002418 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x8000241c addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x80002420 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x80002424 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x80002428 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x8000242c sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x80002430 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x80002434 lw      a0, 0(a1)              #; a1  = 0x80002d44, a0  <~~ Word[0x80002d44]
                                                #; (lsu) a0  <-- 0
      0x80002438 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x8000243c andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x80002440 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x80002444 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x80002448 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x8000244c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002450 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002454 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x80002458 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000245c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002460 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x80002464 ret                            #; ra  = 0x8000272c, goto 0x8000272c
; ?? (start.S:165)
      0x8000272c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x80002730 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x80002734 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x80002738 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x8000273c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x80002740 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x80002744 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002744
      0x80002748 addi    t0, t0, 60             #; t0  = 0x80002744, (wrb) t0  <-- 0x80002780
; ?? (start.S:175)
      0x8000274c csrw    mtvec, t0              #; t0  = 0x80002780, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x80002750 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002750
      0x80002754 jalr    ra, ra, 544            #; ra  = 0x80002750, (wrb) ra  <-- 0x80002758, goto 0x80002970
; ?? (start_snitch.S:33)
      0x80002970 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002974 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002758 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002978 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002978
      0x8000297c jalr    ra, ra, -1264          #; ra  = 0x80002978, (wrb) ra  <-- 0x80002980, goto 0x80002488
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002488 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000248c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002490 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002494 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002498 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x8000249c ret                            #; ra  = 0x80002980, goto 0x80002980
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002980 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002984 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002988 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x8000298c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002758
; ?? (start_snitch.S:40)
      0x80002990 ret                            #; ra  = 0x80002758, goto 0x80002758
; ?? (start.S:183)
      0x80002758 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000758
      0x8000275c jalr    ra, ra, -292           #; ra  = 0x80000758, (wrb) ra  <-- 0x80002760, goto 0x80000634
; main (test_aliasing.c:24)
      0x80000634 addi    sp, sp, -16            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff50
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (test_aliasing.c:25)
      0x80000638 sw      ra, 12(sp)             #; sp  = 0x0011ff50, 0x80002760 ~~> Word[0x0011ff5c]
      0x8000063c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000640 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000644 lw      a0, 4(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff64]
                                                #; (lsu) a0  <-- 0
; main (test_aliasing.c:25)
      0x80000648 bnez    a0, pc + 84            #; a0  = 0, not taken
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (test_aliasing.c:29)
      0x8000064c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000650 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000654 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80000658 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in main (test_aliasing.c:29)
      0x8000065c lw      a1, 88(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ffc8]
                                                #; (lsu) a1  <-- 0x00100000
      0x80000660 addi    a2, a1, 80             #; a1  = 0x00100000, (wrb) a2  <-- 0x00100050
; snrt_l1alloc (alloc.c:34)
;  in main (test_aliasing.c:29)
      0x80000664 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
; init_data (test_aliasing.c:6)
;  in main (test_aliasing.c:31)
      0x80000668 sw      zero, 4(a1)            #; a1  = 0x00100000, 0 ~~> Word[0x00100004]
      0x8000066c sw      zero, 0(a1)            #; a1  = 0x00100000, 0 ~~> Word[0x00100000]
; main (test_aliasing.c:37)
      0x80000670 addi    a0, a1, 8              #; a1  = 0x00100000, (wrb) a0  <-- 0x00100008
; copy (test_aliasing.c:18)
;  in main (test_aliasing.c:37)
      0x80000674 li      a2, 72                 #; (wrb) a2  <-- 72
      0x80000678 li      a1, 0                  #; (wrb) a1  <-- 0
      0x8000067c auipc   ra, 0x0                #; (wrb) ra  <-- 0x8000067c
      0x80000680 jalr    ra, ra, -1660          #; ra  = 0x8000067c, (wrb) ra  <-- 0x80000684, goto 0x80000000
; memset (memset.S:30)
      0x80000000 li      t1, 15                 #; (wrb) t1  <-- 15
; memset (memset.S:31)
      0x80000004 mv      a4, a0                 #; a0  = 0x00100008, (wrb) a4  <-- 0x00100008
; memset (memset.S:32)
      0x80000008 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 72, not taken
; memset (memset.S:33)
      0x8000000c andi    a5, a4, 15             #; a4  = 0x00100008, (wrb) a5  <-- 8
; memset (memset.S:34)
      0x80000010 bnez    a5, pc + 160           #; a5  = 8, taken, goto 0x800000b0
; memset (memset.S:100)
      0x800000b0 slli    a3, a5, 2              #; a5  = 8, (wrb) a3  <-- 32
; memset (memset.S:101)
      0x800000b4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800000b4
; memset (memset.S:102)
      0x800000b8 add     a3, a3, t0             #; a3  = 32, t0  = 0x800000b4, (wrb) a3  <-- 0x800000d4
; memset (memset.S:103)
      0x800000bc mv      t0, ra                 #; ra  = 0x80000684, (wrb) t0  <-- 0x80000684
; memset (memset.S:104)
      0x800000c0 jalr    ra, a3, -96            #; a3  = 0x800000d4, (wrb) ra  <-- 0x800000c4, goto 0x80000074
; memset (memset.S:76)
      0x80000074 sb      a1, 7(a4)              #; a4  = 0x00100008, 0 ~~> Byte[0x0010000f]
; memset (memset.S:77)
      0x80000078 sb      a1, 6(a4)              #; a4  = 0x00100008, 0 ~~> Byte[0x0010000e]
; memset (memset.S:78)
      0x8000007c sb      a1, 5(a4)              #; a4  = 0x00100008, 0 ~~> Byte[0x0010000d]
; memset (memset.S:79)
      0x80000080 sb      a1, 4(a4)              #; a4  = 0x00100008, 0 ~~> Byte[0x0010000c]
; memset (memset.S:80)
      0x80000084 sb      a1, 3(a4)              #; a4  = 0x00100008, 0 ~~> Byte[0x0010000b]
; memset (memset.S:81)
      0x80000088 sb      a1, 2(a4)              #; a4  = 0x00100008, 0 ~~> Byte[0x0010000a]
; memset (memset.S:82)
      0x8000008c sb      a1, 1(a4)              #; a4  = 0x00100008, 0 ~~> Byte[0x00100009]
; memset (memset.S:83)
      0x80000090 sb      a1, 0(a4)              #; a4  = 0x00100008, 0 ~~> Byte[0x00100008]
; memset (memset.S:85)
      0x80000094 ret                            #; ra  = 0x800000c4, goto 0x800000c4
; memset (memset.S:105)
      0x800000c4 mv      ra, t0                 #; t0  = 0x80000684, (wrb) ra  <-- 0x80000684
; memset (memset.S:107)
      0x800000c8 addi    a5, a5, -16            #; a5  = 8, (wrb) a5  <-- -8
; memset (memset.S:108)
      0x800000cc sub     a4, a4, a5             #; a4  = 0x00100008, a5  = -8, (wrb) a4  <-- 0x00100010
; memset (memset.S:109)
      0x800000d0 add     a2, a2, a5             #; a2  = 72, a5  = -8, (wrb) a2  <-- 64
; memset (memset.S:110)
      0x800000d4 bgeu    t1, a2, pc - 144       #; t1  = 15, a2  = 64, not taken
; memset (memset.S:111)
      0x800000d8 j       pc - 0xc4              #; goto 0x80000014
; memset (memset.S:37)
      0x80000014 bnez    a1, pc + 132           #; a1  = 0, not taken
; memset (memset.S:40)
      0x80000018 andi    a3, a2, -16            #; a2  = 64, (wrb) a3  <-- 64
; memset (memset.S:41)
      0x8000001c andi    a2, a2, 15             #; a2  = 64, (wrb) a2  <-- 0
; memset (memset.S:42)
      0x80000020 add     a3, a3, a4             #; a3  = 64, a4  = 0x00100010, (wrb) a3  <-- 0x00100050
; memset (memset.S:48)
      0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100010, 0 ~~> Word[0x00100010]
; memset (memset.S:49)
      0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100010, 0 ~~> Word[0x00100014]
; memset (memset.S:50)
      0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100010, 0 ~~> Word[0x00100018]
; memset (memset.S:51)
      0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100010, 0 ~~> Word[0x0010001c]
; memset (memset.S:53)
      0x80000034 addi    a4, a4, 16             #; a4  = 0x00100010, (wrb) a4  <-- 0x00100020
; memset (memset.S:54)
      0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100020, a3  = 0x00100050, taken, goto 0x80000024
; memset (memset.S:48)
      0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100020, 0 ~~> Word[0x00100020]
; memset (memset.S:49)
      0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100020, 0 ~~> Word[0x00100024]
; memset (memset.S:50)
      0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100020, 0 ~~> Word[0x00100028]
; memset (memset.S:51)
      0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100020, 0 ~~> Word[0x0010002c]
; memset (memset.S:53)
      0x80000034 addi    a4, a4, 16             #; a4  = 0x00100020, (wrb) a4  <-- 0x00100030
; memset (memset.S:54)
      0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100030, a3  = 0x00100050, taken, goto 0x80000024
; memset (memset.S:48)
      0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100030, 0 ~~> Word[0x00100030]
; memset (memset.S:49)
      0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100030, 0 ~~> Word[0x00100034]
; memset (memset.S:50)
      0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100030, 0 ~~> Word[0x00100038]
; memset (memset.S:51)
      0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100030, 0 ~~> Word[0x0010003c]
; memset (memset.S:53)
      0x80000034 addi    a4, a4, 16             #; a4  = 0x00100030, (wrb) a4  <-- 0x00100040
; memset (memset.S:54)
      0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100040, a3  = 0x00100050, taken, goto 0x80000024
; memset (memset.S:48)
      0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100040, 0 ~~> Word[0x00100040]
; memset (memset.S:49)
      0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100040, 0 ~~> Word[0x00100044]
; memset (memset.S:50)
      0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100040, 0 ~~> Word[0x00100048]
; memset (memset.S:51)
      0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100040, 0 ~~> Word[0x0010004c]
; memset (memset.S:53)
      0x80000034 addi    a4, a4, 16             #; a4  = 0x00100040, (wrb) a4  <-- 0x00100050
; memset (memset.S:54)
      0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100050, a3  = 0x00100050, not taken
; memset (memset.S:56)
      0x8000003c bnez    a2, pc + 8             #; a2  = 0, not taken
; memset (memset.S:57)
      0x80000040 ret                            #; ra  = 0x80000684, goto 0x80000684
; main (test_aliasing.c:43)
      0x80000684 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002684
      0x80000688 addi    a0, a0, 865            #; a0  = 0x80002684, (wrb) a0  <-- 0x800029e5
      0x8000068c li      a2, 0                  #; (wrb) a2  <-- 0
      0x80000690 li      a3, 0                  #; (wrb) a3  <-- 0
      0x80000694 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000694
      0x80000698 jalr    ra, ra, 24             #; ra  = 0x80000694, (wrb) ra  <-- 0x8000069c, goto 0x800006ac
; printf_ (printf.c:863)
      0x800006ac addi    sp, sp, -48            #; sp  = 0x0011ff50, (wrb) sp  <-- 0x0011ff20
      0x800006b0 sw      ra, 12(sp)             #; sp  = 0x0011ff20, 0x8000069c ~~> Word[0x0011ff2c]
      0x800006b4 mv      t0, a0                 #; a0  = 0x800029e5, (wrb) t0  <-- 0x800029e5
      0x800006b8 sw      a7, 44(sp)             #; sp  = 0x0011ff20, 0xffff0000 ~~> Word[0x0011ff4c]
      0x800006bc sw      a6, 40(sp)             #; sp  = 0x0011ff20, 0x00120000 ~~> Word[0x0011ff48]
      0x800006c0 sw      a5, 36(sp)             #; sp  = 0x0011ff20, -8 ~~> Word[0x0011ff44]
      0x800006c4 sw      a4, 32(sp)             #; sp  = 0x0011ff20, 0x00100050 ~~> Word[0x0011ff40]
      0x800006c8 sw      a3, 28(sp)             #; sp  = 0x0011ff20, 0 ~~> Word[0x0011ff3c]
      0x800006cc sw      a2, 24(sp)             #; sp  = 0x0011ff20, 0 ~~> Word[0x0011ff38]
      0x800006d0 sw      a1, 20(sp)             #; sp  = 0x0011ff20, 0 ~~> Word[0x0011ff34]
      0x800006d4 addi    a0, sp, 20             #; sp  = 0x0011ff20, (wrb) a0  <-- 0x0011ff34
; printf_ (printf.c:865)
      0x800006d8 sw      a0, 8(sp)              #; sp  = 0x0011ff20, 0x0011ff34 ~~> Word[0x0011ff28]
; printf_ (printf.c:867)
      0x800006dc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800016dc
      0x800006e0 addi    a0, a0, -988           #; a0  = 0x800016dc, (wrb) a0  <-- 0x80001300
      0x800006e4 addi    a1, sp, 7              #; sp  = 0x0011ff20, (wrb) a1  <-- 0x0011ff27
      0x800006e8 li      a2, -1                 #; (wrb) a2  <-- -1
      0x800006ec addi    a4, sp, 20             #; sp  = 0x0011ff20, (wrb) a4  <-- 0x0011ff34
      0x800006f0 mv      a3, t0                 #; t0  = 0x800029e5, (wrb) a3  <-- 0x800029e5
      0x800006f4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800006f4
      0x800006f8 jalr    ra, ra, 20             #; ra  = 0x800006f4, (wrb) ra  <-- 0x800006fc, goto 0x80000708
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000708 addi    sp, sp, -112           #; sp  = 0x0011ff20, (wrb) sp  <-- 0x0011feb0
      0x8000070c sw      ra, 108(sp)            #; sp  = 0x0011feb0, 0x800006fc ~~> Word[0x0011ff1c]
      0x80000710 sw      s0, 104(sp)            #; sp  = 0x0011feb0, 0 ~~> Word[0x0011ff18]
      0x80000714 sw      s1, 100(sp)            #; sp  = 0x0011feb0, 0 ~~> Word[0x0011ff14]
      0x80000718 sw      s2, 96(sp)             #; sp  = 0x0011feb0, 0 ~~> Word[0x0011ff10]
      0x8000071c sw      s3, 92(sp)             #; sp  = 0x0011feb0, 0 ~~> Word[0x0011ff0c]
      0x80000720 sw      s4, 88(sp)             #; sp  = 0x0011feb0, 0 ~~> Word[0x0011ff08]
      0x80000724 sw      s5, 84(sp)             #; sp  = 0x0011feb0, 0 ~~> Word[0x0011ff04]
      0x80000728 sw      s6, 80(sp)             #; sp  = 0x0011feb0, 0 ~~> Word[0x0011ff00]
      0x8000072c sw      s7, 76(sp)             #; sp  = 0x0011feb0, 0 ~~> Word[0x0011fefc]
      0x80000730 sw      s8, 72(sp)             #; sp  = 0x0011feb0, 0 ~~> Word[0x0011fef8]
      0x80000734 sw      s9, 68(sp)             #; sp  = 0x0011feb0, 0 ~~> Word[0x0011fef4]
      0x80000738 sw      s10, 64(sp)            #; sp  = 0x0011feb0, 0 ~~> Word[0x0011fef0]
      0x8000073c sw      s11, 60(sp)            #; sp  = 0x0011feb0, 0 ~~> Word[0x0011feec]
      0x80000740 mv      s3, a4                 #; a4  = 0x0011ff34, (wrb) s3  <-- 0x0011ff34
      0x80000744 mv      s0, a3                 #; a3  = 0x800029e5, (wrb) s0  <-- 0x800029e5
      0x80000748 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x8000074c mv      s4, a1                 #; a1  = 0x0011ff27, (wrb) s4  <-- 0x0011ff27
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x80000750 beqz    a1, pc + 12            #; a1  = 0x0011ff27, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000754 mv      s2, a0                 #; a0  = 0x80001300, (wrb) s2  <-- 0x80001300
      0x80000758 j       pc + 0xc               #; goto 0x80000764
      0x80000764 li      s8, 0                  #; (wrb) s8  <-- 0
      0x80000768 li      s6, 37                 #; (wrb) s6  <-- 37
      0x8000076c li      s11, 16                #; (wrb) s11 <-- 16
      0x80000770 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000774 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000778 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x8000077c sw      a0, 24(sp)             #; sp  = 0x0011feb0, 2048 ~~> Word[0x0011fec8]
      0x80000780 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000784 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000788 sw      a0, 16(sp)             #; sp  = 0x0011feb0, 65535 ~~> Word[0x0011fec0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x8000078c addi    s10, s0, 2             #; s0  = 0x800029e5, (wrb) s10 <-- 0x800029e7
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000790 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000794 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000798 lbu     a0, 0(s0)              #; s0  = 0x800029e5, a0  <~~ Byte[0x800029e5]
                                                #; (lsu) a0  <-- 101
      0x8000079c beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x800007a0 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800007a4 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x800007a8 mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x800007ac mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x800007b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800007b4 jalr    s2                     #; s2  = 0x80001300, (wrb) ra  <-- 0x800007b8, goto 0x80001300
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001300 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
      0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
      0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
      0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 0
      0x80001320 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 1 ~~> Word[0x80002d44]
      0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 0, (wrb) a4  <-- 0x80002d44
      0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d44, 101 ~~> Byte[0x80002d8c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 1
      0x80001334 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x80001338 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x8000133c addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x80001340 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800013a8 ret                            #; ra  = 0x800007b8, goto 0x800007b8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800007b8 addi    s0, s0, 1              #; s0  = 0x800029e5, (wrb) s0  <-- 0x800029e6
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800007bc addi    s10, s10, 1            #; s10 = 0x800029e7, (wrb) s10 <-- 0x800029e8
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800007c0 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800007c4 lbu     a0, 0(s0)              #; s0  = 0x800029e6, a0  <~~ Byte[0x800029e6]
                                                #; (lsu) a0  <-- 114
      0x800007c8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800007a0
      0x800007a0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800007a4 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x800007a8 mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x800007ac mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x800007b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800007b4 jalr    s2                     #; s2  = 0x80001300, (wrb) ra  <-- 0x800007b8, goto 0x80001300
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001300 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
      0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
      0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 1
      0x80001320 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 2 ~~> Word[0x80002d44]
      0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 1, (wrb) a4  <-- 0x80002d45
      0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d45, 114 ~~> Byte[0x80002d8d]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 2
      0x80001334 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x80001338 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x8000133c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001340 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800013a8 ret                            #; ra  = 0x800007b8, goto 0x800007b8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800007b8 addi    s0, s0, 1              #; s0  = 0x800029e6, (wrb) s0  <-- 0x800029e7
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800007bc addi    s10, s10, 1            #; s10 = 0x800029e8, (wrb) s10 <-- 0x800029e9
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800007c0 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800007c4 lbu     a0, 0(s0)              #; s0  = 0x800029e7, a0  <~~ Byte[0x800029e7]
                                                #; (lsu) a0  <-- 114
      0x800007c8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800007a0
      0x800007a0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800007a4 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x800007a8 mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x800007ac mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x800007b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800007b4 jalr    s2                     #; s2  = 0x80001300, (wrb) ra  <-- 0x800007b8, goto 0x80001300
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001300 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
      0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
      0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 2
      0x80001320 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 3 ~~> Word[0x80002d44]
      0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 2, (wrb) a4  <-- 0x80002d46
      0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d46, 114 ~~> Byte[0x80002d8e]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 3
      0x80001334 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x80001338 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x8000133c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001340 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800013a8 ret                            #; ra  = 0x800007b8, goto 0x800007b8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800007b8 addi    s0, s0, 1              #; s0  = 0x800029e7, (wrb) s0  <-- 0x800029e8
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800007bc addi    s10, s10, 1            #; s10 = 0x800029e9, (wrb) s10 <-- 0x800029ea
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800007c0 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800007c4 lbu     a0, 0(s0)              #; s0  = 0x800029e8, a0  <~~ Byte[0x800029e8]
                                                #; (lsu) a0  <-- 111
      0x800007c8 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x800007a0
      0x800007a0 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800007a4 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x800007a8 mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x800007ac mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x800007b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800007b4 jalr    s2                     #; s2  = 0x80001300, (wrb) ra  <-- 0x800007b8, goto 0x80001300
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001300 beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
      0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
      0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 3
      0x80001320 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 4 ~~> Word[0x80002d44]
      0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 3, (wrb) a4  <-- 0x80002d47
      0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d47, 111 ~~> Byte[0x80002d8f]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 4
      0x80001334 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x80001338 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x8000133c addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x80001340 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800013a8 ret                            #; ra  = 0x800007b8, goto 0x800007b8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800007b8 addi    s0, s0, 1              #; s0  = 0x800029e8, (wrb) s0  <-- 0x800029e9
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800007bc addi    s10, s10, 1            #; s10 = 0x800029ea, (wrb) s10 <-- 0x800029eb
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800007c0 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800007c4 lbu     a0, 0(s0)              #; s0  = 0x800029e9, a0  <~~ Byte[0x800029e9]
                                                #; (lsu) a0  <-- 114
      0x800007c8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800007a0
      0x800007a0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800007a4 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x800007a8 mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x800007ac mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x800007b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800007b4 jalr    s2                     #; s2  = 0x80001300, (wrb) ra  <-- 0x800007b8, goto 0x80001300
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001300 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
      0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
      0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 4
      0x80001320 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 5 ~~> Word[0x80002d44]
      0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 4, (wrb) a4  <-- 0x80002d48
      0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d48, 114 ~~> Byte[0x80002d90]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 5
      0x80001334 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x80001338 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x8000133c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001340 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800013a8 ret                            #; ra  = 0x800007b8, goto 0x800007b8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800007b8 addi    s0, s0, 1              #; s0  = 0x800029e9, (wrb) s0  <-- 0x800029ea
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800007bc addi    s10, s10, 1            #; s10 = 0x800029eb, (wrb) s10 <-- 0x800029ec
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800007c0 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800007c4 lbu     a0, 0(s0)              #; s0  = 0x800029ea, a0  <~~ Byte[0x800029ea]
                                                #; (lsu) a0  <-- 32
      0x800007c8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800007a0
      0x800007a0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800007a4 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x800007a8 mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x800007ac mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x800007b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800007b4 jalr    s2                     #; s2  = 0x80001300, (wrb) ra  <-- 0x800007b8, goto 0x80001300
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001300 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
      0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
      0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 5
      0x80001320 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 6 ~~> Word[0x80002d44]
      0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 5, (wrb) a4  <-- 0x80002d49
      0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d49, 32 ~~> Byte[0x80002d91]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 6
      0x80001334 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x80001338 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x8000133c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001340 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800013a8 ret                            #; ra  = 0x800007b8, goto 0x800007b8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800007b8 addi    s0, s0, 1              #; s0  = 0x800029ea, (wrb) s0  <-- 0x800029eb
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800007bc addi    s10, s10, 1            #; s10 = 0x800029ec, (wrb) s10 <-- 0x800029ed
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800007c0 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800007c4 lbu     a0, 0(s0)              #; s0  = 0x800029eb, a0  <~~ Byte[0x800029eb]
                                                #; (lsu) a0  <-- 61
      0x800007c8 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x800007a0
      0x800007a0 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800007a4 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x800007a8 mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x800007ac mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x800007b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800007b4 jalr    s2                     #; s2  = 0x80001300, (wrb) ra  <-- 0x800007b8, goto 0x80001300
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001300 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
      0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
      0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 6
      0x80001320 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 7 ~~> Word[0x80002d44]
      0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 6, (wrb) a4  <-- 0x80002d4a
      0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d4a, 61 ~~> Byte[0x80002d92]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 7
      0x80001334 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x80001338 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x8000133c addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x80001340 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800013a8 ret                            #; ra  = 0x800007b8, goto 0x800007b8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800007b8 addi    s0, s0, 1              #; s0  = 0x800029eb, (wrb) s0  <-- 0x800029ec
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800007bc addi    s10, s10, 1            #; s10 = 0x800029ed, (wrb) s10 <-- 0x800029ee
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800007c0 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800007c4 lbu     a0, 0(s0)              #; s0  = 0x800029ec, a0  <~~ Byte[0x800029ec]
                                                #; (lsu) a0  <-- 32
      0x800007c8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800007a0
      0x800007a0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800007a4 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x800007a8 mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x800007ac mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x800007b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800007b4 jalr    s2                     #; s2  = 0x80001300, (wrb) ra  <-- 0x800007b8, goto 0x80001300
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001300 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
      0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
      0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 7
      0x80001320 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 8 ~~> Word[0x80002d44]
      0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 7, (wrb) a4  <-- 0x80002d4b
      0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d4b, 32 ~~> Byte[0x80002d93]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 8
      0x80001334 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x80001338 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x8000133c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001340 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800013a8 ret                            #; ra  = 0x800007b8, goto 0x800007b8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800007b8 addi    s0, s0, 1              #; s0  = 0x800029ec, (wrb) s0  <-- 0x800029ed
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800007bc addi    s10, s10, 1            #; s10 = 0x800029ee, (wrb) s10 <-- 0x800029ef
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800007c0 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800007c4 lbu     a0, 0(s0)              #; s0  = 0x800029ed, a0  <~~ Byte[0x800029ed]
                                                #; (lsu) a0  <-- 37
      0x800007c8 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x800007a0
      0x800007a0 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x800007d0
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x800007d0 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800007d4 j       pc + 0x10              #; goto 0x800007e4
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x800007e4 lbu     a0, -1(s10)            #; s10 = 0x800029ef, a0  <~~ Byte[0x800029ee]
                                                #; (lsu) a0  <-- 102
      0x800007e8 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x800007ec bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000824
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000824 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000828 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x8000082c addi    a1, s10, -1            #; s10 = 0x800029ef, (wrb) a1  <-- 0x800029ee
      0x80000830 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000834 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x800008b0
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x800008b0 li      a2, 42                 #; (wrb) a2  <-- 42
      0x800008b4 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000904
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000904 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000908 mv      s10, a1                #; a1  = 0x800029ee, (wrb) s10 <-- 0x800029ee
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x8000090c beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000910 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000914 j       pc + 0xc               #; goto 0x80000920
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000920 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000924 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000928 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x8000092c or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000930 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000934 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000998
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000998 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x8000099c li      a2, 83                 #; (wrb) a2  <-- 83
      0x800009a0 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009a4 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x800009a8 auipc   a2, 0x2                #; (wrb) a2  <-- 0x800029a8
      0x800009ac addi    a2, a2, 188            #; a2  = 0x800029a8, (wrb) a2  <-- 0x80002a64
      0x800009b0 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002a64, (wrb) a1  <-- 0x80002b68
      0x800009b4 lw      a2, 0(a1)              #; a1  = 0x80002b68, a2  <~~ Word[0x80002b68]
      0x800009b8 li      a1, 8                  #; (wrb) a1  <-- 8
      0x800009bc li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x800009f0
      0x800009c0 jr      a2                     #; a2  = 0x800009f0, goto 0x800009f0
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x800009f0 li      a1, 70                 #; (wrb) a1  <-- 70
      0x800009f4 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x800009fc
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x800009fc addi    a0, s3, 7              #; s3  = 0x0011ff34, (wrb) a0  <-- 0x0011ff3b
      0x80000a00 andi    a0, a0, -8             #; a0  = 0x0011ff3b, (wrb) a0  <-- 0x0011ff38
      0x80000a08 addi    s3, a0, 8              #; a0  = 0x0011ff38, (wrb) s3  <-- 0x0011ff40
      0x80000a0c mv      a0, s2                 #; s2  = 0x80001300, (wrb) a0  <-- 0x80001300
      0x80000a04 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff38]
                                                #; (f:lsu) fa0  <-- 0.0
      0x80000a10 mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x80000a14 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000a18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a1c mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000a20 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000a24 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000a28 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001a28
      0x80000a2c jalr    ra, ra, -1656          #; ra  = 0x80001a28, (wrb) ra  <-- 0x80000a30, goto 0x800013b0
; _ftoa (printf.c:340)
      0x800013b0 addi    sp, sp, -112           #; sp  = 0x0011feb0, (wrb) sp  <-- 0x0011fe40
      0x800013b4 sw      ra, 108(sp)            #; sp  = 0x0011fe40, 0x80000a30 ~~> Word[0x0011feac]
      0x800013b8 sw      s0, 104(sp)            #; sp  = 0x0011fe40, 0 ~~> Word[0x0011fea8]
      0x800013bc sw      s1, 100(sp)            #; sp  = 0x0011fe40, 8 ~~> Word[0x0011fea4]
      0x800013c0 sw      s2, 96(sp)             #; sp  = 0x0011fe40, 0x80001300 ~~> Word[0x0011fea0]
      0x800013c4 sw      s3, 92(sp)             #; sp  = 0x0011fe40, 0x0011ff40 ~~> Word[0x0011fe9c]
      0x800013c8 sw      s4, 88(sp)             #; sp  = 0x0011fe40, 0x0011ff27 ~~> Word[0x0011fe98]
      0x800013cc sw      s5, 84(sp)             #; sp  = 0x0011fe40, -1 ~~> Word[0x0011fe94]
      0x800013d0 sw      s6, 80(sp)             #; sp  = 0x0011fe40, 0 ~~> Word[0x0011fe90]
      0x800013d4 sw      s7, 76(sp)             #; sp  = 0x0011fe40, 0 ~~> Word[0x0011fe8c]
      0x800013d8 sw      s8, 72(sp)             #; sp  = 0x0011fe40, 16 ~~> Word[0x0011fe88]
      0x800013dc sw      s9, 68(sp)             #; sp  = 0x0011fe40, 8 ~~> Word[0x0011fe84]
      0x800013e0 sw      s10, 64(sp)            #; sp  = 0x0011fe40, 0x800029ee ~~> Word[0x0011fe80]
      0x800013e4 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe78]
      0x800013e8 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe70]
      0x800013ec fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe68]
      0x800013f0 auipc   s1, 0x2                #; (wrb) s1  <-- 0x800033f0
      0x800013f4 addi    s1, s1, -1880          #; s1  = 0x800033f0, (wrb) s1  <-- 0x80002c98
      0x800013f8 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002c98]
; _ftoa (printf.c:351)
      0x80001400 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
; _ftoa (printf.c:0)
      0x80001404 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x80001408 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x800013fc fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
      0x8000140c mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x80001410 mv      s6, a1                 #; a1  = 0x0011ff27, (wrb) s6  <-- 0x0011ff27
      0x80001414 mv      s7, a0                 #; a0  = 0x80001300, (wrb) s7  <-- 0x80001300
; _ftoa (printf.c:351)
      0x80001418 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001508
; _ftoa (printf.c:0)
      0x8000150c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000250c
      0x80001508 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x80001510 addi    a0, a0, 1940           #; a0  = 0x8000250c, (wrb) a0  <-- 0x80002ca0
      0x80001514 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ca0]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x80001518 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x8000151c bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001538
; _ftoa (printf.c:0)
      0x80001538 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002538
      0x8000153c addi    a0, a0, 1904           #; a0  = 0x80002538, (wrb) a0  <-- 0x80002ca8
      0x80001544 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002544
      0x80001548 addi    a0, a0, 1900           #; a0  = 0x80002544, (wrb) a0  <-- 0x80002cb0
      0x80001540 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ca8]
      0x8000154c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002cb0]
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
; _ftoa (printf.c:358)
      0x80001550 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
                                                #; (acc) a0  <-- 0x00b57533
      0x80001554 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
                                                #; (acc) a0  <-- 0x00b57533
      0x80001558 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x8000155c bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001658
; _ftoa (printf.c:374)
      0x80001658 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x8000165c li      s8, 6                  #; (wrb) s8  <-- 6
      0x80001660 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001668
; _ftoa (printf.c:0)
      0x80001668 li      a0, 10                 #; (wrb) a0  <-- 10
      0x8000166c fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs2  <-- 0.0
; _ftoa (printf.c:378)
      0x80001670 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x800016a8
; _ftoa (printf.c:0)
      0x800016a8 li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x800016ac slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x800016b0 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800026b0
      0x800016b4 addi    a1, a1, 1288           #; a1  = 0x800026b0, (wrb) a1  <-- 0x80002bb8
      0x800016b8 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002bb8, (wrb) a0  <-- 0x80002be8
      0x800016bc fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002be8]
; _ftoa (printf.c:383)
      0x800016c0 fcvt.w.d s1, fs2               #; fs2  = 0.0
                                                #; (f:lsu) ft1  <-- 1000000.0000000
; _ftoa (printf.c:384)
      0x800016c4 fcvt.d.w ft0, s1               #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800016c8 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800016cc fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
; _ftoa (printf.c:0)
      0x800016d0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800026d0
      0x800016d4 addi    a0, a0, 1512           #; a0  = 0x800026d0, (wrb) a0  <-- 0x80002cb8
                                                #; (f:fpu) ft2  <-- 0.0
      0x800016d8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002cb8]
; _ftoa (printf.c:385)
      0x800016dc fcvt.wu.d a0, ft2              #; ft2  = 0.0
; _ftoa (printf.c:386)
      0x800016e0 fcvt.d.wu ft3, a0              #; ac1  = 0, (f:lsu) ft0  <-- 0.5
                                                #; (f:fpu) ft3  <-- 0.0
      0x800016e4 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:388)
      0x800016e8 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x800016ec bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x8000170c
; _ftoa (printf.c:396)
      0x8000170c flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x80001710 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001724
; _ftoa (printf.c:403)
      0x80001728 beqz    s8, pc + 216           #; s8  = 6, not taken
      0x80001724 fcvt.d.w fs1, zero             #; ac1  = 0
; _ftoa (printf.c:0)
      0x8000172c li      a2, 0                  #; (wrb) a2  <-- 0
                                                #; (f:fpu) fs1  <-- 0.0
      0x80001730 addi    a1, sp, 8              #; sp  = 0x0011fe40, (wrb) a1  <-- 0x0011fe48
; _ftoa (printf.c:414)
      0x80001734 add     t1, a1, s0             #; a1  = 0x0011fe48, s0  = 0, (wrb) t1  <-- 0x0011fe48
      0x80001738 li      t0, 32                 #; (wrb) t0  <-- 32
      0x8000173c sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x80001740 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80001744 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80001748 li      a6, 10                 #; (wrb) a6  <-- 10
      0x8000174c li      a7, 9                  #; (wrb) a7  <-- 9
      0x80001750 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80001754 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x80001758 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x8000175c srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001760 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001764 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001768 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x8000176c add     a5, t1, a2             #; t1  = 0x0011fe48, a2  = 0, (wrb) a5  <-- 0x0011fe48
      0x80001770 sb      a3, 0(a5)              #; a5  = 0x0011fe48, 48 ~~> Byte[0x0011fe48]
; _ftoa (printf.c:417)
      0x80001774 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80001778 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x8000177c add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x80001780 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80001784 li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001788 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x8000178c xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x80001790 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x80001794 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x80001798 bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x8000179c addi    a0, sp, 8              #; sp  = 0x0011fe40, (wrb) a0  <-- 0x0011fe48
; _ftoa (printf.c:422)
      0x800017a0 add     a0, a0, s0             #; a0  = 0x0011fe48, s0  = 0, (wrb) a0  <-- 0x0011fe48
      0x800017a4 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x800017a8 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x800017ac add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x800017b0 li      a1, 31                 #; (wrb) a1  <-- 31
      0x800017b4 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x800017b8 add     a0, a0, a2             #; a0  = 0x0011fe48, a2  = 1, (wrb) a0  <-- 0x0011fe49
      0x800017bc mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x800017c0 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x800017c8
      0x800017c8 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x800017cc li      a1, 48                 #; (wrb) a1  <-- 48
      0x800017d0 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x800007d0
      0x800017d4 jalr    ra, ra, -2000          #; ra  = 0x800007d0, (wrb) ra  <-- 0x800017d8, goto 0x80000000
; memset (memset.S:30)
      0x80000000 li      t1, 15                 #; (wrb) t1  <-- 15
; memset (memset.S:31)
      0x80000004 mv      a4, a0                 #; a0  = 0x0011fe49, (wrb) a4  <-- 0x0011fe49
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
      0x80000080 sb      a1, 4(a4)              #; a4  = 0x0011fe49, 48 ~~> Byte[0x0011fe4d]
; memset (memset.S:80)
      0x80000084 sb      a1, 3(a4)              #; a4  = 0x0011fe49, 48 ~~> Byte[0x0011fe4c]
; memset (memset.S:81)
      0x80000088 sb      a1, 2(a4)              #; a4  = 0x0011fe49, 48 ~~> Byte[0x0011fe4b]
; memset (memset.S:82)
      0x8000008c sb      a1, 1(a4)              #; a4  = 0x0011fe49, 48 ~~> Byte[0x0011fe4a]
; memset (memset.S:83)
      0x80000090 sb      a1, 0(a4)              #; a4  = 0x0011fe49, 48 ~~> Byte[0x0011fe49]
; memset (memset.S:85)
      0x80000094 ret                            #; ra  = 0x800017d8, goto 0x800017d8
; _ftoa (printf.c:0)
      0x800017d8 li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x800017dc add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x800017e0 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x800017e4 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x800017e8 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x800017ec and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x800017f0 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x800017f4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800017dc
      0x800017dc add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x800017e0 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x800017e4 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x800017e8 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x800017ec and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x800017f0 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x800017f4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800017dc
      0x800017dc add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x800017e0 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x800017e4 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x800017e8 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x800017ec and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x800017f0 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x800017f4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800017dc
      0x800017dc add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x800017e0 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x800017e4 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x800017e8 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x800017ec and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x800017f0 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x800017f4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800017dc
      0x800017dc add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x800017e0 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x800017e4 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x800017e8 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x800017ec and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x800017f0 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x800017f4 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x800017f8 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x800017fc j       pc + 0x28              #; goto 0x80001824
      0x80001824 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001828 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x8000182c addi    a1, sp, 8              #; sp  = 0x0011fe40, (wrb) a1  <-- 0x0011fe48
; _ftoa (printf.c:427)
      0x80001830 add     a0, a1, a0             #; a1  = 0x0011fe48, a0  = 6, (wrb) a0  <-- 0x0011fe4e
      0x80001834 li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001838 sb      a1, 0(a0)              #; a0  = 0x0011fe4e, 46 ~~> Byte[0x0011fe4e]
      0x8000183c j       pc + 0x8               #; goto 0x80001844
; _ftoa (printf.c:0)
      0x80001844 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001848 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x8000184c bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001850 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001858 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001854 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
      0x8000185c addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001860 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001864 addi    a3, sp, 8              #; sp  = 0x0011fe40, (wrb) a3  <-- 0x0011fe48
      0x80001868 li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x8000186c beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001870 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001874 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001878 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x8000187c add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001880 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001884 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001888 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x8000188c addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001890 add     s0, a3, s0             #; a3  = 0x0011fe48, s0  = 7, (wrb) s0  <-- 0x0011fe4f
; _ftoa (printf.c:434)
      0x80001894 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001898 sb      a5, 0(s0)              #; s0  = 0x0011fe4f, 48 ~~> Byte[0x0011fe4f]
; _ftoa (printf.c:0)
      0x8000189c mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x800018a0 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x800018a4 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x800018a8 j       pc + 0x8               #; goto 0x800018b0
; _ftoa (printf.c:440)
      0x800018b0 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x800018b4 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x800018b8 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001924
; _ftoa (printf.c:0)
      0x80001924 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001928 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x8000192c beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001944
; _ftoa (printf.c:453)
      0x80001944 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001948 bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x8000194c andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001950 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x8000197c
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x8000197c snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001980 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80001984 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001988 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x8000198c andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001990 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001994 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x800019c0
; _ftoa (printf.c:0)
      0x800019c0 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800019c4 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x800019c8 addi    s9, sp, 7              #; sp  = 0x0011fe40, (wrb) s9  <-- 0x0011fe47
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800019cc add     a0, s9, s8             #; s9  = 0x0011fe47, s8  = 8, (wrb) a0  <-- 0x0011fe4f
      0x800019d0 lbu     a0, 0(a0)              #; a0  = 0x0011fe4f, a0  <~~ Byte[0x0011fe4f]
      0x800019d4 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x800019d8 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
      0x800019dc mv      a1, s6                 #; s6  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
                                                #; (lsu) a0  <-- 48
      0x800019e0 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x800019e4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800019e8 jalr    s7                     #; s7  = 0x80001300, (wrb) ra  <-- 0x800019ec, goto 0x80001300
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001300 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
      0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
      0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 8
      0x80001320 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 9 ~~> Word[0x80002d44]
      0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 8, (wrb) a4  <-- 0x80002d4c
      0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d4c, 48 ~~> Byte[0x80002d94]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 9
      0x80001334 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x80001338 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x8000133c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001340 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800013a8 ret                            #; ra  = 0x800019ec, goto 0x800019ec
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800019ec mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x800019f0 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800019f4 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x800019cc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800019cc add     a0, s9, s8             #; s9  = 0x0011fe47, s8  = 7, (wrb) a0  <-- 0x0011fe4e
      0x800019d0 lbu     a0, 0(a0)              #; a0  = 0x0011fe4e, a0  <~~ Byte[0x0011fe4e]
      0x800019d4 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x800019d8 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x800019dc mv      a1, s6                 #; s6  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x800019e0 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x800019e4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800019e8 jalr    s7                     #; s7  = 0x80001300, (wrb) ra  <-- 0x800019ec, goto 0x80001300
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001300 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
      0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
      0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 9
      0x80001320 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 10 ~~> Word[0x80002d44]
      0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 9, (wrb) a4  <-- 0x80002d4d
      0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d4d, 46 ~~> Byte[0x80002d95]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 10
      0x80001334 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x80001338 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x8000133c addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x80001340 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800013a8 ret                            #; ra  = 0x800019ec, goto 0x800019ec
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800019ec mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x800019f0 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800019f4 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x800019cc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800019cc add     a0, s9, s8             #; s9  = 0x0011fe47, s8  = 6, (wrb) a0  <-- 0x0011fe4d
      0x800019d0 lbu     a0, 0(a0)              #; a0  = 0x0011fe4d, a0  <~~ Byte[0x0011fe4d]
      0x800019d4 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x800019d8 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x800019dc mv      a1, s6                 #; s6  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x800019e0 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x800019e4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800019e8 jalr    s7                     #; s7  = 0x80001300, (wrb) ra  <-- 0x800019ec, goto 0x80001300
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001300 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
      0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
      0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 10
      0x80001320 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 11 ~~> Word[0x80002d44]
      0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 10, (wrb) a4  <-- 0x80002d4e
      0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d4e, 48 ~~> Byte[0x80002d96]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 11
      0x80001334 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x80001338 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x8000133c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001340 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800013a8 ret                            #; ra  = 0x800019ec, goto 0x800019ec
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800019ec mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x800019f0 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800019f4 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x800019cc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800019cc add     a0, s9, s8             #; s9  = 0x0011fe47, s8  = 5, (wrb) a0  <-- 0x0011fe4c
      0x800019d0 lbu     a0, 0(a0)              #; a0  = 0x0011fe4c, a0  <~~ Byte[0x0011fe4c]
      0x800019d4 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x800019d8 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x800019dc mv      a1, s6                 #; s6  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x800019e0 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x800019e4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800019e8 jalr    s7                     #; s7  = 0x80001300, (wrb) ra  <-- 0x800019ec, goto 0x80001300
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001300 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
      0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
      0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 11
      0x80001320 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 12 ~~> Word[0x80002d44]
      0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 11, (wrb) a4  <-- 0x80002d4f
      0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d4f, 48 ~~> Byte[0x80002d97]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 12
      0x80001334 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x80001338 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x8000133c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001340 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800013a8 ret                            #; ra  = 0x800019ec, goto 0x800019ec
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800019ec mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x800019f0 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800019f4 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x800019cc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800019cc add     a0, s9, s8             #; s9  = 0x0011fe47, s8  = 4, (wrb) a0  <-- 0x0011fe4b
      0x800019d0 lbu     a0, 0(a0)              #; a0  = 0x0011fe4b, a0  <~~ Byte[0x0011fe4b]
      0x800019d4 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x800019d8 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x800019dc mv      a1, s6                 #; s6  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x800019e0 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x800019e4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800019e8 jalr    s7                     #; s7  = 0x80001300, (wrb) ra  <-- 0x800019ec, goto 0x80001300
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001300 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
      0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
      0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 12
      0x80001320 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 13 ~~> Word[0x80002d44]
      0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 12, (wrb) a4  <-- 0x80002d50
      0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d50, 48 ~~> Byte[0x80002d98]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 13
      0x80001334 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x80001338 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x8000133c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001340 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800013a8 ret                            #; ra  = 0x800019ec, goto 0x800019ec
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800019ec mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x800019f0 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800019f4 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x800019cc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800019cc add     a0, s9, s8             #; s9  = 0x0011fe47, s8  = 3, (wrb) a0  <-- 0x0011fe4a
      0x800019d0 lbu     a0, 0(a0)              #; a0  = 0x0011fe4a, a0  <~~ Byte[0x0011fe4a]
      0x800019d4 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x800019d8 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x800019dc mv      a1, s6                 #; s6  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x800019e0 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x800019e4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800019e8 jalr    s7                     #; s7  = 0x80001300, (wrb) ra  <-- 0x800019ec, goto 0x80001300
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001300 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
      0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
      0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 13
      0x80001320 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 14 ~~> Word[0x80002d44]
      0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 13, (wrb) a4  <-- 0x80002d51
      0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d51, 48 ~~> Byte[0x80002d99]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 14
      0x80001334 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x80001338 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x8000133c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001340 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800013a8 ret                            #; ra  = 0x800019ec, goto 0x800019ec
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800019ec mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x800019f0 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800019f4 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x800019cc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800019cc add     a0, s9, s8             #; s9  = 0x0011fe47, s8  = 2, (wrb) a0  <-- 0x0011fe49
      0x800019d0 lbu     a0, 0(a0)              #; a0  = 0x0011fe49, a0  <~~ Byte[0x0011fe49]
      0x800019d4 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x800019d8 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x800019dc mv      a1, s6                 #; s6  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x800019e0 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x800019e4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800019e8 jalr    s7                     #; s7  = 0x80001300, (wrb) ra  <-- 0x800019ec, goto 0x80001300
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001300 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
      0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
      0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 14
      0x80001320 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 15 ~~> Word[0x80002d44]
      0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 14, (wrb) a4  <-- 0x80002d52
      0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d52, 48 ~~> Byte[0x80002d9a]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 15
      0x80001334 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x80001338 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x8000133c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001340 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800013a8 ret                            #; ra  = 0x800019ec, goto 0x800019ec
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800019ec mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x800019f0 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800019f4 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x800019cc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x800019cc add     a0, s9, s8             #; s9  = 0x0011fe47, s8  = 1, (wrb) a0  <-- 0x0011fe48
      0x800019d0 lbu     a0, 0(a0)              #; a0  = 0x0011fe48, a0  <~~ Byte[0x0011fe48]
      0x800019d4 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x800019d8 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x800019dc mv      a1, s6                 #; s6  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x800019e0 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x800019e4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x800019e8 jalr    s7                     #; s7  = 0x80001300, (wrb) ra  <-- 0x800019ec, goto 0x80001300
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001300 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
      0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
      0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 15
      0x80001320 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 16 ~~> Word[0x80002d44]
      0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 15, (wrb) a4  <-- 0x80002d53
      0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d53, 48 ~~> Byte[0x80002d9b]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 16
      0x80001334 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x80001338 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x8000133c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001340 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800013a8 ret                            #; ra  = 0x800019ec, goto 0x800019ec
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x800019ec mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x800019f0 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x800019f4 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x800019f8 j       pc + 0x8               #; goto 0x80001a00
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001a00 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x80001a04 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80001a08 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001a0c xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001a10 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001a14 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001a44
; _ftoa (printf.c:0)
      0x80001a44 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x80001a48 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80001a4c fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe68]
                                                #; (f:lsu) fs2  <-- 0.0
      0x80001a58 lw      s10, 64(sp)            #; sp  = 0x0011fe40, s10 <~~ Word[0x0011fe80]
      0x80001a50 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe70]
      0x80001a54 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe78], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) s10 <-- 0x800029ee
      0x80001a5c lw      s9, 68(sp)             #; sp  = 0x0011fe40, s9  <~~ Word[0x0011fe84]
                                                #; (lsu) s9  <-- 8
      0x80001a60 lw      s8, 72(sp)             #; sp  = 0x0011fe40, s8  <~~ Word[0x0011fe88]
                                                #; (lsu) s8  <-- 16
      0x80001a64 lw      s7, 76(sp)             #; sp  = 0x0011fe40, s7  <~~ Word[0x0011fe8c]
                                                #; (lsu) s7  <-- 0
      0x80001a68 lw      s6, 80(sp)             #; sp  = 0x0011fe40, s6  <~~ Word[0x0011fe90]
                                                #; (lsu) s6  <-- 0
      0x80001a6c lw      s5, 84(sp)             #; sp  = 0x0011fe40, s5  <~~ Word[0x0011fe94]
                                                #; (lsu) s5  <-- -1
      0x80001a70 lw      s4, 88(sp)             #; sp  = 0x0011fe40, s4  <~~ Word[0x0011fe98]
                                                #; (lsu) s4  <-- 0x0011ff27
      0x80001a74 lw      s3, 92(sp)             #; sp  = 0x0011fe40, s3  <~~ Word[0x0011fe9c]
                                                #; (lsu) s3  <-- 0x0011ff40
      0x80001a78 lw      s2, 96(sp)             #; sp  = 0x0011fe40, s2  <~~ Word[0x0011fea0]
                                                #; (lsu) s2  <-- 0x80001300
      0x80001a7c lw      s1, 100(sp)            #; sp  = 0x0011fe40, s1  <~~ Word[0x0011fea4]
                                                #; (lsu) s1  <-- 8
      0x80001a80 lw      s0, 104(sp)            #; sp  = 0x0011fe40, s0  <~~ Word[0x0011fea8]
                                                #; (lsu) s0  <-- 0
      0x80001a84 lw      ra, 108(sp)            #; sp  = 0x0011fe40, ra  <~~ Word[0x0011feac]
      0x80001a88 addi    sp, sp, 112            #; sp  = 0x0011fe40, (wrb) sp  <-- 0x0011feb0
                                                #; (lsu) ra  <-- 0x80000a30
      0x80001a8c ret                            #; ra  = 0x80000a30, goto 0x80000a30
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a30 j       pc + 0x7c0             #; goto 0x800011f0
      0x800011f0 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x800011f4 li      s6, 37                 #; (wrb) s6  <-- 37
      0x800011f8 li      s7, 46                 #; (wrb) s7  <-- 46
      0x800011fc addi    s0, s10, 1             #; s10 = 0x800029ee, (wrb) s0  <-- 0x800029ef
      0x80001200 j       pc - 0xa74             #; goto 0x8000078c
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x8000078c addi    s10, s0, 2             #; s0  = 0x800029ef, (wrb) s10 <-- 0x800029f1
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000790 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x80000794 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000798 lbu     a0, 0(s0)              #; s0  = 0x800029ef, a0  <~~ Byte[0x800029ef]
                                                #; (lsu) a0  <-- 10
      0x8000079c beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x800007a0 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800007a4 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x800007a8 mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x800007ac mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x800007b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800007b4 jalr    s2                     #; s2  = 0x80001300, (wrb) ra  <-- 0x800007b8, goto 0x80001300
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001300 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
      0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
      0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 16
      0x80001320 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 17 ~~> Word[0x80002d44]
      0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 16, (wrb) a4  <-- 0x80002d54
      0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d54, 10 ~~> Byte[0x80002d9c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
                                                #; (lsu) a4  <-- 17
      0x80001334 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x80001338 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x8000133c addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x80001340 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x80001344 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x80001348 bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000134c add     a0, a3, a2             #; a3  = 0x80002d44, a2  = 0, (wrb) a0  <-- 0x80002d44
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001350 addi    a2, a0, 72             #; a0  = 0x80002d44, (wrb) a2  <-- 0x80002d8c
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001354 sw      zero, 12(a0)           #; a0  = 0x80002d44, 0 ~~> Word[0x80002d50]
      0x80001358 li      a3, 64                 #; (wrb) a3  <-- 64
      0x8000135c sw      a3, 8(a0)              #; a0  = 0x80002d44, 64 ~~> Word[0x80002d4c]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001360 sw      zero, 20(a0)           #; a0  = 0x80002d44, 0 ~~> Word[0x80002d58]
      0x80001364 li      a3, 1                  #; (wrb) a3  <-- 1
      0x80001368 sw      a3, 16(a0)             #; a0  = 0x80002d44, 1 ~~> Word[0x80002d54]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000136c sw      zero, 28(a0)           #; a0  = 0x80002d44, 0 ~~> Word[0x80002d60]
      0x80001370 sw      a2, 24(a0)             #; a0  = 0x80002d44, 0x80002d8c ~~> Word[0x80002d5c]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001374 lw      a2, 0(a1)              #; a1  = 0x80002d44, a2  <~~ Word[0x80002d44]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001378 addi    a3, a0, 8              #; a0  = 0x80002d44, (wrb) a3  <-- 0x80002d4c
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000137c sw      zero, 36(a0)           #; a0  = 0x80002d44, 0 ~~> Word[0x80002d68]
                                                #; (lsu) a2  <-- 17
      0x80001380 sw      a2, 32(a0)             #; a0  = 0x80002d44, 17 ~~> Word[0x80002d64]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001384 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003384
      0x80001388 addi    a0, a0, -1860          #; a0  = 0x80003384, (wrb) a0  <-- 0x80002c40
      0x8000138c sw      a3, 0(a0)              #; a0  = 0x80002c40, 0x80002d4c ~~> Word[0x80002c40]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001390 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003390
      0x80001394 addi    a0, a0, -1808          #; a0  = 0x80003390, (wrb) a0  <-- 0x80002c80
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001398 lw      a2, 0(a0)              #; a0  = 0x80002c80, a2  <~~ Word[0x80002c80]
                                                #; (lsu) a2  <-- 0
      0x8000139c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001398
      0x80001398 lw      a2, 0(a0)              #; a0  = 0x80002c80, a2  <~~ Word[0x80002c80]
                                                #; (lsu) a2  <-- 0
      0x8000139c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001398
      0x80001398 lw      a2, 0(a0)              #; a0  = 0x80002c80, a2  <~~ Word[0x80002c80]
                                                #; (lsu) a2  <-- 0
      0x8000139c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001398
      0x80001398 lw      a2, 0(a0)              #; a0  = 0x80002c80, a2  <~~ Word[0x80002c80]
                                                #; (lsu) a2  <-- 0
      0x8000139c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001398
      0x80001398 lw      a2, 0(a0)              #; a0  = 0x80002c80, a2  <~~ Word[0x80002c80]
                                                #; (lsu) a2  <-- 1
      0x8000139c beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800013a0 sw      zero, 0(a0)            #; a0  = 0x80002c80, 0 ~~> Word[0x80002c80]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800013a4 sw      zero, 0(a1)            #; a1  = 0x80002d44, 0 ~~> Word[0x80002d44]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800013a8 ret                            #; ra  = 0x800007b8, goto 0x800007b8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800007b8 addi    s0, s0, 1              #; s0  = 0x800029ef, (wrb) s0  <-- 0x800029f0
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800007bc addi    s10, s10, 1            #; s10 = 0x800029f1, (wrb) s10 <-- 0x800029f2
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800007c0 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800007c4 lbu     a0, 0(s0)              #; s0  = 0x800029f0, a0  <~~ Byte[0x800029f0]
                                                #; (lsu) a0  <-- 0
      0x800007c8 bnez    a0, pc - 40            #; a0  = 0, not taken
      0x800007cc j       pc + 0xad8             #; goto 0x800012a4
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x800012a4 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x800012a8 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x800012b0
      0x800012b0 li      a0, 0                  #; (wrb) a0  <-- 0
      0x800012b4 mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
      0x800012b8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800012bc jalr    s2                     #; s2  = 0x80001300, (wrb) ra  <-- 0x800012c0, goto 0x80001300
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001300 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800013a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800013a8 ret                            #; ra  = 0x800012c0, goto 0x800012c0
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x800012c0 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x800012c4 lw      s11, 60(sp)            #; sp  = 0x0011feb0, s11 <~~ Word[0x0011feec]
                                                #; (lsu) s11 <-- 0
      0x800012c8 lw      s10, 64(sp)            #; sp  = 0x0011feb0, s10 <~~ Word[0x0011fef0]
                                                #; (lsu) s10 <-- 0
      0x800012cc lw      s9, 68(sp)             #; sp  = 0x0011feb0, s9  <~~ Word[0x0011fef4]
                                                #; (lsu) s9  <-- 0
      0x800012d0 lw      s8, 72(sp)             #; sp  = 0x0011feb0, s8  <~~ Word[0x0011fef8]
                                                #; (lsu) s8  <-- 0
      0x800012d4 lw      s7, 76(sp)             #; sp  = 0x0011feb0, s7  <~~ Word[0x0011fefc]
                                                #; (lsu) s7  <-- 0
      0x800012d8 lw      s6, 80(sp)             #; sp  = 0x0011feb0, s6  <~~ Word[0x0011ff00]
                                                #; (lsu) s6  <-- 0
      0x800012dc lw      s5, 84(sp)             #; sp  = 0x0011feb0, s5  <~~ Word[0x0011ff04]
                                                #; (lsu) s5  <-- 0
      0x800012e0 lw      s4, 88(sp)             #; sp  = 0x0011feb0, s4  <~~ Word[0x0011ff08]
                                                #; (lsu) s4  <-- 0
      0x800012e4 lw      s3, 92(sp)             #; sp  = 0x0011feb0, s3  <~~ Word[0x0011ff0c]
                                                #; (lsu) s3  <-- 0
      0x800012e8 lw      s2, 96(sp)             #; sp  = 0x0011feb0, s2  <~~ Word[0x0011ff10]
                                                #; (lsu) s2  <-- 0
      0x800012ec lw      s1, 100(sp)            #; sp  = 0x0011feb0, s1  <~~ Word[0x0011ff14]
                                                #; (lsu) s1  <-- 0
      0x800012f0 lw      s0, 104(sp)            #; sp  = 0x0011feb0, s0  <~~ Word[0x0011ff18]
                                                #; (lsu) s0  <-- 0
      0x800012f4 lw      ra, 108(sp)            #; sp  = 0x0011feb0, ra  <~~ Word[0x0011ff1c]
      0x800012f8 addi    sp, sp, 112            #; sp  = 0x0011feb0, (wrb) sp  <-- 0x0011ff20
                                                #; (lsu) ra  <-- 0x800006fc
      0x800012fc ret                            #; ra  = 0x800006fc, goto 0x800006fc
; printf_ (printf.c:869)
      0x800006fc lw      ra, 12(sp)             #; sp  = 0x0011ff20, ra  <~~ Word[0x0011ff2c]
      0x80000700 addi    sp, sp, 48             #; sp  = 0x0011ff20, (wrb) sp  <-- 0x0011ff50
                                                #; (lsu) ra  <-- 0x8000069c
      0x80000704 ret                            #; ra  = 0x8000069c, goto 0x8000069c
; main (test_aliasing.c:46)
      0x8000069c li      a0, 0                  #; (wrb) a0  <-- 0
      0x800006a0 lw      ra, 12(sp)             #; sp  = 0x0011ff50, ra  <~~ Word[0x0011ff5c]
      0x800006a4 addi    sp, sp, 16             #; sp  = 0x0011ff50, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002760
      0x800006a8 ret                            #; ra  = 0x80002760, goto 0x80002760
; ?? (start.S:184)
      0x80002760 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x80002764 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002764
      0x80002768 jalr    ra, ra, 524            #; ra  = 0x80002764, (wrb) ra  <-- 0x8000276c, goto 0x80002970
; ?? (start_snitch.S:33)
      0x80002970 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002974 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x8000276c ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002978 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002978
      0x8000297c jalr    ra, ra, -1264          #; ra  = 0x80002978, (wrb) ra  <-- 0x80002980, goto 0x80002488
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002488 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000248c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002490 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002494 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002498 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x8000249c ret                            #; ra  = 0x80002980, goto 0x80002980
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002980 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002984 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002988 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x8000298c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x8000276c
; ?? (start_snitch.S:40)
      0x80002990 ret                            #; ra  = 0x8000276c, goto 0x8000276c
; ?? (start.S:195)
      0x8000276c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x80002770 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002770
      0x80002774 jalr    ra, ra, 556            #; ra  = 0x80002770, (wrb) ra  <-- 0x80002778, goto 0x8000299c
; ?? (start_snitch.S:15)
      0x8000299c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x800029a0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x800029a4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002778 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x800029a8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029a8
      0x800029ac jalr    ra, ra, -1344          #; ra  = 0x800029a8, (wrb) ra  <-- 0x800029b0, goto 0x80002468
; snrt_global_core_idx (team.c:32)
      0x80002468 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000246c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002470 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002474 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002478 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x8000247c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x80002480 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x80002484 ret                            #; ra  = 0x800029b0, goto 0x800029b0
; ?? (start_snitch.S:20)
      0x800029b0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x800029b4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x800029b8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x800029bc bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x80002778
; ?? (start_snitch.S:28)
      0x800029c0 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x800029c4 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x800029c8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800029c8
      0x800029cc addi    t1, t1, 632            #; t1  = 0x800029c8, (wrb) t1  <-- 0x80002c40
; ?? (start_snitch.S:31)
      0x800029d0 sw      t0, 0(t1)              #; t1  = 0x80002c40, 1 ~~> Word[0x80002c40]
; ?? (start_snitch.S:32)
      0x800029d4 ret                            #; ra  = 0x80002778, goto 0x80002778
; ?? (start.S:198)
      0x80002778 wfi                            #; 
                        tion 0 @ (12, 5115):
                          134
                          168
                           10
                            3
                      12.2015
                       0.2469
                       0.0469
                          1.0
                          1.0
                            0
                       0.9388
                          5.8
                       0.0121
                       0.0096
                       0.7903
                         5104
                       0.2590
