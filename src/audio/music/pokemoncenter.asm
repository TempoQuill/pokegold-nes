Music_PokemonCenter:
	db	060h
	dw	Music_PokemonCenter_Ch1
	db	001h
	dw	Music_PokemonCenter_Ch2
	db	002h
	dw	Music_PokemonCenter_Ch3
	db	003h
	dw	Music_PokemonCenter_Ch4
;----------------------------------------
Music_PokemonCenter_Ch1:
;----------------------------------------
	db	$da,$00,$98
;	db	$e5,$77
	db	$db,$02
	db	$e1,$a,$14
	db	$e6,$00,$01
; P1-1
@loop10:
;	db	$ef,$0f
	db	$d8,$8c,$83
	db	$d4,$71
	db	$61
	db	$71
;		init c b4
	db	$d3,$33
	db	$21
	db	$d4,$c1
	db	$a1
; P1-2
	db	$c1
	db	$a1
	db	$81
	db	$71
	db	$51
	db	$71
	db	$81
	db	$a1
; P1-3
;		init c a2
	db	$a1
	db	$51
	db	$a1
;		init c b4
	db	$d3,$23
	db	$d4,$c1
	db	$a1
	db	$81
; P1-4
	db	$71
	db	$a1
	db	$c1
	db	$d3,$21
	db	$31
	db	$21
	db	$d4,$c1
	db	$a1
; P1-5
;		init c a2
	db	$71
	db	$61
	db	$71
;		init c b4
	db	$d3,$33
	db	$21
	db	$d4,$c1
	db	$a1
; P1-6
	db	$c1
	db	$a1
	db	$81
	db	$71
	db	$51
	db	$71
	db	$81
	db	$a1
; P1-7
;		init c a2
	db	$a1
	db	$51
	db	$a1
;		init c b4
	db	$d3,$23
	db	$d4,$c1
	db	$a1
	db	$81
; P1-8
	db	$d8,$8c,$b4
	db	$71
	db	$51
	db	$31
	db	$51
	db	$71
	db	$81
	db	$a1
	db	$c1
; P1-9
;	db	$ef,$f0
	db	$71
	db	$51
	db	$33
	db	$51
	db	$71
	db	$81
	db	$a1
; P1-10
	db	$c1
	db	$a1
	db	$83
	db	$51
	db	$71
	db	$81
	db	$a1
; P1-11
	db	$81
	db	$71
	db	$53
	db	$21
	db	$31
	db	$51
	db	$81
; P1-12
	db	$71
	db	$81
	db	$a1
	db	$c1
	db	$a7
; P1-13
	db	$d3,$31
	db	$21
	db	$d4,$c3
	db	$a1
	db	$c1
	db	$d3,$21
	db	$31
; P1-14
	db	$51
	db	$31
	db	$23
	db	$d4,$c1
	db	$d3,$21
	db	$31
	db	$51
; P1-15
	db	$21
	db	$d4,$c1
	db	$a3
	db	$81
	db	$a1
	db	$c1
	db	$81
; P1-16
	db	$a1
	db	$81
	db	$71
	db	$51
	db	$31
	db	$51
	db	$71
	db	$81
	db	$fd,0
	dw	@loop10
;----------------------------------------
Music_PokemonCenter_Ch2:
;----------------------------------------
	db	$e1,$10,$25
; P2-1
@loop20:
;	db	$ef,$ff
	db	$fe
	dw	@d_a_d
;	db	$ef,$0f
	db	$d8,$8c,$a5
	db	$d4,$a3
	db	$53
; P2-3
;	db	$ef,$ff
	db	$fe
	dw	@cs_a_cs
; P2-4
	db	$31
	db	$75
;	db	$ef,$0f
	db	$d8,$8c,$a5
	db	$d4,$a3
	db	$53
; P2-5
;	db	$ef,$ff
	db	$fe
	dw	@d_a_d
;	db	$ef,$0f
	db	$d8,$8c,$a5
	db	$d4,$a3
	db	$53
; P2-7
;	db	$ef,$ff
	db	$fe
	dw	@cs_a_cs
; P2-8
	db	$37
;	db	$ef,$0f
	db	$d8,$8c,$a5
	db	$d4,$33
	db	$53
; P2-9
	db	$d8,$8c,$c6
	db	$d3,$77
	db	$a7
; P2-10
	db	$81
	db	$a1
	db	$81
	db	$71
	db	$57
; P2-11
	db	$27
	db	$57
; P2-12
	db	$71
	db	$81
	db	$71
	db	$51
	db	$37
; P2-13
	db	$77
	db	$a7
; P2-14
	db	$81
	db	$71
	db	$81
	db	$a1
	db	$c7
; P2-15
	db	$a3
	db	$81
	db	$71
	db	$87
; P2-16
	db	$71
	db	$81
	db	$71
	db	$51
	db	$37
	db	$fd,0
	dw	@loop20
@d_a_d:
	db	$db,$02
	db	$d8,$8c,$c2
	db	$d3,$31
	db	$d4,$a1
	db	$d3,$31
	db	$dc,$c3
	db	$a3
	db	$83
	db	$71
; P2-2
	db	$51
	db	$25
	db	$ff
@cs_a_cs:
	db	$d8,$8c,$c2
	db	$d3,$21
	db	$d4,$a1
	db	$d3,$21
	db	$dc,$c3
	db	$73
	db	$53
	db	$21
	db	$ff
;----------------------------------------
Music_PokemonCenter_Ch3:
;----------------------------------------
	db	$d8,$c,$28
; P3-1
@loop30:
;	db	$ef,$f0
	db	$d4,$30
	db	$04
	db	$70
	db	$02
	db	$70
	db	$00
	db	$80
	db	$00
	db	$70
	db	$00
; P3-2
	db	$fe
	dw	@e_a_e_a
; P3-3
	db	$fe
	dw	@e_a_g_a
; P3-4
	db	$70
	db	$04
	db	$a0
	db	$02
	db	$a0
	db	$00
	db	$80
	db	$00
	db	$a0
	db	$00
; P3-5
	db	$30
	db	$04
	db	$70
	db	$02
	db	$70
	db	$00
	db	$80
	db	$00
	db	$70
	db	$00
; P3-6
	db	$fe
	dw	@e_a_e_a
; P3-7
	db	$fe
	dw	@e_a_g_a
; P3-8
	db	$30
	db	$04
	db	$70
	db	$02
	db	$70
	db	$00
	db	$30
	db	$00
	db	$80
	db	$00
;		tempo 1			f#
;					r
;					d
;					b
;					a
;					g
; P3-9
;	db	$ef,$ff
	db	$fe
	dw	@fs_a_fs_a
; P3-10
	db	$80
	db	$04
	db	$c0
	db	$02
	db	$c0
	db	$00
	db	$80
	db	$00
	db	$c0
	db	$00
; P3-11
	db	$50
	db	$04
	db	$80
	db	$02
	db	$80
	db	$02
	db	$80
	db	$00
; P3-12
	db	$70
	db	$04
	db	$a0
	db	$02
	db	$a0
	db	$00
	db	$90
	db	$00
	db	$a0
	db	$00
; P3-13
	db	$fe
	dw	@fs_a_fs_a
; P3-14
	db	$80
	db	$04
	db	$c0
	db	$02
	db	$c0
	db	$02
	db	$c0
	db	$00
; P3-15
	db	$50
	db	$04
	db	$80
	db	$02
	db	$80
	db	$02
	db	$80
	db	$00
; P3-16
	db	$70
	db	$04
	db	$a0
	db	$02
	db	$a0
	db	$00
	db	$80
	db	$00
	db	$50
	db	$00
	db	$fd,0
	dw	@loop30
@e_a_e_a:
	db	$50
	db	$04
	db	$a0
	db	$02
	db	$a0
	db	$02
	db	$a0
	db	$00
	db	$ff
@e_a_g_a:
	db	$50
	db	$04
	db	$a0
	db	$02
	db	$a0
	db	$00
	db	$80
	db	$00
	db	$a0
	db	$00
	db	$ff
@fs_a_fs_a:
	db	$70
	db	$04
	db	$a0
	db	$02
	db	$a0
	db	$02
	db	$a0
	db	$00
	db	$ff
;----------------------------------------
Music_PokemonCenter_Ch4:
;----------------------------------------
	db	$e3,$003
	db	$d8,$c
;	db	$ef,$ff
; P4-1
@loop40:
	db	$85
	db	$83
	db	$81
	db	$81
	db	$81
	db	$fd,0
	dw	@loop40


