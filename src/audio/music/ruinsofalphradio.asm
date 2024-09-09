Music_RuinsOfAlphRadio:
	db	080h
	dw	$ffff & Music_RuinsOfAlphRadio_Ch1
	db	001h
	dw	$ffff & Music_RuinsOfAlphRadio_Ch2
	db	002h
	dw	$ffff & Music_RuinsOfAlphRadio_Ch3
;----------------------------------------
Music_RuinsOfAlphRadio_Ch1:
;----------------------------------------
	db	$da,$00,$a0
	;db	$e5,$77
	db	$db,$00
	db	$e6,$f9,$18
	db	$e1,$0,$f0
	;db	$ef,$f0
UNloop10:
	db	$d8,$6,$71
	db	$fe
	dw	$ffff & UNsub11
	db	$d8,$c,$a1
	db	$0f
	db	$0f
	db	$fe
	dw	$ffff & UNsub12
	db	$d8,$c,$a1
	db	$0f
	db	$0f
	db	$fe
	dw	$ffff & UNsub11
	db	$d8,$c,$a1
	db	$0f
	db	$fd,0
	dw	$ffff & UNloop10
UNsub11:
	db	$d3,$80
	db	$70
	db	$80
	db	$70
	db	$17
	db	$ff
UNsub12:
	db	$d3,$80
	db	$70
	db	$80
	db	$70
	db	$13
	db	$80
	db	$d2,$17
	db	$ff
;----------------------------------------
Music_RuinsOfAlphRadio_Ch2:
;----------------------------------------
	db	$db,$01
	db	$e1,$1,$e0
; P2-1
UNloop20_1:
	;db	$ef,$0f
	db	$d8,$6,$81
	db	$fe
	dw	$ffff & UNsub11
	db	$d8,$c,$a1
	db	$0f
	db	$0f
	db	$d8,$6,$81
	db	$fe
	dw	$ffff & UNsub12
	db	$d8,$c,$a1
	db	$0f
	db	$fd,0
	dw	$ffff & UNloop20_1
;----------------------------------------
Music_RuinsOfAlphRadio_Ch3:
;----------------------------------------
; P3-1
	db	$d8,$6,$0b
@mainloop:
	db	$d5,$10
	db	$20
	db	$10
	db	$0f
	db	$fd,0
	dw	$ffff & @mainloop


