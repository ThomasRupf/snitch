; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x80002a60
      0x00001014 jalr    t0                     #; t0  = 0x80002a60, (wrb) ra  <-- 4120, goto 0x80002a60
; ?? (start.S:20)
      0x80002a60 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003a60
; ?? (start.S:21)
      0x80002a64 addi    gp, gp, -280           #; gp  = 0x80003a60, (wrb) gp  <-- 0x80003948
; ?? (start.S:28)
      0x80002a68 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a68
      0x80002a6c jalr    ra, ra, 964            #; ra  = 0x80002a68, (wrb) ra  <-- 0x80002a70, goto 0x80002e2c
; ?? (start_snitch.S:16)
      0x80002e2c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80002e30 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80002e34 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80002e38 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x80002e3c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80002e40 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80002e44 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80002e48 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x80002e4c mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80002e50 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80002e54 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80002e58 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x80002e5c ret                            #; ra  = 0x80002a70, goto 0x80002a70
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x80002a70 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x80002a74 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x80002a78 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a78
      0x80002a7c jalr    ra, ra, 1036           #; ra  = 0x80002a78, (wrb) ra  <-- 0x80002a80, goto 0x80002e84
; ?? (start_snitch.S:48)
      0x80002e84 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80002e88 ret                            #; ra  = 0x80002a80, goto 0x80002a80
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x80002a80 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x80002a84 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x80002a88 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x80002a8c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x80002a90 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x80002a94 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a94
      0x80002a98 addi    t0, t0, 1988           #; t0  = 0x80002a94, (wrb) t0  <-- 0x80003258
; ?? (start.S:49)
      0x80002a9c auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002a9c
      0x80002aa0 addi    t1, t1, 1984           #; t1  = 0x80002a9c, (wrb) t1  <-- 0x8000325c
; ?? (start.S:50)
      0x80002aa4 bge     t0, t1, pc + 16        #; t0  = 0x80003258, t1  = 0x8000325c, not taken
; ?? (start.S:51)
      0x80002aa8 sw      zero, 0(t0)            #; t0  = 0x80003258, 0 ~~> Word[0x80003258]
; ?? (start.S:52)
      0x80002aac addi    t0, t0, 4              #; t0  = 0x80003258, (wrb) t0  <-- 0x8000325c
; ?? (start.S:53)
      0x80002ab0 blt     t0, t1, pc - 8         #; t0  = 0x8000325c, t1  = 0x8000325c, not taken
; ?? (start.S:58)
      0x80002ab4 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x80002ab8 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x80002abc beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x80002ac0 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x80002ac4 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x80002ac8 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x80002acc fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x80002ad0 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x80002ad4 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x80002ad8 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x80002adc fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x80002ae0 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x80002ae4 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x80002ae8 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x80002aec fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x80002af0 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x80002af4 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x80002af8 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x80002afc fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x80002b00 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x80002b04 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x80002b08 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x80002b0c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x80002b10 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x80002b14 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x80002b18 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x80002b1c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x80002b20 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x80002b24 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x80002b28 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x80002b2c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x80002b30 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x80002b34 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x80002b38 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x80002b3c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x80002b40 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x80002b44 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x80002b48 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002b48
      0x80002b4c lw      t0, 900(t0)            #; t0  = 0x80002b48, t0  <~~ Word[0x80002ecc]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x80002b50 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x80002b54 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x80002b58 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002b58
      0x80002b5c lw      t2, 880(t2)            #; t2  = 0x80002b58, t2  <~~ Word[0x80002ec8]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x80002b60 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x80002b64 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x80002b68 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x80002b6c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x80002b70 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x80002b74 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x80002b78 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x80002b7c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x80002b80 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002b80
      0x80002b84 addi    t0, t0, 1480           #; t0  = 0x80002b80, (wrb) t0  <-- 0x80003148
; ?? (start.S:125)
      0x80002b88 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002b88
      0x80002b8c addi    t1, t1, 1472           #; t1  = 0x80002b88, (wrb) t1  <-- 0x80003148
; ?? (start.S:126)
      0x80002b90 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002b90
      0x80002b94 addi    t2, t2, 1464           #; t2  = 0x80002b90, (wrb) t2  <-- 0x80003148
; ?? (start.S:127)
      0x80002b98 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002b98
      0x80002b9c addi    t3, t3, 1472           #; t3  = 0x80002b98, (wrb) t3  <-- 0x80003158
; ?? (start.S:128)
      0x80002ba0 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003148, (wrb) sp  <-- 0x801230b8
; ?? (start.S:129)
      0x80002ba4 sub     sp, sp, t1             #; sp  = 0x801230b8, t1  = 0x80003148, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x80002ba8 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003148, (wrb) sp  <-- 0x801230b8
; ?? (start.S:131)
      0x80002bac sub     sp, sp, t3             #; sp  = 0x801230b8, t3  = 0x80003158, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x80002bb0 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x80002bb4 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x80002bb8 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x80002bbc mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x80002bc0 bge     t0, t1, pc + 24        #; t0  = 0x80003148, t1  = 0x80003148, taken, goto 0x80002bd8
; ?? (start.S:147)
      0x80002bd8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002bd8
      0x80002bdc addi    t0, t0, 1392           #; t0  = 0x80002bd8, (wrb) t0  <-- 0x80003148
; ?? (start.S:148)
      0x80002be0 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002be0
      0x80002be4 addi    t1, t1, 1400           #; t1  = 0x80002be0, (wrb) t1  <-- 0x80003158
; ?? (start.S:149)
      0x80002be8 bge     t0, t1, pc + 20        #; t0  = 0x80003148, t1  = 0x80003158, not taken
; ?? (start.S:150)
      0x80002bec sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x80002bf0 addi    t0, t0, 4              #; t0  = 0x80003148, (wrb) t0  <-- 0x8000314c
; ?? (start.S:152)
      0x80002bf4 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x80002bf8 blt     t0, t2, pc - 12        #; t0  = 0x8000314c, t2  = 0x80003148, not taken
; ?? (start.S:158)
      0x80002bfc addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x80002c00 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x80002c04 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x80002c08 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x80002c0c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x80002c10 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x80002c14 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c14
      0x80002c18 jalr    ra, ra, -1060          #; ra  = 0x80002c14, (wrb) ra  <-- 0x80002c1c, goto 0x800027f0
; _snrt_init_team (start.c:49)
      0x800027f0 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x800027f4 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x800027f8 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x800027fc sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x80002800 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x80002804 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x80002808 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x8000280c mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x80002810 mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x80002814 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x80002818 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x8000281c sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x80002820 divu    a0, a0, t0             #; a0  = 0, t0  = 8
                                                #; (acc) a6  <-- 0x00a7a823
; _snrt_init_team (start.c:54)
      0x80002824 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x80002828 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x8000282c sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x80002830 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x80002834 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x80002838 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x8000283c add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x80002840 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x80002844 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x80002848 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x8000284c lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x80002850 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x80002854 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x80002858 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x8000285c sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x80002860 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x80002864 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x80002868 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x8000286c add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x80002870 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x80002874 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x80002878 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x8000287c srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x80002880 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x80002884 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x80002888 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x8000288c sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x80002890 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x80002894 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x80002898 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x8000289c sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x800028a0 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x800028a4 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x800028a8 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x800028ac sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x800028b0 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800028b4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800028b8 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x800028bc lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800028c0 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x800028c4 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x800028c8 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x800028cc remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x800028d0 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x800028d4 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
                                                #; (acc) tp  <-- 0x00a5a223
      0x800028d8 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x800028dc li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x800028e0 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x800028e4 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800038e4
      0x800028e8 addi    a1, a1, -1672          #; a1  = 0x800038e4, (wrb) a1  <-- 0x8000325c
                                                #; (acc) a0  <-- 0x00b50533
      0x800028ec add     a0, a0, a1             #; a0  = 0, a1  = 0x8000325c, (wrb) a0  <-- 0x8000325c
      0x800028f0 sw      zero, 0(a0)            #; a0  = 0x8000325c, 0 ~~> Word[0x8000325c]
; _snrt_init_team (start.c:86)
      0x800028f4 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x800028f8 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x800028fc sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x80002900 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x80002904 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x80002908 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x8000290c addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x80002910 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x80002914 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x80002918 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x8000291c sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x80002920 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x80002924 lw      a0, 0(a1)              #; a1  = 0x8000325c, a0  <~~ Word[0x8000325c]
                                                #; (lsu) a0  <-- 0
      0x80002928 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x8000292c andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x80002930 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x80002934 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x80002938 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x8000293c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002940 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002944 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x80002948 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000294c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002950 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x80002954 ret                            #; ra  = 0x80002c1c, goto 0x80002c1c
; ?? (start.S:165)
      0x80002c1c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x80002c20 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x80002c24 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x80002c28 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x80002c2c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x80002c30 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x80002c34 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002c34
      0x80002c38 addi    t0, t0, 60             #; t0  = 0x80002c34, (wrb) t0  <-- 0x80002c70
; ?? (start.S:175)
      0x80002c3c csrw    mtvec, t0              #; t0  = 0x80002c70, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x80002c40 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c40
      0x80002c44 jalr    ra, ra, 544            #; ra  = 0x80002c40, (wrb) ra  <-- 0x80002c48, goto 0x80002e60
; ?? (start_snitch.S:33)
      0x80002e60 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002e64 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002c48 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002e68 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e68
      0x80002e6c jalr    ra, ra, -1264          #; ra  = 0x80002e68, (wrb) ra  <-- 0x80002e70, goto 0x80002978
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002978 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000297c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002980 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002984 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002988 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x8000298c ret                            #; ra  = 0x80002e70, goto 0x80002e70
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002e70 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002e74 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002e78 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002e7c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002c48
; ?? (start_snitch.S:40)
      0x80002e80 ret                            #; ra  = 0x80002c48, goto 0x80002c48
; ?? (start.S:183)
      0x80002c48 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000c48
      0x80002c4c jalr    ra, ra, -1204          #; ra  = 0x80000c48, (wrb) ra  <-- 0x80002c50, goto 0x80000794
; main (test_aliasing.c:24)
      0x80000794 addi    sp, sp, -144           #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011fed0
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (test_aliasing.c:25)
      0x80000798 sw      ra, 140(sp)            #; sp  = 0x0011fed0, 0x80002c50 ~~> Word[0x0011ff5c]
      0x8000079c sw      s0, 136(sp)            #; sp  = 0x0011fed0, 0 ~~> Word[0x0011ff58]
      0x800007a0 sw      s1, 132(sp)            #; sp  = 0x0011fed0, 0 ~~> Word[0x0011ff54]
      0x800007a4 sw      s2, 128(sp)            #; sp  = 0x0011fed0, 0 ~~> Word[0x0011ff50]
      0x800007a8 fsd     fs0, 120(sp)           #; 0.0 ~~> Doub[0x0011ff48]
      0x800007ac fsd     fs1, 112(sp)           #; 0.0 ~~> Doub[0x0011ff40]
      0x800007b0 fsd     fs2, 104(sp)           #; 0.0 ~~> Doub[0x0011ff38]
      0x800007b4 fsd     fs3, 96(sp)            #; 0.0 ~~> Doub[0x0011ff30]
      0x800007b8 fsd     fs4, 88(sp)            #; 0.0 ~~> Doub[0x0011ff28]
      0x800007bc fsd     fs5, 80(sp)            #; 0.0 ~~> Doub[0x0011ff20]
      0x800007c0 fsd     fs6, 72(sp)            #; 0.0 ~~> Doub[0x0011ff18]
      0x800007c4 fsd     fs7, 64(sp)            #; 0.0 ~~> Doub[0x0011ff10]
      0x800007c8 fsd     fs8, 56(sp)            #; 0.0 ~~> Doub[0x0011ff08]
      0x800007cc fsd     fs9, 48(sp)            #; 0.0 ~~> Doub[0x0011ff00]
      0x800007d8 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800007d0 fsd     fs10, 40(sp)           #; 0.0 ~~> Doub[0x0011fef8]
      0x800007dc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800007d4 fsd     fs11, 32(sp)           #; 0.0 ~~> Doub[0x0011fef0]
      0x800007e0 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
; main (test_aliasing.c:0)
      0x800007e4 li      a0, 0                  #; (wrb) a0  <-- 0
                                                #; (lsu) a1  <-- 0
; main (test_aliasing.c:25)
      0x800007e8 bnez    a1, pc + 876           #; a1  = 0, not taken
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (test_aliasing.c:29)
      0x800007ec lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800007f0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800007f4 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800007f8 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in main (test_aliasing.c:29)
      0x800007fc lw      s0, 88(a0)             #; a0  = 0x0011ff70, s0  <~~ Word[0x0011ffc8]
                                                #; (lsu) s0  <-- 0x00100000
      0x80000800 lw      a2, 80(a0)             #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ffc0]
                                                #; (lsu) a2  <-- 0x00100000
      0x80000804 lw      a3, 84(a0)             #; a0  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
      0x80000808 addi    a1, s0, 80             #; s0  = 0x00100000, (wrb) a1  <-- 0x00100050
                                                #; (lsu) a3  <-- 0x0001df30
      0x8000080c add     a2, a3, a2             #; a3  = 0x0001df30, a2  = 0x00100000, (wrb) a2  <-- 0x0011df30
      0x80000810 bgeu    a2, a1, pc + 12        #; a2  = 0x0011df30, a1  = 0x00100050, taken, goto 0x8000081c
; init_data (test_aliasing.c:5)
;  in main (test_aliasing.c:31)
      0x8000081c srli    a2, s0, 20             #; s0  = 0x00100000, (wrb) a2  <-- 1
      0x80000820 snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
      0x80000824 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
      0x80000828 addi    a3, a3, -71            #; a3  = 0x00120000, (wrb) a3  <-- 0x0011ffb9
      0x8000082c sltu    a3, s0, a3             #; s0  = 0x00100000, a3  = 0x0011ffb9, (wrb) a3  <-- 1
      0x80000830 and     a2, a2, a3             #; a2  = 1, a3  = 1, (wrb) a2  <-- 1
; snrt_l1alloc (alloc.c:34)
;  in main (test_aliasing.c:29)
      0x80000834 sw      a1, 88(a0)             #; a0  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
; snrt_l1alloc (alloc.c:0)
;  in main (test_aliasing.c:29)
      0x80000838 beqz    a2, pc + 412           #; a2  = 1, not taken
; main (alloc.c:0)
      0x8000083c li      s2, 8                  #; (wrb) s2  <-- 8
      0x80000840 li      s1, 9                  #; (wrb) s1  <-- 9
; init_data (test_aliasing.c:5)
;  in main (test_aliasing.c:31)
      0x80000844 li      a0, 64                 #; (wrb) a0  <-- 64
      0x80000848 li      a1, 192                #; (wrb) a1  <-- 192
      0x8000084c scfgw   s1, a0                 #; s1  = 9, a0  = 64
      0x80000850 scfgw   s2, a1                 #; s2  = 8, a1  = 192
      0x80000854 li      a0, 32                 #; (wrb) a0  <-- 32
      0x80000858 scfgw   zero, a0               #; a0  = 32
      0x8000085c scfgwi  s0, 896                #; s0  = 0x00100000
; init_data (test_aliasing.c:0)
;  in main (test_aliasing.c:31)
      0x80000860 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003860
      0x80000864 addi    a0, a0, -1800          #; a0  = 0x80003860, (wrb) a0  <-- 0x80003158
      0x80000868 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003158]
; init_data (test_aliasing.c:5)
;  in main (test_aliasing.c:31)
      0x8000086c csrrsi  a0, ssr, 1             #; 
      0x80000870 fcvt.d.w ft4, zero             #; ac1  = 0, (f:lsu) ft3  <-- 1.0
                                                #; (f:fpu) ft4  <-- 0.0
; init_data (test_aliasing.c:0)
;  in main (test_aliasing.c:31)
      0x8000087c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000387c
      0x80000874 fsgnj.d ft0, ft4, ft4          #; ft4  = 0.0, ft4  = 0.0
; init_data (test_aliasing.c:6)
;  in main (test_aliasing.c:31)
      0x80000878 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0, (f:fpu) ft0  <-- 0.0
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (test_aliasing.c:0)
;  in main (test_aliasing.c:31)
      0x80000880 addi    a0, a0, -1820          #; a0  = 0x8000387c, (wrb) a0  <-- 0x80003160
      0x80000888 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003888
      0x8000088c addi    a0, a0, -1824          #; a0  = 0x80003888, (wrb) a0  <-- 0x80003168
      0x80000884 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003160]
                                                #; (f:lsu) ft3  <-- 2.0
      0x80000894 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003894
      0x80000898 addi    a0, a0, -1828          #; a0  = 0x80003894, (wrb) a0  <-- 0x80003170
      0x80000890 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003168]
      0x8000089c fld     ft5, 0(a0)             #; ft5  <~~ Doub[0x80003170]
                                                #; (f:lsu) ft4  <-- 3.0
      0x800008a0 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800038a0
      0x800008a4 addi    a0, a0, -1832          #; a0  = 0x800038a0, (wrb) a0  <-- 0x80003178
                                                #; (f:lsu) ft5  <-- 4.0
      0x800008a8 fld     ft6, 0(a0)             #; ft6  <~~ Doub[0x80003178]
; init_data (test_aliasing.c:6)
;  in main (test_aliasing.c:31)
      0x800008ac fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
                                                #; (f:fpu) ft0  <-- 2.0
                                                #; (f:lsu) ft6  <-- 5.0
      0x800008b0 fsgnj.d ft0, ft4, ft4          #; ft4  = 3.0, ft4  = 3.0
; init_data (test_aliasing.c:0)
;  in main (test_aliasing.c:31)
      0x800008bc auipc   a0, 0x3                #; (wrb) a0  <-- 0x800038bc
      0x800008b4 fsgnj.d ft0, ft5, ft5          #; ft5  = 4.0, ft5  = 4.0, (f:fpu) ft0  <-- 3.0
; init_data (test_aliasing.c:6)
;  in main (test_aliasing.c:31)
      0x800008b8 fsgnj.d ft0, ft6, ft6          #; ft6  = 5.0, ft6  = 5.0, (f:fpu) ft0  <-- 4.0
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (test_aliasing.c:0)
;  in main (test_aliasing.c:31)
      0x800008c0 addi    a0, a0, -1852          #; a0  = 0x800038bc, (wrb) a0  <-- 0x80003180
      0x800008c8 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800038c8
      0x800008cc addi    a0, a0, -1856          #; a0  = 0x800038c8, (wrb) a0  <-- 0x80003188
      0x800008c4 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003180]
                                                #; (f:lsu) ft3  <-- 6.0
      0x800008d4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800038d4
      0x800008d8 addi    a0, a0, -1860          #; a0  = 0x800038d4, (wrb) a0  <-- 0x80003190
      0x800008d0 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003188]
      0x800008dc fld     ft5, 0(a0)             #; ft5  <~~ Doub[0x80003190]
                                                #; (f:lsu) ft4  <-- 7.0
      0x800008e0 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800038e0
      0x800008e4 addi    a0, a0, -1864          #; a0  = 0x800038e0, (wrb) a0  <-- 0x80003198
                                                #; (f:lsu) ft5  <-- 8.0
      0x800008e8 fld     ft6, 0(a0)             #; ft6  <~~ Doub[0x80003198]
; init_data (test_aliasing.c:6)
;  in main (test_aliasing.c:31)
      0x800008ec fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
                                                #; (f:fpu) ft0  <-- 6.0
                                                #; (f:lsu) ft6  <-- 9.0
      0x800008f0 fsgnj.d ft0, ft4, ft4          #; ft4  = 7.0, ft4  = 7.0
      0x800008f4 fsgnj.d ft0, ft5, ft5          #; ft5  = 8.0, ft5  = 8.0, (f:fpu) ft0  <-- 7.0
      0x800008f8 fsgnj.d ft0, ft6, ft6          #; ft6  = 9.0, ft6  = 9.0, (f:fpu) ft0  <-- 8.0
; init_data (test_aliasing.c:0)
;  in main (test_aliasing.c:31)
      0x800008fc csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 9.0
; main (test_aliasing.c:33)
      0x80000900 li      a2, 10                 #; (wrb) a2  <-- 10
      0x80000904 mv      a0, s0                 #; s0  = 0x00100000, (wrb) a0  <-- 0x00100000
      0x80000908 mv      a1, s0                 #; s0  = 0x00100000, (wrb) a1  <-- 0x00100000
      0x8000090c auipc   ra, 0x0                #; (wrb) ra  <-- 0x8000090c
      0x80000910 jalr    ra, ra, -728           #; ra  = 0x8000090c, (wrb) ra  <-- 0x80000914, goto 0x80000634
; copy (test_aliasing.c:16)
      0x80000634 addi    sp, sp, -96            #; sp  = 0x0011fed0, (wrb) sp  <-- 0x0011fe70
; copy (test_aliasing.c:0)
      0x80000638 fsd     fs0, 88(sp)            #; 0.0 ~~> Doub[0x0011fec8]
      0x8000063c fsd     fs1, 80(sp)            #; 0.0 ~~> Doub[0x0011fec0]
      0x80000640 fsd     fs2, 72(sp)            #; 0.0 ~~> Doub[0x0011feb8]
      0x80000644 fsd     fs3, 64(sp)            #; 0.0 ~~> Doub[0x0011feb0]
      0x80000648 fsd     fs4, 56(sp)            #; 0.0 ~~> Doub[0x0011fea8]
      0x8000064c fsd     fs5, 48(sp)            #; 0.0 ~~> Doub[0x0011fea0]
      0x80000650 fsd     fs6, 40(sp)            #; 0.0 ~~> Doub[0x0011fe98]
      0x80000654 fsd     fs7, 32(sp)            #; 0.0 ~~> Doub[0x0011fe90]
      0x80000658 fsd     fs8, 24(sp)            #; 0.0 ~~> Doub[0x0011fe88]
      0x8000065c fsd     fs9, 16(sp)            #; 0.0 ~~> Doub[0x0011fe80]
; copy (test_aliasing.c:17)
      0x80000668 addi    a6, a2, -1             #; a2  = 10, (wrb) a6  <-- 9
      0x80000660 fsd     fs10, 8(sp)            #; 0.0 ~~> Doub[0x0011fe78]
      0x8000066c slli    a4, a6, 3              #; a6  = 9, (wrb) a4  <-- 72
      0x80000664 fsd     fs11, 0(sp)            #; 0.0 ~~> Doub[0x0011fe70]
      0x80000670 add     a3, a4, a1             #; a4  = 72, a1  = 0x00100000, (wrb) a3  <-- 0x00100048
      0x80000674 add     t2, a4, a0             #; a4  = 72, a0  = 0x00100000, (wrb) t2  <-- 0x00100048
      0x80000678 bgeu    a3, a4, pc + 20        #; a3  = 0x00100048, a4  = 72, taken, goto 0x8000068c
; copy (test_aliasing.c:0)
      0x8000068c sltu    a7, a3, a0             #; a3  = 0x00100048, a0  = 0x00100000, (wrb) a7  <-- 0
; copy (test_aliasing.c:17)
      0x80000690 bgeu    t2, a4, pc - 12        #; t2  = 0x00100048, a4  = 72, taken, goto 0x80000684
; copy (test_aliasing.c:0)
      0x80000684 sltu    a5, t2, a1             #; t2  = 0x00100048, a1  = 0x00100000, (wrb) a5  <-- 0
      0x80000688 j       pc + 0x10              #; goto 0x80000698
; copy (test_aliasing.c:17)
      0x80000698 or      t0, a7, a5             #; a7  = 0, a5  = 0, (wrb) t0  <-- 0
      0x8000069c srli    a5, a1, 20             #; a1  = 0x00100000, (wrb) a5  <-- 1
      0x800006a0 snez    t1, a5                 #; a5  = 1, (wrb) t1  <-- 1
      0x800006a4 lui     a5, 0x120              #; (wrb) a5  <-- 0x00120000
      0x800006a8 addi    a7, a5, 1              #; a5  = 0x00120000, (wrb) a7  <-- 0x00120001
      0x800006ac bgeu    a3, a4, pc + 12        #; a3  = 0x00100048, a4  = 72, taken, goto 0x800006b8
; copy (test_aliasing.c:0)
      0x800006b8 sltu    a3, a3, a7             #; a3  = 0x00100048, a7  = 0x00120001, (wrb) a3  <-- 1
; copy (test_aliasing.c:17)
      0x800006bc and     a3, t1, a3             #; t1  = 1, a3  = 1, (wrb) a3  <-- 1
      0x800006c0 and     t0, t0, a3             #; t0  = 0, a3  = 1, (wrb) t0  <-- 0
      0x800006c4 srli    a3, a0, 20             #; a0  = 0x00100000, (wrb) a3  <-- 1
      0x800006c8 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
      0x800006cc bgeu    t2, a4, pc + 12        #; t2  = 0x00100048, a4  = 72, taken, goto 0x800006d8
; copy (test_aliasing.c:0)
      0x800006d8 sltu    a4, t2, a7             #; t2  = 0x00100048, a7  = 0x00120001, (wrb) a4  <-- 1
; copy (test_aliasing.c:17)
      0x800006dc and     a3, a3, a4             #; a3  = 1, a4  = 1, (wrb) a3  <-- 1
      0x800006e0 and     a3, a3, t0             #; a3  = 1, t0  = 0, (wrb) a3  <-- 0
      0x800006e4 beqz    a3, pc + 96            #; a3  = 0, taken, goto 0x80000744
      0x8000074c addi    a2, a2, -1             #; a2  = 10, (wrb) a2  <-- 9
      0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100000]
                                                #; (f:lsu) ft3  <-- 0.0
; copy (test_aliasing.c:18)
      0x80000748 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100000]
; copy (test_aliasing.c:17)
      0x80000750 addi    a0, a0, 8              #; a0  = 0x00100000, (wrb) a0  <-- 0x00100008
      0x80000754 addi    a1, a1, 8              #; a1  = 0x00100000, (wrb) a1  <-- 0x00100008
      0x80000758 bnez    a2, pc - 20            #; a2  = 9, taken, goto 0x80000744
      0x8000074c addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
      0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100008]
      0x80000750 addi    a0, a0, 8              #; a0  = 0x00100008, (wrb) a0  <-- 0x00100010
                                                #; (f:lsu) ft3  <-- 1.0
      0x80000754 addi    a1, a1, 8              #; a1  = 0x00100008, (wrb) a1  <-- 0x00100010
      0x80000748 fsd     ft3, 0(a0)             #; 1.0 ~~> Doub[0x00100008]
      0x80000758 bnez    a2, pc - 20            #; a2  = 8, taken, goto 0x80000744
      0x8000074c addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
      0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100010]
      0x80000750 addi    a0, a0, 8              #; a0  = 0x00100010, (wrb) a0  <-- 0x00100018
                                                #; (f:lsu) ft3  <-- 2.0
      0x80000754 addi    a1, a1, 8              #; a1  = 0x00100010, (wrb) a1  <-- 0x00100018
      0x80000748 fsd     ft3, 0(a0)             #; 2.0 ~~> Doub[0x00100010]
      0x80000758 bnez    a2, pc - 20            #; a2  = 7, taken, goto 0x80000744
      0x8000074c addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
      0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100018]
      0x80000750 addi    a0, a0, 8              #; a0  = 0x00100018, (wrb) a0  <-- 0x00100020
                                                #; (f:lsu) ft3  <-- 3.0
      0x80000754 addi    a1, a1, 8              #; a1  = 0x00100018, (wrb) a1  <-- 0x00100020
      0x80000748 fsd     ft3, 0(a0)             #; 3.0 ~~> Doub[0x00100018]
      0x80000758 bnez    a2, pc - 20            #; a2  = 6, taken, goto 0x80000744
      0x8000074c addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100020]
      0x80000750 addi    a0, a0, 8              #; a0  = 0x00100020, (wrb) a0  <-- 0x00100028
                                                #; (f:lsu) ft3  <-- 4.0
      0x80000754 addi    a1, a1, 8              #; a1  = 0x00100020, (wrb) a1  <-- 0x00100028
      0x80000748 fsd     ft3, 0(a0)             #; 4.0 ~~> Doub[0x00100020]
      0x80000758 bnez    a2, pc - 20            #; a2  = 5, taken, goto 0x80000744
      0x8000074c addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100028]
      0x80000750 addi    a0, a0, 8              #; a0  = 0x00100028, (wrb) a0  <-- 0x00100030
                                                #; (f:lsu) ft3  <-- 5.0
      0x80000754 addi    a1, a1, 8              #; a1  = 0x00100028, (wrb) a1  <-- 0x00100030
      0x80000748 fsd     ft3, 0(a0)             #; 5.0 ~~> Doub[0x00100028]
      0x80000758 bnez    a2, pc - 20            #; a2  = 4, taken, goto 0x80000744
      0x8000074c addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100030]
      0x80000750 addi    a0, a0, 8              #; a0  = 0x00100030, (wrb) a0  <-- 0x00100038
                                                #; (f:lsu) ft3  <-- 6.0
      0x80000754 addi    a1, a1, 8              #; a1  = 0x00100030, (wrb) a1  <-- 0x00100038
      0x80000748 fsd     ft3, 0(a0)             #; 6.0 ~~> Doub[0x00100030]
      0x80000758 bnez    a2, pc - 20            #; a2  = 3, taken, goto 0x80000744
      0x8000074c addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100038]
      0x80000750 addi    a0, a0, 8              #; a0  = 0x00100038, (wrb) a0  <-- 0x00100040
                                                #; (f:lsu) ft3  <-- 7.0
      0x80000754 addi    a1, a1, 8              #; a1  = 0x00100038, (wrb) a1  <-- 0x00100040
      0x80000748 fsd     ft3, 0(a0)             #; 7.0 ~~> Doub[0x00100038]
      0x80000758 bnez    a2, pc - 20            #; a2  = 2, taken, goto 0x80000744
      0x8000074c addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100040]
      0x80000750 addi    a0, a0, 8              #; a0  = 0x00100040, (wrb) a0  <-- 0x00100048
                                                #; (f:lsu) ft3  <-- 8.0
      0x80000754 addi    a1, a1, 8              #; a1  = 0x00100040, (wrb) a1  <-- 0x00100048
      0x80000748 fsd     ft3, 0(a0)             #; 8.0 ~~> Doub[0x00100040]
      0x80000758 bnez    a2, pc - 20            #; a2  = 1, taken, goto 0x80000744
      0x8000074c addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100048]
      0x80000750 addi    a0, a0, 8              #; a0  = 0x00100048, (wrb) a0  <-- 0x00100050
                                                #; (f:lsu) ft3  <-- 9.0
      0x80000754 addi    a1, a1, 8              #; a1  = 0x00100048, (wrb) a1  <-- 0x00100050
      0x80000748 fsd     ft3, 0(a0)             #; 9.0 ~~> Doub[0x00100048]
      0x80000758 bnez    a2, pc - 20            #; a2  = 0, not taken
; copy (test_aliasing.c:20)
      0x8000075c fld     fs11, 0(sp)            #; fs11 <~~ Doub[0x0011fe70]
                                                #; (f:lsu) fs11 <-- 0.0
      0x80000760 fld     fs10, 8(sp)            #; fs10 <~~ Doub[0x0011fe78]
      0x80000764 fld     fs9, 16(sp)            #; fs9  <~~ Doub[0x0011fe80], (f:lsu) fs10 <-- 0.0
      0x80000768 fld     fs8, 24(sp)            #; fs8  <~~ Doub[0x0011fe88], (f:lsu) fs9  <-- 0.0
      0x8000076c fld     fs7, 32(sp)            #; fs7  <~~ Doub[0x0011fe90], (f:lsu) fs8  <-- 0.0
                                                #; (f:lsu) fs7  <-- 0.0
      0x80000770 fld     fs6, 40(sp)            #; fs6  <~~ Doub[0x0011fe98]
      0x80000774 fld     fs5, 48(sp)            #; fs5  <~~ Doub[0x0011fea0], (f:lsu) fs6  <-- 0.0
      0x80000778 fld     fs4, 56(sp)            #; fs4  <~~ Doub[0x0011fea8], (f:lsu) fs5  <-- 0.0
      0x8000077c fld     fs3, 64(sp)            #; fs3  <~~ Doub[0x0011feb0], (f:lsu) fs4  <-- 0.0
                                                #; (f:lsu) fs3  <-- 0.0
      0x80000780 fld     fs2, 72(sp)            #; fs2  <~~ Doub[0x0011feb8]
      0x8000078c addi    sp, sp, 96             #; sp  = 0x0011fe70, (wrb) sp  <-- 0x0011fed0
      0x80000784 fld     fs1, 80(sp)            #; fs1  <~~ Doub[0x0011fec0], (f:lsu) fs2  <-- 0.0
      0x80000790 ret                            #; ra  = 0x80000914, goto 0x80000914
      0x80000788 fld     fs0, 88(sp)            #; fs0  <~~ Doub[0x0011fec8], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0
; sumup (test_aliasing.c:12)
;  in main (test_aliasing.c:34)
      0x80000914 li      a0, 64                 #; (wrb) a0  <-- 64
      0x80000918 li      a1, 192                #; (wrb) a1  <-- 192
      0x8000091c scfgw   s1, a0                 #; s1  = 9, a0  = 64
      0x80000920 scfgw   s2, a1                 #; s2  = 8, a1  = 192
      0x80000924 li      a0, 32                 #; (wrb) a0  <-- 32
      0x80000928 scfgw   zero, a0               #; a0  = 32, (acc) ra  <-- 0x00a020ab
      0x8000092c scfgwi  s0, 768                #; s0  = 0x00100000
      0x80000930 csrrsi  a0, ssr, 1             #; 
      0x80000934 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000938 fadd.d  ft3, ft0, ft3          #; ft0  = 1.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 1.0
      0x8000093c fadd.d  ft3, ft3, ft0          #; ft3  = 1.0, ft0  = 2.0
                                                #; (f:fpu) ft3  <-- 3.0
      0x80000940 fadd.d  ft3, ft3, ft0          #; ft3  = 3.0, ft0  = 3.0
                                                #; (f:fpu) ft3  <-- 6.0
      0x80000944 fadd.d  ft3, ft3, ft0          #; ft3  = 6.0, ft0  = 4.0
                                                #; (f:fpu) ft3  <-- 10.0
      0x80000948 fadd.d  ft3, ft3, ft0          #; ft3  = 10.0, ft0  = 5.0
                                                #; (f:fpu) ft3  <-- 15.0
      0x8000094c fadd.d  ft3, ft3, ft0          #; ft3  = 15.0, ft0  = 6.0
                                                #; (f:fpu) ft3  <-- 21.0
      0x80000950 fadd.d  ft3, ft3, ft0          #; ft3  = 21.0, ft0  = 7.0
                                                #; (f:fpu) ft3  <-- 28.0
      0x80000954 fadd.d  ft3, ft3, ft0          #; ft3  = 28.0, ft0  = 8.0
; main (test_aliasing.c:37)
      0x80000964 addi    a0, s0, 8              #; s0  = 0x00100000, (wrb) a0  <-- 0x00100008
                                                #; (f:fpu) ft3  <-- 36.0
      0x80000968 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000958 fadd.d  ft3, ft3, ft0          #; ft3  = 36.0, ft0  = 9.0
      0x8000096c mv      a1, s0                 #; s0  = 0x00100000, (wrb) a1  <-- 0x00100000
                                                #; (f:fpu) ft3  <-- 45.0
; sumup (test_aliasing.c:0)
;  in main (test_aliasing.c:34)
      0x8000095c fsd     ft3, 16(sp)            #; 45.0 ~~> Doub[0x0011fee0]
      0x80000960 csrrci  a0, ssr, 1             #; 
; main (test_aliasing.c:37)
      0x80000970 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000970
      0x80000974 jalr    ra, ra, -828           #; ra  = 0x80000970, (wrb) ra  <-- 0x80000978, goto 0x80000634
; copy (test_aliasing.c:16)
      0x80000634 addi    sp, sp, -96            #; sp  = 0x0011fed0, (wrb) sp  <-- 0x0011fe70
; copy (test_aliasing.c:0)
      0x80000638 fsd     fs0, 88(sp)            #; 0.0 ~~> Doub[0x0011fec8]
      0x8000063c fsd     fs1, 80(sp)            #; 0.0 ~~> Doub[0x0011fec0]
      0x80000640 fsd     fs2, 72(sp)            #; 0.0 ~~> Doub[0x0011feb8]
      0x80000644 fsd     fs3, 64(sp)            #; 0.0 ~~> Doub[0x0011feb0]
      0x80000648 fsd     fs4, 56(sp)            #; 0.0 ~~> Doub[0x0011fea8]
      0x8000064c fsd     fs5, 48(sp)            #; 0.0 ~~> Doub[0x0011fea0]
      0x80000650 fsd     fs6, 40(sp)            #; 0.0 ~~> Doub[0x0011fe98]
      0x80000654 fsd     fs7, 32(sp)            #; 0.0 ~~> Doub[0x0011fe90]
      0x80000658 fsd     fs8, 24(sp)            #; 0.0 ~~> Doub[0x0011fe88]
      0x8000065c fsd     fs9, 16(sp)            #; 0.0 ~~> Doub[0x0011fe80]
; copy (test_aliasing.c:17)
      0x80000668 addi    a6, a2, -1             #; a2  = 9, (wrb) a6  <-- 8
      0x80000660 fsd     fs10, 8(sp)            #; 0.0 ~~> Doub[0x0011fe78]
      0x8000066c slli    a4, a6, 3              #; a6  = 8, (wrb) a4  <-- 64
      0x80000664 fsd     fs11, 0(sp)            #; 0.0 ~~> Doub[0x0011fe70]
      0x80000670 add     a3, a4, a1             #; a4  = 64, a1  = 0x00100000, (wrb) a3  <-- 0x00100040
      0x80000674 add     t2, a4, a0             #; a4  = 64, a0  = 0x00100008, (wrb) t2  <-- 0x00100048
      0x80000678 bgeu    a3, a4, pc + 20        #; a3  = 0x00100040, a4  = 64, taken, goto 0x8000068c
; copy (test_aliasing.c:0)
      0x8000068c sltu    a7, a3, a0             #; a3  = 0x00100040, a0  = 0x00100008, (wrb) a7  <-- 0
; copy (test_aliasing.c:17)
      0x80000690 bgeu    t2, a4, pc - 12        #; t2  = 0x00100048, a4  = 64, taken, goto 0x80000684
; copy (test_aliasing.c:0)
      0x80000684 sltu    a5, t2, a1             #; t2  = 0x00100048, a1  = 0x00100000, (wrb) a5  <-- 0
      0x80000688 j       pc + 0x10              #; goto 0x80000698
; copy (test_aliasing.c:17)
      0x80000698 or      t0, a7, a5             #; a7  = 0, a5  = 0, (wrb) t0  <-- 0
      0x8000069c srli    a5, a1, 20             #; a1  = 0x00100000, (wrb) a5  <-- 1
      0x800006a0 snez    t1, a5                 #; a5  = 1, (wrb) t1  <-- 1
      0x800006a4 lui     a5, 0x120              #; (wrb) a5  <-- 0x00120000
      0x800006a8 addi    a7, a5, 1              #; a5  = 0x00120000, (wrb) a7  <-- 0x00120001
      0x800006ac bgeu    a3, a4, pc + 12        #; a3  = 0x00100040, a4  = 64, taken, goto 0x800006b8
; copy (test_aliasing.c:0)
      0x800006b8 sltu    a3, a3, a7             #; a3  = 0x00100040, a7  = 0x00120001, (wrb) a3  <-- 1
; copy (test_aliasing.c:17)
      0x800006bc and     a3, t1, a3             #; t1  = 1, a3  = 1, (wrb) a3  <-- 1
      0x800006c0 and     t0, t0, a3             #; t0  = 0, a3  = 1, (wrb) t0  <-- 0
      0x800006c4 srli    a3, a0, 20             #; a0  = 0x00100008, (wrb) a3  <-- 1
      0x800006c8 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
      0x800006cc bgeu    t2, a4, pc + 12        #; t2  = 0x00100048, a4  = 64, taken, goto 0x800006d8
; copy (test_aliasing.c:0)
      0x800006d8 sltu    a4, t2, a7             #; t2  = 0x00100048, a7  = 0x00120001, (wrb) a4  <-- 1
; copy (test_aliasing.c:17)
      0x800006dc and     a3, a3, a4             #; a3  = 1, a4  = 1, (wrb) a3  <-- 1
      0x800006e0 and     a3, a3, t0             #; a3  = 1, t0  = 0, (wrb) a3  <-- 0
      0x800006e4 beqz    a3, pc + 96            #; a3  = 0, taken, goto 0x80000744
      0x8000074c addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
      0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100000]
      0x80000750 addi    a0, a0, 8              #; a0  = 0x00100008, (wrb) a0  <-- 0x00100010
                                                #; (f:lsu) ft3  <-- 0.0
      0x80000754 addi    a1, a1, 8              #; a1  = 0x00100000, (wrb) a1  <-- 0x00100008
      0x80000748 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100008]
      0x80000758 bnez    a2, pc - 20            #; a2  = 8, taken, goto 0x80000744
      0x8000074c addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
      0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100008]
      0x80000750 addi    a0, a0, 8              #; a0  = 0x00100010, (wrb) a0  <-- 0x00100018
                                                #; (f:lsu) ft3  <-- 0.0
      0x80000754 addi    a1, a1, 8              #; a1  = 0x00100008, (wrb) a1  <-- 0x00100010
      0x80000748 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100010]
      0x80000758 bnez    a2, pc - 20            #; a2  = 7, taken, goto 0x80000744
      0x8000074c addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
      0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100010]
      0x80000750 addi    a0, a0, 8              #; a0  = 0x00100018, (wrb) a0  <-- 0x00100020
                                                #; (f:lsu) ft3  <-- 0.0
      0x80000754 addi    a1, a1, 8              #; a1  = 0x00100010, (wrb) a1  <-- 0x00100018
      0x80000748 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100018]
      0x80000758 bnez    a2, pc - 20            #; a2  = 6, taken, goto 0x80000744
      0x8000074c addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
      0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100018]
      0x80000750 addi    a0, a0, 8              #; a0  = 0x00100020, (wrb) a0  <-- 0x00100028
                                                #; (f:lsu) ft3  <-- 0.0
      0x80000754 addi    a1, a1, 8              #; a1  = 0x00100018, (wrb) a1  <-- 0x00100020
      0x80000748 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100020]
      0x80000758 bnez    a2, pc - 20            #; a2  = 5, taken, goto 0x80000744
      0x8000074c addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100020]
      0x80000750 addi    a0, a0, 8              #; a0  = 0x00100028, (wrb) a0  <-- 0x00100030
                                                #; (f:lsu) ft3  <-- 0.0
      0x80000754 addi    a1, a1, 8              #; a1  = 0x00100020, (wrb) a1  <-- 0x00100028
      0x80000748 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100028]
      0x80000758 bnez    a2, pc - 20            #; a2  = 4, taken, goto 0x80000744
      0x8000074c addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100028]
      0x80000750 addi    a0, a0, 8              #; a0  = 0x00100030, (wrb) a0  <-- 0x00100038
                                                #; (f:lsu) ft3  <-- 0.0
      0x80000754 addi    a1, a1, 8              #; a1  = 0x00100028, (wrb) a1  <-- 0x00100030
      0x80000748 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100030]
      0x80000758 bnez    a2, pc - 20            #; a2  = 3, taken, goto 0x80000744
      0x8000074c addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
      0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100030]
      0x80000750 addi    a0, a0, 8              #; a0  = 0x00100038, (wrb) a0  <-- 0x00100040
                                                #; (f:lsu) ft3  <-- 0.0
      0x80000754 addi    a1, a1, 8              #; a1  = 0x00100030, (wrb) a1  <-- 0x00100038
      0x80000748 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100038]
      0x80000758 bnez    a2, pc - 20            #; a2  = 2, taken, goto 0x80000744
      0x8000074c addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
      0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100038]
      0x80000750 addi    a0, a0, 8              #; a0  = 0x00100040, (wrb) a0  <-- 0x00100048
                                                #; (f:lsu) ft3  <-- 0.0
      0x80000754 addi    a1, a1, 8              #; a1  = 0x00100038, (wrb) a1  <-- 0x00100040
      0x80000748 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100040]
      0x80000758 bnez    a2, pc - 20            #; a2  = 1, taken, goto 0x80000744
      0x8000074c addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000744 fld     ft3, 0(a1)             #; ft3  <~~ Doub[0x00100040]
      0x80000750 addi    a0, a0, 8              #; a0  = 0x00100048, (wrb) a0  <-- 0x00100050
                                                #; (f:lsu) ft3  <-- 0.0
      0x80000754 addi    a1, a1, 8              #; a1  = 0x00100040, (wrb) a1  <-- 0x00100048
      0x80000748 fsd     ft3, 0(a0)             #; 0.0 ~~> Doub[0x00100048]
      0x80000758 bnez    a2, pc - 20            #; a2  = 0, not taken
; copy (test_aliasing.c:20)
      0x8000075c fld     fs11, 0(sp)            #; fs11 <~~ Doub[0x0011fe70]
                                                #; (f:lsu) fs11 <-- 0.0
      0x80000760 fld     fs10, 8(sp)            #; fs10 <~~ Doub[0x0011fe78]
      0x80000764 fld     fs9, 16(sp)            #; fs9  <~~ Doub[0x0011fe80], (f:lsu) fs10 <-- 0.0
      0x80000768 fld     fs8, 24(sp)            #; fs8  <~~ Doub[0x0011fe88], (f:lsu) fs9  <-- 0.0
      0x8000076c fld     fs7, 32(sp)            #; fs7  <~~ Doub[0x0011fe90], (f:lsu) fs8  <-- 0.0
      0x80000770 fld     fs6, 40(sp)            #; fs6  <~~ Doub[0x0011fe98], (f:lsu) fs7  <-- 0.0
      0x80000774 fld     fs5, 48(sp)            #; fs5  <~~ Doub[0x0011fea0], (f:lsu) fs6  <-- 0.0
      0x80000778 fld     fs4, 56(sp)            #; fs4  <~~ Doub[0x0011fea8], (f:lsu) fs5  <-- 0.0
      0x8000077c fld     fs3, 64(sp)            #; fs3  <~~ Doub[0x0011feb0], (f:lsu) fs4  <-- 0.0
      0x80000780 fld     fs2, 72(sp)            #; fs2  <~~ Doub[0x0011feb8], (f:lsu) fs3  <-- 0.0
      0x8000078c addi    sp, sp, 96             #; sp  = 0x0011fe70, (wrb) sp  <-- 0x0011fed0
      0x80000784 fld     fs1, 80(sp)            #; fs1  <~~ Doub[0x0011fec0], (f:lsu) fs2  <-- 0.0
      0x80000790 ret                            #; ra  = 0x80000978, goto 0x80000978
      0x80000788 fld     fs0, 88(sp)            #; fs0  <~~ Doub[0x0011fec8], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0
; sumup (test_aliasing.c:12)
;  in main (test_aliasing.c:38)
      0x80000978 li      a0, 64                 #; (wrb) a0  <-- 64
      0x8000097c li      a1, 192                #; (wrb) a1  <-- 192
      0x80000980 scfgw   s1, a0                 #; s1  = 9, a0  = 64
      0x80000984 scfgw   s2, a1                 #; s2  = 8, a1  = 192
      0x80000988 li      a0, 32                 #; (wrb) a0  <-- 32
      0x8000098c scfgw   zero, a0               #; a0  = 32, (acc) ra  <-- 0x00a020ab
      0x80000990 scfgwi  s0, 768                #; s0  = 0x00100000
      0x80000994 csrrsi  a0, ssr, 1             #; 
                                                #; (acc) gp  <-- 0x023071d3
      0x80000998 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x8000099c fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x800009a0 fadd.d  ft3, ft3, ft0          #; ft3  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x800009a4 fadd.d  ft3, ft3, ft0          #; ft3  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x800009a8 fadd.d  ft3, ft3, ft0          #; ft3  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x800009ac fadd.d  ft3, ft3, ft0          #; ft3  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x800009b0 fadd.d  ft3, ft3, ft0          #; ft3  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x800009b4 fadd.d  ft3, ft3, ft0          #; ft3  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x800009b8 fadd.d  ft3, ft3, ft0          #; ft3  = 0.0, ft0  = 0.0
; sumup (test_aliasing.c:0)
;  in main (test_aliasing.c:38)
      0x800009d0 j       pc + 0x13c             #; goto 0x80000b0c
                                                #; (f:fpu) ft3  <-- 0.0
; sumup (test_aliasing.c:12)
;  in main (test_aliasing.c:38)
      0x800009bc fadd.d  ft3, ft3, ft0          #; ft3  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; sumup (test_aliasing.c:0)
;  in main (test_aliasing.c:38)
      0x800009c0 fsd     ft3, 8(sp)             #; 0.0 ~~> Doub[0x0011fed8]
      0x800009c4 fld     ft4, 8(sp)             #; ft4  <~~ Doub[0x0011fed8]
      0x800009c8 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011fee0], (f:lsu) ft4  <-- 0.0
      0x800009cc csrrci  a0, ssr, 1             #; (f:lsu) fs0  <-- 45.0
; main (test_aliasing.c:0)
      0x80000b0c auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002b0c
      0x80000b10 addi    a0, a0, 1684           #; a0  = 0x80002b0c, (wrb) a0  <-- 0x800031a0
      0x80000b14 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800031a0]
                                                #; (f:lsu) ft3  <-- -45.0
; main (test_aliasing.c:41)
      0x80000b18 fadd.d  ft3, fs0, ft3          #; fs0  = 45.0, ft3  = -45.0
; main (test_aliasing.c:43)
      0x80000b2c lw      a2, 24(sp)             #; sp  = 0x0011fed0, a2  <~~ Word[0x0011fee8]
                                                #; (f:fpu) ft3  <-- 0.0
; absd (test_aliasing.c:22)
;  in main (test_aliasing.c:41)
      0x80000b1c fsgnjx.d ft3, ft3, ft3         #; ft3  = 0.0, ft3  = 0.0
                                                #; (lsu) a2  <-- 0
      0x80000b20 fsgnjx.d ft4, ft4, ft4         #; ft4  = 0.0, ft4  = 0.0, (f:fpu) ft3  <-- 0.0
                                                #; (f:fpu) ft4  <-- 0.0
; main (test_aliasing.c:41)
      0x80000b24 fadd.d  fs0, ft4, ft3          #; ft4  = 0.0, ft3  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
; main (test_aliasing.c:43)
      0x80000b30 lw      a3, 28(sp)             #; sp  = 0x0011fed0, a3  <~~ Word[0x0011feec]
      0x80000b28 fsd     fs0, 24(sp)            #; 0.0 ~~> Doub[0x0011fee8]
      0x80000b34 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002b34
      0x80000b38 addi    a0, a0, 929            #; a0  = 0x80002b34, (wrb) a0  <-- 0x80002ed5
      0x80000b3c auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000b3c
                                                #; (lsu) a3  <-- 0
      0x80000b40 jalr    ra, ra, 96             #; ra  = 0x80000b3c, (wrb) ra  <-- 0x80000b44, goto 0x80000b9c
; printf_ (printf.c:863)
      0x80000b9c addi    sp, sp, -48            #; sp  = 0x0011fed0, (wrb) sp  <-- 0x0011fea0
      0x80000ba0 sw      ra, 12(sp)             #; sp  = 0x0011fea0, 0x80000b44 ~~> Word[0x0011feac]
      0x80000ba4 mv      t0, a0                 #; a0  = 0x80002ed5, (wrb) t0  <-- 0x80002ed5
      0x80000ba8 sw      a7, 44(sp)             #; sp  = 0x0011fea0, 0x00120001 ~~> Word[0x0011fecc]
      0x80000bac sw      a6, 40(sp)             #; sp  = 0x0011fea0, 8 ~~> Word[0x0011fec8]
      0x80000bb0 sw      a5, 36(sp)             #; sp  = 0x0011fea0, 0x00120000 ~~> Word[0x0011fec4]
      0x80000bb4 sw      a4, 32(sp)             #; sp  = 0x0011fea0, 1 ~~> Word[0x0011fec0]
      0x80000bb8 sw      a3, 28(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011febc]
      0x80000bbc sw      a2, 24(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feb8]
      0x80000bc0 sw      a1, 20(sp)             #; sp  = 0x0011fea0, 192 ~~> Word[0x0011feb4]
      0x80000bc4 addi    a0, sp, 20             #; sp  = 0x0011fea0, (wrb) a0  <-- 0x0011feb4
; printf_ (printf.c:865)
      0x80000bc8 sw      a0, 8(sp)              #; sp  = 0x0011fea0, 0x0011feb4 ~~> Word[0x0011fea8]
; printf_ (printf.c:867)
      0x80000bcc auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001bcc
      0x80000bd0 addi    a0, a0, -988           #; a0  = 0x80001bcc, (wrb) a0  <-- 0x800017f0
      0x80000bd4 addi    a1, sp, 7              #; sp  = 0x0011fea0, (wrb) a1  <-- 0x0011fea7
      0x80000bd8 li      a2, -1                 #; (wrb) a2  <-- -1
      0x80000bdc addi    a4, sp, 20             #; sp  = 0x0011fea0, (wrb) a4  <-- 0x0011feb4
      0x80000be0 mv      a3, t0                 #; t0  = 0x80002ed5, (wrb) a3  <-- 0x80002ed5
      0x80000be4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000be4
      0x80000be8 jalr    ra, ra, 20             #; ra  = 0x80000be4, (wrb) ra  <-- 0x80000bec, goto 0x80000bf8
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000bf8 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
      0x80000bfc sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000bec ~~> Word[0x0011fe9c]
      0x80000c00 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0x00100000 ~~> Word[0x0011fe98]
      0x80000c04 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 9 ~~> Word[0x0011fe94]
      0x80000c08 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe90]
      0x80000c0c sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe8c]
      0x80000c10 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe88]
      0x80000c14 sw      s5, 84(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe84]
      0x80000c18 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
      0x80000c1c sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
      0x80000c20 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe78]
      0x80000c24 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe74]
      0x80000c28 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe70]
      0x80000c2c sw      s11, 60(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe6c]
      0x80000c30 mv      s3, a4                 #; a4  = 0x0011feb4, (wrb) s3  <-- 0x0011feb4
      0x80000c34 mv      s0, a3                 #; a3  = 0x80002ed5, (wrb) s0  <-- 0x80002ed5
      0x80000c38 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x80000c3c mv      s4, a1                 #; a1  = 0x0011fea7, (wrb) s4  <-- 0x0011fea7
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x80000c40 beqz    a1, pc + 12            #; a1  = 0x0011fea7, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c44 mv      s2, a0                 #; a0  = 0x800017f0, (wrb) s2  <-- 0x800017f0
      0x80000c48 j       pc + 0xc               #; goto 0x80000c54
      0x80000c54 li      s8, 0                  #; (wrb) s8  <-- 0
      0x80000c58 li      s6, 37                 #; (wrb) s6  <-- 37
      0x80000c5c li      s11, 16                #; (wrb) s11 <-- 16
      0x80000c60 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000c64 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000c68 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000c6c sw      a0, 24(sp)             #; sp  = 0x0011fe30, 2048 ~~> Word[0x0011fe48]
      0x80000c70 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000c74 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000c78 sw      a0, 16(sp)             #; sp  = 0x0011fe30, 65535 ~~> Word[0x0011fe40]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c7c addi    s10, s0, 2             #; s0  = 0x80002ed5, (wrb) s10 <-- 0x80002ed7
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c80 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000c84 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c88 lbu     a0, 0(s0)              #; s0  = 0x80002ed5, a0  <~~ Byte[0x80002ed5]
                                                #; (lsu) a0  <-- 101
      0x80000c8c beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x80000c90 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c94 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000c98 mv      a1, s4                 #; s4  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
      0x80000c9c mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000ca0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000ca4 jalr    s2                     #; s2  = 0x800017f0, (wrb) ra  <-- 0x80000ca8, goto 0x800017f0
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017f0 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
      0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
      0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
      0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 0
      0x80001810 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 1 ~~> Word[0x8000325c]
      0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 0, (wrb) a4  <-- 0x8000325c
      0x8000181c sb      a0, 72(a4)             #; a4  = 0x8000325c, 101 ~~> Byte[0x800032a4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 1
      0x80001824 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x80001828 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x8000182c addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x80001830 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001898 ret                            #; ra  = 0x80000ca8, goto 0x80000ca8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000ca8 addi    s0, s0, 1              #; s0  = 0x80002ed5, (wrb) s0  <-- 0x80002ed6
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000cac addi    s10, s10, 1            #; s10 = 0x80002ed7, (wrb) s10 <-- 0x80002ed8
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cb0 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000cb4 lbu     a0, 0(s0)              #; s0  = 0x80002ed6, a0  <~~ Byte[0x80002ed6]
                                                #; (lsu) a0  <-- 114
      0x80000cb8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000c90
      0x80000c90 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c94 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000c98 mv      a1, s4                 #; s4  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
      0x80000c9c mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000ca0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000ca4 jalr    s2                     #; s2  = 0x800017f0, (wrb) ra  <-- 0x80000ca8, goto 0x800017f0
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017f0 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
      0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
      0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 1
      0x80001810 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 2 ~~> Word[0x8000325c]
      0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 1, (wrb) a4  <-- 0x8000325d
      0x8000181c sb      a0, 72(a4)             #; a4  = 0x8000325d, 114 ~~> Byte[0x800032a5]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 2
      0x80001824 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x80001828 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x8000182c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001830 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001898 ret                            #; ra  = 0x80000ca8, goto 0x80000ca8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000ca8 addi    s0, s0, 1              #; s0  = 0x80002ed6, (wrb) s0  <-- 0x80002ed7
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000cac addi    s10, s10, 1            #; s10 = 0x80002ed8, (wrb) s10 <-- 0x80002ed9
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cb0 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000cb4 lbu     a0, 0(s0)              #; s0  = 0x80002ed7, a0  <~~ Byte[0x80002ed7]
                                                #; (lsu) a0  <-- 114
      0x80000cb8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000c90
      0x80000c90 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c94 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000c98 mv      a1, s4                 #; s4  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
      0x80000c9c mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000ca0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000ca4 jalr    s2                     #; s2  = 0x800017f0, (wrb) ra  <-- 0x80000ca8, goto 0x800017f0
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017f0 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
      0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
      0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 2
      0x80001810 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 3 ~~> Word[0x8000325c]
      0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 2, (wrb) a4  <-- 0x8000325e
      0x8000181c sb      a0, 72(a4)             #; a4  = 0x8000325e, 114 ~~> Byte[0x800032a6]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 3
      0x80001824 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x80001828 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x8000182c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001830 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001898 ret                            #; ra  = 0x80000ca8, goto 0x80000ca8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000ca8 addi    s0, s0, 1              #; s0  = 0x80002ed7, (wrb) s0  <-- 0x80002ed8
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000cac addi    s10, s10, 1            #; s10 = 0x80002ed9, (wrb) s10 <-- 0x80002eda
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cb0 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000cb4 lbu     a0, 0(s0)              #; s0  = 0x80002ed8, a0  <~~ Byte[0x80002ed8]
                                                #; (lsu) a0  <-- 111
      0x80000cb8 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000c90
      0x80000c90 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c94 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000c98 mv      a1, s4                 #; s4  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
      0x80000c9c mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000ca0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000ca4 jalr    s2                     #; s2  = 0x800017f0, (wrb) ra  <-- 0x80000ca8, goto 0x800017f0
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017f0 beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
      0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
      0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 3
      0x80001810 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 4 ~~> Word[0x8000325c]
      0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 3, (wrb) a4  <-- 0x8000325f
      0x8000181c sb      a0, 72(a4)             #; a4  = 0x8000325f, 111 ~~> Byte[0x800032a7]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 4
      0x80001824 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x80001828 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x8000182c addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x80001830 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001898 ret                            #; ra  = 0x80000ca8, goto 0x80000ca8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000ca8 addi    s0, s0, 1              #; s0  = 0x80002ed8, (wrb) s0  <-- 0x80002ed9
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000cac addi    s10, s10, 1            #; s10 = 0x80002eda, (wrb) s10 <-- 0x80002edb
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cb0 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000cb4 lbu     a0, 0(s0)              #; s0  = 0x80002ed9, a0  <~~ Byte[0x80002ed9]
                                                #; (lsu) a0  <-- 114
      0x80000cb8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000c90
      0x80000c90 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c94 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000c98 mv      a1, s4                 #; s4  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
      0x80000c9c mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000ca0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000ca4 jalr    s2                     #; s2  = 0x800017f0, (wrb) ra  <-- 0x80000ca8, goto 0x800017f0
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017f0 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
      0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
      0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 4
      0x80001810 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 5 ~~> Word[0x8000325c]
      0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 4, (wrb) a4  <-- 0x80003260
      0x8000181c sb      a0, 72(a4)             #; a4  = 0x80003260, 114 ~~> Byte[0x800032a8]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 5
      0x80001824 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x80001828 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x8000182c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001830 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001898 ret                            #; ra  = 0x80000ca8, goto 0x80000ca8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000ca8 addi    s0, s0, 1              #; s0  = 0x80002ed9, (wrb) s0  <-- 0x80002eda
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000cac addi    s10, s10, 1            #; s10 = 0x80002edb, (wrb) s10 <-- 0x80002edc
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cb0 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000cb4 lbu     a0, 0(s0)              #; s0  = 0x80002eda, a0  <~~ Byte[0x80002eda]
                                                #; (lsu) a0  <-- 32
      0x80000cb8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000c90
      0x80000c90 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c94 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000c98 mv      a1, s4                 #; s4  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
      0x80000c9c mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000ca0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000ca4 jalr    s2                     #; s2  = 0x800017f0, (wrb) ra  <-- 0x80000ca8, goto 0x800017f0
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017f0 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
      0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
      0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 5
      0x80001810 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 6 ~~> Word[0x8000325c]
      0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 5, (wrb) a4  <-- 0x80003261
      0x8000181c sb      a0, 72(a4)             #; a4  = 0x80003261, 32 ~~> Byte[0x800032a9]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 6
      0x80001824 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x80001828 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x8000182c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001830 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001898 ret                            #; ra  = 0x80000ca8, goto 0x80000ca8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000ca8 addi    s0, s0, 1              #; s0  = 0x80002eda, (wrb) s0  <-- 0x80002edb
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000cac addi    s10, s10, 1            #; s10 = 0x80002edc, (wrb) s10 <-- 0x80002edd
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cb0 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000cb4 lbu     a0, 0(s0)              #; s0  = 0x80002edb, a0  <~~ Byte[0x80002edb]
                                                #; (lsu) a0  <-- 61
      0x80000cb8 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000c90
      0x80000c90 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c94 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000c98 mv      a1, s4                 #; s4  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
      0x80000c9c mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000ca0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000ca4 jalr    s2                     #; s2  = 0x800017f0, (wrb) ra  <-- 0x80000ca8, goto 0x800017f0
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017f0 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
      0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
      0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 6
      0x80001810 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 7 ~~> Word[0x8000325c]
      0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 6, (wrb) a4  <-- 0x80003262
      0x8000181c sb      a0, 72(a4)             #; a4  = 0x80003262, 61 ~~> Byte[0x800032aa]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 7
      0x80001824 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x80001828 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x8000182c addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x80001830 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001898 ret                            #; ra  = 0x80000ca8, goto 0x80000ca8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000ca8 addi    s0, s0, 1              #; s0  = 0x80002edb, (wrb) s0  <-- 0x80002edc
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000cac addi    s10, s10, 1            #; s10 = 0x80002edd, (wrb) s10 <-- 0x80002ede
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cb0 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000cb4 lbu     a0, 0(s0)              #; s0  = 0x80002edc, a0  <~~ Byte[0x80002edc]
                                                #; (lsu) a0  <-- 32
      0x80000cb8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000c90
      0x80000c90 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c94 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000c98 mv      a1, s4                 #; s4  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
      0x80000c9c mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000ca0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000ca4 jalr    s2                     #; s2  = 0x800017f0, (wrb) ra  <-- 0x80000ca8, goto 0x800017f0
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017f0 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
      0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
      0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 7
      0x80001810 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 8 ~~> Word[0x8000325c]
      0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 7, (wrb) a4  <-- 0x80003263
      0x8000181c sb      a0, 72(a4)             #; a4  = 0x80003263, 32 ~~> Byte[0x800032ab]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 8
      0x80001824 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x80001828 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x8000182c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001830 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001898 ret                            #; ra  = 0x80000ca8, goto 0x80000ca8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000ca8 addi    s0, s0, 1              #; s0  = 0x80002edc, (wrb) s0  <-- 0x80002edd
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000cac addi    s10, s10, 1            #; s10 = 0x80002ede, (wrb) s10 <-- 0x80002edf
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cb0 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000cb4 lbu     a0, 0(s0)              #; s0  = 0x80002edd, a0  <~~ Byte[0x80002edd]
                                                #; (lsu) a0  <-- 37
      0x80000cb8 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000c90
      0x80000c90 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000cc0
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000cc0 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cc4 j       pc + 0x10              #; goto 0x80000cd4
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000cd4 lbu     a0, -1(s10)            #; s10 = 0x80002edf, a0  <~~ Byte[0x80002ede]
                                                #; (lsu) a0  <-- 102
      0x80000cd8 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000cdc bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000d14
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000d14 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000d18 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000d1c addi    a1, s10, -1            #; s10 = 0x80002edf, (wrb) a1  <-- 0x80002ede
      0x80000d20 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000d24 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000da0
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000da0 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000da4 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000df4
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000df4 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000df8 mv      s10, a1                #; a1  = 0x80002ede, (wrb) s10 <-- 0x80002ede
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000dfc beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e00 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000e04 j       pc + 0xc               #; goto 0x80000e10
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000e10 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000e14 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000e18 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000e1c or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000e20 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000e24 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000e88
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000e88 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000e8c li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000e90 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e94 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000e98 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002e98
      0x80000e9c addi    a2, a2, 188            #; a2  = 0x80002e98, (wrb) a2  <-- 0x80002f54
      0x80000ea0 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002f54, (wrb) a1  <-- 0x80003058
      0x80000ea4 lw      a2, 0(a1)              #; a1  = 0x80003058, a2  <~~ Word[0x80003058]
      0x80000ea8 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000eac li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000ee0
      0x80000eb0 jr      a2                     #; a2  = 0x80000ee0, goto 0x80000ee0
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80000ee0 li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000ee4 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000eec
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000eec addi    a0, s3, 7              #; s3  = 0x0011feb4, (wrb) a0  <-- 0x0011febb
      0x80000ef0 andi    a0, a0, -8             #; a0  = 0x0011febb, (wrb) a0  <-- 0x0011feb8
      0x80000ef8 addi    s3, a0, 8              #; a0  = 0x0011feb8, (wrb) s3  <-- 0x0011fec0
      0x80000efc mv      a0, s2                 #; s2  = 0x800017f0, (wrb) a0  <-- 0x800017f0
      0x80000ef4 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011feb8]
                                                #; (f:lsu) fa0  <-- 0.0
      0x80000f00 mv      a1, s4                 #; s4  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
      0x80000f04 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000f08 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000f0c mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000f10 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000f14 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000f18 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001f18
      0x80000f1c jalr    ra, ra, -1656          #; ra  = 0x80001f18, (wrb) ra  <-- 0x80000f20, goto 0x800018a0
; _ftoa (printf.c:340)
      0x800018a0 addi    sp, sp, -112           #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fdc0
      0x800018a4 sw      ra, 108(sp)            #; sp  = 0x0011fdc0, 0x80000f20 ~~> Word[0x0011fe2c]
      0x800018a8 sw      s0, 104(sp)            #; sp  = 0x0011fdc0, 0 ~~> Word[0x0011fe28]
      0x800018ac sw      s1, 100(sp)            #; sp  = 0x0011fdc0, 8 ~~> Word[0x0011fe24]
      0x800018b0 sw      s2, 96(sp)             #; sp  = 0x0011fdc0, 0x800017f0 ~~> Word[0x0011fe20]
      0x800018b4 sw      s3, 92(sp)             #; sp  = 0x0011fdc0, 0x0011fec0 ~~> Word[0x0011fe1c]
      0x800018b8 sw      s4, 88(sp)             #; sp  = 0x0011fdc0, 0x0011fea7 ~~> Word[0x0011fe18]
      0x800018bc sw      s5, 84(sp)             #; sp  = 0x0011fdc0, -1 ~~> Word[0x0011fe14]
      0x800018c0 sw      s6, 80(sp)             #; sp  = 0x0011fdc0, 0 ~~> Word[0x0011fe10]
      0x800018c4 sw      s7, 76(sp)             #; sp  = 0x0011fdc0, 0 ~~> Word[0x0011fe0c]
      0x800018c8 sw      s8, 72(sp)             #; sp  = 0x0011fdc0, 16 ~~> Word[0x0011fe08]
      0x800018cc sw      s9, 68(sp)             #; sp  = 0x0011fdc0, 8 ~~> Word[0x0011fe04]
      0x800018d0 sw      s10, 64(sp)            #; sp  = 0x0011fdc0, 0x80002ede ~~> Word[0x0011fe00]
      0x800018d4 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fdf8]
      0x800018d8 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fdf0]
      0x800018dc fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fde8]
      0x800018e0 auipc   s1, 0x2                #; (wrb) s1  <-- 0x800038e0
      0x800018e4 addi    s1, s1, -1840          #; s1  = 0x800038e0, (wrb) s1  <-- 0x800031b0
      0x800018e8 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x800031b0]
; _ftoa (printf.c:351)
      0x800018f0 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
; _ftoa (printf.c:0)
      0x800018f4 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x800018f8 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x800018ec fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
      0x800018fc mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x80001900 mv      s6, a1                 #; a1  = 0x0011fea7, (wrb) s6  <-- 0x0011fea7
      0x80001904 mv      s7, a0                 #; a0  = 0x800017f0, (wrb) s7  <-- 0x800017f0
; _ftoa (printf.c:351)
      0x80001908 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x800019f8
; _ftoa (printf.c:0)
      0x800019fc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800029fc
      0x800019f8 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x80001a00 addi    a0, a0, 1980           #; a0  = 0x800029fc, (wrb) a0  <-- 0x800031b8
      0x80001a04 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800031b8]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x80001a08 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x80001a0c bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001a28
; _ftoa (printf.c:0)
      0x80001a28 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002a28
      0x80001a2c addi    a0, a0, 1944           #; a0  = 0x80002a28, (wrb) a0  <-- 0x800031c0
      0x80001a34 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002a34
      0x80001a38 addi    a0, a0, 1940           #; a0  = 0x80002a34, (wrb) a0  <-- 0x800031c8
      0x80001a30 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800031c0]
      0x80001a3c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800031c8]
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
; _ftoa (printf.c:358)
      0x80001a40 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
                                                #; (acc) a0  <-- 0x00b57533
      0x80001a44 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
                                                #; (acc) a0  <-- 0x00b57533
      0x80001a48 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80001a4c bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001b48
; _ftoa (printf.c:374)
      0x80001b48 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x80001b4c li      s8, 6                  #; (wrb) s8  <-- 6
      0x80001b50 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001b58
; _ftoa (printf.c:0)
      0x80001b58 li      a0, 10                 #; (wrb) a0  <-- 10
      0x80001b5c fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs2  <-- 0.0
; _ftoa (printf.c:378)
      0x80001b60 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001b98
; _ftoa (printf.c:0)
      0x80001b98 li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x80001b9c slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x80001ba0 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002ba0
      0x80001ba4 addi    a1, a1, 1288           #; a1  = 0x80002ba0, (wrb) a1  <-- 0x800030a8
      0x80001ba8 add     a0, a0, a1             #; a0  = 48, a1  = 0x800030a8, (wrb) a0  <-- 0x800030d8
      0x80001bac fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800030d8]
; _ftoa (printf.c:383)
      0x80001bb0 fcvt.w.d s1, fs2               #; fs2  = 0.0
                                                #; (f:lsu) ft1  <-- 1000000.0000000
; _ftoa (printf.c:384)
      0x80001bb4 fcvt.d.w ft0, s1               #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80001bb8 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80001bbc fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
; _ftoa (printf.c:0)
      0x80001bc0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002bc0
      0x80001bc4 addi    a0, a0, 1552           #; a0  = 0x80002bc0, (wrb) a0  <-- 0x800031d0
                                                #; (f:fpu) ft2  <-- 0.0
      0x80001bc8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800031d0]
; _ftoa (printf.c:385)
      0x80001bcc fcvt.wu.d a0, ft2              #; ft2  = 0.0
; _ftoa (printf.c:386)
      0x80001bd0 fcvt.d.wu ft3, a0              #; ac1  = 0, (f:lsu) ft0  <-- 0.5
                                                #; (f:fpu) ft3  <-- 0.0
      0x80001bd4 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:388)
      0x80001bd8 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x80001bdc bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001bfc
; _ftoa (printf.c:396)
      0x80001bfc flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x80001c00 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001c14
; _ftoa (printf.c:403)
      0x80001c18 beqz    s8, pc + 216           #; s8  = 6, not taken
      0x80001c14 fcvt.d.w fs1, zero             #; ac1  = 0
; _ftoa (printf.c:0)
      0x80001c1c li      a2, 0                  #; (wrb) a2  <-- 0
                                                #; (f:fpu) fs1  <-- 0.0
      0x80001c20 addi    a1, sp, 8              #; sp  = 0x0011fdc0, (wrb) a1  <-- 0x0011fdc8
; _ftoa (printf.c:414)
      0x80001c24 add     t1, a1, s0             #; a1  = 0x0011fdc8, s0  = 0, (wrb) t1  <-- 0x0011fdc8
      0x80001c28 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001c2c sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x80001c30 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80001c34 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80001c38 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001c3c li      a7, 9                  #; (wrb) a7  <-- 9
      0x80001c40 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80001c44 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x80001c48 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001c4c srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001c50 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001c54 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001c58 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x80001c5c add     a5, t1, a2             #; t1  = 0x0011fdc8, a2  = 0, (wrb) a5  <-- 0x0011fdc8
      0x80001c60 sb      a3, 0(a5)              #; a5  = 0x0011fdc8, 48 ~~> Byte[0x0011fdc8]
; _ftoa (printf.c:417)
      0x80001c64 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80001c68 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x80001c6c add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x80001c70 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80001c74 li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001c78 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x80001c7c xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x80001c80 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x80001c84 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x80001c88 bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x80001c8c addi    a0, sp, 8              #; sp  = 0x0011fdc0, (wrb) a0  <-- 0x0011fdc8
; _ftoa (printf.c:422)
      0x80001c90 add     a0, a0, s0             #; a0  = 0x0011fdc8, s0  = 0, (wrb) a0  <-- 0x0011fdc8
      0x80001c94 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x80001c98 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x80001c9c add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x80001ca0 li      a1, 31                 #; (wrb) a1  <-- 31
      0x80001ca4 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x80001ca8 add     a0, a0, a2             #; a0  = 0x0011fdc8, a2  = 1, (wrb) a0  <-- 0x0011fdc9
      0x80001cac mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x80001cb0 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001cb8
      0x80001cb8 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x80001cbc li      a1, 48                 #; (wrb) a1  <-- 48
      0x80001cc0 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000cc0
      0x80001cc4 jalr    ra, ra, -1896          #; ra  = 0x80000cc0, (wrb) ra  <-- 0x80001cc8, goto 0x80000558
; memset (memset.S:30)
      0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
; memset (memset.S:31)
      0x8000055c mv      a4, a0                 #; a0  = 0x0011fdc9, (wrb) a4  <-- 0x0011fdc9
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
      0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fdc9, 48 ~~> Byte[0x0011fdcd]
; memset (memset.S:80)
      0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fdc9, 48 ~~> Byte[0x0011fdcc]
; memset (memset.S:81)
      0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fdc9, 48 ~~> Byte[0x0011fdcb]
; memset (memset.S:82)
      0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fdc9, 48 ~~> Byte[0x0011fdca]
; memset (memset.S:83)
      0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fdc9, 48 ~~> Byte[0x0011fdc9]
; memset (memset.S:85)
      0x800005ec ret                            #; ra  = 0x80001cc8, goto 0x80001cc8
; _ftoa (printf.c:0)
      0x80001cc8 li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x80001ccc add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x80001cd0 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80001cd4 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x80001cd8 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80001cdc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001ce0 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001ce4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ccc
      0x80001ccc add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x80001cd0 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80001cd4 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x80001cd8 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80001cdc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001ce0 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001ce4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ccc
      0x80001ccc add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x80001cd0 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80001cd4 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x80001cd8 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80001cdc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001ce0 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001ce4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ccc
      0x80001ccc add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x80001cd0 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80001cd4 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x80001cd8 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80001cdc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001ce0 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001ce4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001ccc
      0x80001ccc add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x80001cd0 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80001cd4 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x80001cd8 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80001cdc and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001ce0 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001ce4 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001ce8 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x80001cec j       pc + 0x28              #; goto 0x80001d14
      0x80001d14 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001d18 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001d1c addi    a1, sp, 8              #; sp  = 0x0011fdc0, (wrb) a1  <-- 0x0011fdc8
; _ftoa (printf.c:427)
      0x80001d20 add     a0, a1, a0             #; a1  = 0x0011fdc8, a0  = 6, (wrb) a0  <-- 0x0011fdce
      0x80001d24 li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001d28 sb      a1, 0(a0)              #; a0  = 0x0011fdce, 46 ~~> Byte[0x0011fdce]
      0x80001d2c j       pc + 0x8               #; goto 0x80001d34
; _ftoa (printf.c:0)
      0x80001d34 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001d38 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001d3c bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001d40 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001d48 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001d44 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
      0x80001d4c addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001d50 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001d54 addi    a3, sp, 8              #; sp  = 0x0011fdc0, (wrb) a3  <-- 0x0011fdc8
      0x80001d58 li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001d5c beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001d60 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001d64 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001d68 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001d6c add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001d70 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001d74 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001d78 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80001d7c addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001d80 add     s0, a3, s0             #; a3  = 0x0011fdc8, s0  = 7, (wrb) s0  <-- 0x0011fdcf
; _ftoa (printf.c:434)
      0x80001d84 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001d88 sb      a5, 0(s0)              #; s0  = 0x0011fdcf, 48 ~~> Byte[0x0011fdcf]
; _ftoa (printf.c:0)
      0x80001d8c mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001d90 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001d94 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80001d98 j       pc + 0x8               #; goto 0x80001da0
; _ftoa (printf.c:440)
      0x80001da0 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001da4 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001da8 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001e14
; _ftoa (printf.c:0)
      0x80001e14 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001e18 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80001e1c beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001e34
; _ftoa (printf.c:453)
      0x80001e34 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001e38 bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001e3c andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001e40 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001e6c
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001e6c snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001e70 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80001e74 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001e78 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001e7c andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001e80 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001e84 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001eb0
; _ftoa (printf.c:0)
      0x80001eb0 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001eb4 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x80001eb8 addi    s9, sp, 7              #; sp  = 0x0011fdc0, (wrb) s9  <-- 0x0011fdc7
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001ebc add     a0, s9, s8             #; s9  = 0x0011fdc7, s8  = 8, (wrb) a0  <-- 0x0011fdcf
      0x80001ec0 lbu     a0, 0(a0)              #; a0  = 0x0011fdcf, a0  <~~ Byte[0x0011fdcf]
      0x80001ec4 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x80001ec8 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
      0x80001ecc mv      a1, s6                 #; s6  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
                                                #; (lsu) a0  <-- 48
      0x80001ed0 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80001ed4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001ed8 jalr    s7                     #; s7  = 0x800017f0, (wrb) ra  <-- 0x80001edc, goto 0x800017f0
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017f0 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
      0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
      0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 8
      0x80001810 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 9 ~~> Word[0x8000325c]
      0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 8, (wrb) a4  <-- 0x80003264
      0x8000181c sb      a0, 72(a4)             #; a4  = 0x80003264, 48 ~~> Byte[0x800032ac]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 9
      0x80001824 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x80001828 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x8000182c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001830 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001898 ret                            #; ra  = 0x80001edc, goto 0x80001edc
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001edc mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x80001ee0 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ee4 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001ebc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001ebc add     a0, s9, s8             #; s9  = 0x0011fdc7, s8  = 7, (wrb) a0  <-- 0x0011fdce
      0x80001ec0 lbu     a0, 0(a0)              #; a0  = 0x0011fdce, a0  <~~ Byte[0x0011fdce]
      0x80001ec4 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001ec8 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80001ecc mv      a1, s6                 #; s6  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
      0x80001ed0 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001ed4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001ed8 jalr    s7                     #; s7  = 0x800017f0, (wrb) ra  <-- 0x80001edc, goto 0x800017f0
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017f0 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
      0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
      0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 9
      0x80001810 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 10 ~~> Word[0x8000325c]
      0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 9, (wrb) a4  <-- 0x80003265
      0x8000181c sb      a0, 72(a4)             #; a4  = 0x80003265, 46 ~~> Byte[0x800032ad]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 10
      0x80001824 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x80001828 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x8000182c addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x80001830 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001898 ret                            #; ra  = 0x80001edc, goto 0x80001edc
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001edc mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001ee0 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ee4 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001ebc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001ebc add     a0, s9, s8             #; s9  = 0x0011fdc7, s8  = 6, (wrb) a0  <-- 0x0011fdcd
      0x80001ec0 lbu     a0, 0(a0)              #; a0  = 0x0011fdcd, a0  <~~ Byte[0x0011fdcd]
      0x80001ec4 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001ec8 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001ecc mv      a1, s6                 #; s6  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
      0x80001ed0 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001ed4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001ed8 jalr    s7                     #; s7  = 0x800017f0, (wrb) ra  <-- 0x80001edc, goto 0x800017f0
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017f0 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
      0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
      0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 10
      0x80001810 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 11 ~~> Word[0x8000325c]
      0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 10, (wrb) a4  <-- 0x80003266
      0x8000181c sb      a0, 72(a4)             #; a4  = 0x80003266, 48 ~~> Byte[0x800032ae]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 11
      0x80001824 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x80001828 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x8000182c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001830 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001898 ret                            #; ra  = 0x80001edc, goto 0x80001edc
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001edc mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001ee0 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ee4 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001ebc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001ebc add     a0, s9, s8             #; s9  = 0x0011fdc7, s8  = 5, (wrb) a0  <-- 0x0011fdcc
      0x80001ec0 lbu     a0, 0(a0)              #; a0  = 0x0011fdcc, a0  <~~ Byte[0x0011fdcc]
      0x80001ec4 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001ec8 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001ecc mv      a1, s6                 #; s6  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
      0x80001ed0 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001ed4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001ed8 jalr    s7                     #; s7  = 0x800017f0, (wrb) ra  <-- 0x80001edc, goto 0x800017f0
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017f0 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
      0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
      0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 11
      0x80001810 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 12 ~~> Word[0x8000325c]
      0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 11, (wrb) a4  <-- 0x80003267
      0x8000181c sb      a0, 72(a4)             #; a4  = 0x80003267, 48 ~~> Byte[0x800032af]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 12
      0x80001824 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x80001828 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x8000182c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001830 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001898 ret                            #; ra  = 0x80001edc, goto 0x80001edc
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001edc mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001ee0 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ee4 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001ebc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001ebc add     a0, s9, s8             #; s9  = 0x0011fdc7, s8  = 4, (wrb) a0  <-- 0x0011fdcb
      0x80001ec0 lbu     a0, 0(a0)              #; a0  = 0x0011fdcb, a0  <~~ Byte[0x0011fdcb]
      0x80001ec4 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001ec8 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001ecc mv      a1, s6                 #; s6  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
      0x80001ed0 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001ed4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001ed8 jalr    s7                     #; s7  = 0x800017f0, (wrb) ra  <-- 0x80001edc, goto 0x800017f0
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017f0 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
      0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
      0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 12
      0x80001810 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 13 ~~> Word[0x8000325c]
      0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 12, (wrb) a4  <-- 0x80003268
      0x8000181c sb      a0, 72(a4)             #; a4  = 0x80003268, 48 ~~> Byte[0x800032b0]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 13
      0x80001824 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x80001828 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x8000182c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001830 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001898 ret                            #; ra  = 0x80001edc, goto 0x80001edc
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001edc mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001ee0 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ee4 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001ebc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001ebc add     a0, s9, s8             #; s9  = 0x0011fdc7, s8  = 3, (wrb) a0  <-- 0x0011fdca
      0x80001ec0 lbu     a0, 0(a0)              #; a0  = 0x0011fdca, a0  <~~ Byte[0x0011fdca]
      0x80001ec4 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001ec8 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001ecc mv      a1, s6                 #; s6  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
      0x80001ed0 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001ed4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001ed8 jalr    s7                     #; s7  = 0x800017f0, (wrb) ra  <-- 0x80001edc, goto 0x800017f0
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017f0 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
      0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
      0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 13
      0x80001810 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 14 ~~> Word[0x8000325c]
      0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 13, (wrb) a4  <-- 0x80003269
      0x8000181c sb      a0, 72(a4)             #; a4  = 0x80003269, 48 ~~> Byte[0x800032b1]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 14
      0x80001824 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x80001828 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x8000182c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001830 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001898 ret                            #; ra  = 0x80001edc, goto 0x80001edc
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001edc mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001ee0 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ee4 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001ebc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001ebc add     a0, s9, s8             #; s9  = 0x0011fdc7, s8  = 2, (wrb) a0  <-- 0x0011fdc9
      0x80001ec0 lbu     a0, 0(a0)              #; a0  = 0x0011fdc9, a0  <~~ Byte[0x0011fdc9]
      0x80001ec4 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001ec8 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001ecc mv      a1, s6                 #; s6  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
      0x80001ed0 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001ed4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001ed8 jalr    s7                     #; s7  = 0x800017f0, (wrb) ra  <-- 0x80001edc, goto 0x800017f0
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017f0 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
      0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
      0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 14
      0x80001810 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 15 ~~> Word[0x8000325c]
      0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 14, (wrb) a4  <-- 0x8000326a
      0x8000181c sb      a0, 72(a4)             #; a4  = 0x8000326a, 48 ~~> Byte[0x800032b2]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 15
      0x80001824 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x80001828 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x8000182c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001830 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001898 ret                            #; ra  = 0x80001edc, goto 0x80001edc
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001edc mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001ee0 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ee4 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001ebc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001ebc add     a0, s9, s8             #; s9  = 0x0011fdc7, s8  = 1, (wrb) a0  <-- 0x0011fdc8
      0x80001ec0 lbu     a0, 0(a0)              #; a0  = 0x0011fdc8, a0  <~~ Byte[0x0011fdc8]
      0x80001ec4 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001ec8 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001ecc mv      a1, s6                 #; s6  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
      0x80001ed0 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001ed4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001ed8 jalr    s7                     #; s7  = 0x800017f0, (wrb) ra  <-- 0x80001edc, goto 0x800017f0
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017f0 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
      0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
      0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 15
      0x80001810 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 16 ~~> Word[0x8000325c]
      0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 15, (wrb) a4  <-- 0x8000326b
      0x8000181c sb      a0, 72(a4)             #; a4  = 0x8000326b, 48 ~~> Byte[0x800032b3]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 16
      0x80001824 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x80001828 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x8000182c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001830 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001834 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001838 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001898
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001898 ret                            #; ra  = 0x80001edc, goto 0x80001edc
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001edc mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001ee0 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ee4 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001ee8 j       pc + 0x8               #; goto 0x80001ef0
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001ef0 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x80001ef4 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80001ef8 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001efc xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001f00 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001f04 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001f34
; _ftoa (printf.c:0)
      0x80001f34 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x80001f38 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80001f3c fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fde8]
                                                #; (f:lsu) fs2  <-- 0.0
      0x80001f48 lw      s10, 64(sp)            #; sp  = 0x0011fdc0, s10 <~~ Word[0x0011fe00]
      0x80001f40 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fdf0]
      0x80001f44 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fdf8], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) s10 <-- 0x80002ede
      0x80001f4c lw      s9, 68(sp)             #; sp  = 0x0011fdc0, s9  <~~ Word[0x0011fe04]
                                                #; (lsu) s9  <-- 8
      0x80001f50 lw      s8, 72(sp)             #; sp  = 0x0011fdc0, s8  <~~ Word[0x0011fe08]
                                                #; (lsu) s8  <-- 16
      0x80001f54 lw      s7, 76(sp)             #; sp  = 0x0011fdc0, s7  <~~ Word[0x0011fe0c]
                                                #; (lsu) s7  <-- 0
      0x80001f58 lw      s6, 80(sp)             #; sp  = 0x0011fdc0, s6  <~~ Word[0x0011fe10]
                                                #; (lsu) s6  <-- 0
      0x80001f5c lw      s5, 84(sp)             #; sp  = 0x0011fdc0, s5  <~~ Word[0x0011fe14]
                                                #; (lsu) s5  <-- -1
      0x80001f60 lw      s4, 88(sp)             #; sp  = 0x0011fdc0, s4  <~~ Word[0x0011fe18]
                                                #; (lsu) s4  <-- 0x0011fea7
      0x80001f64 lw      s3, 92(sp)             #; sp  = 0x0011fdc0, s3  <~~ Word[0x0011fe1c]
                                                #; (lsu) s3  <-- 0x0011fec0
      0x80001f68 lw      s2, 96(sp)             #; sp  = 0x0011fdc0, s2  <~~ Word[0x0011fe20]
                                                #; (lsu) s2  <-- 0x800017f0
      0x80001f6c lw      s1, 100(sp)            #; sp  = 0x0011fdc0, s1  <~~ Word[0x0011fe24]
                                                #; (lsu) s1  <-- 8
      0x80001f70 lw      s0, 104(sp)            #; sp  = 0x0011fdc0, s0  <~~ Word[0x0011fe28]
                                                #; (lsu) s0  <-- 0
      0x80001f74 lw      ra, 108(sp)            #; sp  = 0x0011fdc0, ra  <~~ Word[0x0011fe2c]
      0x80001f78 addi    sp, sp, 112            #; sp  = 0x0011fdc0, (wrb) sp  <-- 0x0011fe30
                                                #; (lsu) ra  <-- 0x80000f20
      0x80001f7c ret                            #; ra  = 0x80000f20, goto 0x80000f20
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000f20 j       pc + 0x7c0             #; goto 0x800016e0
      0x800016e0 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x800016e4 li      s6, 37                 #; (wrb) s6  <-- 37
      0x800016e8 li      s7, 46                 #; (wrb) s7  <-- 46
      0x800016ec addi    s0, s10, 1             #; s10 = 0x80002ede, (wrb) s0  <-- 0x80002edf
      0x800016f0 j       pc - 0xa74             #; goto 0x80000c7c
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c7c addi    s10, s0, 2             #; s0  = 0x80002edf, (wrb) s10 <-- 0x80002ee1
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c80 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x80000c84 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c88 lbu     a0, 0(s0)              #; s0  = 0x80002edf, a0  <~~ Byte[0x80002edf]
                                                #; (lsu) a0  <-- 10
      0x80000c8c beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000c90 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c94 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x80000c98 mv      a1, s4                 #; s4  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
      0x80000c9c mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x80000ca0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000ca4 jalr    s2                     #; s2  = 0x800017f0, (wrb) ra  <-- 0x80000ca8, goto 0x800017f0
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017f0 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f8 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017fc mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001800 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003800
      0x80001804 addi    a3, a3, -1444          #; a3  = 0x80003800, (wrb) a3  <-- 0x8000325c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001808 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000325c, (wrb) a1  <-- 0x8000325c
      0x8000180c lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 16
      0x80001810 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x80001814 sw      a5, 0(a1)              #; a1  = 0x8000325c, 17 ~~> Word[0x8000325c]
      0x80001818 add     a4, a1, a4             #; a1  = 0x8000325c, a4  = 16, (wrb) a4  <-- 0x8000326c
      0x8000181c sb      a0, 72(a4)             #; a4  = 0x8000326c, 10 ~~> Byte[0x800032b4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001820 lw      a4, 0(a1)              #; a1  = 0x8000325c, a4  <~~ Word[0x8000325c]
                                                #; (lsu) a4  <-- 17
      0x80001824 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x80001828 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x8000182c addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x80001830 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x80001834 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x80001838 bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000183c add     a0, a3, a2             #; a3  = 0x8000325c, a2  = 0, (wrb) a0  <-- 0x8000325c
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001840 addi    a2, a0, 72             #; a0  = 0x8000325c, (wrb) a2  <-- 0x800032a4
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001844 sw      zero, 12(a0)           #; a0  = 0x8000325c, 0 ~~> Word[0x80003268]
      0x80001848 li      a3, 64                 #; (wrb) a3  <-- 64
      0x8000184c sw      a3, 8(a0)              #; a0  = 0x8000325c, 64 ~~> Word[0x80003264]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001850 sw      zero, 20(a0)           #; a0  = 0x8000325c, 0 ~~> Word[0x80003270]
      0x80001854 li      a3, 1                  #; (wrb) a3  <-- 1
      0x80001858 sw      a3, 16(a0)             #; a0  = 0x8000325c, 1 ~~> Word[0x8000326c]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000185c sw      zero, 28(a0)           #; a0  = 0x8000325c, 0 ~~> Word[0x80003278]
      0x80001860 sw      a2, 24(a0)             #; a0  = 0x8000325c, 0x800032a4 ~~> Word[0x80003274]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001864 lw      a2, 0(a1)              #; a1  = 0x8000325c, a2  <~~ Word[0x8000325c]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001868 addi    a3, a0, 8              #; a0  = 0x8000325c, (wrb) a3  <-- 0x80003264
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000186c sw      zero, 36(a0)           #; a0  = 0x8000325c, 0 ~~> Word[0x80003280]
                                                #; (lsu) a2  <-- 17
      0x80001870 sw      a2, 32(a0)             #; a0  = 0x8000325c, 17 ~~> Word[0x8000327c]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001874 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003874
      0x80001878 addi    a0, a0, -1908          #; a0  = 0x80003874, (wrb) a0  <-- 0x80003100
      0x8000187c sw      a3, 0(a0)              #; a0  = 0x80003100, 0x80003264 ~~> Word[0x80003100]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001880 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003880
      0x80001884 addi    a0, a0, -1856          #; a0  = 0x80003880, (wrb) a0  <-- 0x80003140
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001888 lw      a2, 0(a0)              #; a0  = 0x80003140, a2  <~~ Word[0x80003140]
                                                #; (lsu) a2  <-- 0
      0x8000188c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001888
      0x80001888 lw      a2, 0(a0)              #; a0  = 0x80003140, a2  <~~ Word[0x80003140]
                                                #; (lsu) a2  <-- 1
      0x8000188c beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001890 sw      zero, 0(a0)            #; a0  = 0x80003140, 0 ~~> Word[0x80003140]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001894 sw      zero, 0(a1)            #; a1  = 0x8000325c, 0 ~~> Word[0x8000325c]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001898 ret                            #; ra  = 0x80000ca8, goto 0x80000ca8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000ca8 addi    s0, s0, 1              #; s0  = 0x80002edf, (wrb) s0  <-- 0x80002ee0
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000cac addi    s10, s10, 1            #; s10 = 0x80002ee1, (wrb) s10 <-- 0x80002ee2
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cb0 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000cb4 lbu     a0, 0(s0)              #; s0  = 0x80002ee0, a0  <~~ Byte[0x80002ee0]
                                                #; (lsu) a0  <-- 0
      0x80000cb8 bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000cbc j       pc + 0xad8             #; goto 0x80001794
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x80001794 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x80001798 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x800017a0
      0x800017a0 li      a0, 0                  #; (wrb) a0  <-- 0
      0x800017a4 mv      a1, s4                 #; s4  = 0x0011fea7, (wrb) a1  <-- 0x0011fea7
      0x800017a8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800017ac jalr    s2                     #; s2  = 0x800017f0, (wrb) ra  <-- 0x800017b0, goto 0x800017f0
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017f0 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001898
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001898 ret                            #; ra  = 0x800017b0, goto 0x800017b0
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x800017b0 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x800017b4 lw      s11, 60(sp)            #; sp  = 0x0011fe30, s11 <~~ Word[0x0011fe6c]
                                                #; (lsu) s11 <-- 0
      0x800017b8 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
                                                #; (lsu) s10 <-- 0
      0x800017bc lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 0
      0x800017c0 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 0
      0x800017c4 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x800017c8 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x800017cc lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- 0
      0x800017d0 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0
      0x800017d4 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0
      0x800017d8 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 8
      0x800017dc lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 9
      0x800017e0 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0x00100000
      0x800017e4 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
      0x800017e8 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80000bec
      0x800017ec ret                            #; ra  = 0x80000bec, goto 0x80000bec
; printf_ (printf.c:869)
      0x80000bec lw      ra, 12(sp)             #; sp  = 0x0011fea0, ra  <~~ Word[0x0011feac]
      0x80000bf0 addi    sp, sp, 48             #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fed0
                                                #; (lsu) ra  <-- 0x80000b44
      0x80000bf4 ret                            #; ra  = 0x80000b44, goto 0x80000b44
; main (test_aliasing.c:0)
      0x80000b44 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002b44
      0x80000b48 addi    a0, a0, 1636           #; a0  = 0x80002b44, (wrb) a0  <-- 0x800031a8
      0x80000b4c fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800031a8]
                                                #; (f:lsu) ft3  <-- 0.0001
; main (test_aliasing.c:45)
      0x80000b50 flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0
                                                #; (acc) s9  <-- 0x03013c87
      0x80000b54 fld     fs11, 32(sp)           #; fs11 <~~ Doub[0x0011fef0]
; main (test_aliasing.c:46)
      0x80000b58 fld     fs10, 40(sp)           #; fs10 <~~ Doub[0x0011fef8], (f:lsu) fs11 <-- 0.0
      0x80000b5c fld     fs9, 48(sp)            #; fs9  <~~ Doub[0x0011ff00], (f:lsu) fs10 <-- 0.0
      0x80000b60 fld     fs8, 56(sp)            #; fs8  <~~ Doub[0x0011ff08], (f:lsu) fs9  <-- 0.0
      0x80000b64 fld     fs7, 64(sp)            #; fs7  <~~ Doub[0x0011ff10], (f:lsu) fs8  <-- 0.0
      0x80000b68 fld     fs6, 72(sp)            #; fs6  <~~ Doub[0x0011ff18], (f:lsu) fs7  <-- 0.0
      0x80000b6c fld     fs5, 80(sp)            #; fs5  <~~ Doub[0x0011ff20], (f:lsu) fs6  <-- 0.0
                                                #; (f:lsu) fs5  <-- 0.0
      0x80000b70 fld     fs4, 88(sp)            #; fs4  <~~ Doub[0x0011ff28]
      0x80000b74 fld     fs3, 96(sp)            #; fs3  <~~ Doub[0x0011ff30], (f:lsu) fs4  <-- 0.0
      0x80000b78 fld     fs2, 104(sp)           #; fs2  <~~ Doub[0x0011ff38], (f:lsu) fs3  <-- 0.0
      0x80000b84 lw      s2, 128(sp)            #; sp  = 0x0011fed0, s2  <~~ Word[0x0011ff50]
      0x80000b7c fld     fs1, 112(sp)           #; fs1  <~~ Doub[0x0011ff40], (f:lsu) fs2  <-- 0.0
      0x80000b80 fld     fs0, 120(sp)           #; fs0  <~~ Doub[0x0011ff48], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) s2  <-- 0
      0x80000b88 lw      s1, 132(sp)            #; sp  = 0x0011fed0, s1  <~~ Word[0x0011ff54]
                                                #; (lsu) s1  <-- 0
      0x80000b8c lw      s0, 136(sp)            #; sp  = 0x0011fed0, s0  <~~ Word[0x0011ff58]
                                                #; (lsu) s0  <-- 0
      0x80000b90 lw      ra, 140(sp)            #; sp  = 0x0011fed0, ra  <~~ Word[0x0011ff5c]
      0x80000b94 addi    sp, sp, 144            #; sp  = 0x0011fed0, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002c50
      0x80000b98 ret                            #; ra  = 0x80002c50, goto 0x80002c50
; ?? (start.S:184)
      0x80002c50 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x80002c54 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c54
      0x80002c58 jalr    ra, ra, 524            #; ra  = 0x80002c54, (wrb) ra  <-- 0x80002c5c, goto 0x80002e60
; ?? (start_snitch.S:33)
      0x80002e60 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002e64 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002c5c ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002e68 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e68
      0x80002e6c jalr    ra, ra, -1264          #; ra  = 0x80002e68, (wrb) ra  <-- 0x80002e70, goto 0x80002978
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002978 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000297c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002980 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002984 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002988 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x8000298c ret                            #; ra  = 0x80002e70, goto 0x80002e70
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002e70 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002e74 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002e78 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002e7c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002c5c
; ?? (start_snitch.S:40)
      0x80002e80 ret                            #; ra  = 0x80002c5c, goto 0x80002c5c
; ?? (start.S:195)
      0x80002c5c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x80002c60 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c60
      0x80002c64 jalr    ra, ra, 556            #; ra  = 0x80002c60, (wrb) ra  <-- 0x80002c68, goto 0x80002e8c
; ?? (start_snitch.S:15)
      0x80002e8c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80002e90 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80002e94 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002c68 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80002e98 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e98
      0x80002e9c jalr    ra, ra, -1344          #; ra  = 0x80002e98, (wrb) ra  <-- 0x80002ea0, goto 0x80002958
; snrt_global_core_idx (team.c:32)
      0x80002958 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000295c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002960 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002964 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002968 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x8000296c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x80002970 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x80002974 ret                            #; ra  = 0x80002ea0, goto 0x80002ea0
; ?? (start_snitch.S:20)
      0x80002ea0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x80002ea4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80002ea8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x80002eac bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x80002c68
; ?? (start_snitch.S:28)
      0x80002eb0 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x80002eb4 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x80002eb8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002eb8
      0x80002ebc addi    t1, t1, 584            #; t1  = 0x80002eb8, (wrb) t1  <-- 0x80003100
; ?? (start_snitch.S:31)
      0x80002ec0 sw      t0, 0(t1)              #; t1  = 0x80003100, 1 ~~> Word[0x80003100]
; ?? (start_snitch.S:32)
      0x80002ec4 ret                            #; ra  = 0x80002c68, goto 0x80002c68
; ?? (start.S:198)
      0x80002c68 wfi                            #; 
                        tion 0 @ (12, 5881):
                          138
                          145
                           61
                           78
                      11.7754
                       0.2380
                       0.1414
                          1.0
                          1.0
                            0
                       1.4235
                       2.7436
                       0.0392
                       0.0145
                       0.3696
                         5870
                       0.2772
