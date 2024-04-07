Music_PokemonChannel:
	db	080h
	dw	$ffff & Music_PokemonChannel_Ch1
	db	001h
	dw	$ffff & Music_PokemonChannel_Ch2
	db	002h
	dw	$ffff & Music_PokemonChannel_Ch3
	db	003h
	dw	$ffff & Music_PokemonChannel_Ch4
	db	004h
	dw	$ffff & Music_PokemonChannel_Ch5
;----------------------------------------
Music_PokemonChannel_Ch1:
;----------------------------------------
	db	$da,$00,$80
;	db	$e5,$77
	db	$e1,$08,$38
	db	$db,$01
;	db	$ef,$0f
; P1-1
	db	$d8,$c,$b3
; P1-2
	db	$d5,$c0
	db	$01
	db	$70
	db	$c0
	db	$00
	db	$d4,$73
	db	$db,$00
	db	$d5,$c0
	db	$00
	db	$c0
	db	$00
	db	$d8,$6,$b3
	db	$80
	db	$00
	db	$c0
	db	$00
	db	$db,$01
; P1-3
	db	$d4,$11
	db	$03
	db	$81
	db	$11
	db	$01
	db	$c7
	db	$db,$00
	db	$13
	db	$13
	db	$d5,$81
	db	$01
	db	$db,$03
; P1-4
	db	$d3,$31
	db	$01
	db	$31
	db	$01
	db	$d4,$81
	db	$c1
	db	$d3,$31
	db	$71
	db	$81
	db	$01
	db	$41
	db	$01
	db	$11
	db	$01
	db	$41
	db	$01
; P1-5
	db	$07
	db	$d4,$81
	db	$05
	db	$c1
	db	$05
	db	$31
	db	$05
	db	$ff
;----------------------------------------
Music_PokemonChannel_Ch2:
;----------------------------------------
	db	$db,$01
	db	$e1,$08,$38
;	db	$ef,$ff
; P2-1
	db	$d8,$c,$b3
; P2-2
	db	$d4,$82
	db	$a0
	db	$c0
	db	$00
	db	$d3,$33
	db	$db,$00
	db	$d4,$80
	db	$00
	db	$80
	db	$00
	db	$d8,$6,$b3
	db	$30
	db	$00
	db	$80
	db	$00
	db	$db,$01
; P2-3
	db	$d3,$15
	db	$31
	db	$51
	db	$01
	db	$87
	db	$db,$00
	db	$d4,$83
	db	$73
	db	$51
	db	$01
	db	$db,$03
; P2-4
	db	$d3,$c1
	db	$01
	db	$b1
	db	$01
	db	$c7
	db	$d2,$11
	db	$01
	db	$11
	db	$01
	db	$d3,$b1
	db	$01
	db	$91
	db	$01
; P2-5
	db	$07
	db	$31
	db	$d4,$c0
	db	$00
	db	$80
	db	$00
	db	$30
	db	$00
	db	$d3,$81
	db	$05
	db	$d4,$81
	db	$05
; P2-6
	db	$ff
;----------------------------------------
Music_PokemonChannel_Ch3:
;----------------------------------------
; P3-1
	db	$e1,$08,$38
	db	$d8,$c,$10
;	db	$ef,$f0
; P3-2
	db	$d5,$80
	db	$01
	db	$c0
	db	$d4,$30
	db	$00
	db	$dc,$81
	db	$85
	db	$03
; P3-3
	db	$dc,$10
	db	$10
	db	$01
	db	$d5,$80
	db	$d4,$10
	db	$00
	db	$dc,$81
	db	$55
	db	$03
; P3-4
	db	$dc,$43
	db	$d3,$80
	db	$00
	db	$30
	db	$00
	db	$d4,$83
	db	$90
	db	$00
	db	$d3,$10
	db	$00
	db	$40
	db	$00
	db	$90
	db	$00
; P3-5
	db	$dc,$10
	db	$30
	db	$d4,$c0
	db	$80
	db	$c0
	db	$80
	db	$30
	db	$d5,$c0
	db	$d4,$30
	db	$d5,$80
	db	$02
	db	$80
	db	$02
; P3-6
	db	$ff
;----------------------------------------
Music_PokemonChannel_Ch4:
;----------------------------------------
	db	$e3,$003
; P4-1
;----------------------------------------
Music_PokemonChannel_Ch5:
;----------------------------------------
	db	$d8,$c
; P4-2
@dr2:
	db	$b2
	db	$b0
	db	$31
	db	$13
	db	$31
	db	$31
	db	$b0
	db	$30
	db	$fd,2
	dw	$ffff & @dr2
; P4-3
	db	$91
	db	$b1
	db	$90
	db	$90
	db	$90
	db	$90
	db	$13
	db	$90
	db	$90
	db	$90
	db	$90
; P4-4
	db	$c3
	db	$33
	db	$b3
	db	$b3
	db	$ff
