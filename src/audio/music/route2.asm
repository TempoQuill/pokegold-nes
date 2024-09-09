Music_Route2:
	db	080h
	dw	$ffff & Music_Route2_Ch1
	db	001h
	dw	$ffff & Music_Route2_Ch2
	db	002h
	dw	$ffff & Music_Route2_Ch3
	db	003h
	dw	$ffff & Music_Route2_Ch4
	db	004h
	dw	$ffff & Music_Route2_Ch5
;----------------------------------------
Music_Route2_Ch1:
;----------------------------------------
	db	$da,$00,$97
;	db	$e5,$77
; P1-1
;	db	$ef,$0f
	db	$e1,$06,$23
	db	$d8,$c,$b1
; P1-2
	db	$0f
; P1-3
	db	$0f
; P1-4
	db	$fe
	dw	$ffff & @sub4_5
@loop:
	db	$dc,$b1
; P1-6
	db	$d4,$c3
	db	$c3
	db	$c3
	db	$c3
; P1-7
	db	$d3,$53
	db	$53
	db	$53
	db	$53
; P1-8
; P1-9
	db	$fe
	dw	$ffff & @sub4_5
; P1-10
	db	$fe
	dw	$ffff & @sub10_13
; P1-14
	db	$fe
	dw	$ffff & @sub10_13
; P1-18
	db	$fe
	dw	$ffff & @sub18_20
; P1-21
	db	$d4,$81
	db	$d3,$11
	db	$d4,$81
	db	$d3,$11
	db	$61
	db	$31
	db	$d4,$c1
	db	$81
; P1-22
	db	$fe
	dw	$ffff & @sub18_20
; P1-25
	db	$81
	db	$d3,$11
	db	$31
	db	$81
	db	$61
	db	$31
	db	$d4,$c1
	db	$81
; P1-26
	db	$fd,0
	dw	$ffff & @loop
@sub4_5:
	db	$d3,$13
	db	$13
	db	$13
	db	$13
; P1-5
	db	$13
	db	$13
	db	$dc,$b7
	db	$13
	db	$d4,$c3
	db	$dc,$b1
	db	$ff
@sub10_13:
	db	$d5,$c1
	db	$d4,$51
	db	$d5,$c1
	db	$d4,$51
	db	$d5,$c1
	db	$d4,$51
	db	$d5,$c1
	db	$d4,$51
; P1-11
	db	$51
	db	$b1
	db	$51
	db	$b1
	db	$51
	db	$b1
	db	$51
	db	$b1
; P1-12
	db	$11
	db	$a1
	db	$11
	db	$a1
	db	$11
	db	$a1
	db	$11
	db	$a1
; P1-13
	db	$11
	db	$91
	db	$11
	db	$91
	db	$dc,$b7
	db	$d5,$c1
	db	$d4,$91
	db	$d5,$c1
	db	$d4,$81
	db	$dc,$b1
	db	$ff
@sub18_20:
	db	$c1
	db	$81
	db	$c1
	db	$81
	db	$c1
	db	$91
	db	$c1
	db	$91
; P1-19
	db	$d3,$51
	db	$11
	db	$51
	db	$11
	db	$31
	db	$d4,$c1
	db	$d3,$31
	db	$d4,$c1
; P1-20
	db	$d3,$11
	db	$d4,$a1
	db	$d3,$11
	db	$d4,$a1
	db	$d3,$11
	db	$d4,$a1
	db	$d3,$11
	db	$d4,$a1
	db	$ff
;----------------------------------------
Music_Route2_Ch2:
;----------------------------------------
; P2-1
;	db	$ef,$ff
	db	$e1,$08,$24
	db	$d8,$c,$b2
; P2-2
	db	$fe
	dw	$ffff & @mero2_5
; P2-6
@loop:
	db	$dc,$b2
	db	$fe
	dw	$ffff & @mero2_5
; P2-10
	db	$db,$02
	db	$dc,$b5
	db	$fe
	dw	$ffff & @mero10_13
; P2-14
	db	$fe
	dw	$ffff & @mero10_13
; P2-15
; P2-16
; P2-17
; P2-18
	db	$fe
	dw	$ffff & @mero18_21
; P2-22
	db	$fe
	dw	$ffff & @mero18_21
; P2-26
	db	$fd,0
	dw	$ffff & @loop
@mero2_5:
	db	$d3,$53
	db	$53
	db	$51
	db	$d5,$11
	db	$d3,$51
	db	$d5,$11
; P2-3
	db	$d3,$b3
	db	$b3
	db	$b1
	db	$d5,$81
	db	$d3,$b1
	db	$d5,$81
; P2-4
	db	$d3,$a3
	db	$a3
	db	$a3
	db	$a3
; P2-5
	db	$93
	db	$93
	db	$dc,$b7
	db	$93
	db	$83
	db	$dc,$b2
	db	$ff
@mero10_13:
	db	$d5,$13
	db	$01
	db	$10
	db	$00
	db	$10
	db	$00
	db	$11
	db	$01
	db	$10
	db	$00
; P2-11
	db	$83
	db	$01
	db	$80
	db	$00
	db	$80
	db	$00
	db	$81
	db	$01
	db	$80
	db	$00
; P2-12
	db	$63
	db	$01
	db	$60
	db	$00
	db	$60
	db	$00
	db	$61
	db	$01
	db	$60
	db	$00
; P2-13
	db	$63
	db	$01
	db	$60
	db	$00
	db	$63
	db	$33
	db	$ff
@mero18_21:
	db	$d5,$53
	db	$01
	db	$50
	db	$00
	db	$50
	db	$00
	db	$51
	db	$01
	db	$50
	db	$00
; P2-19
	db	$a3
	db	$01
	db	$a0
	db	$00
	db	$90
	db	$00
	db	$91
	db	$01
	db	$90
	db	$00
; P2-20
	db	$63
	db	$01
	db	$60
	db	$00
	db	$70
	db	$00
	db	$71
	db	$01
	db	$70
	db	$00
; P2-21
	db	$83
	db	$01
	db	$80
	db	$00
	db	$80
	db	$00
	db	$81
	db	$01
	db	$80
	db	$00
	db	$ff
;----------------------------------------
Music_Route2_Ch3:
;----------------------------------------
; P3-1
;	db	$ef,$f0
	db	$e1,$16,$15
	db	$d8,$c,$81
; P3-2
	db	$d3,$c0
	db	$02
	db	$c0
	db	$02
	db	$c0
	db	$02
	db	$c0
	db	$02
; P3-3
	db	$d2,$50
	db	$02
	db	$50
	db	$02
	db	$50
	db	$02
	db	$50
	db	$02
; P3-4
	db	$fe
	dw	$ffff & @bass4_5
	db	$d4,$33
@loop:
	db	$d8,$c,$81
; P3-6
	db	$d4,$13
	db	$01
	db	$10
	db	$00
	db	$10
	db	$00
	db	$11
	db	$01
	db	$10
	db	$00
; P3-7
	db	$83
	db	$01
	db	$80
	db	$00
	db	$80
	db	$00
	db	$81
	db	$01
	db	$80
	db	$00
; P3-8
	db	$fe
	dw	$ffff & @bass4_5
	db	$d4,$31
	db	$dc,$19
	db	$d1,$10
	db	$30
; P3-10
	db	$fe
	dw	$ffff & @bass10_13
	db	$03
	db	$dc,$66
	db	$87
	db	$dc,$19
	db	$61
	db	$81
; P3-14
	db	$d8,$c,$81
	db	$fe
	dw	$ffff & @bass10_13
	db	$0f
; P3-18
	db	$dc,$81
	db	$fe
	dw	$ffff & @bass18_20
	db	$03
	db	$dc,$59
	db	$40
	db	$56
	db	$dc,$33
	db	$33
; P3-21
	db	$dc,$26
	db	$d2,$c0
	db	$d1,$12
	db	$dc,$33
	db	$d2,$c3
	db	$a3
	db	$dc,$66
	db	$c7
	db	$dc,$33
	db	$83
	db	$d1,$a3
	db	$83
; P3-22
	db	$fe
	dw	$ffff & @bass18_20
	db	$03
	db	$dc,$59
	db	$90
	db	$a6
	db	$dc,$33
	db	$c3
; P3-25
	db	$dc,$81
	db	$70
	db	$8f
;      -tie
	db	$8e
; P3-26
	db	$fd,0
	dw	$ffff & @loop
@bass4_5:
	db	$d4,$63
	db	$01
	db	$60
	db	$00
	db	$60
	db	$00
	db	$61
	db	$01
	db	$60
	db	$00
; P3-5
	db	$63
	db	$01
	db	$60
	db	$00
	db	$63
	db	$ff
@bass10_13:
	db	$dc,$81
	db	$d1,$59
	db	$dc,$33
	db	$31
	db	$01
	db	$11
; P3-11
	db	$d8,$6,$81
	db	$d2,$70
	db	$8e
	db	$dc,$33
	db	$a3
	db	$b3
	db	$03
	db	$dc,$19
	db	$d1,$11
	db	$31
; P3-12
	db	$dc,$81
	db	$40
	db	$5f
;      -tie
	db	$dc,$59
	db	$56
	db	$dc,$33
	db	$63
	db	$53
; P3-13
	db	$dc,$26
	db	$40
	db	$52
	db	$dc,$33
	db	$33
	db	$13
	db	$33
	db	$ff
@bass18_20:
	db	$dc,$81
	db	$d2,$cf
	db	$03
	db	$dc,$59
	db	$d1,$20
	db	$36
	db	$dc,$33
	db	$53
; P3-19
	db	$dc,$81
	db	$d2,$c0
	db	$d1,$1f
;      -tie
	db	$dc,$26
	db	$12
	db	$dc,$33
	db	$33
	db	$03
	db	$53
; P3-20
	db	$dc,$81
	db	$6f
	db	$ff
;----------------------------------------
Music_Route2_Ch4:
;----------------------------------------
	db	$e3,$005
;----------------------------------------
Music_Route2_Ch5:
;----------------------------------------
; P4-1
	db	$d8,$c
; P4-2
@dr2:
	db	$a3
	db	$a3
	db	$a1
	db	$c1
	db	$a1
	db	$c1
	db	$fd,3
	dw	$ffff & @dr2
; P4-3
; P4-4
; P4-5
	db	$a3
	db	$a3
	db	$a1
	db	$a1
	db	$43
@loop:
; P4-6
@dr6:
	db	$a3
	db	$a3
	db	$a1
	db	$a1
	db	$c1
	db	$a1
	db	$fd,4
	dw	$ffff & @dr6
; P4-7
; P4-8
; P4-9
; P4-10
@dr10:
	db	$c3
	db	$a1
	db	$c1
	db	$a1
	db	$c1
	db	$a1
	db	$c1
	db	$fd,7
	dw	$ffff & @dr10
; P4-11
; P4-12
; P4-13
; P4-14
; P4-15
; P4-16
; P4-17
	db	$c3
	db	$a3
	db	$a1
	db	$a1
	db	$43
; P4-18
@dr19:
	db	$c3
	db	$13
	db	$c1
	db	$c1
	db	$13
	db	$fd,3
	dw	$ffff & @dr19
; P4-19
; P4-20
; P4-21
	db	$c3
	db	$13
	db	$21
	db	$11
	db	$23
; P4-22
@dr22:
	db	$c3
	db	$13
	db	$c1
	db	$c1
	db	$13
	db	$fd,3
	dw	$ffff & @dr22
; P4-23
; P4-24
; P4-25
	db	$c3
	db	$13
	db	$31
	db	$31
	db	$43
	db	$fd,0
	dw	$ffff & @loop
;:


