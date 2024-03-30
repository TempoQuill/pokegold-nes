Music_LookKimonoGirl:
	db	040h
	dw	$ffff & Music_LookKimonoGirl_Ch1
	db	001h
	dw	$ffff & Music_LookKimonoGirl_Ch2
	db	002h
	dw	$ffff & Music_LookKimonoGirl_Ch3
	db	003h
;----------------------------------------
Music_LookKimonoGirl_Ch1:
;----------------------------------------
	db	$da,$00,$a0
;	db	$e5,$77
; P1-1
; P1-2
;	db	$ef,$0f
	db	$db,$01
	db	$d8,$6,$87
	db	$e6,$00,$01
	db	$fe
	dw	$ffff & Music_LookKimonoGirl_Sub
	db	$e6,$00,$00
; P1-3
; P1-4
@loop:
	db	$d8,$c,$b2
	db	$fe
	dw	$ffff & @sub4
	db	$fe
	dw	$ffff & @sub4
; P1-5
	db	$fe
	dw	$ffff & @sub5
	db	$fe
	dw	$ffff & @sub5
; P1-6
	db	$fe
	dw	$ffff & @sub4
	db	$fe
	dw	$ffff & @sub4
; P1-7
	db	$fe
	dw	$ffff & @sub5
	db	$dc,$b4
	db	$d4,$50
	db	$dc,$54
	db	$d3,$50
	db	$dc,$b4
	db	$d4,$30
	db	$dc,$54
	db	$d3,$30
	db	$dc,$b4
	db	$d5,$c0
	db	$dc,$54
	db	$d4,$c0
	db	$dc,$b4
	db	$d5,$a0
	db	$dc,$54
	db	$d4,$a0
; P1-8
	db	$fd,0
	dw	$ffff & @loop
@sub4:
	db	$dc,$b4
	db	$d5,$60
	db	$dc,$74
	db	$d4,$60
	db	$dc,$b4
	db	$d5,$a0
	db	$dc,$74
	db	$d4,$a0
	db	$dc,$b4
	db	$d5,$c0
	db	$dc,$74
	db	$d4,$c0
	db	$dc,$b4
	db	$d4,$30
	db	$dc,$74
	db	$d3,$30
	db	$ff
@sub5:
	db	$dc,$b4
	db	$d5,$50
	db	$dc,$74
	db	$d4,$50
	db	$dc,$b4
	db	$d5,$a0
	db	$dc,$74
	db	$d4,$a0
	db	$dc,$b4
	db	$d5,$c0
	db	$dc,$74
	db	$d4,$c0
	db	$dc,$b4
	db	$d4,$30
	db	$dc,$74
	db	$d3,$30
	db	$ff
;----------------------------------------
Music_LookKimonoGirl_Ch2:
;----------------------------------------
; P2-1
	db	$db,$00
	db	$d8,$6,$a7
; P2-2
;	db	$ef,$f0
	db	$fe
	dw	$ffff & Music_LookKimonoGirl_Sub
@loop:
	db	$db,$03
	db	$d8,$c,$91
	db	$d2,$50
	db	$30
	db	$d3,$c0
	db	$a0
	db	$c0
	db	$a0
	db	$50
	db	$30
	db	$50
	db	$30
	db	$d4,$c0
	db	$a0
	db	$c0
	db	$a0
	db	$50
	db	$30
; P2-5
	db	$fe
	dw	$ffff & @mero5
; P2-6
	db	$d2,$60
	db	$30
	db	$d3,$c0
	db	$a0
	db	$c0
	db	$a0
	db	$60
	db	$30
	db	$60
	db	$30
	db	$d4,$c0
	db	$a0
	db	$c0
	db	$a0
	db	$50
	db	$30
; P2-7
	db	$fe
	dw	$ffff & @mero5
; P2-8
	db	$fd,0
	dw	$ffff & @loop
@mero5:
	db	$d2,$c0
	db	$a0
	db	$50
	db	$30
	db	$50
	db	$30
	db	$d3,$c0
	db	$a0
	db	$c0
	db	$a0
	db	$50
	db	$30
	db	$50
	db	$30
	db	$d4,$c0
	db	$50
	db	$ff
Music_LookKimonoGirl_Sub:
	db	$d3,$50
	db	$d2,$5f
; P2-3
	db	$00
	db	$51
	db	$02
	db	$dc,$b7
	db	$51
	db	$01
	db	$dc,$b7
	db	$51
	db	$00
	db	$dc,$a7
	db	$51
	db	$00
	db	$d8,$6,$65
; P2-4
	db	$51
	db	$00
	db	$dc,$54
	db	$51
	db	$00
	db	$dc,$63
	db	$51
	db	$51
	db	$dc,$91
	db	$51
	db	$dc,$a1
	db	$50
	db	$d8,$8,$b1
	db	$50
	db	$50
	db	$ff
;----------------------------------------
Music_LookKimonoGirl_Ch3:
;----------------------------------------
; P3-1
; P3-2
;	db	$ef,$ff
	db	$e1,$12,$24
IFNDEF BUGFIXES
	db	$d8,$6,$81
	db	$00
ELSE
	db	$d8,$4,$81
	db	$00
	db	$d8,$6,$81
ENDIF
	db	$0f
; P3-3
	db	$d2,$50
	db	$60
	db	$51
	db	$d8,$c,$81
	db	$5b
	db	$d8,$6,$15
	db	$d2,$31
	db	$51
; P3-4
@loop:
	db	$dc,$2b
	db	$d2,$33
	db	$53
	db	$63
	db	$a3
	db	$c3
	db	$a3
	db	$c3
	db	$d1,$33
; P3-5
	db	$dc,$57
	db	$57
	db	$dc,$15
	db	$60
	db	$70
	db	$61
	db	$dc,$2b
	db	$33
	db	$dc,$57
	db	$57
	db	$dc,$2b
	db	$33
	db	$53
; P3-6
	db	$dc,$57
	db	$67
	db	$a7
	db	$dc,$15
	db	$c0
	db	$d0,$10
	db	$d1,$c1
	db	$dc,$2b
	db	$a3
	db	$63
	db	$33
; P3-7
	db	$dc,$6d
	db	$50
	db	$60
	db	$59
	db	$dc,$15
	db	$61
	db	$51
	db	$dc,$57
	db	$37
	db	$57
; P3-8
	db	$fd,0
	dw	$ffff & @loop


