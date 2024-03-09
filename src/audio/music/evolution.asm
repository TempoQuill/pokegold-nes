Music_Evolution;
	db	080h
	dw	Music_Evolution_Ch1
	db	001h
	dw	Music_Evolution_Ch2
	db	002h
	dw	Music_Evolution_Ch3
	db	003h
	dw	Music_Evolution_Ch4
	db	004h
	dw	Music_Evolution_Ch5
;----------------------------------------
Music_Evolution_Ch1:
;----------------------------------------
	db	$da,$00,$84
	db	$e1,$6,$34
	db	$e6,$00,$01
	db	$db,$02
	db	$d8,$8c,$92
	db	$d4
	db	$e0,$00,$3a,$10
	db	$e0,$00,$3a,$80
	db	$e0,$00,$3a,$10
	db	$e0,$00,$3a,$80
	db	$03
	db	$db,$03
@mainloop:
	db	$fe
	dw	@sub1
	db	$d8,$8c,$a4
	db	$73
; P1-2
	db	$fe
	dw	@sub1
	db	$d8,$8c,$a4
	db	$73
	db	$fd,2
	dw	@mainloop
	db	$fe
	dw	@sub2
	db	$d8,$8c,$a4
	db	$93
; P1-2
	db	$fe
	dw	@sub2
	db	$d8,$8c,$a4
	db	$93
	db	$fd,0
	dw	@mainloop
@sub1:
	db	$d8,$8c,$a2
	db	$d4,$13
	db	$83
	db	$13
	db	$83
	db	$13
	db	$83
	db	$13
	db	$ff
@sub2:
	db	$d8,$8c,$a2
	db	$d4,$33
	db	$a3
	db	$33
	db	$a3
	db	$33
	db	$a3
	db	$33
	db	$ff
;----------------------------------------
Music_Evolution_Ch2:
;----------------------------------------
	db	$db,$02
	db	$e1,$8,$25
	db	$d8,$8c,$a2
	db	$d3,$80
	db	$30
	db	$80
	db	$30
	db	$03
	db	$db,$03
@mainloop:
	db	$fe
	dw	@sub1
	db	$d8,$8c,$b5
	db	$a3
	db	$fe
	dw	@sub1
	db	$d8,$8c,$b5
	db	$c3
	db	$fd,2
	dw	@mainloop
	db	$fe
	dw	@sub2
	db	$d8,$8c,$b5
	db	$c3
	db	$fe
	dw	@sub2
	db	$d8,$8c,$b5
	db	$d3,$23
	db	$d4
	db	$fd,0
	dw	@mainloop
@sub1:
	db	$d8,$8c,$b2
	db	$d4,$83
	db	$33
	db	$83
	db	$33
	db	$83
	db	$33
	db	$83
	db	$ff
@sub2:
	db	$d8,$8c,$b2
	db	$d4,$a3
	db	$53
	db	$a3
	db	$53
	db	$a3
	db	$53
	db	$a3
	db	$ff
;----------------------------------------
Music_Evolution_Ch3:
;----------------------------------------
	db	$d8,$c,$16
	db	$07
@mainloop:
	db	$fe
	dw	@sub1
	db	$d4,$a3
	db	$fe
	dw	@sub1
	db	$d4,$c3
	db	$fd,2
	dw	@mainloop
	db	$fe
	dw	@sub2
	db	$d4,$c3
	db	$fe
	dw	@sub2
	db	$d3,$23
	db	$fd,0
	dw	@mainloop
@sub1:
	db	$dc,$20
	db	$d5,$a1
	db	$01
	db	$d4,$31
	db	$01
	db	$d5,$a1
	db	$01
	db	$d4,$31
	db	$01
	db	$d5,$a1
	db	$01
	db	$d4,$31
	db	$01
	db	$d5,$a1
	db	$01
	db	$dc,$40
	db	$ff
@sub2:
	db	$dc,$20
	db	$d5,$c1
	db	$01
	db	$d4,$51
	db	$01
	db	$d5,$c1
	db	$01
	db	$d4,$51
	db	$01
	db	$d5,$c1
	db	$01
	db	$d4,$51
	db	$01
	db	$d5,$a1
	db	$01
	db	$dc,$40
	db	$ff
;----------------------------------------
Music_Evolution_Ch4:
;----------------------------------------
	db	$e3,$005
;----------------------------------------
Music_Evolution_Ch5:
;----------------------------------------
	db	$d8,$c
; P4-1
	db	$07
@mainloop:
	db	$b5
	db	$b3
	db	$51
	db	$51
	db	$51
	db	$fd,0
	dw	@mainloop


