Music_SproutTower:
	db	080h
	dw	$ffff & Music_SproutTower_Ch1
	db	001h
	dw	$ffff & Music_SproutTower_Ch2
	db	002h
	dw	$ffff & Music_SproutTower_Ch3
	db	003h
	dw	$ffff & Music_SproutTower_Ch4
	db	004h
	dw	$ffff & Music_SproutTower_Ch5
;----------------------------------------
Music_SproutTower_Ch1:
;----------------------------------------
	db	$da,$00,$b0
;	db	$e5,$77
	db	$db,$03
	db	$e6,$00,$02
	db	$e1,$8,$45
;	db	$ef,$0f
	db	$d8,$c,$a3
; P1-2
	db	$0f
; P1-3
	db	$0f
@loop10:
; P1-4
	db	$05
	db	$d4,$61
	db	$73
	db	$73
; P1-5
	db	$63
	db	$13
	db	$23
	db	$43
; P1-6
	db	$43
	db	$43
	db	$73
	db	$73
; P1-7
	db	$61
	db	$71
	db	$91
	db	$71
	db	$63
	db	$71
	db	$49
; P1-8 - tie
	db	$71
	db	$61
	db	$41
	db	$21
; P1-9
	db	$dc,$a5
	db	$17
	db	$dc,$a3
	db	$21
	db	$11
	db	$d5,$b1
	db	$d4,$21
; P1-10
	db	$dc,$a7
	db	$1f
; P1-11
	db	$dc,$a3
	db	$63
	db	$63
	db	$73
	db	$73
; P1-12
	db	$63
	db	$63
	db	$43
	db	$43
	db	$fd,0
	dw	$ffff & @loop10
;----------------------------------------
Music_SproutTower_Ch2:
;----------------------------------------
	db	$db,$03
	db	$e6,$00,$01
	db	$e1,$08,$48
; P2-2
	db	$d8,$c,$b2
	db	$d4,$63
	db	$63
	db	$73
	db	$73
; P2-3
	db	$63
	db	$63
	db	$43
	db	$43
@loop20:
	db	$dc,$b5
; P2-4
	db	$d3,$13
	db	$d4,$b3
	db	$d3,$23
	db	$11
	db	$d4,$b1
; P2-5
	db	$d3,$11
	db	$d4,$b1
	db	$73
	db	$dc,$b7
	db	$67
; P2-6
	db	$dc,$b5
	db	$73
	db	$b3
	db	$d3,$11
	db	$21
	db	$11
	db	$d4,$b1
; P2-7
	db	$d3,$11
	db	$21
	db	$41
	db	$21
	db	$17
; P2-8
	db	$dc,$b5
	db	$21
	db	$11
	db	$d4,$b1
	db	$71
	db	$dc,$b7
	db	$b7
; P2-9
	db	$dc,$b5
	db	$d3,$11
	db	$d4,$b1
	db	$71
	db	$41
	db	$dc,$b7
	db	$67
; P2-10
	db	$dc,$b3
	db	$63
	db	$63
	db	$73
	db	$b1
	db	$60
	db	$b0
; P2-11
	db	$dc,$b7
	db	$d3,$1f
; P2-12
	db	$0f
	db	$fd,0
	dw	$ffff & @loop20
;----------------------------------------
Music_SproutTower_Ch3:
;----------------------------------------
	db	$e1,$14,$e8
	db	$d8,$c,$3f
; P3-2
	db	$d4,$61
	db	$01
	db	$11
	db	$61
	db	$71
	db	$41
	db	$01
	db	$71
; P3-3
	db	$61
	db	$01
	db	$11
	db	$61
	db	$71
	db	$41
	db	$01
	db	$71
;	db	$ef,$f0
@loop30:
; P3-4
	db	$03
	db	$11
	db	$61
	db	$71
	db	$41
	db	$01
	db	$71
; P3-5
	db	$61
	db	$01
	db	$11
	db	$61
	db	$71
	db	$41
	db	$01
	db	$61
; P3-6
	db	$41
	db	$01
	db	$d5,$b1
	db	$d4,$41
	db	$71
	db	$41
	db	$01
	db	$71
; P3-7
	db	$61
	db	$01
	db	$11
	db	$61
	db	$71
	db	$41
	db	$01
	db	$71
; P3-8
	db	$dc,$81
	db	$67
	db	$dc,$7f
	db	$73
	db	$b3
; P3-9
	db	$dc,$81
	db	$47
	db	$dc,$7f
	db	$63
	db	$73
; P3-10
	db	$dc,$81
	db	$6f
; P3-11
	db	$dc,$3f
	db	$61
	db	$01
	db	$11
	db	$61
	db	$71
	db	$41
	db	$01
	db	$61
; P3-12
	db	$61
	db	$01
	db	$11
	db	$61
	db	$71
	db	$41
	db	$01
	db	$61
	db	$fd,0
	dw	$ffff & @loop30
;----------------------------------------
Music_SproutTower_Ch4:
;----------------------------------------
	db	$e3,$000
	db	$d8,$c
	db	$03
@loop40:
	db	$73
	db	$73
	db	$73
	db	$73
	db	$fd,0
	dw	$ffff & @loop40
;----------------------------------------
Music_SproutTower_Ch5:
;----------------------------------------
	db	$d8,$c
	db	$03
@loop40:
	db	$03
	db	$43
	db	$01
	db	$41
	db	$03
	db	$fd,0
	dw	$ffff & @loop40


