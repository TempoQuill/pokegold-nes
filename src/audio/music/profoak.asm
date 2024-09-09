Music_ProfOak:
	db	040h
	dw	$ffff & Music_ProfOak_Ch1
	db	001h
	dw	$ffff & Music_ProfOak_Ch2
	db	002h
	dw	$ffff & Music_ProfOak_Ch3
;----------------------------------------
Music_ProfOak_Ch1:
;----------------------------------------
	db	$da,$00,$76
;	db	$e5,$77
	db	$e1,$12,$34
	db	$e6,$00,$01
;	db	$ef,$f0
	db	$db,$03
; P1-2
	db	$d8,$c,$98
	db	$d5,$70
	db	$c0
	db	$d4,$40
	db	$70
; P1-3
	db	$af
; P1-4
	db	$97
	db	$dc,$97
	db	$97
; P1-5-12
@loop5:
	db	$dc,$91
	db	$fe
	dw	$ffff & @sub5
; P1-6
	db	$fe
	dw	$ffff & @sub5
; P1-7
	db	$fe
	dw	$ffff & @sub7
; P1-8
	db	$fe
	dw	$ffff & @sub7
	db	$fd,2
	dw	$ffff & @loop5
@loop:
; P1-13
	db	$fe
	dw	$ffff & @sub13
; P1-14
	db	$fe
	dw	$ffff & @sub13
; P1-15
	db	$fe
	dw	$ffff & @sub15
; P1-16
	db	$fe
	dw	$ffff & @sub15
; P1-17
	db	$d9,$02
	db	$fe
	dw	$ffff & @sub13
; P1-18
	db	$fe
	dw	$ffff & @sub13
	db	$d9,$00
; P1-19
	db	$fe
	dw	$ffff & @sub15
; P1-20
	db	$fe
	dw	$ffff & @sub15
	db	$fd,0
	dw	$ffff & @loop
@sub5:
	db	$d5,$c1
	db	$d4,$51
	db	$91
	db	$51
	db	$c1
	db	$51
	db	$91
	db	$51
	db	$ff
@sub7:
	db	$d5,$c1
	db	$d4,$41
	db	$71
	db	$41
	db	$c1
	db	$41
	db	$71
	db	$41
	db	$ff
@sub13:
	db	$d5,$a1
	db	$d4,$21
	db	$51
	db	$20
	db	$50
	db	$21
	db	$dc,$92
	db	$a1
	db	$dc,$91
	db	$21
	db	$dc,$92
	db	$51
	db	$dc,$91
	db	$ff
@sub15:
	db	$d5,$c0
	db	$d4,$50
	db	$dc,$92
	db	$93
	db	$53
	db	$dc,$91
	db	$50
	db	$90
	db	$dc,$92
	db	$c3
	db	$dc,$91
	db	$ff
;----------------------------------------
Music_ProfOak_Ch2:
;----------------------------------------
	db	$e1,$12,$34
; P2-2
	db	$db,$03
	db	$d8,$c,$a8
	db	$d4,$c0
	db	$d3,$40
	db	$70
	db	$b0
; P2-3
	db	$cf
; P2-4-12
	db	$dc,$a7
	db	$c9
	db	$db,$02
@loop4b:
	db	$dc,$b2
	db	$d4,$c1
	db	$d3,$21
	db	$41
; P2-5
	db	$53
	db	$41
	db	$23
	db	$dc,$91
	db	$c1
	db	$d2,$21
	db	$41
; P2-6
	db	$53
	db	$41
	db	$23
	db	$dc,$b2
	db	$d4,$c1
	db	$a1
	db	$91
; P2-7
	db	$a3
	db	$c0
	db	$00
	db	$c3
	db	$dc,$91
	db	$d3,$c1
	db	$a1
	db	$91
; P2-8
	db	$a3
	db	$c1
	db	$c3
	db	$fd,2
	dw	$ffff & @loop4b
	db	$05
; P2-13
	db	$dc,$b4
@loop:
	db	$25
	db	$d4,$a0
	db	$d3,$20
	db	$55
	db	$20
	db	$50
; P2-14
	db	$73
	db	$53
	db	$43
	db	$23
; P2-15
	db	$d4,$c5
	db	$90
	db	$c0
	db	$d3,$57
; P2-16
	db	$dc,$82
	db	$c5
	db	$90
	db	$c0
	db	$dc,$83
	db	$d2,$57
; P2-17
	db	$dc,$b4
	db	$d4,$a5
	db	$70
	db	$a0
	db	$d3,$47
; P2-18
	db	$53
	db	$43
	db	$23
	db	$13
; P2-19
	db	$d4,$c5
	db	$90
	db	$c0
	db	$d3,$55
	db	$d4,$c0
	db	$d3,$50
; P2-20
	db	$9f
	db	$fd,0
	dw	$ffff & @loop
;----------------------------------------
Music_ProfOak_Ch3:
;----------------------------------------
;	db	$ef,$0f
; P3-2
	db	$d8,$c,$24
	db	$03
; P3-3
	db	$d4,$51
	db	$01
	db	$d3,$50
	db	$00
	db	$d4,$a1
	db	$01
	db	$d5,$c1
	db	$d4,$c0
	db	$00
	db	$51
; P3-4
	db	$fe
	dw	$ffff & @sub4
; P3-5-12
@loop5:
	db	$fe
	dw	$ffff & @sub4
; P3-6
	db	$fe
	dw	$ffff & @sub4
; P3-7
	db	$fe
	dw	$ffff & @sub7
; P3-8
	db	$fe
	dw	$ffff & @sub7
	db	$fd,2
	dw	$ffff & @loop5
; P3-13
@loop:
	db	$fe
	dw	$ffff & @sub13
; P3-14
	db	$fe
	dw	$ffff & @sub13
; P3-15
	db	$fe
	dw	$ffff & @sub15
; P3-16
	db	$fe
	dw	$ffff & @sub15
; P3-17
	db	$d9,$02
	db	$fe
	dw	$ffff & @sub13
; P3-18
	db	$fe
	dw	$ffff & @sub13
	db	$d9,$00
; P3-19
	db	$fe
	dw	$ffff & @sub15
; P3-20
	db	$fe
	dw	$ffff & @sub15
	db	$fd,0
	dw	$ffff & @loop
@sub4:
	db	$51
	db	$01
	db	$d3,$50
	db	$00
	db	$d4,$91
	db	$01
	db	$d5,$c1
	db	$d4,$c0
	db	$00
	db	$51
	db	$ff
@sub7:
	db	$d5,$c1
	db	$01
	db	$d3,$40
	db	$00
	db	$d4,$41
	db	$01
	db	$71
	db	$c0
	db	$00
	db	$41
	db	$ff
@sub13:
	db	$d5,$a1
	db	$01
	db	$d4,$a0
	db	$00
	db	$d5,$a1
	db	$01
	db	$d4,$51
	db	$a0
	db	$00
	db	$21
	db	$ff
@sub15:
	db	$d5,$91
	db	$01
	db	$d4,$90
	db	$00
	db	$d5,$91
	db	$01
	db	$d4,$51
	db	$90
	db	$00
	db	$d5,$c1
	db	$ff
