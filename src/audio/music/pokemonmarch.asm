Music_PokemonMarch:
	db	060h
	dw	$ffff & Music_PokemonMarch_Ch1
	db	001h
	dw	$ffff & Music_PokemonMarch_Ch2
	db	002h
	dw	$ffff & Music_PokemonMarch_Ch3
	db	004h
	dw	$ffff & Music_PokemonMarch_Ch5
;----------------------------------------
Music_PokemonMarch_Ch1:
;----------------------------------------
	db	$da,$00,$90
	db	$db,$03
	db	$e6,$00,$01
	db	$d8,$c,$42
	db	$d4,$33
	db	$dc,$62
	db	$33
	db	$dc,$82
	db	$33
	db	$dc,$a2
	db	$33
	db	$d8,$8,$a2
@mainloop:
; P1-1
	db	$fe
	dw	$ffff & @sub1
	db	$41
	db	$11
	db	$41
	db	$11
; P1-2
	db	$fe
	dw	$ffff & @sub1
	db	$41
	db	$11
	db	$41
	db	$81
; P1-3
	db	$fe
	dw	$ffff & @sub1
	db	$11
	db	$11
	db	$41
	db	$11
; P1-4
	db	$fe
	dw	$ffff & @sub1
	db	$41
	db	$11
	db	$21
	db	$41
; P1-5
	db	$fe
	dw	$ffff & @sub2
	db	$61
	db	$31
	db	$61
	db	$31
; P1-6
	db	$fe
	dw	$ffff & @sub2
	db	$61
	db	$31
	db	$61
	db	$a1
; P1-7
	db	$fe
	dw	$ffff & @sub2
	db	$31
	db	$31
	db	$61
	db	$31
; P1-8
	db	$fe
	dw	$ffff & @sub2
	db	$61
	db	$31
	db	$61
	db	$81
; P1-9
	db	$fe
	dw	$ffff & @sub2
	db	$61
	db	$31
	db	$61
	db	$31
; P1-10
	db	$fe
	dw	$ffff & @sub1
	db	$41
	db	$11
	db	$41
	db	$11
; P1-11
	db	$d5,$b1
	db	$b1
	db	$d4,$11
	db	$31
	db	$21
	db	$11
	db	$d5,$b1
	db	$03
	db	$41
	db	$03
; P1-12
	db	$d4,$41
	db	$41
	db	$61
	db	$81
	db	$71
	db	$61
	db	$43
	db	$61
	db	$83
	db	$b1
	db	$fd,0
	dw	$ffff & @mainloop
@sub1:
; P1-1
	db	$03
	db	$d4,$40
	db	$30
	db	$41
	db	$01
	db	$41
	db	$41
	db	$01
	db	$ff
@sub2:
; P1-5
	db	$03
	db	$60
	db	$50
	db	$61
	db	$01
	db	$61
	db	$61
	db	$01
	db	$ff
;----------------------------------------
Music_PokemonMarch_Ch2:
;----------------------------------------
; P2-1
	db	$db,$02
	db	$e1,$10,$22
	db	$d8,$c,$b2
	db	$d4,$83
	db	$83
	db	$83
	db	$83
@mainloop:
	db	$d8,$c,$b7
	db	$d4,$9b
	db	$d8,$8,$b3
	db	$41
	db	$91
	db	$b1
; P2-2
	db	$d3,$11
	db	$0f
	db	$05
; P2-3
	db	$d8,$8,$b7
	db	$d4,$9f
	db	$d8,$8,$b3
	db	$41
	db	$93
	db	$b1
; P2-4
	db	$d3,$13
	db	$21
	db	$13
	db	$21
	db	$13
	db	$21
	db	$11
	db	$d4,$b1
	db	$91
; P2-5
	db	$d8,$8,$b7
	db	$bf
	db	$d8,$8,$b3
	db	$b1
	db	$61
	db	$b1
	db	$d3,$11
; P2-6
	db	$31
	db	$0f
	db	$05
; P2-7
	db	$d8,$8,$b7
	db	$d4,$bf
	db	$d8,$8,$b3
	db	$61
	db	$b3
	db	$d3,$11
; P2-8
	db	$33
	db	$41
	db	$33
	db	$41
	db	$33
	db	$41
	db	$31
	db	$11
	db	$d4,$c1
; P2-9
	db	$d8,$8,$b7
	db	$bf
	db	$d8,$8,$b3
	db	$a1
	db	$b3
	db	$d3,$11
; P2-10
	db	$d8,$8,$b7
	db	$d4,$9f
	db	$d8,$8,$b3
	db	$b1
	db	$93
	db	$61
; P2-11
	db	$41
	db	$41
	db	$61
	db	$81
	db	$71
	db	$61
	db	$41
	db	$01
	db	$d3,$40
	db	$30
	db	$40
	db	$04
; P2-12
	db	$d4,$81
	db	$81
	db	$91
	db	$b1
	db	$a1
	db	$91
	db	$81
	db	$01
	db	$d3,$80
	db	$70
	db	$80
	db	$04
	db	$fd,0
	dw	$ffff & @mainloop
;----------------------------------------
Music_PokemonMarch_Ch3:
;----------------------------------------
	db	$d8,$c,$16
	db	$0f
	db	$d8,$8,$16
@mainloop:
; P3-1
	db	$fe
	dw	$ffff & @sub1
	db	$01
	db	$d3,$41
; P3-2
	db	$fe
	dw	$ffff & @sub1
	db	$d3,$91
	db	$41
; P3-3
	db	$fe
	dw	$ffff & @sub1
	db	$01
	db	$d3,$41
; P3-4
	db	$d4,$91
	db	$01
	db	$d3,$41
	db	$d4,$41
	db	$01
	db	$d3,$41
	db	$d4,$91
	db	$01
	db	$d3,$41
	db	$d4,$41
	db	$81
	db	$91
; P3-5
@loop1:
	db	$d4,$b1
	db	$01
	db	$d3,$61
	db	$d4,$61
	db	$01
	db	$d3,$61
	db	$d4,$81
	db	$01
	db	$d3,$61
	db	$d4,$a1
	db	$00
	db	$d3,$61
	db	$00
	db	$fd,3
	dw	$ffff & @loop1
; P3-8
	db	$d4,$b1
	db	$01
	db	$d3,$61
	db	$d4,$61
	db	$01
	db	$d3,$61
	db	$d4,$b1
	db	$01
	db	$d3,$61
	db	$31
	db	$11
	db	$d4,$c1
; P3-9
	db	$b1
	db	$01
	db	$d3,$61
	db	$d4,$61
	db	$01
	db	$d3,$61
	db	$d4,$81
	db	$01
	db	$d3,$61
	db	$d4,$61
	db	$81
	db	$b1
; P3-10
	db	$91
	db	$01
	db	$d3,$41
	db	$d4,$41
	db	$01
	db	$d3,$41
	db	$d4,$61
	db	$01
	db	$d3,$41
	db	$d4,$91
	db	$01
	db	$d3,$11
; P3-11
	db	$41
	db	$41
	db	$61
	db	$81
	db	$71
	db	$61
	db	$41
	db	$03
	db	$d4,$41
	db	$03
; P3-12
	db	$d3,$81
	db	$81
	db	$91
	db	$b1
	db	$a1
	db	$91
	db	$81
	db	$01
	db	$41
	db	$61
	db	$01
	db	$91
	db	$fd,0
	dw	$ffff & @mainloop
@sub1:
; P3-1
	db	$d4,$91
	db	$01
	db	$d3,$41
	db	$d4,$41
	db	$01
	db	$d3,$41
	db	$d4,$61
	db	$01
	db	$d3,$41
	db	$d4,$81
	db	$ff
;----------------------------------------
Music_PokemonMarch_Ch5:
;----------------------------------------
	db	$e3,$005
	db	$d8,$8
	db	$fe
	dw	$ffff & @sub2
@mainloop:
; P4-1
	db	$fe
	dw	$ffff & @sub1
; P4-2
	db	$13
	db	$11
	db	$13
	db	$11
	db	$13
	db	$14
	db	$d8,$6
	db	$30
	db	$30
	db	$20
	db	$20
; P4-3
	db	$d8,$8
	db	$fe
	dw	$ffff & @sub1
; P4-4
	db	$fe
	dw	$ffff & @sub2
; P4-5
	db	$fe
	dw	$ffff & @sub1
; P4-6
	db	$fe
	dw	$ffff & @sub2
; P4-7
	db	$fe
	dw	$ffff & @sub1
; P4-8
	db	$fe
	dw	$ffff & @sub2
; P4-9
	db	$fe
	dw	$ffff & @sub1
; P4-10
	db	$fe
	dw	$ffff & @sub2
; P4-11
	db	$23
	db	$21
	db	$23
	db	$21
	db	$25
	db	$11
	db	$d8,$4
	db	$04
	db	$d8,$6
	db	$30
	db	$30
; P4-12
	db	$d8,$8
	db	$fe
	dw	$ffff & @sub2
	db	$fd,0
	dw	$ffff & @mainloop
@sub1:
	db	$13
	db	$11
	db	$13
	db	$11
	db	$13
	db	$31
	db	$31
	db	$21
	db	$21
	db	$ff
@sub2:
; P4-4
	db	$13
	db	$11
	db	$13
	db	$13
	db	$13
	db	$21
	db	$31
	db	$21
	db	$ff


