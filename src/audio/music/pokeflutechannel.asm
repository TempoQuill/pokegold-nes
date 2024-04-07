Music_PokeFluteChannel:
	db	040h
	dw	$ffff & Music_PokeFluteChannel_Ch1
	db	001h
	dw	$ffff & Music_PokeFluteChannel_Ch2
	db	002h
	dw	$ffff & Music_PokeFluteChannel_Ch3
;----------------------------------------
Music_PokeFluteChannel_Ch1:
;----------------------------------------
	db	$da,$00,$f0
;	db	$e5,$77
;	db	$ef,$f0
	db	$db,$03
	db	$e6,$00,$02
	db	$d8,$c,$b4
; P1-1
	db	$03
	db	$d4,$57
	db	$57
; P1-2 --- tied
	db	$d8,$c,$b3
	db	$61
	db	$51
	db	$31
	db	$11
	db	$d3,$11
	db	$d4,$c1
; P1-3
	db	$a1
	db	$cf
; P1-4 - tie
	db	$01
	db	$d5,$83
	db	$a7
; P1-5
@loop10:
	db	$d4,$51
	db	$81
	db	$63
	db	$d5,$67
; P1-6
	db	$d4,$81
	db	$a1
	db	$83
	db	$d5,$53
	db	$d4,$81
	db	$a1
; P1-7
	db	$c1
	db	$d3,$11
	db	$d4,$c7
	db	$a7
; P1-8 --- tied
	db	$87
	db	$d5,$c1
	db	$d4,$31
; P1-9
	db	$d5,$c3
	db	$87
	db	$d4,$13
; P1-10
	db	$51
	db	$31
	db	$d5,$83
	db	$a7
	db	$fd,0
	dw	$ffff & @loop10
;----------------------------------------
Music_PokeFluteChannel_Ch2:
;----------------------------------------
;	db	$ef,$0f
	db	$db,$03
	db	$e6,$00,$01
	db	$d8,$c,$c4
; P2-1
	db	$03
	db	$d4,$17
	db	$d5,$87
; P2-2 --- tied
	db	$a7
	db	$d4,$57
; P2-3 --- tied
	db	$d8,$c,$c3
	db	$d5,$51
	db	$81
	db	$d4,$11
	db	$51
	db	$d5,$81
	db	$d4,$11
; P2-4
	db	$51
	db	$31
	db	$d5,$51
	db	$d4,$11
	db	$d5,$61
	db	$d4,$11
	db	$d5,$51
	db	$81
; P2-5
@loop20:
	db	$d4,$11
	db	$51
	db	$d5,$a3
	db	$13
	db	$d4,$81
	db	$61
; P2-6
	db	$51
	db	$31
	db	$d5,$83
	db	$13
	db	$81
	db	$51
; P2-7
	db	$d4,$11
	db	$d5,$a1
	db	$31
	db	$81
	db	$c1
	db	$d4,$31
	db	$d5,$31
	db	$71
; P2-8
	db	$a1
	db	$d4,$31
	db	$d5,$81
	db	$d4,$31
	db	$81
	db	$31
	db	$d5,$33
; P2-9
	db	$83
	db	$51
	db	$d4,$11
	db	$13
	db	$d5,$81
	db	$d4,$51
; P2-10
	db	$d5,$81
	db	$c1
	db	$51
	db	$d4,$11
	db	$d5,$61
	db	$d4,$11
	db	$d5,$51
	db	$81
	db	$fd,0
	dw	$ffff & @loop20
;----------------------------------------
Music_PokeFluteChannel_Ch3:
;----------------------------------------
	db	$e1,$10,$14
; P3-1
	db	$d8,$c,$81
	db	$fe
	dw	$ffff & @sub3_1_2
; P3-3
	db	$fe
	dw	$ffff & @sub3_1_2
; P3-5
@loop30:
	db	$03
	db	$d3,$11
	db	$d2,$61
	db	$51
	db	$61
	db	$d1,$13
	db	$03
; P3-6 --- tied
	db	$d3,$11
	db	$d2,$81
	db	$71
	db	$81
	db	$d1,$13
; P3-7
	db	$d2,$c1
	db	$a1
	db	$c3
	db	$a1
	db	$81
	db	$a3
; P3-8
	db	$81
	db	$71
	db	$87
	db	$03
; P3-9
	db	$fe
	dw	$ffff & @sub3_1_2
	db	$fd,0
	dw	$ffff & @loop30
@sub3_1_2:
; P3-1
	db	$d2,$51
	db	$61
	db	$83
	db	$a1
	db	$81
	db	$d1,$13
; P3-2
	db	$11
	db	$31
	db	$11
	db	$d2,$81
	db	$a1
	db	$61
	db	$83
	db	$ff


