Music_CeladonCity:
	db	040h
	dw	$ffff & Music_CeladonCity_Ch1
	db	001h
	dw	$ffff & Music_CeladonCity_Ch2
	db	002h
	dw	$ffff & Music_CeladonCity_Ch3
;----------------------------------------
Music_CeladonCity_Ch1:
;----------------------------------------
	db	$da,$00,$92
;	db	$e5,$77
	db	$e6,$00,$01
; P1-2
@mainloop:
;	db	$ef,$0f
	db	$d8,$c,$a6
	db	$d4,$a6
	db	$dc,$a1
	db	$90
	db	$a0
	db	$32
	db	$51
	db	$71
; P1-3-4
	db	$fe
	dw	$ffff & @sub1
; P1-5-6
@loop1:
	db	$31
	db	$70
	db	$a0
	db	$30
	db	$70
	db	$a0
	db	$70
	db	$fd,3
	dw	$ffff & @loop1
	db	$31
	db	$80
	db	$c0
	db	$d3,$30
	db	$10
	db	$d4,$c0
	db	$80
; P1-7-8
	db	$fe
	dw	$ffff & @sub1
; P1-9
	db	$30
	db	$20
	db	$30
	db	$50
	db	$70
	db	$80
	db	$a0
	db	$c0
	db	$a1
	db	$81
	db	$71
	db	$51
; P1-10
	db	$7f
; P1-11-12
	db	$fe
	dw	$ffff & @sub2
; P1-13
	db	$fe
	dw	$ffff & @sub3
; P1-14
	db	$d5,$c1
	db	$b0
	db	$c0
	db	$d4,$30
	db	$80
	db	$a0
	db	$80
	db	$70
	db	$80
	db	$a0
	db	$90
	db	$a0
	db	$d3,$10
	db	$d4,$c0
	db	$a0
; P1-15-16
	db	$fe
	dw	$ffff & @sub2
; P1-17
	db	$fe
	dw	$ffff & @sub3
; P1-18
	db	$31
	db	$20
	db	$30
	db	$70
	db	$80
	db	$a0
	db	$80
	db	$a7
; P1-19
	db	$fd,0
	dw	$ffff & @mainloop
@sub1:
	db	$31
	db	$80
	db	$c0
	db	$30
	db	$80
	db	$c0
	db	$80
	db	$fd,3
	dw	$ffff & @sub1
	db	$31
	db	$70
	db	$a0
	db	$d3,$30
	db	$20
	db	$30
	db	$d4,$a0
	db	$ff
@sub2:
	db	$d5,$81
	db	$c0
	db	$d4,$30
	db	$fd,4
	dw	$ffff & @sub2
; P1-12
	db	$11
	db	$d5,$c0
	db	$d4,$10
	db	$30
	db	$50
	db	$70
	db	$a0
	db	$80
	db	$a0
	db	$c0
	db	$d3,$10
	db	$30
	db	$20
	db	$30
	db	$d4,$c0
	db	$ff
@sub3:
	db	$31
	db	$70
	db	$a0
	db	$fd,4
	dw	$ffff & @sub3
	db	$ff
;----------------------------------------
Music_CeladonCity_Ch2:
;----------------------------------------
	db	$e1,$12,$34
	db	$db,$02
;	db	$ef,$f0
; P2-2
	db	$d8,$c,$b7
	db	$d3,$30
	db	$20
	db	$30
	db	$50
	db	$70
	db	$50
	db	$70
	db	$80
	db	$a7
; P2-3-4
@mainloop:
	db	$fe
	dw	$ffff & @sub1
; P2-5
	db	$a3
	db	$73
	db	$a1
	db	$75
; P2-6
	db	$a0
	db	$80
	db	$70
	db	$80
	db	$a1
	db	$c1
	db	$83
	db	$c3
; P2-7-8
	db	$fe
	dw	$ffff & @sub1
; P2-9
	db	$dc,$c1
	db	$a1
	db	$81
	db	$71
	db	$81
	db	$71
	db	$51
	db	$31
	db	$21
; P2-10
	db	$33
	db	$30
	db	$50
	db	$70
	db	$a0
	db	$dc,$b3
	db	$d2,$35
	db	$dc,$a2
	db	$d6,$71
; P2-11-14
	db	$fe
	dw	$ffff & @sub2
; P2-14
	db	$d6,$82
	db	$c0
	db	$a1
	db	$d5,$31
	db	$d6,$a5
	db	$71
; P2-15-17
	db	$fe
	dw	$ffff & @sub2
; P2-18
	db	$d6,$a2
	db	$d5,$30
	db	$a3
	db	$35
	db	$dc,$97
	db	$d3,$70
	db	$a0
; P2-19
	db	$d2,$3f
	db	$fd,0
	dw	$ffff & @mainloop
@sub1:
	db	$dc,$b2
	db	$d3,$c3
	db	$83
	db	$c1
	db	$85
; P2-4
	db	$c0
	db	$80
	db	$a0
	db	$c0
	db	$d2,$11
	db	$d3,$c1
	db	$a7
	db	$ff
@sub2:
	db	$82
	db	$c0
	db	$d5,$33
	db	$d6,$81
	db	$c1
	db	$d5,$33
; P2-12
	db	$d6,$82
	db	$d5,$10
	db	$33
	db	$d6,$81
	db	$c1
	db	$d5,$33
; P2-13
	db	$d6,$a2
	db	$d5,$30
	db	$73
	db	$d6,$a1
	db	$d5,$31
	db	$73
	db	$ff
;----------------------------------------
Music_CeladonCity_Ch3:
;----------------------------------------
	db	$e1,$12,$24
; P3-2
@mainloop:
	db	$d8,$c,$81
	db	$d4,$a1
	db	$01
	db	$71
	db	$01
	db	$37
; P3-3-4
	db	$fe
	dw	$ffff & @sub1
; P3-5-6
@loop1:
	db	$dc,$5c
	db	$d5,$a1
	db	$01
	db	$d4,$33
	db	$fd,3
	dw	$ffff & @loop1
	db	$dc,$45
	db	$d5,$80
	db	$00
	db	$c0
	db	$00
	db	$d4,$32
	db	$dc,$17
	db	$d5,$70
; P3-7-8
	db	$fe
	dw	$ffff & @sub1
; P3-9
	db	$dc,$45
	db	$a0
	db	$00
	db	$d4,$30
	db	$00
	db	$d4,$72
	db	$dc,$17
	db	$d5,$90
	db	$dc,$2e
	db	$a0
	db	$00
	db	$d4,$20
	db	$00
	db	$51
	db	$21
; P3-10
	db	$31
	db	$05
	db	$d5,$a1
	db	$05
; P3-11
	db	$fe
	dw	$ffff & @sub2
; P3-12
	db	$dc,$81
	db	$d2,$51
	db	$01
	db	$71
	db	$01
	db	$33
	db	$03
; P3-13
	db	$17
	db	$dc,$2e
	db	$d3,$a1
	db	$c1
	db	$d2,$11
	db	$31
; P3-14
	db	$51
	db	$01
	db	$31
	db	$51
	db	$dc,$81
	db	$33
	db	$03
; P3-15
	db	$fe
	dw	$ffff & @sub2
; P3-16
	db	$dc,$2e
	db	$d2,$51
	db	$01
	db	$31
	db	$51
	db	$dc,$81
	db	$33
	db	$03
; P3-17
	db	$17
	db	$dc,$2e
	db	$a1
	db	$81
	db	$71
	db	$51
; P3-18
	db	$71
	db	$51
	db	$31
	db	$51
	db	$31
	db	$05
; P3-19
	db	$fd,0
	dw	$ffff & @mainloop
@sub1:
	db	$dc,$5c
	db	$d5,$81
	db	$01
	db	$d4,$33
	db	$fd,3
	dw	$ffff & @sub1
	db	$dc,$45
	db	$d5,$a0
	db	$00
	db	$d4,$30
	db	$00
	db	$72
	db	$dc,$17
	db	$d5,$90
	db	$ff
@sub2:
	db	$dc,$81
	db	$d2,$37
	db	$dc,$2e
	db	$11
	db	$d3,$c1
	db	$a1
	db	$c1
	db	$ff
