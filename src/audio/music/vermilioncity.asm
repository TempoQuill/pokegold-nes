Music_VermilionCity:
	db	040h
	dw	$ffff & Music_VermilionCity_Ch1
	db	001h
	dw	$ffff & Music_VermilionCity_Ch2
	db	002h
	dw	$ffff & Music_VermilionCity_Ch3
	db	003h
;----------------------------------------
Music_VermilionCity_Ch1:
;----------------------------------------
;	db	$ef,$0f
	db	$da,$00,$b0
;	db	$e5,$77
	db	$db,$02
	db	$d8,$c,$65
; P1-0
	db	$d3,$c3
	db	$93
	db	$73
	db	$53
	db	$33
	db	$d4,$c3
	db	$a1
	db	$c0
	db	$d3,$30
	db	$50
	db	$90
	db	$c0
	db	$d2,$30
; P1-1
	db	$e1,$10,$23
; P1-2
@loop:
	db	$db,$01
	db	$d8,$c,$85
	db	$fe
	dw	$ffff & @sub2
; P1-3
	db	$63
	db	$d3,$33
	db	$23
	db	$53
; P1-4
	db	$fe
	dw	$ffff & @sub2
; P1-5
	db	$fe
	dw	$ffff & @sub5
; P1-6
	db	$db,$02
	db	$d8,$c,$85
	db	$fe
	dw	$ffff & @sub2
; P1-7
	db	$63
	db	$d3,$33
	db	$50
	db	$20
	db	$d4,$a0
	db	$50
	db	$d3,$20
	db	$d4,$a0
	db	$50
	db	$10
; P1-8
	db	$fe
	dw	$ffff & @sub2
; P1-9
	db	$fe
	dw	$ffff & @sub5
; P1-10
	db	$dc,$93
	db	$db,$00
	db	$01
	db	$71
	db	$01
	db	$71
	db	$01
	db	$71
	db	$01
	db	$71
; P1-11
	db	$fe
	dw	$ffff & @sub11
; P1-13
	db	$fe
	dw	$ffff & @sub11
; P1-15
	db	$dc,$87
	db	$db,$02
	db	$d3,$37
	db	$d4,$97
; P1-16
	db	$57
	db	$c7
; P1-17
	db	$a3
	db	$93
	db	$73
	db	$53
; P1-18
	db	$d5,$c3
	db	$93
	db	$c3
	db	$d4,$33
; P1-19
	db	$fd,0
	dw	$ffff & @loop
@sub2:
	db	$d4,$23
	db	$53
	db	$71
	db	$a1
	db	$51
	db	$91
	db	$ff
@sub5:
	db	$31
	db	$61
	db	$a1
	db	$d3,$31
	db	$51
	db	$21
	db	$d4,$a1
	db	$51
	db	$ff
@sub11:
	db	$01
	db	$71
	db	$a1
	db	$71
	db	$d3,$31
	db	$d4,$71
	db	$a1
	db	$71
; P1-12
	db	$01
	db	$91
	db	$c1
	db	$91
	db	$d3,$51
	db	$d4,$91
	db	$c1
	db	$91
	db	$ff
;----------------------------------------
Music_VermilionCity_Ch2:
;----------------------------------------
;	db	$ef,$ff
; P1-0
	db	$db,$03
	db	$d8,$c,$77
; P2-1
	db	$e1,$10,$23
; P1-0
	db	$d2,$53
	db	$33
	db	$d3,$c3
	db	$93
	db	$73
	db	$53
	db	$73
	db	$93
; P2-2
@loop:
	db	$d8,$c,$97
	db	$fe
	dw	$ffff & @mero2_5
	db	$91
; P2-6
	db	$fe
	dw	$ffff & @mero2_5
	db	$51
; P2-10
	db	$dc,$b7
	db	$d4,$c3
	db	$d3,$23
	db	$33
	db	$53
; P2-11
	db	$fe
	dw	$ffff & @mero11_12
; P2-13
	db	$fe
	dw	$ffff & @mero11_12
; P2-15
	db	$75
	db	$50
	db	$70
	db	$57
; P2-16
	db	$a5
	db	$90
	db	$a0
	db	$97
; P2-17 -tie
	db	$9d
	db	$d8,$6,$57
	db	$00
	db	$d3,$50
	db	$90
	db	$c0
; P2-18
	db	$d8,$c,$87
	db	$d2,$5f
; P2-19
	db	$fd,0
	dw	$ffff & @loop
@mero2_5:
	db	$d6,$a7
	db	$d5,$73
	db	$53
; P2-3
	db	$35
	db	$20
	db	$30
	db	$57
; P2-4
	db	$d6,$a7
	db	$d5,$73
	db	$53
; P2-5
	db	$35
	db	$50
	db	$30
	db	$21
	db	$51
	db	$d6,$a1
	db	$ff
@mero11_12:
	db	$77
	db	$c7
; P2-12
	db	$a3
	db	$93
	db	$73
	db	$53
	db	$ff
;----------------------------------------
Music_VermilionCity_Ch3:
;----------------------------------------
;	db	$ef,$f0
	db	$e1,$22,$23
	db	$d8,$c,$7f
	db	$d5,$53
	db	$c3
	db	$d4,$53
	db	$c3
	db	$33
	db	$53
	db	$dc,$3f
	db	$31
	db	$dc,$1f
	db	$d4,$c0
	db	$90
	db	$70
	db	$50
	db	$30
	db	$d5,$c0
; P3-1
; P3-2
@loop:
	db	$fe
	dw	$ffff & @bass2_5
	db	$d2,$a5
	db	$dc,$1f
	db	$50
	db	$90
; P3-6
	db	$fe
	dw	$ffff & @bass2_5
	db	$a7
; P3-10
	db	$dc,$7f
	db	$d4,$33
	db	$23
	db	$d5,$c3
	db	$a3
; P3-11
	db	$d4,$31
	db	$03
	db	$dc,$1f
	db	$30
	db	$30
	db	$fe
	dw	$ffff & @bass11_12
; P3-13
	db	$dc,$3f
	db	$d3,$31
	db	$d4,$31
	db	$01
	db	$31
	db	$fe
	dw	$ffff & @bass11_12
; P3-15
	db	$dc,$81
	db	$d4,$57
	db	$d3,$57
; P3-16
	db	$d4,$c7
	db	$d3,$57
; P3-17
	db	$d5,$5f
; P3-18
	db	$d4,$5d
	db	$dc,$1f
	db	$d2,$50
	db	$90
; P3-19
	db	$fd,0
	dw	$ffff & @loop
@bass2_5:
	db	$d8,$c,$81
	db	$d2,$a7
	db	$dc,$7f
	db	$d1,$33
	db	$23
; P3-3
	db	$dc,$81
	db	$d2,$c5
	db	$dc,$1f
	db	$a0
	db	$c0
	db	$dc,$81
	db	$d1,$27
; P3-4
	db	$d2,$a7
	db	$dc,$7f
	db	$d1,$33
	db	$23
; P3-5
	db	$dc,$81
	db	$d2,$c5
	db	$dc,$1f
	db	$d1,$20
	db	$d2,$c0
	db	$dc,$81
	db	$ff
@bass11_12:
	db	$dc,$3f
	db	$a0
	db	$00
	db	$a1
	db	$01
	db	$71
; P3-12
	db	$51
	db	$03
	db	$dc,$1f
	db	$50
	db	$50
	db	$dc,$81
	db	$d3,$50
	db	$00
	db	$31
	db	$01
	db	$dc,$1f
	db	$d4,$c0
	db	$d3,$20
	db	$ff
