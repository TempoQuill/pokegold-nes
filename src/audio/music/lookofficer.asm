Music_LookOfficer:
	db	040h
	dw	Music_LookOfficer_Ch1
	db	001h
	dw	Music_LookOfficer_Ch2
	db	002h
	dw	Music_LookOfficer_Ch3
;----------------------------------------
Music_LookOfficer_Ch1:
;----------------------------------------
	db	$da,$00,$74
;	db	$e5,$77
	db	$e6,$00,$01
	db	$e1,$12,$34
;	db	$ef,$0f
; P1-2
	db	$db,$03
	db	$d8,$c,$a7
	db	$d3,$20
	db	$30
	db	$40
	db	$50
	db	$6b
; P1-3
	db	$dc,$2f
	db	$d4,$cf
; P1-4
@mainloop:
	db	$dc,$82
	db	$03
	db	$c5
	db	$93
		;tempo 2		b
	db	$c5
; P1-5
		;tempo 4 		r
	db	$c5
	db	$93
	db	$c1
; P1-6
	db	$dc,$2f
	db	$bf
; P1-7
	db	$af
	db	$fd,0
	dw	@mainloop
;----------------------------------------
Music_LookOfficer_Ch2:
;----------------------------------------
	db	$e1,$12,$34
; P2-2
	db	$db,$03
	db	$d8,$c,$b7
	db	$d2,$40
	db	$30
	db	$20
	db	$10
	db	$d3,$cb
; P2-3
	db	$db,$03
	db	$dc,$a2
	db	$d6,$c3
	db	$d5,$a1
	db	$d6,$c3
	db	$d5,$61
	db	$d6,$c1
	db	$d5,$41
; P2-4-5
@mainloop:
	db	$51
	db	$91
	db	$d4,$51
	db	$d5,$51
	db	$91
	db	$c1
	db	$51
	db	$91
	db	$fd,2
	dw	@mainloop
; P2-6
	db	$d9,$01
	db	$fe
	dw	@sub1
	db	$d9,$00
; P2-7
	db	$fe
	dw	@sub1
	db	$fd,0
	dw	@mainloop
@sub1:
	db	$d6,$a1
	db	$d5,$21
	db	$a1
	db	$d6,$a1
	db	$d5,$21
	db	$51
	db	$d6,$a1
	db	$d5,$21
	db	$ff
;----------------------------------------
Music_LookOfficer_Ch3:
;----------------------------------------
	db	$e1,$14,$14
;	db	$ef,$f0
; P3-2
	db	$d8,$c,$20
	db	$09
	db	$d4,$c1
	db	$01
	db	$c1
; P3-3
	db	$d2,$41
	db	$00
	db	$61
	db	$00
	db	$a1
	db	$c1
	db	$00
	db	$d1,$21
	db	$00
	db	$41
; P3-4
@mainloop:
	db	$dc,$60
	db	$55
	db	$45
	db	$dc,$40
	db	$23
; P3-5
	db	$dc,$20
	db	$d2,$c1
	db	$a1
	db	$91
	db	$71
	db	$91
	db	$a1
	db	$c1
	db	$d1,$21
; P3-6
	db	$dc,$7f
	db	$67
	db	$37
; P3-7
	db	$57
	db	$27
	db	$fd,0
	dw	@mainloop
