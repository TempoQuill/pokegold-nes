Music_Route11:
	db	060h
	dw	$ffff & Music_Route11_Ch1
	db	001h
	dw	$ffff & Music_Route11_Ch2
	db	002h
	dw	$ffff & Music_Route11_Ch3
	db	004h
	dw	$ffff & Music_Route11_Ch5
;----------------------------------------
Music_Route11_Ch1:
;----------------------------------------
	db	$da,$00,$94
	db	$e1,$12,$34
	db	$e6,$00,$01
; P1-2
	db	$db,$03
	db	$d8,$c,$98
	db	$d4,$90
	db	$01
	db	$a0
	db	$97
	db	$d5,$c0
	db	$d4,$50
	db	$70
	db	$90
; P1-3
	db	$70
	db	$01
	db	$50
	db	$dc,$97
	db	$4b
; P1-4
@mainloop:
	db	$db,$02
	db	$dc,$96
	db	$fe
	dw	$ffff & @sub1
; P1-5
	db	$fe
	dw	$ffff & @sub2
; P1-6
	db	$fe
	dw	$ffff & @sub1
; P1-7
	db	$50
	db	$01
	db	$70
	db	$53
	db	$c3
	db	$d3,$43
; P1-8
	db	$fe
	dw	$ffff & @sub1
; P1-9
	db	$fe
	dw	$ffff & @sub2
; P1-10
	db	$fe
	dw	$ffff & @sub1
; P1-11
	db	$dc,$92
	db	$d3,$50
	db	$d4,$c0
	db	$90
	db	$50
	db	$d3,$40
	db	$d4,$c0
	db	$90
	db	$40
	db	$d3,$30
	db	$d4,$c0
	db	$90
	db	$30
	db	$20
	db	$60
	db	$90
	db	$c0
; P1-12
	db	$db,$03
	db	$dc,$7f
	db	$d3,$22
	db	$d4,$c2
	db	$a0
	db	$00
	db	$a3
	db	$d3,$21
	db	$d4,$c1
; P1-13
	db	$d3,$20
	db	$d4,$c0
	db	$a3
	db	$91
	db	$71
	db	$91
	db	$a1
	db	$d3,$11
; P1-14
	db	$d4,$c2
	db	$a2
	db	$90
	db	$00
	db	$93
	db	$c1
	db	$a1
; P1-15
	db	$c0
	db	$a0
	db	$93
	db	$71
	db	$51
	db	$71
	db	$81
	db	$51
; P1-16
	db	$42
	db	$72
	db	$41
	db	$57
; P1-17
	db	$77
	db	$43
	db	$73
; P1-18-19
@loop1:
	db	$dc,$97
	db	$90
	db	$a0
	db	$c3
	db	$d5,$c0
	db	$d4,$40
	db	$50
	db	$00
	db	$50
	db	$70
	db	$93
	db	$fd,2
	dw	$ffff & @loop1
	db	$fd,0
	dw	$ffff & @mainloop
@sub1:
	db	$d4,$90
	db	$00
	db	$50
	db	$00
	db	$d5,$c0
	db	$00
	db	$c0
	db	$d4,$40
	db	$53
	db	$93
	db	$ff
@sub2:
	db	$a0
	db	$00
	db	$70
	db	$00
	db	$30
	db	$00
	db	$70
	db	$90
	db	$a3
	db	$73
	db	$ff
;----------------------------------------
Music_Route11_Ch2:
;----------------------------------------
	db	$db,$03
	db	$e1,$12,$34
;		chorus ff ff
; P2-2
	db	$d8,$c,$b8
	db	$d3,$50
	db	$01
	db	$70
	db	$5b
; P2-3
	db	$d4,$c0
	db	$01
	db	$d3,$10
	db	$dc,$b7
	db	$d4,$c7
	db	$40
	db	$70
	db	$c0
	db	$d3,$40
; P2-4-5
@mainloop:
	db	$db,$03
	db	$dc,$b7
	db	$fe
	dw	$ffff & @sub1
	db	$70
	db	$a0
	db	$90
	db	$70
; P2-6
	db	$91
	db	$00
	db	$50
	db	$d4,$cb
; P2-7
	db	$db,$02
	db	$d5,$c0
	db	$01
	db	$d4,$10
	db	$d5,$c3
	db	$d4,$43
	db	$73
; P2-8-9
	db	$db,$03
	db	$fe
	dw	$ffff & @sub1
	db	$a0
	db	$d2,$20
	db	$d3,$c0
	db	$a0
; P2-10
	db	$c1
	db	$00
	db	$a0
	db	$dc,$b8
	db	$95
	db	$dc,$b7
	db	$95
; P2-11 -tie
	db	$dc,$6f
	db	$9f
; P2-12
	db	$db,$02
	db	$dc,$a8
	db	$a2
	db	$92
	db	$70
	db	$00
	db	$77
; P2-13 -tie
	db	$dc,$a7
	db	$79
	db	$01
	db	$73
; P2-14
	db	$dc,$a8
	db	$92
	db	$72
	db	$50
	db	$00
	db	$57
; P2-15 -tie
	db	$dc,$a7
	db	$59
	db	$01
	db	$53
; P2-16
	db	$72
	db	$42
	db	$d4,$c1
	db	$dc,$a8
	db	$d3,$c7
; P2-17 -tie
	db	$c7
	db	$a7
; P2-18
	db	$90
	db	$70
	db	$5d
; P2-19 -tie
	db	$59
	db	$dc,$a4
	db	$55
	db	$fd,0
	dw	$ffff & @mainloop
@sub1:
	db	$d3,$55
	db	$dc,$b1
	db	$d4,$c0
	db	$c0
	db	$dc,$b7
	db	$c3
	db	$d3,$c3
; P2-5
	db	$a3
	db	$93
	db	$73
	db	$ff
;----------------------------------------
Music_Route11_Ch3:
;----------------------------------------
	db	$e1,$12,$54
; P3-2
	db	$d8,$c,$20
	db	$d4,$91
	db	$03
	db	$dc,$10
	db	$90
	db	$a0
	db	$dc,$40
	db	$c1
	db	$01
	db	$53
; P3-3
	db	$dc,$20
	db	$41
	db	$03
	db	$dc,$10
	db	$40
	db	$50
	db	$dc,$40
	db	$71
	db	$01
	db	$43
; P3-4-6
@mainloop:
	db	$fe
	dw	$ffff & @sub1
; P3-7
	db	$dc,$10
	db	$70
	db	$00
	db	$50
	db	$02
	db	$40
	db	$50
	db	$dc,$40
	db	$73
	db	$d5,$c3
; P3-8-10
	db	$fe
	dw	$ffff & @sub1
; P3-11
	db	$dc,$10
	db	$50
	db	$00
	db	$c0
	db	$02
	db	$d5,$c0
	db	$d4,$20
	db	$dc,$40
	db	$33
	db	$63
; P3-12
	db	$dc,$81
	db	$7c
	db	$00
	db	$dc,$10
	db	$70
	db	$90
; P3-13
	db	$dc,$50
	db	$a4
	db	$00
	db	$dc,$10
	db	$a0
	db	$c0
	db	$dc,$40
	db	$d3,$13
	db	$d4,$73
; P3-14
	db	$dc,$81
	db	$5d
	db	$dc,$10
	db	$90
	db	$a0
; P3-15
	db	$dc,$60
	db	$c5
	db	$dc,$10
	db	$50
	db	$70
	db	$dc,$40
	db	$83
	db	$53
; P3-16
	db	$dc,$50
	db	$d5,$c4
	db	$00
	db	$dc,$10
	db	$c0
	db	$d4,$40
	db	$dc,$7f
	db	$77
; P3-17
	db	$57
	db	$dc,$40
	db	$73
	db	$43
; P3-18-19
@loop1:
	db	$dc,$10
	db	$50
	db	$00
	db	$50
	db	$02
	db	$50
	db	$70
	db	$dc,$40
	db	$93
	db	$52
	db	$00
	db	$fd,2
	dw	$ffff & @loop1
	db	$fd,0
	dw	$ffff & @mainloop
@sub1:
	db	$dc,$10
	db	$d4,$50
	db	$00
	db	$50
	db	$02
	db	$50
	db	$70
	db	$dc,$40
	db	$93
	db	$53
; P3-5
	db	$dc,$10
	db	$30
	db	$00
	db	$30
	db	$02
	db	$30
	db	$50
	db	$dc,$40
	db	$73
	db	$33
; P3-6
	db	$dc,$10
	db	$50
	db	$00
	db	$50
	db	$02
	db	$50
	db	$70
	db	$dc,$40
	db	$93
	db	$53
	db	$ff
;----------------------------------------
Music_Route11_Ch5:
;----------------------------------------
	db	$e3,$004
; P4-2
	db	$d8,$c
	db	$c9
	db	$20
	db	$20
	db	$33
; P4-3
	db	$c5
	db	$20
	db	$20
	db	$33
	db	$d8,$6
	db	$fe
	dw	$ffff & @sub1
; P4-4-11
@mainloop:
	db	$33
	db	$37
	db	$21
	db	$21
	db	$37
	db	$fe
	dw	$ffff & @sub1
	db	$fd,8
	dw	$ffff & @mainloop
; P4-12-15
@loop1:
	db	$d8,$c
	db	$c9
	db	$30
	db	$30
		;tempo 4		drum 3
	db	$35
; P4-13
		;tempo 2 		r
	db	$20
	db	$20
	db	$35
	db	$20
	db	$20
	db	$33
	db	$fd,2
	dw	$ffff & @loop1
; P4-16
	db	$cf
; P4-17
	db	$d8,$6
	db	$fe
	dw	$ffff & @sub1
	db	$fe
	dw	$ffff & @sub1
	db	$cf
; P4-18-19
@loop2:
	db	$33
	db	$37
	db	$21
	db	$21
	db	$37
	db	$fe
	dw	$ffff & @sub1
	db	$fd,2
	dw	$ffff & @loop2
	db	$fd,0
	dw	$ffff & @mainloop
@sub1:
	db	$20
	db	$20
	db	$20
	db	$20
	db	$20
	db	$20
	db	$20
	db	$20
	db	$ff
;:


