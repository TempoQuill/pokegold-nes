Music_NationalPark:
	db	080h
	dw	$ffff & Music_NationalPark_Ch1
	db	001h
	dw	$ffff & Music_NationalPark_Ch2
	db	002h
	dw	$ffff & Music_NationalPark_Ch3
	db	003h
	dw	$ffff & Music_NationalPark_Ch4
	db	004h
	dw	$ffff & Music_NationalPark_Ch5
;----------------------------------------
Music_NationalPark_Ch1:
;----------------------------------------
	db	$da,$00,$c0
;	db	$e5,$77
; P1-1
;	db	$ef,$0f
	db	$e1,$18,$24
	db	$db,$01
	db	$d8,$c,$77
	db	$01
@loop:
; P1-2
	db	$fe
	dw	$ffff & @sub2_13
; P1-14
	db	$fe
	dw	$ffff & @sub2_13
; P1-26
	db	$d8,$6,$67
	db	$fe
	dw	$ffff & @sub26_27
; P1-28
	db	$d8,$c,$77
	db	$0f
; P1-29
	db	$d5,$b0
	db	$d4,$30
	db	$60
	db	$90
	db	$30
	db	$60
	db	$b0
	db	$d8,$6,$67
	db	$d3,$30
	db	$20
	db	$30
	db	$00
	db	$30
	db	$00
	db	$20
	db	$00
	db	$30
	db	$02
	db	$30
	db	$02
	db	$30
	db	$00
; P1-30
	db	$fe
	dw	$ffff & @sub26_27
; P1-32
	 db	$dc,$77
	db	$d4,$50
	db	$64
	db	$43
	db	$01
	db	$1b
	db	$67
; P1-33
	db	$20
	db	$dc,$98
	db	$3f
;      -tie
	db	$dc,$77
	db	$36
	db	$d8,$c,$77
	db	$03
; P1-34
	db	$fd,0
	dw	$ffff & @loop
@sub2_13:
	db	$d5,$95
	db	$d4,$61
	db	$dc,$47
	db	$60
	db	$90
	db	$dc,$57
	db	$60
	db	$90
	db	$dc,$77
	db	$60
	db	$90
	db	$dc,$97
	db	$60
	db	$90
; P1-3
	db	$dc,$77
	db	$d5,$a5
	db	$d4,$71
	db	$dc,$47
	db	$70
	db	$a0
	db	$dc,$57
	db	$70
	db	$a0
	db	$dc,$77
	db	$70
	db	$a0
	db	$dc,$97
	db	$70
	db	$a0
	db	$dc,$77
; P1-4
	db	$d5,$95
	db	$d4,$61
	db	$dc,$47
	db	$d3,$10
	db	$20
	db	$dc,$57
	db	$10
	db	$20
	db	$dc,$77
	db	$10
	db	$20
	db	$dc,$97
	db	$10
	db	$20
; P1-5
	db	$dc,$77
	db	$d5,$a5
	db	$d4,$21
	db	$dc,$47
	db	$d3,$20
	db	$40
	db	$dc,$57
	db	$20
	db	$40
	db	$dc,$77
	db	$20
	db	$40
	db	$dc,$97
	db	$20
	db	$40
; P1-6
	db	$dc,$77
	db	$21
	db	$d4,$b1
	db	$d3,$21
	db	$d4,$b1
	db	$d3,$21
	db	$d4,$b1
	db	$d3,$21
	db	$d4,$b1
; P1-7
	db	$d3,$21
	db	$d4,$a1
	db	$d3,$21
	db	$d4,$a1
	db	$dc,$47
	db	$d3,$20
	db	$40
	db	$dc,$57
	db	$20
	db	$40
	db	$dc,$77
	db	$20
	db	$40
	db	$dc,$97
	db	$20
	db	$40
; P1-8
	db	$dc,$77
	db	$11
	db	$d4,$91
	db	$d3,$11
	db	$d4,$91
	db	$d3,$41
	db	$11
	db	$41
	db	$11
; P1-9
	db	$31
	db	$d4,$b1
	db	$d3,$31
	db	$d4,$b1
	db	$dc,$57
	db	$d3,$60
	db	$40
	db	$dc,$67
	db	$30
	db	$40
	db	$dc,$77
	db	$60
	db	$70
	db	$dc,$97
	db	$90
	db	$b0
; P1-10
	db	$dc,$77
	db	$21
	db	$d4,$b1
	db	$d3,$21
	db	$d4,$b1
	db	$d3,$21
	db	$d4,$b1
	db	$d3,$21
	db	$d4,$b1
; P1-11
	db	$d3,$21
	db	$d4,$a1
	db	$d3,$21
	db	$d4,$a1
	db	$dc,$47
	db	$d3,$20
	db	$40
	db	$dc,$57
	db	$20
	db	$40
	db	$dc,$77
	db	$20
	db	$40
	db	$dc,$97
	db	$20
	db	$40
; P1-12
	db	$dc,$77
	db	$11
	db	$d4,$91
	db	$d3,$11
	db	$d4,$91
	db	$d3,$41
	db	$11
	db	$41
	db	$11
; P1-13
	db	$31
	db	$d4,$b1
	db	$d3,$31
	db	$d4,$b1
	db	$d3,$31
	db	$d4,$b1
	db	$d3,$31
	db	$d4,$b1
	db	$ff
@sub26_27:
	db	$0f
	db	$02
	db	$d3,$b0
	db	$b0
	db	$00
	db	$b0
	db	$00
	db	$b0
	db	$00
	db	$b1
	db	$03
; P1-27
	db	$0f
	db	$02
	db	$a0
	db	$a0
	db	$00
	db	$a0
	db	$00
	db	$a0
	db	$00
	db	$a1
	db	$03
	db	$ff
;----------------------------------------
Music_NationalPark_Ch2:
;----------------------------------------
; P2-1
	db	$e1,$14,$24
	db	$db,$01
	db	$d8,$c,$a7
	db	$01
;	db	$ef,$f0
@loop:
	db	$d8,$c,$a7
; P2-2
	db	$fe
	dw	$ffff & @mero2_13
	db	$d4,$37
; P2-14
	db	$fe
	dw	$ffff & @mero2_13
	db	$01
	db	$dc,$a7
	db	$d3,$91
	db	$71
	db	$61
; P2-26
	db	$d8,$6,$a7
	db	$fe
	dw	$ffff & @mero26_27
; P2-28
	db	$d4,$c0
	db	$d3,$14
	db	$d4,$93
	db	$01
	db	$d3,$b7
	db	$91
	db	$01
	db	$71
	db	$01
	db	$93
; P2-29
	db	$50
	db	$6d
	db	$dc,$87
	db	$80
	db	$90
	db	$00
	db	$90
	db	$00
	db	$80
	db	$00
	db	$90
	db	$02
	db	$90
	db	$02
	db	$90
	db	$00
	db	$dc,$a7
; P2-30
	db	$fe
	dw	$ffff & @mero26_27
; P2-32
	db	$d4,$c0
	db	$d3,$14
	db	$d4,$93
	db	$01
	db	$bb
	db	$d3,$17
; P2-33
	db	$d4,$a0
	db	$e1,$00,$00
	db	$dc,$b8
	db	$bf
;      -tie
	db	$e1,$14,$24
	db	$dc,$b7
	db	$ba
	db	$d5,$41
	db	$31
; P2-34
	db	$fd,0
	dw	$ffff & @loop
@mero2_13:
	db	$d5,$25
	db	$91
	db	$d4,$27
; P2-3
	db	$d5,$25
	db	$a1
	db	$d4,$27
; P2-4
	db	$d5,$25
	db	$91
	db	$d4,$27
; P2-5
	db	$d5,$25
	db	$a1
	db	$d4,$77
; P2-6
	db	$d6,$75
	db	$d5,$21
	db	$b7
; P2-7
	db	$d6,$75
	db	$d5,$21
	db	$a7
; P2-8
	db	$d6,$65
	db	$d5,$11
	db	$97
; P2-9
	db	$d6,$b5
	db	$d5,$61
	db	$d4,$37
; P2-10
	db	$d6,$75
	db	$d5,$21
	db	$b7
; P2-11
	db	$d6,$75
	db	$d5,$21
	db	$a7
; P2-12
	db	$d6,$65
	db	$d5,$11
	db	$97
; P2-13
	db	$d6,$b5
	db	$d5,$61
	db	$ff
@mero26_27:
	db	$d3,$50
	db	$64
	db	$73
	db	$01
	db	$26
	db	$dc,$87
	db	$d2,$50
	db	$60
	db	$00
	db	$60
	db	$00
	db	$50
	db	$00
	db	$61
	db	$dc,$a7
	db	$d4,$b1
	db	$d3,$21
; P2-27
	db	$d3,$50
	db	$64
	db	$73
	db	$01
	db	$46
	db	$dc,$87
	db	$d2,$30
	db	$40
	db	$00
	db	$40
	db	$00
	db	$30
	db	$00
	db	$41
	db	$dc,$a7
	db	$d3,$31
	db	$21
	db	$ff
;----------------------------------------
Music_NationalPark_Ch3:
;----------------------------------------
; P3-1
	db	$e1,$16,$24
	db	$d8,$c,$20
	db	$d3,$90
	db	$b0
;	db	$ef,$ff
@loop:
	db	$fe
	dw	$ffff & @bass2_12
; P3-13
	db	$dc,$81
	db	$d2,$bd
	db	$dc,$22
	db	$d3,$90
	db	$b0
; P3-14
	db	$fe
	dw	$ffff & @bass2_12
; P3-15
; P3-25
	db	$dc,$81
	db	$d2,$b7
	db	$d3,$37
; P3-26
	db	$fe
	dw	$ffff & @bass26_29
	db	$dc,$22
	db	$d3,$30
	db	$dc,$66
	db	$d4,$62
; P3-30
	db	$fe
	dw	$ffff & @bass26_29
	db	$dc,$22
	db	$d3,$30
	db	$d4,$60
	db	$d3,$90
	db	$b0
; P3-34
	db	$fd,0
	dw	$ffff & @loop
@bass2_12:
; P3-2
	db	$dc,$81
	db	$d2,$1f
; P3-3
	db	$2d
	db	$dc,$22
	db	$90
	db	$b0
; P3-4
	db	$dc,$81
	db	$d1,$1f
; P3-5
	db	$29
	db	$dc,$44
	db	$11
	db	$21
	db	$41
; P3-6
	db	$61
	db	$41
	db	$21
	db	$dc,$81
	db	$d2,$b9
; P3-7
	db	$dc,$44
	db	$d1,$61
	db	$41
	db	$21
	db	$dc,$81
	db	$d2,$a8
	db	$d1,$30
; P3-8
	db	$dc,$44
	db	$d1,$41
	db	$21
	db	$11
	db	$dc,$81
	db	$d2,$93
	db	$d1,$93
	db	$dc,$44
	db	$41
; P3-9
	db	$dc,$81
	db	$6d
	db	$dc,$22
	db	$30
	db	$40
; P3-10
	db	$dc,$44
	db	$61
	db	$41
	db	$21
	db	$dc,$81
	db	$d2,$b9
; P3-11
	db	$dc,$44
	db	$d1,$61
	db	$41
	db	$21
	db	$dc,$81
	db	$d2,$a9
; P3-12
	db	$dc,$44
	db	$d1,$41
	db	$21
	db	$11
	db	$dc,$81
	db	$d2,$93
	db	$b3
	db	$dc,$44
	db	$d1,$11
	db	$ff
@bass26_29:
	db	$dc,$66
	db	$d5,$72
	db	$d4,$21
	db	$00
	db	$dc,$81
	db	$b3
	db	$20
	db	$00
	db	$dc,$22
	db	$b0
	db	$dc,$66
	db	$22
; P3-27
	db	$d5,$72
	db	$d4,$21
	db	$00
	db	$dc,$81
	db	$a3
	db	$20
	db	$00
	db	$dc,$22
	db	$a0
	db	$dc,$66
	db	$22
; P3-28
	db	$d5,$62
	db	$d4,$11
	db	$00
	db	$dc,$81
	db	$93
	db	$10
	db	$00
	db	$dc,$22
	db	$90
	db	$dc,$66
	db	$12
; P3-29
	db	$d5,$b2
	db	$d4,$61
	db	$00
	db	$dc,$81
	db	$d3,$33
	db	$d4,$60
	db	$00
	db	$ff
;----------------------------------------
Music_NationalPark_Ch4:
;----------------------------------------
	db	$e3,$003
;----------------------------------------
Music_NationalPark_Ch5:
;----------------------------------------
; P4-1
	db	$d8,$c
	db	$01
@loop:
; P4-2
@dr4:
	db	$0f
	db	$fd,23
	dw	$ffff & @dr4
; P4-25
	db	$07
	db	$b1
	db	$31
	db	$b0
	db	$30
	db	$c1
; P4-26
@dr26:
	db	$b1
	db	$80
	db	$80
	db	$31
	db	$80
	db	$80
	db	$b1
	db	$80
	db	$80
	db	$31
	db	$c1
	db	$fd,7
	dw	$ffff & @dr26
; P4-33
	db	$b1
	db	$80
	db	$80
	db	$31
	db	$80
	db	$80
	db	$b1
	db	$40
	db	$40
	db	$30
	db	$30
	db	$b0
	db	$40
; P4-34
	db	$fd,0
	dw	$ffff & @loop
;:


