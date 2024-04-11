Music_MainMenu:
	db	060h
	dw	$ffff & start031
	db	001h
	dw	$ffff & start032
	db	002h
	dw	$ffff & start033
	db	004h
	dw	$ffff & start035
;----------------------------------------
start031:
;----------------------------------------
	db	$da,$00,$a0
;	db	$e5,$77
	db	$db,$03
	db	$e6,$00,$01
	db	$e1,$10,$15
; P1-1
;	db	$ef,$f0
	db	$d8,$c,$0f
	db	$d4,$37
@loop10:
	db	$d8,$c,$92
	db	$d4,$25
	db	$20
	db	$20
	db	$21
	db	$21
	db	$23
	db	$fd,2
	dw	$ffff & @loop10
; P1-2
@loop11:
	db	$45
	db	$40
	db	$40
	db	$41
	db	$41
	db	$43
	db	$d5,$c5
	db	$c0
	db	$c0
	db	$c1
	db	$c1
	db	$d8,$c,$94
	db	$d4,$13
	db	$fd,0
	dw	$ffff & @loop10
;----------------------------------------
start032:
;----------------------------------------
	db	$db,$03
; P2-1
;	db	$ef,$0f
	db	$d8,$c,$0f
	db	$d4,$87
@loop20:
	db	$d8,$c,$a2
	db	$75
	db	$70
	db	$70
	db	$71
	db	$71
	db	$73
	db	$fd,2
	dw	$ffff & @loop20
@loop21:
	db	$95
	db	$90
	db	$90
	db	$91
	db	$91
	db	$93
	db	$55
	db	$50
	db	$50
	db	$51
	db	$51
	db	$d8,$c,$a4
	db	$63
	db	$fd,0
	dw	$ffff & @loop20
;----------------------------------------
start033:
;----------------------------------------
; P3-1
;	db	$ef,$f0
	db	$d8,$c,$14
	db	$07
@loop30:
	db	$d5,$70
	db	$04
	db	$70
	db	$70
	db	$70
	db	$00
	db	$70
	db	$00
	db	$70
	db	$02
	db	$fd,2
	dw	$ffff & @loop30
; P3-2
@loop31:
	db	$90
	db	$04
	db	$90
	db	$90
	db	$90
	db	$00
	db	$90
	db	$00
	db	$90
	db	$02
	db	$50
	db	$04
	db	$50
	db	$50
	db	$50
	db	$00
	db	$50
	db	$00
	db	$60
	db	$02
	db	$fd,0
	dw	$ffff & @loop30
;----------------------------------------
start035:
;----------------------------------------
;	db	$ef,$0f
	db	$e3,$003
; P4-1
	db	$d8,$c
	db	$07
	db	$0f
	db	$0f
	db	$0f
	db	$0b
	db	$30
	db	$30
	db	$30
	db	$30
@loop40:
	db	$35
	db	$30
	db	$30
	db	$31
	db	$31
	db	$33
	db	$35
	db	$30
	db	$30
	db	$31
	db	$31
	db	$40
	db	$40
	db	$30
	db	$30
	db	$fd,0
	dw	$ffff & @loop40


