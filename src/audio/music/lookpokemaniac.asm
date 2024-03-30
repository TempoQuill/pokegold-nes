Music_LookPokemaniac:
	db	040h
	dw	$ffff & Music_LookPokemaniac_Ch1
	db	001h
	dw	$ffff & Music_LookPokemaniac_Ch2
	db	002h
	dw	$ffff & Music_LookPokemaniac_Ch3
;----------------------------------------
Music_LookPokemaniac_Ch1:
;----------------------------------------
;	db	$ef,$0f
	db	$da,$00,$90
;	db	$e5,$77
; P1-1
	db	$e1,$02,$33
	db	$e6,$00,$02
	db	$d8,$c,$b3
; P1-2
	db	$07
@loop:
; P1-3
@sub3_6:
	db	$03
	db	$d4,$b0
	db	$02
	db	$b0
	db	$02
	db	$fd,4
	dw	$ffff & @sub3_6
; P1-4
; P1-5
; P1-6
; P1-7
@sub7_10:
	db	$03
	db	$80
	db	$02
	db	$80
	db	$02
	db	$fd,4
	dw	$ffff & @sub3_6
; P1-8
; P1-9
; P1-10
; P1-11
	db	$fd,0
	dw	$ffff & @loop
;----------------------------------------
Music_LookPokemaniac_Ch2:
;----------------------------------------
;	db	$ef,$ff
; P2-1
	db	$e1,$02,$33
	db	$e6,$00,$01
	db	$d8,$c,$b3
; P2-2
	db	$d5,$a0
	db	$70
	db	$40
	db	$10
	db	$d6,$a3
@loop:
; P2-3
@mero3_6:
	db	$d5,$11
	db	$01
	db	$d4,$70
	db	$02
	db	$a0
	db	$02
; P2-4
	db	$d6,$81
	db	$01
	db	$d4,$10
	db	$02
	db	$40
	db	$02
	db	$fd,2
	dw	$ffff & @mero3_6
; P2-5
; P2-6
; P2-7
@mero7_10:
	db	$d6,$a1
	db	$01
	db	$d4,$40
	db	$02
	db	$70
	db	$02
; P2-8
	db	$d6,$51
	db	$01
	db	$d5,$a0
	db	$02
	db	$d4,$10
	db	$02
	db	$fd,2
	dw	$ffff & @mero7_10
; P2-9
; P2-10
; P2-11
	db	$fd,0
	dw	$ffff & @loop
;----------------------------------------
Music_LookPokemaniac_Ch3:
;----------------------------------------
;	db	$ef,$f0
; P3-1
	db	$e1,$06,$33
	db	$d8,$c,$12
; P3-2
	db	$d3,$10
	db	$40
	db	$70
	db	$a0
	db	$dc,$4b
	db	$d2,$13
@loop:
; P3-3
	db	$dc,$71
	db	$b5
	db	$dc,$25
	db	$a1
	db	$91
	db	$81
; P3-4
	db	$dc,$71
	db	$75
	db	$dc,$25
	db	$61
	db	$71
	db	$a1
; P3-5
	db	$dc,$4b
	db	$d3,$43
	db	$10
	db	$00
	db	$40
	db	$00
	db	$10
	db	$00
	db	$40
	db	$00
; P3-6
	db	$d2,$73
	db	$10
	db	$00
	db	$70
	db	$00
	db	$10
	db	$00
	db	$70
	db	$00
; P3-7
	db	$dc,$71
	db	$85
	db	$dc,$25
	db	$71
	db	$61
	db	$51
; P3-8
	db	$dc,$71
	db	$45
	db	$dc,$25
	db	$31
	db	$41
	db	$71
; P3-9
	db	$dc,$4b
	db	$13
	db	$d3,$a0
	db	$00
	db	$d2,$10
	db	$00
	db	$40
	db	$00
	db	$10
	db	$00
; P3-10
	db	$43
	db	$d3,$a0
	db	$00
	db	$d2,$40
	db	$00
	db	$70
	db	$00
	db	$10
	db	$00
; P3-11
	db	$fd,0
	dw	$ffff & @loop


