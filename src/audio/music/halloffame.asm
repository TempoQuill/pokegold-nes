Music_HallOfFame:
	db	060h
	dw	Music_HallOfFame_Ch1
	db	001h
	dw	Music_HallOfFame_Ch2
	db	002h
	dw	Music_HallOfFame_Ch3
	db	004h
	dw	Music_HallOfFame_Ch5
;----------------------------------------
Music_HallOfFame_Ch1:
;----------------------------------------
	db	$da,$00,$70
	db	$db,$02
	db	$e1,$c,$22
	db	$e6,$00,$01
	db	$d8,$8c,$93
; P1-1
	db	$0f
; P1-2
	db	$0f
; P1-3
	db	$0f
; P1-4
	db	$0b
	db	$d4,$30
	db	$50
	db	$60
	db	$70
@mainloop:
; P1-5
	db	$dc,$97
	db	$d3,$17
	db	$dc,$77
	db	$17
; P1-6
	db	$dc,$97
	db	$57
	db	$dc,$77
	db	$57
; P1-7
	db	$dc,$97
	db	$77
	db	$dc,$77
	db	$77
; P1-8
	db	$dc,$77
	db	$67
	db	$dc,$57
	db	$67
	db	$fd,3
	dw	@mainloop
	db	$0f
	db	$0f
	db	$0f
	db	$0f
	db	$fd,0
	dw	@mainloop
;----------------------------------------
Music_HallOfFame_Ch2:
;----------------------------------------
	db	$e1,$8,$25
	db	$db,$03
; P2-1
@mainloop:
	db	$d8,$8c,$c4
	db	$d4,$81
	db	$31
	db	$81
	db	$a9
; P2-2
	db	$81
	db	$31
	db	$81
	db	$d3,$13
	db	$d4,$c3
	db	$a1
; P2-3
	db	$81
	db	$31
	db	$81
	db	$a9
; P2-4
	db	$61
	db	$11
	db	$61
	db	$b3
	db	$a3
	db	$61
	db	$fd,0
	dw	@mainloop
;----------------------------------------
Music_HallOfFame_Ch3:
;----------------------------------------
; P3-1
@mainloop:
	db	$d8,$c,$1e
@loop1:
	db	$d4,$31
	db	$81
	db	$31
	db	$81
	db	$31
	db	$81
	db	$31
	db	$81
	db	$d4,$31
	db	$81
	db	$31
	db	$81
	db	$31
	db	$81
	db	$31
	db	$81
	db	$d4,$31
	db	$81
	db	$31
	db	$81
	db	$31
	db	$81
	db	$31
	db	$81
	db	$d4,$11
	db	$61
	db	$11
	db	$61
	db	$11
	db	$61
	db	$11
	db	$61
	db	$fd,3
	dw	@loop1
; P3-9
	db	$dc,$3c
	db	$33
	db	$83
	db	$33
	db	$83
; P3-10
	db	$53
	db	$83
	db	$53
	db	$83
; P3-11
	db	$73
	db	$a3
	db	$73
	db	$a3
; P3-12
	db	$53
	db	$83
	db	$53
	db	$83
	db	$fd,0
	dw	@mainloop
;----------------------------------------
Music_HallOfFame_Ch5:
;----------------------------------------
	db	$e3,$005
	db	$d8,$c
; P4-1
	db	$0f
	db	$0f
	db	$0f
	db	$0f
	db	$d8,$6
@mainloop:
	db	$b3
	db	$b7
	db	$b3
	db	$b3
	db	$b3
	db	$a1
	db	$a1
	db	$b1
	db	$b1
	db	$b3
	db	$b3
	db	$b7
	db	$b3
	db	$b3
	db	$b0
	db	$b0
	db	$a0
	db	$a0
	db	$b0
	db	$b0
	db	$b0
	db	$b0
	db	$fd,0
	dw	@mainloop


