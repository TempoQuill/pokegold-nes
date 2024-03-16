Music_MtMoonSquare:
	db	020h+000h
	dw	Music_MtMoonSquare_Ch1
	db	001h
	dw	Music_MtMoonSquare_Ch2
;----------------------------------------
Music_MtMoonSquare_Ch1:
;----------------------------------------
	db	$da,$00,$70
;	db	$e5,$77
	db	$db,$02
	db	$e6,$00,$01
; P1-1
; P1-2
	db	$00
@loop10:
	db	$d8,$8c,$44
@loop11:
	db	$d3,$31
	db	$51
	db	$73
	db	$71
	db	$a1
	db	$d2,$33
	db	$fd,2
	dw	@loop11
; P2-4
@loop12:
	db	$d3,$51
	db	$71
	db	$93
	db	$91
	db	$c1
	db	$d2,$53
	db	$fd,2
	dw	@loop12
; P2-6
@loop13:
	db	$d3,$21
	db	$31
	db	$53
	db	$51
	db	$81
	db	$d2,$23
	db	$fd,2
	dw	@loop13
; P2-8
@loop14:
	db	$d3,$31
	db	$51
	db	$73
	db	$71
	db	$a1
	db	$d2,$33
	db	$fd,2
	dw	@loop14
	db	$fd,0
	dw	@loop10
;----------------------------------------
Music_MtMoonSquare_Ch2:
;----------------------------------------
	db	$db,$02
	db	$e1,$18,$24
; P2-1
; P2-2
@loop20:
	db	$d8,$8c,$82
@loop21:
	db	$d3,$31
	db	$51
	db	$73
	db	$71
	db	$a1
	db	$d2,$33
	db	$d8,$8c,$62
	db	$fd,2
	dw	@loop21
; P2-4
	db	$d8,$8c,$82
@loop22:
	db	$d3,$51
	db	$71
	db	$93
	db	$91
	db	$c1
	db	$d2,$53
	db	$d8,$8c,$62
	db	$fd,2
	dw	@loop22
; P2-6
	db	$d8,$8c,$82
@loop23:
	db	$d3,$21
	db	$31
	db	$53
	db	$51
	db	$81
	db	$d2,$23
	db	$d8,$8c,$62
	db	$fd,2
	dw	@loop23
; P2-8
	db	$d8,$8c,$82
@loop24:
	db	$d3,$31
	db	$51
	db	$73
	db	$71
	db	$a1
	db	$d2,$33
	db	$d8,$8c,$62
	db	$fd,2
	dw	@loop24
	db	$fd,0
	dw	@loop20
