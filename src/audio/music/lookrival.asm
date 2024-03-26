Music_LookRival:
	db	080h
	dw	$ffff & Music_LookRival_Ch1
	db	001h
	dw	$ffff & Music_LookRival_Ch2
	db	002h
	dw	$ffff & Music_LookRival_Ch3
	db	003h
	dw	$ffff & Music_LookRival_Ch4
	db	004h
	dw	$ffff & Music_LookRival_Ch5
;----------------------------------------
Music_LookRival_Ch1:
;----------------------------------------
	db	$da,$00,$70
;	db	$e5,$77
	db	$db,$01
	db	$e6,$00,$01
	db	$e1,$12,$15
;	db	$ef,$0f
; P1-1
	db	$d8,$c,$b2
	db	$d3,$10
	db	$d4,$b0
	db	$91
	db	$b0
	db	$90
	db	$71
; P1-2
	db	$65
	db	$dc,$b7
	db	$95
	db	$dc,$b2
	db	$b3
; P1-3
	db	$61
	db	$93
	db	$dc,$a0
	db	$99
; P1-4 -tie
	db	$dc,$a5
	db	$97
	db	$dc,$a6
	db	$77
Rloop10:
	db	$dc,$b5
; P1-5
	db	$63
	db	$41
	db	$65
	db	$61
	db	$81
; P1-6
	db	$93
	db	$b3
	db	$91
	db	$83
	db	$dc,$a0
	db	$61
; P1-7 -tie
	db	$dc,$a7
	db	$6f
; P1-8
	db	$dc,$66
	db	$01
	db	$61
	db	$83
	db	$dc,$b6
	db	$93
	db	$d3,$13
; P1-9
	db	$d4,$b3
	db	$91
	db	$b5
	db	$dc,$b4
	db	$b1
	db	$d3,$11
; P1-10
	db	$21
	db	$21
	db	$41
	db	$41
	db	$21
	db	$15
; P1-11
	db	$dc,$b7
	db	$d4,$bb
	db	$91
	db	$81
; P1-12
	db	$91
	db	$b9
	db	$c3
; P1-13
	db	$d3,$15
	db	$d4,$b5
	db	$d3,$31
	db	$11
; P1-14
	db	$d4,$b5
	db	$89
; P1-15
	db	$b5
	db	$95
	db	$d3,$11
	db	$d4,$b1
; P1-16
	db	$97
	db	$65
	db	$11
; P1-17
@loop1:
	db	$dc,$b2
	db	$65
	db	$dc,$b7
	db	$93
	db	$71
	db	$61
	db	$41
	db	$fd,3
	dw	$ffff & @loop1
; P1-20
	db	$dc,$b2
	db	$61
	db	$93
	db	$dc,$b7
	db	$95
	db	$73
	db	$fd,0
	dw	$ffff & Rloop10
;----------------------------------------
Music_LookRival_Ch2:
;----------------------------------------
	db	$db,$03
	db	$e1,$8,$36
;	db	$ef,$f0
; P2-1
	db	$d8,$c,$c2
	db	$d3,$71
	db	$61
	db	$41
	db	$21
; P2-2
	db	$15
	db	$dc,$c7
	db	$45
	db	$dc,$c2
	db	$63
; P2-3
	db	$11
	db	$43
	db	$dc,$b0
	db	$49
; P2-4 -tie
	db	$dc,$b7
	db	$4f
Rloop20:
	db	$dc,$c7
; P2-5
	db	$1b
	db	$dc,$c4
	db	$11
	db	$31
; P2-6
	db	$43
	db	$33
	db	$11
	db	$33
	db	$dc,$b0
	db	$15
; P2-7 -tie
	db	$dc,$b7
	db	$17
	db	$dc,$b4
	db	$d4,$a1
	db	$81
; P2-8
	db	$a1
	db	$dc,$c6
	db	$d3,$15
	db	$dc,$c7
	db	$47
; P2-9
	db	$6b
	db	$dc,$c4
	db	$61
	db	$81
; P2-10
	db	$91
	db	$91
	db	$81
	db	$81
	db	$61
	db	$dc,$c4
	db	$85
; P2-11
	db	$dc,$b0
	db	$6f
; P2-12
	db	$dc,$b7
	db	$6f
; P2-13
	db	$dc,$b0
	db	$8b
	db	$63
; P2-14
	db	$5f
; P2-15
	db	$6b
	db	$43
; P2-16
	db	$dc,$c7
	db	$37
	db	$dc,$c4
	db	$11
	db	$31
	db	$40
	db	$30
	db	$41
; P2-17
@loop1:
	db	$dc,$c2
	db	$15
	db	$dc,$c7
	db	$45
	db	$dc,$c2
	db	$63
	db	$fd,3
	dw	$ffff & @loop1
; P2-20
	db	$11
	db	$43
	db	$dc,$c7
	db	$49
	db	$fd,0
	dw	$ffff & Rloop20
;----------------------------------------
Music_LookRival_Ch3:
;----------------------------------------
; P3-1
	db	$d8,$c,$1d
	db	$01
	db	$d3,$11
	db	$d4,$91
	db	$71
; P3-2
	db	$dc,$3b
	db	$63
	db	$dc,$1d
	db	$91
	db	$dc,$3b
	db	$43
	db	$dc,$1d
	db	$11
	db	$31
	db	$41
; P3-3
	db	$91
	db	$71
	db	$61
	db	$dc,$81
	db	$49
; P3-4 -tie
	db	$49
	db	$dc,$1d
	db	$11
	db	$41
	db	$71
Rloop30:
; P3-5
	db	$fe
	dw	$ffff & @sub1
	db	$fd,3
	dw	$ffff & Rloop30
; P3-8
	db	$dc,$3b
	db	$63
	db	$dc,$1d
	db	$11
	db	$dc,$3b
	db	$43
	db	$dc,$1d
	db	$91
	db	$81
	db	$71
; P3-9
	db	$fe
	dw	$ffff & @sub2
; P3-10
	db	$b1
	db	$61
	db	$81
	db	$dc,$3b
	db	$93
	db	$dc,$1d
	db	$61
	db	$81
	db	$dc,$0e
	db	$90
	db	$a0
; P3-11
	db	$fe
	dw	$ffff & @sub3
; P3-12
	db	$b1
	db	$61
	db	$81
	db	$dc,$3b
	db	$93
	db	$dc,$1d
	db	$61
	db	$b1
	db	$c1
; P3-13
	db	$dc,$3b
	db	$d3,$13
	db	$dc,$1d
	db	$d4,$81
	db	$dc,$3b
	db	$b3
	db	$dc,$1d
	db	$81
	db	$a1
	db	$b1
; P3-14
	db	$dc,$3b
	db	$d3,$13
	db	$dc,$1d
	db	$d4,$81
	db	$dc,$3b
	db	$b3
	db	$dc,$1d
	db	$81
	db	$a1
	db	$dc,$0e
	db	$b0
	db	$a0
; P3-15
	db	$fe
	dw	$ffff & @sub2
; P3-16
	db	$fe
	dw	$ffff & @sub3
; P3-17
	db	$fe
	dw	$ffff & @sub1
; P3-18
	db	$fe
	dw	$ffff & @sub1
; P3-19
	db	$61
	db	$11
	db	$31
	db	$dc,$3b
	db	$43
	db	$dc,$1d
	db	$11
	db	$31
	db	$dc,$0e
	db	$40
	db	$50
; P3-20
	db	$dc,$1d
	db	$61
	db	$11
	db	$31
	db	$dc,$3b
	db	$43
	db	$dc,$1d
	db	$11
	db	$71
	db	$51
	db	$fd,0
	dw	$ffff & Rloop30
@sub1:
	db	$dc,$1d
	db	$61
	db	$11
	db	$31
	db	$dc,$3b
	db	$43
	db	$dc,$1d
	db	$11
	db	$31
	db	$41
	db	$ff
@sub2:
	db	$dc,$1d
	db	$b1
	db	$61
	db	$81
	db	$dc,$3b
	db	$93
	db	$dc,$1d
	db	$61
	db	$81
	db	$91
	db	$ff
@sub3:
	db	$dc,$3b
	db	$b3
	db	$dc,$1d
	db	$61
	db	$dc,$3b
	db	$93
	db	$dc,$1d
	db	$61
	db	$81
	db	$91
	db	$ff
;----------------------------------------
Music_LookRival_Ch4:
;----------------------------------------
;	db	$ef,$f0
	db	$e3,$003
; P4-1
	db	$d8,$c
	db	$07
; P4-2
	db	$0f
; P4-3
	db	$0f
; P4-4
	db	$43
	db	$43
	db	$31
	db	$31
	db	$31
	db	$31
Rloop40:
; P4-5
	db	$91
	db	$81
	db	$91
	db	$81
	db	$91
	db	$81
	db	$91
	db	$81
; P4-6
	db	$91
	db	$81
	db	$91
	db	$81
	db	$91
	db	$81
	db	$73
	db	$fd,0
	dw	$ffff & Rloop40
;----------------------------------------
Music_LookRival_Ch5:
;----------------------------------------
; P5-1
	db	$d8,$c
	db	$07
; P5-2
	db	$0f
; P5-3
	db	$41
	db	$33
	db	$35
	db	$33
; P5-4
	db	$43
	db	$43
	db	$31
	db	$31
	db	$31
	db	$31
Rloop50:
; P5-5
	db	$43
	db	$31
	db	$43
	db	$41
	db	$33
; P5-6
	db	$43
	db	$31
	db	$43
	db	$41
	db	$31
	db	$31
	db	$fd,0
	dw	$ffff & Rloop50

Music_AfterTheRivalFight:
	db	080h
	dw	$ffff & Music_AfterTheRivalFight_Ch1
	db	001h
	dw	$ffff & Music_AfterTheRivalFight_Ch2
	db	002h
	dw	$ffff & Music_AfterTheRivalFight_Ch3
	db	003h
	dw	$ffff & Music_AfterTheRivalFight_Ch4
	db	004h
	dw	$ffff & Music_AfterTheRivalFight_Ch5
;----------------------------------------
Music_AfterTheRivalFight_Ch1:
;----------------------------------------
	db	$da,$00,$70
;	db	$e5,$77
	db	$db,$00
	db	$e6,$00,$01
	db	$e1,$8,$14
;	db	$ef,$f0
	db	$d8,$c,$b2
	db	$d5,$93
	db	$93
	db	$dc,$82
	db	$d4,$91
	db	$91
	db	$91
	db	$91
	db	$fd,0
	dw	$ffff & Rloop10
;----------------------------------------
Music_AfterTheRivalFight_Ch2:
;----------------------------------------
	db	$db,$01
	db	$e1,$6,$35
;	db	$ef,$0f
	db	$d8,$c,$c2
	db	$d3,$93
	db	$93
	db	$dc,$a2
	db	$91
	db	$91
	db	$91
	db	$91
	db	$fd,0
	dw	$ffff & Rloop20
;----------------------------------------
Music_AfterTheRivalFight_Ch3:
;----------------------------------------
	db	$d8,$c,$1d
	db	$d4,$41
	db	$01
	db	$41
	db	$01
	db	$91
	db	$71
	db	$61
	db	$41
	db	$fd,0
	dw	$ffff & Rloop30
;----------------------------------------
Music_AfterTheRivalFight_Ch4:
;----------------------------------------
	db	$e3,$003
;	db	$ef,$0f
; P5-1
	db	$d8,$c
; P5-2
	db	$33
	db	$33
	db	$41
	db	$31
	db	$31
	db	$31
	db	$fd,0
	dw	$ffff & Rloop40
;----------------------------------------
Music_AfterTheRivalFight_Ch5:
;----------------------------------------
;	db	$ef,$0f
; P5-1
	db	$d8,$c
; P5-2
	db	$33
	db	$33
	db	$41
	db	$31
	db	$31
	db	$31
	db	$fd,0
	dw	$ffff & Rloop50




