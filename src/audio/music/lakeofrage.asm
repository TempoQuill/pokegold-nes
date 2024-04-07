Music_LakeOfRage:
	db	080h
	dw	$ffff & Music_LakeOfRage_Ch1
	db	001h
	dw	$ffff & Music_LakeOfRage_Ch2
	db	002h
	dw	$ffff & Music_LakeOfRage_Ch3
	db	003h
	dw	$ffff & Music_LakeOfRage_Ch4
	db	004h
	dw	$ffff & Music_LakeOfRage_Ch5
;----------------------------------------
Music_LakeOfRage_Ch1:
;----------------------------------------
	db	$da,$00,$90
;	db	$e5,$77
	db	$db,$03
	db	$e6,$00,$02
	db	$e1,$8,$22
;	db	$ef,$f0
; P1-1
	db	$d8,$c,$b4
	db	$d4,$35
	db	$39
; P1-2
	db	$35
	db	$35
	db	$53
; P1-3
@loop10:
	db	$dc,$b5
	db	$75
	db	$55
	db	$33
; P1-4
	db	$d3,$35
	db	$13
	db	$51
	db	$33
; P1-5
	db	$d4,$c5
	db	$81
	db	$d8,$8,$b5
	db	$33
	db	$83
	db	$c3
; P1-6
	db	$d8,$c,$b4
	db	$32
	db	$70
	db	$dc,$b7
	db	$a7
	db	$73
; P1-7
	db	$a2
	db	$d3,$20
	db	$3b
; P1-8
	db	$d8,$8,$b4
	db	$d4,$13
	db	$d5,$c3
	db	$a3
	db	$d8,$8,$b7
	db	$ab
; P1-9
	db	$d8,$c,$b7
	db	$d4,$1b
	db	$dc,$b4
	db	$53
; P1-10
	db	$31
	db	$dc,$b7
	db	$d5,$a9
	db	$dc,$b4
	db	$d4,$53
; P1-11
	db	$32
	db	$50
	db	$dc,$b7
	db	$77
	db	$35
; P1-12 -tie
	db	$10
	db	$50
	db	$17
	db	$55
; P1-13 -tie
	db	$50
	db	$80
	db	$57
	db	$85
; P1-14 -tie
	db	$70
	db	$80
	db	$dc,$a0
	db	$a6
	db	$dc,$a7
	db	$a6
; P1-15 -tie
	db	$a0
	db	$d3,$10
	db	$dc,$a0
	db	$35
	db	$dc,$a7
	db	$35
	db	$fd,0
	dw	$ffff & @loop10
;----------------------------------------
Music_LakeOfRage_Ch2:
;----------------------------------------
	db	$db,$03
	db	$e1,$20,$44
;	db	$ef,$ff
; P2-1
	db	$d8,$c,$90
	db	$d4,$87
	db	$dc,$97
	db	$87
; P2-2
	db	$dc,$a0
	db	$a7
	db	$dc,$a7
	db	$a7
; P2-3
@loop20:
	db	$d8,$8,$c7
	db	$d3,$3f
	db	$d4,$a3
	db	$d3,$33
; P2-4
	db	$af
	db	$d2,$13
	db	$d3,$c3
; P2-5
	db	$d8,$c,$c7
	db	$8b
	db	$c3
; P2-6
	db	$a2
	db	$80
	db	$dc,$b0
	db	$7b
; P2-7
	db	$dc,$b7
	db	$7f
; P2-8
	db	$d8,$8,$c3
	db	$d4,$83
	db	$73
	db	$53
	db	$1e
; P2-9 - tie
	db	$d8,$c,$c3
	db	$d3,$10
	db	$50
	db	$80
	db	$00
	db	$50
	db	$80
	db	$dc,$c5
	db	$d2,$19
; P2-10 - tie
	db	$dc,$c3
	db	$d3,$a3
	db	$83
	db	$73
	db	$51
; P2-11
	db	$d8,$8,$c3
	db	$33
	db	$53
	db	$73
	db	$d8,$8,$c7
	db	$ab
; P2-12
	db	$d8,$8,$c3
	db	$d4,$83
	db	$73
	db	$53
	db	$d3,$13
	db	$d4,$c3
	db	$a3
; P2-13
	db	$d3,$53
	db	$33
	db	$13
	db	$83
	db	$73
	db	$53
; P2-14
	db	$d8,$8,$c7
	db	$7f
	db	$33
	db	$73
; P2-15
	db	$d8,$c,$c7
	db	$af
	db	$fd,0
	dw	$ffff & @loop20
;----------------------------------------
Music_LakeOfRage_Ch3:
;----------------------------------------
;	db	$ef,$0f
; P3-1
	db	$d8,$c,$4b
	db	$d4,$83
	db	$01
	db	$83
	db	$05
; P3-2
	db	$73
	db	$01
	db	$73
	db	$01
	db	$53
; P3-3
@loop30:
	db	$dc,$4b
	db	$d4,$33
	db	$dc,$25
	db	$d5,$a1
	db	$dc,$4b
	db	$d4,$33
	db	$dc,$25
	db	$d5,$a1
	db	$d4,$31
	db	$51
; P3-4
	db	$dc,$4b
	db	$63
	db	$dc,$25
	db	$11
	db	$dc,$4b
	db	$63
	db	$dc,$25
	db	$11
	db	$61
	db	$71
; P3-5
	db	$dc,$4b
	db	$83
	db	$dc,$25
	db	$31
	db	$dc,$4b
	db	$83
	db	$dc,$25
	db	$31
	db	$81
	db	$c1
; P3-6
	db	$a1
	db	$31
	db	$71
	db	$dc,$4b
	db	$a3
	db	$dc,$25
	db	$31
	db	$51
	db	$71
; P3-7
	db	$a1
	db	$71
	db	$a1
	db	$dc,$4b
	db	$d3,$33
	db	$dc,$25
	db	$d4,$a1
	db	$d3,$31
	db	$71
; P3-8
	db	$dc,$4b
	db	$d4,$53
	db	$dc,$25
	db	$11
	db	$dc,$4b
	db	$53
	db	$dc,$25
	db	$11
	db	$51
	db	$11
; P3-9
	db	$dc,$4b
	db	$83
	db	$dc,$25
	db	$11
	db	$dc,$4b
	db	$83
	db	$dc,$25
	db	$11
	db	$81
	db	$11
; P3-10
	db	$dc,$4b
	db	$73
	db	$dc,$25
	db	$31
	db	$dc,$4b
	db	$73
	db	$dc,$25
	db	$31
	db	$71
	db	$31
; P3-11
	db	$a1
	db	$31
	db	$71
	db	$dc,$4b
	db	$d3,$33
	db	$dc,$25
	db	$d4,$31
	db	$51
	db	$71
; P3-12
	db	$dc,$4b
	db	$83
	db	$dc,$25
	db	$11
	db	$dc,$4b
	db	$83
	db	$dc,$25
	db	$11
	db	$81
	db	$11
; P3-13
	db	$dc,$4b
	db	$83
	db	$dc,$25
	db	$11
	db	$dc,$4b
	db	$83
	db	$dc,$25
	db	$11
	db	$81
	db	$11
; P3-14
	db	$dc,$4b
	db	$73
	db	$dc,$25
	db	$31
	db	$dc,$4b
	db	$73
	db	$dc,$25
	db	$31
	db	$71
	db	$31
; P3-15
	db	$dc,$4b
	db	$33
	db	$dc,$25
	db	$d5,$a1
	db	$dc,$4b
	db	$d4,$33
	db	$dc,$25
	db	$d5,$a1
	db	$d4,$31
	db	$d5,$a1
	db	$fd,0
	dw	$ffff & @loop30
;----------------------------------------
Music_LakeOfRage_Ch4:
;----------------------------------------
;	db	$ef,$f0
	db	$e3,$003
;----------------------------------------
Music_LakeOfRage_Ch5:
;----------------------------------------
; P4-1
	db	$d8,$c
@loop40:
	db	$31
	db	$30
	db	$30
	db	$81
	db	$31
	db	$30
	db	$30
	db	$75
; P4-2
	db	$31
	db	$30
	db	$30
	db	$81
	db	$31
	db	$30
	db	$30
	db	$72
	db	$30
	db	$30
	db	$30
	db	$fd,0
	dw	$ffff & @loop40


