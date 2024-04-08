Music_BurnedTower:
	db	080h
	dw	$ffff & Music_BurnedTower_Ch1
	db	001h
	dw	$ffff & Music_BurnedTower_Ch2
	db	002h
	dw	$ffff & Music_BurnedTower_Ch3
	db	003h
	dw	$ffff & Music_BurnedTower_Ch4
	db	004h
	dw	$ffff & Music_BurnedTower_Ch5
;----------------------------------------
Music_BurnedTower_Ch1:
;----------------------------------------
	db	$da,$00,$a8
;	db	$e5,$77
	db	$db,$01
	db	$e6,$00,$04
	db	$e1,$8,$45
;	db	$ef,$f0
; P1-1
	db	$d8,$c,$91
	db	$01
	db	$d5,$a3
	db	$a3
	db	$a1
	db	$dc,$80
	db	$d4,$45
; P1-2 - tie
	db	$dc,$91
	db	$33
	db	$33
	db	$31
	db	$dc,$80
	db	$25
; P1-3 - tie
@loop11:
	db	$dc,$91
	db	$d5,$a3
	db	$a3
	db	$a1
	db	$dc,$80
	db	$b5
IFNDEF BUGFIXES
; P1-4
	db	$fd,2
	dw	$ffff & @loop11
	db	$da,$00,$96
ELSE
; P1-4
	db	$dc,$91
	db	$d5,$a3
	db	$a3
	db	$a1
	db	$dc,$80
	db	$b3
	db	$da,$00,$96
	db	$b1
ENDIF
@loop10:
	db	$dc,$b1
; P1-5 -tie
	db	$d5,$a3
	db	$a3
	db	$a1
	db	$dc,$a0
	db	$d4,$45
; P1-6 - tie
	db	$dc,$b1
	db	$33
	db	$33
	db	$31
	db	$dc,$a0
	db	$25
; P1-7 -tie
	db	$dc,$b1
	db	$d5,$a3
	db	$a3
	db	$a1
	db	$dc,$a0
	db	$b5
; P1-8 -tie
	db	$dc,$b1
	db	$a3
	db	$a3
	db	$a1
	db	$dc,$b3
	db	$bf
; P1-9 -tie
	db	$bf
; P1-10 -tie
	db	$bf
; P1-11
	db	$95
; P1-12
	db	$dc,$b1
	db	$a3
	db	$a3
	db	$a1
	db	$dc,$a0
	db	$b5
; P1-13 -tie
	db	$dc,$b1
	db	$c3
	db	$c3
	db	$c1
	db	$dc,$a0
	db	$d4,$65
; P1-14 -tie
	db	$dc,$b1
	db	$53
	db	$53
	db	$51
	db	$dc,$a0
	db	$45
; P1-15 -tie
@loop12:
	db	$dc,$b1
	db	$d5,$c3
	db	$c3
	db	$c1
	db	$dc,$a0
	db	$d4,$15
; P1-16 -tie
	db	$fd,2
	dw	$ffff & @loop12
;-tie
	db	$fd,0
	dw	$ffff & @loop10
;----------------------------------------
Music_BurnedTower_Ch2:
;----------------------------------------
	db	$db,$02
	db	$e1,$20,$82
	db	$e6,$00,$02
; P2-1
	db	$d8,$c,$70
	db	$fe
	dw	$ffff & @sub21
	db	$dc,$c5
@loop20:
; P2-5
	db	$fe
	dw	$ffff & @sub21
	db	$dc,$c1
; P2-9
	db	$db,$03
	db	$01
	db	$d5,$a3
	db	$a3
	db	$a1
	db	$dc,$b0
	db	$d4,$45
; P2-10 -tie
	db	$dc,$c1
	db	$33
	db	$33
	db	$31
	db	$dc,$b0
	db	$25
	db	$dc,$c1
; P2-11 -tie
	db	$d5,$a3
	db	$a3
	db	$a1
	db	$dc,$b0
	db	$b3
	db	$dc,$c1
; P2-12
	db	$dc,$c2
	db	$d4,$a0
	db	$80
	db	$a0
	db	$d3,$10
	db	$e1,$00,$00
	db	$dc,$3d
	db	$57
	db	$e1,$20,$83
	db	$dc,$b0
	db	$d5,$83
; P2-13
	db	$db,$02
	db	$dc,$b0
	db	$d4,$73
	db	$51
	db	$71
	db	$83
	db	$c3
; P2-14
	db	$d3,$23
	db	$31
	db	$21
	db	$d4,$c3
	db	$83
; P2-15
	db	$73
	db	$51
	db	$71
	db	$83
	db	$53
; P2-16
	db	$dc,$b7
	db	$7f
	db	$fd,0
	dw	$ffff & @loop20
@sub21:
	db	$d4,$53
	db	$31
	db	$51
	db	$63
	db	$a3
; P2-2
	db	$c3
	db	$d3,$11
	db	$d4,$c1
	db	$a3
	db	$63
; P2-3
	db	$53
	db	$31
	db	$51
	db	$63
	db	$33
; P2-4
	db	$5f
	db	$ff
;----------------------------------------
Music_BurnedTower_Ch3:
;----------------------------------------
;	db	$ef,$0f
; P3-1
	db	$d8,$c,$57
	db	$0f
; P3-2
	db	$0f
; P3-3
	db	$0f
; P3-4
	db	$0b
	db	$d4,$43
@loop30:
; P3-5
	db	$dc,$27
	db	$d5,$a1
	db	$d4,$51
	db	$01
	db	$51
	db	$01
	db	$51
	db	$dc,$4f
	db	$63
; P3-6
	db	$dc,$27
	db	$d5,$a1
	db	$d4,$51
	db	$01
	db	$51
	db	$01
	db	$51
	db	$dc,$4f
	db	$43
	db	$fd,4
	dw	$ffff & @loop30
; P3-13
@loop31:
	db	$dc,$27
	db	$d5,$c1
	db	$d4,$71
	db	$01
	db	$71
	db	$01
	db	$71
	db	$dc,$4f
	db	$83
; P3-14
	db	$dc,$27
	db	$d5,$c1
	db	$d4,$71
	db	$01
	db	$71
	db	$01
	db	$71
	db	$dc,$4f
	db	$63
	db	$fd,2
	dw	$ffff & @loop31
	db	$fd,0
	dw	$ffff & @loop30
;----------------------------------------
Music_BurnedTower_Ch4:
;----------------------------------------
	db	$e3,$000
;----------------------------------------
Music_BurnedTower_Ch5:
;----------------------------------------
; P4-1
	db	$d8,$c
@loop400:
	db	$0f
	db	$fd,4
	dw	$ffff & @loop400
	db	$01
@loop40:
;	db	$ef,$f0
	db	$81
	db	$91
	db	$83
	db	$91
	db	$83
	db	$fd,0
	dw	$ffff & @loop40


