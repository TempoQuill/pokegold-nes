Music_LookHiker:
	db	080h
	dw	Music_LookHiker_Ch1
	db	001h
	dw	Music_LookHiker_Ch2
	db	002h
	dw	Music_LookHiker_Ch3
	db	003h
	dw	Music_LookHiker_Ch4
	db	004h
	dw	Music_LookHiker_Ch5
;----------------------------------------
Music_LookHiker_Ch1:
;----------------------------------------
	db	$da,$00,$84
	db	$e6,$00,$01
	db	$e1,$12,$24
	db	$db,$02
; P1-1
	db	$d8,$c,$60
	db	$d4,$71
	db	$61
; P1-2
	db	$77
@mainloop:
	db	$31
	db	$41
	db	$51
	db	$61
; P1-3
	db	$71
	db	$03
	db	$71
	db	$03
	db	$71
	db	$01
; P1-4
	db	$71
	db	$05
	db	$fd,0
	dw	@mainloop
;----------------------------------------
Music_LookHiker_Ch2:
;----------------------------------------
; P2-1
	db	$db,$00
	db	$d8,$c,$a1
	db	$03
; P2-2
	db	$d6,$c0
	db	$c4
	db	$d5,$70
	db	$74
	db	$d6,$c0
	db	$d5,$30
	db	$70
	db	$30
; P2-3
	db	$d8,$c,$a1
@mainloop:
	db	$d6,$c0
	db	$c1
	db	$d5,$30
	db	$31
	db	$70
	db	$71
	db	$b0
	db	$b1
	db	$d6,$c0
	db	$d5,$30
	db	$70
	db	$30
	db	$fd,0
	dw	@mainloop
;----------------------------------------
Music_LookHiker_Ch3:
;----------------------------------------
	db	$e1,$12,$24
; P3-1
	db	$d8,$c,$24
	db	$d3,$c1
	db	$b1
; P3-2
	db	$dc,$7f
	db	$c7
@mainloop:
	db	$dc,$24
	db	$d2,$41
	db	$31
	db	$21
	db	$11
; P3-3-4
	db	$fe
	dw	@sub1
	db	$81
	db	$91
	db	$a1
	db	$b1
; P3-5-6
	db	$fe
	dw	@sub1
	db	$fd,0
	dw	@mainloop
@sub1:
	db	$d3,$c1
	db	$03
	db	$c1
	db	$03
	db	$c1
	db	$01
; P3-4
	db	$c1
	db	$05
	db	$ff
;----------------------------------------
Music_LookHiker_Ch4:
;----------------------------------------
	db	$e3,$003
;----------------------------------------
Music_LookHiker_Ch5:
;----------------------------------------
; P4-1
	db	$d8,$c
	db	$63
; P4-2
	db	$0f
; P4-3
@mainloop:
	db	$41
	db	$81
	db	$31
	db	$81
	db	$fd,0
	dw	@mainloop
