Music_PokemonLullaby:
	db	040h
	dw	$ffff & Music_PokemonLullaby_Ch1
	db	001h
	dw	$ffff & Music_PokemonLullaby_Ch2
	db	002h
	dw	$ffff & Music_PokemonLullaby_Ch3
;----------------------------------------
Music_PokemonLullaby_Ch1:
;----------------------------------------
	db	$da,$00,$e0
	;db	$e5,$77
	db	$db,$03
	db	$e6,$00,$01
; P1-1
@loop10:
	db	$d8,$c,$a7
	db	$d4,$8f
; P1-2
	db	$d3,$1f
; P1-3
	db	$d4,$8f
; P1-4
	db	$d3,$17
	db	$d4,$c7
; P1-5
	db	$8f
; P1-6
	db	$d3,$17
	db	$d4,$c7
; P1-7
	db	$87
	db	$01
	db	$81
	db	$81
	db	$c1
; P1-8
	db	$d3,$13
	db	$d4,$c3
	db	$d3,$13
	db	$d4,$c3
; P1-9
	db	$8f
; P1-10
	db	$d3,$17
	db	$d4,$c7
	db	$fd,0
	dw	$ffff & @loop10
;----------------------------------------
Music_PokemonLullaby_Ch2:
;----------------------------------------
	db	$e1,$10,$14
	db	$db,$00
	db	$d8,$c,$c4
; P2-1 -
@loop20:
	db	$0f
; P2-2 -
	db	$09
	db	$d3,$81
	db	$71
	db	$81
; P2-3
	db	$dc,$c7
	db	$5b
	db	$31
	db	$51
; P2-4
	db	$63
	db	$83
	db	$61
	db	$51
	db	$31
	db	$61
; P2-5
	db	$59
	db	$dc,$c5
	db	$31
	db	$31
	db	$dc,$c7
	db	$51
; P2-6
	db	$63
	db	$53
	db	$63
	db	$dc,$c5
	db	$81
	db	$81
; P2-7
	db	$41
	db	$dc,$c7
	db	$5d
; P2-8
	db	$dc,$97
	db	$d4,$67
	db	$83
	db	$dc,$c5
	db	$d3,$81
	db	$81
; P2-9
	db	$dc,$c7
	db	$41
	db	$5f
; P2-10 -
	db	$0d
	db	$fd,0
	dw	$ffff & @loop20
;----------------------------------------
Music_PokemonLullaby_Ch3:
;----------------------------------------
; P3-1
	db	$d8,$c,$3a
@loop30:
	db	$d3,$11
	db	$51
	db	$81
	db	$c1
	db	$d2,$11
	db	$d3,$c1
	db	$a1
	db	$81
; P3-2
	db	$31
	db	$61
	db	$a1
	db	$d2,$11
	db	$31
	db	$11
	db	$d3,$c1
	db	$a1
	db	$fd,0
	dw	$ffff & @loop30


