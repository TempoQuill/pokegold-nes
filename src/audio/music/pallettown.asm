Music_PalletTown:
	db	040h
	dw	$ffff & Music_PalletTown_Ch1
	db	001h
	dw	$ffff & Music_PalletTown_Ch2
	db	002h
	dw	$ffff & Music_PalletTown_Ch3
;----------------------------------------
Music_PalletTown_Ch1:
;----------------------------------------
	db	$da,$00,$bc
;	db	$e5,$77
	db	$e1,$12,$24
	db	$e6,$00,$01
;	db	$ef,$0f
; P1-2
@loop:
	db	$db,$02
	db	$d8,$c,$78
	db	$d4,$cb
	db	$a0
	db	$30
	db	$70
	db	$a0
; P1-3
	db	$cb
	db	$40
	db	$80
	db	$c0
	db	$d3,$40
; P1-4
	db	$53
	db	$33
	db	$13
	db	$d4,$a3
; P1-5
	db	$dc,$77
	db	$87
	db	$dc,$78
	db	$73
	db	$a3
; P1-6
	db	$cb
	db	$a0
	db	$30
	db	$70
	db	$a0
; P1-7
	db	$81
	db	$c1
	db	$d3,$51
	db	$83
	db	$71
	db	$81
	db	$a1
; P1-8
	db	$51
	db	$31
	db	$11
	db	$51
	db	$71
	db	$51
	db	$31
	db	$11
; P1-9
	db	$d4,$c7
	db	$dc,$77
	db	$c7
; P1-10-13
@loop10:
	db	$db,$03
	db	$dc,$92
	db	$81
	db	$51
	db	$81
	db	$51
	db	$81
	db	$41
	db	$81
	db	$41
; P1-11
	db	$dc,$5f
	db	$80
	db	$a0
	db	$c0
	db	$d3,$10
	db	$31
	db	$83
	db	$31
	db	$11
	db	$d4,$c1
	db	$fd,2
	dw	$ffff & @loop10
; P1-14
	db	$dc,$3f
	db	$d3,$13
	db	$d4,$c3
	db	$a3
	db	$83
; P1-15
	db	$73
	db	$33
	db	$53
	db	$dc,$72
	db	$10
	db	$50
	db	$80
	db	$d3,$10
; P1-16
	db	$30
	db	$a0
	db	$d2,$31
	db	$dc,$62
	db	$31
	db	$dc,$22
	db	$31
	db	$dc,$2f
	db	$d4,$33
	db	$53
; P1-17
	db	$85
	db	$a0
	db	$80
	db	$dc,$1f
	db	$77
	db	$fd,0
	dw	$ffff & @loop
;----------------------------------------
Music_PalletTown_Ch2:
;----------------------------------------
	db	$e1,$12,$44
	db	$db,$02
;	db	$ef,$f0
; P2-2
@loop:
	db	$d8,$c,$88
	db	$d6,$81
	db	$c1
	db	$d5,$31
	db	$85
	db	$73
; P2-3
	db	$d6,$81
	db	$c1
	db	$d5,$31
	db	$85
	db	$d6,$c3
; P2-4
	db	$d5,$11
	db	$d6,$81
	db	$c1
	db	$d5,$13
	db	$31
	db	$51
	db	$71
; P2-5
	db	$81
	db	$31
	db	$03
	db	$33
	db	$73
; P2-6
	db	$d6,$81
	db	$c1
	db	$d5,$31
	db	$85
	db	$73
; P2-7
	db	$51
	db	$31
	db	$51
	db	$d6,$c3
	db	$d5,$31
	db	$51
	db	$71
; P2-8
	db	$87
	db	$a7
; P2-9
	db	$81
	db	$31
	db	$81
	db	$d4,$33
	db	$d5,$c1
	db	$d4,$11
	db	$31
; P2-10
@loop10:
	db	$dc,$a2
	db	$d4,$51
	db	$d5,$11
	db	$d4,$51
	db	$d5,$11
	db	$d4,$41
	db	$d5,$11
	db	$d4,$41
	db	$d5,$11
; P2-11
	db	$dc,$93
	db	$85
	db	$80
	db	$82
	db	$31
	db	$83
	db	$fd,2
	dw	$ffff & @loop10
; P2-14
	db	$11
	db	$d4,$53
	db	$d5,$10
	db	$d4,$12
	db	$d5,$11
	db	$51
	db	$11
; P2-15
	db	$31
	db	$d4,$33
	db	$d5,$30
	db	$82
	db	$51
	db	$81
	db	$51
; P2-16
	db	$dc,$1f
	db	$73
	db	$dc,$88
	db	$73
	db	$c3
	db	$83
; P2-17
	db	$a1
	db	$31
	db	$81
	db	$33
	db	$11
	db	$d6,$c1
	db	$a1
	db	$fd,0
	dw	$ffff & @loop
;----------------------------------------
Music_PalletTown_Ch3:
;----------------------------------------
	db	$e1,$14,$24
; P3-2
@loop:
	db	$d8,$c,$3f
	db	$d1,$31
	db	$11
	db	$d2,$c1
	db	$a1
	db	$d1,$81
	db	$51
	db	$71
	db	$51
; P3-3
	db	$dc,$81
	db	$35
	db	$dc,$3f
	db	$d2,$c1
	db	$80
	db	$00
	db	$80
	db	$00
	db	$a0
	db	$00
	db	$c0
	db	$00
; P3-4
	db	$dc,$81
	db	$d1,$17
	db	$dc,$3f
	db	$01
	db	$d2,$71
	db	$81
	db	$a1
; P3-5
	db	$dc,$81
	db	$c5
	db	$dc,$1f
	db	$d1,$10
	db	$d2,$c0
	db	$dc,$81
	db	$a7
; P3-6
	db	$dc,$3f
	db	$d1,$31
	db	$11
	db	$d2,$c1
	db	$d1,$31
	db	$80
	db	$00
	db	$70
	db	$00
	db	$70
	db	$00
	db	$80
	db	$00
; P3-7
	db	$dc,$81
	db	$55
	db	$30
	db	$00
	db	$37
; P3-8
	db	$dc,$3f
	db	$11
	db	$d2,$c1
	db	$a1
	db	$81
	db	$d1,$31
	db	$11
	db	$d2,$c1
	db	$a1
; P3-9
	db	$dc,$81
	db	$87
	db	$01
	db	$dc,$3f
	db	$81
	db	$a1
	db	$c1
; P3-10
	db	$dc,$81
	db	$d1,$17
	db	$35
	db	$dc,$3f
	db	$11
; P3-11
	db	$dc,$81
	db	$d2,$c7
	db	$01
	db	$dc,$3f
	db	$81
	db	$a1
	db	$c1
; P3-12
	db	$d1,$11
	db	$01
	db	$dc,$7f
	db	$13
	db	$dc,$81
	db	$35
	db	$dc,$1f
	db	$10
	db	$30
; P3-13
	db	$dc,$81
	db	$d2,$c7
	db	$01
	db	$dc,$3f
	db	$c1
	db	$a1
	db	$81
; P3-14
	db	$dc,$81
	db	$a7
	db	$dc,$7f
	db	$53
	db	$c3
; P3-15
	db	$dc,$81
	db	$a7
	db	$dc,$7f
	db	$83
	db	$53
; P3-16
	db	$dc,$81
	db	$76
	db	$00
	db	$82
	db	$00
	db	$c2
	db	$00
; P3-17
	db	$c7
	db	$a7
	db	$fd,0
	dw	$ffff & @loop
