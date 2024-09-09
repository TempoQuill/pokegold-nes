Music_GoldSilverOpening2:
	db	060h
	dw	$ffff & Music_GoldSilverOpening2_Ch1
	db	001h
	dw	$ffff & Music_GoldSilverOpening2_Ch2
	db	002h
	dw	$ffff & Music_GoldSilverOpening2_Ch3
	db	004h
	dw	$ffff & Music_GoldSilverOpening2_Ch5
;----------------------------------------
Music_GoldSilverOpening2_Ch1:
;----------------------------------------
	db	$da,$00,$5c
;	db	$e5,$77
	db	$db,$03
	db	$e6,$00,$02
;	db	$ef,$0f
; P1-2
	db	$d8,$c,$3d
	db	$d4,$47
@loop101:
	db	$d8,$c,$c1
	db	$d4,$31
	db	$31
	db	$31
	db	$dc,$b7
	db	$49
; P1-3
	db	$dc,$c1
	db	$31
	db	$31
	db	$31
	db	$dc,$b7
	db	$63
	db	$43
	db	$11
; P1-4
	db	$fd,2
	dw	$ffff & @loop101
; P1-6
	db	$dc,$c1
	db	$31
	db	$31
	db	$31
	db	$dc,$b7
	db	$49
; P1-7
	db	$dc,$c1
	db	$31
	db	$31
	db	$31
	db	$dc,$b7
	db	$63
	db	$83
	db	$b1
; P1-8
	db	$dc,$b0
	db	$af
; P1-9
	db	$af
; P1-10
	db	$dc,$b2
	db	$d3,$3f
	db	$ff
;----------------------------------------
Music_GoldSilverOpening2_Ch2:
;----------------------------------------
; P2-1
	db	$db,$03
	db	$e1,$14,$14
;	db	$ef,$f0
; P2-2
	db	$d8,$c,$3f
	db	$d4,$b7
	db	$d8,$c,$d1
	db	$d4,$a1
	db	$a1
	db	$a1
	db	$dc,$c7
	db	$b9
; P2-3
	db	$dc,$d1
	db	$a1
	db	$a1
	db	$a1
	db	$dc,$c7
	db	$d3,$13
	db	$d4,$b3
	db	$81
; P2-4
	db	$dc,$d1
	db	$a1
	db	$a1
	db	$a1
	db	$dc,$c7
	db	$b9
; P2-5
	db	$dc,$d1
	db	$a1
	db	$a1
	db	$a1
	db	$dc,$c7
	db	$d3,$13
	db	$23
	db	$41
; P2-6
	db	$dc,$c7
	db	$37
	db	$47
; P2-7
	db	$67
	db	$b7
; P2-8
	db	$dc,$b0
	db	$d2,$3f
; P2-9
	db	$3f
; P2-10
	db	$dc,$c2
	db	$3f
	db	$ff
;----------------------------------------
Music_GoldSilverOpening2_Ch3:
;----------------------------------------
; P3-1
	db	$d8,$c,$81
	db	$07
; P3-2
	db	$d5,$a0
	db	$00
	db	$a0
	db	$00
	db	$a0
	db	$00
	db	$b7
	db	$01
; P3-3
	db	$dc,$35
	db	$a0
	db	$00
	db	$a0
	db	$00
	db	$a0
	db	$00
	db	$33
	db	$63
	db	$dc,$1a
	db	$a1
; P3-4
	db	$31
	db	$a1
	db	$31
	db	$a1
	db	$91
	db	$51
	db	$81
	db	$61
; P3-5
	db	$31
	db	$a1
	db	$91
	db	$51
	db	$81
	db	$61
	db	$11
	db	$41
; P3-6
	db	$31
	db	$a1
	db	$31
	db	$a1
	db	$91
	db	$51
	db	$81
	db	$61
; P3-7
	db	$31
	db	$a1
	db	$91
	db	$51
	db	$81
	db	$61
	db	$11
	db	$41
; P3-8
	db	$31
	db	$71
	db	$b1
	db	$d4,$31
	db	$d5,$b1
	db	$a1
	db	$71
	db	$41
; P3-9
	db	$31
	db	$71
	db	$b1
	db	$d4,$31
	db	$d5,$b1
	db	$71
	db	$b1
	db	$d4,$21
; P3-10
	db	$31
	db	$0d
	db	$ff
;----------------------------------------
Music_GoldSilverOpening2_Ch5:
;----------------------------------------
	db	$e3,$000
	db	$d8,$6
; P5-2
	db	$41
	db	$41
	db	$41
	db	$41
	db	$41
	db	$31
	db	$31
	db	$31
	db	$d8,$c
@loop40:
	db	$31
	db	$31
	db	$31
	db	$23
	db	$41
	db	$41
	db	$41
	db	$31
	db	$31
	db	$31
	db	$25
	db	$d8,$6
	db	$41
	db	$41
	db	$41
	db	$41
	db	$d8,$c
	db	$fd,4
	dw	$ffff & @loop40
	db	$1f
	db	$ff


