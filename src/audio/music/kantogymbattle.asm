Music_KantoGymBattle:
	db	040h
	dw	$ffff & Music_KantoGymBattle_Ch1
	db	001h
	dw	$ffff & Music_KantoGymBattle_Ch2
	db	002h
	dw	$ffff & Music_KantoGymBattle_Ch3
;----------------------------------------
Music_KantoGymBattle_Ch1:
;----------------------------------------
	db	$da,$00,$65
;	db	$e5,$77
	db	$db,$03
	db	$e6,$00,$02
	db	$e1,$12,$15
;	db	$ef,$f0
; P1-1
	db	$d8,$c,$b2
; P1-2
	db	$d4,$b0
	db	$a0
	db	$90
	db	$80
	db	$90
	db	$80
	db	$70
	db	$80
	db	$70
	db	$60
	db	$70
	db	$60
	db	$50
	db	$60
	db	$50
	db	$40
; P1-3
	db	$50
	db	$40
	db	$30
	db	$40
	db	$30
	db	$20
	db	$30
	db	$20
	db	$10
	db	$20
	db	$10
	db	$d5,$c0
	db	$d4,$10
	db	$d5,$c0
	db	$b0
	db	$c0
; P1-4
	db	$b1
	db	$b5
	db	$b1
	db	$b5
; P1-5
	db	$b1
	db	$b7
	db	$dc,$b7
	db	$c1
	db	$dc,$b2
	db	$b1
	db	$b5
; P1-6-tie
	db	$b1
	db	$b5
	db	$b1
	db	$b7
; P1-7-tie
	db	$dc,$b7
	db	$d4,$51
	db	$dc,$b2
	db	$d5,$b1
	db	$b5
; P1-8
	db	$b1
	db	$b5
	db	$b1
	db	$b7
; P1-9-tie
	db	$dc,$b7
	db	$c1
	db	$dc,$b2
	db	$b1
	db	$b5
	db	$b1
	db	$b5
; P1-10
	db	$b1
	db	$dc,$b4
	db	$d4,$53
	db	$53
	db	$51
; P1-11
@mainloop:
	db	$fe
	dw	$ffff & @sub1_11_12
	db	$d5,$b1
; P1-13
	db	$dc,$b7
	db	$97
	db	$c7
; P1-14
	db	$d4,$49
	db	$55
; P1-15
	db	$fe
	dw	$ffff & @sub1_11_12
	db	$41
; P1-17
	db	$dc,$b7
	db	$27
	db	$d5,$c7
; P1-18
	db	$99
	db	$d4,$55
; P1-19
	db	$dc,$b2
	db	$41
	db	$41
	db	$80
	db	$50
	db	$40
	db	$80
	db	$41
	db	$41
	db	$b0
	db	$90
	db	$50
	db	$b0
; P1-20
	db	$41
	db	$41
	db	$c0
	db	$b0
	db	$90
	db	$c0
	db	$41
	db	$dc,$b7
	db	$51
	db	$dc,$b2
	db	$41
	db	$41
; P1-21
	db	$80
	db	$50
	db	$40
	db	$80
	db	$41
	db	$41
	db	$b0
	db	$90
	db	$50
	db	$b0
	db	$41
	db	$41
; P1-22
	db	$c0
	db	$b0
	db	$90
	db	$c0
	db	$91
	db	$dc,$b5
	db	$c1
	db	$41
	db	$21
	db	$d5,$b3
; P1-23
	db	$41
	db	$91
	db	$c1
	db	$d4,$51
	db	$43
	db	$21
	db	$d5,$b1
; P1-24 -tie
	db	$b1
	db	$41
	db	$b1
	db	$d4,$21
	db	$dc,$b7
	db	$d5,$c7
; P1-25
	db	$b7
	db	$99
; P1-26 -tie
	db	$c5
	db	$dc,$b5
	db	$d4,$41
	db	$21
	db	$d5,$b3
; P1-27
	db	$41
	db	$91
	db	$c1
	db	$d4,$51
	db	$43
	db	$21
	db	$d5,$b1
; P1-28 -tie
	db	$b1
	db	$91
	db	$b1
	db	$d4,$21
	db	$dc,$b7
	db	$57
; P1-29
	db	$77
	db	$8f
; P1-30 -tie
	db	$dc,$b2
	db	$d5,$91
	db	$91
	db	$dc,$b7
	db	$d4,$2b
; P1-31 -tie
	db	$dc,$b2
	db	$91
	db	$63
	db	$dc,$b5
	db	$d5,$63
; P1-32 -tie
	db	$81
	db	$91
	db	$b1
	db	$dc,$b2
	db	$b1
	db	$b1
	db	$dc,$b7
	db	$d4,$4b
; P1-33 -tie
	db	$dc,$b2
	db	$b1
	db	$83
	db	$dc,$b7
	db	$d3,$45
; P1-34 -tie
	db	$dc,$4c
	db	$d4,$33
	db	$fd,0
	dw	$ffff & @mainloop
@sub1_11_12:
	db	$dc,$b5
	db	$41
	db	$d5,$b1
	db	$d4,$41
	db	$53
	db	$41
	db	$21
	db	$d5,$b1
; P1-12
	db	$41
	db	$91
	db	$b1
	db	$d4,$41
	db	$51
	db	$41
	db	$21
	db	$ff
;----------------------------------------
Music_KantoGymBattle_Ch2:
;----------------------------------------
	db	$db,$03
	db	$e1,$8,$36
	db	$e6,$00,$01
;	db	$ef,$0f
; P2-1
	db	$d8,$c,$c2
; P2-2
@loop201:
	db	$d3,$b0
	db	$90
	db	$b0
	db	$d2,$40
	db	$fd,8
	dw	$ffff & @loop201
; P2-4
	db	$d4
@loop202:
	db	$dc,$c2
	db	$41
	db	$41
	db	$70
	db	$50
	db	$40
	db	$70
	db	$41
	db	$41
	db	$b0
	db	$90
	db	$70
	db	$b0
; P2-5
	db	$41
	db	$41
	db	$c0
	db	$b0
	db	$90
	db	$c0
	db	$31
	db	$dc,$c7
	db	$51
	db	$dc,$c2
	db	$41
	db	$41
; P2-6
	db	$70
	db	$50
	db	$40
	db	$70
	db	$41
	db	$41
	db	$b0
	db	$90
	db	$70
	db	$b0
	db	$41
	db	$41
; P2-7
	db	$c0
	db	$b0
	db	$90
	db	$c0
	db	$91
	db	$dc,$c7
	db	$c1
	db	$dc,$c2
	db	$d3
	db	$fd,2
	dw	$ffff & @loop202
; P2-11
;	db	$ef,$ff
@mainloop:
	db	$fe
	dw	$ffff & @sub2_11_12
; P2-13
	db	$57
	db	$97
; P2-14
	db	$c9
	db	$95
; P2-15
	db	$fe
	dw	$ffff & @sub2_11_12
; P2-17
	db	$57
	db	$97
; P2-18
	db	$c9
	db	$d3,$55
; P2-19
	db	$47
	db	$dc,$b7
	db	$47
; P2-20
	db	$dc,$a2
	db	$05
	db	$d2,$53
	db	$53
	db	$51
; P2-21
	db	$dc,$a0
	db	$47
	db	$dc,$a7
	db	$47
; P2-22
	db	$0b
	db	$dc,$c5
	db	$d4,$b3
; P2-23
	db	$c3
	db	$93
	db	$b3
	db	$c3
; P2-24
	db	$93
	db	$53
	db	$dc,$b0
	db	$47
; P2-25 -tie
	db	$4f
; P2-26 -tie
	db	$dc,$b7
	db	$4b
	db	$dc,$c5
	db	$b3
; P2-27
	db	$c3
	db	$93
	db	$b3
	db	$c3
; P2-28
	db	$93
	db	$c3
	db	$dc,$b0
	db	$b7
; P2-29 -tie
	db	$dc,$b7
	db	$b7
	db	$dc,$b0
	db	$d3,$47
; P2-30 -tie
	db	$dc,$b7
	db	$47
	db	$dc,$c2
	db	$d4,$21
	db	$21
	db	$dc,$c7
	db	$67
; P2-31 -tie
	db	$dc,$c2
	db	$d3,$23
	db	$61
	db	$23
	db	$dc,$c7
	db	$93
; P2-32 -tie
	db	$81
	db	$61
	db	$41
	db	$dc,$c2
	db	$d4,$41
	db	$41
	db	$dc,$c7
	db	$87
; P2-33 -tie
	db	$dc,$c2
	db	$d3,$43
	db	$81
	db	$43
	db	$dc,$c7
	db	$b5
; P2-34 -tie
	db	$d4,$a3
	db	$fd,0
	dw	$ffff & @mainloop
@sub2_11_12:
	db	$db,$02
	db	$dc,$d1
	db	$d4,$b1
	db	$dc,$a2
	db	$b1
	db	$dc,$d1
	db	$91
	db	$dc,$a2
	db	$91
	db	$dc,$d1
	db	$b1
	db	$dc,$a2
	db	$b1
	db	$dc,$c5
	db	$c1
	db	$d3,$21
; P2-12 -tie
	db	$21
	db	$d4,$c3
	db	$b1
	db	$91
	db	$71
	db	$91
	db	$b1
	db	$db,$03
	db	$dc,$b0
	db	$ff
;----------------------------------------
Music_KantoGymBattle_Ch3:
;----------------------------------------
; P3-1
	db	$d8,$c,$38
; P3-2
	db	$d5,$50
	db	$00
@loop301:
	db	$c2
	db	$00
	db	$fd,6
	dw	$ffff & @loop301
	db	$c1
	db	$91
	db	$c1
; P3-4
@loop302:
	db	$dc,$38
	db	$40
	db	$00
	db	$40
	db	$00
	db	$73
	db	$40
	db	$00
	db	$40
	db	$00
	db	$b3
; P3-5
	db	$40
	db	$00
	db	$40
	db	$00
	db	$c3
	db	$30
	db	$00
	db	$dc,$19
	db	$61
	db	$40
	db	$00
	db	$40
	db	$00
; P3-6
	db	$dc,$38
	db	$73
	db	$40
	db	$00
	db	$40
	db	$00
	db	$b3
	db	$40
	db	$00
	db	$40
	db	$00
; P3-7
	db	$c3
	db	$40
	db	$00
	db	$dc,$19
	db	$51
	db	$fd,2
	dw	$ffff & @loop302
; P3-11
;	db	$ef,$0f
@mainloop:
	db	$dc,$19
	db	$d5,$41
	db	$b1
	db	$fd,8
	dw	$ffff & @mainloop
; P3-13
@loop31:
	db	$51
	db	$c1
	db	$fd,4
	dw	$ffff & @loop31
; P3-14
	db	$d6,$c1
	db	$d5,$51
	db	$d6,$c1
	db	$dc,$38
	db	$d5,$53
	db	$dc,$19
	db	$c1
	db	$d4,$51
	db	$d5,$c1
; P3-15
@loop32:
	db	$d5,$71
	db	$d4,$21
	db	$fd,8
	dw	$ffff & @loop32
; P3-17
@loop33:
	db	$d5,$51
	db	$c1
	db	$fd,7
	dw	$ffff & @loop33
	db	$d4,$51
	db	$d5,$c1
; P3-19
@loop34:
	db	$dc,$38
	db	$40
	db	$00
	db	$40
	db	$00
	db	$b3
	db	$40
	db	$00
	db	$40
	db	$00
	db	$c3
; P3-20
	db	$40
	db	$00
	db	$40
	db	$00
	db	$b3
	db	$40
	db	$00
	db	$dc,$19
	db	$51
	db	$fd,2
	dw	$ffff & @loop34
@loop35:
	db	$41
	db	$b1
	db	$fd,7
	dw	$ffff & @loop35
; P3-24
	db	$d4,$21
	db	$d5,$b1
	db	$51
	db	$c1
	db	$d4,$51
	db	$d5,$51
; P3-25
	db	$c1
	db	$d4,$51
@loop36:
	db	$d5,$51
	db	$c1
	db	$fd,5
	dw	$ffff & @loop36
; P3-26
@loop37:
	db	$d5,$71
	db	$d4,$21
	db	$fd,7
	dw	$ffff & @loop37
	db	$d5,$b1
	db	$d4,$21
	db	$d5,$51
	db	$b1
	db	$d4,$51
	db	$71
; P3-29
	db	$91
	db	$71
	db	$51
	db	$21
@loop38:
	db	$d5,$41
	db	$b1
	db	$fd,4
	dw	$ffff & @loop38
; P3-30
@loop39:
	db	$21
	db	$91
	db	$fd,8
	dw	$ffff & @loop39
; P3-32
@loop3a:
	db	$41
	db	$b1
	db	$fd,4
	dw	$ffff & @loop3a
; P3-33
	db	$d4,$41
	db	$d5,$b1
	db	$41
	db	$31
; P3-34 -tie
	db	$31
	db	$b1
	db	$d4,$41
	db	$61
	db	$fd,0
	dw	$ffff & @mainloop


