Music_MtMoon:
	db	060h
	dw	Music_MtMoon_Ch1
	db	001h
	dw	Music_MtMoon_Ch2
	db	002h
	dw	Music_MtMoon_Ch3
	db	004h
	dw	Music_MtMoon_Ch5
;----------------------------------------
Music_MtMoon_Ch1:
;----------------------------------------
	db	$da,$00,$d0
	db	$db,$02
	db	$e6,$00,$01
	db	$e1,$08,$14
	db	$d8,$c,$45
	db	$01
	db	$fd,0
	dw	DUNloop
;----------------------------------------
Music_MtMoon_Ch2:
;----------------------------------------
	db	$e1,$0b,$15
	db	$db,$02
	db	$d8,$c,$84
DUNloop:
@mainloop:
; P2-1
	db	$d3,$45
	db	$25
	db	$d4,$c1
	db	$d3,$21
; P2-2
	db	$41
	db	$81
	db	$41
	db	$25
	db	$d4,$c1
	db	$d3,$21
; P2-3
	db	$41
	db	$81
	db	$41
	db	$25
	db	$d4,$c1
	db	$b1
; P2-4
	db	$c5
	db	$d3,$29
; P2-5
	db	$95
	db	$75
	db	$51
	db	$71
; P2-6
	db	$91
	db	$d2,$11
	db	$d3,$91
	db	$75
	db	$51
	db	$71
; P2-7
	db	$91
	db	$d2,$11
	db	$d3,$91
	db	$75
	db	$51
	db	$41
; P2-8
	db	$55
	db	$75
	db	$53
	db	$fd,0
	dw	@mainloop
;----------------------------------------
Music_MtMoon_Ch3:
;----------------------------------------
@mainloop:
	db	$d8,$c,$3a
; P3-1
@loop1:
	db	$d5,$c1
	db	$d4,$41
	db	$81
	db	$d5,$c1
	db	$d4,$41
	db	$81
	db	$d5,$c1
	db	$d4,$41
	db	$fd,3
	dw	@loop1
; P3-4
	db	$d5,$c1
	db	$d4,$41
	db	$81
	db	$d5,$c1
	db	$d4,$41
	db	$81
	db	$41
	db	$51
; P3-5
@loop2:
	db	$51
	db	$91
	db	$d3,$11
	db	$d4,$51
	db	$91
	db	$d3,$11
	db	$d4,$51
	db	$91
	db	$fd,4
	dw	@loop2
	db	$fd,0
	dw	@mainloop
;----------------------------------------
Music_MtMoon_Ch5:
;----------------------------------------
	db	$e3,$005
	db	$d8,$c
; P4-1
@mainloop:
	db	$b3
	db	$b7
	db	$b3
	db	$b3
	db	$b3
	db	$b3
	db	$b3
	db	$b3
	db	$b7
	db	$fd,0
	dw	@mainloop


