Music_Mom:
	db	061h
	dw	$ffff & Music_Mom_Ch2
	db	002h
	dw	$ffff & Music_Mom_Ch3
	db	003h
	dw	$ffff & Music_Mom_Ch4
	db	004h
	dw	$ffff & Music_Mom_Ch5
;----------------------------------------
Music_Mom_Ch2:
;----------------------------------------
	db	$da,$00,$90
	;db	$e5,$77
; P2-1
	;db	$ef,$0f
	db	$db,$02
	db	$d8,$6,$b3
	db	$d4,$c0
	db	$d3,$50
	db	$90
	db	$a0
	db	$c7
; P2-2
@mainloop:
	db	$d8,$c,$b1
; P1-2
	db	$03
	db	$d4,$25
	db	$33
	db	$11
; P1-3
	db	$01
	db	$25
	db	$d5,$53
	db	$b1
	db	$c1
	db	$fd,0
	dw	$ffff & @mainloop
;----------------------------------------
Music_Mom_Ch3:
;----------------------------------------
; P3-1
	;db	$ef,$f0
	db	$d8,$6,$4b
	db	$d4,$50
	db	$30
	db	$d5,$c0
	db	$90
	db	$57
; P3-2
@mainloop:
	db	$dc,$4b
	db	$d5,$a1
	db	$05
	db	$d3,$51
	db	$01
	db	$d5,$a1
	db	$01
	db	$d4,$31
	db	$01
	db	$d3,$77
	db	$41
	db	$01
; P3-3
	db	$dc,$25
	db	$d5,$a1
	db	$01
	db	$d3,$51
	db	$05
	db	$d5,$a1
	db	$01
	db	$d3,$31
	db	$05
	db	$23
	db	$31
	db	$01
	db	$fd,0
	dw	$ffff & @mainloop
;----------------------------------------
Music_Mom_Ch4:
;----------------------------------------
	db	$e3,$003
;----------------------------------------
Music_Mom_Ch5:
;----------------------------------------
; P4-1
	db	$d8,$c
	db	$05
; P4-2
@mainloop:
	db	$40
	db	$00
	db	$71
	db	$30
	db	$00
	db	$80
	db	$00
	db	$80
	db	$00
	db	$73
	db	$30
	db	$00
; P4-3
	db	$40
	db	$00
	db	$73
	db	$30
	db	$00
	db	$80
	db	$00
	db	$80
	db	$00
	db	$31
	db	$40
	db	$00
	db	$fd,0
	dw	$ffff & @mainloop


