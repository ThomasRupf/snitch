; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x80002970
      0x00001014 jalr    t0                     #; t0  = 0x80002970, (wrb) ra  <-- 4120, goto 0x80002970
; ?? (start.S:20)
      0x80002970 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003970
; ?? (start.S:21)
      0x80002974 addi    gp, gp, -232           #; gp  = 0x80003970, (wrb) gp  <-- 0x80003888
; ?? (start.S:28)
      0x80002978 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002978
      0x8000297c jalr    ra, ra, 964            #; ra  = 0x80002978, (wrb) ra  <-- 0x80002980, goto 0x80002d3c
; ?? (start_snitch.S:16)
      0x80002d3c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80002d40 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80002d44 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80002d48 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x80002d4c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80002d50 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80002d54 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80002d58 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x80002d5c mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80002d60 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80002d64 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80002d68 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x80002d6c ret                            #; ra  = 0x80002980, goto 0x80002980
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x80002980 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x80002984 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x80002988 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002988
      0x8000298c jalr    ra, ra, 1036           #; ra  = 0x80002988, (wrb) ra  <-- 0x80002990, goto 0x80002d94
; ?? (start_snitch.S:48)
      0x80002d94 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80002d98 ret                            #; ra  = 0x80002990, goto 0x80002990
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x80002990 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x80002994 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x80002998 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x8000299c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x800029a0 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x800029a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800029a4
      0x800029a8 addi    t0, t0, 2036           #; t0  = 0x800029a4, (wrb) t0  <-- 0x80003198
; ?? (start.S:49)
      0x800029ac auipc   t1, 0x0                #; (wrb) t1  <-- 0x800029ac
      0x800029b0 addi    t1, t1, 2032           #; t1  = 0x800029ac, (wrb) t1  <-- 0x8000319c
; ?? (start.S:50)
      0x800029b4 bge     t0, t1, pc + 16        #; t0  = 0x80003198, t1  = 0x8000319c, not taken
; ?? (start.S:51)
      0x800029b8 sw      zero, 0(t0)            #; t0  = 0x80003198, 0 ~~> Word[0x80003198]
; ?? (start.S:52)
      0x800029bc addi    t0, t0, 4              #; t0  = 0x80003198, (wrb) t0  <-- 0x8000319c
; ?? (start.S:53)
      0x800029c0 blt     t0, t1, pc - 8         #; t0  = 0x8000319c, t1  = 0x8000319c, not taken
; ?? (start.S:58)
      0x800029c4 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x800029c8 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x800029cc beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x800029d0 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x800029d4 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x800029d8 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x800029dc fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x800029e0 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x800029e4 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x800029e8 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x800029ec fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x800029f0 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x800029f4 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x800029f8 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x800029fc fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x80002a00 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x80002a04 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x80002a08 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x80002a0c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x80002a10 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x80002a14 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x80002a18 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x80002a1c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x80002a20 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x80002a24 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x80002a28 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x80002a2c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x80002a30 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x80002a34 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x80002a38 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x80002a3c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x80002a40 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x80002a44 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x80002a48 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x80002a4c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x80002a50 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x80002a54 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x80002a58 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a58
      0x80002a5c lw      t0, 900(t0)            #; t0  = 0x80002a58, t0  <~~ Word[0x80002ddc]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x80002a60 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x80002a64 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x80002a68 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002a68
      0x80002a6c lw      t2, 880(t2)            #; t2  = 0x80002a68, t2  <~~ Word[0x80002dd8]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x80002a70 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x80002a74 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x80002a78 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x80002a7c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x80002a80 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x80002a84 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x80002a88 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x80002a8c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x80002a90 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a90
      0x80002a94 addi    t0, t0, 1528           #; t0  = 0x80002a90, (wrb) t0  <-- 0x80003088
; ?? (start.S:125)
      0x80002a98 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002a98
      0x80002a9c addi    t1, t1, 1520           #; t1  = 0x80002a98, (wrb) t1  <-- 0x80003088
; ?? (start.S:126)
      0x80002aa0 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002aa0
      0x80002aa4 addi    t2, t2, 1512           #; t2  = 0x80002aa0, (wrb) t2  <-- 0x80003088
; ?? (start.S:127)
      0x80002aa8 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002aa8
      0x80002aac addi    t3, t3, 1520           #; t3  = 0x80002aa8, (wrb) t3  <-- 0x80003098
; ?? (start.S:128)
      0x80002ab0 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003088, (wrb) sp  <-- 0x80122ff8
; ?? (start.S:129)
      0x80002ab4 sub     sp, sp, t1             #; sp  = 0x80122ff8, t1  = 0x80003088, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x80002ab8 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003088, (wrb) sp  <-- 0x80122ff8
; ?? (start.S:131)
      0x80002abc sub     sp, sp, t3             #; sp  = 0x80122ff8, t3  = 0x80003098, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x80002ac0 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x80002ac4 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x80002ac8 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x80002acc mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x80002ad0 bge     t0, t1, pc + 24        #; t0  = 0x80003088, t1  = 0x80003088, taken, goto 0x80002ae8
; ?? (start.S:147)
      0x80002ae8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002ae8
      0x80002aec addi    t0, t0, 1440           #; t0  = 0x80002ae8, (wrb) t0  <-- 0x80003088
; ?? (start.S:148)
      0x80002af0 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002af0
      0x80002af4 addi    t1, t1, 1448           #; t1  = 0x80002af0, (wrb) t1  <-- 0x80003098
; ?? (start.S:149)
      0x80002af8 bge     t0, t1, pc + 20        #; t0  = 0x80003088, t1  = 0x80003098, not taken
; ?? (start.S:150)
      0x80002afc sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x80002b00 addi    t0, t0, 4              #; t0  = 0x80003088, (wrb) t0  <-- 0x8000308c
; ?? (start.S:152)
      0x80002b04 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x80002b08 blt     t0, t2, pc - 12        #; t0  = 0x8000308c, t2  = 0x80003088, not taken
; ?? (start.S:158)
      0x80002b0c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x80002b10 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x80002b14 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x80002b18 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x80002b1c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x80002b20 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x80002b24 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b24
      0x80002b28 jalr    ra, ra, -1052          #; ra  = 0x80002b24, (wrb) ra  <-- 0x80002b2c, goto 0x80002708
; _snrt_init_team (start.c:49)
      0x80002708 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x8000270c sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x80002710 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x80002714 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x80002718 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x8000271c lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x80002720 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x80002724 mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x80002728 mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x8000272c sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x80002730 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x80002734 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x80002738 divu    a0, a0, t0             #; a0  = 0, t0  = 8
                                                #; (acc) a6  <-- 0x00a7a823
; _snrt_init_team (start.c:54)
      0x8000273c sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x80002740 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x80002744 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x80002748 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x8000274c lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x80002750 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x80002754 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x80002758 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x8000275c sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x80002760 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x80002764 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x80002768 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x8000276c sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x80002770 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x80002774 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x80002778 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x8000277c sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x80002780 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x80002784 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x80002788 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x8000278c sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x80002790 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x80002794 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x80002798 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x8000279c sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x800027a0 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x800027a4 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x800027a8 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x800027ac slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x800027b0 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x800027b4 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x800027b8 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x800027bc sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x800027c0 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x800027c4 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x800027c8 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800027cc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800027d0 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x800027d4 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800027d8 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x800027dc lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x800027e0 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x800027e4 remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x800027e8 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x800027ec add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
      0x800027f0 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x800027f4 li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x800027f8 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x800027fc auipc   a1, 0x1                #; (wrb) a1  <-- 0x800037fc
      0x80002800 addi    a1, a1, -1632          #; a1  = 0x800037fc, (wrb) a1  <-- 0x8000319c
      0x80002804 add     a0, a0, a1             #; a0  = 0, a1  = 0x8000319c, (wrb) a0  <-- 0x8000319c
      0x80002808 sw      zero, 0(a0)            #; a0  = 0x8000319c, 0 ~~> Word[0x8000319c]
; _snrt_init_team (start.c:86)
      0x8000280c lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x80002810 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x80002814 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x80002818 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x8000281c addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x80002820 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x80002824 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x80002828 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x8000282c sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x80002830 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x80002834 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x80002838 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x8000283c lw      a0, 0(a1)              #; a1  = 0x8000319c, a0  <~~ Word[0x8000319c]
                                                #; (lsu) a0  <-- 0
      0x80002840 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x80002844 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x80002848 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x8000284c sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x80002850 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x80002854 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002858 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000285c sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x80002860 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002864 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002868 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x8000286c ret                            #; ra  = 0x80002b2c, goto 0x80002b2c
; ?? (start.S:165)
      0x80002b2c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x80002b30 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x80002b34 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x80002b38 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x80002b3c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x80002b40 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x80002b44 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002b44
      0x80002b48 addi    t0, t0, 60             #; t0  = 0x80002b44, (wrb) t0  <-- 0x80002b80
; ?? (start.S:175)
      0x80002b4c csrw    mtvec, t0              #; t0  = 0x80002b80, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x80002b50 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b50
      0x80002b54 jalr    ra, ra, 544            #; ra  = 0x80002b50, (wrb) ra  <-- 0x80002b58, goto 0x80002d70
; ?? (start_snitch.S:33)
      0x80002d70 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002d74 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002b58 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002d78 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d78
      0x80002d7c jalr    ra, ra, -1256          #; ra  = 0x80002d78, (wrb) ra  <-- 0x80002d80, goto 0x80002890
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002890 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002894 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002898 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000289c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800028a0 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x800028a4 ret                            #; ra  = 0x80002d80, goto 0x80002d80
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002d80 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002d84 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002d88 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002d8c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002b58
; ?? (start_snitch.S:40)
      0x80002d90 ret                            #; ra  = 0x80002b58, goto 0x80002b58
; ?? (start.S:183)
      0x80002b58 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000b58
      0x80002b5c jalr    ra, ra, -1316          #; ra  = 0x80000b58, (wrb) ra  <-- 0x80002b60, goto 0x80000634
; main (test_aliasing.c:24)
      0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (test_aliasing.c:25)
      0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002b60 ~~> Word[0x0011ff5c]
      0x80000640 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000644 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000063c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
      0x80000648 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
; main (test_aliasing.c:0)
      0x8000064c li      a0, 0                  #; (wrb) a0  <-- 0
                                                #; (lsu) a1  <-- 0
; main (test_aliasing.c:25)
      0x80000650 bnez    a1, pc + 1108          #; a1  = 0, not taken
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
      0x800006d4 addi    a4, a4, -1592          #; a4  = 0x800036d0, (wrb) a4  <-- 0x80003098
      0x800006d8 fld     ft3, 0(a4)             #; ft3  <~~ Doub[0x80003098]
; init_data (test_aliasing.c:5)
;  in main (test_aliasing.c:31)
      0x800006dc csrsi   ssr, 1                 #; 
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
      0x800006f0 addi    a4, a4, -1612          #; a4  = 0x800036ec, (wrb) a4  <-- 0x800030a0
      0x800006f8 auipc   a4, 0x3                #; (wrb) a4  <-- 0x800036f8
      0x800006fc addi    a4, a4, -1616          #; a4  = 0x800036f8, (wrb) a4  <-- 0x800030a8
      0x800006f4 fld     ft3, 0(a4)             #; ft3  <~~ Doub[0x800030a0]
                                                #; (f:lsu) ft3  <-- 2.0
      0x80000704 auipc   a4, 0x3                #; (wrb) a4  <-- 0x80003704
      0x80000708 addi    a4, a4, -1620          #; a4  = 0x80003704, (wrb) a4  <-- 0x800030b0
      0x80000700 fld     ft4, 0(a4)             #; ft4  <~~ Doub[0x800030a8]
      0x8000070c fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x800030b0]
                                                #; (f:lsu) ft4  <-- 3.0
      0x80000710 auipc   a4, 0x3                #; (wrb) a4  <-- 0x80003710
      0x80000714 addi    a4, a4, -1624          #; a4  = 0x80003710, (wrb) a4  <-- 0x800030b8
                                                #; (f:lsu) ft5  <-- 4.0
      0x80000718 fld     ft6, 0(a4)             #; ft6  <~~ Doub[0x800030b8]
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
      0x80000730 addi    a4, a4, -1644          #; a4  = 0x8000372c, (wrb) a4  <-- 0x800030c0
      0x80000738 auipc   a4, 0x3                #; (wrb) a4  <-- 0x80003738
      0x8000073c addi    a4, a4, -1648          #; a4  = 0x80003738, (wrb) a4  <-- 0x800030c8
      0x80000734 fld     ft3, 0(a4)             #; ft3  <~~ Doub[0x800030c0]
                                                #; (f:lsu) ft3  <-- 6.0
      0x80000744 auipc   a4, 0x3                #; (wrb) a4  <-- 0x80003744
      0x80000748 addi    a4, a4, -1652          #; a4  = 0x80003744, (wrb) a4  <-- 0x800030d0
      0x80000740 fld     ft4, 0(a4)             #; ft4  <~~ Doub[0x800030c8]
      0x8000074c fld     ft5, 0(a4)             #; ft5  <~~ Doub[0x800030d0]
                                                #; (f:lsu) ft4  <-- 7.0
      0x80000750 auipc   a4, 0x3                #; (wrb) a4  <-- 0x80003750
      0x80000754 addi    a4, a4, -1656          #; a4  = 0x80003750, (wrb) a4  <-- 0x800030d8
                                                #; (f:lsu) ft5  <-- 8.0
      0x80000758 fld     ft6, 0(a4)             #; ft6  <~~ Doub[0x800030d8]
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
      0x8000076c csrci   ssr, 1                 #; (f:fpu) ft0  <-- 9.0
; sumup (test_aliasing.c:12)
;  in main (test_aliasing.c:34)
      0x80000770 li      a4, 64                 #; (wrb) a4  <-- 64
      0x80000774 scfgw   a3, a4                 #; a3  = 9, a4  = 64
      0x80000778 li      a3, 192                #; (wrb) a3  <-- 192
      0x8000077c scfgw   a2, a3                 #; a2  = 8, a3  = 192
      0x80000780 li      a2, 32                 #; (wrb) a2  <-- 32
      0x80000784 scfgw   zero, a2               #; a2  = 32
      0x80000788 scfgwi  a0, 768                #; a0  = 0x00100000
      0x8000078c csrsi   ssr, 1                 #; 
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
      0x800007b4 addi    a2, a2, -1744          #; a2  = 0x800037b0, (wrb) a2  <-- 0x800030e0
      0x800007b8 fld     fa3, 0(a2)             #; fa3  <~~ Doub[0x800030e0]
; sumup (test_aliasing.c:12)
;  in main (test_aliasing.c:34)
      0x800007bc fsgnj.d fa4, ft0, ft0          #; ft0  = 8.0, ft0  = 8.0
                                                #; (f:fpu) fa4  <-- 8.0
                                                #; (f:lsu) fa3  <-- -45.0
      0x800007c0 fsgnj.d fa5, ft0, ft0          #; ft0  = 9.0, ft0  = 9.0
; sumup (test_aliasing.c:0)
;  in main (test_aliasing.c:34)
      0x800007c4 csrci   ssr, 1                 #; (f:fpu) fa5  <-- 9.0
; sumup (test_aliasing.c:12)
;  in main (test_aliasing.c:34)
      0x800007c8 fadd.d  ft0, ft3, fa3          #; ft3  = 0.0, fa3  = -45.0
                                                #; (f:fpu) ft0  <-- -45.0
      0x800007cc fadd.d  ft0, ft0, ft4          #; ft0  = -45.0, ft4  = 1.0
                                                #; (f:fpu) ft0  <-- -44.0
      0x800007d0 fadd.d  ft0, ft0, ft5          #; ft0  = -44.0, ft5  = 2.0
                                                #; (f:fpu) ft0  <-- -42.0
      0x800007d4 fadd.d  ft0, ft0, ft6          #; ft0  = -42.0, ft6  = 3.0
                                                #; (f:fpu) ft0  <-- -39.0
      0x800007d8 fadd.d  ft0, ft0, ft7          #; ft0  = -39.0, ft7  = 4.0
                                                #; (f:fpu) ft0  <-- -35.0
      0x800007dc fadd.d  ft0, ft0, fa0          #; ft0  = -35.0, fa0  = 5.0
                                                #; (f:fpu) ft0  <-- -30.0
      0x800007e0 fadd.d  ft0, ft0, fa1          #; ft0  = -30.0, fa1  = 6.0
                                                #; (f:fpu) ft0  <-- -24.0
      0x800007e4 fadd.d  ft0, ft0, fa2          #; ft0  = -24.0, fa2  = 7.0
      0x800007f0 li      a6, 1                  #; (wrb) a6  <-- 1
      0x800007f4 li      a7, 1                  #; (wrb) a7  <-- 1
                                                #; (f:fpu) ft0  <-- -17.0
      0x800007f8 j       pc + 0x84              #; goto 0x8000087c
      0x800007e8 fadd.d  ft0, ft0, fa4          #; ft0  = -17.0, fa4  = 8.0
                                                #; (f:fpu) ft0  <-- -9.0
      0x800007ec fadd.d  ft3, ft0, fa5          #; ft0  = -9.0, fa5  = 9.0
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
      0x800008e0 beqz    a1, pc + 232           #; a1  = 0, taken, goto 0x800009c8
; copy (test_aliasing.c:18)
;  in main (test_aliasing.c:37)
      0x800009c8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x00100000]
                                                #; (f:lsu) ft0  <-- 0.0
      0x800009cc fsd     ft0, 8(a0)             #; 0.0 ~~> Doub[0x00100008]
      0x800009d0 fsd     ft0, 16(a0)            #; 0.0 ~~> Doub[0x00100010]
      0x800009d4 fsd     ft0, 24(a0)            #; 0.0 ~~> Doub[0x00100018]
      0x800009d8 fsd     ft0, 32(a0)            #; 0.0 ~~> Doub[0x00100020]
      0x800009dc fsd     ft0, 40(a0)            #; 0.0 ~~> Doub[0x00100028]
      0x800009e0 fsd     ft0, 48(a0)            #; 0.0 ~~> Doub[0x00100030]
      0x800009e4 fsd     ft0, 56(a0)            #; 0.0 ~~> Doub[0x00100038]
      0x800009e8 fsd     ft0, 64(a0)            #; 0.0 ~~> Doub[0x00100040]
      0x800009ec fsd     ft0, 72(a0)            #; 0.0 ~~> Doub[0x00100048]
      0x800009f0 beqz    a6, pc - 120           #; a6  = 1, not taken
; main (test_aliasing.c:0)
      0x800009f4 li      a1, 8                  #; (wrb) a1  <-- 8
      0x800009f8 li      a2, 9                  #; (wrb) a2  <-- 9
; sumup (test_aliasing.c:12)
;  in main (test_aliasing.c:38)
      0x800009fc li      a3, 64                 #; (wrb) a3  <-- 64
      0x80000a00 li      a4, 192                #; (wrb) a4  <-- 192
      0x80000a04 scfgw   a2, a3                 #; a2  = 9, a3  = 64
      0x80000a08 scfgw   a1, a4                 #; a1  = 8, a4  = 192
      0x80000a0c li      a1, 32                 #; (wrb) a1  <-- 32
      0x80000a10 scfgw   zero, a1               #; a1  = 32
      0x80000a14 scfgwi  a0, 768                #; a0  = 0x00100000
                                                #; (acc) tp  <-- 0x22000253
      0x80000a18 csrsi   ssr, 1                 #; 
      0x80000a1c fsgnj.d ft4, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft4  <-- 0.0
      0x80000a20 fsgnj.d ft5, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
      0x80000a24 fsgnj.d ft6, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) ft5  <-- 0.0
      0x80000a28 fsgnj.d ft7, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) ft6  <-- 0.0
      0x80000a2c fsgnj.d fa0, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) ft7  <-- 0.0
                                                #; (f:fpu) fa0  <-- 0.0
      0x80000a30 fsgnj.d fa1, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
      0x80000a34 fsgnj.d fa2, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fa1  <-- 0.0
      0x80000a38 fsgnj.d fa3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fa2  <-- 0.0
      0x80000a3c fsgnj.d fa4, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0, (f:fpu) fa3  <-- 0.0
                                                #; (f:fpu) fa4  <-- 0.0
      0x80000a40 fsgnj.d fa5, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
      0x80000a44 csrci   ssr, 1                 #; (f:fpu) fa5  <-- 0.0
      0x80000a48 fadd.d  ft0, ft5, ft4          #; ft5  = 0.0, ft4  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000a4c fadd.d  ft0, ft0, ft6          #; ft0  = 0.0, ft6  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000a50 fadd.d  ft0, ft0, ft7          #; ft0  = 0.0, ft7  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000a54 fadd.d  ft0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000a58 fadd.d  ft0, ft0, fa1          #; ft0  = 0.0, fa1  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000a5c fadd.d  ft0, ft0, fa2          #; ft0  = 0.0, fa2  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000a60 fadd.d  ft0, ft0, fa3          #; ft0  = 0.0, fa3  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000a64 fadd.d  ft0, ft0, fa4          #; ft0  = 0.0, fa4  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000a68 fadd.d  ft0, ft0, fa5          #; ft0  = 0.0, fa5  = 0.0
; main (test_aliasing.c:43)
      0x80000a7c lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
      0x80000a6c fsgnjx.d ft1, ft3, ft3         #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft1  <-- 0.0
                                                #; (f:fpu) ft0  <-- 0.0
                                                #; (lsu) a2  <-- 0
      0x80000a70 fsgnjx.d ft0, ft0, ft0         #; ft0  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
; main (test_aliasing.c:41)
      0x80000a74 fadd.d  fs0, ft0, ft1          #; ft0  = 0.0, ft1  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
; main (test_aliasing.c:43)
      0x80000a80 lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
      0x80000a78 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
      0x80000a84 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a84
      0x80000a88 addi    a0, a0, 865            #; a0  = 0x80002a84, (wrb) a0  <-- 0x80002de5
      0x80000a8c auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a8c
                                                #; (lsu) a3  <-- 0
      0x80000a90 jalr    ra, ra, 40             #; ra  = 0x80000a8c, (wrb) ra  <-- 0x80000a94, goto 0x80000ab4
; printf_ (printf.c:863)
      0x80000ab4 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x80000ab8 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000a94 ~~> Word[0x0011ff1c]
      0x80000abc mv      t0, a0                 #; a0  = 0x80002de5, (wrb) t0  <-- 0x80002de5
      0x80000ac0 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff3c]
      0x80000ac4 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff38]
      0x80000ac8 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff34]
      0x80000acc sw      a4, 32(sp)             #; sp  = 0x0011ff10, 192 ~~> Word[0x0011ff30]
      0x80000ad0 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
      0x80000ad4 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
      0x80000ad8 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 32 ~~> Word[0x0011ff24]
      0x80000adc addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
; printf_ (printf.c:865)
      0x80000ae0 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
; printf_ (printf.c:867)
      0x80000ae4 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001ae4
      0x80000ae8 addi    a0, a0, -988           #; a0  = 0x80001ae4, (wrb) a0  <-- 0x80001708
      0x80000aec addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
      0x80000af0 li      a2, -1                 #; (wrb) a2  <-- -1
      0x80000af4 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
      0x80000af8 mv      a3, t0                 #; t0  = 0x80002de5, (wrb) a3  <-- 0x80002de5
      0x80000afc auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000afc
      0x80000b00 jalr    ra, ra, 20             #; ra  = 0x80000afc, (wrb) ra  <-- 0x80000b04, goto 0x80000b10
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000b10 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
      0x80000b14 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000b04 ~~> Word[0x0011ff0c]
      0x80000b18 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
      0x80000b1c sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
      0x80000b20 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
      0x80000b24 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
      0x80000b28 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
      0x80000b2c sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
      0x80000b30 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
      0x80000b34 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
      0x80000b38 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
      0x80000b3c sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
      0x80000b40 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
      0x80000b44 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
      0x80000b48 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
      0x80000b4c mv      s0, a3                 #; a3  = 0x80002de5, (wrb) s0  <-- 0x80002de5
      0x80000b50 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x80000b54 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x80000b58 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b5c mv      s2, a0                 #; a0  = 0x80001708, (wrb) s2  <-- 0x80001708
      0x80000b60 j       pc + 0xc               #; goto 0x80000b6c
      0x80000b6c li      s8, 0                  #; (wrb) s8  <-- 0
      0x80000b70 li      s6, 37                 #; (wrb) s6  <-- 37
      0x80000b74 li      s11, 16                #; (wrb) s11 <-- 16
      0x80000b78 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000b7c lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000b80 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000b84 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
      0x80000b88 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000b8c addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000b90 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b94 addi    s10, s0, 2             #; s0  = 0x80002de5, (wrb) s10 <-- 0x80002de7
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b98 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000b9c li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ba0 lbu     a0, 0(s0)              #; s0  = 0x80002de5, a0  <~~ Byte[0x80002de5]
                                                #; (lsu) a0  <-- 101
      0x80000ba4 beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x80000ba8 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000bac addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000bb0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000bb4 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000bb8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000bbc jalr    s2                     #; s2  = 0x80001708, (wrb) ra  <-- 0x80000bc0, goto 0x80001708
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001708 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
      0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
      0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 0
      0x80001728 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 1 ~~> Word[0x8000319c]
      0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 0, (wrb) a4  <-- 0x8000319c
      0x80001734 sb      a0, 72(a4)             #; a4  = 0x8000319c, 101 ~~> Byte[0x800031e4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 1
      0x8000173c addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x80001740 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x80001744 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x80001748 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b0 ret                            #; ra  = 0x80000bc0, goto 0x80000bc0
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000bc0 addi    s0, s0, 1              #; s0  = 0x80002de5, (wrb) s0  <-- 0x80002de6
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000bc4 addi    s10, s10, 1            #; s10 = 0x80002de7, (wrb) s10 <-- 0x80002de8
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bc8 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bcc lbu     a0, 0(s0)              #; s0  = 0x80002de6, a0  <~~ Byte[0x80002de6]
                                                #; (lsu) a0  <-- 114
      0x80000bd0 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ba8
      0x80000ba8 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000bac addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000bb0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000bb4 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000bb8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000bbc jalr    s2                     #; s2  = 0x80001708, (wrb) ra  <-- 0x80000bc0, goto 0x80001708
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001708 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
      0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 1
      0x80001728 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 2 ~~> Word[0x8000319c]
      0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 1, (wrb) a4  <-- 0x8000319d
      0x80001734 sb      a0, 72(a4)             #; a4  = 0x8000319d, 114 ~~> Byte[0x800031e5]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 2
      0x8000173c addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x80001740 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x80001744 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001748 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b0 ret                            #; ra  = 0x80000bc0, goto 0x80000bc0
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000bc0 addi    s0, s0, 1              #; s0  = 0x80002de6, (wrb) s0  <-- 0x80002de7
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000bc4 addi    s10, s10, 1            #; s10 = 0x80002de8, (wrb) s10 <-- 0x80002de9
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bc8 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bcc lbu     a0, 0(s0)              #; s0  = 0x80002de7, a0  <~~ Byte[0x80002de7]
                                                #; (lsu) a0  <-- 114
      0x80000bd0 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ba8
      0x80000ba8 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000bac addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000bb0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000bb4 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000bb8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000bbc jalr    s2                     #; s2  = 0x80001708, (wrb) ra  <-- 0x80000bc0, goto 0x80001708
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001708 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
      0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 2
      0x80001728 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 3 ~~> Word[0x8000319c]
      0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 2, (wrb) a4  <-- 0x8000319e
      0x80001734 sb      a0, 72(a4)             #; a4  = 0x8000319e, 114 ~~> Byte[0x800031e6]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 3
      0x8000173c addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x80001740 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x80001744 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001748 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b0 ret                            #; ra  = 0x80000bc0, goto 0x80000bc0
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000bc0 addi    s0, s0, 1              #; s0  = 0x80002de7, (wrb) s0  <-- 0x80002de8
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000bc4 addi    s10, s10, 1            #; s10 = 0x80002de9, (wrb) s10 <-- 0x80002dea
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bc8 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bcc lbu     a0, 0(s0)              #; s0  = 0x80002de8, a0  <~~ Byte[0x80002de8]
                                                #; (lsu) a0  <-- 111
      0x80000bd0 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000ba8
      0x80000ba8 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000bac addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000bb0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000bb4 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000bb8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000bbc jalr    s2                     #; s2  = 0x80001708, (wrb) ra  <-- 0x80000bc0, goto 0x80001708
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001708 beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
      0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 3
      0x80001728 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 4 ~~> Word[0x8000319c]
      0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 3, (wrb) a4  <-- 0x8000319f
      0x80001734 sb      a0, 72(a4)             #; a4  = 0x8000319f, 111 ~~> Byte[0x800031e7]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 4
      0x8000173c addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x80001740 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x80001744 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x80001748 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b0 ret                            #; ra  = 0x80000bc0, goto 0x80000bc0
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000bc0 addi    s0, s0, 1              #; s0  = 0x80002de8, (wrb) s0  <-- 0x80002de9
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000bc4 addi    s10, s10, 1            #; s10 = 0x80002dea, (wrb) s10 <-- 0x80002deb
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bc8 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bcc lbu     a0, 0(s0)              #; s0  = 0x80002de9, a0  <~~ Byte[0x80002de9]
                                                #; (lsu) a0  <-- 114
      0x80000bd0 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ba8
      0x80000ba8 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000bac addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000bb0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000bb4 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000bb8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000bbc jalr    s2                     #; s2  = 0x80001708, (wrb) ra  <-- 0x80000bc0, goto 0x80001708
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001708 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
      0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 4
      0x80001728 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 5 ~~> Word[0x8000319c]
      0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 4, (wrb) a4  <-- 0x800031a0
      0x80001734 sb      a0, 72(a4)             #; a4  = 0x800031a0, 114 ~~> Byte[0x800031e8]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 5
      0x8000173c addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x80001740 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x80001744 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001748 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b0 ret                            #; ra  = 0x80000bc0, goto 0x80000bc0
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000bc0 addi    s0, s0, 1              #; s0  = 0x80002de9, (wrb) s0  <-- 0x80002dea
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000bc4 addi    s10, s10, 1            #; s10 = 0x80002deb, (wrb) s10 <-- 0x80002dec
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bc8 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bcc lbu     a0, 0(s0)              #; s0  = 0x80002dea, a0  <~~ Byte[0x80002dea]
                                                #; (lsu) a0  <-- 32
      0x80000bd0 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000ba8
      0x80000ba8 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000bac addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000bb0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000bb4 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000bb8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000bbc jalr    s2                     #; s2  = 0x80001708, (wrb) ra  <-- 0x80000bc0, goto 0x80001708
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001708 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
      0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 5
      0x80001728 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 6 ~~> Word[0x8000319c]
      0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 5, (wrb) a4  <-- 0x800031a1
      0x80001734 sb      a0, 72(a4)             #; a4  = 0x800031a1, 32 ~~> Byte[0x800031e9]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 6
      0x8000173c addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x80001740 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x80001744 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001748 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b0 ret                            #; ra  = 0x80000bc0, goto 0x80000bc0
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000bc0 addi    s0, s0, 1              #; s0  = 0x80002dea, (wrb) s0  <-- 0x80002deb
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000bc4 addi    s10, s10, 1            #; s10 = 0x80002dec, (wrb) s10 <-- 0x80002ded
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bc8 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bcc lbu     a0, 0(s0)              #; s0  = 0x80002deb, a0  <~~ Byte[0x80002deb]
                                                #; (lsu) a0  <-- 61
      0x80000bd0 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000ba8
      0x80000ba8 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000bac addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000bb0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000bb4 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000bb8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000bbc jalr    s2                     #; s2  = 0x80001708, (wrb) ra  <-- 0x80000bc0, goto 0x80001708
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001708 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
      0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 6
      0x80001728 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 7 ~~> Word[0x8000319c]
      0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 6, (wrb) a4  <-- 0x800031a2
      0x80001734 sb      a0, 72(a4)             #; a4  = 0x800031a2, 61 ~~> Byte[0x800031ea]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 7
      0x8000173c addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x80001740 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x80001744 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x80001748 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b0 ret                            #; ra  = 0x80000bc0, goto 0x80000bc0
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000bc0 addi    s0, s0, 1              #; s0  = 0x80002deb, (wrb) s0  <-- 0x80002dec
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000bc4 addi    s10, s10, 1            #; s10 = 0x80002ded, (wrb) s10 <-- 0x80002dee
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bc8 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bcc lbu     a0, 0(s0)              #; s0  = 0x80002dec, a0  <~~ Byte[0x80002dec]
                                                #; (lsu) a0  <-- 32
      0x80000bd0 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000ba8
      0x80000ba8 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000bac addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000bb0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000bb4 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000bb8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000bbc jalr    s2                     #; s2  = 0x80001708, (wrb) ra  <-- 0x80000bc0, goto 0x80001708
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001708 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
      0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 7
      0x80001728 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 8 ~~> Word[0x8000319c]
      0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 7, (wrb) a4  <-- 0x800031a3
      0x80001734 sb      a0, 72(a4)             #; a4  = 0x800031a3, 32 ~~> Byte[0x800031eb]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 8
      0x8000173c addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x80001740 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x80001744 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001748 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b0 ret                            #; ra  = 0x80000bc0, goto 0x80000bc0
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000bc0 addi    s0, s0, 1              #; s0  = 0x80002dec, (wrb) s0  <-- 0x80002ded
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000bc4 addi    s10, s10, 1            #; s10 = 0x80002dee, (wrb) s10 <-- 0x80002def
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bc8 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bcc lbu     a0, 0(s0)              #; s0  = 0x80002ded, a0  <~~ Byte[0x80002ded]
                                                #; (lsu) a0  <-- 37
      0x80000bd0 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000ba8
      0x80000ba8 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000bd8
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000bd8 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bdc j       pc + 0x10              #; goto 0x80000bec
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000bec lbu     a0, -1(s10)            #; s10 = 0x80002def, a0  <~~ Byte[0x80002dee]
                                                #; (lsu) a0  <-- 102
      0x80000bf0 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000bf4 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000c2c
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000c2c addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000c30 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000c34 addi    a1, s10, -1            #; s10 = 0x80002def, (wrb) a1  <-- 0x80002dee
      0x80000c38 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000c3c bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000cb8
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000cb8 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000cbc bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000d0c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000d0c li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000d10 mv      s10, a1                #; a1  = 0x80002dee, (wrb) s10 <-- 0x80002dee
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000d14 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000d18 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000d1c j       pc + 0xc               #; goto 0x80000d28
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000d28 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000d2c srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000d30 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000d34 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000d38 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000d3c bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000da0
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000da0 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000da4 li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000da8 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000dac slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000db0 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002db0
      0x80000db4 addi    a2, a2, 180            #; a2  = 0x80002db0, (wrb) a2  <-- 0x80002e64
      0x80000db8 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002e64, (wrb) a1  <-- 0x80002f68
      0x80000dbc lw      a2, 0(a1)              #; a1  = 0x80002f68, a2  <~~ Word[0x80002f68]
      0x80000dc0 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000dc4 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000df8
      0x80000dc8 jr      a2                     #; a2  = 0x80000df8, goto 0x80000df8
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80000df8 li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000dfc bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000e04
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000e04 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
      0x80000e08 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
      0x80000e0c fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
                                                #; (f:lsu) fa0  <-- 0.0
      0x80000e10 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
      0x80000e14 mv      a0, s2                 #; s2  = 0x80001708, (wrb) a0  <-- 0x80001708
      0x80000e18 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000e1c mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000e20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e24 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000e28 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000e2c mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000e30 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001e30
      0x80000e34 jalr    ra, ra, -1656          #; ra  = 0x80001e30, (wrb) ra  <-- 0x80000e38, goto 0x800017b8
; _ftoa (printf.c:340)
      0x800017b8 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
      0x800017bc sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000e38 ~~> Word[0x0011fe9c]
      0x800017c0 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
      0x800017c4 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
      0x800017c8 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001708 ~~> Word[0x0011fe90]
      0x800017cc sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
      0x800017d0 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
      0x800017d4 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
      0x800017d8 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
      0x800017dc sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
      0x800017e0 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
      0x800017e4 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
      0x800017e8 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002dee ~~> Word[0x0011fe70]
      0x800017ec fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe68]
      0x800017f8 auipc   s1, 0x2                #; (wrb) s1  <-- 0x800037f8
      0x800017f0 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
      0x800017fc addi    s1, s1, -1800          #; s1  = 0x800037f8, (wrb) s1  <-- 0x800030f0
      0x800017f4 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
; _ftoa (printf.c:351)
      0x80001808 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
      0x80001800 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x800030f0]
; _ftoa (printf.c:0)
      0x8000180c mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x80001810 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x80001804 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
      0x80001814 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x80001818 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
      0x8000181c mv      s7, a0                 #; a0  = 0x80001708, (wrb) s7  <-- 0x80001708
; _ftoa (printf.c:351)
      0x80001820 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001910
; _ftoa (printf.c:0)
      0x80001914 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002914
      0x80001918 addi    a0, a0, 2020           #; a0  = 0x80002914, (wrb) a0  <-- 0x800030f8
      0x80001910 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x8000191c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030f8]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x80001920 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x80001924 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001940
; _ftoa (printf.c:0)
      0x80001940 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002940
      0x80001944 addi    a0, a0, 1984           #; a0  = 0x80002940, (wrb) a0  <-- 0x80003100
      0x8000194c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000294c
      0x80001948 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003100]
      0x80001950 addi    a0, a0, 1980           #; a0  = 0x8000294c, (wrb) a0  <-- 0x80003108
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
      0x80001954 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003108]
; _ftoa (printf.c:358)
      0x80001958 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
      0x8000195c fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
                                                #; (acc) a0  <-- 0x00b57533
      0x80001960 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80001964 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001a60
; _ftoa (printf.c:374)
      0x80001a60 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x80001a64 li      s8, 6                  #; (wrb) s8  <-- 6
      0x80001a68 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001a70
; _ftoa (printf.c:0)
      0x80001a70 li      a0, 10                 #; (wrb) a0  <-- 10
; _ftoa (printf.c:378)
      0x80001a78 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001ab0
; _ftoa (printf.c:0)
      0x80001a74 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs2  <-- 0.0
      0x80001ab0 li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x80001ab4 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x80001ab8 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002ab8
      0x80001abc addi    a1, a1, 1280           #; a1  = 0x80002ab8, (wrb) a1  <-- 0x80002fb8
      0x80001ac0 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002fb8, (wrb) a0  <-- 0x80002fe8
      0x80001ac4 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002fe8]
; _ftoa (printf.c:383)
      0x80001ac8 fcvt.w.d s1, fs2               #; fs2  = 0.0
; _ftoa (printf.c:384)
      0x80001acc fcvt.d.w ft0, s1               #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
                                                #; (f:lsu) ft1  <-- 1000000.0000000
; _ftoa (printf.c:0)
      0x80001ad8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002ad8
      0x80001ad0 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
      0x80001adc addi    a0, a0, 1592           #; a0  = 0x80002ad8, (wrb) a0  <-- 0x80003110
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:384)
      0x80001ad4 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:0)
      0x80001ae0 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003110]
; _ftoa (printf.c:385)
      0x80001ae4 fcvt.wu.d a0, ft2              #; ft2  = 0.0
                                                #; (acc) gp  <-- 0xd21501d3
; _ftoa (printf.c:386)
      0x80001ae8 fcvt.d.wu ft3, a0              #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80001aec fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
                                                #; (f:lsu) ft0  <-- 0.5
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:388)
      0x80001af0 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x80001af4 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001b14
; _ftoa (printf.c:396)
      0x80001b14 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
                                                #; (acc) s4  <-- 0x00059a63
      0x80001b18 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001b2c
; _ftoa (printf.c:0)
      0x80001b2c fcvt.d.w fs1, zero             #; ac1  = 0
                                                #; (f:fpu) fs1  <-- 0.0
; _ftoa (printf.c:403)
      0x80001b30 beqz    s8, pc + 216           #; s8  = 6, not taken
; _ftoa (printf.c:0)
      0x80001b34 li      a2, 0                  #; (wrb) a2  <-- 0
      0x80001b38 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:414)
      0x80001b3c add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
      0x80001b40 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001b44 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x80001b48 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80001b4c addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80001b50 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001b54 li      a7, 9                  #; (wrb) a7  <-- 9
      0x80001b58 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80001b5c mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x80001b60 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001b64 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001b68 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001b6c sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001b70 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x80001b74 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
      0x80001b78 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
; _ftoa (printf.c:417)
      0x80001b7c addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80001b80 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x80001b84 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x80001b88 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80001b8c li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001b90 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x80001b94 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x80001b98 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x80001b9c or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x80001ba0 bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x80001ba4 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
; _ftoa (printf.c:422)
      0x80001ba8 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
      0x80001bac not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x80001bb0 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x80001bb4 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x80001bb8 li      a1, 31                 #; (wrb) a1  <-- 31
      0x80001bbc sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x80001bc0 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
      0x80001bc4 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x80001bc8 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001bd0
      0x80001bd0 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x80001bd4 li      a1, 48                 #; (wrb) a1  <-- 48
      0x80001bd8 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000bd8
      0x80001bdc jalr    ra, ra, -1664          #; ra  = 0x80000bd8, (wrb) ra  <-- 0x80001be0, goto 0x80000558
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
      0x800005ec ret                            #; ra  = 0x80001be0, goto 0x80001be0
; _ftoa (printf.c:0)
      0x80001be0 li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x80001be4 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x80001be8 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80001bec xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x80001bf0 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80001bf4 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001bf8 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001bfc bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001be4
      0x80001be4 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x80001be8 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80001bec xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x80001bf0 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80001bf4 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001bf8 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001bfc bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001be4
      0x80001be4 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x80001be8 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80001bec xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x80001bf0 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80001bf4 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001bf8 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001bfc bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001be4
      0x80001be4 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x80001be8 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80001bec xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x80001bf0 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80001bf4 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001bf8 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001bfc bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001be4
      0x80001be4 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x80001be8 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80001bec xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x80001bf0 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80001bf4 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001bf8 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001bfc bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001c00 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x80001c04 j       pc + 0x28              #; goto 0x80001c2c
      0x80001c2c beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001c30 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001c34 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:427)
      0x80001c38 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
      0x80001c3c li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001c40 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
      0x80001c44 j       pc + 0x8               #; goto 0x80001c4c
; _ftoa (printf.c:0)
      0x80001c4c li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001c50 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001c54 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001c58 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001c5c flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
      0x80001c60 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001c64 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001c68 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001c6c addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
      0x80001c70 li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001c74 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001c78 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001c7c srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001c80 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001c84 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001c88 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001c8c sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001c90 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80001c94 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001c98 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
; _ftoa (printf.c:434)
      0x80001c9c addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001ca0 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
; _ftoa (printf.c:0)
      0x80001ca4 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001ca8 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001cac bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80001cb0 j       pc + 0x8               #; goto 0x80001cb8
; _ftoa (printf.c:440)
      0x80001cb8 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001cbc li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001cc0 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001d2c
; _ftoa (printf.c:0)
      0x80001d2c li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001d30 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80001d34 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001d4c
; _ftoa (printf.c:453)
      0x80001d4c andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001d50 bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001d54 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001d58 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001d84
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001d84 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001d88 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80001d8c xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001d90 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001d94 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001d98 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001d9c bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001dc8
; _ftoa (printf.c:0)
      0x80001dc8 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001dcc beqz    s8, pc + 56            #; s8  = 8, not taken
      0x80001dd0 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001dd4 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
      0x80001dd8 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
      0x80001ddc addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
                                                #; (lsu) a0  <-- 48
      0x80001de0 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
      0x80001de4 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001de8 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80001dec mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001df0 jalr    s7                     #; s7  = 0x80001708, (wrb) ra  <-- 0x80001df4, goto 0x80001708
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001708 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
      0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 8
      0x80001728 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 9 ~~> Word[0x8000319c]
      0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 8, (wrb) a4  <-- 0x800031a4
      0x80001734 sb      a0, 72(a4)             #; a4  = 0x800031a4, 48 ~~> Byte[0x800031ec]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 9
      0x8000173c addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x80001740 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x80001744 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001748 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b0 ret                            #; ra  = 0x80001df4, goto 0x80001df4
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001df4 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x80001df8 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001dfc bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001dd4
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001dd4 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
      0x80001dd8 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
      0x80001ddc addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001de0 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80001de4 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001de8 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001dec mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001df0 jalr    s7                     #; s7  = 0x80001708, (wrb) ra  <-- 0x80001df4, goto 0x80001708
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001708 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
      0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 9
      0x80001728 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 10 ~~> Word[0x8000319c]
      0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 9, (wrb) a4  <-- 0x800031a5
      0x80001734 sb      a0, 72(a4)             #; a4  = 0x800031a5, 46 ~~> Byte[0x800031ed]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 10
      0x8000173c addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x80001740 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x80001744 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x80001748 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b0 ret                            #; ra  = 0x80001df4, goto 0x80001df4
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001df4 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001df8 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001dfc bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001dd4
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001dd4 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
      0x80001dd8 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
      0x80001ddc addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001de0 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001de4 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001de8 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001dec mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001df0 jalr    s7                     #; s7  = 0x80001708, (wrb) ra  <-- 0x80001df4, goto 0x80001708
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001708 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
      0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 10
      0x80001728 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 11 ~~> Word[0x8000319c]
      0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 10, (wrb) a4  <-- 0x800031a6
      0x80001734 sb      a0, 72(a4)             #; a4  = 0x800031a6, 48 ~~> Byte[0x800031ee]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 11
      0x8000173c addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x80001740 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x80001744 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001748 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b0 ret                            #; ra  = 0x80001df4, goto 0x80001df4
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001df4 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001df8 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001dfc bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001dd4
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001dd4 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
      0x80001dd8 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
      0x80001ddc addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001de0 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001de4 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001de8 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001dec mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001df0 jalr    s7                     #; s7  = 0x80001708, (wrb) ra  <-- 0x80001df4, goto 0x80001708
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001708 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
      0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 11
      0x80001728 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 12 ~~> Word[0x8000319c]
      0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 11, (wrb) a4  <-- 0x800031a7
      0x80001734 sb      a0, 72(a4)             #; a4  = 0x800031a7, 48 ~~> Byte[0x800031ef]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 12
      0x8000173c addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x80001740 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x80001744 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001748 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b0 ret                            #; ra  = 0x80001df4, goto 0x80001df4
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001df4 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001df8 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001dfc bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001dd4
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001dd4 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
      0x80001dd8 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
      0x80001ddc addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001de0 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001de4 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001de8 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001dec mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001df0 jalr    s7                     #; s7  = 0x80001708, (wrb) ra  <-- 0x80001df4, goto 0x80001708
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001708 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
      0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 12
      0x80001728 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 13 ~~> Word[0x8000319c]
      0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 12, (wrb) a4  <-- 0x800031a8
      0x80001734 sb      a0, 72(a4)             #; a4  = 0x800031a8, 48 ~~> Byte[0x800031f0]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 13
      0x8000173c addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x80001740 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x80001744 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001748 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b0 ret                            #; ra  = 0x80001df4, goto 0x80001df4
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001df4 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001df8 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001dfc bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001dd4
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001dd4 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
      0x80001dd8 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
      0x80001ddc addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001de0 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001de4 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001de8 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001dec mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001df0 jalr    s7                     #; s7  = 0x80001708, (wrb) ra  <-- 0x80001df4, goto 0x80001708
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001708 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
      0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 13
      0x80001728 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 14 ~~> Word[0x8000319c]
      0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 13, (wrb) a4  <-- 0x800031a9
      0x80001734 sb      a0, 72(a4)             #; a4  = 0x800031a9, 48 ~~> Byte[0x800031f1]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 14
      0x8000173c addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x80001740 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x80001744 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001748 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b0 ret                            #; ra  = 0x80001df4, goto 0x80001df4
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001df4 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001df8 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001dfc bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001dd4
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001dd4 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
      0x80001dd8 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
      0x80001ddc addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001de0 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001de4 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001de8 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001dec mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001df0 jalr    s7                     #; s7  = 0x80001708, (wrb) ra  <-- 0x80001df4, goto 0x80001708
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001708 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
      0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 14
      0x80001728 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 15 ~~> Word[0x8000319c]
      0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 14, (wrb) a4  <-- 0x800031aa
      0x80001734 sb      a0, 72(a4)             #; a4  = 0x800031aa, 48 ~~> Byte[0x800031f2]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 15
      0x8000173c addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x80001740 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x80001744 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001748 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b0 ret                            #; ra  = 0x80001df4, goto 0x80001df4
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001df4 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001df8 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001dfc bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001dd4
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001dd4 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
      0x80001dd8 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
      0x80001ddc addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001de0 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001de4 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001de8 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001dec mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001df0 jalr    s7                     #; s7  = 0x80001708, (wrb) ra  <-- 0x80001df4, goto 0x80001708
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001708 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
      0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 15
      0x80001728 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 16 ~~> Word[0x8000319c]
      0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 15, (wrb) a4  <-- 0x800031ab
      0x80001734 sb      a0, 72(a4)             #; a4  = 0x800031ab, 48 ~~> Byte[0x800031f3]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 16
      0x8000173c addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x80001740 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x80001744 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001748 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x8000174c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001750 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b0
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b0 ret                            #; ra  = 0x80001df4, goto 0x80001df4
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001df4 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001df8 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001dfc bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001e00 j       pc + 0x8               #; goto 0x80001e08
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e08 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x80001e0c sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80001e10 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001e14 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001e18 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001e1c bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001e4c
; _ftoa (printf.c:0)
      0x80001e4c mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x80001e50 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80001e54 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
      0x80001e58 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
      0x80001e5c fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0
      0x80001e60 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
                                                #; (lsu) s10 <-- 0x80002dee
      0x80001e64 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 8
      0x80001e68 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 16
      0x80001e6c lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x80001e70 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x80001e74 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- -1
      0x80001e78 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0x0011ff17
      0x80001e7c lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0x0011ff30
      0x80001e80 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x80001708
      0x80001e84 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 8
      0x80001e88 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0
      0x80001e8c lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
      0x80001e90 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80000e38
      0x80001e94 ret                            #; ra  = 0x80000e38, goto 0x80000e38
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e38 j       pc + 0x7c0             #; goto 0x800015f8
      0x800015f8 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x800015fc li      s6, 37                 #; (wrb) s6  <-- 37
      0x80001600 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80001604 addi    s0, s10, 1             #; s10 = 0x80002dee, (wrb) s0  <-- 0x80002def
      0x80001608 j       pc - 0xa74             #; goto 0x80000b94
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b94 addi    s10, s0, 2             #; s0  = 0x80002def, (wrb) s10 <-- 0x80002df1
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b98 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x80000b9c li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ba0 lbu     a0, 0(s0)              #; s0  = 0x80002def, a0  <~~ Byte[0x80002def]
                                                #; (lsu) a0  <-- 10
      0x80000ba4 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000ba8 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000bac addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x80000bb0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000bb4 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x80000bb8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000bbc jalr    s2                     #; s2  = 0x80001708, (wrb) ra  <-- 0x80000bc0, goto 0x80001708
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001708 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000170c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001718 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003718
      0x8000171c addi    a3, a3, -1404          #; a3  = 0x80003718, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001720 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001724 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 16
      0x80001728 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x8000172c sw      a5, 0(a1)              #; a1  = 0x8000319c, 17 ~~> Word[0x8000319c]
      0x80001730 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 16, (wrb) a4  <-- 0x800031ac
      0x80001734 sb      a0, 72(a4)             #; a4  = 0x800031ac, 10 ~~> Byte[0x800031f4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001738 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 17
      0x8000173c addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x80001740 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x80001744 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x80001748 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x8000174c and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x80001750 bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001754 add     a0, a3, a2             #; a3  = 0x8000319c, a2  = 0, (wrb) a0  <-- 0x8000319c
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001758 addi    a2, a0, 72             #; a0  = 0x8000319c, (wrb) a2  <-- 0x800031e4
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000175c sw      zero, 12(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031a8]
      0x80001760 li      a3, 64                 #; (wrb) a3  <-- 64
      0x80001764 sw      a3, 8(a0)              #; a0  = 0x8000319c, 64 ~~> Word[0x800031a4]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001768 sw      zero, 20(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031b0]
      0x8000176c li      a3, 1                  #; (wrb) a3  <-- 1
      0x80001770 sw      a3, 16(a0)             #; a0  = 0x8000319c, 1 ~~> Word[0x800031ac]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001774 sw      zero, 28(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031b8]
      0x80001778 sw      a2, 24(a0)             #; a0  = 0x8000319c, 0x800031e4 ~~> Word[0x800031b4]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000177c lw      a2, 0(a1)              #; a1  = 0x8000319c, a2  <~~ Word[0x8000319c]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001780 addi    a3, a0, 8              #; a0  = 0x8000319c, (wrb) a3  <-- 0x800031a4
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001784 sw      zero, 36(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031c0]
                                                #; (lsu) a2  <-- 17
      0x80001788 sw      a2, 32(a0)             #; a0  = 0x8000319c, 17 ~~> Word[0x800031bc]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000178c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000378c
      0x80001790 addi    a0, a0, -1868          #; a0  = 0x8000378c, (wrb) a0  <-- 0x80003040
      0x80001794 sw      a3, 0(a0)              #; a0  = 0x80003040, 0x800031a4 ~~> Word[0x80003040]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001798 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003798
      0x8000179c addi    a0, a0, -1816          #; a0  = 0x80003798, (wrb) a0  <-- 0x80003080
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a0 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
                                                #; (lsu) a2  <-- 0
      0x800017a4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800017a0
      0x800017a0 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
                                                #; (lsu) a2  <-- 0
      0x800017a4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800017a0
      0x800017a0 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
                                                #; (lsu) a2  <-- 0
      0x800017a4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800017a0
      0x800017a0 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
                                                #; (lsu) a2  <-- 0
      0x800017a4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800017a0
      0x800017a0 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
                                                #; (lsu) a2  <-- 0
      0x800017a4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800017a0
      0x800017a0 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
                                                #; (lsu) a2  <-- 0
      0x800017a4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800017a0
      0x800017a0 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
                                                #; (lsu) a2  <-- 0
      0x800017a4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800017a0
      0x800017a0 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
                                                #; (lsu) a2  <-- 1
      0x800017a4 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 sw      zero, 0(a0)            #; a0  = 0x80003080, 0 ~~> Word[0x80003080]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017ac sw      zero, 0(a1)            #; a1  = 0x8000319c, 0 ~~> Word[0x8000319c]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b0 ret                            #; ra  = 0x80000bc0, goto 0x80000bc0
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000bc0 addi    s0, s0, 1              #; s0  = 0x80002def, (wrb) s0  <-- 0x80002df0
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000bc4 addi    s10, s10, 1            #; s10 = 0x80002df1, (wrb) s10 <-- 0x80002df2
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bc8 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bcc lbu     a0, 0(s0)              #; s0  = 0x80002df0, a0  <~~ Byte[0x80002df0]
                                                #; (lsu) a0  <-- 0
      0x80000bd0 bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000bd4 j       pc + 0xad8             #; goto 0x800016ac
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x800016ac mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x800016b0 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x800016b8
      0x800016b8 li      a0, 0                  #; (wrb) a0  <-- 0
      0x800016bc mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800016c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800016c4 jalr    s2                     #; s2  = 0x80001708, (wrb) ra  <-- 0x800016c8, goto 0x80001708
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001708 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800017b0
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b0 ret                            #; ra  = 0x800016c8, goto 0x800016c8
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x800016c8 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x800016cc lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
                                                #; (lsu) s11 <-- 0
      0x800016d0 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
                                                #; (lsu) s10 <-- 0
      0x800016d4 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
                                                #; (lsu) s9  <-- 0
      0x800016d8 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
                                                #; (lsu) s8  <-- 0
      0x800016dc lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
                                                #; (lsu) s7  <-- 0
      0x800016e0 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
                                                #; (lsu) s6  <-- 0
      0x800016e4 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
                                                #; (lsu) s5  <-- 0
      0x800016e8 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
                                                #; (lsu) s4  <-- 0
      0x800016ec lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
                                                #; (lsu) s3  <-- 0
      0x800016f0 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
                                                #; (lsu) s2  <-- 0
      0x800016f4 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
                                                #; (lsu) s1  <-- 0
      0x800016f8 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
                                                #; (lsu) s0  <-- 0
      0x800016fc lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
      0x80001700 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
                                                #; (lsu) ra  <-- 0x80000b04
      0x80001704 ret                            #; ra  = 0x80000b04, goto 0x80000b04
; printf_ (printf.c:869)
      0x80000b04 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
      0x80000b08 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x80000a94
      0x80000b0c ret                            #; ra  = 0x80000a94, goto 0x80000a94
; main (test_aliasing.c:0)
      0x80000a94 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a94
      0x80000a98 addi    a0, a0, 1620           #; a0  = 0x80002a94, (wrb) a0  <-- 0x800030e8
      0x80000a9c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030e8]
; main (test_aliasing.c:46)
      0x80000aa8 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
      0x80000aac addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
                                                #; (f:lsu) ft0  <-- 0.0001
; main (test_aliasing.c:45)
      0x80000aa0 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0
                                                #; (lsu) ra  <-- 0x80002b60
; main (test_aliasing.c:46)
      0x80000ab0 ret                            #; ra  = 0x80002b60, goto 0x80002b60
      0x80000aa4 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
                                                #; (f:lsu) fs0  <-- 0.0
; ?? (start.S:184)
      0x80002b60 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x80002b64 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b64
      0x80002b68 jalr    ra, ra, 524            #; ra  = 0x80002b64, (wrb) ra  <-- 0x80002b6c, goto 0x80002d70
; ?? (start_snitch.S:33)
      0x80002d70 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002d74 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002b6c ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002d78 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d78
      0x80002d7c jalr    ra, ra, -1256          #; ra  = 0x80002d78, (wrb) ra  <-- 0x80002d80, goto 0x80002890
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002890 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002894 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002898 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000289c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800028a0 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x800028a4 ret                            #; ra  = 0x80002d80, goto 0x80002d80
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002d80 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002d84 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002d88 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002d8c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002b6c
; ?? (start_snitch.S:40)
      0x80002d90 ret                            #; ra  = 0x80002b6c, goto 0x80002b6c
; ?? (start.S:195)
      0x80002b6c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x80002b70 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b70
      0x80002b74 jalr    ra, ra, 556            #; ra  = 0x80002b70, (wrb) ra  <-- 0x80002b78, goto 0x80002d9c
; ?? (start_snitch.S:15)
      0x80002d9c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80002da0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80002da4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002b78 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80002da8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002da8
      0x80002dac jalr    ra, ra, -1336          #; ra  = 0x80002da8, (wrb) ra  <-- 0x80002db0, goto 0x80002870
; snrt_global_core_idx (team.c:32)
      0x80002870 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002874 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002878 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000287c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002880 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x80002884 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x80002888 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x8000288c ret                            #; ra  = 0x80002db0, goto 0x80002db0
; ?? (start_snitch.S:20)
      0x80002db0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x80002db4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80002db8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x80002dbc bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x80002b78
; ?? (start_snitch.S:28)
      0x80002dc0 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x80002dc4 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x80002dc8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002dc8
      0x80002dcc addi    t1, t1, 632            #; t1  = 0x80002dc8, (wrb) t1  <-- 0x80003040
; ?? (start_snitch.S:31)
      0x80002dd0 sw      t0, 0(t1)              #; t1  = 0x80003040, 1 ~~> Word[0x80003040]
; ?? (start_snitch.S:32)
      0x80002dd4 ret                            #; ra  = 0x80002b78, goto 0x80002b78
; ?? (start.S:198)
      0x80002b78 wfi                            #; 
                        tion 0 @ (12, 5618):
                          141
                          142
                           14
                           23
                      11.7376
                       0.2301
                       0.1017
                          1.0
                          1.0
                            0
                       1.3495
                       6.9130
                       0.0260
                       0.0184
                       0.7055
                         5607
                       0.2561
