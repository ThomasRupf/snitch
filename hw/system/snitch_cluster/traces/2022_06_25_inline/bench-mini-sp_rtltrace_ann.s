; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x80002980
      0x00001014 jalr    t0                     #; t0  = 0x80002980, (wrb) ra  <-- 4120, goto 0x80002980
; ?? (start.S:20)
      0x80002980 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003980
; ?? (start.S:21)
      0x80002984 addi    gp, gp, -248           #; gp  = 0x80003980, (wrb) gp  <-- 0x80003888
; ?? (start.S:28)
      0x80002988 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002988
      0x8000298c jalr    ra, ra, 964            #; ra  = 0x80002988, (wrb) ra  <-- 0x80002990, goto 0x80002d4c
; ?? (start_snitch.S:16)
      0x80002d4c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80002d50 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80002d54 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80002d58 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x80002d5c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80002d60 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80002d64 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80002d68 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x80002d6c mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80002d70 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80002d74 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80002d78 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x80002d7c ret                            #; ra  = 0x80002990, goto 0x80002990
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x80002990 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x80002994 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x80002998 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002998
      0x8000299c jalr    ra, ra, 1036           #; ra  = 0x80002998, (wrb) ra  <-- 0x800029a0, goto 0x80002da4
; ?? (start_snitch.S:48)
      0x80002da4 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80002da8 ret                            #; ra  = 0x800029a0, goto 0x800029a0
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x800029a0 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x800029a4 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x800029a8 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x800029ac sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x800029b0 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x800029b4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800029b4
      0x800029b8 addi    t0, t0, 2020           #; t0  = 0x800029b4, (wrb) t0  <-- 0x80003198
; ?? (start.S:49)
      0x800029bc auipc   t1, 0x0                #; (wrb) t1  <-- 0x800029bc
      0x800029c0 addi    t1, t1, 2016           #; t1  = 0x800029bc, (wrb) t1  <-- 0x8000319c
; ?? (start.S:50)
      0x800029c4 bge     t0, t1, pc + 16        #; t0  = 0x80003198, t1  = 0x8000319c, not taken
; ?? (start.S:51)
      0x800029c8 sw      zero, 0(t0)            #; t0  = 0x80003198, 0 ~~> Word[0x80003198]
; ?? (start.S:52)
      0x800029cc addi    t0, t0, 4              #; t0  = 0x80003198, (wrb) t0  <-- 0x8000319c
; ?? (start.S:53)
      0x800029d0 blt     t0, t1, pc - 8         #; t0  = 0x8000319c, t1  = 0x8000319c, not taken
; ?? (start.S:58)
      0x800029d4 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x800029d8 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x800029dc beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x800029e0 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x800029e4 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x800029e8 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x800029ec fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x800029f0 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x800029f4 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x800029f8 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x800029fc fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x80002a00 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x80002a04 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x80002a08 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x80002a0c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x80002a10 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x80002a14 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x80002a18 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x80002a1c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x80002a20 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x80002a24 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x80002a28 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x80002a2c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x80002a30 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x80002a34 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x80002a38 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x80002a3c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x80002a40 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x80002a44 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x80002a48 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x80002a4c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x80002a50 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x80002a54 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x80002a58 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x80002a5c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x80002a60 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x80002a64 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x80002a68 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a68
      0x80002a6c lw      t0, 900(t0)            #; t0  = 0x80002a68, t0  <~~ Word[0x80002dec]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x80002a70 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x80002a74 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x80002a78 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002a78
      0x80002a7c lw      t2, 880(t2)            #; t2  = 0x80002a78, t2  <~~ Word[0x80002de8]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x80002a80 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x80002a84 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x80002a88 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x80002a8c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x80002a90 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x80002a94 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x80002a98 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x80002a9c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x80002aa0 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002aa0
      0x80002aa4 addi    t0, t0, 1512           #; t0  = 0x80002aa0, (wrb) t0  <-- 0x80003088
; ?? (start.S:125)
      0x80002aa8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002aa8
      0x80002aac addi    t1, t1, 1504           #; t1  = 0x80002aa8, (wrb) t1  <-- 0x80003088
; ?? (start.S:126)
      0x80002ab0 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002ab0
      0x80002ab4 addi    t2, t2, 1496           #; t2  = 0x80002ab0, (wrb) t2  <-- 0x80003088
; ?? (start.S:127)
      0x80002ab8 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002ab8
      0x80002abc addi    t3, t3, 1504           #; t3  = 0x80002ab8, (wrb) t3  <-- 0x80003098
; ?? (start.S:128)
      0x80002ac0 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003088, (wrb) sp  <-- 0x80122ff8
; ?? (start.S:129)
      0x80002ac4 sub     sp, sp, t1             #; sp  = 0x80122ff8, t1  = 0x80003088, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x80002ac8 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003088, (wrb) sp  <-- 0x80122ff8
; ?? (start.S:131)
      0x80002acc sub     sp, sp, t3             #; sp  = 0x80122ff8, t3  = 0x80003098, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x80002ad0 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x80002ad4 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x80002ad8 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x80002adc mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x80002ae0 bge     t0, t1, pc + 24        #; t0  = 0x80003088, t1  = 0x80003088, taken, goto 0x80002af8
; ?? (start.S:147)
      0x80002af8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002af8
      0x80002afc addi    t0, t0, 1424           #; t0  = 0x80002af8, (wrb) t0  <-- 0x80003088
; ?? (start.S:148)
      0x80002b00 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002b00
      0x80002b04 addi    t1, t1, 1432           #; t1  = 0x80002b00, (wrb) t1  <-- 0x80003098
; ?? (start.S:149)
      0x80002b08 bge     t0, t1, pc + 20        #; t0  = 0x80003088, t1  = 0x80003098, not taken
; ?? (start.S:150)
      0x80002b0c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x80002b10 addi    t0, t0, 4              #; t0  = 0x80003088, (wrb) t0  <-- 0x8000308c
; ?? (start.S:152)
      0x80002b14 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x80002b18 blt     t0, t2, pc - 12        #; t0  = 0x8000308c, t2  = 0x80003088, not taken
; ?? (start.S:158)
      0x80002b1c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x80002b20 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x80002b24 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x80002b28 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x80002b2c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x80002b30 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x80002b34 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b34
      0x80002b38 jalr    ra, ra, -1064          #; ra  = 0x80002b34, (wrb) ra  <-- 0x80002b3c, goto 0x8000270c
; _snrt_init_team (start.c:49)
      0x8000270c sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x80002710 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x80002714 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x80002718 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x8000271c lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x80002720 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x80002724 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x80002728 mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x8000272c mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x80002730 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x80002734 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x80002738 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x8000273c divu    a0, a0, t0             #; a0  = 0, t0  = 8
; _snrt_init_team (start.c:54)
      0x80002740 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x80002744 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x80002748 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x8000274c sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x80002750 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x80002754 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x80002758 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x8000275c sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x80002760 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x80002764 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x80002768 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x8000276c sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x80002770 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x80002774 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x80002778 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x8000277c sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x80002780 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x80002784 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x80002788 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x8000278c addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x80002790 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x80002794 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x80002798 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x8000279c add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x800027a0 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x800027a4 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x800027a8 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x800027ac sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x800027b0 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x800027b4 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x800027b8 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x800027bc sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x800027c0 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x800027c4 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x800027c8 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x800027cc lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800027d0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800027d4 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x800027d8 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800027dc lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x800027e0 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x800027e4 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x800027e8 remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x800027ec lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x800027f0 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
      0x800027f4 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x800027f8 li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x800027fc mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x80002800 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003800
      0x80002804 addi    a1, a1, -1636          #; a1  = 0x80003800, (wrb) a1  <-- 0x8000319c
      0x80002808 add     a0, a0, a1             #; a0  = 0, a1  = 0x8000319c, (wrb) a0  <-- 0x8000319c
      0x8000280c sw      zero, 0(a0)            #; a0  = 0x8000319c, 0 ~~> Word[0x8000319c]
; _snrt_init_team (start.c:86)
      0x80002810 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x80002814 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x80002818 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x8000281c sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x80002820 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x80002824 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x80002828 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x8000282c andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x80002830 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x80002834 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x80002838 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x8000283c sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x80002840 lw      a0, 0(a1)              #; a1  = 0x8000319c, a0  <~~ Word[0x8000319c]
                                                #; (lsu) a0  <-- 0
      0x80002844 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x80002848 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x8000284c sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x80002850 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x80002854 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x80002858 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000285c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002860 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x80002864 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002868 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000286c sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x80002870 ret                            #; ra  = 0x80002b3c, goto 0x80002b3c
; ?? (start.S:165)
      0x80002b3c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x80002b40 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x80002b44 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x80002b48 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x80002b4c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x80002b50 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x80002b54 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002b54
      0x80002b58 addi    t0, t0, 60             #; t0  = 0x80002b54, (wrb) t0  <-- 0x80002b90
; ?? (start.S:175)
      0x80002b5c csrw    mtvec, t0              #; t0  = 0x80002b90, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x80002b60 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b60
      0x80002b64 jalr    ra, ra, 544            #; ra  = 0x80002b60, (wrb) ra  <-- 0x80002b68, goto 0x80002d80
; ?? (start_snitch.S:33)
      0x80002d80 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002d84 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002b68 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002d88 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d88
      0x80002d8c jalr    ra, ra, -1268          #; ra  = 0x80002d88, (wrb) ra  <-- 0x80002d90, goto 0x80002894
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002894 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002898 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000289c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800028a0 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800028a4 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x800028a8 ret                            #; ra  = 0x80002d90, goto 0x80002d90
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002d90 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002d94 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002d98 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002d9c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002b68
; ?? (start_snitch.S:40)
      0x80002da0 ret                            #; ra  = 0x80002b68, goto 0x80002b68
; ?? (start.S:183)
      0x80002b68 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000b68
      0x80002b6c jalr    ra, ra, -1332          #; ra  = 0x80000b68, (wrb) ra  <-- 0x80002b70, goto 0x80000634
; main (bench_sp.c:33)
      0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_sp.c:34)
      0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002b70 ~~> Word[0x0011ff5c]
      0x80000640 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000644 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000063c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
      0x80000648 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
; main (bench_sp.c:0)
      0x8000064c li      a0, 0                  #; (wrb) a0  <-- 0
                                                #; (lsu) a1  <-- 0
; main (bench_sp.c:34)
      0x80000650 bnez    a1, pc + 1112          #; a1  = 0, not taken
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (bench_sp.c:38)
      0x80000654 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000658 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000065c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80000660 lw      a2, 0(a0)              #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ff70]
                                                #; (lsu) a2  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in main (bench_sp.c:38)
      0x80000664 lw      a0, 88(a2)             #; a2  = 0x0011ff70, a0  <~~ Word[0x0011ffc8]
                                                #; (lsu) a0  <-- 0x00100000
      0x80000668 lw      a1, 80(a2)             #; a2  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
                                                #; (lsu) a1  <-- 0x00100000
      0x8000066c lw      a3, 84(a2)             #; a2  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
                                                #; (lsu) a3  <-- 0x0001df30
      0x80000670 addi    a4, a0, 80             #; a0  = 0x00100000, (wrb) a4  <-- 0x00100050
      0x80000674 add     a3, a3, a1             #; a3  = 0x0001df30, a1  = 0x00100000, (wrb) a3  <-- 0x0011df30
      0x80000678 bgeu    a3, a4, pc + 24        #; a3  = 0x0011df30, a4  = 0x00100050, taken, goto 0x80000690
; snrt_l1alloc (alloc.c:33)
;  in main (bench_sp.c:38)
      0x80000690 mv      a1, a0                 #; a0  = 0x00100000, (wrb) a1  <-- 0x00100000
; snrt_l1alloc (alloc.c:34)
;  in main (bench_sp.c:38)
      0x80000694 sw      a4, 88(a2)             #; a2  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
; snrt_l1alloc (alloc.c:25)
;  in main (bench_sp.c:39)
      0x80000698 addi    a5, a0, 160            #; a0  = 0x00100000, (wrb) a5  <-- 0x001000a0
      0x8000069c mv      a0, a4                 #; a4  = 0x00100050, (wrb) a0  <-- 0x00100050
      0x800006a0 bgeu    a3, a5, pc - 24        #; a3  = 0x0011df30, a5  = 0x001000a0, taken, goto 0x80000688
; snrt_l1alloc (alloc.c:34)
;  in main (bench_sp.c:39)
      0x80000688 sw      a5, 88(a2)             #; a2  = 0x0011ff70, 0x001000a0 ~~> Word[0x0011ffc8]
      0x8000068c j       pc + 0x1c              #; goto 0x800006a8
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006a8 srli    a2, a1, 20             #; a1  = 0x00100000, (wrb) a2  <-- 1
      0x800006ac snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
      0x800006b0 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
      0x800006b4 addi    a3, a3, -71            #; a3  = 0x00120000, (wrb) a3  <-- 0x0011ffb9
      0x800006b8 sltu    a3, a1, a3             #; a1  = 0x00100000, a3  = 0x0011ffb9, (wrb) a3  <-- 1
      0x800006bc and     a2, a2, a3             #; a2  = 1, a3  = 1, (wrb) a2  <-- 1
      0x800006c0 beqz    a2, pc + 204           #; a2  = 1, not taken
; init_data (bench_sp.c:0)
;  in main (bench_sp.c:41)
      0x800006c4 li      a6, 8                  #; (wrb) a6  <-- 8
      0x800006c8 li      a4, 9                  #; (wrb) a4  <-- 9
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006cc li      a5, 64                 #; (wrb) a5  <-- 64
      0x800006d0 li      a3, 192                #; (wrb) a3  <-- 192
      0x800006d4 scfgw   a4, a5                 #; a4  = 9, a5  = 64
      0x800006d8 scfgw   a6, a3                 #; a6  = 8, a3  = 192
      0x800006dc li      a3, 32                 #; (wrb) a3  <-- 32
      0x800006e0 scfgw   zero, a3               #; a3  = 32
      0x800006e4 scfgwi  a1, 896                #; a1  = 0x00100000
; init_data (bench_sp.c:0)
;  in main (bench_sp.c:41)
      0x800006ec auipc   a3, 0x3                #; (wrb) a3  <-- 0x800036ec
      0x800006e8 csrrsi  a3, ssr, 1             #; 
      0x800006f0 addi    a3, a3, -1620          #; a3  = 0x800036ec, (wrb) a3  <-- 0x80003098
      0x800006f4 fld     ft3, 0(a3)             #; ft3  <~~ Doub[0x80003098]
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006f8 fcvt.d.w ft4, zero             #; ac1  = 0
                                                #; (f:fpu) ft4  <-- 0.0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006fc fsgnj.d ft0, ft4, ft4          #; ft4  = 0.0, ft4  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
                                                #; (f:lsu) ft3  <-- 1.0
; init_data (bench_sp.c:0)
;  in main (bench_sp.c:41)
      0x80000704 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003704
      0x80000708 addi    a3, a3, -1636          #; a3  = 0x80003704, (wrb) a3  <-- 0x800030a0
      0x80000700 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
                                                #; (f:fpu) ft0  <-- 1.0
      0x8000070c fld     ft3, 0(a3)             #; ft3  <~~ Doub[0x800030a0]
      0x80000710 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003710
      0x80000714 addi    a3, a3, -1640          #; a3  = 0x80003710, (wrb) a3  <-- 0x800030a8
                                                #; (f:lsu) ft3  <-- 2.0
      0x8000071c auipc   a3, 0x3                #; (wrb) a3  <-- 0x8000371c
      0x80000718 fld     ft4, 0(a3)             #; ft4  <~~ Doub[0x800030a8]
      0x80000720 addi    a3, a3, -1644          #; a3  = 0x8000371c, (wrb) a3  <-- 0x800030b0
                                                #; (f:lsu) ft4  <-- 3.0
      0x80000728 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003728
      0x8000072c addi    a3, a3, -1648          #; a3  = 0x80003728, (wrb) a3  <-- 0x800030b8
      0x80000724 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x800030b0]
                                                #; (f:lsu) ft5  <-- 4.0
      0x80000730 fld     ft6, 0(a3)             #; ft6  <~~ Doub[0x800030b8]
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x80000734 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
      0x80000738 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.0, ft4  = 3.0, (f:fpu) ft0  <-- 2.0
      0x8000073c fsgnj.d ft0, ft5, ft5          #; ft5  = 4.0, ft5  = 4.0, (f:fpu) ft0  <-- 3.0
                                                #; (f:fpu) ft0  <-- 4.0
                                                #; (f:lsu) ft6  <-- 5.0
; init_data (bench_sp.c:0)
;  in main (bench_sp.c:41)
      0x80000744 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003744
      0x80000748 addi    a3, a3, -1668          #; a3  = 0x80003744, (wrb) a3  <-- 0x800030c0
      0x80000740 fsgnj.d ft0, ft6, ft6          #; ft6  = 5.0, ft6  = 5.0
                                                #; (f:fpu) ft0  <-- 5.0
      0x8000074c fld     ft3, 0(a3)             #; ft3  <~~ Doub[0x800030c0]
      0x80000750 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003750
      0x80000754 addi    a3, a3, -1672          #; a3  = 0x80003750, (wrb) a3  <-- 0x800030c8
                                                #; (f:lsu) ft3  <-- 6.0
      0x8000075c auipc   a3, 0x3                #; (wrb) a3  <-- 0x8000375c
      0x80000758 fld     ft4, 0(a3)             #; ft4  <~~ Doub[0x800030c8]
      0x80000760 addi    a3, a3, -1676          #; a3  = 0x8000375c, (wrb) a3  <-- 0x800030d0
                                                #; (f:lsu) ft4  <-- 7.0
      0x80000768 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003768
      0x8000076c addi    a3, a3, -1680          #; a3  = 0x80003768, (wrb) a3  <-- 0x800030d8
      0x80000764 fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x800030d0]
                                                #; (f:lsu) ft5  <-- 8.0
      0x80000770 fld     ft6, 0(a3)             #; ft6  <~~ Doub[0x800030d8]
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x80000774 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
      0x80000778 fsgnj.d ft0, ft4, ft4          #; ft4  = 7.0, ft4  = 7.0, (f:fpu) ft0  <-- 6.0
      0x8000077c fsgnj.d ft0, ft5, ft5          #; ft5  = 8.0, ft5  = 8.0, (f:fpu) ft0  <-- 7.0
                                                #; (f:fpu) ft0  <-- 8.0
                                                #; (f:lsu) ft6  <-- 9.0
; init_data (bench_sp.c:0)
;  in main (bench_sp.c:41)
      0x80000788 j       pc + 0x78              #; goto 0x80000800
      0x80000780 fsgnj.d ft0, ft6, ft6          #; ft6  = 9.0, ft6  = 9.0
      0x80000784 csrrci  a3, ssr, 1             #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x80000800 srli    a3, a0, 20             #; a0  = 0x00100050, (wrb) a3  <-- 1
      0x80000804 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
      0x80000808 lui     a4, 0x120              #; (wrb) a4  <-- 0x00120000
      0x8000080c addi    a4, a4, -71            #; a4  = 0x00120000, (wrb) a4  <-- 0x0011ffb9
      0x80000810 sltu    a4, a0, a4             #; a0  = 0x00100050, a4  = 0x0011ffb9, (wrb) a4  <-- 1
      0x80000814 and     a5, a3, a4             #; a3  = 1, a4  = 1, (wrb) a5  <-- 1
      0x80000818 beqz    a5, pc + 328           #; a5  = 1, not taken
; init_data (bench_sp.c:0)
;  in main (bench_sp.c:42)
      0x8000081c li      a6, 8                  #; (wrb) a6  <-- 8
      0x80000820 li      a7, 9                  #; (wrb) a7  <-- 9
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x80000824 li      a3, 64                 #; (wrb) a3  <-- 64
      0x80000828 li      a4, 192                #; (wrb) a4  <-- 192
      0x8000082c scfgw   a7, a3                 #; a7  = 9, a3  = 64
      0x80000830 scfgw   a6, a4                 #; a6  = 8, a4  = 192
      0x80000834 li      a3, 32                 #; (wrb) a3  <-- 32
      0x80000838 scfgw   zero, a3               #; a3  = 32
      0x8000083c scfgwi  a0, 896                #; a0  = 0x00100050
; init_data (bench_sp.c:0)
;  in main (bench_sp.c:42)
      0x80000844 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003844
      0x80000840 csrrsi  a3, ssr, 1             #; 
      0x80000848 addi    a3, a3, -1964          #; a3  = 0x80003844, (wrb) a3  <-- 0x80003098
      0x8000084c fld     ft3, 0(a3)             #; ft3  <~~ Doub[0x80003098]
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x80000850 fcvt.d.w ft4, zero             #; ac1  = 0
                                                #; (f:fpu) ft4  <-- 0.0
; init_data (bench_sp.c:0)
;  in main (bench_sp.c:42)
      0x8000085c auipc   a3, 0x3                #; (wrb) a3  <-- 0x8000385c
      0x80000854 fsgnj.d ft0, ft4, ft4          #; ft4  = 0.0, ft4  = 0.0, (f:lsu) ft3  <-- 1.0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000858 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0, (f:fpu) ft0  <-- 0.0
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:0)
;  in main (bench_sp.c:42)
      0x80000860 addi    a3, a3, -1980          #; a3  = 0x8000385c, (wrb) a3  <-- 0x800030a0
      0x80000868 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003868
      0x8000086c addi    a3, a3, -1984          #; a3  = 0x80003868, (wrb) a3  <-- 0x800030a8
      0x80000864 fld     ft3, 0(a3)             #; ft3  <~~ Doub[0x800030a0]
                                                #; (f:lsu) ft3  <-- 2.0
      0x80000874 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003874
      0x80000878 addi    a3, a3, -1988          #; a3  = 0x80003874, (wrb) a3  <-- 0x800030b0
      0x80000870 fld     ft4, 0(a3)             #; ft4  <~~ Doub[0x800030a8]
      0x8000087c fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x800030b0]
                                                #; (f:lsu) ft4  <-- 3.0
      0x80000880 auipc   a3, 0x3                #; (wrb) a3  <-- 0x80003880
      0x80000884 addi    a3, a3, -1992          #; a3  = 0x80003880, (wrb) a3  <-- 0x800030b8
                                                #; (f:lsu) ft5  <-- 4.0
      0x80000888 fld     ft6, 0(a3)             #; ft6  <~~ Doub[0x800030b8]
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x8000088c fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
                                                #; (f:fpu) ft0  <-- 2.0
                                                #; (f:lsu) ft6  <-- 5.0
      0x80000890 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.0, ft4  = 3.0
; init_data (bench_sp.c:0)
;  in main (bench_sp.c:42)
      0x8000089c auipc   a3, 0x3                #; (wrb) a3  <-- 0x8000389c
      0x80000894 fsgnj.d ft0, ft5, ft5          #; ft5  = 4.0, ft5  = 4.0, (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000898 fsgnj.d ft0, ft6, ft6          #; ft6  = 5.0, ft6  = 5.0, (f:fpu) ft0  <-- 4.0
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:0)
;  in main (bench_sp.c:42)
      0x800008a0 addi    a3, a3, -2012          #; a3  = 0x8000389c, (wrb) a3  <-- 0x800030c0
      0x800008a8 auipc   a3, 0x3                #; (wrb) a3  <-- 0x800038a8
      0x800008ac addi    a3, a3, -2016          #; a3  = 0x800038a8, (wrb) a3  <-- 0x800030c8
      0x800008a4 fld     ft3, 0(a3)             #; ft3  <~~ Doub[0x800030c0]
                                                #; (f:lsu) ft3  <-- 6.0
      0x800008b4 auipc   a3, 0x3                #; (wrb) a3  <-- 0x800038b4
      0x800008b8 addi    a3, a3, -2020          #; a3  = 0x800038b4, (wrb) a3  <-- 0x800030d0
      0x800008b0 fld     ft4, 0(a3)             #; ft4  <~~ Doub[0x800030c8]
      0x800008bc fld     ft5, 0(a3)             #; ft5  <~~ Doub[0x800030d0]
                                                #; (f:lsu) ft4  <-- 7.0
      0x800008c0 auipc   a3, 0x3                #; (wrb) a3  <-- 0x800038c0
      0x800008c4 addi    a3, a3, -2024          #; a3  = 0x800038c0, (wrb) a3  <-- 0x800030d8
                                                #; (f:lsu) ft5  <-- 8.0
      0x800008c8 fld     ft6, 0(a3)             #; ft6  <~~ Doub[0x800030d8]
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x800008cc fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
                                                #; (f:fpu) ft0  <-- 6.0
                                                #; (f:lsu) ft6  <-- 9.0
      0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 7.0, ft4  = 7.0
      0x800008d4 fsgnj.d ft0, ft5, ft5          #; ft5  = 8.0, ft5  = 8.0, (f:fpu) ft0  <-- 7.0
      0x800008d8 fsgnj.d ft0, ft6, ft6          #; ft6  = 9.0, ft6  = 9.0, (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:0)
;  in main (bench_sp.c:42)
      0x800008dc csrrci  a3, ssr, 1             #; (f:fpu) ft0  <-- 9.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x800008e0 and     a3, a2, a5             #; a2  = 1, a5  = 1, (wrb) a3  <-- 1
; benchmark_get_cycle (benchmark.c:8)
;  in main (bench_sp.c:44)
      0x800008e4 csrr    a2, mcycle             #; mcycle = 1998, (wrb) a2  <-- 1998
; benchmark_get_cycle (benchmark.c:0)
;  in main (bench_sp.c:44)
      0x800008e8 beqz    a3, pc + 240           #; a3  = 1, not taken
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x800008ec li      a3, 64                 #; (wrb) a3  <-- 64
      0x800008f0 li      a4, 192                #; (wrb) a4  <-- 192
      0x800008f4 scfgw   a7, a3                 #; a7  = 9, a3  = 64
      0x800008f8 scfgw   a6, a4                 #; a6  = 8, a4  = 192
      0x800008fc li      a3, 32                 #; (wrb) a3  <-- 32
      0x80000900 scfgw   zero, a3               #; a3  = 32
      0x80000904 scfgwi  a1, 768                #; a1  = 0x00100000
      0x80000908 li      a1, 1                  #; (wrb) a1  <-- 1
      0x8000090c addi    a3, a1, 64             #; a1  = 1, (wrb) a3  <-- 65
      0x80000910 addi    a4, a1, 192            #; a1  = 1, (wrb) a4  <-- 193
      0x80000914 scfgw   a7, a3                 #; a7  = 9, a3  = 65
      0x80000918 scfgw   a6, a4                 #; a6  = 8, a4  = 193
      0x8000091c addi    a1, a1, 32             #; a1  = 1, (wrb) a1  <-- 33
      0x80000920 scfgw   zero, a1               #; a1  = 33
      0x80000924 scfgwi  a0, 769                #; a0  = 0x00100050
                                                #; (acc) gp  <-- 0x220001d3
      0x80000928 csrrsi  a0, ssr, 1             #; 
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x8000092c fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000930 fmul.d  ft3, ft1, ft3          #; ft1  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000934 fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 1.0, ft0  = 1.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 1.0
      0x80000938 fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 2.0, ft0  = 2.0, ft3  = 1.0
                                                #; (f:fpu) ft3  <-- 5.0
      0x8000093c fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 3.0, ft0  = 3.0, ft3  = 5.0
                                                #; (f:fpu) ft3  <-- 14.0
      0x80000940 fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 4.0, ft0  = 4.0, ft3  = 14.0
                                                #; (f:fpu) ft3  <-- 30.0
      0x80000944 fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 5.0, ft0  = 5.0, ft3  = 30.0
                                                #; (f:fpu) ft3  <-- 55.0
      0x80000948 fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 6.0, ft0  = 6.0, ft3  = 55.0
; scalarprod (scalarprod.c:0)
;  in main (bench_sp.c:46)
      0x8000095c j       pc + 0xf4              #; goto 0x80000a50
                                                #; (f:fpu) ft3  <-- 91.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x8000094c fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 7.0, ft0  = 7.0, ft3  = 91.0
                                                #; (f:fpu) ft3  <-- 140.0
      0x80000950 fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 8.0, ft0  = 8.0, ft3  = 140.0
; benchmark_get_cycle (benchmark.c:8)
;  in main (bench_sp.c:48)
      0x80000a50 csrr    a0, mcycle             #; mcycle = 2093, (wrb) a0  <-- 2093
; main (bench_sp.c:50)
      0x80000a54 sub     a1, a0, a2             #; a0  = 2093, a2  = 1998, (wrb) a1  <-- 95
                                                #; (f:fpu) ft3  <-- 204.0
      0x80000a58 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a58
      0x80000954 fmadd.d fs0, ft1, ft0, ft3     #; ft1  = 9.0, ft0  = 9.0, ft3  = 204.0
      0x80000a5c addi    a0, a0, 937            #; a0  = 0x80002a58, (wrb) a0  <-- 0x80002e01
      0x80000958 csrrci  a0, ssr, 1             #; 
                                                #; (f:fpu) fs0  <-- 285.0
      0x80000a60 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a60
      0x80000a64 jalr    ra, ra, 88             #; ra  = 0x80000a60, (wrb) ra  <-- 0x80000a68, goto 0x80000ab8
; printf_ (printf.c:863)
      0x80000ab8 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x80000abc sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000a68 ~~> Word[0x0011ff1c]
      0x80000ac0 mv      t0, a0                 #; a0  = 0x80002e01, (wrb) t0  <-- 0x80002e01
      0x80000ac4 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 9 ~~> Word[0x0011ff3c]
      0x80000ac8 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 8 ~~> Word[0x0011ff38]
      0x80000acc sw      a5, 36(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff34]
      0x80000ad0 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 193 ~~> Word[0x0011ff30]
      0x80000ad4 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 65 ~~> Word[0x0011ff2c]
      0x80000ad8 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 1998 ~~> Word[0x0011ff28]
      0x80000adc sw      a1, 20(sp)             #; sp  = 0x0011ff10, 95 ~~> Word[0x0011ff24]
      0x80000ae0 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
; printf_ (printf.c:865)
      0x80000ae4 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
; printf_ (printf.c:867)
      0x80000ae8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001ae8
      0x80000aec addi    a0, a0, -988           #; a0  = 0x80001ae8, (wrb) a0  <-- 0x8000170c
      0x80000af0 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
      0x80000af4 li      a2, -1                 #; (wrb) a2  <-- -1
      0x80000af8 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
      0x80000afc mv      a3, t0                 #; t0  = 0x80002e01, (wrb) a3  <-- 0x80002e01
      0x80000b00 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000b00
      0x80000b04 jalr    ra, ra, 20             #; ra  = 0x80000b00, (wrb) ra  <-- 0x80000b08, goto 0x80000b14
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000b14 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
      0x80000b18 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000b08 ~~> Word[0x0011ff0c]
      0x80000b1c sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
      0x80000b20 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
      0x80000b24 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
      0x80000b28 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
      0x80000b2c sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
      0x80000b30 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
      0x80000b34 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
      0x80000b38 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
      0x80000b3c sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
      0x80000b40 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
      0x80000b44 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
      0x80000b48 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
      0x80000b4c mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
      0x80000b50 mv      s0, a3                 #; a3  = 0x80002e01, (wrb) s0  <-- 0x80002e01
      0x80000b54 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x80000b58 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x80000b5c beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b60 mv      s2, a0                 #; a0  = 0x8000170c, (wrb) s2  <-- 0x8000170c
      0x80000b64 j       pc + 0xc               #; goto 0x80000b70
      0x80000b70 li      s8, 0                  #; (wrb) s8  <-- 0
      0x80000b74 li      s6, 37                 #; (wrb) s6  <-- 37
      0x80000b78 li      s11, 16                #; (wrb) s11 <-- 16
      0x80000b7c li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000b80 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000b84 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000b88 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
      0x80000b8c lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000b90 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000b94 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b98 addi    s10, s0, 2             #; s0  = 0x80002e01, (wrb) s10 <-- 0x80002e03
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b9c mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000ba0 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ba4 lbu     a0, 0(s0)              #; s0  = 0x80002e01, a0  <~~ Byte[0x80002e01]
                                                #; (lsu) a0  <-- 99
      0x80000ba8 beqz    a0, pc + 2824          #; a0  = 99, not taken
      0x80000bac beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000bb0 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000bb8 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 99, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
      0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
      0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 0
      0x8000172c addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 1 ~~> Word[0x8000319c]
      0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 0, (wrb) a4  <-- 0x8000319c
      0x80001738 sb      a0, 72(a4)             #; a4  = 0x8000319c, 99 ~~> Byte[0x800031e4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 1
      0x80001740 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x80001744 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x80001748 addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
      0x8000174c snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
      0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002e01, (wrb) s0  <-- 0x80002e02
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002e03, (wrb) s10 <-- 0x80002e04
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bcc mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002e02, a0  <~~ Byte[0x80002e02]
                                                #; (lsu) a0  <-- 121
      0x80000bd4 bnez    a0, pc - 40            #; a0  = 121, taken, goto 0x80000bac
      0x80000bac beq     a0, s6, pc + 48        #; a0  = 121, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000bb0 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000bb8 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 121, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
      0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 1
      0x8000172c addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 2 ~~> Word[0x8000319c]
      0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 1, (wrb) a4  <-- 0x8000319d
      0x80001738 sb      a0, 72(a4)             #; a4  = 0x8000319d, 121 ~~> Byte[0x800031e5]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 2
      0x80001740 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x80001744 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x80001748 addi    a0, a0, -10            #; a0  = 121, (wrb) a0  <-- 111
      0x8000174c snez    a0, a0                 #; a0  = 111, (wrb) a0  <-- 1
      0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002e02, (wrb) s0  <-- 0x80002e03
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002e04, (wrb) s10 <-- 0x80002e05
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bcc mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002e03, a0  <~~ Byte[0x80002e03]
                                                #; (lsu) a0  <-- 99
      0x80000bd4 bnez    a0, pc - 40            #; a0  = 99, taken, goto 0x80000bac
      0x80000bac beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000bb0 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000bb8 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 99, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
      0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 2
      0x8000172c addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 3 ~~> Word[0x8000319c]
      0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 2, (wrb) a4  <-- 0x8000319e
      0x80001738 sb      a0, 72(a4)             #; a4  = 0x8000319e, 99 ~~> Byte[0x800031e6]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 3
      0x80001740 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x80001744 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x80001748 addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
      0x8000174c snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
      0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002e03, (wrb) s0  <-- 0x80002e04
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002e05, (wrb) s10 <-- 0x80002e06
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bcc mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002e04, a0  <~~ Byte[0x80002e04]
                                                #; (lsu) a0  <-- 108
      0x80000bd4 bnez    a0, pc - 40            #; a0  = 108, taken, goto 0x80000bac
      0x80000bac beq     a0, s6, pc + 48        #; a0  = 108, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000bb0 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000bb8 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 108, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
      0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 3
      0x8000172c addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 4 ~~> Word[0x8000319c]
      0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 3, (wrb) a4  <-- 0x8000319f
      0x80001738 sb      a0, 72(a4)             #; a4  = 0x8000319f, 108 ~~> Byte[0x800031e7]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 4
      0x80001740 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x80001744 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x80001748 addi    a0, a0, -10            #; a0  = 108, (wrb) a0  <-- 98
      0x8000174c snez    a0, a0                 #; a0  = 98, (wrb) a0  <-- 1
      0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002e04, (wrb) s0  <-- 0x80002e05
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002e06, (wrb) s10 <-- 0x80002e07
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bcc mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002e05, a0  <~~ Byte[0x80002e05]
                                                #; (lsu) a0  <-- 101
      0x80000bd4 bnez    a0, pc - 40            #; a0  = 101, taken, goto 0x80000bac
      0x80000bac beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000bb0 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000bb8 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
      0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 4
      0x8000172c addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 5 ~~> Word[0x8000319c]
      0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 4, (wrb) a4  <-- 0x800031a0
      0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a0, 101 ~~> Byte[0x800031e8]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 5
      0x80001740 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x80001744 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x80001748 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x8000174c snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002e05, (wrb) s0  <-- 0x80002e06
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002e07, (wrb) s10 <-- 0x80002e08
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bcc mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002e06, a0  <~~ Byte[0x80002e06]
                                                #; (lsu) a0  <-- 115
      0x80000bd4 bnez    a0, pc - 40            #; a0  = 115, taken, goto 0x80000bac
      0x80000bac beq     a0, s6, pc + 48        #; a0  = 115, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000bb0 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000bb8 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 115, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
      0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 5
      0x8000172c addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 6 ~~> Word[0x8000319c]
      0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 5, (wrb) a4  <-- 0x800031a1
      0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a1, 115 ~~> Byte[0x800031e9]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 6
      0x80001740 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x80001744 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x80001748 addi    a0, a0, -10            #; a0  = 115, (wrb) a0  <-- 105
      0x8000174c snez    a0, a0                 #; a0  = 105, (wrb) a0  <-- 1
      0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002e06, (wrb) s0  <-- 0x80002e07
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002e08, (wrb) s10 <-- 0x80002e09
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bcc mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002e07, a0  <~~ Byte[0x80002e07]
                                                #; (lsu) a0  <-- 32
      0x80000bd4 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000bac
      0x80000bac beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000bb0 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000bb8 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
      0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 6
      0x8000172c addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 7 ~~> Word[0x8000319c]
      0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 6, (wrb) a4  <-- 0x800031a2
      0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a2, 32 ~~> Byte[0x800031ea]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 7
      0x80001740 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x80001744 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x80001748 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x8000174c snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002e07, (wrb) s0  <-- 0x80002e08
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002e09, (wrb) s10 <-- 0x80002e0a
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bcc mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002e08, a0  <~~ Byte[0x80002e08]
                                                #; (lsu) a0  <-- 61
      0x80000bd4 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000bac
      0x80000bac beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000bb0 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000bb8 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
      0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 7
      0x8000172c addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 8 ~~> Word[0x8000319c]
      0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 7, (wrb) a4  <-- 0x800031a3
      0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a3, 61 ~~> Byte[0x800031eb]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 8
      0x80001740 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x80001744 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x80001748 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x8000174c snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002e08, (wrb) s0  <-- 0x80002e09
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002e0a, (wrb) s10 <-- 0x80002e0b
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bcc mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002e09, a0  <~~ Byte[0x80002e09]
                                                #; (lsu) a0  <-- 32
      0x80000bd4 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000bac
      0x80000bac beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000bb0 addi    s1, s9, 1              #; s9  = 8, (wrb) s1  <-- 9
      0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000bb8 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
      0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 8
      0x8000172c addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 9 ~~> Word[0x8000319c]
      0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 8, (wrb) a4  <-- 0x800031a4
      0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a4, 32 ~~> Byte[0x800031ec]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 9
      0x80001740 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x80001744 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x80001748 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x8000174c snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002e09, (wrb) s0  <-- 0x80002e0a
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002e0b, (wrb) s10 <-- 0x80002e0c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bcc mv      s9, s1                 #; s1  = 9, (wrb) s9  <-- 9
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002e0a, a0  <~~ Byte[0x80002e0a]
                                                #; (lsu) a0  <-- 37
      0x80000bd4 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000bac
      0x80000bac beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000bdc
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000bdc li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000be0 j       pc + 0x10              #; goto 0x80000bf0
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000bf0 lbu     a0, -1(s10)            #; s10 = 0x80002e0c, a0  <~~ Byte[0x80002e0b]
                                                #; (lsu) a0  <-- 108
      0x80000bf4 addi    a1, a0, -32            #; a0  = 108, (wrb) a1  <-- 76
      0x80000bf8 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 76, taken, goto 0x80000c30
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000c30 addi    a1, a0, -48            #; a0  = 108, (wrb) a1  <-- 60
      0x80000c34 andi    a2, a1, 255            #; a1  = 60, (wrb) a2  <-- 60
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000c38 addi    a1, s10, -1            #; s10 = 0x80002e0c, (wrb) a1  <-- 0x80002e0b
      0x80000c3c li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000c40 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 60, taken, goto 0x80000cbc
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000cbc li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000cc0 bne     a0, a2, pc + 80        #; a0  = 108, a2  = 42, taken, goto 0x80000d10
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000d10 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000d14 mv      s10, a1                #; a1  = 0x80002e0b, (wrb) s10 <-- 0x80002e0b
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000d18 beq     a0, s7, pc - 164       #; a0  = 108, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000d1c li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000d20 j       pc + 0xc               #; goto 0x80000d2c
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000d2c addi    a1, a0, -104           #; a0  = 108, (wrb) a1  <-- 4
      0x80000d30 srli    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 2
      0x80000d34 slli    a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 0
      0x80000d38 or      a1, a1, a2             #; a1  = 0, a2  = 2, (wrb) a1  <-- 2
      0x80000d3c li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000d40 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 2, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000d44 slli    a1, a1, 2              #; a1  = 2, (wrb) a1  <-- 8
      0x80000d48 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002d48
      0x80000d4c addi    a2, a2, 272            #; a2  = 0x80002d48, (wrb) a2  <-- 0x80002e58
      0x80000d50 add     a1, a1, a2             #; a1  = 8, a2  = 0x80002e58, (wrb) a1  <-- 0x80002e60
      0x80000d54 lw      a3, 0(a1)              #; a1  = 0x80002e60, a3  <~~ Word[0x80002e60]
      0x80000d58 li      a1, 1                  #; (wrb) a1  <-- 1
      0x80000d5c li      a2, 256                #; (wrb) a2  <-- 256
                                                #; (lsu) a3  <-- 0x80000d84
      0x80000d60 jr      a3                     #; a3  = 0x80000d84, goto 0x80000d84
; _vsnprintf.llvm.1805434900161566649 (printf.c:651)
      0x80000d84 lbu     a0, 1(s10)             #; s10 = 0x80002e0b, a0  <~~ Byte[0x80002e0c]
      0x80000d88 li      a1, 108                #; (wrb) a1  <-- 108
                                                #; (lsu) a0  <-- 117
      0x80000d8c bne     a0, a1, pc + 272       #; a0  = 117, a1  = 108, taken, goto 0x80000e9c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e9c ori     s0, s0, 256            #; s0  = 0, (wrb) s0  <-- 256
      0x80000ea0 addi    s10, s10, 1            #; s10 = 0x80002e0b, (wrb) s10 <-- 0x80002e0c
      0x80000ea4 j       pc - 0x100             #; goto 0x80000da4
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000da4 addi    a1, a0, -37            #; a0  = 117, (wrb) a1  <-- 80
      0x80000da8 li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000dac bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 80, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000db0 slli    a1, a1, 2              #; a1  = 80, (wrb) a1  <-- 320
      0x80000db4 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002db4
      0x80000db8 addi    a2, a2, 204            #; a2  = 0x80002db4, (wrb) a2  <-- 0x80002e80
      0x80000dbc add     a1, a1, a2             #; a1  = 320, a2  = 0x80002e80, (wrb) a1  <-- 0x80002fc0
      0x80000dc0 lw      a2, 0(a1)              #; a1  = 0x80002fc0, a2  <~~ Word[0x80002fc0]
      0x80000dc4 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000dc8 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000dd0
      0x80000dcc jr      a2                     #; a2  = 0x80000dd0
; _vsnprintf.llvm.1805434900161566649 (printf.c:704)
      0x80000dd0 andi    s0, s0, -17            #; s0  = 256, (wrb) s0  <-- 256
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000dd4 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:707)
      0x80000dd8 li      a1, 88                 #; (wrb) a1  <-- 88
      0x80000ddc bne     a0, a1, pc + 8         #; a0  = 117, a1  = 88, taken, goto 0x80000de4
; _vsnprintf.llvm.1805434900161566649 (printf.c:712)
      0x80000de4 li      a1, 100                #; (wrb) a1  <-- 100
      0x80000de8 beq     a0, a1, pc + 240       #; a0  = 117, a1  = 100, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000dec mv      a1, s8                 #; s8  = 10, (wrb) a1  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:712)
      0x80000df0 li      a2, 105                #; (wrb) a2  <-- 105
      0x80000df4 beq     a0, a2, pc + 228       #; a0  = 117, a2  = 105, not taken
      0x80000df8 j       pc + 0xd8              #; goto 0x80000ed0
; _vsnprintf.llvm.1805434900161566649 (printf.c:713)
      0x80000ed0 andi    s0, s0, -13            #; s0  = 256, (wrb) s0  <-- 256
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ed4 mv      s8, a1                 #; a1  = 10, (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:717)
      0x80000ed8 andi    a1, s0, 1024           #; s0  = 256, (wrb) a1  <-- 0
      0x80000edc beqz    a1, pc + 8             #; a1  = 0, taken, goto 0x80000ee4
; _vsnprintf.llvm.1805434900161566649 (printf.c:722)
      0x80000ee4 li      a1, 105                #; (wrb) a1  <-- 105
      0x80000ee8 beq     a0, a1, pc + 12        #; a0  = 117, a1  = 105, not taken
      0x80000eec li      a1, 100                #; (wrb) a1  <-- 100
      0x80000ef0 bne     a0, a1, pc + 312       #; a0  = 117, a1  = 100, taken, goto 0x80001028
; _vsnprintf.llvm.1805434900161566649 (printf.c:741)
      0x80001028 andi    a0, s0, 512            #; s0  = 256, (wrb) a0  <-- 0
      0x8000102c bnez    a0, pc + 196           #; a0  = 0, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:746)
      0x80001030 andi    a0, s0, 256            #; s0  = 256, (wrb) a0  <-- 256
      0x80001034 bnez    a0, pc + 1148          #; a0  = 256, taken, goto 0x800014b0
; _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x800014b0 lw      a0, 0(s3)              #; s3  = 0x0011ff24, a0  <~~ Word[0x0011ff24]
                                                #; (lsu) a0  <-- 95
; _ntoa_long (printf.c:287)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x800014b4 bnez    a0, pc + 8             #; a0  = 95, taken, goto 0x800014bc
; _ntoa_long (printf.c:0)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x800014bc seqz    a1, a0                 #; a0  = 95, (wrb) a1  <-- 0
; _ntoa_long (printf.c:292)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x800014c0 andi    a2, s0, 1024           #; s0  = 256, (wrb) a2  <-- 0
      0x800014c4 srli    a2, a2, 10             #; a2  = 0, (wrb) a2  <-- 0
      0x800014c8 and     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
; _ntoa_long (printf.c:0)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x800014cc li      a5, 0                  #; (wrb) a5  <-- 0
; _ntoa_long (printf.c:292)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x800014d0 bnez    a1, pc + 248           #; a1  = 0, not taken
; _ntoa_long (printf.c:0)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x800014d4 li      a2, 0                  #; (wrb) a2  <-- 0
      0x800014d8 andi    a1, s0, 32             #; s0  = 256, (wrb) a1  <-- 0
      0x800014dc xori    a1, a1, 97             #; a1  = 0, (wrb) a1  <-- 97
      0x800014e0 addi    a6, a1, 246            #; a1  = 97, (wrb) a6  <-- 343
      0x800014e4 j       pc + 0x34              #; goto 0x80001518
; _ntoa_long (printf.c:296)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001518 divu    a3, a0, s8             #; a0  = 95, s8  = 10
                                                #; (acc) a4  <-- 0x03868733
      0x8000151c mul     a4, a3, s8             #; a3  = 9, s8  = 10
      0x80001520 sub     a4, a0, a4             #; a0  = 95, a4  = 90, (wrb) a4  <-- 5
; _ntoa_long (printf.c:295)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001524 andi    s1, a4, 254            #; a4  = 5, (wrb) s1  <-- 4
      0x80001528 li      a5, 48                 #; (wrb) a5  <-- 48
      0x8000152c li      a1, 10                 #; (wrb) a1  <-- 10
      0x80001530 bltu    s1, a1, pc - 72        #; s1  = 4, a1  = 10, taken, goto 0x800014e8
      0x800014e8 add     a4, a5, a4             #; a5  = 48, a4  = 5, (wrb) a4  <-- 53
      0x800014ec addi    a5, a2, 1              #; a2  = 0, (wrb) a5  <-- 1
      0x800014f0 addi    a1, sp, 28             #; sp  = 0x0011fea0, (wrb) a1  <-- 0x0011febc
      0x800014f4 add     s1, a1, a2             #; a1  = 0x0011febc, a2  = 0, (wrb) s1  <-- 0x0011febc
; _ntoa_long (printf.c:297)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x800014f8 sltu    a0, a0, s8             #; a0  = 95, s8  = 10, (wrb) a0  <-- 0
      0x800014fc xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001500 sltiu   a2, a2, 31             #; a2  = 0, (wrb) a2  <-- 1
      0x80001504 and     a1, a2, a0             #; a2  = 1, a0  = 1, (wrb) a1  <-- 1
; _ntoa_long (printf.c:295)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001508 sb      a4, 0(s1)              #; s1  = 0x0011febc, 53 ~~> Byte[0x0011febc]
; _ntoa_long (printf.c:0)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x8000150c mv      a2, a5                 #; a5  = 1, (wrb) a2  <-- 1
      0x80001510 mv      a0, a3                 #; a3  = 9, (wrb) a0  <-- 9
; _ntoa_long (printf.c:297)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001514 beqz    a1, pc + 180           #; a1  = 1, not taken
; _ntoa_long (printf.c:296)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001518 divu    a3, a0, s8             #; a0  = 9, s8  = 10
                                                #; (acc) a4  <-- 0x03868733
      0x8000151c mul     a4, a3, s8             #; a3  = 0, s8  = 10
                                                #; (acc) a4  <-- 0x40e50733
      0x80001520 sub     a4, a0, a4             #; a0  = 9, a4  = 0, (wrb) a4  <-- 9
; _ntoa_long (printf.c:295)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001524 andi    s1, a4, 254            #; a4  = 9, (wrb) s1  <-- 8
      0x80001528 li      a5, 48                 #; (wrb) a5  <-- 48
      0x8000152c li      a1, 10                 #; (wrb) a1  <-- 10
      0x80001530 bltu    s1, a1, pc - 72        #; s1  = 8, a1  = 10, taken, goto 0x800014e8
      0x800014e8 add     a4, a5, a4             #; a5  = 48, a4  = 9, (wrb) a4  <-- 57
      0x800014ec addi    a5, a2, 1              #; a2  = 1, (wrb) a5  <-- 2
      0x800014f0 addi    a1, sp, 28             #; sp  = 0x0011fea0, (wrb) a1  <-- 0x0011febc
      0x800014f4 add     s1, a1, a2             #; a1  = 0x0011febc, a2  = 1, (wrb) s1  <-- 0x0011febd
; _ntoa_long (printf.c:297)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x800014f8 sltu    a0, a0, s8             #; a0  = 9, s8  = 10, (wrb) a0  <-- 1
      0x800014fc xori    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 0
      0x80001500 sltiu   a2, a2, 31             #; a2  = 1, (wrb) a2  <-- 1
      0x80001504 and     a1, a2, a0             #; a2  = 1, a0  = 0, (wrb) a1  <-- 0
; _ntoa_long (printf.c:295)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001508 sb      a4, 0(s1)              #; s1  = 0x0011febd, 57 ~~> Byte[0x0011febd]
; _ntoa_long (printf.c:0)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x8000150c mv      a2, a5                 #; a5  = 2, (wrb) a2  <-- 2
      0x80001510 mv      a0, a3                 #; a3  = 0, (wrb) a0  <-- 0
; _ntoa_long (printf.c:297)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001514 beqz    a1, pc + 180           #; a1  = 0, taken, goto 0x800015c8
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800015c8 addi    s3, s3, 4              #; s3  = 0x0011ff24, (wrb) s3  <-- 0x0011ff28
      0x800015cc addi    a4, sp, 28             #; sp  = 0x0011fea0, (wrb) a4  <-- 0x0011febc
      0x800015d0 mv      a0, s2                 #; s2  = 0x8000170c, (wrb) a0  <-- 0x8000170c
      0x800015d4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800015d8 mv      a2, s9                 #; s9  = 9, (wrb) a2  <-- 9
      0x800015dc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800015e0 li      a6, 0                  #; (wrb) a6  <-- 0
      0x800015e4 mv      a7, s8                 #; s8  = 10, (wrb) a7  <-- 10
      0x800015e8 mv      t2, s7                 #; s7  = 0, (wrb) t2  <-- 0
      0x800015ec mv      t3, s6                 #; s6  = 0, (wrb) t3  <-- 0
      0x800015f0 mv      t4, s0                 #; s0  = 256, (wrb) t4  <-- 256
      0x800015f4 auipc   ra, 0x1                #; (wrb) ra  <-- 0x800025f4
      0x800015f8 jalr    ra, ra, -620           #; ra  = 0x800025f4, (wrb) ra  <-- 0x800015fc, goto 0x80002388
; _ntoa_format (printf.c:228)
      0x80002388 addi    sp, sp, -64            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe60
      0x8000238c sw      ra, 60(sp)             #; sp  = 0x0011fe60, 0x800015fc ~~> Word[0x0011fe9c]
      0x80002390 sw      s0, 56(sp)             #; sp  = 0x0011fe60, 256 ~~> Word[0x0011fe98]
      0x80002394 sw      s1, 52(sp)             #; sp  = 0x0011fe60, 0x0011febd ~~> Word[0x0011fe94]
      0x80002398 sw      s2, 48(sp)             #; sp  = 0x0011fe60, 0x8000170c ~~> Word[0x0011fe90]
      0x8000239c sw      s3, 44(sp)             #; sp  = 0x0011fe60, 0x0011ff28 ~~> Word[0x0011fe8c]
      0x800023a0 sw      s4, 40(sp)             #; sp  = 0x0011fe60, 0x0011ff17 ~~> Word[0x0011fe88]
      0x800023a4 sw      s5, 36(sp)             #; sp  = 0x0011fe60, -1 ~~> Word[0x0011fe84]
      0x800023a8 sw      s6, 32(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fe80]
      0x800023ac sw      s7, 28(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fe7c]
      0x800023b0 sw      s8, 24(sp)             #; sp  = 0x0011fe60, 10 ~~> Word[0x0011fe78]
      0x800023b4 sw      s9, 20(sp)             #; sp  = 0x0011fe60, 9 ~~> Word[0x0011fe74]
      0x800023b8 sw      s10, 16(sp)            #; sp  = 0x0011fe60, 0x80002e0c ~~> Word[0x0011fe70]
      0x800023bc sw      s11, 12(sp)            #; sp  = 0x0011fe60, 16 ~~> Word[0x0011fe6c]
      0x800023c0 mv      s7, t4                 #; t4  = 256, (wrb) s7  <-- 256
; _ntoa_format (printf.c:230)
      0x800023c4 andi    s5, t4, 2              #; t4  = 256, (wrb) s5  <-- 0
      0x800023c8 mv      s2, t3                 #; t3  = 0, (wrb) s2  <-- 0
; _ntoa_format (printf.c:0)
      0x800023cc mv      s10, t2                #; t2  = 0, (wrb) s10 <-- 0
      0x800023d0 mv      s9, a7                 #; a7  = 10, (wrb) s9  <-- 10
      0x800023d4 mv      s8, a5                 #; a5  = 2, (wrb) s8  <-- 2
      0x800023d8 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x800023dc mv      s4, a2                 #; a2  = 9, (wrb) s4  <-- 9
      0x800023e0 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
      0x800023e4 mv      s11, a0                #; a0  = 0x8000170c, (wrb) s11 <-- 0x8000170c
      0x800023e8 sw      a4, 8(sp)              #; sp  = 0x0011fe60, 0x0011febc ~~> Word[0x0011fe68]
; _ntoa_format (printf.c:230)
      0x800023ec bnez    s5, pc + 220           #; s5  = 0, not taken
; _ntoa_format (printf.c:0)
      0x800023f0 andi    s0, s7, 1              #; s7  = 256, (wrb) s0  <-- 0
; _ntoa_format (printf.c:231)
      0x800023f4 beqz    s2, pc + 28            #; s2  = 0, taken, goto 0x80002410
; _ntoa_format (printf.c:0)
      0x80002410 li      s2, 0                  #; (wrb) s2  <-- 0
; _ntoa_format (printf.c:234)
      0x80002414 sltu    a0, s8, s10            #; s8  = 2, s10 = 0, (wrb) a0  <-- 0
      0x80002418 xori    a1, a0, 1              #; a0  = 0, (wrb) a1  <-- 1
      0x8000241c li      a0, 31                 #; (wrb) a0  <-- 31
      0x80002420 sltu    a2, a0, s8             #; a0  = 31, s8  = 2, (wrb) a2  <-- 0
      0x80002424 or      a1, a2, a1             #; a2  = 0, a1  = 1, (wrb) a1  <-- 1
      0x80002428 bnez    a1, pc + 72            #; a1  = 1, taken, goto 0x80002470
; _ntoa_format (printf.c:237)
      0x80002470 beqz    s0, pc + 88            #; s0  = 0, taken, goto 0x800024c8
; _ntoa_format (printf.c:243)
      0x800024c8 andi    a0, s7, 16             #; s7  = 256, (wrb) a0  <-- 0
      0x800024cc beqz    a0, pc + 228           #; a0  = 0, taken, goto 0x800025b0
; _ntoa_format (printf.c:0)
      0x800025b0 li      a0, 31                 #; (wrb) a0  <-- 31
; _ntoa_format (printf.c:264)
      0x800025b4 bltu    a0, s8, pc + 72        #; a0  = 31, s8  = 2, not taken
; _ntoa_format (printf.c:265)
      0x800025b8 beqz    a6, pc + 20            #; a6  = 0, taken, goto 0x800025cc
; _ntoa_format (printf.c:268)
      0x800025cc andi    a0, s7, 4              #; s7  = 256, (wrb) a0  <-- 0
      0x800025d0 bnez    a0, pc + 28            #; a0  = 0, not taken
; _ntoa_format (printf.c:271)
      0x800025d4 andi    a0, s7, 8              #; s7  = 256, (wrb) a0  <-- 0
      0x800025d8 beqz    a0, pc + 36            #; a0  = 0, taken, goto 0x800025fc
; _out_rev (printf.c:204)
;  in _ntoa_format (printf.c:276)
      0x800025fc andi    a0, s7, 3              #; s7  = 256, (wrb) a0  <-- 0
      0x80002600 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x80002604 sltu    a1, s8, s2             #; s8  = 2, s2  = 0, (wrb) a1  <-- 0
      0x80002608 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x8000260c or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
      0x80002610 mv      s0, s4                 #; s4  = 9, (wrb) s0  <-- 9
      0x80002614 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80002640
; _out_rev (printf.c:0)
;  in _ntoa_format (printf.c:276)
      0x80002640 snez    s5, s5                 #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ntoa_format (printf.c:276)
      0x80002644 beqz    s8, pc + 60            #; s8  = 2, not taken
      0x80002648 lw      a0, 8(sp)              #; sp  = 0x0011fe60, a0  <~~ Word[0x0011fe68]
                                                #; (lsu) a0  <-- 0x0011febc
      0x8000264c addi    s7, a0, -1             #; a0  = 0x0011febc, (wrb) s7  <-- 0x0011febb
; _out_rev (printf.c:212)
;  in _ntoa_format (printf.c:276)
      0x80002650 add     a0, s7, s8             #; s7  = 0x0011febb, s8  = 2, (wrb) a0  <-- 0x0011febd
      0x80002654 lbu     a0, 0(a0)              #; a0  = 0x0011febd, a0  <~~ Byte[0x0011febd]
      0x80002658 addi    s9, s8, -1             #; s8  = 2, (wrb) s9  <-- 1
      0x8000265c addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
                                                #; (lsu) a0  <-- 57
      0x80002660 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80002664 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80002668 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x8000266c jalr    s11                    #; s11 = 0x8000170c, (wrb) ra  <-- 0x80002670, goto 0x8000170c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 57, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
      0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 9
      0x8000172c addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 10 ~~> Word[0x8000319c]
      0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 9, (wrb) a4  <-- 0x800031a5
      0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a5, 57 ~~> Byte[0x800031ed]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 10
      0x80001740 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x80001744 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x80001748 addi    a0, a0, -10            #; a0  = 57, (wrb) a0  <-- 47
      0x8000174c snez    a0, a0                 #; a0  = 47, (wrb) a0  <-- 1
      0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x80002670, goto 0x80002670
; _out_rev (printf.c:0)
;  in _ntoa_format (printf.c:276)
      0x80002670 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80002674 mv      s8, s9                 #; s9  = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ntoa_format (printf.c:276)
      0x80002678 bnez    s9, pc - 40            #; s9  = 1, taken, goto 0x80002650
; _out_rev (printf.c:212)
;  in _ntoa_format (printf.c:276)
      0x80002650 add     a0, s7, s8             #; s7  = 0x0011febb, s8  = 1, (wrb) a0  <-- 0x0011febc
      0x80002654 lbu     a0, 0(a0)              #; a0  = 0x0011febc, a0  <~~ Byte[0x0011febc]
      0x80002658 addi    s9, s8, -1             #; s8  = 1, (wrb) s9  <-- 0
      0x8000265c addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80002660 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80002664 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80002668 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x8000266c jalr    s11                    #; s11 = 0x8000170c, (wrb) ra  <-- 0x80002670, goto 0x8000170c
                                                #; (lsu) a0  <-- 53
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 53, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
      0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 10
      0x8000172c addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 11 ~~> Word[0x8000319c]
      0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 10, (wrb) a4  <-- 0x800031a6
      0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a6, 53 ~~> Byte[0x800031ee]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 11
      0x80001740 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x80001744 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x80001748 addi    a0, a0, -10            #; a0  = 53, (wrb) a0  <-- 43
      0x8000174c snez    a0, a0                 #; a0  = 43, (wrb) a0  <-- 1
      0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x80002670, goto 0x80002670
; _out_rev (printf.c:0)
;  in _ntoa_format (printf.c:276)
      0x80002670 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80002674 mv      s8, s9                 #; s9  = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ntoa_format (printf.c:276)
      0x80002678 bnez    s9, pc - 40            #; s9  = 0, not taken
      0x8000267c j       pc + 0x8               #; goto 0x80002684
; _out_rev (printf.c:0)
;  in _ntoa_format (printf.c:276)
      0x80002684 sub     a0, s1, s4             #; s1  = 11, s4  = 9, (wrb) a0  <-- 2
      0x80002688 sltu    a0, a0, s2             #; a0  = 2, s2  = 0, (wrb) a0  <-- 0
      0x8000268c xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ntoa_format (printf.c:276)
      0x80002690 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80002694 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80002698 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x800026c8
; _ntoa_format (printf.c:0)
      0x800026c8 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
; _ntoa_format (printf.c:276)
      0x800026cc mv      a0, s0                 #; s0  = 11, (wrb) a0  <-- 11
      0x800026d0 lw      s11, 12(sp)            #; sp  = 0x0011fe60, s11 <~~ Word[0x0011fe6c]
                                                #; (lsu) s11 <-- 16
      0x800026d4 lw      s10, 16(sp)            #; sp  = 0x0011fe60, s10 <~~ Word[0x0011fe70]
                                                #; (lsu) s10 <-- 0x80002e0c
      0x800026d8 lw      s9, 20(sp)             #; sp  = 0x0011fe60, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 9
      0x800026dc lw      s8, 24(sp)             #; sp  = 0x0011fe60, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 10
      0x800026e0 lw      s7, 28(sp)             #; sp  = 0x0011fe60, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x800026e4 lw      s6, 32(sp)             #; sp  = 0x0011fe60, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x800026e8 lw      s5, 36(sp)             #; sp  = 0x0011fe60, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- -1
      0x800026ec lw      s4, 40(sp)             #; sp  = 0x0011fe60, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0x0011ff17
      0x800026f0 lw      s3, 44(sp)             #; sp  = 0x0011fe60, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0x0011ff28
      0x800026f4 lw      s2, 48(sp)             #; sp  = 0x0011fe60, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x8000170c
      0x800026f8 lw      s1, 52(sp)             #; sp  = 0x0011fe60, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 0x0011febd
      0x800026fc lw      s0, 56(sp)             #; sp  = 0x0011fe60, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 256
      0x80002700 lw      ra, 60(sp)             #; sp  = 0x0011fe60, ra  <~~ Word[0x0011fe9c]
      0x80002704 addi    sp, sp, 64             #; sp  = 0x0011fe60, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x800015fc
      0x80002708 ret                            #; ra  = 0x800015fc, goto 0x800015fc
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800015fc mv      s8, a0                 #; a0  = 11, (wrb) s8  <-- 11
      0x80001600 li      s6, 37                 #; (wrb) s6  <-- 37
      0x80001604 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80001608 addi    s0, s10, 1             #; s10 = 0x80002e0c, (wrb) s0  <-- 0x80002e0d
      0x8000160c j       pc - 0xa74             #; goto 0x80000b98
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b98 addi    s10, s0, 2             #; s0  = 0x80002e0d, (wrb) s10 <-- 0x80002e0f
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b9c mv      s9, s8                 #; s8  = 11, (wrb) s9  <-- 11
      0x80000ba0 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ba4 lbu     a0, 0(s0)              #; s0  = 0x80002e0d, a0  <~~ Byte[0x80002e0d]
                                                #; (lsu) a0  <-- 10
      0x80000ba8 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000bac beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000bb0 addi    s1, s9, 1              #; s9  = 11, (wrb) s1  <-- 12
      0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000bb8 mv      a2, s9                 #; s9  = 11, (wrb) a2  <-- 11
      0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
      0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 11
      0x8000172c addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 12 ~~> Word[0x8000319c]
      0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 11, (wrb) a4  <-- 0x800031a7
      0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a7, 10 ~~> Byte[0x800031ef]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 12
      0x80001740 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x80001744 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x80001748 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x8000174c snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x80001750 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x80001754 bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001758 add     a0, a3, a2             #; a3  = 0x8000319c, a2  = 0, (wrb) a0  <-- 0x8000319c
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000175c addi    a2, a0, 72             #; a0  = 0x8000319c, (wrb) a2  <-- 0x800031e4
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001760 sw      zero, 12(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031a8]
      0x80001764 li      a3, 64                 #; (wrb) a3  <-- 64
      0x80001768 sw      a3, 8(a0)              #; a0  = 0x8000319c, 64 ~~> Word[0x800031a4]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000176c sw      zero, 20(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031b0]
      0x80001770 li      a3, 1                  #; (wrb) a3  <-- 1
      0x80001774 sw      a3, 16(a0)             #; a0  = 0x8000319c, 1 ~~> Word[0x800031ac]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001778 sw      zero, 28(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031b8]
      0x8000177c sw      a2, 24(a0)             #; a0  = 0x8000319c, 0x800031e4 ~~> Word[0x800031b4]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001780 lw      a2, 0(a1)              #; a1  = 0x8000319c, a2  <~~ Word[0x8000319c]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001784 addi    a3, a0, 8              #; a0  = 0x8000319c, (wrb) a3  <-- 0x800031a4
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001788 sw      zero, 36(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031c0]
                                                #; (lsu) a2  <-- 12
      0x8000178c sw      a2, 32(a0)             #; a0  = 0x8000319c, 12 ~~> Word[0x800031bc]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001790 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003790
      0x80001794 addi    a0, a0, -1872          #; a0  = 0x80003790, (wrb) a0  <-- 0x80003040
      0x80001798 sw      a3, 0(a0)              #; a0  = 0x80003040, 0x800031a4 ~~> Word[0x80003040]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000179c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000379c
      0x800017a0 addi    a0, a0, -1820          #; a0  = 0x8000379c, (wrb) a0  <-- 0x80003080
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a4 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
                                                #; (lsu) a2  <-- 0
      0x800017a8 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800017a4
      0x800017a4 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
                                                #; (lsu) a2  <-- 0
      0x800017a8 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800017a4
      0x800017a4 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
                                                #; (lsu) a2  <-- 0
      0x800017a8 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800017a4
      0x800017a4 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
                                                #; (lsu) a2  <-- 1
      0x800017a8 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017ac sw      zero, 0(a0)            #; a0  = 0x80003080, 0 ~~> Word[0x80003080]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017b0 sw      zero, 0(a1)            #; a1  = 0x8000319c, 0 ~~> Word[0x8000319c]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002e0d, (wrb) s0  <-- 0x80002e0e
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002e0f, (wrb) s10 <-- 0x80002e10
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bcc mv      s9, s1                 #; s1  = 12, (wrb) s9  <-- 12
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002e0e, a0  <~~ Byte[0x80002e0e]
                                                #; (lsu) a0  <-- 0
      0x80000bd4 bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000bd8 j       pc + 0xad8             #; goto 0x800016b0
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x800016b0 mv      a2, s9                 #; s9  = 12, (wrb) a2  <-- 12
      0x800016b4 bltu    s9, s5, pc + 8         #; s9  = 12, s5  = -1, taken, goto 0x800016bc
      0x800016bc li      a0, 0                  #; (wrb) a0  <-- 0
      0x800016c0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800016c4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800016c8 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x800016cc, goto 0x8000170c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800017b4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x800016cc, goto 0x800016cc
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x800016cc mv      a0, s9                 #; s9  = 12, (wrb) a0  <-- 12
      0x800016d0 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
                                                #; (lsu) s11 <-- 0
      0x800016d4 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
                                                #; (lsu) s10 <-- 0
      0x800016d8 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
                                                #; (lsu) s9  <-- 0
      0x800016dc lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
                                                #; (lsu) s8  <-- 0
      0x800016e0 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
                                                #; (lsu) s7  <-- 0
      0x800016e4 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
                                                #; (lsu) s6  <-- 0
      0x800016e8 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
                                                #; (lsu) s5  <-- 0
      0x800016ec lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
                                                #; (lsu) s4  <-- 0
      0x800016f0 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
                                                #; (lsu) s3  <-- 0
      0x800016f4 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
                                                #; (lsu) s2  <-- 0
      0x800016f8 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
                                                #; (lsu) s1  <-- 0
      0x800016fc lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
                                                #; (lsu) s0  <-- 0
      0x80001700 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
      0x80001704 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
                                                #; (lsu) ra  <-- 0x80000b08
      0x80001708 ret                            #; ra  = 0x80000b08, goto 0x80000b08
; printf_ (printf.c:869)
      0x80000b08 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
      0x80000b0c addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x80000a68
      0x80000b10 ret                            #; ra  = 0x80000a68, goto 0x80000a68
; main (bench_sp.c:0)
      0x80000a68 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a68
      0x80000a6c addi    a0, a0, 1656           #; a0  = 0x80002a68, (wrb) a0  <-- 0x800030e0
      0x80000a70 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800030e0]
                                                #; (f:lsu) ft3  <-- -285.0
; main (bench_sp.c:57)
      0x80000a80 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
      0x80000a74 fadd.d  ft3, fs0, ft3          #; fs0  = 285.0, ft3  = -285.0
                                                #; (lsu) a2  <-- 0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000a84 lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
      0x80000a78 fsgnjx.d fs0, ft3, ft3         #; ft3  = 0.0, ft3  = 0.0
      0x80000a88 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a88
                                                #; (f:fpu) fs0  <-- 0.0
      0x80000a8c addi    a0, a0, 877            #; a0  = 0x80002a88, (wrb) a0  <-- 0x80002df5
      0x80000a7c fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
                                                #; (lsu) a3  <-- 0
      0x80000a90 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a90
      0x80000a94 jalr    ra, ra, 40             #; ra  = 0x80000a90, (wrb) ra  <-- 0x80000a98, goto 0x80000ab8
; printf_ (printf.c:863)
      0x80000ab8 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x80000abc sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000a98 ~~> Word[0x0011ff1c]
      0x80000ac0 mv      t0, a0                 #; a0  = 0x80002df5, (wrb) t0  <-- 0x80002df5
      0x80000ac4 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 10 ~~> Word[0x0011ff3c]
      0x80000ac8 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff38]
      0x80000acc sw      a5, 36(sp)             #; sp  = 0x0011ff10, 12 ~~> Word[0x0011ff34]
      0x80000ad0 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff30]
      0x80000ad4 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
      0x80000ad8 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
      0x80000adc sw      a1, 20(sp)             #; sp  = 0x0011ff10, 0x0011ff17 ~~> Word[0x0011ff24]
      0x80000ae0 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
; printf_ (printf.c:865)
      0x80000ae4 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
; printf_ (printf.c:867)
      0x80000ae8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001ae8
      0x80000aec addi    a0, a0, -988           #; a0  = 0x80001ae8, (wrb) a0  <-- 0x8000170c
      0x80000af0 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
      0x80000af4 li      a2, -1                 #; (wrb) a2  <-- -1
      0x80000af8 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
      0x80000afc mv      a3, t0                 #; t0  = 0x80002df5, (wrb) a3  <-- 0x80002df5
      0x80000b00 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000b00
      0x80000b04 jalr    ra, ra, 20             #; ra  = 0x80000b00, (wrb) ra  <-- 0x80000b08, goto 0x80000b14
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000b14 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
      0x80000b18 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000b08 ~~> Word[0x0011ff0c]
      0x80000b1c sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
      0x80000b20 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
      0x80000b24 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
      0x80000b28 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
      0x80000b2c sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
      0x80000b30 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
      0x80000b34 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
      0x80000b38 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
      0x80000b3c sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
      0x80000b40 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
      0x80000b44 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
      0x80000b48 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
      0x80000b4c mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
      0x80000b50 mv      s0, a3                 #; a3  = 0x80002df5, (wrb) s0  <-- 0x80002df5
      0x80000b54 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x80000b58 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x80000b5c beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b60 mv      s2, a0                 #; a0  = 0x8000170c, (wrb) s2  <-- 0x8000170c
      0x80000b64 j       pc + 0xc               #; goto 0x80000b70
      0x80000b70 li      s8, 0                  #; (wrb) s8  <-- 0
      0x80000b74 li      s6, 37                 #; (wrb) s6  <-- 37
      0x80000b78 li      s11, 16                #; (wrb) s11 <-- 16
      0x80000b7c li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000b80 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000b84 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000b88 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
      0x80000b8c lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000b90 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000b94 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b98 addi    s10, s0, 2             #; s0  = 0x80002df5, (wrb) s10 <-- 0x80002df7
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b9c mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000ba0 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ba4 lbu     a0, 0(s0)              #; s0  = 0x80002df5, a0  <~~ Byte[0x80002df5]
                                                #; (lsu) a0  <-- 101
      0x80000ba8 beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x80000bac beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000bb0 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000bb8 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
      0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 0
      0x8000172c addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 1 ~~> Word[0x8000319c]
      0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 0, (wrb) a4  <-- 0x8000319c
      0x80001738 sb      a0, 72(a4)             #; a4  = 0x8000319c, 101 ~~> Byte[0x800031e4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 1
      0x80001740 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x80001744 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x80001748 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x8000174c snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002df5, (wrb) s0  <-- 0x80002df6
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002df7, (wrb) s10 <-- 0x80002df8
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bcc mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002df6, a0  <~~ Byte[0x80002df6]
                                                #; (lsu) a0  <-- 114
      0x80000bd4 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000bac
      0x80000bac beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000bb0 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000bb8 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
      0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 1
      0x8000172c addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 2 ~~> Word[0x8000319c]
      0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 1, (wrb) a4  <-- 0x8000319d
      0x80001738 sb      a0, 72(a4)             #; a4  = 0x8000319d, 114 ~~> Byte[0x800031e5]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 2
      0x80001740 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x80001744 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x80001748 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x8000174c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002df6, (wrb) s0  <-- 0x80002df7
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002df8, (wrb) s10 <-- 0x80002df9
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bcc mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002df7, a0  <~~ Byte[0x80002df7]
                                                #; (lsu) a0  <-- 114
      0x80000bd4 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000bac
      0x80000bac beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000bb0 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000bb8 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
      0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 2
      0x8000172c addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 3 ~~> Word[0x8000319c]
      0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 2, (wrb) a4  <-- 0x8000319e
      0x80001738 sb      a0, 72(a4)             #; a4  = 0x8000319e, 114 ~~> Byte[0x800031e6]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 3
      0x80001740 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x80001744 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x80001748 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x8000174c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002df7, (wrb) s0  <-- 0x80002df8
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002df9, (wrb) s10 <-- 0x80002dfa
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bcc mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002df8, a0  <~~ Byte[0x80002df8]
                                                #; (lsu) a0  <-- 111
      0x80000bd4 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000bac
      0x80000bac beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000bb0 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000bb8 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
      0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 3
      0x8000172c addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 4 ~~> Word[0x8000319c]
      0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 3, (wrb) a4  <-- 0x8000319f
      0x80001738 sb      a0, 72(a4)             #; a4  = 0x8000319f, 111 ~~> Byte[0x800031e7]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 4
      0x80001740 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x80001744 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x80001748 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x8000174c snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002df8, (wrb) s0  <-- 0x80002df9
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002dfa, (wrb) s10 <-- 0x80002dfb
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bcc mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002df9, a0  <~~ Byte[0x80002df9]
                                                #; (lsu) a0  <-- 114
      0x80000bd4 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000bac
      0x80000bac beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000bb0 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000bb8 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
      0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 4
      0x8000172c addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 5 ~~> Word[0x8000319c]
      0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 4, (wrb) a4  <-- 0x800031a0
      0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a0, 114 ~~> Byte[0x800031e8]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 5
      0x80001740 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x80001744 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x80001748 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x8000174c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002df9, (wrb) s0  <-- 0x80002dfa
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002dfb, (wrb) s10 <-- 0x80002dfc
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bcc mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002dfa, a0  <~~ Byte[0x80002dfa]
                                                #; (lsu) a0  <-- 32
      0x80000bd4 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000bac
      0x80000bac beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000bb0 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000bb8 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
      0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 5
      0x8000172c addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 6 ~~> Word[0x8000319c]
      0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 5, (wrb) a4  <-- 0x800031a1
      0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a1, 32 ~~> Byte[0x800031e9]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 6
      0x80001740 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x80001744 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x80001748 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x8000174c snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002dfa, (wrb) s0  <-- 0x80002dfb
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002dfc, (wrb) s10 <-- 0x80002dfd
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bcc mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002dfb, a0  <~~ Byte[0x80002dfb]
                                                #; (lsu) a0  <-- 61
      0x80000bd4 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000bac
      0x80000bac beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000bb0 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000bb8 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
      0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 6
      0x8000172c addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 7 ~~> Word[0x8000319c]
      0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 6, (wrb) a4  <-- 0x800031a2
      0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a2, 61 ~~> Byte[0x800031ea]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 7
      0x80001740 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x80001744 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x80001748 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x8000174c snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002dfb, (wrb) s0  <-- 0x80002dfc
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002dfd, (wrb) s10 <-- 0x80002dfe
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bcc mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002dfc, a0  <~~ Byte[0x80002dfc]
                                                #; (lsu) a0  <-- 32
      0x80000bd4 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000bac
      0x80000bac beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000bb0 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000bb8 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
      0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 7
      0x8000172c addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 8 ~~> Word[0x8000319c]
      0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 7, (wrb) a4  <-- 0x800031a3
      0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a3, 32 ~~> Byte[0x800031eb]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 8
      0x80001740 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x80001744 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x80001748 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x8000174c snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002dfc, (wrb) s0  <-- 0x80002dfd
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002dfe, (wrb) s10 <-- 0x80002dff
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bcc mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002dfd, a0  <~~ Byte[0x80002dfd]
                                                #; (lsu) a0  <-- 37
      0x80000bd4 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000bac
      0x80000bac beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000bdc
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000bdc li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000be0 j       pc + 0x10              #; goto 0x80000bf0
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000bf0 lbu     a0, -1(s10)            #; s10 = 0x80002dff, a0  <~~ Byte[0x80002dfe]
                                                #; (lsu) a0  <-- 102
      0x80000bf4 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000bf8 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000c30
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000c30 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000c34 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000c38 addi    a1, s10, -1            #; s10 = 0x80002dff, (wrb) a1  <-- 0x80002dfe
      0x80000c3c li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000c40 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000cbc
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000cbc li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000cc0 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000d10
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000d10 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000d14 mv      s10, a1                #; a1  = 0x80002dfe, (wrb) s10 <-- 0x80002dfe
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000d18 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000d1c li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000d20 j       pc + 0xc               #; goto 0x80000d2c
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000d2c addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000d30 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000d34 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000d38 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000d3c li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000d40 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000da4
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000da4 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000da8 li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000dac bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000db0 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000db4 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002db4
      0x80000db8 addi    a2, a2, 204            #; a2  = 0x80002db4, (wrb) a2  <-- 0x80002e80
      0x80000dbc add     a1, a1, a2             #; a1  = 260, a2  = 0x80002e80, (wrb) a1  <-- 0x80002f84
      0x80000dc0 lw      a2, 0(a1)              #; a1  = 0x80002f84, a2  <~~ Word[0x80002f84]
      0x80000dc4 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000dc8 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000dfc
      0x80000dcc jr      a2                     #; a2  = 0x80000dfc, goto 0x80000dfc
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80000dfc li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000e00 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000e08
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000e08 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
      0x80000e0c andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
      0x80000e14 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
      0x80000e18 mv      a0, s2                 #; s2  = 0x8000170c, (wrb) a0  <-- 0x8000170c
      0x80000e10 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
      0x80000e1c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
; ?? (??:0)
                                                #; (f:lsu) fa0  <-- 0.0
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000e20 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000e24 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e28 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000e2c mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000e30 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000e34 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001e34
      0x80000e38 jalr    ra, ra, -1656          #; ra  = 0x80001e34, (wrb) ra  <-- 0x80000e3c, goto 0x800017bc
; _ftoa (printf.c:340)
      0x800017bc addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
      0x800017c0 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000e3c ~~> Word[0x0011fe9c]
      0x800017c4 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
      0x800017c8 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
      0x800017cc sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x8000170c ~~> Word[0x0011fe90]
      0x800017d0 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
      0x800017d4 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
      0x800017d8 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
      0x800017dc sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
      0x800017e0 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
      0x800017e4 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
      0x800017e8 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
      0x800017ec sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002dfe ~~> Word[0x0011fe70]
      0x800017f0 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe68]
      0x800017fc auipc   s1, 0x2                #; (wrb) s1  <-- 0x800037fc
      0x800017f4 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
      0x800017f8 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
      0x80001800 addi    s1, s1, -1804          #; s1  = 0x800037fc, (wrb) s1  <-- 0x800030f0
; _ftoa (printf.c:351)
      0x8000180c mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
      0x80001804 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x800030f0]
; _ftoa (printf.c:0)
      0x80001810 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x80001814 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x80001808 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
      0x80001818 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x8000181c mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
      0x80001820 mv      s7, a0                 #; a0  = 0x8000170c, (wrb) s7  <-- 0x8000170c
; _ftoa (printf.c:351)
      0x80001824 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001914
; _ftoa (printf.c:0)
      0x80001918 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002918
      0x8000191c addi    a0, a0, 2016           #; a0  = 0x80002918, (wrb) a0  <-- 0x800030f8
      0x80001914 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x80001920 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030f8]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x80001924 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x80001928 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001944
; _ftoa (printf.c:0)
      0x80001944 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002944
      0x80001948 addi    a0, a0, 1980           #; a0  = 0x80002944, (wrb) a0  <-- 0x80003100
      0x8000194c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003100]
      0x80001950 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002950
      0x80001954 addi    a0, a0, 1976           #; a0  = 0x80002950, (wrb) a0  <-- 0x80003108
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
      0x80001958 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003108]
; _ftoa (printf.c:358)
      0x8000195c fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
      0x80001960 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
                                                #; (acc) a0  <-- 0x00b57533
      0x80001964 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80001968 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001a64
; _ftoa (printf.c:374)
      0x80001a64 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x80001a68 li      s8, 6                  #; (wrb) s8  <-- 6
      0x80001a6c beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001a74
; _ftoa (printf.c:0)
      0x80001a74 li      a0, 10                 #; (wrb) a0  <-- 10
; _ftoa (printf.c:378)
      0x80001a7c bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001ab4
; _ftoa (printf.c:0)
      0x80001a78 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs2  <-- 0.0
      0x80001ab4 li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x80001ab8 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x80001abc auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002abc
      0x80001ac0 addi    a1, a1, 1300           #; a1  = 0x80002abc, (wrb) a1  <-- 0x80002fd0
      0x80001ac4 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002fd0, (wrb) a0  <-- 0x80003000
      0x80001ac8 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003000]
; _ftoa (printf.c:383)
      0x80001acc fcvt.w.d s1, fs2               #; fs2  = 0.0
; _ftoa (printf.c:384)
      0x80001ad0 fcvt.d.w ft0, s1               #; ac1  = 0, (f:lsu) ft1  <-- 1000000.0000000
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:0)
      0x80001adc auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002adc
      0x80001ad4 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:384)
      0x80001ad8 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:0)
      0x80001ae0 addi    a0, a0, 1588           #; a0  = 0x80002adc, (wrb) a0  <-- 0x80003110
      0x80001ae4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003110]
; _ftoa (printf.c:385)
      0x80001ae8 fcvt.wu.d a0, ft2              #; ft2  = 0.0
                                                #; (acc) gp  <-- 0xd21501d3
; _ftoa (printf.c:386)
      0x80001aec fcvt.d.wu ft3, a0              #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
                                                #; (f:lsu) ft0  <-- 0.5
      0x80001af0 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:388)
      0x80001af4 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x80001af8 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001b18
; _ftoa (printf.c:396)
      0x80001b18 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
                                                #; (acc) s4  <-- 0x00059a63
      0x80001b1c bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001b30
; _ftoa (printf.c:403)
      0x80001b34 beqz    s8, pc + 216           #; s8  = 6, not taken
      0x80001b30 fcvt.d.w fs1, zero             #; ac1  = 0
; _ftoa (printf.c:0)
      0x80001b38 li      a2, 0                  #; (wrb) a2  <-- 0
                                                #; (f:fpu) fs1  <-- 0.0
      0x80001b3c addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:414)
      0x80001b40 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
      0x80001b44 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001b48 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x80001b4c lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80001b50 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80001b54 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001b58 li      a7, 9                  #; (wrb) a7  <-- 9
      0x80001b5c beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80001b60 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x80001b64 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001b68 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001b6c mul     a3, a0, a6             #; a0  = 0, a6  = 10
      0x80001b70 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001b74 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x80001b78 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
      0x80001b7c sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
; _ftoa (printf.c:417)
      0x80001b80 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80001b84 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x80001b88 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x80001b8c addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80001b90 li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001b94 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x80001b98 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x80001b9c seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x80001ba0 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x80001ba4 bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x80001ba8 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
; _ftoa (printf.c:422)
      0x80001bac add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
      0x80001bb0 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x80001bb4 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x80001bb8 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x80001bbc li      a1, 31                 #; (wrb) a1  <-- 31
      0x80001bc0 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x80001bc4 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
      0x80001bc8 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x80001bcc bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001bd4
      0x80001bd4 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x80001bd8 li      a1, 48                 #; (wrb) a1  <-- 48
      0x80001bdc auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000bdc
      0x80001be0 jalr    ra, ra, -1668          #; ra  = 0x80000bdc, (wrb) ra  <-- 0x80001be4, goto 0x80000558
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
      0x800005ec ret                            #; ra  = 0x80001be4, goto 0x80001be4
; _ftoa (printf.c:0)
      0x80001be4 li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x80001be8 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x80001bec sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80001bf0 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x80001bf4 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80001bf8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001bfc addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001c00 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001be8
      0x80001be8 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x80001bec sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80001bf0 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x80001bf4 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80001bf8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001bfc addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001c00 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001be8
      0x80001be8 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x80001bec sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80001bf0 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x80001bf4 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80001bf8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001bfc addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001c00 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001be8
      0x80001be8 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x80001bec sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80001bf0 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x80001bf4 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80001bf8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001bfc addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001c00 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001be8
      0x80001be8 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x80001bec sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80001bf0 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x80001bf4 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80001bf8 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001bfc addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001c00 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001c04 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x80001c08 j       pc + 0x28              #; goto 0x80001c30
      0x80001c30 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001c34 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001c38 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:427)
      0x80001c3c add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
      0x80001c40 li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001c44 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
      0x80001c48 j       pc + 0x8               #; goto 0x80001c50
; _ftoa (printf.c:0)
      0x80001c50 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001c54 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001c58 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001c5c li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001c64 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001c60 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
      0x80001c68 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001c6c li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001c70 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
      0x80001c74 li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001c78 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001c7c mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
      0x80001c80 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001c84 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001c88 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001c8c mul     a5, a0, a6             #; a0  = 0, a6  = 10
      0x80001c90 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001c94 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80001c98 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001c9c add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
; _ftoa (printf.c:434)
      0x80001ca0 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001ca4 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
; _ftoa (printf.c:0)
      0x80001ca8 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001cac mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001cb0 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80001cb4 j       pc + 0x8               #; goto 0x80001cbc
; _ftoa (printf.c:440)
      0x80001cbc andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001cc0 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001cc4 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001d30
; _ftoa (printf.c:0)
      0x80001d30 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001d34 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80001d38 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001d50
; _ftoa (printf.c:453)
      0x80001d50 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001d54 bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001d58 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001d5c beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001d88
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001d88 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001d8c sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80001d90 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001d94 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001d98 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001d9c mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001da0 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001dcc
; _ftoa (printf.c:0)
      0x80001dcc srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001dd0 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x80001dd4 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001dd8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
      0x80001ddc lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
                                                #; (lsu) a0  <-- 48
      0x80001de0 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x80001de4 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
      0x80001de8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001dec mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80001df0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001df4 jalr    s7                     #; s7  = 0x8000170c, (wrb) ra  <-- 0x80001df8, goto 0x8000170c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
      0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 8
      0x8000172c addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 9 ~~> Word[0x8000319c]
      0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 8, (wrb) a4  <-- 0x800031a4
      0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a4, 48 ~~> Byte[0x800031ec]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 9
      0x80001740 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x80001744 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x80001748 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x8000174c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x80001df8, goto 0x80001df8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001df8 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x80001dfc mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e00 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001dd8
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001dd8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
      0x80001ddc lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
      0x80001de0 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001de4 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80001de8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001dec mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001df0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001df4 jalr    s7                     #; s7  = 0x8000170c, (wrb) ra  <-- 0x80001df8, goto 0x8000170c
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
      0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 9
      0x8000172c addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 10 ~~> Word[0x8000319c]
      0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 9, (wrb) a4  <-- 0x800031a5
      0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a5, 46 ~~> Byte[0x800031ed]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 10
      0x80001740 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x80001744 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x80001748 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x8000174c snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x80001df8, goto 0x80001df8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001df8 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001dfc mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e00 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001dd8
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001dd8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
      0x80001ddc lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
      0x80001de0 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001de4 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001de8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001dec mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001df0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001df4 jalr    s7                     #; s7  = 0x8000170c, (wrb) ra  <-- 0x80001df8, goto 0x8000170c
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
      0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 10
      0x8000172c addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 11 ~~> Word[0x8000319c]
      0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 10, (wrb) a4  <-- 0x800031a6
      0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a6, 48 ~~> Byte[0x800031ee]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 11
      0x80001740 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x80001744 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x80001748 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x8000174c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x80001df8, goto 0x80001df8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001df8 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001dfc mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e00 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001dd8
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001dd8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
      0x80001ddc lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
      0x80001de0 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001de4 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001de8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001dec mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001df0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001df4 jalr    s7                     #; s7  = 0x8000170c, (wrb) ra  <-- 0x80001df8, goto 0x8000170c
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
      0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 11
      0x8000172c addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 12 ~~> Word[0x8000319c]
      0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 11, (wrb) a4  <-- 0x800031a7
      0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a7, 48 ~~> Byte[0x800031ef]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 12
      0x80001740 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x80001744 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x80001748 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x8000174c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x80001df8, goto 0x80001df8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001df8 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001dfc mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e00 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001dd8
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001dd8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
      0x80001ddc lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
      0x80001de0 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001de4 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001de8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001dec mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001df0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001df4 jalr    s7                     #; s7  = 0x8000170c, (wrb) ra  <-- 0x80001df8, goto 0x8000170c
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
      0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 12
      0x8000172c addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 13 ~~> Word[0x8000319c]
      0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 12, (wrb) a4  <-- 0x800031a8
      0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a8, 48 ~~> Byte[0x800031f0]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 13
      0x80001740 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x80001744 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x80001748 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x8000174c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x80001df8, goto 0x80001df8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001df8 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001dfc mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e00 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001dd8
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001dd8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
      0x80001ddc lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
      0x80001de0 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001de4 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001de8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001dec mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001df0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001df4 jalr    s7                     #; s7  = 0x8000170c, (wrb) ra  <-- 0x80001df8, goto 0x8000170c
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
      0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 13
      0x8000172c addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 14 ~~> Word[0x8000319c]
      0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 13, (wrb) a4  <-- 0x800031a9
      0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031a9, 48 ~~> Byte[0x800031f1]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 14
      0x80001740 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x80001744 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x80001748 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x8000174c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x80001df8, goto 0x80001df8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001df8 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001dfc mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e00 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001dd8
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001dd8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
      0x80001ddc lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
      0x80001de0 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001de4 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001de8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001dec mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001df0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001df4 jalr    s7                     #; s7  = 0x8000170c, (wrb) ra  <-- 0x80001df8, goto 0x8000170c
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
      0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 14
      0x8000172c addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 15 ~~> Word[0x8000319c]
      0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 14, (wrb) a4  <-- 0x800031aa
      0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031aa, 48 ~~> Byte[0x800031f2]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 15
      0x80001740 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x80001744 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x80001748 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x8000174c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x80001df8, goto 0x80001df8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001df8 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001dfc mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e00 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001dd8
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001dd8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
      0x80001ddc lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
      0x80001de0 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001de4 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001de8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001dec mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001df0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001df4 jalr    s7                     #; s7  = 0x8000170c, (wrb) ra  <-- 0x80001df8, goto 0x8000170c
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
      0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 15
      0x8000172c addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 16 ~~> Word[0x8000319c]
      0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 15, (wrb) a4  <-- 0x800031ab
      0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031ab, 48 ~~> Byte[0x800031f3]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 16
      0x80001740 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x80001744 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x80001748 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x8000174c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001750 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001754 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800017b4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x80001df8, goto 0x80001df8
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001df8 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001dfc mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e00 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001e04 j       pc + 0x8               #; goto 0x80001e0c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e0c sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x80001e10 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80001e14 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001e18 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001e1c or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001e20 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001e50
; _ftoa (printf.c:0)
      0x80001e50 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x80001e54 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80001e58 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
      0x80001e5c fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
                                                #; (f:lsu) fs1  <-- 0.0
      0x80001e64 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
      0x80001e60 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68]
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) s10 <-- 0x80002dfe
      0x80001e68 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 8
      0x80001e6c lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 16
      0x80001e70 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x80001e74 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x80001e78 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- -1
      0x80001e7c lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0x0011ff17
      0x80001e80 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0x0011ff30
      0x80001e84 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x8000170c
      0x80001e88 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 8
      0x80001e8c lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0
      0x80001e90 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
      0x80001e94 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80000e3c
      0x80001e98 ret                            #; ra  = 0x80000e3c, goto 0x80000e3c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e3c j       pc + 0x7c0             #; goto 0x800015fc
      0x800015fc mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x80001600 li      s6, 37                 #; (wrb) s6  <-- 37
      0x80001604 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80001608 addi    s0, s10, 1             #; s10 = 0x80002dfe, (wrb) s0  <-- 0x80002dff
      0x8000160c j       pc - 0xa74             #; goto 0x80000b98
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000b98 addi    s10, s0, 2             #; s0  = 0x80002dff, (wrb) s10 <-- 0x80002e01
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b9c mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x80000ba0 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000ba4 lbu     a0, 0(s0)              #; s0  = 0x80002dff, a0  <~~ Byte[0x80002dff]
                                                #; (lsu) a0  <-- 10
      0x80000ba8 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000bac beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000bb0 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000bb8 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000bc0 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x80000bc4, goto 0x8000170c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001710 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001714 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001718 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x8000171c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000371c
      0x80001720 addi    a3, a3, -1408          #; a3  = 0x8000371c, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001724 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001728 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 16
      0x8000172c addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x80001730 sw      a5, 0(a1)              #; a1  = 0x8000319c, 17 ~~> Word[0x8000319c]
      0x80001734 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 16, (wrb) a4  <-- 0x800031ac
      0x80001738 sb      a0, 72(a4)             #; a4  = 0x800031ac, 10 ~~> Byte[0x800031f4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000173c lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 17
      0x80001740 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x80001744 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x80001748 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x8000174c snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x80001750 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x80001754 bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001758 add     a0, a3, a2             #; a3  = 0x8000319c, a2  = 0, (wrb) a0  <-- 0x8000319c
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000175c addi    a2, a0, 72             #; a0  = 0x8000319c, (wrb) a2  <-- 0x800031e4
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001760 sw      zero, 12(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031a8]
      0x80001764 li      a3, 64                 #; (wrb) a3  <-- 64
      0x80001768 sw      a3, 8(a0)              #; a0  = 0x8000319c, 64 ~~> Word[0x800031a4]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000176c sw      zero, 20(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031b0]
      0x80001770 li      a3, 1                  #; (wrb) a3  <-- 1
      0x80001774 sw      a3, 16(a0)             #; a0  = 0x8000319c, 1 ~~> Word[0x800031ac]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001778 sw      zero, 28(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031b8]
      0x8000177c sw      a2, 24(a0)             #; a0  = 0x8000319c, 0x800031e4 ~~> Word[0x800031b4]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001780 lw      a2, 0(a1)              #; a1  = 0x8000319c, a2  <~~ Word[0x8000319c]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001784 addi    a3, a0, 8              #; a0  = 0x8000319c, (wrb) a3  <-- 0x800031a4
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001788 sw      zero, 36(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031c0]
                                                #; (lsu) a2  <-- 17
      0x8000178c sw      a2, 32(a0)             #; a0  = 0x8000319c, 17 ~~> Word[0x800031bc]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001790 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003790
      0x80001794 addi    a0, a0, -1872          #; a0  = 0x80003790, (wrb) a0  <-- 0x80003040
      0x80001798 sw      a3, 0(a0)              #; a0  = 0x80003040, 0x800031a4 ~~> Word[0x80003040]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000179c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000379c
      0x800017a0 addi    a0, a0, -1820          #; a0  = 0x8000379c, (wrb) a0  <-- 0x80003080
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a4 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
                                                #; (lsu) a2  <-- 0
      0x800017a8 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800017a4
      0x800017a4 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
                                                #; (lsu) a2  <-- 0
      0x800017a8 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800017a4
      0x800017a4 lw      a2, 0(a0)              #; a0  = 0x80003080, a2  <~~ Word[0x80003080]
                                                #; (lsu) a2  <-- 1
      0x800017a8 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017ac sw      zero, 0(a0)            #; a0  = 0x80003080, 0 ~~> Word[0x80003080]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017b0 sw      zero, 0(a1)            #; a1  = 0x8000319c, 0 ~~> Word[0x8000319c]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x80000bc4, goto 0x80000bc4
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000bc4 addi    s0, s0, 1              #; s0  = 0x80002dff, (wrb) s0  <-- 0x80002e00
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000bc8 addi    s10, s10, 1            #; s10 = 0x80002e01, (wrb) s10 <-- 0x80002e02
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bcc mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bd0 lbu     a0, 0(s0)              #; s0  = 0x80002e00, a0  <~~ Byte[0x80002e00]
                                                #; (lsu) a0  <-- 0
      0x80000bd4 bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000bd8 j       pc + 0xad8             #; goto 0x800016b0
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x800016b0 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x800016b4 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x800016bc
      0x800016bc li      a0, 0                  #; (wrb) a0  <-- 0
      0x800016c0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800016c4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800016c8 jalr    s2                     #; s2  = 0x8000170c, (wrb) ra  <-- 0x800016cc, goto 0x8000170c
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x8000170c beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800017b4
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800017b4 ret                            #; ra  = 0x800016cc, goto 0x800016cc
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x800016cc mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x800016d0 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
                                                #; (lsu) s11 <-- 0
      0x800016d4 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
                                                #; (lsu) s10 <-- 0
      0x800016d8 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
                                                #; (lsu) s9  <-- 0
      0x800016dc lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
                                                #; (lsu) s8  <-- 0
      0x800016e0 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
                                                #; (lsu) s7  <-- 0
      0x800016e4 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
                                                #; (lsu) s6  <-- 0
      0x800016e8 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
                                                #; (lsu) s5  <-- 0
      0x800016ec lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
                                                #; (lsu) s4  <-- 0
      0x800016f0 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
                                                #; (lsu) s3  <-- 0
      0x800016f4 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
                                                #; (lsu) s2  <-- 0
      0x800016f8 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
                                                #; (lsu) s1  <-- 0
      0x800016fc lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
                                                #; (lsu) s0  <-- 0
      0x80001700 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
      0x80001704 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
                                                #; (lsu) ra  <-- 0x80000b08
      0x80001708 ret                            #; ra  = 0x80000b08, goto 0x80000b08
; printf_ (printf.c:869)
      0x80000b08 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
      0x80000b0c addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x80000a98
      0x80000b10 ret                            #; ra  = 0x80000a98, goto 0x80000a98
; main (bench_sp.c:0)
      0x80000a98 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a98
      0x80000a9c addi    a0, a0, 1616           #; a0  = 0x80002a98, (wrb) a0  <-- 0x800030e8
      0x80000aa0 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800030e8]
; main (bench_sp.c:60)
      0x80000aac lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
      0x80000ab0 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
                                                #; (f:lsu) ft3  <-- 0.0001
; main (bench_sp.c:59)
      0x80000aa4 flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0
                                                #; (lsu) ra  <-- 0x80002b70
; main (bench_sp.c:60)
      0x80000ab4 ret                            #; ra  = 0x80002b70, goto 0x80002b70
      0x80000aa8 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
                                                #; (f:lsu) fs0  <-- 0.0
; ?? (start.S:184)
      0x80002b70 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x80002b74 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b74
      0x80002b78 jalr    ra, ra, 524            #; ra  = 0x80002b74, (wrb) ra  <-- 0x80002b7c, goto 0x80002d80
; ?? (start_snitch.S:33)
      0x80002d80 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002d84 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002b7c ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002d88 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002d88
      0x80002d8c jalr    ra, ra, -1268          #; ra  = 0x80002d88, (wrb) ra  <-- 0x80002d90, goto 0x80002894
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002894 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002898 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000289c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800028a0 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800028a4 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x800028a8 ret                            #; ra  = 0x80002d90, goto 0x80002d90
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002d90 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002d94 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002d98 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002d9c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002b7c
; ?? (start_snitch.S:40)
      0x80002da0 ret                            #; ra  = 0x80002b7c, goto 0x80002b7c
; ?? (start.S:195)
      0x80002b7c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x80002b80 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b80
      0x80002b84 jalr    ra, ra, 556            #; ra  = 0x80002b80, (wrb) ra  <-- 0x80002b88, goto 0x80002dac
; ?? (start_snitch.S:15)
      0x80002dac addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80002db0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80002db4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002b88 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80002db8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002db8
      0x80002dbc jalr    ra, ra, -1348          #; ra  = 0x80002db8, (wrb) ra  <-- 0x80002dc0, goto 0x80002874
; snrt_global_core_idx (team.c:32)
      0x80002874 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002878 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000287c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002880 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002884 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x80002888 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x8000288c sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x80002890 ret                            #; ra  = 0x80002dc0, goto 0x80002dc0
; ?? (start_snitch.S:20)
      0x80002dc0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x80002dc4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80002dc8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x80002dcc bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x80002b88
; ?? (start_snitch.S:28)
      0x80002dd0 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x80002dd4 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x80002dd8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002dd8
      0x80002ddc addi    t1, t1, 616            #; t1  = 0x80002dd8, (wrb) t1  <-- 0x80003040
; ?? (start_snitch.S:31)
      0x80002de0 sw      t0, 0(t1)              #; t1  = 0x80003040, 1 ~~> Word[0x80003040]
; ?? (start_snitch.S:32)
      0x80002de4 ret                            #; ra  = 0x80002b88, goto 0x80002b88
; ?? (start.S:198)
      0x80002b88 wfi                            #; 
                        tion 0 @ (12, 1998):
                           38
                           50
                            1
                           18
                      17.9737
                       0.1545
                       0.2005
                          1.0
                          1.0
                            0
                          1.0
                       9.0556
                       0.0388
                       0.0272
                       0.7013
                         1987
                       0.1933
            tion 1 @ (2000, 2093):
                            0
                            0
                            0
                       0.1837
                       0.4194
                          1.0
                          1.0
                            4
                       3.4444
                            0
                       0.1327
                       0.0918
                       0.6923
                           98
                       0.3163
            tion 2 @ (2095, 7793):
                          168
                          174
                           13
                            4
                       9.6322
                       0.2960
                       0.0215
                          1.0
                          1.0
                            0
                       0.8182
                       5.9231
                       0.0065
                       0.0039
                       0.5946
                         5699
                       0.3025
