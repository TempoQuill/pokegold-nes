Music_LakeOfRageRocketRadio:
	db	040h
	dw	$ffff & Music_LakeOfRageRocketRadio_Ch1
	db	001h
	dw	$ffff & Music_LakeOfRageRocketRadio_Ch2
	db	002h
	dw	$ffff & Music_LakeOfRageRocketRadio_Ch3
;----------------------------------------
Music_LakeOfRageRocketRadio_Ch1:
;----------------------------------------
	db	$da,$00,$a0
;	db	$e5,$77
	db	$db,$01
	db	$e6,$f9,$18
	db	$e1,$0,$f0
;	db	$ef,$f0
KNloop10:
	db	$d8,$c,$a7
	db	$d0,$83
	db	$73
	db	$83
	db	$73
	db	$0f
	db	$fd,0
	dw	$ffff & KNloop10
;----------------------------------------
Music_LakeOfRageRocketRadio_Ch2:
;----------------------------------------
	db	$db,$01
	db	$e1,$13,$e8
; P2-1
	db	$d8,$c,$a7
	db	$01
;	db	$ef,$0f
	db	$fd,0
	dw	$ffff & KNloop10
;----------------------------------------
Music_LakeOfRageRocketRadio_Ch3:
;----------------------------------------
; P3-1
	db	$d8,$c,$26
	db	$e1,$10,$44
	db	$03
	db	$fd,0
	dw	$ffff & KNloop10


