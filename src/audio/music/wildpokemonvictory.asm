Music_WildPokemonVictory:
	db	040h
	dw	$ffff & Music_WildPokemonVictory_Ch1
	db	001h
	dw	$ffff & Music_WildPokemonVictory_Ch2
	db	002h
	dw	$ffff & Music_WildPokemonVictory_Ch3
;----------------------------------------
Music_WildPokemonVictory_Ch1:
;----------------------------------------
	db	$da,$00,$7e
;	db	$e5,$77
	db	$db,$03
	db	$e6,$00,$01
; P1-2
	db	$d8,$c,$b1
	db	$d4,$c0
	db	$a0
	db	$90
	db	$70
	db	$dc,$b6
	db	$5b
; P1-3-4
Music_WildPokemonVictory_Ch1_start:
;	db	$ef,$0f
@loop:
	db	$fe
	dw	$ffff & @sub3
	db	$71
	db	$71
	db	$73
; P1-5-6
	db	$fe
	dw	$ffff & @sub3
; P1-6
	db	$93
	db	$dc,$78
	db	$d4,$83
; P1-7-8
	db	$d9,$01
	db	$fe
	dw	$ffff & @sub3
	db	$71
	db	$71
	db	$73
; P1-9-10
	db	$fe
	dw	$ffff & @sub3
	db	$93
	db	$d9,$00
	db	$dc,$78
	db	$d4,$73
; P1-11
	db	$fd,0
	dw	$ffff & @loop
@sub3:
	db	$dc,$71
	db	$d4,$90
	db	$c0
	db	$d3,$51
	db	$d4,$c1
	db	$d3,$51
	db	$d4,$90
	db	$70
	db	$50
	db	$70
	db	$91
	db	$51
; P1-4
	db	$a0
	db	$d3,$20
	db	$51
	db	$51
	db	$a1
	db	$ff
;----------------------------------------
Music_WildPokemonVictory_Ch2:
;----------------------------------------
	db	$e1,$12,$24
	db	$db,$02
; P2-2
	db	$d8,$c,$d1
	db	$d3,$50
	db	$70
	db	$90
	db	$a0
	db	$dc,$d6
	db	$cb
; P2-3-4
Music_WildPokemonVictory_Ch2_start:
;	db	$ef,$f0
@loop:
	db	$fe
	dw	$ffff & @melo3
	db	$d3,$c1
	db	$c1
	db	$c3
; P2-5-6
	db	$fe
	dw	$ffff & @melo3
	db	$d3,$c3
	db	$dc,$81
	db	$10
	db	$50
	db	$80
	db	$b0
; P2-7-8
	db	$d9,$01
	db	$fe
	dw	$ffff & @melo3
	db	$d3,$c1
	db	$c1
	db	$c3
; P2-9-10
	db	$fe
	dw	$ffff & @melo3
	db	$d3,$c3
	db	$d9,$00
	db	$dc,$81
	db	$d4,$c0
	db	$d3,$40
	db	$70
	db	$a0
; P2-11
	db	$fd,0
	dw	$ffff & @loop
@melo3:
	db	$dc,$81
	db	$d3,$c1
	db	$a1
	db	$91
	db	$a1
	db	$c1
	db	$c1
	db	$c3
; P2-4
	db	$d2,$21
	db	$21
	db	$23
	db	$ff
;----------------------------------------
Music_WildPokemonVictory_Ch3:
;----------------------------------------
; P3-2
	db	$d8,$c,$20
	db	$05
	db	$d1,$40
	db	$00
	db	$50
	db	$02
	db	$50
	db	$02
; P3-3-4
Music_WildPokemonVictory_Ch3_start:
@loop:
	db	$fe
	dw	$ffff & @base3
	db	$41
	db	$21
	db	$d5,$c1
	db	$01
; P3-5-6
	db	$fe
	dw	$ffff & @base3
	db	$51
	db	$01
	db	$dc,$4f
	db	$13
; P3-7-8
	db	$d9,$01
	db	$fe
	dw	$ffff & @base3
	db	$41
	db	$21
	db	$d5,$c1
	db	$01
; P3-9-10
	db	$fe
	dw	$ffff & @base3
	db	$51
	db	$01
	db	$d9,$00
	db	$dc,$4f
	db	$d5,$c3
; P3-11
	db	$fd,0
	dw	$ffff & @loop
@base3:
	db	$dc,$27
	db	$d4,$51
	db	$03
	db	$51
	db	$01
	db	$31
	db	$01
	db	$31
; P3-4
	db	$21
	db	$03
	db	$21
	db	$ff

Music_SuccessfulCapture:
	db	040h
	dw	$ffff & Music_SuccessfulCapture_Ch1
	db	001h
	dw	$ffff & Music_SuccessfulCapture_Ch2
	db	002h
	dw	$ffff & Music_SuccessfulCapture_Ch3
Music_SuccessfulCapture_Ch1:
	db	$da,$00,$7e
;	db	$e5,$77
	db	$db,$03
	db	$e6,$00,$01
	db	$d8,$c,$a1
	db	$fc
	dw	$ffff & Music_WildPokemonVictory_Ch1_start
Music_SuccessfulCapture_Ch2:
	db	$e1,$12,$24
	db	$d8,$c,$c1
	db	$db,$02
	db	$fc
	dw	$ffff & Music_WildPokemonVictory_Ch2_start
Music_SuccessfulCapture_Ch3:
	db	$d8,$c,$25
	db	$fc
	dw	$ffff & Music_WildPokemonVictory_Ch3_start


