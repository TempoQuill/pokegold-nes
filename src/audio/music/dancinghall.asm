Music_DancingHall:
	db	040h
	dw	$ffff & Music_DancingHall_Ch1
	db	001h
	dw	$ffff & Music_DancingHall_Ch2
	db	002h
	dw	$ffff & Music_DancingHall_Ch3
	db	003h
;----------------------------------------
Music_DancingHall_Ch1:
;----------------------------------------
	db	$da,$00,$d0
;	db	$e5,$77
; P1-1
;	db	$ef,$0f
	db	$d8,$6,$b7
	db	$02
	db	$db,$00
@loop:
; P1-2
	db	$d8,$c,$b7
	db	$fe
	dw	$ffff & @sub2
; P1-3
	db	$0f
; P1-4
	db	$fe
	dw	$ffff & @sub2
; P1-5
	db	$0f
; P1-6
	db	$0f
; P1-7
	db	$0f
; P1-8
	db	$dc,$b1
	db	$d5,$c0
	db	$d4,$30
	db	$60
	db	$a0
	db	$c0
	db	$a0
	db	$c0
	db	$d3,$30
	db	$61
	db	$d8,$8,$b1
	db	$30
	db	$50
	db	$30
	db	$d4,$c2
	db	$a2
; P1-9
	db	$d8,$c,$b1
	db	$c0
	db	$a0
	db	$30
	db	$50
	db	$d3,$61
	db	$d8,$8,$b1
	db	$d4,$c0
	db	$d3,$30
	db	$d4,$c0
	db	$d8,$c,$b5
	db	$a0
	db	$00
	db	$c0
	db	$c0
	db	$a0
	db	$00
	db	$61
; P1-10
	db	$fd,0
	dw	$ffff & @loop
@sub2:
	db	$d4,$c0
	db	$00
	db	$a0
	db	$00
	db	$c0
	db	$00
	db	$a0
	db	$00
	db	$d3,$50
	db	$00
	db	$30
	db	$00
	db	$d4,$c0
	db	$00
	db	$d3,$30
	db	$00
	db	$ff
;----------------------------------------
Music_DancingHall_Ch2:
;----------------------------------------
; P2-1
;	db	$ef,$f0
	db	$d8,$6,$a1
	db	$db,$00
	db	$e1,$10,$24
	db	$02
@loop:
	db	$d8,$6,$a2
; P2-2
	db	$fe
	dw	$ffff & @mero2
; P2-4
	db	$fe
	dw	$ffff & @mero2
	db	$dc,$a7
; P2-6
	db	$d5,$3f
	db	$6f
; P2-7
	db	$d8,$c,$a7
	db	$5f
; P2-8
	db	$d4,$60
	db	$a0
	db	$c0
	db	$d3,$30
	db	$50
	db	$30
	db	$50
	db	$a0
	db	$c1
	db	$d8,$8,$a7
	db	$a0
	db	$c0
	db	$a0
	db	$62
	db	$32
; P2-9
	db	$d8,$c,$a7
	db	$50
	db	$30
	db	$d4,$a0
	db	$c0
	db	$d3,$a1
	db	$d8,$8,$a7
	db	$60
	db	$a0
	db	$60
	db	$d8,$c,$a7
	db	$50
	db	$00
	db	$60
	db	$60
	db	$50
	db	$00
	db	$31
; P2-10
	db	$fd,0
	dw	$ffff & @loop
@mero2:
	db	$dc,$a1
	db	$d3,$53
	db	$d5,$53
	db	$d3,$53
	db	$d5,$53
	db	$d3,$c3
	db	$a3
	db	$63
	db	$a3
; P2-3
	db	$dc,$33
	db	$30
	db	$60
	db	$dc,$63
	db	$30
	db	$60
	db	$dc,$93
	db	$30
	db	$60
	db	$dc,$c3
	db	$30
	db	$60
	db	$dc,$e3
	db	$30
	db	$60
	db	$dc,$a3
	db	$30
	db	$60
	db	$dc,$83
	db	$30
	db	$60
	db	$dc,$53
	db	$30
	db	$60
	db	$dc,$73
	db	$d4,$c0
	db	$d3,$50
	db	$dc,$a3
	db	$d4,$c0
	db	$d3,$50
	db	$dc,$b3
	db	$d4,$a0
	db	$d3,$30
	db	$dc,$c3
	db	$d4,$a0
	db	$d3,$30
	db	$dc,$d3
	db	$d4,$50
	db	$c0
	db	$dc,$e3
	db	$50
	db	$c0
	db	$dc,$f3
	db	$a0
	db	$d3,$30
	db	$dc,$f3
	db	$d4,$a0
	db	$d3,$30
	db	$ff
;----------------------------------------
Music_DancingHall_Ch3:
;----------------------------------------
; P3-1
;	db	$ef,$ff
	db	$e1,$16,$24
	db	$d8,$6,$0d
	db	$d2,$a0
	db	$c0
	db	$d1,$30
@loop:
; P3-2
	db	$dc,$81
	db	$5c
	db	$dc,$0d
	db	$30
	db	$50
	db	$a0
	db	$dc,$81
	db	$cf
; P3-3
	db	$d4,$6f
	db	$5d
	db	$dc,$0d
	db	$d1,$50
	db	$60
; P3-4
	db	$dc,$81
	db	$5c
	db	$dc,$0d
	db	$30
	db	$50
	db	$a0
	db	$dc,$81
	db	$cf
; P3-5
	db	$d4,$6f
	db	$5f
; P3-6
	db	$dc,$1a
	db	$d3,$61
	db	$a1
	db	$c1
	db	$d2,$31
	db	$51
	db	$31
	db	$51
	db	$a1
	db	$dc,$28
	db	$b0
	db	$c2
	db	$d8,$8,$11
	db	$a0
	db	$c0
	db	$a0
	db	$dc,$35
	db	$62
	db	$32
; P3-7
	db	$d8,$c,$1a
	db	$50
	db	$30
	db	$d3,$a0
	db	$c0
	db	$dc,$35
	db	$d2,$a1
	db	$d8,$8,$11
	db	$60
	db	$a0
	db	$60
	db	$d8,$6,$28
	db	$40
	db	$52
	db	$dc,$35
	db	$33
	db	$d3,$c3
	db	$d2,$33
; P3-8
	db	$dc,$81
	db	$d4,$3f
	db	$6f
; P3-9
	db	$5f
;      -tie
	db	$5c
	db	$dc,$0d
	db	$d2,$a0
	db	$c0
	db	$d1,$30
; P3-10
	db	$fd,0
	dw	$ffff & @loop


