Music_HealPokemon:
	db	040h
	dw	$ffff & Music_HealPokemon_Ch1
	db	001h
	dw	$ffff & Music_HealPokemon_Ch2
	db	002h
	dw	$ffff & Music_HealPokemon_Ch3
Music_HealPokemon_Ch1:
	db	$da,$00,$90
	db	$db,$02
	db	$e6,$00,$01
	db	$d8,$c,$81
	db	$01
	db	$e0,$00,$30,$c1
	db	$e0,$00,$45,$c1
	db	$e0,$00,$35,$51
	db	$03
	db	$e0,$00,$20,$53
	db	$e0,$00,$30,$c3
	db	$ff
Music_HealPokemon_Ch2:
	db	$db,$02
	db	$d8,$c,$c3
	db	$d3,$c3
	db	$c3
	db	$c1
	db	$91
	db	$d8,$c,$c4
	db	$d2,$57
	db	$ff
Music_HealPokemon_Ch3:
	db	$d8,$c,$32
	db	$d3,$51
	db	$01
	db	$51
	db	$01
	db	$51
	db	$91
	db	$d8,$c,$81
	db	$55
	db	$01
	db	$ff
