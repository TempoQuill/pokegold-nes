Music_NewBarkTown:
	db	040h
	dw	$ffff & Music_NewBarkTown_Ch1
	db	001h
	dw	$ffff & Music_NewBarkTown_Ch2
	db	002h
	dw	$ffff & Music_NewBarkTown_Ch3
	db	003h
;----------------------------------------
Music_NewBarkTown_Ch1:
;----------------------------------------
	db	$da,$00,$bb
;	db	$e5,$77
; P1-1
;	db	$ef,$0f
	db	$e1,$12,$23
	db	$d8,$c,$87
	db	$03
@loop:
	db	$db,$00
; P1-2
	db	$fe
	dw	$ffff & @sub2_4
; P1-5
	db	$d4,$20
	db	$00
	db	$d5,$a0
	db	$00
	db	$d4,$81
	db	$71
	db	$db,$02
	db	$dc,$82
	db	$50
	db	$70
	db	$50
	db	$30
	db	$20
	db	$d5,$c0
	db	$a0
	db	$80
; P1-6
	db	$db,$00
	db	$dc,$87
	db	$fe
	dw	$ffff & @sub2_4
; P1-9
	db	$d4,$20
	db	$00
	db	$d5,$a0
	db	$00
	db	$d4,$51
	db	$db,$02
	db	$dc,$82
	db	$20
	db	$00
	db	$d5,$a0
	db	$d4,$20
	db	$50
	db	$80
	db	$a0
	db	$d3,$20
	db	$50
	db	$a0
; P1-10
	db	$db,$01
	db	$dc,$5e
	db	$fe
	dw	$ffff & @sub10_11
; P1-12
	db	$fe
	dw	$ffff & @sub10_11
; P1-14
	db	$fe
	dw	$ffff & @sub10_11
; P1-16
	db	$d5,$81
	db	$c1
	db	$d4,$31
	db	$73
	db	$83
	db	$31
; P1-17
	db	$d5,$a1
	db	$d4,$21
	db	$51
	db	$83
	db	$a3
	db	$c1
; P1-18
	db	$dc,$87
	db	$fd,0
	dw	$ffff & @loop
@sub2_4:
	db	$d4,$70
	db	$00
	db	$30
	db	$00
	db	$a1
	db	$30
	db	$00
	db	$70
	db	$00
	db	$30
	db	$00
	db	$b1
	db	$30
	db	$00
; P1-3
	db	$70
	db	$00
	db	$30
	db	$00
	db	$c1
	db	$70
	db	$00
	db	$70
	db	$00
	db	$30
	db	$00
	db	$d3,$11
	db	$d4,$30
	db	$00
; P1-4
	db	$d5,$c0
	db	$00
	db	$80
	db	$00
	db	$d4,$81
	db	$d5,$c0
	db	$00
	db	$c0
	db	$00
	db	$90
	db	$00
	db	$d4,$51
	db	$d5,$c0
	db	$00
	db	$ff
@sub10_11:
	db	$d5,$81
	db	$c1
	db	$d4,$31
	db	$73
	db	$83
	db	$31
; P1-11
	db	$d5,$a1
	db	$d4,$21
	db	$51
	db	$83
	db	$a3
	db	$51
	db	$ff
;----------------------------------------
Music_NewBarkTown_Ch2:
;----------------------------------------
;	db	$ef,$ff
; P2-1
	db	$e1,$12,$23
	db	$d8,$6,$a7
	db	$07
@loop:
; P2-2
	db	$db,$02
	db	$d8,$6,$a7
	db	$fe
	dw	$ffff & @mero2_5
; P2-6
	db	$fe
	dw	$ffff & @mero2_5
; P2-10
	db	$fe
	dw	$ffff & @mero10_11
; P2-12
	db	$dc,$87
	db	$d2,$c5
	db	$a5
	db	$dc,$77
	db	$d1,$33
; P2-13
	db	$2f
; P2-14
	db	$fe
	dw	$ffff & @mero10_11
; P2-16
	db	$dc,$87
	db	$d2,$c5
	db	$a5
	db	$dc,$77
	db	$d1,$33
; P2-17
	db	$5f
; P2-18
	db	$fd,0
	dw	$ffff & @loop
@mero2_5:
	db	$d5,$33
	db	$07
	db	$30
	db	$00
	db	$30
	db	$00
	db	$31
	db	$01
	db	$37
	db	$b1
	db	$01
; P2-3
	db	$33
	db	$07
	db	$30
	db	$00
	db	$30
	db	$00
	db	$31
	db	$01
	db	$37
	db	$d4,$11
	db	$01
; P2-4
	db	$d5,$83
	db	$07
	db	$80
	db	$00
	db	$80
	db	$00
	db	$d6,$91
	db	$01
	db	$97
	db	$d5,$31
	db	$01
; P2-5
	db	$a3
	db	$07
	db	$a0
	db	$00
	db	$a0
	db	$00
	db	$d6,$a1
	db	$01
	db	$a7
	db	$d5,$23
	db	$ff
@mero10_11:
	db	$d8,$6,$97
	db	$db,$02
	db	$d3,$cb
	db	$ab
	db	$87
; P2-11
	db	$d8,$c,$97
	db	$5f
	db	$ff
;----------------------------------------
Music_NewBarkTown_Ch3:
;----------------------------------------
;	db	$ef,$f0
; P3-1
	db	$d8,$c,$31
	db	$d2,$31
	db	$51
@loop:
	db	$e1,$16,$23
; P3-2
	db	$dc,$63
	db	$73
	db	$a3
	db	$dc,$31
	db	$81
	db	$71
	db	$51
	db	$81
; P3-3
	db	$dc,$81
	db	$75
	db	$dc,$31
	db	$31
	db	$dc,$81
	db	$d3,$a5
	db	$dc,$18
	db	$80
	db	$a0
; P3-4
	db	$dc,$63
	db	$c3
	db	$d2,$33
	db	$dc,$31
	db	$51
	db	$31
	db	$21
	db	$31
; P3-5
	db	$dc,$81
	db	$55
	db	$71
	db	$53
	db	$01
	db	$dc,$18
	db	$30
	db	$50
; P3-6
	db	$dc,$63
	db	$73
	db	$a3
	db	$dc,$31
	db	$b1
	db	$a1
	db	$81
	db	$b1
; P3-7
	db	$dc,$81
	db	$a5
	db	$dc,$31
	db	$d1,$21
	db	$dc,$81
	db	$35
	db	$dc,$18
	db	$d2,$50
	db	$70
; P3-8
	db	$dc,$81
	db	$85
	db	$dc,$31
	db	$a1
	db	$dc,$81
	db	$c7
; P3-9
	db	$a5
	db	$dc,$18
	db	$80
	db	$70
	db	$dc,$81
	db	$53
	db	$03
; P3-10
	db	$e1,$12,$53
	db	$d5,$8f
; P3-11
	db	$af
; P3-12
	db	$8f
; P3-13
	db	$af
; P3-14
	db	$8f
; P3-15
	db	$af
; P3-16
	db	$8f
; P3-17
	db	$ad
	db	$dc,$18
	db	$e1,$16,$23
	db	$d2,$30
	db	$50
; P3-18
	db	$fd,0
	dw	$ffff & @loop


