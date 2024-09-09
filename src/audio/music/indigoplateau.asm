Music_IndigoPlateau:
	db	060h
	dw	$ffff & Music_IndigoPlateau_Ch1
	db	001h
	dw	$ffff & Music_IndigoPlateau_Ch2
	db	002h
	dw	$ffff & Music_IndigoPlateau_Ch3
	db	004h
	dw	$ffff & Music_IndigoPlateau_Ch5
;----------------------------------------
Music_IndigoPlateau_Ch1:
;----------------------------------------
	db	$da,$00,$80
;	db	$e5,$77
	db	$db,$03
	db	$e6,$00,$02
;	db	$ef,$0f
; P1-1
@loop10:
	db	$fe
	dw	$ffff & @sub11
	db	$d4,$33
	db	$fe
	dw	$ffff & @sub11
	db	$d4,$43
; P1-4
	db	$fe
	dw	$ffff & @sub11
	db	$d4,$43
	db	$fe
	dw	$ffff & @sub11
	db	$b3
	db	$fd,0
	dw	$ffff & @loop10
@sub11:
	db	$d8,$c,$b6
	db	$d5,$a3
	db	$dc,$b2
	db	$a1
	db	$a1
	db	$a1
	db	$a1
	db	$a3
; P1-2
	db	$a1
	db	$a1
	db	$dc,$a0
	db	$ff
;----------------------------------------
Music_IndigoPlateau_Ch2:
;----------------------------------------
	db	$db,$03
	db	$e1,$10,$22
;	db	$ef,$f0
; P2-1
@loop20:
	db	$fe
	dw	$ffff & @sub21
	db	$a3
	db	$fe
	dw	$ffff & @sub21
	db	$b3
; P2-4
	db	$fe
	dw	$ffff & @sub21
	db	$a3
	db	$fe
	dw	$ffff & @sub21
	db	$23
; P2-7
	db	$dc,$c7
	db	$a5
	db	$31
	db	$81
	db	$b1
	db	$a7
; P2-8 -tie
	db	$dc,$b0
	db	$a3
	db	$fe
	dw	$ffff & @sub21
	db	$b3
; P2-10
	db	$dc,$c7
	db	$d3,$35
	db	$41
	db	$13
	db	$37
; P2-11 -tie
	db	$dc,$b0
	db	$d4,$a3
	db	$fe
	dw	$ffff & @sub21
	db	$23
; P2-13
	db	$dc,$c7
	db	$d3,$15
	db	$d4,$b1
	db	$a1
	db	$81
	db	$77
; P2-14 -tie
	db	$dc,$b0
	db	$a3
	db	$fe
	dw	$ffff & @sub21
	db	$b3
; P2-16
	db	$dc,$c7
	db	$d3,$35
	db	$41
	db	$63
	db	$77
; P2-17 -tie
	db	$dc,$b0
	db	$d4,$a3
	db	$fe
	dw	$ffff & @sub21
	db	$23
	db	$fd,0
	dw	$ffff & @loop20
@sub21:
	db	$d8,$c,$c6
	db	$d4,$33
	db	$dc,$c2
	db	$31
	db	$31
	db	$31
	db	$31
	db	$33
; P2-2
	db	$31
	db	$31
	db	$dc,$b0
	db	$ff
;----------------------------------------
Music_IndigoPlateau_Ch3:
;----------------------------------------
;		init c 28
	db	$d8,$c,$50
; P3-1
@loop30:
	db	$fe
	dw	$ffff & @sub31
	db	$d4,$a3
	db	$fe
	dw	$ffff & @sub31
	db	$d4,$a3
; P3-4
	db	$fe
	dw	$ffff & @sub31
	db	$d4,$a3
	db	$fe
	dw	$ffff & @sub31
	db	$d4,$73
	db	$fd,0
	dw	$ffff & @loop30
@sub31:
	db	$d4,$30
	db	$02
	db	$d5,$a0
	db	$02
	db	$d4,$10
	db	$02
	db	$30
	db	$02
; P3-2
	db	$d5,$a0
	db	$02
	db	$ff
;----------------------------------------
Music_IndigoPlateau_Ch5:
;----------------------------------------
;	db	$ef,$f0
	db	$e3,$000
; P5-1
	db	$d8,$c
@loop40:
	db	$43
	db	$31
	db	$41
	db	$41
	db	$41
	db	$33
; P1-2
	db	$31
	db	$31
	db	$d8,$6
	db	$30
	db	$30
	db	$40
	db	$40
	db	$40
	db	$40
	db	$30
	db	$30
	db	$d8,$c
	db	$43
	db	$31
	db	$41
	db	$41
	db	$31
	db	$23
; P1-2
	db	$31
	db	$31
	db	$23
	db	$fd,0
	dw	$ffff & @loop40


