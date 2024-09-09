Music_LookSage:
	db	021h
	dw	$ffff & Music_LookSage_Ch2
	db	002h
	dw	$ffff & Music_LookSage_Ch3
;----------------------------------------
Music_LookSage_Ch2:
;----------------------------------------
	db	$da,$00,$90
;	db	$ef,$0f
;	db	$e5,$77
; P2-1
	db	$db,$03
	db	$d8,$c,$b3
	db	$01
; P2-2
	db	$0f
; P2-3
	db	$fe
	dw	$ffff & @sub3
; P2-4
	db	$dc,$b3
	db	$d4,$31
	db	$dc,$93
	db	$31
	db	$dc,$b3
	db	$51
	db	$dc,$93
	db	$51
	db	$dc,$b3
	db	$a1
	db	$dc,$93
	db	$a1
	db	$dc,$b3
	db	$61
	db	$dc,$93
	db	$61
@loop:
; P2-5
	db	$dc,$b3
	db	$31
	db	$dc,$93
	db	$31
	db	$dc,$b3
	db	$d5,$c1
	db	$dc,$93
	db	$c1
	db	$dc,$b3
	db	$a1
	db	$dc,$93
	db	$a1
	db	$dc,$b3
	db	$c1
	db	$dc,$93
	db	$c1
; P2-6
	db	$dc,$b3
	db	$d4,$31
	db	$dc,$93
	db	$31
	db	$dc,$b3
	db	$d5,$c1
	db	$dc,$93
	db	$c1
	db	$dc,$b3
	db	$d4,$31
	db	$dc,$93
	db	$31
	db	$dc,$b3
	db	$51
	db	$dc,$93
	db	$51
; P2-7
	db	$dc,$b3
	db	$61
	db	$dc,$93
	db	$61
	db	$dc,$b3
	db	$31
	db	$dc,$93
	db	$31
	db	$dc,$b3
	db	$51
	db	$dc,$93
	db	$51
	db	$dc,$b3
	db	$a1
	db	$dc,$93
	db	$a1
; P2-8
	db	$dc,$b3
	db	$31
	db	$dc,$93
	db	$31
	db	$dc,$b3
	db	$d5,$c1
	db	$dc,$93
	db	$c1
	db	$dc,$b3
	db	$a1
	db	$dc,$93
	db	$a1
	db	$dc,$b3
	db	$c1
	db	$dc,$93
	db	$c1
; P2-9
	db	$fe
	dw	$ffff & @sub3
	db	$fd,0
	dw	$ffff & @loop
@sub3:
	db	$dc,$b3
	db	$d5,$51
	db	$dc,$93
	db	$51
	db	$dc,$b3
	db	$a1
	db	$dc,$93
	db	$a1
	db	$dc,$b3
	db	$c1
	db	$dc,$93
	db	$c1
	db	$dc,$b3
	db	$a1
	db	$dc,$93
	db	$a1
	db	$ff
;----------------------------------------
Music_LookSage_Ch3:
;----------------------------------------
;	db	$ef,$f0
; P3-1
	db	$e1,$16,$23
	db	$d8,$c,$19
	db	$d2,$c0
	db	$d1,$10
; P3-2
	db	$dc,$81
	db	$d2,$cf
; P3-3 -tie
	db	$e1,$07,$23
	db	$c7
	db	$e1,$14,$23
	db	$d1,$35
	db	$50
	db	$60
; P3-4
	db	$5d
	db	$80
	db	$90
@loop:
; P3-5
	db	$ab
	db	$c3
; P3-6
	db	$38
	db	$50
	db	$60
	db	$30
	db	$e1,$00,$00
	db	$53
; P3-7 -tie
	db	$e1,$07,$23
	db	$57
	db	$e1,$14,$23
	db	$d2,$c7
; P3-8
	db	$d1,$67
	db	$d8,$6,$81
	db	$50
	db	$40
	db	$30
	db	$20
	db	$10
	db	$d2,$c0
	db	$b0
	db	$a0
	db	$03
	db	$d1,$51
	db	$61
; P3-9
	db	$d8,$c,$81
	db	$5d
	db	$80
	db	$90
	db	$fd,0
	dw	$ffff & @loop


