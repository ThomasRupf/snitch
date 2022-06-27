; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x80002a70
      0x00001014 jalr    t0                     #; t0  = 0x80002a70, (wrb) ra  <-- 4120, goto 0x80002a70
; ?? (start.S:20)
      0x80002a70 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003a70
; ?? (start.S:21)
      0x80002a74 addi    gp, gp, -232           #; gp  = 0x80003a70, (wrb) gp  <-- 0x80003988
; ?? (start.S:28)
      0x80002a78 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a78
      0x80002a7c jalr    ra, ra, 964            #; ra  = 0x80002a78, (wrb) ra  <-- 0x80002a80, goto 0x80002e3c
; ?? (start_snitch.S:16)
      0x80002e3c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80002e40 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80002e44 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80002e48 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x80002e4c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80002e50 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80002e54 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80002e58 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x80002e5c mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80002e60 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80002e64 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80002e68 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x80002e6c ret                            #; ra  = 0x80002a80, goto 0x80002a80
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x80002a80 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x80002a84 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x80002a88 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a88
      0x80002a8c jalr    ra, ra, 1036           #; ra  = 0x80002a88, (wrb) ra  <-- 0x80002a90, goto 0x80002e94
; ?? (start_snitch.S:48)
      0x80002e94 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80002e98 ret                            #; ra  = 0x80002a90, goto 0x80002a90
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x80002a90 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x80002a94 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x80002a98 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x80002a9c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x80002aa0 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x80002aa4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002aa4
      0x80002aa8 addi    t0, t0, 2044           #; t0  = 0x80002aa4, (wrb) t0  <-- 0x800032a0
; ?? (start.S:49)
      0x80002aac auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002aac
      0x80002ab0 addi    t1, t1, 2040           #; t1  = 0x80002aac, (wrb) t1  <-- 0x800032a4
; ?? (start.S:50)
      0x80002ab4 bge     t0, t1, pc + 16        #; t0  = 0x800032a0, t1  = 0x800032a4, not taken
; ?? (start.S:51)
      0x80002ab8 sw      zero, 0(t0)            #; t0  = 0x800032a0, 0 ~~> Word[0x800032a0]
; ?? (start.S:52)
      0x80002abc addi    t0, t0, 4              #; t0  = 0x800032a0, (wrb) t0  <-- 0x800032a4
; ?? (start.S:53)
      0x80002ac0 blt     t0, t1, pc - 8         #; t0  = 0x800032a4, t1  = 0x800032a4, not taken
; ?? (start.S:58)
      0x80002ac4 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x80002ac8 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x80002acc beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x80002ad0 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x80002ad4 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x80002ad8 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x80002adc fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x80002ae0 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x80002ae4 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x80002ae8 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x80002aec fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x80002af0 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x80002af4 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x80002af8 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x80002afc fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x80002b00 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x80002b04 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x80002b08 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x80002b0c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x80002b10 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x80002b14 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x80002b18 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x80002b1c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x80002b20 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x80002b24 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x80002b28 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x80002b2c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x80002b30 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x80002b34 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x80002b38 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x80002b3c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x80002b40 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x80002b44 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x80002b48 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x80002b4c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x80002b50 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x80002b54 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x80002b58 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002b58
      0x80002b5c lw      t0, 900(t0)            #; t0  = 0x80002b58, t0  <~~ Word[0x80002edc]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x80002b60 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x80002b64 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x80002b68 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002b68
      0x80002b6c lw      t2, 880(t2)            #; t2  = 0x80002b68, t2  <~~ Word[0x80002ed8]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x80002b70 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x80002b74 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x80002b78 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x80002b7c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x80002b80 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x80002b84 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x80002b88 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x80002b8c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x80002b90 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002b90
      0x80002b94 addi    t0, t0, 1528           #; t0  = 0x80002b90, (wrb) t0  <-- 0x80003188
; ?? (start.S:125)
      0x80002b98 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002b98
      0x80002b9c addi    t1, t1, 1520           #; t1  = 0x80002b98, (wrb) t1  <-- 0x80003188
; ?? (start.S:126)
      0x80002ba0 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002ba0
      0x80002ba4 addi    t2, t2, 1512           #; t2  = 0x80002ba0, (wrb) t2  <-- 0x80003188
; ?? (start.S:127)
      0x80002ba8 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002ba8
      0x80002bac addi    t3, t3, 1520           #; t3  = 0x80002ba8, (wrb) t3  <-- 0x80003198
; ?? (start.S:128)
      0x80002bb0 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003188, (wrb) sp  <-- 0x801230f8
; ?? (start.S:129)
      0x80002bb4 sub     sp, sp, t1             #; sp  = 0x801230f8, t1  = 0x80003188, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x80002bb8 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003188, (wrb) sp  <-- 0x801230f8
; ?? (start.S:131)
      0x80002bbc sub     sp, sp, t3             #; sp  = 0x801230f8, t3  = 0x80003198, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x80002bc0 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x80002bc4 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x80002bc8 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x80002bcc mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x80002bd0 bge     t0, t1, pc + 24        #; t0  = 0x80003188, t1  = 0x80003188, taken, goto 0x80002be8
; ?? (start.S:147)
      0x80002be8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002be8
      0x80002bec addi    t0, t0, 1440           #; t0  = 0x80002be8, (wrb) t0  <-- 0x80003188
; ?? (start.S:148)
      0x80002bf0 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002bf0
      0x80002bf4 addi    t1, t1, 1448           #; t1  = 0x80002bf0, (wrb) t1  <-- 0x80003198
; ?? (start.S:149)
      0x80002bf8 bge     t0, t1, pc + 20        #; t0  = 0x80003188, t1  = 0x80003198, not taken
; ?? (start.S:150)
      0x80002bfc sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x80002c00 addi    t0, t0, 4              #; t0  = 0x80003188, (wrb) t0  <-- 0x8000318c
; ?? (start.S:152)
      0x80002c04 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x80002c08 blt     t0, t2, pc - 12        #; t0  = 0x8000318c, t2  = 0x80003188, not taken
; ?? (start.S:158)
      0x80002c0c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x80002c10 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x80002c14 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x80002c18 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x80002c1c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x80002c20 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x80002c24 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c24
      0x80002c28 jalr    ra, ra, -1060          #; ra  = 0x80002c24, (wrb) ra  <-- 0x80002c2c, goto 0x80002800
; _snrt_init_team (start.c:49)
      0x80002800 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x80002804 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x80002808 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x8000280c sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x80002810 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x80002814 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x80002818 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x8000281c mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x80002820 mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x80002824 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x80002828 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x8000282c sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x80002830 divu    a0, a0, t0             #; a0  = 0, t0  = 8
                                                #; (acc) a6  <-- 0x00a7a823
; _snrt_init_team (start.c:54)
      0x80002834 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x80002838 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x8000283c sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x80002840 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x80002844 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x80002848 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x8000284c add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x80002850 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x80002854 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x80002858 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x8000285c lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x80002860 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x80002864 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x80002868 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x8000286c sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x80002870 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x80002874 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x80002878 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x8000287c add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x80002880 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x80002884 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x80002888 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x8000288c srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x80002890 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x80002894 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x80002898 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x8000289c sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x800028a0 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x800028a4 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x800028a8 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x800028ac sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x800028b0 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x800028b4 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x800028b8 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x800028bc sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x800028c0 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800028c4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800028c8 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x800028cc lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800028d0 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x800028d4 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x800028d8 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x800028dc remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x800028e0 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x800028e4 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
                                                #; (acc) tp  <-- 0x00a5a223
      0x800028e8 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x800028ec li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x800028f0 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x800028f4 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800038f4
      0x800028f8 addi    a1, a1, -1616          #; a1  = 0x800038f4, (wrb) a1  <-- 0x800032a4
                                                #; (acc) a0  <-- 0x00b50533
      0x800028fc add     a0, a0, a1             #; a0  = 0, a1  = 0x800032a4, (wrb) a0  <-- 0x800032a4
      0x80002900 sw      zero, 0(a0)            #; a0  = 0x800032a4, 0 ~~> Word[0x800032a4]
; _snrt_init_team (start.c:86)
      0x80002904 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x80002908 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x8000290c sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x80002910 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x80002914 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x80002918 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x8000291c addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x80002920 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x80002924 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x80002928 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x8000292c sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x80002930 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x80002934 lw      a0, 0(a1)              #; a1  = 0x800032a4, a0  <~~ Word[0x800032a4]
                                                #; (lsu) a0  <-- 0
      0x80002938 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x8000293c andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x80002940 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x80002944 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x80002948 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x8000294c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002950 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002954 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x80002958 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000295c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002960 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x80002964 ret                            #; ra  = 0x80002c2c, goto 0x80002c2c
; ?? (start.S:165)
      0x80002c2c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x80002c30 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x80002c34 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x80002c38 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x80002c3c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x80002c40 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x80002c44 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002c44
      0x80002c48 addi    t0, t0, 60             #; t0  = 0x80002c44, (wrb) t0  <-- 0x80002c80
; ?? (start.S:175)
      0x80002c4c csrw    mtvec, t0              #; t0  = 0x80002c80, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x80002c50 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c50
      0x80002c54 jalr    ra, ra, 544            #; ra  = 0x80002c50, (wrb) ra  <-- 0x80002c58, goto 0x80002e70
; ?? (start_snitch.S:33)
      0x80002e70 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002e74 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002c58 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002e78 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e78
      0x80002e7c jalr    ra, ra, -1264          #; ra  = 0x80002e78, (wrb) ra  <-- 0x80002e80, goto 0x80002988
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002988 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000298c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002990 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002994 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002998 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x8000299c ret                            #; ra  = 0x80002e80, goto 0x80002e80
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002e80 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002e84 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002e88 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002e8c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002c58
; ?? (start_snitch.S:40)
      0x80002e90 ret                            #; ra  = 0x80002c58, goto 0x80002c58
; ?? (start.S:183)
      0x80002c58 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000c58
      0x80002c5c jalr    ra, ra, -1572          #; ra  = 0x80000c58, (wrb) ra  <-- 0x80002c60, goto 0x80000634
; main (test_sp.c:14)
      0x80000634 addi    sp, sp, -48            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff30
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (test_sp.c:15)
      0x80000638 sw      ra, 44(sp)             #; sp  = 0x0011ff30, 0x80002c60 ~~> Word[0x0011ff5c]
      0x8000063c fsd     fs0, 32(sp)            #; 0.0 ~~> Doub[0x0011ff50]
      0x80000648 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000640 fsd     fs1, 24(sp)            #; 0.0 ~~> Doub[0x0011ff48]
      0x8000064c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000644 fsd     fs2, 16(sp)            #; 0.0 ~~> Doub[0x0011ff40]
      0x80000650 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
; main (test_sp.c:0)
      0x80000654 li      a0, 0                  #; (wrb) a0  <-- 0
                                                #; (lsu) a1  <-- 0
; main (test_sp.c:15)
      0x80000658 bnez    a1, pc + 1340          #; a1  = 0, not taken
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (test_sp.c:19)
      0x8000065c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000660 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000664 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80000668 lw      a2, 0(a0)              #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ff70]
                                                #; (lsu) a2  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in main (test_sp.c:19)
      0x8000066c lw      a0, 88(a2)             #; a2  = 0x0011ff70, a0  <~~ Word[0x0011ffc8]
                                                #; (lsu) a0  <-- 0x00100000
      0x80000670 lw      a1, 80(a2)             #; a2  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
                                                #; (lsu) a1  <-- 0x00100000
      0x80000674 lw      a3, 84(a2)             #; a2  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
      0x80000678 addi    a4, a0, 80             #; a0  = 0x00100000, (wrb) a4  <-- 0x00100050
                                                #; (lsu) a3  <-- 0x0001df30
      0x8000067c add     a3, a3, a1             #; a3  = 0x0001df30, a1  = 0x00100000, (wrb) a3  <-- 0x0011df30
      0x80000680 bgeu    a3, a4, pc + 24        #; a3  = 0x0011df30, a4  = 0x00100050, taken, goto 0x80000698
; snrt_l1alloc (alloc.c:33)
;  in main (test_sp.c:19)
      0x80000698 mv      a1, a0                 #; a0  = 0x00100000, (wrb) a1  <-- 0x00100000
; snrt_l1alloc (alloc.c:34)
;  in main (test_sp.c:19)
      0x8000069c sw      a4, 88(a2)             #; a2  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
; snrt_l1alloc (alloc.c:25)
;  in main (test_sp.c:20)
      0x800006a0 addi    a5, a0, 160            #; a0  = 0x00100000, (wrb) a5  <-- 0x001000a0
      0x800006a4 mv      a0, a4                 #; a4  = 0x00100050, (wrb) a0  <-- 0x00100050
      0x800006a8 bgeu    a3, a5, pc - 24        #; a3  = 0x0011df30, a5  = 0x001000a0, taken, goto 0x80000690
; snrt_l1alloc (alloc.c:34)
;  in main (test_sp.c:20)
      0x80000690 sw      a5, 88(a2)             #; a2  = 0x0011ff70, 0x001000a0 ~~> Word[0x0011ffc8]
      0x80000694 j       pc + 0x1c              #; goto 0x800006b0
; init_data (test_sp.c:8)
;  in main (test_sp.c:22)
      0x800006b0 srli    a2, a1, 20             #; a1  = 0x00100000, (wrb) a2  <-- 1
      0x800006b4 snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
      0x800006b8 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
      0x800006bc addi    a3, a3, -71            #; a3  = 0x00120000, (wrb) a3  <-- 0x0011ffb9
      0x800006c0 sltu    a3, a1, a3             #; a1  = 0x00100000, a3  = 0x0011ffb9, (wrb) a3  <-- 1
      0x800006c4 and     a6, a2, a3             #; a2  = 1, a3  = 1, (wrb) a6  <-- 1
      0x800006c8 beqz    a6, pc + 212           #; a6  = 1, not taken
; init_data (test_sp.c:0)
;  in main (test_sp.c:22)
      0x800006cc li      a2, 8                  #; (wrb) a2  <-- 8
      0x800006d0 li      a3, 9                  #; (wrb) a3  <-- 9
; init_data (test_sp.c:8)
;  in main (test_sp.c:22)
      0x800006d4 li      a4, 64                 #; (wrb) a4  <-- 64
      0x800006d8 li      a5, 192                #; (wrb) a5  <-- 192
      0x800006dc scfgw   a3, a4                 #; a3  = 9, a4  = 64
      0x800006e0 scfgw   a2, a5                 #; a2  = 8, a5  = 192
      0x800006e4 li      a2, 32                 #; (wrb) a2  <-- 32
      0x800006e8 scfgw   zero, a2               #; a2  = 32
; init_data (test_sp.c:0)
;  in main (test_sp.c:22)
      0x800006ec auipc   a2, 0x3                #; (wrb) a2  <-- 0x800036ec
      0x800006f0 addi    a2, a2, -1364          #; a2  = 0x800036ec, (wrb) a2  <-- 0x80003198
      0x800006f8 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800036f8
      0x800006fc addi    a2, a2, -1368          #; a2  = 0x800036f8, (wrb) a2  <-- 0x800031a0
      0x800006f4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x80003198]
                                                #; (f:lsu) ft3  <-- 3.141
; init_data (test_sp.c:8)
;  in main (test_sp.c:22)
      0x80000704 scfgwi  a1, 896                #; a1  = 0x00100000
; init_data (test_sp.c:0)
;  in main (test_sp.c:22)
      0x80000700 fld     ft4, 0(a2)             #; ft4  <~~ Doub[0x800031a0]
; init_data (test_sp.c:8)
;  in main (test_sp.c:22)
      0x80000708 csrsi   ssr, 1                 #; 
; init_data (test_sp.c:9)
;  in main (test_sp.c:22)
      0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 3.141, ft3  = 3.141
                                                #; (f:fpu) ft0  <-- 3.141
                                                #; (f:lsu) ft4  <-- 6.282
; init_data (test_sp.c:0)
;  in main (test_sp.c:22)
      0x80000714 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003714
      0x80000718 addi    a2, a2, -1388          #; a2  = 0x80003714, (wrb) a2  <-- 0x800031a8
      0x80000710 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
                                                #; (f:fpu) ft0  <-- 6.282
      0x8000071c fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x800031a8]
      0x80000720 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003720
      0x80000724 addi    a2, a2, -1392          #; a2  = 0x80003720, (wrb) a2  <-- 0x800031b0
                                                #; (f:lsu) ft3  <-- 9.423
      0x8000072c auipc   a2, 0x3                #; (wrb) a2  <-- 0x8000372c
      0x80000728 fld     ft4, 0(a2)             #; ft4  <~~ Doub[0x800031b0]
      0x80000730 addi    a2, a2, -1396          #; a2  = 0x8000372c, (wrb) a2  <-- 0x800031b8
                                                #; (f:lsu) ft4  <-- 12.564
      0x80000738 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003738
      0x8000073c addi    a2, a2, -1400          #; a2  = 0x80003738, (wrb) a2  <-- 0x800031c0
      0x80000734 fld     ft5, 0(a2)             #; ft5  <~~ Doub[0x800031b8]
                                                #; (f:lsu) ft5  <-- 15.705
      0x80000740 fld     ft6, 0(a2)             #; ft6  <~~ Doub[0x800031c0]
; init_data (test_sp.c:9)
;  in main (test_sp.c:22)
      0x80000744 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.423, ft3  = 9.423
      0x80000748 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564, (f:fpu) ft0  <-- 9.423
      0x8000074c fsgnj.d ft0, ft5, ft5          #; ft5  = 15.705, ft5  = 15.705, (f:fpu) ft0  <-- 12.564
                                                #; (f:fpu) ft0  <-- 15.705
                                                #; (f:lsu) ft6  <-- 18.846
; init_data (test_sp.c:0)
;  in main (test_sp.c:22)
      0x80000754 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003754
      0x80000758 addi    a2, a2, -1420          #; a2  = 0x80003754, (wrb) a2  <-- 0x800031c8
      0x80000750 fsgnj.d ft0, ft6, ft6          #; ft6  = 18.846, ft6  = 18.846
                                                #; (f:fpu) ft0  <-- 18.846
      0x8000075c fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x800031c8]
      0x80000760 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003760
      0x80000764 addi    a2, a2, -1424          #; a2  = 0x80003760, (wrb) a2  <-- 0x800031d0
                                                #; (f:lsu) ft3  <-- 21.9870000
      0x8000076c auipc   a2, 0x3                #; (wrb) a2  <-- 0x8000376c
      0x80000768 fld     ft4, 0(a2)             #; ft4  <~~ Doub[0x800031d0]
      0x80000770 addi    a2, a2, -1428          #; a2  = 0x8000376c, (wrb) a2  <-- 0x800031d8
                                                #; (f:lsu) ft4  <-- 25.128
      0x80000778 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003778
      0x8000077c addi    a2, a2, -1432          #; a2  = 0x80003778, (wrb) a2  <-- 0x800031e0
      0x80000774 fld     ft5, 0(a2)             #; ft5  <~~ Doub[0x800031d8]
                                                #; (f:lsu) ft5  <-- 28.269
      0x80000780 fld     ft6, 0(a2)             #; ft6  <~~ Doub[0x800031e0]
; init_data (test_sp.c:9)
;  in main (test_sp.c:22)
      0x80000784 fsgnj.d ft0, ft3, ft3          #; ft3  = 21.9870000, ft3  = 21.9870000
      0x80000788 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128, (f:fpu) ft0  <-- 21.9870000
      0x8000078c fsgnj.d ft0, ft5, ft5          #; ft5  = 28.269, ft5  = 28.269, (f:fpu) ft0  <-- 25.128
                                                #; (f:fpu) ft0  <-- 28.269
                                                #; (f:lsu) ft6  <-- 31.41
; init_data (test_sp.c:0)
;  in main (test_sp.c:22)
      0x80000798 j       pc + 0xcc              #; goto 0x80000864
      0x80000790 fsgnj.d ft0, ft6, ft6          #; ft6  = 31.41, ft6  = 31.41
      0x80000794 csrci   ssr, 1                 #; (f:fpu) ft0  <-- 31.41
; init_data (test_sp.c:8)
;  in main (test_sp.c:23)
      0x80000864 srli    a2, a0, 20             #; a0  = 0x00100050, (wrb) a2  <-- 1
      0x80000868 snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
      0x8000086c lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
      0x80000870 addi    a3, a3, -71            #; a3  = 0x00120000, (wrb) a3  <-- 0x0011ffb9
      0x80000874 sltu    a3, a0, a3             #; a0  = 0x00100050, a3  = 0x0011ffb9, (wrb) a3  <-- 1
      0x80000878 and     a5, a2, a3             #; a2  = 1, a3  = 1, (wrb) a5  <-- 1
      0x8000087c beqz    a5, pc + 408           #; a5  = 1, not taken
; init_data (test_sp.c:0)
;  in main (test_sp.c:23)
      0x80000880 li      a7, 8                  #; (wrb) a7  <-- 8
      0x80000884 li      a4, 9                  #; (wrb) a4  <-- 9
; init_data (test_sp.c:8)
;  in main (test_sp.c:23)
      0x80000888 li      a2, 64                 #; (wrb) a2  <-- 64
      0x8000088c li      a3, 192                #; (wrb) a3  <-- 192
      0x80000890 scfgw   a4, a2                 #; a4  = 9, a2  = 64
      0x80000894 scfgw   a7, a3                 #; a7  = 8, a3  = 192
      0x80000898 li      a2, 32                 #; (wrb) a2  <-- 32
      0x8000089c scfgw   zero, a2               #; a2  = 32, (acc) ra  <-- 0x00c020ab
; init_data (test_sp.c:0)
;  in main (test_sp.c:23)
      0x800008a0 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800038a0
      0x800008a4 addi    a2, a2, -1800          #; a2  = 0x800038a0, (wrb) a2  <-- 0x80003198
      0x800008ac auipc   a2, 0x3                #; (wrb) a2  <-- 0x800038ac
      0x800008a8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x80003198]
      0x800008b0 addi    a2, a2, -1804          #; a2  = 0x800038ac, (wrb) a2  <-- 0x800031a0
                                                #; (f:lsu) ft3  <-- 3.141
; init_data (test_sp.c:8)
;  in main (test_sp.c:23)
      0x800008b8 scfgwi  a0, 896                #; a0  = 0x00100050
; init_data (test_sp.c:0)
;  in main (test_sp.c:23)
      0x800008b4 fld     ft4, 0(a2)             #; ft4  <~~ Doub[0x800031a0]
; init_data (test_sp.c:8)
;  in main (test_sp.c:23)
      0x800008bc csrsi   ssr, 1                 #; 
                                                #; (f:lsu) ft4  <-- 6.282
; init_data (test_sp.c:0)
;  in main (test_sp.c:23)
      0x800008c8 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800038c8
      0x800008c0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.141, ft3  = 3.141
      0x800008cc addi    a2, a2, -1824          #; a2  = 0x800038c8, (wrb) a2  <-- 0x800031a8
      0x800008c4 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282, (f:fpu) ft0  <-- 3.141
                                                #; (f:fpu) ft0  <-- 6.282
      0x800008d4 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800038d4
      0x800008d8 addi    a2, a2, -1828          #; a2  = 0x800038d4, (wrb) a2  <-- 0x800031b0
      0x800008d0 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x800031a8]
      0x800008dc fld     ft4, 0(a2)             #; ft4  <~~ Doub[0x800031b0]
                                                #; (f:lsu) ft3  <-- 9.423
      0x800008e0 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800038e0
      0x800008e4 addi    a2, a2, -1832          #; a2  = 0x800038e0, (wrb) a2  <-- 0x800031b8
                                                #; (f:lsu) ft4  <-- 12.564
      0x800008ec auipc   a2, 0x3                #; (wrb) a2  <-- 0x800038ec
      0x800008e8 fld     ft5, 0(a2)             #; ft5  <~~ Doub[0x800031b8]
      0x800008f0 addi    a2, a2, -1836          #; a2  = 0x800038ec, (wrb) a2  <-- 0x800031c0
                                                #; (f:lsu) ft5  <-- 15.705
      0x800008f4 fld     ft6, 0(a2)             #; ft6  <~~ Doub[0x800031c0]
; init_data (test_sp.c:9)
;  in main (test_sp.c:23)
      0x800008f8 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.423, ft3  = 9.423
      0x800008fc fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564, (f:fpu) ft0  <-- 9.423
                                                #; (f:fpu) ft0  <-- 12.564
                                                #; (f:lsu) ft6  <-- 18.846
; init_data (test_sp.c:0)
;  in main (test_sp.c:23)
      0x80000908 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003908
      0x80000900 fsgnj.d ft0, ft5, ft5          #; ft5  = 15.705, ft5  = 15.705
      0x8000090c addi    a2, a2, -1856          #; a2  = 0x80003908, (wrb) a2  <-- 0x800031c8
      0x80000904 fsgnj.d ft0, ft6, ft6          #; ft6  = 18.846, ft6  = 18.846, (f:fpu) ft0  <-- 15.705
                                                #; (f:fpu) ft0  <-- 18.846
      0x80000914 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003914
      0x80000918 addi    a2, a2, -1860          #; a2  = 0x80003914, (wrb) a2  <-- 0x800031d0
      0x80000910 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x800031c8]
      0x8000091c fld     ft4, 0(a2)             #; ft4  <~~ Doub[0x800031d0]
                                                #; (f:lsu) ft3  <-- 21.9870000
      0x80000920 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003920
      0x80000924 addi    a2, a2, -1864          #; a2  = 0x80003920, (wrb) a2  <-- 0x800031d8
                                                #; (f:lsu) ft4  <-- 25.128
      0x8000092c auipc   a2, 0x3                #; (wrb) a2  <-- 0x8000392c
      0x80000928 fld     ft5, 0(a2)             #; ft5  <~~ Doub[0x800031d8]
      0x80000930 addi    a2, a2, -1868          #; a2  = 0x8000392c, (wrb) a2  <-- 0x800031e0
                                                #; (f:lsu) ft5  <-- 28.269
      0x80000934 fld     ft6, 0(a2)             #; ft6  <~~ Doub[0x800031e0]
; init_data (test_sp.c:9)
;  in main (test_sp.c:23)
      0x80000938 fsgnj.d ft0, ft3, ft3          #; ft3  = 21.9870000, ft3  = 21.9870000
      0x8000093c fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128, (f:fpu) ft0  <-- 21.9870000
                                                #; (f:fpu) ft0  <-- 25.128
                                                #; (f:lsu) ft6  <-- 31.41
      0x80000940 fsgnj.d ft0, ft5, ft5          #; ft5  = 28.269, ft5  = 28.269
; scalarprod (scalarprod.c:6)
;  in main (test_sp.c:25)
      0x8000094c and     a2, a6, a5             #; a6  = 1, a5  = 1, (wrb) a2  <-- 1
      0x80000944 fsgnj.d ft0, ft6, ft6          #; ft6  = 31.41, ft6  = 31.41, (f:fpu) ft0  <-- 28.269
; init_data (test_sp.c:0)
;  in main (test_sp.c:23)
      0x80000948 csrci   ssr, 1                 #; (f:fpu) ft0  <-- 31.41
; scalarprod (scalarprod.c:6)
;  in main (test_sp.c:25)
      0x80000950 beqz    a2, pc + 396           #; a2  = 1, not taken
      0x80000954 li      a2, 64                 #; (wrb) a2  <-- 64
      0x80000958 li      a3, 192                #; (wrb) a3  <-- 192
      0x8000095c scfgw   a4, a2                 #; a4  = 9, a2  = 64
      0x80000960 scfgw   a7, a3                 #; a7  = 8, a3  = 192
      0x80000964 li      a2, 32                 #; (wrb) a2  <-- 32
      0x80000968 scfgw   zero, a2               #; a2  = 32
      0x8000096c scfgwi  a1, 768                #; a1  = 0x00100000
      0x80000970 li      a1, 1                  #; (wrb) a1  <-- 1
      0x80000974 addi    a2, a1, 64             #; a1  = 1, (wrb) a2  <-- 65
      0x80000978 addi    a3, a1, 192            #; a1  = 1, (wrb) a3  <-- 193
      0x8000097c scfgw   a4, a2                 #; a4  = 9, a2  = 65
      0x80000980 scfgw   a7, a3                 #; a7  = 8, a3  = 193
      0x80000984 addi    a1, a1, 32             #; a1  = 1, (wrb) a1  <-- 33
      0x80000988 scfgw   zero, a1               #; a1  = 33
      0x8000098c scfgwi  a0, 769                #; a0  = 0x00100050
      0x80000990 csrsi   ssr, 1                 #; 
; scalarprod (scalarprod.c:7)
;  in main (test_sp.c:25)
      0x80000994 fsgnj.d ft3, ft0, ft0          #; ft0  = 3.141, ft0  = 3.141
      0x80000998 fsgnj.d ft4, ft1, ft1          #; ft1  = 3.141, ft1  = 3.141, (f:fpu) ft3  <-- 3.141
      0x8000099c fsgnj.d ft5, ft0, ft0          #; ft0  = 6.282, ft0  = 6.282, (f:fpu) ft4  <-- 3.141
                                                #; (f:fpu) ft5  <-- 6.282
      0x800009a0 fsgnj.d ft6, ft1, ft1          #; ft1  = 6.282, ft1  = 6.282
      0x800009a4 fsgnj.d ft7, ft0, ft0          #; ft0  = 9.423, ft0  = 9.423, (f:fpu) ft6  <-- 6.282
      0x800009a8 fsgnj.d fa0, ft1, ft1          #; ft1  = 9.423, ft1  = 9.423, (f:fpu) ft7  <-- 9.423
      0x800009ac fsgnj.d fa1, ft0, ft0          #; ft0  = 12.564, ft0  = 12.564, (f:fpu) fa0  <-- 9.423
                                                #; (f:fpu) fa1  <-- 12.564
      0x800009b0 fsgnj.d fa2, ft1, ft1          #; ft1  = 12.564, ft1  = 12.564
      0x800009b4 fsgnj.d fa3, ft0, ft0          #; ft0  = 15.705, ft0  = 15.705, (f:fpu) fa2  <-- 12.564
      0x800009b8 fsgnj.d fa4, ft1, ft1          #; ft1  = 15.705, ft1  = 15.705, (f:fpu) fa3  <-- 15.705
      0x800009bc fsgnj.d fa5, ft0, ft0          #; ft0  = 18.846, ft0  = 18.846, (f:fpu) fa4  <-- 15.705
                                                #; (f:fpu) fa5  <-- 18.846
      0x800009c0 fsgnj.d fa6, ft1, ft1          #; ft1  = 18.846, ft1  = 18.846
      0x800009c4 fsgnj.d fa7, ft0, ft0          #; ft0  = 21.9870000, ft0  = 21.9870000, (f:fpu) fa6  <-- 18.846
      0x800009c8 fsgnj.d ft8, ft1, ft1          #; ft1  = 21.9870000, ft1  = 21.9870000, (f:fpu) fa7  <-- 21.9870000
      0x800009cc fsgnj.d ft9, ft0, ft0          #; ft0  = 25.128, ft0  = 25.128, (f:fpu) ft8  <-- 21.9870000
                                                #; (f:fpu) ft9  <-- 25.128
      0x800009d0 fsgnj.d ft10, ft1, ft1         #; ft1  = 25.128, ft1  = 25.128
      0x800009d4 fsgnj.d ft11, ft0, ft0         #; ft0  = 28.269, ft0  = 28.269, (f:fpu) ft10 <-- 25.128
      0x800009d8 fsgnj.d fs0, ft1, ft1          #; ft1  = 28.269, ft1  = 28.269, (f:fpu) ft11 <-- 28.269
      0x800009dc fsgnj.d fs1, ft0, ft0          #; ft0  = 31.41, ft0  = 31.41, (f:fpu) fs0  <-- 28.269
                                                #; (f:fpu) fs1  <-- 31.41
      0x800009e0 fsgnj.d fs2, ft1, ft1          #; ft1  = 31.41, ft1  = 31.41
      0x800009e4 csrci   ssr, 1                 #; (f:fpu) fs2  <-- 31.41
      0x800009e8 fmul.d  ft0, ft4, ft3          #; ft4  = 3.141, ft3  = 3.141
                                                #; (f:fpu) ft0  <-- 9.865881
      0x800009ec fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 6.282, ft5  = 6.282, ft0  = 9.865881
                                                #; (f:fpu) ft0  <-- 49.3294050
      0x800009f0 fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 9.423, ft7  = 9.423, ft0  = 49.3294050
                                                #; (f:fpu) ft0  <-- 138.1223340
      0x800009f4 fmadd.d ft0, fa2, fa1, ft0     #; fa2  = 12.564, fa1  = 12.564, ft0  = 138.1223340
                                                #; (f:fpu) ft0  <-- 295.9764300
      0x800009f8 fmadd.d ft0, fa4, fa3, ft0     #; fa4  = 15.705, fa3  = 15.705, ft0  = 295.9764300
                                                #; (f:fpu) ft0  <-- 542.6234550
      0x800009fc fmadd.d ft0, fa6, fa5, ft0     #; fa6  = 18.846, fa5  = 18.846, ft0  = 542.6234550
                                                #; (f:fpu) ft0  <-- 897.7951710
      0x80000a00 fmadd.d ft0, ft8, fa7, ft0     #; ft8  = 21.9870000, fa7  = 21.9870000, ft0  = 897.7951710
                                                #; (f:fpu) ft0  <-- 1381.2233400
      0x80000a04 fmadd.d ft0, ft10, ft9, ft0    #; ft10 = 25.128, ft9  = 25.128, ft0  = 1381.2233400
; scalarprod (scalarprod.c:0)
;  in main (test_sp.c:25)
      0x80000a10 j       pc + 0x144             #; goto 0x80000b54
                                                #; (f:fpu) ft0  <-- 2012.6397240
; scalarprod (scalarprod.c:7)
;  in main (test_sp.c:25)
      0x80000a08 fmadd.d ft0, fs0, ft11, ft0    #; fs0  = 28.269, ft11 = 28.269, ft0  = 2012.6397240
                                                #; (f:fpu) ft0  <-- 2811.7760850
      0x80000a0c fmadd.d ft0, fs2, fs1, ft0     #; fs2  = 31.41, fs1  = 31.41, ft0  = 2811.7760850
                                                #; (f:fpu) ft0  <-- 3798.3641850
; main (scalarprod.c:0)
      0x80000b54 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002b54
      0x80000b58 addi    a0, a0, 1684           #; a0  = 0x80002b54, (wrb) a0  <-- 0x800031e8
      0x80000b5c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800031e8]
                                                #; (f:lsu) ft1  <-- -3798.3641850
; main (test_sp.c:30)
      0x80000b60 fadd.d  ft0, ft0, ft1          #; ft0  = 3798.3641850, ft1  = -3798.3641850
; main (test_sp.c:33)
      0x80000b6c lw      a2, 8(sp)              #; sp  = 0x0011ff30, a2  <~~ Word[0x0011ff38]
                                                #; (f:fpu) ft0  <-- 0.0
                                                #; (lsu) a2  <-- 0
      0x80000b64 fsgnjx.d fs0, ft0, ft0         #; ft0  = 0.0, ft0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x80000b68 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff38]
      0x80000b70 lw      a3, 12(sp)             #; sp  = 0x0011ff30, a3  <~~ Word[0x0011ff3c]
      0x80000b74 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002b74
      0x80000b78 addi    a0, a0, 881            #; a0  = 0x80002b74, (wrb) a0  <-- 0x80002ee5
      0x80000b7c auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000b7c
                                                #; (lsu) a3  <-- 0
      0x80000b80 jalr    ra, ra, 48             #; ra  = 0x80000b7c, (wrb) ra  <-- 0x80000b84, goto 0x80000bac
; printf_ (printf.c:863)
      0x80000bac addi    sp, sp, -48            #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff00
      0x80000bb0 sw      ra, 12(sp)             #; sp  = 0x0011ff00, 0x80000b84 ~~> Word[0x0011ff0c]
      0x80000bb4 mv      t0, a0                 #; a0  = 0x80002ee5, (wrb) t0  <-- 0x80002ee5
      0x80000bb8 sw      a7, 44(sp)             #; sp  = 0x0011ff00, 8 ~~> Word[0x0011ff2c]
      0x80000bbc sw      a6, 40(sp)             #; sp  = 0x0011ff00, 1 ~~> Word[0x0011ff28]
      0x80000bc0 sw      a5, 36(sp)             #; sp  = 0x0011ff00, 1 ~~> Word[0x0011ff24]
      0x80000bc4 sw      a4, 32(sp)             #; sp  = 0x0011ff00, 9 ~~> Word[0x0011ff20]
      0x80000bc8 sw      a3, 28(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff1c]
      0x80000bcc sw      a2, 24(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff18]
      0x80000bd0 sw      a1, 20(sp)             #; sp  = 0x0011ff00, 33 ~~> Word[0x0011ff14]
      0x80000bd4 addi    a0, sp, 20             #; sp  = 0x0011ff00, (wrb) a0  <-- 0x0011ff14
; printf_ (printf.c:865)
      0x80000bd8 sw      a0, 8(sp)              #; sp  = 0x0011ff00, 0x0011ff14 ~~> Word[0x0011ff08]
; printf_ (printf.c:867)
      0x80000bdc auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001bdc
      0x80000be0 addi    a0, a0, -988           #; a0  = 0x80001bdc, (wrb) a0  <-- 0x80001800
      0x80000be4 addi    a1, sp, 7              #; sp  = 0x0011ff00, (wrb) a1  <-- 0x0011ff07
      0x80000be8 li      a2, -1                 #; (wrb) a2  <-- -1
      0x80000bec addi    a4, sp, 20             #; sp  = 0x0011ff00, (wrb) a4  <-- 0x0011ff14
      0x80000bf0 mv      a3, t0                 #; t0  = 0x80002ee5, (wrb) a3  <-- 0x80002ee5
      0x80000bf4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000bf4
      0x80000bf8 jalr    ra, ra, 20             #; ra  = 0x80000bf4, (wrb) ra  <-- 0x80000bfc, goto 0x80000c08
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000c08 addi    sp, sp, -112           #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011fe90
      0x80000c0c sw      ra, 108(sp)            #; sp  = 0x0011fe90, 0x80000bfc ~~> Word[0x0011fefc]
      0x80000c10 sw      s0, 104(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fef8]
      0x80000c14 sw      s1, 100(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fef4]
      0x80000c18 sw      s2, 96(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fef0]
      0x80000c1c sw      s3, 92(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011feec]
      0x80000c20 sw      s4, 88(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fee8]
      0x80000c24 sw      s5, 84(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fee4]
      0x80000c28 sw      s6, 80(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fee0]
      0x80000c2c sw      s7, 76(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fedc]
      0x80000c30 sw      s8, 72(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed8]
      0x80000c34 sw      s9, 68(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed4]
      0x80000c38 sw      s10, 64(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed0]
      0x80000c3c sw      s11, 60(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fecc]
      0x80000c40 mv      s3, a4                 #; a4  = 0x0011ff14, (wrb) s3  <-- 0x0011ff14
      0x80000c44 mv      s0, a3                 #; a3  = 0x80002ee5, (wrb) s0  <-- 0x80002ee5
      0x80000c48 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x80000c4c mv      s4, a1                 #; a1  = 0x0011ff07, (wrb) s4  <-- 0x0011ff07
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x80000c50 beqz    a1, pc + 12            #; a1  = 0x0011ff07, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c54 mv      s2, a0                 #; a0  = 0x80001800, (wrb) s2  <-- 0x80001800
      0x80000c58 j       pc + 0xc               #; goto 0x80000c64
      0x80000c64 li      s8, 0                  #; (wrb) s8  <-- 0
      0x80000c68 li      s6, 37                 #; (wrb) s6  <-- 37
      0x80000c6c li      s11, 16                #; (wrb) s11 <-- 16
      0x80000c70 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000c74 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000c78 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000c7c sw      a0, 24(sp)             #; sp  = 0x0011fe90, 2048 ~~> Word[0x0011fea8]
      0x80000c80 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000c84 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000c88 sw      a0, 16(sp)             #; sp  = 0x0011fe90, 65535 ~~> Word[0x0011fea0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c8c addi    s10, s0, 2             #; s0  = 0x80002ee5, (wrb) s10 <-- 0x80002ee7
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c90 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000c94 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c98 lbu     a0, 0(s0)              #; s0  = 0x80002ee5, a0  <~~ Byte[0x80002ee5]
                                                #; (lsu) a0  <-- 101
      0x80000c9c beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ca4 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000ca8 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000cac mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000cb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000cb4 jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x80000cb8, goto 0x80001800
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 0
      0x80001820 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 1 ~~> Word[0x800032a4]
      0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 0, (wrb) a4  <-- 0x800032a4
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032a4, 101 ~~> Byte[0x800032ec]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 1
      0x80001834 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x80001838 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x80001840 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000cb8 addi    s0, s0, 1              #; s0  = 0x80002ee5, (wrb) s0  <-- 0x80002ee6
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000cbc addi    s10, s10, 1            #; s10 = 0x80002ee7, (wrb) s10 <-- 0x80002ee8
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cc0 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000cc4 lbu     a0, 0(s0)              #; s0  = 0x80002ee6, a0  <~~ Byte[0x80002ee6]
                                                #; (lsu) a0  <-- 114
      0x80000cc8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ca0
      0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ca4 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000ca8 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000cac mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000cb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000cb4 jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x80000cb8, goto 0x80001800
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 1
      0x80001820 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 2 ~~> Word[0x800032a4]
      0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 1, (wrb) a4  <-- 0x800032a5
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032a5, 114 ~~> Byte[0x800032ed]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 2
      0x80001834 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x80001838 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001840 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000cb8 addi    s0, s0, 1              #; s0  = 0x80002ee6, (wrb) s0  <-- 0x80002ee7
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000cbc addi    s10, s10, 1            #; s10 = 0x80002ee8, (wrb) s10 <-- 0x80002ee9
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cc0 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000cc4 lbu     a0, 0(s0)              #; s0  = 0x80002ee7, a0  <~~ Byte[0x80002ee7]
                                                #; (lsu) a0  <-- 114
      0x80000cc8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ca0
      0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ca4 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000ca8 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000cac mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000cb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000cb4 jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x80000cb8, goto 0x80001800
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 2
      0x80001820 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 3 ~~> Word[0x800032a4]
      0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 2, (wrb) a4  <-- 0x800032a6
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032a6, 114 ~~> Byte[0x800032ee]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 3
      0x80001834 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x80001838 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001840 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000cb8 addi    s0, s0, 1              #; s0  = 0x80002ee7, (wrb) s0  <-- 0x80002ee8
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000cbc addi    s10, s10, 1            #; s10 = 0x80002ee9, (wrb) s10 <-- 0x80002eea
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cc0 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000cc4 lbu     a0, 0(s0)              #; s0  = 0x80002ee8, a0  <~~ Byte[0x80002ee8]
                                                #; (lsu) a0  <-- 111
      0x80000cc8 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000ca0
      0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ca4 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000ca8 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000cac mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000cb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000cb4 jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x80000cb8, goto 0x80001800
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 3
      0x80001820 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 4 ~~> Word[0x800032a4]
      0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 3, (wrb) a4  <-- 0x800032a7
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032a7, 111 ~~> Byte[0x800032ef]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 4
      0x80001834 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x80001838 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x80001840 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000cb8 addi    s0, s0, 1              #; s0  = 0x80002ee8, (wrb) s0  <-- 0x80002ee9
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000cbc addi    s10, s10, 1            #; s10 = 0x80002eea, (wrb) s10 <-- 0x80002eeb
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cc0 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000cc4 lbu     a0, 0(s0)              #; s0  = 0x80002ee9, a0  <~~ Byte[0x80002ee9]
                                                #; (lsu) a0  <-- 114
      0x80000cc8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ca0
      0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ca4 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000ca8 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000cac mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000cb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000cb4 jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x80000cb8, goto 0x80001800
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 4
      0x80001820 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 5 ~~> Word[0x800032a4]
      0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 4, (wrb) a4  <-- 0x800032a8
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032a8, 114 ~~> Byte[0x800032f0]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 5
      0x80001834 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x80001838 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001840 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000cb8 addi    s0, s0, 1              #; s0  = 0x80002ee9, (wrb) s0  <-- 0x80002eea
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000cbc addi    s10, s10, 1            #; s10 = 0x80002eeb, (wrb) s10 <-- 0x80002eec
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cc0 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000cc4 lbu     a0, 0(s0)              #; s0  = 0x80002eea, a0  <~~ Byte[0x80002eea]
                                                #; (lsu) a0  <-- 32
      0x80000cc8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000ca0
      0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ca4 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000ca8 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000cac mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000cb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000cb4 jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x80000cb8, goto 0x80001800
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 5
      0x80001820 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 6 ~~> Word[0x800032a4]
      0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 5, (wrb) a4  <-- 0x800032a9
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032a9, 32 ~~> Byte[0x800032f1]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 6
      0x80001834 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x80001838 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001840 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000cb8 addi    s0, s0, 1              #; s0  = 0x80002eea, (wrb) s0  <-- 0x80002eeb
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000cbc addi    s10, s10, 1            #; s10 = 0x80002eec, (wrb) s10 <-- 0x80002eed
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cc0 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000cc4 lbu     a0, 0(s0)              #; s0  = 0x80002eeb, a0  <~~ Byte[0x80002eeb]
                                                #; (lsu) a0  <-- 61
      0x80000cc8 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000ca0
      0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ca4 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000ca8 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000cac mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000cb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000cb4 jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x80000cb8, goto 0x80001800
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 6
      0x80001820 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 7 ~~> Word[0x800032a4]
      0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 6, (wrb) a4  <-- 0x800032aa
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032aa, 61 ~~> Byte[0x800032f2]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 7
      0x80001834 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x80001838 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x80001840 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000cb8 addi    s0, s0, 1              #; s0  = 0x80002eeb, (wrb) s0  <-- 0x80002eec
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000cbc addi    s10, s10, 1            #; s10 = 0x80002eed, (wrb) s10 <-- 0x80002eee
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cc0 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000cc4 lbu     a0, 0(s0)              #; s0  = 0x80002eec, a0  <~~ Byte[0x80002eec]
                                                #; (lsu) a0  <-- 32
      0x80000cc8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000ca0
      0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ca4 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000ca8 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000cac mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000cb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000cb4 jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x80000cb8, goto 0x80001800
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 7
      0x80001820 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 8 ~~> Word[0x800032a4]
      0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 7, (wrb) a4  <-- 0x800032ab
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032ab, 32 ~~> Byte[0x800032f3]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 8
      0x80001834 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x80001838 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001840 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000cb8 addi    s0, s0, 1              #; s0  = 0x80002eec, (wrb) s0  <-- 0x80002eed
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000cbc addi    s10, s10, 1            #; s10 = 0x80002eee, (wrb) s10 <-- 0x80002eef
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cc0 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000cc4 lbu     a0, 0(s0)              #; s0  = 0x80002eed, a0  <~~ Byte[0x80002eed]
                                                #; (lsu) a0  <-- 37
      0x80000cc8 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000ca0
      0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000cd0
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000cd0 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cd4 j       pc + 0x10              #; goto 0x80000ce4
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000ce4 lbu     a0, -1(s10)            #; s10 = 0x80002eef, a0  <~~ Byte[0x80002eee]
                                                #; (lsu) a0  <-- 102
      0x80000ce8 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000cec bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000d24
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000d24 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000d28 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000d2c addi    a1, s10, -1            #; s10 = 0x80002eef, (wrb) a1  <-- 0x80002eee
      0x80000d30 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000d34 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000db0
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000db0 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000db4 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000e04
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e04 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000e08 mv      s10, a1                #; a1  = 0x80002eee, (wrb) s10 <-- 0x80002eee
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000e0c beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e10 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000e14 j       pc + 0xc               #; goto 0x80000e20
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000e20 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000e24 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000e28 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000e2c or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000e30 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000e34 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000e98
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000e98 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000e9c li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000ea0 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ea4 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000ea8 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002ea8
      0x80000eac addi    a2, a2, 188            #; a2  = 0x80002ea8, (wrb) a2  <-- 0x80002f64
      0x80000eb0 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002f64, (wrb) a1  <-- 0x80003068
      0x80000eb4 lw      a2, 0(a1)              #; a1  = 0x80003068, a2  <~~ Word[0x80003068]
      0x80000eb8 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000ebc li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000ef0
      0x80000ec0 jr      a2                     #; a2  = 0x80000ef0, goto 0x80000ef0
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80000ef0 li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000ef4 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000efc
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000efc addi    a0, s3, 7              #; s3  = 0x0011ff14, (wrb) a0  <-- 0x0011ff1b
      0x80000f00 andi    a0, a0, -8             #; a0  = 0x0011ff1b, (wrb) a0  <-- 0x0011ff18
      0x80000f08 addi    s3, a0, 8              #; a0  = 0x0011ff18, (wrb) s3  <-- 0x0011ff20
      0x80000f0c mv      a0, s2                 #; s2  = 0x80001800, (wrb) a0  <-- 0x80001800
      0x80000f04 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff18]
                                                #; (f:lsu) fa0  <-- 0.0
      0x80000f10 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000f14 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000f18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000f1c mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000f20 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000f24 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000f28 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001f28
      0x80000f2c jalr    ra, ra, -1656          #; ra  = 0x80001f28, (wrb) ra  <-- 0x80000f30, goto 0x800018b0
; _ftoa (printf.c:340)
      0x800018b0 addi    sp, sp, -112           #; sp  = 0x0011fe90, (wrb) sp  <-- 0x0011fe20
      0x800018b4 sw      ra, 108(sp)            #; sp  = 0x0011fe20, 0x80000f30 ~~> Word[0x0011fe8c]
      0x800018b8 sw      s0, 104(sp)            #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe88]
      0x800018bc sw      s1, 100(sp)            #; sp  = 0x0011fe20, 8 ~~> Word[0x0011fe84]
      0x800018c0 sw      s2, 96(sp)             #; sp  = 0x0011fe20, 0x80001800 ~~> Word[0x0011fe80]
      0x800018c4 sw      s3, 92(sp)             #; sp  = 0x0011fe20, 0x0011ff20 ~~> Word[0x0011fe7c]
      0x800018c8 sw      s4, 88(sp)             #; sp  = 0x0011fe20, 0x0011ff07 ~~> Word[0x0011fe78]
      0x800018cc sw      s5, 84(sp)             #; sp  = 0x0011fe20, -1 ~~> Word[0x0011fe74]
      0x800018d0 sw      s6, 80(sp)             #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe70]
      0x800018d4 sw      s7, 76(sp)             #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe6c]
      0x800018d8 sw      s8, 72(sp)             #; sp  = 0x0011fe20, 16 ~~> Word[0x0011fe68]
      0x800018dc sw      s9, 68(sp)             #; sp  = 0x0011fe20, 8 ~~> Word[0x0011fe64]
      0x800018e0 sw      s10, 64(sp)            #; sp  = 0x0011fe20, 0x80002eee ~~> Word[0x0011fe60]
      0x800018e4 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe58]
      0x800018e8 fsd     fs1, 48(sp)            #; 31.41 ~~> Doub[0x0011fe50]
      0x800018ec fsd     fs2, 40(sp)            #; 31.41 ~~> Doub[0x0011fe48]
      0x800018f0 auipc   s1, 0x2                #; (wrb) s1  <-- 0x800038f0
      0x800018f4 addi    s1, s1, -1784          #; s1  = 0x800038f0, (wrb) s1  <-- 0x800031f8
      0x800018f8 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x800031f8]
; _ftoa (printf.c:351)
      0x80001900 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
; _ftoa (printf.c:0)
      0x80001904 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x80001908 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x800018fc fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
      0x8000190c mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x80001910 mv      s6, a1                 #; a1  = 0x0011ff07, (wrb) s6  <-- 0x0011ff07
      0x80001914 mv      s7, a0                 #; a0  = 0x80001800, (wrb) s7  <-- 0x80001800
; _ftoa (printf.c:351)
      0x80001918 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001a08
; _ftoa (printf.c:0)
      0x80001a0c auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002a0c
      0x80001a08 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x80001a10 addi    a0, a0, 2036           #; a0  = 0x80002a0c, (wrb) a0  <-- 0x80003200
      0x80001a14 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003200]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x80001a18 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x80001a1c bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001a38
; _ftoa (printf.c:0)
      0x80001a38 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002a38
      0x80001a3c addi    a0, a0, 2000           #; a0  = 0x80002a38, (wrb) a0  <-- 0x80003208
      0x80001a44 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002a44
      0x80001a48 addi    a0, a0, 1996           #; a0  = 0x80002a44, (wrb) a0  <-- 0x80003210
      0x80001a40 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003208]
      0x80001a4c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003210]
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
; _ftoa (printf.c:358)
      0x80001a50 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
                                                #; (acc) a0  <-- 0x00b57533
      0x80001a54 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
                                                #; (acc) a0  <-- 0x00b57533
      0x80001a58 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80001a5c bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001b58
; _ftoa (printf.c:374)
      0x80001b58 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x80001b5c li      s8, 6                  #; (wrb) s8  <-- 6
      0x80001b60 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001b68
; _ftoa (printf.c:0)
      0x80001b68 li      a0, 10                 #; (wrb) a0  <-- 10
      0x80001b6c fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs2  <-- 0.0
; _ftoa (printf.c:378)
      0x80001b70 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001ba8
; _ftoa (printf.c:0)
      0x80001ba8 li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x80001bac slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x80001bb0 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002bb0
      0x80001bb4 addi    a1, a1, 1288           #; a1  = 0x80002bb0, (wrb) a1  <-- 0x800030b8
      0x80001bb8 add     a0, a0, a1             #; a0  = 48, a1  = 0x800030b8, (wrb) a0  <-- 0x800030e8
      0x80001bbc fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800030e8]
; _ftoa (printf.c:383)
      0x80001bc0 fcvt.w.d s1, fs2               #; fs2  = 0.0
                                                #; (f:lsu) ft1  <-- 1000000.0000000
; _ftoa (printf.c:384)
      0x80001bc4 fcvt.d.w ft0, s1               #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80001bc8 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80001bcc fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
; _ftoa (printf.c:0)
      0x80001bd0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002bd0
      0x80001bd4 addi    a0, a0, 1608           #; a0  = 0x80002bd0, (wrb) a0  <-- 0x80003218
                                                #; (f:fpu) ft2  <-- 0.0
      0x80001bd8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003218]
; _ftoa (printf.c:385)
      0x80001bdc fcvt.wu.d a0, ft2              #; ft2  = 0.0
; _ftoa (printf.c:386)
      0x80001be0 fcvt.d.wu ft3, a0              #; ac1  = 0, (f:lsu) ft0  <-- 0.5
                                                #; (f:fpu) ft3  <-- 0.0
      0x80001be4 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:388)
      0x80001be8 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x80001bec bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001c0c
; _ftoa (printf.c:396)
      0x80001c0c flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x80001c10 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001c24
; _ftoa (printf.c:403)
      0x80001c28 beqz    s8, pc + 216           #; s8  = 6, not taken
      0x80001c24 fcvt.d.w fs1, zero             #; ac1  = 0
; _ftoa (printf.c:0)
      0x80001c2c li      a2, 0                  #; (wrb) a2  <-- 0
                                                #; (f:fpu) fs1  <-- 0.0
      0x80001c30 addi    a1, sp, 8              #; sp  = 0x0011fe20, (wrb) a1  <-- 0x0011fe28
; _ftoa (printf.c:414)
      0x80001c34 add     t1, a1, s0             #; a1  = 0x0011fe28, s0  = 0, (wrb) t1  <-- 0x0011fe28
      0x80001c38 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001c3c sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x80001c40 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80001c44 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80001c48 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001c4c li      a7, 9                  #; (wrb) a7  <-- 9
      0x80001c50 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80001c54 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x80001c58 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001c5c srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001c60 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001c64 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001c68 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x80001c6c add     a5, t1, a2             #; t1  = 0x0011fe28, a2  = 0, (wrb) a5  <-- 0x0011fe28
      0x80001c70 sb      a3, 0(a5)              #; a5  = 0x0011fe28, 48 ~~> Byte[0x0011fe28]
; _ftoa (printf.c:417)
      0x80001c74 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80001c78 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x80001c7c add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x80001c80 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80001c84 li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001c88 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x80001c8c xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x80001c90 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x80001c94 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x80001c98 bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x80001c9c addi    a0, sp, 8              #; sp  = 0x0011fe20, (wrb) a0  <-- 0x0011fe28
; _ftoa (printf.c:422)
      0x80001ca0 add     a0, a0, s0             #; a0  = 0x0011fe28, s0  = 0, (wrb) a0  <-- 0x0011fe28
      0x80001ca4 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x80001ca8 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x80001cac add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x80001cb0 li      a1, 31                 #; (wrb) a1  <-- 31
      0x80001cb4 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x80001cb8 add     a0, a0, a2             #; a0  = 0x0011fe28, a2  = 1, (wrb) a0  <-- 0x0011fe29
      0x80001cbc mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x80001cc0 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001cc8
      0x80001cc8 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x80001ccc li      a1, 48                 #; (wrb) a1  <-- 48
      0x80001cd0 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000cd0
      0x80001cd4 jalr    ra, ra, -1912          #; ra  = 0x80000cd0, (wrb) ra  <-- 0x80001cd8, goto 0x80000558
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
      0x800005ec ret                            #; ra  = 0x80001cd8, goto 0x80001cd8
; _ftoa (printf.c:0)
      0x80001cd8 li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x80001cdc add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x80001ce0 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80001ce4 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x80001ce8 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80001cec and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001cf0 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001cf4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001cdc
      0x80001cdc add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x80001ce0 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80001ce4 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x80001ce8 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80001cec and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001cf0 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001cf4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001cdc
      0x80001cdc add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x80001ce0 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80001ce4 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x80001ce8 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80001cec and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001cf0 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001cf4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001cdc
      0x80001cdc add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x80001ce0 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80001ce4 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x80001ce8 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80001cec and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001cf0 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001cf4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001cdc
      0x80001cdc add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x80001ce0 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80001ce4 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x80001ce8 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80001cec and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001cf0 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001cf4 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001cf8 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x80001cfc j       pc + 0x28              #; goto 0x80001d24
      0x80001d24 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001d28 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001d2c addi    a1, sp, 8              #; sp  = 0x0011fe20, (wrb) a1  <-- 0x0011fe28
; _ftoa (printf.c:427)
      0x80001d30 add     a0, a1, a0             #; a1  = 0x0011fe28, a0  = 6, (wrb) a0  <-- 0x0011fe2e
      0x80001d34 li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001d38 sb      a1, 0(a0)              #; a0  = 0x0011fe2e, 46 ~~> Byte[0x0011fe2e]
      0x80001d3c j       pc + 0x8               #; goto 0x80001d44
; _ftoa (printf.c:0)
      0x80001d44 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001d48 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001d4c bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001d50 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001d58 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001d54 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
      0x80001d5c addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001d60 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001d64 addi    a3, sp, 8              #; sp  = 0x0011fe20, (wrb) a3  <-- 0x0011fe28
      0x80001d68 li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001d6c beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001d70 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001d74 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001d78 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001d7c add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001d80 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001d84 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001d88 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80001d8c addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001d90 add     s0, a3, s0             #; a3  = 0x0011fe28, s0  = 7, (wrb) s0  <-- 0x0011fe2f
; _ftoa (printf.c:434)
      0x80001d94 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001d98 sb      a5, 0(s0)              #; s0  = 0x0011fe2f, 48 ~~> Byte[0x0011fe2f]
; _ftoa (printf.c:0)
      0x80001d9c mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001da0 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001da4 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80001da8 j       pc + 0x8               #; goto 0x80001db0
; _ftoa (printf.c:440)
      0x80001db0 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001db4 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001db8 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001e24
; _ftoa (printf.c:0)
      0x80001e24 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001e28 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80001e2c beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001e44
; _ftoa (printf.c:453)
      0x80001e44 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001e48 bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001e4c andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001e50 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001e7c
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001e7c snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001e80 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80001e84 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001e88 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001e8c andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001e90 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001e94 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001ec0
; _ftoa (printf.c:0)
      0x80001ec0 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ec4 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x80001ec8 addi    s9, sp, 7              #; sp  = 0x0011fe20, (wrb) s9  <-- 0x0011fe27
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001ecc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 8, (wrb) a0  <-- 0x0011fe2f
      0x80001ed0 lbu     a0, 0(a0)              #; a0  = 0x0011fe2f, a0  <~~ Byte[0x0011fe2f]
      0x80001ed4 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x80001ed8 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
      0x80001edc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
                                                #; (lsu) a0  <-- 48
      0x80001ee0 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80001ee4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001ee8 jalr    s7                     #; s7  = 0x80001800, (wrb) ra  <-- 0x80001eec, goto 0x80001800
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 8
      0x80001820 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 9 ~~> Word[0x800032a4]
      0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 8, (wrb) a4  <-- 0x800032ac
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032ac, 48 ~~> Byte[0x800032f4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 9
      0x80001834 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x80001838 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001840 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80001eec, goto 0x80001eec
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001eec mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x80001ef0 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ef4 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001ecc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001ecc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 7, (wrb) a0  <-- 0x0011fe2e
      0x80001ed0 lbu     a0, 0(a0)              #; a0  = 0x0011fe2e, a0  <~~ Byte[0x0011fe2e]
      0x80001ed4 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001ed8 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80001edc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80001ee0 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001ee4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001ee8 jalr    s7                     #; s7  = 0x80001800, (wrb) ra  <-- 0x80001eec, goto 0x80001800
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 9
      0x80001820 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 10 ~~> Word[0x800032a4]
      0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 9, (wrb) a4  <-- 0x800032ad
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032ad, 46 ~~> Byte[0x800032f5]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 10
      0x80001834 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x80001838 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x80001840 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80001eec, goto 0x80001eec
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001eec mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001ef0 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ef4 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001ecc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001ecc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 6, (wrb) a0  <-- 0x0011fe2d
      0x80001ed0 lbu     a0, 0(a0)              #; a0  = 0x0011fe2d, a0  <~~ Byte[0x0011fe2d]
      0x80001ed4 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001ed8 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001edc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80001ee0 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001ee4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001ee8 jalr    s7                     #; s7  = 0x80001800, (wrb) ra  <-- 0x80001eec, goto 0x80001800
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 10
      0x80001820 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 11 ~~> Word[0x800032a4]
      0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 10, (wrb) a4  <-- 0x800032ae
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032ae, 48 ~~> Byte[0x800032f6]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 11
      0x80001834 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x80001838 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001840 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80001eec, goto 0x80001eec
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001eec mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001ef0 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ef4 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001ecc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001ecc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 5, (wrb) a0  <-- 0x0011fe2c
      0x80001ed0 lbu     a0, 0(a0)              #; a0  = 0x0011fe2c, a0  <~~ Byte[0x0011fe2c]
      0x80001ed4 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001ed8 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001edc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80001ee0 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001ee4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001ee8 jalr    s7                     #; s7  = 0x80001800, (wrb) ra  <-- 0x80001eec, goto 0x80001800
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 11
      0x80001820 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 12 ~~> Word[0x800032a4]
      0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 11, (wrb) a4  <-- 0x800032af
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032af, 48 ~~> Byte[0x800032f7]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 12
      0x80001834 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x80001838 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001840 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80001eec, goto 0x80001eec
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001eec mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001ef0 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ef4 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001ecc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001ecc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 4, (wrb) a0  <-- 0x0011fe2b
      0x80001ed0 lbu     a0, 0(a0)              #; a0  = 0x0011fe2b, a0  <~~ Byte[0x0011fe2b]
      0x80001ed4 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001ed8 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001edc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80001ee0 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001ee4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001ee8 jalr    s7                     #; s7  = 0x80001800, (wrb) ra  <-- 0x80001eec, goto 0x80001800
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 12
      0x80001820 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 13 ~~> Word[0x800032a4]
      0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 12, (wrb) a4  <-- 0x800032b0
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032b0, 48 ~~> Byte[0x800032f8]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 13
      0x80001834 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x80001838 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001840 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80001eec, goto 0x80001eec
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001eec mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001ef0 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ef4 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001ecc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001ecc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 3, (wrb) a0  <-- 0x0011fe2a
      0x80001ed0 lbu     a0, 0(a0)              #; a0  = 0x0011fe2a, a0  <~~ Byte[0x0011fe2a]
      0x80001ed4 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001ed8 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001edc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80001ee0 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001ee4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001ee8 jalr    s7                     #; s7  = 0x80001800, (wrb) ra  <-- 0x80001eec, goto 0x80001800
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 13
      0x80001820 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 14 ~~> Word[0x800032a4]
      0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 13, (wrb) a4  <-- 0x800032b1
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032b1, 48 ~~> Byte[0x800032f9]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 14
      0x80001834 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x80001838 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001840 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80001eec, goto 0x80001eec
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001eec mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001ef0 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ef4 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001ecc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001ecc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 2, (wrb) a0  <-- 0x0011fe29
      0x80001ed0 lbu     a0, 0(a0)              #; a0  = 0x0011fe29, a0  <~~ Byte[0x0011fe29]
      0x80001ed4 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001ed8 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001edc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80001ee0 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001ee4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001ee8 jalr    s7                     #; s7  = 0x80001800, (wrb) ra  <-- 0x80001eec, goto 0x80001800
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 14
      0x80001820 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 15 ~~> Word[0x800032a4]
      0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 14, (wrb) a4  <-- 0x800032b2
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032b2, 48 ~~> Byte[0x800032fa]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 15
      0x80001834 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x80001838 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001840 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80001eec, goto 0x80001eec
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001eec mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001ef0 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ef4 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001ecc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001ecc add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 1, (wrb) a0  <-- 0x0011fe28
      0x80001ed0 lbu     a0, 0(a0)              #; a0  = 0x0011fe28, a0  <~~ Byte[0x0011fe28]
      0x80001ed4 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001ed8 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001edc mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80001ee0 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001ee4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001ee8 jalr    s7                     #; s7  = 0x80001800, (wrb) ra  <-- 0x80001eec, goto 0x80001800
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 15
      0x80001820 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 16 ~~> Word[0x800032a4]
      0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 15, (wrb) a4  <-- 0x800032b3
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032b3, 48 ~~> Byte[0x800032fb]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 16
      0x80001834 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x80001838 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001840 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80001eec, goto 0x80001eec
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001eec mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001ef0 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ef4 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001ef8 j       pc + 0x8               #; goto 0x80001f00
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001f00 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x80001f04 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80001f08 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001f0c xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001f10 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001f14 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001f44
; _ftoa (printf.c:0)
      0x80001f44 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x80001f48 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80001f4c fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe48]
                                                #; (f:lsu) fs2  <-- 31.41
      0x80001f58 lw      s10, 64(sp)            #; sp  = 0x0011fe20, s10 <~~ Word[0x0011fe60]
      0x80001f50 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe50]
      0x80001f54 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe58], (f:lsu) fs1  <-- 31.41
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) s10 <-- 0x80002eee
      0x80001f5c lw      s9, 68(sp)             #; sp  = 0x0011fe20, s9  <~~ Word[0x0011fe64]
                                                #; (lsu) s9  <-- 8
      0x80001f60 lw      s8, 72(sp)             #; sp  = 0x0011fe20, s8  <~~ Word[0x0011fe68]
                                                #; (lsu) s8  <-- 16
      0x80001f64 lw      s7, 76(sp)             #; sp  = 0x0011fe20, s7  <~~ Word[0x0011fe6c]
                                                #; (lsu) s7  <-- 0
      0x80001f68 lw      s6, 80(sp)             #; sp  = 0x0011fe20, s6  <~~ Word[0x0011fe70]
                                                #; (lsu) s6  <-- 0
      0x80001f6c lw      s5, 84(sp)             #; sp  = 0x0011fe20, s5  <~~ Word[0x0011fe74]
                                                #; (lsu) s5  <-- -1
      0x80001f70 lw      s4, 88(sp)             #; sp  = 0x0011fe20, s4  <~~ Word[0x0011fe78]
                                                #; (lsu) s4  <-- 0x0011ff07
      0x80001f74 lw      s3, 92(sp)             #; sp  = 0x0011fe20, s3  <~~ Word[0x0011fe7c]
                                                #; (lsu) s3  <-- 0x0011ff20
      0x80001f78 lw      s2, 96(sp)             #; sp  = 0x0011fe20, s2  <~~ Word[0x0011fe80]
                                                #; (lsu) s2  <-- 0x80001800
      0x80001f7c lw      s1, 100(sp)            #; sp  = 0x0011fe20, s1  <~~ Word[0x0011fe84]
                                                #; (lsu) s1  <-- 8
      0x80001f80 lw      s0, 104(sp)            #; sp  = 0x0011fe20, s0  <~~ Word[0x0011fe88]
                                                #; (lsu) s0  <-- 0
      0x80001f84 lw      ra, 108(sp)            #; sp  = 0x0011fe20, ra  <~~ Word[0x0011fe8c]
      0x80001f88 addi    sp, sp, 112            #; sp  = 0x0011fe20, (wrb) sp  <-- 0x0011fe90
                                                #; (lsu) ra  <-- 0x80000f30
      0x80001f8c ret                            #; ra  = 0x80000f30, goto 0x80000f30
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000f30 j       pc + 0x7c0             #; goto 0x800016f0
      0x800016f0 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x800016f4 li      s6, 37                 #; (wrb) s6  <-- 37
      0x800016f8 li      s7, 46                 #; (wrb) s7  <-- 46
      0x800016fc addi    s0, s10, 1             #; s10 = 0x80002eee, (wrb) s0  <-- 0x80002eef
      0x80001700 j       pc - 0xa74             #; goto 0x80000c8c
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c8c addi    s10, s0, 2             #; s0  = 0x80002eef, (wrb) s10 <-- 0x80002ef1
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c90 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x80000c94 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c98 lbu     a0, 0(s0)              #; s0  = 0x80002eef, a0  <~~ Byte[0x80002eef]
                                                #; (lsu) a0  <-- 10
      0x80000c9c beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ca4 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x80000ca8 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000cac mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x80000cb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000cb4 jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x80000cb8, goto 0x80001800
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1388          #; a3  = 0x80003810, (wrb) a3  <-- 0x800032a4
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x800032a4, (wrb) a1  <-- 0x800032a4
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 16
      0x80001820 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x800032a4, 17 ~~> Word[0x800032a4]
      0x80001828 add     a4, a1, a4             #; a1  = 0x800032a4, a4  = 16, (wrb) a4  <-- 0x800032b4
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x800032b4, 10 ~~> Byte[0x800032fc]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x800032a4, a4  <~~ Word[0x800032a4]
                                                #; (lsu) a4  <-- 17
      0x80001834 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x80001838 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x80001840 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x80001844 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x80001848 bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000184c add     a0, a3, a2             #; a3  = 0x800032a4, a2  = 0, (wrb) a0  <-- 0x800032a4
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001850 addi    a2, a0, 72             #; a0  = 0x800032a4, (wrb) a2  <-- 0x800032ec
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001854 sw      zero, 12(a0)           #; a0  = 0x800032a4, 0 ~~> Word[0x800032b0]
      0x80001858 li      a3, 64                 #; (wrb) a3  <-- 64
      0x8000185c sw      a3, 8(a0)              #; a0  = 0x800032a4, 64 ~~> Word[0x800032ac]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001860 sw      zero, 20(a0)           #; a0  = 0x800032a4, 0 ~~> Word[0x800032b8]
      0x80001864 li      a3, 1                  #; (wrb) a3  <-- 1
      0x80001868 sw      a3, 16(a0)             #; a0  = 0x800032a4, 1 ~~> Word[0x800032b4]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000186c sw      zero, 28(a0)           #; a0  = 0x800032a4, 0 ~~> Word[0x800032c0]
      0x80001870 sw      a2, 24(a0)             #; a0  = 0x800032a4, 0x800032ec ~~> Word[0x800032bc]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001874 lw      a2, 0(a1)              #; a1  = 0x800032a4, a2  <~~ Word[0x800032a4]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001878 addi    a3, a0, 8              #; a0  = 0x800032a4, (wrb) a3  <-- 0x800032ac
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000187c sw      zero, 36(a0)           #; a0  = 0x800032a4, 0 ~~> Word[0x800032c8]
                                                #; (lsu) a2  <-- 17
      0x80001880 sw      a2, 32(a0)             #; a0  = 0x800032a4, 17 ~~> Word[0x800032c4]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001884 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003884
      0x80001888 addi    a0, a0, -1860          #; a0  = 0x80003884, (wrb) a0  <-- 0x80003140
      0x8000188c sw      a3, 0(a0)              #; a0  = 0x80003140, 0x800032ac ~~> Word[0x80003140]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001890 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003890
      0x80001894 addi    a0, a0, -1808          #; a0  = 0x80003890, (wrb) a0  <-- 0x80003180
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001898 lw      a2, 0(a0)              #; a0  = 0x80003180, a2  <~~ Word[0x80003180]
                                                #; (lsu) a2  <-- 0
      0x8000189c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001898
      0x80001898 lw      a2, 0(a0)              #; a0  = 0x80003180, a2  <~~ Word[0x80003180]
                                                #; (lsu) a2  <-- 0
      0x8000189c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001898
      0x80001898 lw      a2, 0(a0)              #; a0  = 0x80003180, a2  <~~ Word[0x80003180]
                                                #; (lsu) a2  <-- 0
      0x8000189c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001898
      0x80001898 lw      a2, 0(a0)              #; a0  = 0x80003180, a2  <~~ Word[0x80003180]
                                                #; (lsu) a2  <-- 0
      0x8000189c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001898
      0x80001898 lw      a2, 0(a0)              #; a0  = 0x80003180, a2  <~~ Word[0x80003180]
                                                #; (lsu) a2  <-- 0
      0x8000189c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001898
      0x80001898 lw      a2, 0(a0)              #; a0  = 0x80003180, a2  <~~ Word[0x80003180]
                                                #; (lsu) a2  <-- 0
      0x8000189c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001898
      0x80001898 lw      a2, 0(a0)              #; a0  = 0x80003180, a2  <~~ Word[0x80003180]
                                                #; (lsu) a2  <-- 1
      0x8000189c beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800018a0 sw      zero, 0(a0)            #; a0  = 0x80003180, 0 ~~> Word[0x80003180]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800018a4 sw      zero, 0(a1)            #; a1  = 0x800032a4, 0 ~~> Word[0x800032a4]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000cb8 addi    s0, s0, 1              #; s0  = 0x80002eef, (wrb) s0  <-- 0x80002ef0
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000cbc addi    s10, s10, 1            #; s10 = 0x80002ef1, (wrb) s10 <-- 0x80002ef2
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cc0 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000cc4 lbu     a0, 0(s0)              #; s0  = 0x80002ef0, a0  <~~ Byte[0x80002ef0]
                                                #; (lsu) a0  <-- 0
      0x80000cc8 bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000ccc j       pc + 0xad8             #; goto 0x800017a4
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x800017a4 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x800017a8 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x800017b0
      0x800017b0 li      a0, 0                  #; (wrb) a0  <-- 0
      0x800017b4 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x800017b8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800017bc jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x800017c0, goto 0x80001800
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x800017c0, goto 0x800017c0
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x800017c0 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x800017c4 lw      s11, 60(sp)            #; sp  = 0x0011fe90, s11 <~~ Word[0x0011fecc]
                                                #; (lsu) s11 <-- 0
      0x800017c8 lw      s10, 64(sp)            #; sp  = 0x0011fe90, s10 <~~ Word[0x0011fed0]
                                                #; (lsu) s10 <-- 0
      0x800017cc lw      s9, 68(sp)             #; sp  = 0x0011fe90, s9  <~~ Word[0x0011fed4]
                                                #; (lsu) s9  <-- 0
      0x800017d0 lw      s8, 72(sp)             #; sp  = 0x0011fe90, s8  <~~ Word[0x0011fed8]
                                                #; (lsu) s8  <-- 0
      0x800017d4 lw      s7, 76(sp)             #; sp  = 0x0011fe90, s7  <~~ Word[0x0011fedc]
                                                #; (lsu) s7  <-- 0
      0x800017d8 lw      s6, 80(sp)             #; sp  = 0x0011fe90, s6  <~~ Word[0x0011fee0]
                                                #; (lsu) s6  <-- 0
      0x800017dc lw      s5, 84(sp)             #; sp  = 0x0011fe90, s5  <~~ Word[0x0011fee4]
                                                #; (lsu) s5  <-- 0
      0x800017e0 lw      s4, 88(sp)             #; sp  = 0x0011fe90, s4  <~~ Word[0x0011fee8]
                                                #; (lsu) s4  <-- 0
      0x800017e4 lw      s3, 92(sp)             #; sp  = 0x0011fe90, s3  <~~ Word[0x0011feec]
                                                #; (lsu) s3  <-- 0
      0x800017e8 lw      s2, 96(sp)             #; sp  = 0x0011fe90, s2  <~~ Word[0x0011fef0]
                                                #; (lsu) s2  <-- 0
      0x800017ec lw      s1, 100(sp)            #; sp  = 0x0011fe90, s1  <~~ Word[0x0011fef4]
                                                #; (lsu) s1  <-- 0
      0x800017f0 lw      s0, 104(sp)            #; sp  = 0x0011fe90, s0  <~~ Word[0x0011fef8]
                                                #; (lsu) s0  <-- 0
      0x800017f4 lw      ra, 108(sp)            #; sp  = 0x0011fe90, ra  <~~ Word[0x0011fefc]
      0x800017f8 addi    sp, sp, 112            #; sp  = 0x0011fe90, (wrb) sp  <-- 0x0011ff00
                                                #; (lsu) ra  <-- 0x80000bfc
      0x800017fc ret                            #; ra  = 0x80000bfc, goto 0x80000bfc
; printf_ (printf.c:869)
      0x80000bfc lw      ra, 12(sp)             #; sp  = 0x0011ff00, ra  <~~ Word[0x0011ff0c]
      0x80000c00 addi    sp, sp, 48             #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011ff30
                                                #; (lsu) ra  <-- 0x80000b84
      0x80000c04 ret                            #; ra  = 0x80000b84, goto 0x80000b84
; main (test_sp.c:0)
      0x80000b84 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002b84
      0x80000b88 addi    a0, a0, 1644           #; a0  = 0x80002b84, (wrb) a0  <-- 0x800031f0
      0x80000b8c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800031f0]
                                                #; (f:lsu) ft0  <-- 0.0001
; main (test_sp.c:35)
      0x80000b90 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0
                                                #; (acc) s0  <-- 0x02013407
      0x80000b94 fld     fs2, 16(sp)            #; fs2  <~~ Doub[0x0011ff40]
; main (test_sp.c:36)
      0x80000ba0 lw      ra, 44(sp)             #; sp  = 0x0011ff30, ra  <~~ Word[0x0011ff5c]
      0x80000b98 fld     fs1, 24(sp)            #; fs1  <~~ Doub[0x0011ff48], (f:lsu) fs2  <-- 0.0
      0x80000ba4 addi    sp, sp, 48             #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff60
      0x80000b9c fld     fs0, 32(sp)            #; fs0  <~~ Doub[0x0011ff50], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) ra  <-- 0x80002c60
      0x80000ba8 ret                            #; ra  = 0x80002c60, goto 0x80002c60
; ?? (start.S:184)
      0x80002c60 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x80002c64 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c64
      0x80002c68 jalr    ra, ra, 524            #; ra  = 0x80002c64, (wrb) ra  <-- 0x80002c6c, goto 0x80002e70
; ?? (start_snitch.S:33)
      0x80002e70 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002e74 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002c6c ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002e78 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e78
      0x80002e7c jalr    ra, ra, -1264          #; ra  = 0x80002e78, (wrb) ra  <-- 0x80002e80, goto 0x80002988
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002988 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000298c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002990 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002994 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002998 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x8000299c ret                            #; ra  = 0x80002e80, goto 0x80002e80
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002e80 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002e84 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002e88 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002e8c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002c6c
; ?? (start_snitch.S:40)
      0x80002e90 ret                            #; ra  = 0x80002c6c, goto 0x80002c6c
; ?? (start.S:195)
      0x80002c6c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x80002c70 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c70
      0x80002c74 jalr    ra, ra, 556            #; ra  = 0x80002c70, (wrb) ra  <-- 0x80002c78, goto 0x80002e9c
; ?? (start_snitch.S:15)
      0x80002e9c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80002ea0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80002ea4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002c78 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80002ea8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ea8
      0x80002eac jalr    ra, ra, -1344          #; ra  = 0x80002ea8, (wrb) ra  <-- 0x80002eb0, goto 0x80002968
; snrt_global_core_idx (team.c:32)
      0x80002968 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000296c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002970 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002974 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002978 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x8000297c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x80002980 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x80002984 ret                            #; ra  = 0x80002eb0, goto 0x80002eb0
; ?? (start_snitch.S:20)
      0x80002eb0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x80002eb4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80002eb8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x80002ebc bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x80002c78
; ?? (start_snitch.S:28)
      0x80002ec0 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x80002ec4 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x80002ec8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002ec8
      0x80002ecc addi    t1, t1, 632            #; t1  = 0x80002ec8, (wrb) t1  <-- 0x80003140
; ?? (start_snitch.S:31)
      0x80002ed0 sw      t0, 0(t1)              #; t1  = 0x80003140, 1 ~~> Word[0x80003140]
; ?? (start_snitch.S:32)
      0x80002ed4 ret                            #; ra  = 0x80002c78, goto 0x80002c78
; ?? (start.S:198)
      0x80002c78 wfi                            #; 
                        tion 0 @ (12, 5633):
                          140
                          143
                            7
                           35
                      11.9357
                       0.2325
                       0.1030
                          1.0
                          1.0
                            0
                       1.1765
                          7.4
                       0.0267
                       0.0181
                         0.68
                         5622
                       0.2592
