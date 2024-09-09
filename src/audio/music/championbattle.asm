Music_ChampionBattle:
	db	040h
	dw	$ffff & Music_ChampionBattle_Ch1
	db	001h
	dw	$ffff & Music_ChampionBattle_Ch2
	db	002h
	dw	$ffff & Music_ChampionBattle_Ch3
;----------------------------------------
Music_ChampionBattle_Ch1:
;----------------------------------------
	db	$da,$00,$62
;	db	$e5,$77
	db	$db,$03
	db	$e6,$00,$02
	db	$e1,$12,$15
;	db	$ef,$f0
; P1-1
	db	$d8,$c,$b2
	db	$d5,$b7
	db	$b7
; P1-2
	db	$b7
	db	$b3
	db	$dc,$b7
	db	$c3
; P1-3
@loop101:
	db	$fe
	dw	$ffff & @sub1_3_4
	db	$d4,$43
	db	$fd,2
	dw	$ffff & @loop101
; P1-7
	db	$fe
	dw	$ffff & @sub1_3_4
	db	$d4,$53
; P1-9
@loop102:
	db	$fe
	dw	$ffff & @sub1_9_9
	db	$fd,3
	dw	$ffff & @loop102
	db	$fe
	dw	$ffff & @sub1_10_10
; P1-11
@loop103:
	db	$fe
	dw	$ffff & @sub1_9_9
	db	$fd,7
	dw	$ffff & @loop103
	db	$fe
	dw	$ffff & @sub1_10_10
; P1-15
	db	$dc,$b2
	db	$b1
	db	$b1
	db	$dc,$b7
	db	$d4,$43
	db	$dc,$b2
	db	$d5,$b1
	db	$b1
	db	$dc,$b7
	db	$d4,$53
; P1-16
	db	$dc,$b2
	db	$d5,$b1
	db	$b1
	db	$dc,$b7
	db	$d4,$73
	db	$dc,$b2
	db	$d5,$b1
	db	$b1
	db	$dc,$b7
	db	$d4,$93
; P1-17
	db	$dc,$a0
	db	$b7
	db	$d5,$b7
; P1-18
	db	$d4,$cb
	db	$dc,$b2
	db	$b0
	db	$c0
	db	$d3,$10
	db	$20
@loop10:
	db	$fe
	dw	$ffff & @sub1_19_20
; P1-21
	db	$51
	db	$51
	db	$dc,$b7
	db	$73
@loop11:
	db	$dc,$b2
	db	$51
	db	$51
	db	$dc,$b7
	db	$93
	db	$fd,2
	dw	$ffff & @loop11
	db	$dc,$b2
	db	$51
	db	$51
	db	$dc,$b7
	db	$c3
; P1-23
	db	$fe
	dw	$ffff & @sub1_19_20
; P1-25
	db	$51
	db	$51
	db	$dc,$b7
	db	$73
	db	$dc,$b2
	db	$51
	db	$51
	db	$dc,$b7
	db	$93
; P1-26
	db	$dc,$b2
	db	$51
	db	$51
	db	$dc,$b7
	db	$c3
	db	$dc,$b2
	db	$51
	db	$51
	db	$dc,$b7
	db	$d3,$53
; P1-27
	db	$fe
	dw	$ffff & @sub1_27_28
	db	$c3
	db	$93
; P1-29
	db	$fe
	dw	$ffff & @sub1_27_28
	db	$d3,$33
	db	$33
; P1-31
	db	$dc,$a0
	db	$d4,$b7
	db	$d5,$b7
; P1-32
	db	$d4,$77
	db	$d5,$77
; P1-33
	db	$dc,$60
	db	$cf
; P1-34
	db	$dc,$70
	db	$cf
; P1-35
	db	$dc,$80
	db	$d4,$2f
; P1-36
	db	$dc,$a0
	db	$4f
; P1-37
	db	$dc,$b4
	db	$d3,$73
	db	$63
	db	$53
	db	$43
; P1-38
	db	$33
	db	$23
	db	$73
	db	$73
; P1-39
	db	$73
	db	$63
	db	$53
	db	$43
; P1-40
	db	$71
	db	$91
	db	$41
	db	$51
	db	$73
	db	$73
; P1-41
	db	$0f
; P1-42
	db	$dc,$90
	db	$d4,$77
	db	$dc,$b4
	db	$53
	db	$53
; P1-43
	db	$dc,$90
	db	$4f
; P1-44
	db	$2f
; P1-45
@loop12:
	db	$dc,$b2
	db	$d5,$b1
	db	$b1
	db	$dc,$b7
	db	$d4,$43
	db	$fd,4
	dw	$ffff & @loop12
; P1-47
@loop13:
	db	$dc,$b2
	db	$11
	db	$11
	db	$dc,$b7
	db	$43
	db	$fd,2
	dw	$ffff & @loop13
; P1-48
	db	$dc,$b2
	db	$11
	db	$11
	db	$dc,$b7
	db	$73
	db	$dc,$b2
	db	$11
	db	$11
	db	$dc,$b7
	db	$93
; P1-49
	db	$fe
	dw	$ffff & @sub1_49_50
	db	$d4,$41
	db	$41
	db	$dc,$b7
	db	$c3
; P1-51
	db	$fe
	dw	$ffff & @sub1_49_50
	db	$d4,$41
	db	$41
	db	$dc,$b7
	db	$d3,$33
	db	$fd,0
	dw	$ffff & @loop10
@sub1_3_4:
	db	$dc,$b2
	db	$d5,$b1
	db	$b5
	db	$b1
	db	$b5
; P1-4
	db	$b1
	db	$b5
	db	$b1
	db	$b1
	db	$dc,$b7
	db	$ff
@sub1_9_9:
	db	$dc,$b2
	db	$d5,$b1
	db	$b1
	db	$dc,$b7
	db	$d4,$43
	db	$ff
@sub1_10_10:
	db	$dc,$b2
	db	$d5,$b1
	db	$b1
	db	$dc,$b7
	db	$c3
	db	$ff
@sub1_19_20:
; P1-19
	db	$dc,$b5
	db	$d4,$41
	db	$b1
	db	$41
	db	$73
	db	$61
	db	$51
	db	$c1
; P1-20
	db	$71
	db	$b1
	db	$61
	db	$a1
	db	$51
	db	$91
	db	$41
	db	$81
	db	$dc,$b2
	db	$ff
@sub1_27_28:
	db	$dc,$b2
	db	$d4,$b1
	db	$b3
	db	$b3
	db	$b3
	db	$b3
; P1-28 - tie
	db	$b3
	db	$b1
	db	$dc,$b7
	db	$ff
@sub1_49_50:
	db	$dc,$b2
	db	$41
	db	$41
	db	$dc,$b7
	db	$b3
	db	$dc,$b2
	db	$41
	db	$41
	db	$dc,$b7
	db	$c3
; P1-50
	db	$dc,$b2
	db	$41
	db	$41
	db	$dc,$b7
	db	$d3,$23
	db	$dc,$b2
	db	$ff
;----------------------------------------
Music_ChampionBattle_Ch2:
;----------------------------------------
	db	$db,$03
	db	$e1,$8,$36
	db	$e6,$00,$01
;	db	$ef,$0f
; P2-1
	db	$d8,$c,$c2
	db	$d4,$47
	db	$47
; P2-2
	db	$47
	db	$43
	db	$dc,$c7
	db	$33
; P2-3
	db	$fe
	dw	$ffff & @sub2_3_4
	db	$b3
; P2-5
	db	$fe
	dw	$ffff & @sub2_3_4
	db	$c3
; P2-7
	db	$fe
	dw	$ffff & @sub2_3_4
	db	$d3,$23
; P2-9
	db	$fe
	dw	$ffff & @sub2_9_10
	db	$33
; P2-11
	db	$fe
	dw	$ffff & @sub2_9_10
	db	$63
; P2-13
	db	$fe
	dw	$ffff & @sub2_9_10
	db	$33
; P2-15
	db	$dc,$c2
	db	$41
	db	$41
	db	$dc,$c7
	db	$b3
	db	$dc,$c2
	db	$41
	db	$41
	db	$dc,$c7
	db	$c3
; P2-16
	db	$dc,$c2
	db	$41
	db	$41
	db	$dc,$c7
	db	$d3,$13
	db	$dc,$c2
	db	$d4,$41
	db	$41
	db	$dc,$c7
	db	$d3,$23
; P2-17
	db	$47
	db	$d4,$47
; P2-18
	db	$d3,$57
	db	$dc,$3c
	db	$57
@loop20:
; P2-19
;	db	$ef,$ff
	db	$dc,$c5
	db	$45
	db	$d4,$b5
	db	$d3,$41
	db	$31
; P2-20
	db	$23
	db	$13
	db	$d4,$c3
	db	$b3
; P2-21
	db	$dc,$c7
	db	$c7
	db	$d3,$57
; P2-22
;	db	$ef,$0f
	db	$dc,$c2
	db	$d4,$91
	db	$91
	db	$dc,$c7
	db	$c3
	db	$dc,$c2
	db	$91
	db	$91
	db	$dc,$c7
	db	$d3,$23
; P2-23
;	db	$ef,$ff
	db	$dc,$c5
	db	$45
	db	$d4,$b5
	db	$d3,$41
	db	$31
; P2-24
	db	$23
	db	$13
	db	$d4,$c3
	db	$b1
	db	$c1
; P2-25
	db	$dc,$c7
	db	$d3,$57
	db	$97
; P2-26
	db	$57
	db	$c7
; P2-27
;	db	$ef,$0f
	db	$fe
	dw	$ffff & @sub2_27_28
	db	$53
	db	$53
; P2-29
	db	$fe
	dw	$ffff & @sub2_27_28
	db	$73
	db	$73
; P2-31
	db	$dc,$c7
	db	$47
	db	$d4,$47
; P2-32
	db	$d3,$27
	db	$d4,$27
; P2-33
	db	$dc,$b0
	db	$4f
; P2-34
	db	$4f
; P2-35
	db	$6f
; P2-36
	db	$7f
; P2-37
	db	$dc,$c4
@loop21:
	db	$d2,$43
	db	$33
	db	$23
	db	$13
; P2-38
	db	$41
	db	$31
	db	$21
	db	$11
	db	$d3,$c3
	db	$c3
; P2-39
	db	$fd,2
	dw	$ffff & @loop21
; P2-41
;	db	$ef,$ff
	db	$dc,$b0
	db	$d4,$4f
; P2-42
	db	$cf
; P2-43
	db	$bf
; P2-44
	db	$9f
; P2-45
;	db	$ef,$0f
	db	$dc,$c2
	db	$41
	db	$41
	db	$dc,$c7
	db	$b3
	db	$dc,$c2
	db	$41
	db	$41
	db	$dc,$c7
	db	$c3
; P2-46
	db	$dc,$c2
	db	$41
	db	$41
	db	$dc,$c7
	db	$b3
	db	$dc,$c2
	db	$41
	db	$41
	db	$dc,$c7
	db	$a3
; P2-47
	db	$dc,$c2
	db	$41
	db	$41
	db	$dc,$c7
	db	$b3
	db	$dc,$c2
	db	$41
	db	$41
	db	$dc,$c7
	db	$c3
; P2-48
	db	$dc,$c2
	db	$41
	db	$41
	db	$dc,$c7
	db	$d3,$23
	db	$dc,$c2
	db	$d4,$41
	db	$41
	db	$dc,$c7
	db	$d3,$33
; P2-49
	db	$dc,$b0
	db	$47
	db	$57
; P2-50
	db	$77
	db	$57
; P2-51
	db	$47
	db	$57
; P2-52
	db	$77
	db	$97
	db	$fd,0
	dw	$ffff & @loop20
@sub2_3_4:
	db	$dc,$c2
	db	$41
	db	$45
	db	$41
	db	$45
; P2-4
	db	$41
	db	$45
	db	$41
	db	$41
	db	$dc,$c7
	db	$ff
@sub2_9_10:
; P2-9
	db	$dc,$c2
	db	$d4,$41
	db	$41
	db	$dc,$c7
	db	$b3
	db	$dc,$c2
	db	$41
	db	$41
	db	$dc,$c7
	db	$c3
; P2-10
	db	$dc,$c2
	db	$41
	db	$41
	db	$dc,$c7
	db	$b3
	db	$dc,$c2
	db	$41
	db	$41
	db	$dc,$c7
	db	$ff
@sub2_27_28:
; P2-27
	db	$dc,$c1
	db	$41
	db	$43
	db	$43
	db	$43
	db	$43
; P2-28-tie
	db	$43
	db	$41
	db	$dc,$c5
	db	$ff
;----------------------------------------
Music_ChampionBattle_Ch3:
;----------------------------------------
; P3-1
	db	$d8,$c,$40
@loop301:
	db	$d4,$40
	db	$06
	db	$fd,3
	dw	$ffff & @loop301
; P3-2
	db	$40
	db	$02
	db	$53
; P3-3
	db	$fe
	dw	$ffff & @sub3_3_4
; P3-5
	db	$fe
	dw	$ffff & @sub3_3_4
; P3-7
	db	$fe
	dw	$ffff & @sub3_3_4
; P3-9
	db	$fe
	dw	$ffff & @sub3_9_10
	db	$33
; P3-11
	db	$fe
	dw	$ffff & @sub3_9_10
	db	$a3
; P3-13
	db	$fe
	dw	$ffff & @sub3_9_10
	db	$33
; P3-15
	db	$40
	db	$00
	db	$40
	db	$00
	db	$b3
	db	$40
	db	$00
	db	$40
	db	$00
	db	$b3
; P3-16
	db	$40
	db	$00
	db	$40
	db	$00
	db	$c3
	db	$40
	db	$00
	db	$40
	db	$00
	db	$d3,$23
; P3-17
	db	$dc,$7f
	db	$47
	db	$d4,$47
; P3-18
	db	$dc,$40
	db	$c3
	db	$dc,$20
	db	$81
	db	$c1
	db	$71
	db	$b1
	db	$61
	db	$a1
@loop30:
; P3-19
@loop31:
	db	$41
	db	$b1
	db	$fd,8
	dw	$ffff & @loop31
; P3-21
@loop32:
	db	$51
	db	$c1
	db	$fd,5
	dw	$ffff & @loop32
; P3-22
	db	$51
	db	$d3,$11
	db	$d4,$a1
	db	$c1
	db	$81
	db	$a1
; P3-23
@loop33:
	db	$41
	db	$b1
	db	$fd,8
	dw	$ffff & @loop33
; P3-25
@loop34:
	db	$51
	db	$c1
	db	$fd,8
	dw	$ffff & @loop34
; P3-27
	db	$fe
	dw	$ffff & @sub3_27_27
; P3-28
	db	$d4,$41
	db	$51
	db	$41
	db	$51
	db	$41
	db	$d3,$31
	db	$21
	db	$11
; P3-29
	db	$fe
	dw	$ffff & @sub3_27_27
; P3-30
	db	$d4,$41
	db	$b1
	db	$41
	db	$b1
	db	$41
	db	$d3,$31
	db	$21
	db	$11
; P3-31
	db	$dc,$7f
	db	$d4,$b7
	db	$47
; P3-32
	db	$c7
	db	$47
; P3-33
@loop35:
	db	$dc,$20
	db	$41
	db	$71
	db	$fd,16
	dw	$ffff & @loop35
; P3-37
	db	$fe
	dw	$ffff & @sub3_37_37
; P3-38
	db	$d4,$51
	db	$c1
	db	$d3,$41
	db	$51
	db	$71
	db	$d4,$c1
	db	$d3,$41
	db	$51
; P3-39
	db	$fe
	dw	$ffff & @sub3_37_37
; P3-40
@loop36:
	db	$d4,$51
	db	$c1
	db	$fd,4
	dw	$ffff & @loop36
; P3-41
@loop37:
	db	$41
	db	$b1
	db	$fd,5
	dw	$ffff & @loop37
; P3-42
	db	$c1
	db	$d3,$41
	db	$d4,$41
	db	$01
	db	$41
	db	$01
; P3-43
@loop38:
	db	$51
	db	$c1
	db	$fd,5
	dw	$ffff & @loop38
; P3-44
	db	$d3,$21
	db	$51
	db	$d4,$51
	db	$01
	db	$51
	db	$01
; P3-45
@loop39:
	db	$41
	db	$91
	db	$fd,8
	dw	$ffff & @loop39
; P3-47
@loop3a:
	db	$41
	db	$b1
	db	$fd,7
	dw	$ffff & @loop3a
; P3-48
	db	$c1
	db	$b1
; P3-49
@loop3b:
	db	$d4,$41
	db	$b1
	db	$d3,$31
	db	$41
	db	$fd,7
	dw	$ffff & @loop3b
; P3-52
	db	$21
	db	$d4,$c1
	db	$b1
	db	$91
	db	$fd,0
	dw	$ffff & @loop30
@sub3_3_4:
; P3-3
	db	$40
	db	$00
	db	$40
	db	$04
	db	$fd,3
	dw	$ffff & @sub3_3_4
; P3-4
	db	$40
	db	$00
	db	$40
	db	$00
	db	$c3
	db	$ff
@sub3_9_10:
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
; P3-10
	db	$40
	db	$00
	db	$40
	db	$00
	db	$b3
	db	$40
	db	$00
	db	$40
	db	$00
	db	$ff
@sub3_27_27:
	db	$d4,$41
	db	$71
	db	$41
	db	$71
	db	$41
	db	$d3,$31
	db	$21
	db	$11
	db	$ff
@sub3_37_37:
	db	$d4,$51
	db	$c1
	db	$51
	db	$c1
	db	$51
	db	$c1
	db	$d3,$41
	db	$51
	db	$ff


