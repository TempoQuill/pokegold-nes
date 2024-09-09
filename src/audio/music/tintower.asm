Music_TinTower:
	db	060h
	dw	$ffff & Music_TinTower_Ch1
	db	001h
	dw	$ffff & Music_TinTower_Ch2
	db	002h
	dw	$ffff & Music_TinTower_Ch3
	db	003h
	dw	$ffff & Music_TinTower_Ch4
;----------------------------------------
Music_TinTower_Ch1:
;----------------------------------------
	db	$da,$00,$d0
	db	$db,$03
	db	$e6,$00,$04
	db	$e1,$8,$45
; P1-1
@mainloop:
	db	$d8,$c,$a5
	db	$d4,$83
	db	$13
	db	$97
; P1-2
	db	$83
	db	$13
	db	$d5,$b1
	db	$d4,$11
	db	$21
	db	$d5,$b1
; P1-3
	db	$d4,$83
	db	$13
	db	$93
	db	$63
; P1-4
	db	$83
	db	$d5,$83
	db	$d4,$85
	db	$b1
; P1-5
	db	$81
	db	$61
	db	$21
	db	$81
	db	$97
; P1-6
	db	$83
	db	$d3,$13
	db	$d4,$91
	db	$81
	db	$61
	db	$91
; P1-7
	db	$81
	db	$21
	db	$d5,$b1
	db	$d4,$81
	db	$93
	db	$63
; P1-8
	db	$83
	db	$d5,$83
	db	$d4,$87
; P1-9
	db	$dc,$a2
	db	$d5,$83
	db	$8b
; P1-10
	db	$83
	db	$87
	db	$dc,$a7
	db	$83
; P1-11
	db	$dc,$a2
	db	$93
	db	$97
	db	$dc,$a7
	db	$83
; P1-12
	db	$dc,$a2
	db	$93
	db	$97
	db	$dc,$a7
	db	$b3
; P1-13
	db	$dc,$a2
	db	$83
	db	$8b
; P1-14
	db	$83
	db	$8b
; P1-15
	db	$83
	db	$8b
; P1-16
	db	$83
	db	$87
	db	$dc,$a5
	db	$d4,$b3
	db	$fd,0
	dw	$ffff & @mainloop
;----------------------------------------
Music_TinTower_Ch2:
;----------------------------------------
; P2-1
	db	$db,$03
	db	$e6,$00,$02
	db	$e1,$18,$44
@mainloop:
@loop1:
	db	$d8,$c,$b5
	db	$d3,$13
	db	$13
	db	$21
	db	$11
	db	$d4,$b1
	db	$d3,$21
; P2-2
	db	$13
	db	$63
	db	$23
	db	$d4,$b3
; P2-3
	db	$d3,$13
	db	$13
	db	$21
	db	$11
	db	$d4,$b1
	db	$d3,$21
; P2-4
	db	$13
	db	$d4,$13
	db	$d3,$17
	db	$fd,2
	dw	$ffff & @loop1
; P2-9
	db	$dc,$b2
	db	$d4,$13
	db	$1b
; P2-10
	db	$13
	db	$17
	db	$dc,$b7
	db	$13
; P2-11
	db	$dc,$b2
	db	$23
	db	$27
	db	$dc,$b7
	db	$13
; P2-12
	db	$dc,$b2
	db	$23
	db	$27
	db	$dc,$b7
	db	$43
; P2-13
	db	$dc,$90
	db	$83
	db	$d3,$13
	db	$d4,$b1
	db	$91
	db	$81
	db	$91
; P2-14
	db	$83
	db	$13
	db	$87
; P2-15
	db	$83
	db	$d3,$13
	db	$d4,$b1
	db	$d3,$11
	db	$21
	db	$d4,$b1
; P2-16
	db	$d3,$13
	db	$d4,$13
	db	$d3,$15
	db	$dc,$95
	db	$21
	db	$fd,0
	dw	$ffff & @mainloop
;----------------------------------------
Music_TinTower_Ch3:
;----------------------------------------
; P3-1
	db	$d8,$c,$47
@mainloop:
	db	$0f
; P3-2
	db	$0f
; P3-3
	db	$0f
; P3-4
	db	$09
	db	$d5,$81
	db	$91
	db	$b1
; P3-5
	db	$dc,$81
	db	$d4,$17
	db	$27
; P3-6
	db	$57
	db	$dc,$47
	db	$d5,$b1
	db	$d4,$11
	db	$21
	db	$41
; P3-7
	db	$dc,$81
	db	$17
	db	$27
; P3-8
	db	$57
	db	$d3,$17
; P3-9
	db	$d4,$10
	db	$02
	db	$10
	db	$0a
; P3-10
	db	$10
	db	$02
	db	$10
	db	$06
	db	$13
; P3-11
	db	$20
	db	$02
	db	$20
	db	$06
	db	$13
; P3-12
	db	$20
	db	$02
	db	$20
	db	$06
	db	$43
; P3-13
	db	$10
	db	$02
	db	$10
	db	$0a
; P3-14
	db	$dc,$47
	db	$10
	db	$02
	db	$10
	db	$02
	db	$d5,$b1
	db	$d4,$11
	db	$21
	db	$41
; P3-15
	db	$10
	db	$02
	db	$10
	db	$0a
; P3-16
	db	$10
	db	$02
	db	$10
	db	$0a
	db	$fd,0
	dw	$ffff & @mainloop
;----------------------------------------
Music_TinTower_Ch4:
;----------------------------------------
	db	$e3,$000
; P4-1
	db	$d8,$c
@mainloop:
	db	$81
	db	$80
	db	$80
	db	$81
	db	$63
	db	$81
	db	$81
	db	$61
	db	$81
	db	$80
	db	$80
	db	$81
	db	$63
	db	$81
	db	$81
	db	$61
	db	$fd,0
	dw	$ffff & @mainloop


