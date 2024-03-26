Music_LookLass:
	db	080h
	dw	$ffff & Music_LookLass_Ch1
	db	001h
	dw	$ffff & Music_LookLass_Ch2
	db	002h
	dw	$ffff & Music_LookLass_Ch3
	db	003h
	dw	$ffff & Music_LookLass_Ch4
	db	004h
	dw	$ffff & Music_LookLass_Ch5
;----------------------------------------
Music_LookLass_Ch1:
;----------------------------------------
	db	$da,$00,$84
;	db	$e5,$77
	db	$e6,$00,$01
; P1-2
	db	$db,$02
	db	$d8,$c,$c7
	db	$d4,$c0
	db	$00
	db	$d3,$cd
; P1-3
;	db	$ef,$0f
	db	$db,$00
@mainloop:
	db	$dc,$a2
	db	$d4,$53
	db	$dc,$a1
	db	$53
	db	$53
	db	$51
	db	$dc,$a3
	db	$c1
	db	$fd,0
	dw	$ffff & @mainloop
;----------------------------------------
Music_LookLass_Ch2:
;----------------------------------------
;	db	$ef,$f0
; P2-2
	db	$db,$00
	db	$d8,$c,$83
	db	$0f
; P2-3
@mainloop:
	db	$dc,$92
	db	$d5,$c3
	db	$dc,$91
	db	$c3
	db	$c3
	db	$c1
	db	$dc,$93
	db	$d4,$91
; P2-4
	db	$fd,0
	dw	$ffff & @mainloop
;----------------------------------------
Music_LookLass_Ch3:
;----------------------------------------
; P3-2
	db	$d8,$c,$20
	db	$07
	db	$d1,$51
	db	$41
	db	$21
	db	$11
; P3-3
@mainloop:
	db	$d2,$c1
	db	$01
	db	$d1,$41
	db	$01
	db	$51
	db	$01
	db	$41
	db	$01
; P3-4
	db	$21
	db	$11
	db	$d2,$c1
	db	$a1
	db	$91
	db	$a1
	db	$b1
	db	$d1,$21
; P3-5
	db	$d2,$c1
	db	$01
	db	$d1,$21
	db	$01
	db	$d2,$c1
	db	$01
	db	$a1
	db	$01
; P3-6
	db	$91
	db	$71
	db	$51
	db	$41
	db	$51
	db	$71
	db	$91
	db	$a1
; P3-7
	db	$fd,0
	dw	$ffff & @mainloop
;----------------------------------------
Music_LookLass_Ch4:
;----------------------------------------
	db	$e3,$004
;----------------------------------------
Music_LookLass_Ch5:
;----------------------------------------
; P4-2
	db	$d8,$c
	db	$1f
; P4-3
@mainloop:
	db	$d8,$6
	db	$37
	db	$27
	db	$27
	db	$23
	db	$30
	db	$20
	db	$20
	db	$20
; P4-4
	db	$fd,0
	dw	$ffff & @mainloop
