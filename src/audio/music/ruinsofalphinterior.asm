Music_RuinsOfAlphInterior:
	db	080h
	dw	$ffff & Music_RuinsOfAlphInterior_Ch1
	db	001h
	dw	$ffff & Music_RuinsOfAlphInterior_Ch2
	db	002h
	dw	$ffff & Music_RuinsOfAlphInterior_Ch3
;----------------------------------------
Music_RuinsOfAlphInterior_Ch1:
;----------------------------------------
	db	$da,$00,$e0
;	db	$e5,$77
	db	$db,$00
;	db	$ef,$f0
	db	$d8,$c,$44
	db	$00
	db	$fd,0
	dw	$ffff & UNloop20
;----------------------------------------
Music_RuinsOfAlphInterior_Ch2:
;----------------------------------------
	db	$e6,$00,$02
	db	$db,$00
;	db	$ef,$0f
	db	$d8,$c,$a4
UNloop20:
	db	$d3,$13
	db	$d4,$b3
	db	$d3,$21
	db	$41
	db	$11
	db	$d4,$b1
; P2-2
	db	$d3,$13
	db	$d4,$b3
	db	$fd,0
	dw	$ffff & UNloop20
;----------------------------------------
Music_RuinsOfAlphInterior_Ch3:
;----------------------------------------
; P3-1
	db	$d8,$c,$3a
@mainloop:
	db	$d5,$91
	db	$d4,$21
	db	$51
	db	$09
	db	$fd,0
	dw	$ffff & @mainloop


