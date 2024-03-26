Music_GoldenrodCity:
	db	080h
	dw	$ffff & Music_GoldenrodCity_Ch1
	db	001h
	dw	$ffff & Music_GoldenrodCity_Ch2
	db	002h
	dw	$ffff & Music_GoldenrodCity_Ch3
	db	003h
	dw	$ffff & Music_GoldenrodCity_Ch4
	db	004h
	dw	$ffff & Music_GoldenrodCity_Ch5
;----------------------------------------
Music_GoldenrodCity_Ch1:
;----------------------------------------
	db	$da,$00,$b0
; P1-1
	db	$d8,$c,$97
; P1-2
	db	$0f
; P1-3
	db	$0f
; P1-4
	db	$0f
; P1-5
	db	$0f
@mainloop:
; P1-6
	db	$db,$00
	db	$fe
	dw	$ffff & @sub1
	db	$d4,$90
	db	$d3,$10
	db	$40
	db	$70
	db	$40
	db	$70
	db	$90
	db	$d2,$10
; P1-10
	db	$dc,$71
	db	$db,$00
	db	$fe
	dw	$ffff & @sub2
	db	$dc,$77
	db	$41
	db	$61
	db	$71
	db	$93
; P1-14
	db	$dc,$71
	db	$fe
	dw	$ffff & @sub2
	db	$40
	db	$70
	db	$dc,$77
	db	$d2,$11
	db	$d3,$91
	db	$71
	db	$41
; P1-18
; P1-2
	db	$db,$02
	db	$dc,$97
	db	$fe
	dw	$ffff & @sub1
; P1-5
	db	$13
	db	$d4,$91
	db	$d3,$11
	db	$fd,0
	dw	$ffff & @mainloop
@sub1:
	db	$d3,$21
	db	$d4,$90
	db	$02
	db	$90
	db	$00
	db	$d3,$11
	db	$d4,$90
	db	$02
	db	$90
	db	$00
; P1-3
	db	$b1
	db	$60
	db	$00
	db	$21
	db	$60
	db	$00
	db	$41
	db	$11
	db	$21
	db	$41
; P1-4
	db	$71
	db	$20
	db	$02
	db	$20
	db	$00
	db	$71
	db	$20
	db	$00
	db	$71
	db	$b1
; P1-5
	db	$21
	db	$41
	db	$91
	db	$d3,$21
	db	$ff
@sub2:
	db	$d3,$60
	db	$20
	db	$d4,$90
	db	$d3,$20
	db	$60
	db	$90
	db	$60
	db	$90
	db	$20
	db	$d4,$90
	db	$60
	db	$90
	db	$d3,$20
	db	$60
	db	$20
	db	$60
; P1-11
	db	$40
	db	$10
	db	$d4,$90
	db	$d3,$10
	db	$40
	db	$70
	db	$40
	db	$70
	db	$10
	db	$d4,$90
	db	$70
	db	$90
	db	$d3,$10
	db	$40
	db	$10
	db	$40
; P1-12
	db	$20
	db	$d4,$b0
	db	$70
	db	$b0
	db	$d3,$20
	db	$60
	db	$20
	db	$60
	db	$d4,$b0
	db	$70
	db	$20
	db	$70
	db	$b0
	db	$d3,$20
	db	$d4,$b0
	db	$d3,$20
; P1-13
	db	$40
	db	$10
	db	$d4,$90
	db	$d3,$10
	db	$40
	db	$70
	db	$ff
;----------------------------------------
Music_GoldenrodCity_Ch2:
;----------------------------------------
; P2-1
	db	$e1,$12,$23
	db	$db,$02
	db	$d8,$c,$97
; P2-2
@mainloop:
	db	$dc,$97
	db	$fe
	dw	$ffff & @sub1
; P2-5
	db	$d3,$61
	db	$71
	db	$91
	db	$61
	db	$47
; P2-6
	db	$fe
	dw	$ffff & @sub1
; P2-9
	db	$91
	db	$b1
	db	$d2,$11
	db	$21
	db	$47
; P2-10
	db	$db,$02
	db	$dc,$77
	db	$fe
	dw	$ffff & @sub2
; P2-13
	db	$d3,$91
	db	$b1
	db	$c1
	db	$d2,$13
; P2-14
	db	$db,$03
	db	$dc,$77
	db	$fe
	dw	$ffff & @sub2
	db	$61
	db	$41
	db	$21
	db	$11
	db	$d3,$91
; P2-18
	db	$fd,0
	dw	$ffff & @mainloop
@sub1:
	db	$d3,$63
	db	$23
	db	$43
	db	$13
; P2-3
	db	$21
	db	$11
	db	$d4,$b1
	db	$d3,$11
	db	$d4,$95
	db	$d4,$90
	db	$d4,$a0
; P2-4
	db	$b3
	db	$d3,$23
	db	$d4,$b1
	db	$d3,$b1
	db	$91
	db	$71
	db	$db,$01
	db	$ff
@sub2:
	db	$25
	db	$65
	db	$23
; P2-11
	db	$15
	db	$45
	db	$11
	db	$d3,$90
	db	$a0
; P2-12
	db	$b5
	db	$d2,$25
	db	$d3,$b3
; P2-13
	db	$d2,$13
	db	$41
	db	$ff
;----------------------------------------
Music_GoldenrodCity_Ch3:
;----------------------------------------
; P3-1
	db	$e1,$08,$23
	db	$d8,$c,$7f
; P3-2
@mainloop:
	db	$dc,$7f
	db	$fe
	dw	$ffff & @sub1
; P3-6
	db	$fe
	dw	$ffff & @sub1
; P3-10
	db	$fe
	dw	$ffff & @sub2
; P3-13
	db	$02
	db	$d4,$10
	db	$40
	db	$80
	db	$90
	db	$dc,$28
	db	$41
; P3-14
	db	$fe
	dw	$ffff & @sub2
	db	$00
	db	$dc,$28
	db	$d4,$91
	db	$71
	db	$41
	db	$d5,$91
; P3-18
	db	$fd,0
	dw	$ffff & @mainloop
@sub1:
	db	$d4,$23
	db	$01
	db	$20
	db	$00
	db	$13
	db	$01
	db	$10
	db	$00
; P3-3
	db	$d5,$b3
	db	$01
	db	$b0
	db	$00
	db	$93
	db	$01
	db	$90
	db	$00
; P3-4
	db	$73
	db	$01
	db	$70
	db	$00
	db	$d4,$43
	db	$01
	db	$40
	db	$00
; P3-5
	db	$93
	db	$01
	db	$90
	db	$00
	db	$d5,$90
	db	$00
	db	$92
	db	$00
	db	$d4,$90
	db	$00
	db	$ff
@sub2:
	db	$dc,$14
	db	$20
	db	$00
	db	$d3,$20
	db	$d4,$20
	db	$01
	db	$20
	db	$04
	db	$d3,$10
	db	$20
	db	$dc,$28
	db	$d4,$91
; P3-11
	db	$dc,$14
	db	$10
	db	$00
	db	$d3,$10
	db	$d4,$10
	db	$01
	db	$10
	db	$04
	db	$c0
	db	$d3,$10
	db	$dc,$28
	db	$d4,$91
; P3-12
	db	$dc,$14
	db	$d5,$b0
	db	$00
	db	$d4,$b0
	db	$d5,$b0
	db	$01
	db	$b0
	db	$04
	db	$d4,$a0
	db	$b0
	db	$dc,$28
	db	$71
; P3-13
	db	$dc,$14
	db	$d5,$90
	db	$00
	db	$d4,$90
	db	$d5,$90
	db	$01
	db	$90
	db	$ff
;----------------------------------------
Music_GoldenrodCity_Ch4:
;----------------------------------------
	db	$e3,$003
;----------------------------------------
Music_GoldenrodCity_Ch5:
;----------------------------------------
; P4-1
	db	$d8,$c
; P4-2
	db	$0f
; P4-3
	db	$0f
; P4-4
	db	$0f
; P4-5
	db	$07
	db	$31
	db	$71
	db	$30
	db	$30
	db	$71
@mainloop:
; P4-6
@loop1:
	db	$41
	db	$71
	db	$31
	db	$71
	db	$41
	db	$71
	db	$31
	db	$71
	db	$fd,3
	dw	$ffff & @loop1
; P4-7
; P4-8
; P4-9
	db	$fe
	dw	$ffff & @sub1
; P4-10
	db	$fe
	dw	$ffff & @sub2
	db	$80
	db	$80
	db	$71
; P4-11
	db	$fe
	dw	$ffff & @sub2
	db	$31
	db	$71
; P4-12
	db	$fe
	dw	$ffff & @sub2
	db	$30
	db	$30
	db	$71
; P4-13
	db	$fe
	dw	$ffff & @sub2
	db	$31
	db	$30
	db	$30
; P4-14
	db	$fe
	dw	$ffff & @sub2
	db	$80
	db	$80
	db	$71
; P4-15
	db	$fe
	dw	$ffff & @sub2
	db	$31
	db	$71
; P4-16
	db	$fe
	dw	$ffff & @sub2
	db	$30
	db	$30
	db	$71
; P4-17
	db	$fe
	dw	$ffff & @sub2
	db	$31
	db	$30
	db	$30
; P4-18
@loop2:
	db	$41
	db	$71
	db	$31
	db	$71
	db	$41
	db	$71
	db	$31
	db	$71
	db	$fd,3
	dw	$ffff & @loop2
	db	$fe
	dw	$ffff & @sub1
	db	$fd,0
	dw	$ffff & @mainloop
@sub1:
	db	$41
	db	$71
	db	$31
	db	$71
	db	$41
	db	$71
	db	$30
	db	$30
	db	$71
	db	$ff
@sub2:
	db	$41
	db	$30
	db	$42
	db	$41
	db	$80
	db	$80
	db	$80
	db	$80
	db	$ff

