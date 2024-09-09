Sfx_LevelUp:
	db	085h
	dw	$ffff & Sfx_LevelUp_Ch6
	db	006h
	dw	$ffff & Sfx_LevelUp_Ch7
	db	007h
	dw	$ffff & Sfx_LevelUp_Ch8
	db	008h
	dw	$ffff & Sfx_LevelUp_Ch9
	db	009h
	dw	$ffff & Sfx_LevelUp_Ch10
;----------------------------------------
Sfx_LevelUp_Ch6:
;----------------------------------------
	db	$df
	db	$da,$00,$78
;	db	$e5,$77
	db	$db,$02
;		vib 6 26
; P1-2
	db	$d8,$8,$b1
	db	$d4,$c1
	db	$c1
	db	$c1
	db	$dc,$b3
	db	$d3,$9b
	db	$ff
;----------------------------------------
Sfx_LevelUp_Ch7:
;----------------------------------------
	db	$df
; P2-2
;		vib 8 27
	db	$db,$02
	db	$d8,$8,$c1
	db	$d3,$51
	db	$51
	db	$51
	db	$dc,$c3
	db	$cb
	db	$ff
;----------------------------------------
Sfx_LevelUp_Ch8:
;----------------------------------------
	db	$df
; P3-2
	db	$d8,$8,$81
	db	$d3,$90
	db	$00
	db	$90
	db	$00
	db	$90
	db	$00
	db	$d2,$57
	db	$03
	db	$ff
;----------------------------------------
Sfx_LevelUp_Ch9:
;----------------------------------------
	db	$df
	db	$f0,$04
; P4-1
	db	$d8,$c
	db	$1b
	db	$ff
;----------------------------------------
Sfx_LevelUp_Ch10:
;----------------------------------------
	db	$df
; P5-1
	db	$d8,$c
	db	$1b
	db	$ff
SFX_Item:
	db	085h
	dw	$ffff & SFX_Item_Ch6
	db	006h
	dw	$ffff & SFX_Item_Ch7
	db	007h
	dw	$ffff & SFX_Item_Ch8
	db	008h
	dw	$ffff & SFX_Item_Ch9
	db	009h
	dw	$ffff & SFX_Item_Ch10
;----------------------------------------
SFX_Item_Ch6:
;----------------------------------------
	db	$df
	db	$da,$00,$6c
;	db	$e5,$77
	db	$e1,$8,$27
	db	$db,$02
; P1-2
	db	$d8,$8,$b2
	db	$d3,$15
	db	$11
	db	$61
	db	$11
	db	$83
	db	$83
	db	$83
; P1-3
	db	$6b
	db	$0b
	db	$ff
;----------------------------------------
SFX_Item_Ch7:
;----------------------------------------
	db	$df
	db	$e1,$8,$27
	db	$db,$02
; P2-2
	db	$d8,$8,$c3
	db	$d3,$a5
	db	$a1
	db	$a1
	db	$a1
	db	$b3
	db	$b3
	db	$b3
; P2-3
	db	$ab
	db	$0b
	db	$ff
;----------------------------------------
SFX_Item_Ch8:
;----------------------------------------
	db	$df
; P3-2
	db	$d8,$8,$81
	db	$d3,$63
	db	$01
	db	$60
	db	$00
	db	$60
	db	$00
	db	$60
	db	$00
	db	$41
	db	$01
	db	$41
	db	$01
	db	$51
	db	$01
; P3-3
	db	$69
	db	$0d
	db	$ff
;----------------------------------------
SFX_Item_Ch9:
;----------------------------------------
	db	$df
	db	$f0,$04
; P4-2
	db	$d8,$c
	db	$1f
; P4-3
	db	$0f
	db	$ff
;----------------------------------------
SFX_Item_Ch10:
;----------------------------------------
	db	$df
; P4-2
	db	$d8,$c
	db	$1f
; P4-3
	db	$0f
	db	$ff
SFX_Evolution:
	db	085h
	dw	$ffff & SFX_Evolution_Ch6
	db	006h
	dw	$ffff & SFX_Evolution_Ch7
	db	007h
	dw	$ffff & SFX_Evolution_Ch8
	db	008h
	dw	$ffff & SFX_Evolution_Ch9
	db	009h
	dw	$ffff & SFX_Evolution_Ch10
;----------------------------------------
SFX_Evolution_Ch6:
;----------------------------------------
	db	$df
	db	$da,$00,$70
	db	$e1,$8,$27
	db	$db,$02
; P1-2
	db	$d8,$8,$b3
	db	$d3,$15
	db	$d4,$a5
	db	$6b
; P1-3
;		speed 00 78
	db	$dc,$b1
	db	$d3,$41
	db	$41
	db	$41
	db	$41
	db	$41
	db	$81
	db	$dc,$b3
	db	$6b
; P1-4
	db	$ff
;----------------------------------------
SFX_Evolution_Ch7:
;----------------------------------------
	db	$df
	db	$db,$02
	db	$e1,$8,$27
; P2-2
	db	$d8,$8,$c3
	db	$d3,$a5
	db	$65
	db	$1b
; P2-3
	db	$dc,$c1
	db	$b1
	db	$b1
	db	$b1
	db	$81
	db	$81
	db	$b1
	db	$dc,$c3
	db	$ab
; P2-4
	db	$ff
;----------------------------------------
SFX_Evolution_Ch8:
;----------------------------------------
	db	$df
; P3-2
	db	$d8,$8,$81
	db	$d4,$1b
	db	$dc,$49
	db	$15
	db	$dc,$18
	db	$d5,$a1
	db	$d4,$11
	db	$61
; P3-3
	db	$dc,$49
	db	$85
	db	$b5
	db	$a8
	db	$02
; P3-4
	db	$ff
;----------------------------------------
SFX_Evolution_Ch9:
;----------------------------------------
	db	$df
	db	$f0,$04
; P4-2
	db	$d8,$c
	db	$1f
; P4-3
	db	$0f
; P4-4
	db	$ff
;----------------------------------------
SFX_Evolution_Ch10:
;----------------------------------------
	db	$df
; P4-2
	db	$d8,$c
	db	$1f
; P4-3
	db	$0f
; P4-4
	db	$ff
Sfx_DexFanfare2049:
	db	085h
	dw	$ffff & Sfx_DexFanfare2049_Ch6
	db	006h
	dw	$ffff & Sfx_DexFanfare2049_Ch7
	db	007h
	dw	$ffff & Sfx_DexFanfare2049_Ch8
	db	008h
	dw	$ffff & Sfx_DexFanfare2049_Ch9
	db	009h
	dw	$ffff & Sfx_DexFanfare2049_Ch10
;----------------------------------------
Sfx_DexFanfare2049_Ch6:
;----------------------------------------
	db	$df
	db	$da,$00,$68
	db	$db,$02
; P1-2
	db	$d8,$c,$88
	db	$d4,$a3
	db	$01
	db	$a0
	db	$00
	db	$b3
	db	$01
	db	$b0
	db	$00
; P1-3
	db	$d3,$11
	db	$01
	db	$d4,$b1
	db	$01
	db	$a1
	db	$05
; P1-4
	db	$ff
;----------------------------------------
Sfx_DexFanfare2049_Ch7:
;----------------------------------------
	db	$df
	db	$db,$02
; P2-2
	db	$d8,$c,$c1
	db	$d2,$61
	db	$51
	db	$31
	db	$11
	db	$d3,$b1
	db	$d2,$11
	db	$31
	db	$51
; P2-3
	db	$63
	db	$83
	db	$67
; P2-4
	db	$ff
;----------------------------------------
Sfx_DexFanfare2049_Ch8:
;----------------------------------------
	db	$df
; P3-1
	db	$d8,$c,$81
; P3-2
	db	$d3,$63
	db	$01
	db	$60
	db	$00
	db	$63
	db	$01
	db	$60
	db	$00
; P3-3
	db	$a1
	db	$01
	db	$51
	db	$01
	db	$61
	db	$05
; P3-4
	db	$ff
;----------------------------------------
Sfx_DexFanfare2049_Ch9:
;----------------------------------------
	db	$df
	db	$f0,$04
; P4-2
	db	$d8,$c
	db	$1f
; P4-3
	db	$0f
; P4-4
	db	$ff
;----------------------------------------
Sfx_DexFanfare2049_Ch10:
;----------------------------------------
	db	$df
; P4-2
	db	$d8,$c
	db	$1f
; P4-3
	db	$0f
; P4-4
	db	$ff
Sfx_DexFanfare80109:
	db	085h
	dw	$ffff & Sfx_DexFanfare80109_Ch6
	db	006h
	dw	$ffff & Sfx_DexFanfare80109_Ch7
	db	007h
	dw	$ffff & Sfx_DexFanfare80109_Ch8
	db	008h
	dw	$ffff & Sfx_DexFanfare80109_Ch9
	db	009h
	dw	$ffff & Sfx_DexFanfare80109_Ch10
;----------------------------------------
Sfx_DexFanfare80109_Ch6:
;----------------------------------------
	db	$df
	db	$da,$00,$70
	db	$e1,$8,$27
	db	$db,$02
; P1-2
	db	$d8,$c,$b1
	db	$d3,$41
	db	$40
	db	$40
	db	$d4,$b1
	db	$b0
	db	$b0
	db	$d3,$41
	db	$40
	db	$40
	db	$61
	db	$60
	db	$60
; P1-3
	db	$dc,$a5
	db	$bf
; P1-4
	db	$ff
;----------------------------------------
Sfx_DexFanfare80109_Ch7:
;----------------------------------------
	db	$df
	db	$e1,$8,$27
	db	$db,$02
; P2-2
	db	$d8,$c,$c1
	db	$d3,$81
	db	$80
	db	$80
	db	$41
	db	$40
	db	$40
	db	$91
	db	$90
	db	$90
	db	$b1
	db	$b0
	db	$b0
; P2-3
	db	$dc,$b5
	db	$d2,$4f
; P2-4
	db	$ff
;----------------------------------------
Sfx_DexFanfare80109_Ch8:
;----------------------------------------
	db	$df
; P3-2
	db	$d8,$c,$24
	db	$d3,$40
	db	$00
	db	$d4,$b1
	db	$d3,$40
	db	$00
	db	$d4,$b1
	db	$d3,$40
	db	$00
	db	$11
	db	$30
	db	$00
	db	$d4,$b1
; P3-3
	db	$dc,$7f
	db	$46
	db	$08
; P3-4
	db	$ff
;----------------------------------------
Sfx_DexFanfare80109_Ch9:
;----------------------------------------
	db	$df
	db	$f0,$04
; P4-2
	db	$d8,$c
	db	$1f
	db	$0f
; P4-4
	db	$ff
;----------------------------------------
Sfx_DexFanfare80109_Ch10:
;----------------------------------------
	db	$df
; P4-2
	db	$d8,$c
	db	$1f
	db	$0f
; P4-4
	db	$ff
Sfx_Pokeflute:
	db	007h
	dw	$ffff & Sfx_Pokeflute_Ch8
Sfx_Pokeflute_Ch8:
	db	0dah,001h,000h
	db	0dfh
	db	0e1h,010h,014h
; P3-1
	db	0d8h,00ch,081h
	db	0d2h,051h
	db	061h
	db	083h
	db	0a1h
	db	081h
	db	0d1h,013h
; P3-2
	db	011h
	db	031h
	db	011h
	db	0d2h,081h
	db	0a1h
	db	061h
	db	087h
	db	00bh
	db	0ffh
Sfx_Fanfare:
	db	045h
	dw	$ffff & Sfx_Fanfare_Ch6
	db	006h
	dw	$ffff & Sfx_Fanfare_Ch7
	db	007h
	dw	$ffff & Sfx_Fanfare_Ch8
Sfx_Fanfare_Ch6:
	db	$df
	db	$ec
	db	$da,$01,$00
;	db	$e5,$77
	db	$db,$03
	db	$e6,$00,$01

	db	$d8,$6,$b3
	db	$d4,$63
	db	$23
	db	$73
	db	$43

	db	$93
	db	$63
	db	$b3
	db	$73

	db	$d8,$4,$b3
	db	$b3
	db	$c3
	db	$d3,$13
	db	$23
	db	$43
	db	$13

	db	$d8,$4,$b6
	db	$2b
	db	$ed
	db	$ff
Sfx_Fanfare_Ch7:
	db	$df
	db	$db,$02

	db	$d8,$6,$c4
	db	$d3,$23
	db	$d8,$4,$c4
	db	$21
	db	$d4,$b1
	db	$d3,$21
	db	$45
	db	$41
	db	$d4,$c1
	db	$d3,$41

	db	$65
	db	$61
	db	$21
	db	$61
	db	$75
	db	$71
	db	$41
	db	$71

	db	$23
	db	$43
	db	$53
	db	$63
	db	$73
	db	$93

	db	$d8,$4,$c6
	db	$7b
	db	$ff
Sfx_Fanfare_Ch8:
	db	$df

	db	$d8,$6,$81
	db	$d3,$b3
	db	$03
	db	$c3
	db	$03

	db	$d2,$23
	db	$03
	db	$43
	db	$03

	db	$d8,$4,$3d
	db	$63
	db	$43
	db	$23
	db	$b3
	db	$93
	db	$63

	db	$d8,$4,$5c
	db	$75
	db	$ff
Sfx_KeyItem:
	db	085h
	dw	$ffff & Sfx_KeyItem_Ch6
	db	006h
	dw	$ffff & Sfx_KeyItem_Ch7
	db	007h
	dw	$ffff & Sfx_KeyItem_Ch8
	db	008h
	dw	$ffff & Sfx_KeyItem_Ch9
	db	009h
	dw	$ffff & Sfx_KeyItem_Ch10
;----------------------------------------
Sfx_KeyItem_Ch6:
;----------------------------------------
	db	$df
	db	$da,$00,$78
;	db	$e5,$77
	db	$db,$02
; P1-2
	db	$d8,$6,$b1
	db	$d4,$c3
	db	$c1
	db	$c1
	db	$c3
	db	$d3,$53
	db	$dc,$b3
	db	$9f
; P1-3
	db	$ff
;----------------------------------------
Sfx_KeyItem_Ch7:
;----------------------------------------
	db	$df
	db	$db,$02
; P2-2
	db	$d8,$6,$c1
	db	$d3,$53
	db	$51
	db	$51
	db	$53
	db	$93
	db	$dc,$c3
	db	$cf
; P2-3
	db	$ff
;----------------------------------------
Sfx_KeyItem_Ch8:
;----------------------------------------
	db	$df
; P3-2
	db	$d8,$6,$81
	db	$d3,$91
	db	$01
	db	$90
	db	$00
	db	$90
	db	$00
	db	$91
	db	$01
	db	$c1
	db	$01
	db	$d2,$57
	db	$07
; P3-3
	db	$ff
;----------------------------------------
Sfx_KeyItem_Ch9:
;----------------------------------------
	db	$df
	db	$f0,$04
; P4-1
	db	$d8,$c
	db	$1f
; P4-3
	db	$ff
;----------------------------------------
Sfx_KeyItem_Ch10:
;----------------------------------------
	db	$df
; P5-1
	db	$d8,$c
	db	$1f
; P5-3
	db	$ff
Sfx_Fanfare2:
	db	045h
	dw	$ffff & Sfx_Fanfare2_Ch6
	db	006h
	dw	$ffff & Sfx_Fanfare2_Ch7
	db	007h
	dw	$ffff & Sfx_Fanfare2_Ch8
Sfx_Fanfare2_Ch6:
	db	$df
	db	$ec
	db	$da,$01,$00
;	db	$e5,$77
	db	$e6,$00,$01
	db	$db,$03

	db	$d8,$6,$b5
	db	$d4,$93
	db	$d8,$4,$b2
	db	$61
	db	$91
	db	$a1
	db	$b1
	db	$71
	db	$b1
	db	$d3,$13
	db	$11

	db	$d8,$4,$b6
	db	$2b
	db	$ed
	db	$ff
Sfx_Fanfare2_Ch7:
	db	$df
	db	$db,$02

	db	$d8,$6,$c5
	db	$d3,$25
	db	$d8,$4,$c1
	db	$20
	db	$20
	db	$20
	db	$d8,$4,$c2
	db	$41
	db	$21
	db	$41
	db	$53
	db	$51

	db	$d8,$4,$c6
	db	$6b
	db	$ff
Sfx_Fanfare2_Ch8:
	db	$df

	db	$d8,$6,$81
	db	$d2,$21
	db	$01
	db	$21
	db	$01
	db	$d8,$4,$1e
	db	$21
	db	$01
	db	$21
	db	$41
	db	$01
	db	$61

	db	$d8,$4,$5c
	db	$95
	db	$ff
Sfx_RegisterPhoneNumber:
	db	085h
	dw	$ffff & Sfx_RegisterPhoneNumber_Ch6
	db	006h
	dw	$ffff & Sfx_RegisterPhoneNumber_Ch7
	db	007h
	dw	$ffff & Sfx_RegisterPhoneNumber_Ch8
	db	008h
	dw	$ffff & Sfx_RegisterPhoneNumber_Ch9
	db	009h
	dw	$ffff & Sfx_RegisterPhoneNumber_Ch10
;----------------------------------------
Sfx_RegisterPhoneNumber_Ch6:
;----------------------------------------
	db	$df
	db	$da,$00,$7c
;	db	$e5,$77
; P1-2
	db	$db,$03
	db	$d8,$c,$a2
	db	$01
	db	$d4,$13
	db	$93
	db	$d3,$11
	db	$d4,$60
	db	$91
	db	$10
	db	$61
; P1-3
	db	$b2
	db	$d3,$22
	db	$11
	db	$07
; P1-4
	db	$ff
	db	$df
;----------------------------------------
Sfx_RegisterPhoneNumber_Ch7:
;----------------------------------------
; P2-1
	db	$df
; P2-2
	db	$db,$03
	db	$d8,$c,$c2
	db	$01
	db	$d3,$41
	db	$21
	db	$11
	db	$41
	db	$61
	db	$00
	db	$92
	db	$d2,$11
; P2-3
	db	$42
	db	$d3,$82
	db	$91
	db	$07
; P2-4
	db	$ff
	db	$df
;----------------------------------------
Sfx_RegisterPhoneNumber_Ch8:
;----------------------------------------
; P3-1
	db	$df
; P3-2
	db	$d8,$c,$81
	db	$01
	db	$d4,$46
	db	$00
	db	$91
	db	$00
	db	$11
	db	$00
	db	$dc,$26
	db	$91
; P3-3
	db	$dc,$39
	db	$81
	db	$00
	db	$b2
	db	$91
	db	$07
; P3-4
	db	$ff
	db	$df
;----------------------------------------
Sfx_RegisterPhoneNumber_Ch9:
;----------------------------------------
	db	$df
	db	$f0,$04
	db	$d8,$c
	db	$11
	db	$0f
	db	$0f
	db	$ff
	db	$df
IFNDEF BETA_SFX
;----------------------------------------
Sfx_RegisterPhoneNumber_Ch10:
;----------------------------------------
	db	$df
	db	$d8,$c
	db	$11
	db	$0f
	db	$0f
	db	$ff
	db	$df
ELSE
;----------------------------------------
Sfx_RegisterPhoneNumber_Ch10:
;----------------------------------------
	db	$df
;	db	$f0,$04
; P4-2
	db	$d8,$c
	db	$11
	db	$43
	db	$31
	db	$41
	db	$31
	db	$40
	db	$31
	db	$40
	db	$31
; P4-3
	db	$31
	db	$40
	db	$32
	db	$49
; P4-4
	db	$ff
	db	$df
ENDIF
Sfx_3rdPlace:
	db	045h
	dw	$ffff & Sfx_3rdPlace_Ch6
	db	006h
	dw	$ffff & Sfx_3rdPlace_Ch7
	db	007h
	dw	$ffff & Sfx_3rdPlace_Ch8
;----------------------------------------
Sfx_3rdPlace_Ch6:
;----------------------------------------
	db	$df
	db	$da,$00,$78
;	db	$e5,$77
	db	$db,$02
; P1-2
	db	$d8,$c,$a4
	db	$d3,$60
	db	$a0
	db	$d2,$10
	db	$60
	db	$00
	db	$10
	db	$35
	db	$ff
	db	$df
;----------------------------------------
Sfx_3rdPlace_Ch7:
;----------------------------------------
	db	$df
	db	$db,$02
; P2-2
	db	$d8,$c,$b4
	db	$d3,$a0
	db	$d2,$10
	db	$60
	db	$a0
	db	$00
	db	$60
	db	$85
	db	$ff
	db	$df
;----------------------------------------
Sfx_3rdPlace_Ch8:
;----------------------------------------
	db	$df
; P3-2
	db	$d8,$c,$12
	db	$d4,$a0
	db	$60
	db	$a0
	db	$d3,$10
	db	$00
	db	$d4,$a0
	db	$dc,$81
	db	$c5
	db	$ff
	db	$df
Sfx_UnincludedFanfare:
IFDEF BETA_SFX
	db	085h
	dw	$ffff & Sfx_UnincludedFanfare_Ch6
	db	006h
	dw	$ffff & Sfx_UnincludedFanfare_Ch7
	db	007h
	dw	$ffff & Sfx_UnincludedFanfare_Ch8
	db	008h
	dw	$ffff & Sfx_UnincludedFanfare_Ch9
	db	009h
	dw	$ffff & Sfx_UnincludedFanfare_Ch10
;----------------------------------------
Sfx_UnincludedFanfare_Ch6:
;----------------------------------------
	db	$df
	db	$da,$00,$76
;	db	$e5,$77
	db	$db,$02
; P1-1
	db	$d8,$c,$a4
	db	$d4,$c1
	db	$81
	db	$31
; P1-2
	db	$10
	db	$50
	db	$80
	db	$50
	db	$80
	db	$d3,$10
	db	$52
	db	$00
	db	$b1
	db	$a1
	db	$b1
; P1-3
	db	$81
	db	$11
	db	$01
	db	$81
	db	$ff
	db	$df
;----------------------------------------
Sfx_UnincludedFanfare_Ch7:
;----------------------------------------
	db	$df
	db	$db,$02
; P2-1
	db	$d8,$c,$b4
	db	$d3,$81
	db	$b1
	db	$c1
; P2-2
	db	$d2,$13
	db	$d3,$81
	db	$d2,$12
	db	$00
	db	$41
	db	$31
	db	$41
; P2-3
	db	$11
	db	$d3,$81
	db	$01
	db	$d2,$11
	db	$ff
	db	$df
;----------------------------------------
Sfx_UnincludedFanfare_Ch8:
;----------------------------------------
	db	$df
; P3-1
	db	$d8,$6,$49
	db	$d5,$c7
	db	$dc,$24
	db	$a3
; P3-2
	db	$83
	db	$d4,$53
	db	$03
	db	$83
	db	$01
	db	$d5,$80
	db	$00
	db	$83
	db	$03
	db	$d4,$43
; P3-3
	db	$13
	db	$d5,$83
	db	$03
	db	$d4,$13
	db	$ff
	db	$df
;----------------------------------------
Sfx_UnincludedFanfare_Ch9:
;----------------------------------------
	db	$df
	db	$f0,$003
; P5-1
	db	$d8,$c
	db	$65
; P5-2
	db	$0f
; P5-3
	db	$07
	db	$ff
	db	$df
;----------------------------------------
Sfx_UnincludedFanfare_Ch10:
;----------------------------------------
	db	$df
;	db	$f0,$003
; P5-1
	db	$d8,$c
	db	$61
	db	$31
	db	$31
; P5-2
	db	$41
	db	$41
	db	$31
	db	$40
	db	$30
	db	$40
	db	$30
	db	$41
	db	$31
	db	$40
	db	$40
; P5-3
	db	$31
	db	$40
	db	$30
	db	$41
	db	$31
	db	$ff
	db	$df
ENDIF
Sfx_GetEgg:
	db	085h
	dw	$ffff & Sfx_GetEgg_Ch6
	db	006h
	dw	$ffff & Sfx_GetEgg_Ch7
	db	007h
	dw	$ffff & Sfx_GetEgg_Ch8
	db	008h
	dw	$ffff & Sfx_GetEgg_Ch9
	db	009h
	dw	$ffff & Sfx_GetEgg_Ch10
;----------------------------------------
Sfx_GetEgg_Ch6:
;----------------------------------------
	db	$df
	db	$da,$00,$78
;	db	$e5,$77
; P1-2
	db	$e1,$12,$34
	db	$db,$02
	db	$d8,$8,$a1
	db	$01
	db	$d4,$11
	db	$61
	db	$a1
	db	$61
	db	$b1
	db	$d3,$31
	db	$dc,$a2
	db	$65
	db	$dc,$a1
	db	$db,$03
	db	$d4,$51
	db	$81
	db	$d3,$11
; P1-3
	db	$dc,$a4
	db	$68
	db	$08
; P1-4
	db	$ff
	db	$df
;----------------------------------------
Sfx_GetEgg_Ch7:
;----------------------------------------
	db	$df
; P2-2
	db	$e1,$12,$34
	db	$db,$03
	db	$d8,$8,$c2
	db	$01
	db	$d3,$61
	db	$01
	db	$a1
	db	$dc,$c1
	db	$b1
	db	$a1
	db	$b1
	db	$dc,$c2
	db	$d2,$15
	db	$dc,$c1
	db	$d3,$11
	db	$51
	db	$81
; P2-3
	db	$dc,$c4
	db	$a8
	db	$08
; P2-4
	db	$ff
	db	$df
;----------------------------------------
Sfx_GetEgg_Ch8:
;----------------------------------------
	db	$df
; P3-2
	db	$d8,$8,$4a
	db	$01
	db	$d4,$15
	db	$d5,$b5
	db	$dc,$18
	db	$d4,$11
	db	$61
	db	$81
	db	$dc,$4a
	db	$b5
; P3-3
	db	$dc,$81
	db	$a8
	db	$08
; P3-4
	db	$ff
	db	$df
;----------------------------------------
Sfx_GetEgg_Ch9:
;----------------------------------------
	db	$df
	db	$f0,$04
; P3-2
	db	$d8,$8
	db	$01
	db	$d8,$c
	db	$0f
; P3-3
	db	$0b
	db	$ff
	db	$df
;----------------------------------------
Sfx_GetEgg_Ch10:
;----------------------------------------
	db	$df
; P3-2
	db	$d8,$8
	db	$01
	db	$d8,$c
	db	$0f
; P3-3
	db	$0b
	db	$ff
	db	$df
Sfx_MoveDeleted:
	db	085h
	dw	$ffff & Sfx_MoveDeleted_Ch6
	db	006h
	dw	$ffff & Sfx_MoveDeleted_Ch7
	db	007h
	dw	$ffff & Sfx_MoveDeleted_Ch8
	db	008h
	dw	$ffff & Sfx_MoveDeleted_Ch9
	db	009h
	dw	$ffff & Sfx_MoveDeleted_Ch10
;----------------------------------------
Sfx_MoveDeleted_Ch6:
;----------------------------------------
	db	$df
	db	$da,$00,$74
;	db	$e5,$77
	db	$db,$02
	db	$e1,$c,$44
; P1-1
	db	$d8,$c,$a4
	db	$07
; P1-2
	db	$d5,$80
	db	$01
	db	$20
	db	$50
	db	$40
	db	$53
	db	$dc,$a1
	db	$81
	db	$61
	db	$51
; P1-3
	db	$31
	db	$91
	db	$c1
	db	$dc,$a6
	db	$d4,$39
	db	$05
	db	$ff
	db	$df
;----------------------------------------
Sfx_MoveDeleted_Ch7:
;----------------------------------------
	db	$df
	db	$db,$03
	db	$e1,$c,$44
; P2-1
	db	$d8,$c,$74
	db	$d6,$c0
	db	$d5,$30
	db	$60
	db	$90
	db	$dc,$94
	db	$30
	db	$60
	db	$90
	db	$c0
; P2-2
	db	$dc,$b4
	db	$d4,$20
	db	$01
	db	$d5,$b0
	db	$d4,$23
	db	$01
	db	$dc,$b1
	db	$21
	db	$41
	db	$51
; P2-3
	db	$dc,$b6
	db	$6f
	db	$05
	db	$ff
	db	$df
;----------------------------------------
Sfx_MoveDeleted_Ch8:
;----------------------------------------
	db	$df
; P3-1
	db	$d8,$6,$49
	db	$d5,$97
	db	$a7
; P3-2
	db	$b1
	db	$03
	db	$b0
	db	$00
	db	$b7
	db	$03
	db	$d4,$21
	db	$01
	db	$11
	db	$01
	db	$d5,$b1
	db	$01
; P3-3
	db	$d8,$c,$81
	db	$cf
	db	$05
	db	$ff
	db	$df
;----------------------------------------
Sfx_MoveDeleted_Ch9:
;----------------------------------------
	db	$df
	db	$f0,$03
	db	$d8,$c
	db	$67
	db	$0f
	db	$0f
	db	$05
	db	$ff
	db	$df
IFNDEF BETA_SFX
;----------------------------------------
Sfx_MoveDeleted_Ch10:
;----------------------------------------
	db	$df
	db	$d8,$c
	db	$67
	db	$0f
	db	$0f
	db	$05
	db	$ff
	db	$df
ELSE
;----------------------------------------
Sfx_MoveDeleted_Ch10:
;----------------------------------------
	db	$df
;	db	$f0,$03
;; P4-1
	db	$d8,$c
	db	$03
	db	$30
	db	$20
	db	$20
	db	$20
;; P4-2
	db	$c7
	db	$41
	db	$31
	db	$31
	db	$20
	db	$30
;; P4-3
	db	$41
	db	$31
	db	$31
	db	$c9
	db	$ff
	db	$df
ENDIF
Sfx_2ndPlace:
	db	085h
	dw	$ffff & Sfx_2ndPlace_Ch6
	db	006h
	dw	$ffff & Sfx_2ndPlace_Ch7
	db	007h
	dw	$ffff & Sfx_2ndPlace_Ch8
	db	008h
	dw	$ffff & Sfx_2ndPlace_Ch9
	db	009h
	dw	$ffff & Sfx_2ndPlace_Ch10
;----------------------------------------
Sfx_2ndPlace_Ch6:
;----------------------------------------
	db	$df
	db	$da,$00,$74
;	db	$e5,$77
	db	$db,$02
	db	$e1,$c,$34
; P1-1
	db	$d8,$8,$a1
	db	$d3,$51
	db	$51
	db	$51
; P1-2
	db	$11
	db	$d4,$a1
	db	$61
	db	$a1
	db	$d3,$11
	db	$61
	db	$11
	db	$d4,$a1
	db	$d3,$61
	db	$a1
	db	$a1
	db	$a1
; P1-3
	db	$dc,$a7
	db	$cb
	db	$05
	db	$ff
	db	$df
;----------------------------------------
Sfx_2ndPlace_Ch7:
;----------------------------------------
	db	$df
	db	$db,$02
; P2-1
	db	$d8,$8,$b1
	db	$d3,$81
	db	$81
	db	$81
; P2-2
	db	$a3
	db	$c1
	db	$dc,$b4
	db	$d2,$1b
	db	$dc,$b1
	db	$11
	db	$11
	db	$11
; P2-3
	db	$dc,$b7
	db	$3b
	db	$05
	db	$ff
	db	$df
;----------------------------------------
Sfx_2ndPlace_Ch8:
;----------------------------------------
	db	$df
; P3-1
	db	$d8,$8,$18
	db	$d4,$10
	db	$00
	db	$10
	db	$00
	db	$10
	db	$00
; P3-2
	db	$d5,$61
	db	$01
	db	$d4,$61
	db	$d5,$61
	db	$01
	db	$d4,$61
	db	$d5,$61
	db	$01
	db	$d4,$61
	db	$30
	db	$00
	db	$30
	db	$00
	db	$30
	db	$00
; P3-3
	db	$dc,$81
	db	$d5,$8b
	db	$05
	db	$ff
	db	$df
;----------------------------------------
Sfx_2ndPlace_Ch9:
;----------------------------------------
IFDEF BETA_SFX
	db	$df
	db	$f0,$03
	db	$d8,$c
	db	$63
	db	$0f
	db	$07
	db	$ff
	db	$df
ELSE
	db	$df
	db	$f0,$03
; P4-1
	db	$d8,$8
@loop:
	db	$20
	db	$fd,6
	dw	$ffff & @loop
; P4-2
	db	$cb
	db	$cb
; P4-3
	db	$cb
	db	$05
	db	$ff
	db	$df
ENDIF
;----------------------------------------
Sfx_2ndPlace_Ch10:
;----------------------------------------
IFDEF BETA_SFX
	db	$df
;	db	$f0,$03
	db	$d8,$c
	db	$63
	db	$0f
	db	$07
	db	$ff
	db	$df
ELSE
	db	$df
; P5-1
	db	$d8,$8
@loop:
	db	$20
	db	$fd,6
	dw	$ffff & @loop
; P5-2
	db	$cb
	db	$cb
; P5-3
	db	$cb
	db	$05
	db	$ff
	db	$df
ENDIF
Sfx_1stPlace:
	db	085h
	dw	$ffff & Sfx_1stPlace_Ch6
	db	006h
	dw	$ffff & Sfx_1stPlace_Ch7
	db	007h
	dw	$ffff & Sfx_1stPlace_Ch8
	db	008h
	dw	$ffff & Sfx_1stPlace_Ch9
	db	009h
	dw	$ffff & Sfx_1stPlace_Ch10
;----------------------------------------
Sfx_1stPlace_Ch6:
;----------------------------------------
	db	$df
	db	$da,$00,$7c
;	db	$e5,$77
	db	$db,$03
	db	$e1,$c,$34
; P1-2
	db	$d8,$c,$a1
	db	$d2,$31
	db	$d3,$c1
	db	$d2,$31
	db	$b0
	db	$60
	db	$30
	db	$60
	db	$dc,$91
	db	$30
	db	$d3,$b0
; P1-3
	db	$60
	db	$b0
	db	$dc,$81
	db	$d2,$30
	db	$d3,$b0
	db	$60
	db	$30
	db	$dc,$a1
	db	$11
	db	$51
	db	$81
; P1-4
	db	$dc,$a7
	db	$a9
	db	$05
	db	$ff
	db	$df
;----------------------------------------
Sfx_1stPlace_Ch7:
;----------------------------------------
	db	$df
	db	$db,$03
	db	$e1,$c,$34
; P2-2
	db	$d8,$c,$c1
	db	$d4,$c1
	db	$81
	db	$c1
	db	$dc,$b6
IFDEF BETA_SFX
	db	$d3,$35
ELSE
	db	$d3,$3b
ENDIF
; P2-3 -tie
IFDEF BETA_SFX
	db	$33
	db	$01
ENDIF
	db	$dc,$c1
	db	$51
	db	$81
	db	$d2,$11
; P2-4
	db	$dc,$b7
	db	$39
	db	$05
	db	$ff
	db	$df
;----------------------------------------
Sfx_1stPlace_Ch8:
;----------------------------------------
	db	$df
; P3-2
	db	$d8,$c,$77
	db	$d5,$80
	db	$00
	db	$80
	db	$00
	db	$80
	db	$00
	db	$b5
; P3-3
	db	$65
	db	$50
	db	$00
	db	$50
	db	$00
	db	$50
	db	$00
; P3-4
	db	$dc,$81
	db	$39
	db	$05
	db	$ff
	db	$df
;----------------------------------------
Sfx_1stPlace_Ch9:
;----------------------------------------
	db	$df
	db	$f0,$04
; P4-2
	db	$d8,$6
	db	$33
	db	$33
	db	$33
	db	$cb
; P4-3
	db	$c9
	db	$20
	db	$20
	db	$33
	db	$33
	db	$33
; P4-4
	db	$d8,$c
	db	$c9
	db	$05
	db	$ff
	db	$df
;----------------------------------------
Sfx_1stPlace_Ch10:
;----------------------------------------
	db	$df
;	db	$f0,$04
; P5-2
	db	$d8,$6
	db	$33
	db	$33
	db	$33
	db	$cb
; P5-3
	db	$c9
	db	$20
	db	$20
	db	$33
	db	$33
	db	$33
; P5-4
	db	$d8,$c
	db	$c9
	db	$05
	db	$ff
	db	$df
Sfx_ChooseACard:
	db	085h
	dw	$ffff & Sfx_ChooseACard_Ch6
	db	006h
	dw	$ffff & Sfx_ChooseACard_Ch7
	db	007h
	dw	$ffff & Sfx_ChooseACard_Ch8
	db	008h
	dw	$ffff & Sfx_ChooseACard_Ch9
	db	009h
	dw	$ffff & Sfx_ChooseACard_Ch10
;----------------------------------------
Sfx_ChooseACard_Ch6:
;----------------------------------------
	db	$df
	db	$da,$00,$98
;	db	$e5,$77
	db	$db,$03
; P1-2
	db	$d8,$6,$a4
	db	$d4,$50
	db	$00
	db	$50
	db	$00
	db	$d3,$23
	db	$d4,$60
	db	$00
	db	$60
	db	$00
	db	$d3,$33
	db	$d4,$50
	db	$00
	db	$50
	db	$00
	db	$d3,$53
	db	$dc,$71
	db	$d4,$50
	db	$70
	db	$90
	db	$a0
	db	$dc,$91
	db	$c0
	db	$d3,$20
	db	$30
	db	$40
; P1-3
	db	$dc,$a4
	db	$53
	db	$0b
	db	$ff
	db	$df
;----------------------------------------
Sfx_ChooseACard_Ch7:
;----------------------------------------
	db	$df
	db	$db,$03
; P2-2
	db	$d8,$6,$b4
	db	$d4,$a0
	db	$00
	db	$a0
	db	$00
	db	$d3,$53
	db	$d4,$a0
	db	$00
	db	$a0
	db	$00
	db	$d3,$63
	db	$d4,$a0
	db	$00
	db	$a0
	db	$00
	db	$d3,$83
	db	$97
; P2-3
	db	$a3
	db	$0b
	db	$ff
	db	$df
;----------------------------------------
Sfx_ChooseACard_Ch8:
;----------------------------------------
	db	$df
; P3-2
	db	$d8,$6,$33
	db	$d4,$20
	db	$00
	db	$20
	db	$00
	db	$d5,$a3
	db	$d4,$30
	db	$00
	db	$30
	db	$00
	db	$d5,$a3
	db	$d4,$10
	db	$00
	db	$10
	db	$00
	db	$d5,$a3
	db	$dc,$19
	db	$d4,$51
	db	$d5,$91
	db	$c1
	db	$91
; P3-3
	db	$dc,$81
	db	$a3
	db	$0b
	db	$ff
	db	$df
;----------------------------------------
Sfx_ChooseACard_Ch9:
;----------------------------------------
	db	$df
	db	$f0,$004
; P4-2
	db	$d8,$6
	db	$31
	db	$21
	db	$c3
	db	$31
	db	$21
	db	$c3
	db	$31
	db	$21
	db	$30
	db	$20
	db	$30
	db	$20
	db	$31
	db	$21
	db	$21
	db	$31
; P4-3
	db	$cf
	db	$ff
	db	$df
;----------------------------------------
Sfx_ChooseACard_Ch10:
;----------------------------------------
	db	$df
;	db	$f0,$004
; P5-2
	db	$d8,$6
	db	$31
	db	$21
	db	$c3
	db	$31
	db	$21
	db	$c3
	db	$31
	db	$21
	db	$30
	db	$20
	db	$30
	db	$20
	db	$31
	db	$21
	db	$21
	db	$31
; P5-3
	db	$cf
	db	$ff
	db	$df
Sfx_GetTm:
	db	085h
	dw	$ffff & Sfx_GetTm_Ch6
	db	006h
	dw	$ffff & Sfx_GetTm_Ch7
	db	007h
	dw	$ffff & Sfx_GetTm_Ch8
	db	008h
	dw	$ffff & Sfx_GetTm_Ch9
	db	009h
	dw	$ffff & Sfx_GetTm_Ch10
;----------------------------------------
Sfx_GetTm_Ch6:
;----------------------------------------
	db	$df
	db	$da,$00,$90
;	db	$e5,$77
	db	$db,$03
	db	$e1,$8,$24
; P1-2
	db	$d8,$c,$a3
	db	$d3,$30
	db	$00
	db	$d4,$c0
	db	$d3,$30
	db	$85
	db	$dc,$b1
	db	$51
	db	$71
	db	$81
; P1-3
	db	$dc,$a5
	db	$77
	db	$05
	db	$ff
	db	$df
;----------------------------------------
Sfx_GetTm_Ch7:
;----------------------------------------
	db	$df
	db	$db,$03
	db	$e1,$8,$24
; P2-2
	db	$d8,$c,$b3
	db	$d3,$80
	db	$00
	db	$30
	db	$80
	db	$c5
	db	$dc,$c1
	db	$a1
	db	$c1
	db	$d2,$11
; P2-3
	db	$dc,$b5
	db	$37
	db	$05
	db	$ff
	db	$df
;----------------------------------------
Sfx_GetTm_Ch8:
;----------------------------------------
	db	$df
; P3-2
	db	$d8,$6,$17
	db	$d5,$c1
	db	$01
	db	$81
	db	$c1
	db	$dc,$2f
	db	$d4,$33
	db	$d5,$80
	db	$00
	db	$80
	db	$00
	db	$83
	db	$d4,$11
	db	$01
	db	$d5,$c1
	db	$01
	db	$d4,$13
; P3-3
	db	$dc,$81
	db	$d5,$af
	db	$05
	db	$ff
	db	$df
;----------------------------------------
Sfx_GetTm_Ch9:
;----------------------------------------
	db	$df
	db	$f0,$04
; P4-2
	db	$d8,$6
	db	$33
	db	$21
	db	$31
	db	$c7
	db	$33
	db	$23
	db	$33
	db	$20
	db	$20
	db	$31
; P4-3
	db	$cf
	db	$05
	db	$ff
	db	$df
;----------------------------------------
Sfx_GetTm_Ch10:
;----------------------------------------
	db	$df
;	db	$f0,$04
; P5-2
	db	$d8,$6
	db	$33
	db	$21
	db	$31
	db	$c7
	db	$33
	db	$23
	db	$33
	db	$20
	db	$20
	db	$31
; P5-3
	db	$cf
	db	$05
	db	$ff
	db	$df
Sfx_GetBadge:
	db	085h
	dw	$ffff & Sfx_GetBadge_Ch6
	db	006h
	dw	$ffff & Sfx_GetBadge_Ch7
	db	007h
	dw	$ffff & Sfx_GetBadge_Ch8
	db	008h
	dw	$ffff & Sfx_GetBadge_Ch9
	db	009h
	dw	$ffff & Sfx_GetBadge_Ch10
;----------------------------------------
Sfx_GetBadge_Ch6:
;----------------------------------------
	db	$df
	db	$da,$00,$78
;	db	$e5,$77
	db	$db,$02
	db	$e1,$8,$24
; P1-2
	db	$d8,$6,$92
	db	$d3,$62
	db	$fe
	dw	$ffff & @sub2b
; P1-3
	db	$b2
	db	$d9,$02
	db	$fe
	dw	$ffff & @sub2b
	db	$d9,$00
; P1-4
	db	$dc,$a7
	db	$af
	db	$05
	db	$ff
	db	$df
@sub2b:
	db	$04
	db	$d4,$61
	db	$91
	db	$d3,$21
	db	$61
	db	$21
	db	$d4,$61
	db	$91
	db	$d3,$21
	db	$d4,$61
	db	$91
	db	$d3,$21
	db	$61
	db	$ff
;----------------------------------------
Sfx_GetBadge_Ch7:
;----------------------------------------
	db	$df
	db	$db,$03
	db	$e1,$8,$24
; P2-2
	db	$d8,$6,$b5
	db	$d2,$22
	db	$02
	db	$d3,$90
	db	$00
	db	$97
	db	$d4,$21
	db	$01
	db	$d5,$91
	db	$00
	db	$dc,$95
	db	$d2,$10
	db	$dc,$b5
	db	$21
	db	$01
	db	$31
	db	$01
; P2-3
	db	$42
	db	$02
	db	$d3,$b0
	db	$00
	db	$b7
	db	$d4,$41
	db	$01
	db	$d5,$b1
	db	$00
	db	$dc,$95
	db	$d2,$30
	db	$dc,$b5
	db	$47
; P2-4
	db	$6f
	db	$05
	db	$ff
	db	$df
;----------------------------------------
Sfx_GetBadge_Ch8:
;----------------------------------------
	db	$df
; P3-2
	db	$d8,$6,$4f
	db	$d5,$92
	db	$02
	db	$d4,$20
	db	$00
	db	$27
	db	$91
	db	$01
	db	$61
	db	$01
	db	$dc,$13
	db	$21
	db	$11
	db	$d5,$b1
	db	$91
; P3-3
	db	$dc,$4f
	db	$82
	db	$02
	db	$d4,$40
	db	$00
	db	$47
	db	$b1
	db	$01
	db	$81
	db	$01
	db	$dc,$13
	db	$81
	db	$61
	db	$81
	db	$41
; P3-4
	db	$dc,$81
	db	$6f
	db	$05
	db	$ff
	db	$df
;----------------------------------------
Sfx_GetBadge_Ch9:
;----------------------------------------
	db	$df
	db	$f0,$04
; P4-2-3
	db	$d8,$6
@loop:
	db	$cb
	db	$30
	db	$30
	db	$31
	db	$33
	db	$33
	db	$30
	db	$20
	db	$20
	db	$20
	db	$20
	db	$20
	db	$20
	db	$20
	db	$fd,2
	dw	$ffff & @loop
; P4-4
	db	$cf
	db	$05
	db	$ff
	db	$df
;----------------------------------------
Sfx_GetBadge_Ch10:
;----------------------------------------
	db	$df
;	db	$f0,$04
; P5-2-3
	db	$d8,$6
@loop:
	db	$cb
	db	$30
	db	$30
	db	$31
	db	$33
	db	$33
	db	$30
	db	$20
	db	$20
	db	$20
	db	$20
	db	$20
	db	$20
	db	$20
	db	$fd,2
	dw	$ffff & @loop
; P5-4
	db	$cf
	db	$05
	db	$ff
	db	$df
Sfx_QuitSlots:
	db	085h
	dw	$ffff & Sfx_QuitSlots_Ch6
	db	006h
	dw	$ffff & Sfx_QuitSlots_Ch7
	db	007h
	dw	$ffff & Sfx_QuitSlots_Ch8
	db	008h
	dw	$ffff & Sfx_QuitSlots_Ch9
	db	009h
	dw	$ffff & Sfx_QuitSlots_Ch10
;----------------------------------------
Sfx_QuitSlots_Ch6:
;----------------------------------------
	db	$df
	db	$da,$00,$90
;	db	$e5,$77
	db	$db,$02
; P1-2
	db	$d8,$8,$82
	db	$d4,$91
	db	$03
	db	$21
	db	$61
	db	$91
	db	$61
	db	$91
	db	$d3,$31
	db	$61
	db	$31
	db	$d4,$c1
; P1-3
	db	$b1
	db	$71
	db	$b1
	db	$91
	db	$71
	db	$dc,$97
	db	$9d
	db	$05
	db	$ff
	db	$df
;----------------------------------------
Sfx_QuitSlots_Ch7:
;----------------------------------------
	db	$df
	db	$db,$02
; P2-2
	db	$d8,$8,$b3
	db	$02
	db	$d3,$c0
	db	$d2,$11
	db	$d3,$93
	db	$b1
	db	$dc,$c1
	db	$c3
	db	$b1
	db	$93
	db	$61
; P2-3
	db	$73
	db	$61
	db	$43
	db	$dc,$b7
	db	$6d
	db	$05
	db	$ff
	db	$df
;----------------------------------------
Sfx_QuitSlots_Ch8:
;----------------------------------------
	db	$df
; P3-2
	db	$d8,$8,$1f
	db	$d4,$21
	db	$01
	db	$61
	db	$41
	db	$21
	db	$91
	db	$31
	db	$01
	db	$31
	db	$d5,$91
	db	$c1
	db	$d4,$31
; P3-3
	db	$41
	db	$01
	db	$d5,$b1
	db	$d4,$11
	db	$01
	db	$dc,$81
	db	$2d
	db	$05
	db	$ff
	db	$df
;----------------------------------------
Sfx_QuitSlots_Ch9:
;----------------------------------------
	db	$df
	db	$f0,$03
; P4-2
	db	$d8,$8
	db	$83
	db	$81
	db	$83
	db	$81
	db	$83
	db	$81
	db	$75
; P4-3
	db	$83
	db	$81
	db	$83
	db	$cd
	db	$05
	db	$ff
	db	$df
;----------------------------------------
Sfx_QuitSlots_Ch10:
;----------------------------------------
	db	$df
;	db	$f0,$03
; P5-2
	db	$d8,$8
	db	$45
	db	$33
	db	$41
	db	$43
	db	$41
	db	$33
	db	$41
; P5-3
	db	$33
	db	$41
	db	$33
	db	$cd
	db	$05
	db	$ff
	db	$df
Sfx_DexFanfareLessThan20:
	db	085h
	dw	$ffff & Sfx_DexFanfareLessThan20_Ch6
	db	006h
	dw	$ffff & Sfx_DexFanfareLessThan20_Ch7
	db	007h
	dw	$ffff & Sfx_DexFanfareLessThan20_Ch8
	db	008h
	dw	$ffff & Sfx_DexFanfareLessThan20_Ch9
	db	009h
	dw	$ffff & Sfx_DexFanfareLessThan20_Ch10
;----------------------------------------
Sfx_DexFanfareLessThan20_Ch6:
;----------------------------------------
	db	$df
	db	$da,$00,$7c
;	db	$e5,$77
; P1-2
	db	$d8,$8,$b1
	db	$d4,$a3
	db	$71
	db	$a3
	db	$71
	db	$25
	db	$85
; P1-3
	db	$75
	db	$51
	db	$51
	db	$51
	db	$35
; P1-4
	db	$ff
	db	$df
;----------------------------------------
Sfx_DexFanfareLessThan20_Ch7:
;----------------------------------------
	db	$df
; P2-2
	db	$d8,$8,$c1
	db	$d4,$c3
	db	$a1
	db	$c3
	db	$a1
	db	$45
	db	$b5
; P2-3
	db	$a5
	db	$a1
	db	$a1
	db	$81
	db	$75
; P2-4
	db	$ff
	db	$df
;----------------------------------------
Sfx_DexFanfareLessThan20_Ch8:
;----------------------------------------
	db	$df
; P3-2
	db	$d8,$8,$4f
	db	$d3,$35
	db	$d4,$a1
	db	$01
	db	$dc,$1a
	db	$a1
	db	$dc,$35
	db	$b3
	db	$dc,$1a
	db	$81
	db	$dc,$4f
	db	$d3,$45
; P3-3
	db	$31
	db	$03
	db	$d4,$50
	db	$00
	db	$70
	db	$00
	db	$80
	db	$00
	db	$a1
	db	$05
; P3-4
	db	$ff
	db	$df
;----------------------------------------
Sfx_DexFanfareLessThan20_Ch9:
;----------------------------------------
	db	$df
	db	$f0,$04
; P4-2
	db	$d8,$c,$25
	db	$0f
; P4-3
	db	$0b
; P4-4
	db	$ff
	db	$df
;----------------------------------------
Sfx_DexFanfareLessThan20_Ch10:
;----------------------------------------
	db	$df
;	db	$f0,$04
; P5-2
	db	$d8,$c,$25
	db	$0f
; P5-3
	db	$0b
; P5-4
	db	$ff
	db	$df
Sfx_DexFanfare140169:
	db	085h
	dw	$ffff & Sfx_DexFanfare140169_Ch6
	db	006h
	dw	$ffff & Sfx_DexFanfare140169_Ch7
	db	007h
	dw	$ffff & Sfx_DexFanfare140169_Ch8
	db	008h
	dw	$ffff & Sfx_DexFanfare140169_Ch9
	db	009h
	dw	$ffff & Sfx_DexFanfare140169_Ch10
;----------------------------------------
Sfx_DexFanfare140169_Ch6:
;----------------------------------------
	db	$df
	db	$da,$00,$78
;	db	$e5,$77
	db	$db,$03
	db	$e1,$12,$34
	db	$d8,$6,$b1
	db	$07
; P1-2
	db	$d4,$53
	db	$53
	db	$a3
	db	$d3,$23
	db	$dc,$a4
	db	$33
	db	$13
	db	$d4,$a1
	db	$81
	db	$73
; P1-3
	db	$8f
	db	$d5,$c7
	db	$07
; P1-4
	db	$ff
	db	$df
;----------------------------------------
Sfx_DexFanfare140169_Ch7:
;----------------------------------------
	db	$df
; P2-1
	db	$db,$02
	db	$e1,$12,$34
	db	$d8,$6,$c1
	db	$d3,$53
	db	$73
; P2-2
	db	$83
	db	$83
	db	$83
	db	$83
	db	$dc,$b4
	db	$73
	db	$83
	db	$a3
	db	$d2,$13
; P2-3
	db	$d3,$cf
	db	$87
	db	$07
; P2-4
	db	$ff
	db	$df
;----------------------------------------
Sfx_DexFanfare140169_Ch8:
;----------------------------------------
	db	$df
; P3-1
	db	$d8,$c,$13
	db	$03
; P3-2
	db	$d5,$a0
	db	$d4,$20
	db	$50
	db	$dc,$3b
	db	$a2
	db	$20
	db	$00
	db	$dc,$13
	db	$30
	db	$70
	db	$a0
	db	$dc,$3b
	db	$d3,$32
	db	$d5,$a0
	db	$00
; P3-3
	db	$dc,$13
	db	$80
	db	$c0
	db	$d4,$30
	db	$dc,$3b
	db	$82
	db	$d5,$c0
	db	$00
	db	$dc,$81
	db	$83
	db	$03
; P3-4
	db	$ff
	db	$df
;----------------------------------------
Sfx_DexFanfare140169_Ch9:
;----------------------------------------
	db	$df
	db	$f0,$04
; P4-1
	db	$d8,$c
	db	$13
; P4-2-3
@loop:
	db	$33
	db	$20
	db	$20
	db	$20
	db	$20
	db	$fd,3
	dw	$ffff & @loop
	db	$37
; P4-4
	db	$ff
	db	$df
;----------------------------------------
Sfx_DexFanfare140169_Ch10:
;----------------------------------------
	db	$df
;	db	$f0,$04
; P5-1
	db	$d8,$c
	db	$13
; P5-2-3
@loop:
	db	$33
	db	$20
	db	$20
	db	$20
	db	$20
	db	$fd,3
	dw	$ffff & @loop
	db	$37
; P5-4
	db	$ff
	db	$df
Sfx_DexFanfare170199:
	db	085h
	dw	$ffff & Sfx_DexFanfare170199_Ch6
	db	006h
	dw	$ffff & Sfx_DexFanfare170199_Ch7
	db	007h
	dw	$ffff & Sfx_DexFanfare170199_Ch8
	db	008h
	dw	$ffff & Sfx_DexFanfare170199_Ch9
	db	009h
	dw	$ffff & Sfx_DexFanfare170199_Ch10
;----------------------------------------
Sfx_DexFanfare170199_Ch6:
;----------------------------------------
	db	$df
	db	$da,$00,$70
;	db	$e5,$77
	db	$e1,$12,$34
	db	$db,$03
; P1-1
	db	$d8,$8,$b4
	db	$d4,$80
	db	$00
	db	$80
	db	$00
; P1-2
	db	$85
	db	$01
	db	$80
	db	$00
	db	$80
	db	$00
	db	$dc,$c1
	db	$63
	db	$83
	db	$a3
; P1-3
	db	$d8,$c,$a8
	db	$bb
	db	$03
; P1-4
	db	$ff
	db	$df
;----------------------------------------
Sfx_DexFanfare170199_Ch7:
;----------------------------------------
	db	$df
	db	$e1,$12,$34
	db	$db,$03
; P2-1
	db	$d8,$8,$c4
	db	$d4,$b0
	db	$00
	db	$b0
	db	$00
; P2-2
	db	$b5
	db	$01
	db	$b0
	db	$00
	db	$b0
	db	$00
	db	$dc,$d1
	db	$d3,$43
	db	$43
	db	$43
; P2-3
	db	$d8,$c,$b8
	db	$3b
	db	$03
; P2-4
	db	$ff
	db	$df
;----------------------------------------
Sfx_DexFanfare170199_Ch8:
;----------------------------------------
	db	$df
; P3-1
	db	$d8,$8,$81
	db	$d4,$40
	db	$00
	db	$40
	db	$00
; P3-2
	db	$45
	db	$01
	db	$40
	db	$00
	db	$40
	db	$00
	db	$11
	db	$01
	db	$11
	db	$01
	db	$11
	db	$01
; P3-3
	db	$d8,$c,$81
	db	$d5,$bb
	db	$03
; P3-4
	db	$ff
	db	$df
;----------------------------------------
Sfx_DexFanfare170199_Ch9:
;----------------------------------------
	db	$df
	db	$f0,$04
; P4-1
	db	$d8,$8
	db	$31
	db	$31
; P4-2
	db	$33
	db	$33
	db	$31
	db	$31
	db	$33
	db	$33
	db	$20
	db	$20
	db	$20
	db	$20
; P4-3
	db	$d8,$c
	db	$cf
; P4-4
	db	$ff
	db	$fd
;----------------------------------------
Sfx_DexFanfare170199_Ch10:
;----------------------------------------
	db	$df
;	db	$f0,$04
; P5-1
	db	$d8,$8
	db	$31
	db	$31
; P5-2
	db	$33
	db	$33
	db	$31
	db	$31
	db	$33
	db	$33
	db	$20
	db	$20
	db	$20
	db	$20
; P5-3
	db	$d8,$c
	db	$cf
; P5-4
	db	$ff
	db	$fd
Sfx_DexFanfare200229:
	db	085h
	dw	$ffff & Sfx_DexFanfare200229_Ch6
	db	006h
	dw	$ffff & Sfx_DexFanfare200229_Ch7
	db	007h
	dw	$ffff & Sfx_DexFanfare200229_Ch8
	db	008h
	dw	$ffff & Sfx_DexFanfare200229_Ch9
	db	009h
	dw	$ffff & Sfx_DexFanfare200229_Ch10
;----------------------------------------
Sfx_DexFanfare200229_Ch6:
;----------------------------------------
	db	$df
	db	$da,$00,$7c
;	db	$e5,$77
	db	$e1,$12,$34
	db	$db,$03
; P1-1
	db	$d8,$8,$b2
	db	$d4,$11
	db	$51
	db	$81
; P1-2
	db	$d3,$13
	db	$d4,$c3
	db	$a3
	db	$b3
	db	$d3,$43
	db	$83
; P1-3
	db	$d8,$c,$a8
	db	$7b
	db	$03
; P1-4
	db	$ff
	db	$df
;----------------------------------------
Sfx_DexFanfare200229_Ch7:
;----------------------------------------
	db	$df
	db	$e1,$12,$34
	db	$db,$03
; P2-1
	db	$d8,$8,$b2
	db	$d4,$51
	db	$81
	db	$d3,$11
; P2-2
	db	$53
	db	$33
	db	$13
	db	$43
	db	$83
	db	$b3
; P2-3
	db	$d8,$c,$b8
	db	$ab
	db	$03
; P2-4
	db	$ff
	db	$df
;----------------------------------------
Sfx_DexFanfare200229_Ch8:
;----------------------------------------
	db	$df
; P3-1
	db	$d8,$8,$1a
	db	$d4,$10
	db	$00
	db	$10
	db	$00
	db	$10
	db	$00
; P3-2
	db	$11
	db	$51
	db	$81
	db	$d3,$11
	db	$dc,$35
	db	$d4,$13
	db	$dc,$1a
	db	$41
	db	$81
	db	$b1
	db	$d3,$41
	db	$dc,$35
	db	$d4,$43
; P3-3
	db	$dc,$1a
	db	$30
	db	$00
	db	$30
	db	$00
	db	$d5,$a1
	db	$d4,$30
	db	$00
	db	$30
	db	$00
	db	$d5,$a1
	db	$dc,$81
	db	$d4,$35
	db	$05
; P3-4
	db	$ff
	db	$df
;----------------------------------------
Sfx_DexFanfare200229_Ch9:
;----------------------------------------
	db	$df
	db	$f0,$04
; P4-1
	db	$d8,$8
	db	$20
	db	$20
	db	$20
	db	$20
	db	$20
	db	$20
; P4-2
	db	$33
	db	$33
	db	$33
	db	$33
	db	$33
	db	$20
	db	$20
	db	$20
	db	$20
; P4-3
	db	$33
	db	$31
	db	$31
	db	$31
	db	$31
	db	$cb
; P4-4
	db	$ff
	db	$df
;----------------------------------------
Sfx_DexFanfare200229_Ch10:
;----------------------------------------
	db	$df
;	db	$f0,$04
; P5-1
	db	$d8,$8
	db	$20
	db	$20
	db	$20
	db	$20
	db	$20
	db	$20
; P5-2
	db	$33
	db	$33
	db	$33
	db	$33
	db	$33
	db	$20
	db	$20
	db	$20
	db	$20
; P5-3
	db	$33
	db	$31
	db	$31
	db	$31
	db	$31
	db	$cb
; P5-4
	db	$ff
	db	$df
Sfx_DexFanfare230Plus:
	db	085h
	dw	$ffff & Sfx_DexFanfare230Plus_Ch6
	db	006h
	dw	$ffff & Sfx_DexFanfare230Plus_Ch7
	db	007h
	dw	$ffff & Sfx_DexFanfare230Plus_Ch8
	db	008h
	dw	$ffff & Sfx_DexFanfare230Plus_Ch9
	db	009h
	dw	$ffff & Sfx_DexFanfare230Plus_Ch10
;----------------------------------------
Sfx_DexFanfare230Plus_Ch6:
;----------------------------------------
	db	$df
	db	$da,$00,$70
;	db	$e5,$77
	db	$e1,$12,$34
	db	$db,$03
; P1-1
	db	$d8,$8,$a5
	db	$d4,$c1
	db	$81
	db	$c1
; P1-2
	db	$d3,$3d
	db	$01
	db	$db,$02
	db	$dc,$85
	db	$d5,$60
	db	$00
	db	$65
; P1-3
	db	$dc,$a5
	db	$db,$03
	db	$d4,$a1
	db	$81
	db	$69
	db	$01
	db	$db,$02
	db	$dc,$85
	db	$d5,$60
	db	$00
	db	$65
; P1-4
	db	$dc,$a5
	db	$db,$03
	db	$d4,$bb
	db	$dc,$b2
	db	$83
	db	$a3
	db	$b3
; P1-5
	db	$d8,$c,$a8
	db	$ad
	db	$01
; P1-6
	db	$ff
	db	$df
;----------------------------------------
Sfx_DexFanfare230Plus_Ch7:
;----------------------------------------
	db	$df
	db	$e1,$12,$34
	db	$db,$03
; P2-1
	db	$d8,$8,$b5
	db	$d3,$81
	db	$31
	db	$81
; P2-2
	db	$6d
	db	$03
	db	$61
	db	$51
	db	$31
; P2-3
	db	$11
	db	$d4,$c1
	db	$a9
	db	$03
	db	$a1
	db	$d3,$11
	db	$31
; P2-4
	db	$4b
	db	$dc,$c2
	db	$83
	db	$83
	db	$83
; P2-5
	db	$d8,$c,$b8
	db	$7d
	db	$01
; P2-6
	db	$ff
	db	$df
;----------------------------------------
Sfx_DexFanfare230Plus_Ch8:
;----------------------------------------
	db	$df
; P3-1
	db	$d8,$8,$49
	db	$d4,$85
; P3-2
	db	$dc,$30
	db	$b3
	db	$dc,$18
	db	$61
	db	$dc,$49
	db	$b0
	db	$00
	db	$b0
	db	$00
	db	$b0
	db	$00
	db	$b1
	db	$01
	db	$30
	db	$00
	db	$35
; P3-3
	db	$dc,$30
	db	$a3
	db	$dc,$18
	db	$61
	db	$dc,$49
	db	$a0
	db	$00
	db	$a0
	db	$00
	db	$a0
	db	$00
	db	$a1
	db	$01
	db	$10
	db	$00
	db	$15
; P3-4
	db	$dc,$30
	db	$83
	db	$dc,$18
	db	$41
	db	$dc,$30
	db	$80
	db	$00
	db	$80
	db	$00
	db	$80
	db	$00
	db	$b3
	db	$83
	db	$43
; P3-5
	db	$d8,$c,$81
	db	$3d
	db	$01
; P3-6
	db	$ff
	db	$df
;----------------------------------------
Sfx_DexFanfare230Plus_Ch9:
;----------------------------------------
	db	$df
	db	$f0,$04
; P4-1
	db	$d8,$8
	db	$31
	db	$31
	db	$31
; P4-2-3
@loop2:
	db	$35
	db	$31
	db	$31
	db	$31
	db	$35
	db	$20
	db	$20
	db	$20
	db	$20
	db	$20
	db	$20
	db	$fd,2
	dw	$ffff & @loop2
; P4-4
	db	$35
	db	$31
	db	$31
	db	$20
	db	$20
	db	$33
	db	$33
	db	$33
; P4-5
@loop4:
	db	$20
	db	$fd,18
	dw	$ffff & @loop4
	db	$35
; P4-6
	db	$ff
	db	$df
;----------------------------------------
Sfx_DexFanfare230Plus_Ch10:
;----------------------------------------
	db	$df
;	db	$f0,$04
; P5-1
	db	$d8,$8
	db	$31
	db	$31
	db	$31
; P5-2-3
@loop2:
	db	$35
	db	$31
	db	$31
	db	$31
	db	$35
	db	$20
	db	$20
	db	$20
	db	$20
	db	$20
	db	$20
	db	$fd,2
	dw	$ffff & @loop2
; P5-4
	db	$35
	db	$31
	db	$31
	db	$20
	db	$20
	db	$33
	db	$33
	db	$33
; P5-5
@loop4:
	db	$20
	db	$fd,18
	dw	$ffff & @loop4
	db	$35
; P5-6
	db	$ff
	db	$df
Sfx_RBYPokemonCaught:
	db	0c5h
	dw	$ffff & Sfx_RBYPokemonCaught_Ch6
	db	006h
	dw	$ffff & Sfx_RBYPokemonCaught_Ch7
	db	007h
	dw	$ffff & Sfx_RBYPokemonCaught_Ch8
	db	008h
	dw	$ffff & Sfx_RBYPokemonCaught_Ch9
	db	009h
	dw	$ffff & Sfx_RBYPokemonCaught_Ch10
;----------------------------------------
Sfx_RBYPokemonCaught_Ch6:
;----------------------------------------
	db	$df
	db	$da,$00,$7c
;	db	$e5,$77
	db	$e1,$8,$27
	db	$db,$02
; P1-2
	db	$d8,$c,$b1
	db	$d3,$61
	db	$60
	db	$60
	db	$11
	db	$10
	db	$10
	db	$51
	db	$80
	db	$80
	db	$11
	db	$50
	db	$50
; P1-3
	db	$dc,$a5
	db	$6f
; P1-4
	db	$ff
;----------------------------------------
Sfx_RBYPokemonCaught_Ch7:
;----------------------------------------
	db	$df
	db	$e1,$8,$27
	db	$db,$02
; P2-2
	db	$d8,$c,$c1
	db	$d3,$a1
	db	$a0
	db	$a0
	db	$61
	db	$60
	db	$60
	db	$d2,$11
	db	$10
	db	$10
	db	$d3,$b1
	db	$b0
	db	$b0
; P2-3
	db	$dc,$b5
	db	$af
; P2-4
	db	$ff
;----------------------------------------
Sfx_RBYPokemonCaught_Ch8:
;----------------------------------------
	db	$df
; P3-2
	db	$d8,$c,$81
	db	$d3,$67
	db	$dc,$27
	db	$11
	db	$51
	db	$81
	db	$b1
; P3-3
	db	$dc,$81
	db	$a4
	db	$01
	db	$08
; P3-4
	db	$ff
;----------------------------------------
Sfx_RBYPokemonCaught_Ch9:
;----------------------------------------
	db	$df
	db	$f0,$04
; P4-2
	db	$d8,$c
	db	$1f
; P4-3
	db	$0f
; P4-4
	db	$ff
;----------------------------------------
Sfx_RBYPokemonCaught_Ch10:
;----------------------------------------
	db	$df
; P5-2
	db	$d8,$c
	db	$1f
; P5-3
	db	$0f
; P5-4
	db	$ff





