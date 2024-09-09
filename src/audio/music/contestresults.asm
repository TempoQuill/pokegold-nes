Music_ContestResults:
	db	060h
	dw	$ffff & Music_ContestResults_Ch1
	db	001h
	dw	$ffff & Music_ContestResults_Ch2
	db	002h
	dw	$ffff & Music_ContestResults_Ch3
	db	004h
	dw	$ffff & Music_ContestResults_Ch5
;----------------------------------------
Music_ContestResults_Ch1:
;----------------------------------------
	db	$da,$00,$90
;	db	$e5,$77
; P1-1
	db	$d8,$c,$51
@mainloop:
; P1-2
	db	$01
	db	$d5,$80
	db	$02
	db	$80
	db	$02
	db	$80
	db	$02
	db	$80
	db	$00
; P1-3
	db	$01
	db	$a0
	db	$02
	db	$a0
	db	$02
	db	$a0
	db	$02
	db	$a0
	db	$00
; P1-4
	db	$01
	db	$a0
	db	$02
	db	$a0
	db	$02
	db	$a0
	db	$02
	db	$a0
	db	$00
; P1-5
	db	$01
	db	$c0
	db	$02
	db	$b0
	db	$02
	db	$a0
	db	$02
	db	$80
	db	$00
; P1-6
	db	$fd,0
	dw	$ffff & @mainloop
;----------------------------------------
Music_ContestResults_Ch2:
;----------------------------------------
; P2-1
	db	$d8,$c,$61
@mainloop:
; P2-2
	db	$d5,$11
	db	$d4,$50
	db	$00
	db	$d6,$81
	db	$d4,$50
	db	$00
	db	$d6,$a1
	db	$d4,$50
	db	$00
	db	$d6,$c1
	db	$d4,$50
	db	$00
; P2-3
	db	$d5,$31
	db	$d4,$60
	db	$00
	db	$d6,$a1
	db	$d4,$60
	db	$00
	db	$d6,$c1
	db	$d4,$60
	db	$00
	db	$d5,$21
	db	$d4,$60
	db	$00
; P2-4
@loop1:
	db	$d5,$31
	db	$d4,$60
	db	$00
	db	$d6,$a1
	db	$d4,$60
	db	$00
	db	$fd,2
	dw	$ffff & @loop1
; P2-5
	db	$d5,$81
	db	$d4,$80
	db	$00
	db	$d5,$31
	db	$d4,$70
	db	$00
	db	$d5,$81
	db	$d4,$60
	db	$00
	db	$d5,$31
	db	$d4,$30
	db	$00
; P2-6
	db	$fd,0
	dw	$ffff & @mainloop
;----------------------------------------
Music_ContestResults_Ch3:
;----------------------------------------
; P3-1
	db	$e1,$08,$24
@mainloop:
	db	$d8,$c,$81
; P3-2
	db	$d3,$54
	db	$00
	db	$dc,$17
	db	$50
	db	$60
	db	$dc,$5c
	db	$83
	db	$d2,$13
; P3-3
	db	$dc,$81
	db	$d3,$c7
	db	$a7
; P3-4
	db	$34
	db	$00
	db	$dc,$17
	db	$30
	db	$50
	db	$dc,$5c
	db	$63
	db	$c3
; P3-5
	db	$dc,$81
	db	$a7
	db	$87
; P3-6
	db	$fd,0
	dw	$ffff & @mainloop
;----------------------------------------
Music_ContestResults_Ch5:
;----------------------------------------
	db	$e3,$004
; P5-1
	db	$d8,$6
@mainloop:
; P5-2
	db	$23
	db	$23
	db	$21
	db	$21
	db	$21
	db	$21
	db	$23
	db	$23
	db	$80
	db	$80
	db	$80
	db	$80
	db	$80
	db	$80
	db	$80
	db	$80
	db	$fd,0
	dw	$ffff & @mainloop


