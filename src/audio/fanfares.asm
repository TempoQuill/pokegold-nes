SFX_LevelUp:
	db	085h
	dw	SFX_LevelUp_Ch6
	db	006h
	dw	SFX_LevelUp_Ch7
	db	007h
	dw	SFX_LevelUp_Ch8
	db	008h
	dw	SFX_LevelUp_Ch9
	db	009h
	dw	SFX_LevelUp_Ch10
;----------------------------------------
SFX_LevelUp_Ch6:
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
SFX_LevelUp_Ch7:
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
SFX_LevelUp_Ch8:
;----------------------------------------
	db	$df
; P3-2
	db	$d8,$8,$25
	db	$d3,$90
	db	$00
	db	$90
	db	$00
	db	$90
	db	$00
	db	$dc,$35
	db	$d2,$57
	db	$03
	db	$ff
;----------------------------------------
SFX_LevelUp_Ch9:
;----------------------------------------
	db	$df
	db	$f0,$04
; P4-1
	db	$d8,$c
	db	$1b
	db	$ff
;----------------------------------------
SFX_LevelUp_Ch10:
;----------------------------------------
	db	$df
; P5-1
	db	$d8,$c
	db	$1b
	db	$ff
SFX_Item:
	db	085h
	dw	SFX_Item_Ch6
	db	006h
	dw	SFX_Item_Ch7
	db	007h
	dw	SFX_Item_Ch8
	db	008h
	dw	SFX_Item_Ch9
	db	009h
	dw	SFX_Item_Ch10
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
	db	$d8,$8,$25
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
	db	$dc,$35
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
	dw	SFX_Evolution_Ch6
	db	006h
	dw	SFX_Evolution_Ch7
	db	007h
	dw	SFX_Evolution_Ch8
	db	008h
	dw	SFX_Evolution_Ch9
	db	009h
	dw	SFX_Evolution_Ch10
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
	db	$dc,$3f
	db	$15
	db	$dc,$15
	db	$d5,$a1
	db	$d4,$11
	db	$61
; P3-3
	db	$dc,$3f
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
	dw	Sfx_DexFanfare2049_Ch6
	db	006h
	dw	Sfx_DexFanfare2049_Ch7
	db	007h
	dw	Sfx_DexFanfare2049_Ch8
	db	008h
	dw	Sfx_DexFanfare2049_Ch9
	db	009h
	dw	Sfx_DexFanfare2049_Ch10
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
	db	$d8,$c,$7f
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
	dw	Sfx_DexFanfare80109_Ch6
	db	006h
	dw	Sfx_DexFanfare80109_Ch7
	db	007h
	dw	Sfx_DexFanfare80109_Ch8
	db	008h
	dw	Sfx_DexFanfare80109_Ch9
	db	009h
	dw	Sfx_DexFanfare80109_Ch10
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
	db	$d8,$c,$1c
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
	db	$dc,$54
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
	dw	Sfx_Pokeflute_Ch8
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
	dw	Sfx_Fanfare_Ch6
	db	006h
	dw	Sfx_Fanfare_Ch7
	db	007h
	dw	Sfx_Fanfare_Ch8
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

	db	$d8,$4,$38
	db	$63
	db	$43
	db	$23
	db	$b3
	db	$93
	db	$63

	db	$d8,$4,$54
	db	$75
	db	$ff


