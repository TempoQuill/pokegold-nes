Music_DragonsDen:
	db	060h
	dw	$ffff & Music_DragonsDen_Ch1
	db	001h
	dw	$ffff & Music_DragonsDen_Ch2
	db	002h
	dw	$ffff & Music_DragonsDen_Ch3
	db	003h
	dw	$ffff & Music_DragonsDen_Ch4
;----------------------------------------
Music_DragonsDen_Ch1:
;----------------------------------------
	db	$da,$00,$90
;	db	$e5,$77
	db	$db,$00
	db	$e6,$00,$04
;	db	$ef,$f0
; P1-1
	db	$d8,$c,$80
@loop10:
	db	$fe
	dw	$ffff & @sub11
; P1
	db	$0f
; P1
	db	$fe
	dw	$ffff & @sub12
	db	$01
	db	$fe
	dw	$ffff & @sub12
	db	$01
	db	$fe
	dw	$ffff & @sub12
	db	$01
	db	$fe
	dw	$ffff & @sub12
	db	$09
	db	$d8,$c,$b7
	db	$fd,0
	dw	$ffff & @loop10
@sub11:
; P1-1
	db	$d4,$bb
	db	$a3
; P1-2
	db	$bb
	db	$a3
; P1-3
	db	$b5
	db	$d3,$13
	db	$25
; P1-4
	db	$5f
; P1-5
	db	$4b
	db	$33
; P1-6
	db	$d4,$9f
	db	$ff
@sub12:
	db	$dc,$b1
	db	$01
	db	$d3,$22
	db	$22
	db	$22
	db	$22
	db	$23
; P1-9
	db	$22
	db	$22
	db	$23
	db	$21
	db	$21
	db	$ff
;----------------------------------------
Music_DragonsDen_Ch2:
;----------------------------------------
	db	$db,$00
	db	$e6,$00,$04
;	db	$ef,$0f
; P2-1
	db	$d8,$c,$90
@loop20:
	db	$fe
	dw	$ffff & @sub21
; P2
	db	$0f
; P2
	db	$fe
	dw	$ffff & @sub22
	db	$fe
	dw	$ffff & @sub22
	db	$fe
	dw	$ffff & @sub22
	db	$fe
	dw	$ffff & @sub22
; P2
	db	$0f
	db	$d8,$c,$c7
	db	$fd,0
	dw	$ffff & @loop20
@sub21:
	db	$d3,$4b
	db	$33
; P2-2
	db	$4b
	db	$33
; P2-3
	db	$45
	db	$63
	db	$75
; P2-4
	db	$af
; P2-5
	db	$9b
	db	$83
; P2-6
	db	$2f
	db	$ff
@sub22:
	db	$dc,$c1
@loop2200:
	db	$d2,$23
	db	$d3,$93
	db	$93
	db	$93
	db	$fd,2
	dw	$ffff & @loop2200
	db	$ff
;----------------------------------------
Music_DragonsDen_Ch3:
;----------------------------------------
; P3-1
@loop30:
	db	$d8,$c,$2e
	db	$d3,$21
	db	$dc,$17
	db	$d4,$90
	db	$d3,$20
	db	$dc,$2e
	db	$d4,$91
	db	$d3,$21
	db	$dc,$17
	db	$d4,$90
	db	$d3,$20
	db	$dc,$2e
	db	$d4,$91
	db	$d3,$21
	db	$dc,$17
	db	$d4,$90
	db	$d3,$20
	db	$fd,15
	dw	$ffff & @loop30
	db	$0f
	db	$d8,$6,$27
@loop32:
	db	$dc,$2e
	db	$d4,$23
	db	$dc,$17
	db	$d5,$91
	db	$d4,$21
	db	$dc,$2e
	db	$d5,$93
	db	$d4,$23
	db	$dc,$17
	db	$d5,$91
	db	$d4,$21
	db	$dc,$2e
	db	$d5,$93
	db	$d4,$23
	db	$dc,$17
	db	$d5,$91
	db	$d4,$21
	db	$fd,16
	dw	$ffff & @loop32
	db	$fd,0
	dw	$ffff & @loop30
;----------------------------------------
Music_DragonsDen_Ch4:
;----------------------------------------
	db	$e3,$000
; P4-1
	db	$d8,$c
	db	$0f
	db	$0f
@loop40:
;	db	$ef,$f0
	db	$63
;	db	$ef,$0f
	db	$73
	db	$73
;	db	$ef,$f0
	db	$73
	db	$fd,0
	dw	$ffff & @loop40


