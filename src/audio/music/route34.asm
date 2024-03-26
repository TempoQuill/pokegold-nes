Music_Route34:
	db	080h
	dw	$ffff & Music_Route34_Ch1
	db	001h
	dw	$ffff & Music_Route34_Ch2
	db	002h
	dw	$ffff & Music_Route34_Ch3
	db	003h
	dw	$ffff & Music_Route34_Ch4
	db	004h
	dw	$ffff & Music_Route34_Ch5
;----------------------------------------
Music_Route34_Ch1:
;----------------------------------------
	db	$da,$00,$90
;	db	$e5,$77
	db	$db,$03
	db	$e6,$00,$01
	db	$e1,$10,$15
;	db	$ef,$0f
; P1-1
	db	$d8,$c,$b3
; P1-2
	db	$d4,$13
	db	$15
	db	$60
	db	$50
	db	$dc,$b5
	db	$67
; P1-3 -tie
	db	$dc,$b3
	db	$65
	db	$b0
	db	$a0
	db	$dc,$5d
	db	$b3
@loop10:
	db	$dc,$b5
; P1-4
	db	$63
	db	$a1
	db	$81
	db	$61
	db	$51
	db	$61
	db	$a1
; P1-5
	db	$41
	db	$b3
	db	$a3
	db	$81
	db	$b3
; P1-6
	db	$63
	db	$a1
	db	$81
	db	$61
	db	$51
	db	$61
	db	$a1
; P1-7
	db	$81
	db	$b3
	db	$a3
	db	$d3,$43
	db	$d4,$b1
; P1-8
	db	$dc,$b6
	db	$d3,$69
	db	$dc,$b5
	db	$11
	db	$61
	db	$11
; P1-9
	db	$d4,$b1
	db	$d3,$43
	db	$33
	db	$11
	db	$d4,$b3
; P1-10
	db	$dc,$b4
	db	$a1
	db	$d3,$31
	db	$d4,$71
	db	$a1
	db	$d3,$31
	db	$d4,$71
	db	$a1
	db	$d3,$31
; P1-11
	db	$dc,$a4
	db	$d4,$a1
	db	$d3,$31
	db	$71
	db	$d4,$a1
	db	$d3,$31
	db	$71
	db	$d4,$a1
	db	$d3,$31
; P1-12
;	db	$ef,$f0
	db	$dc,$95
	db	$d4,$35
	db	$d5,$a5
	db	$d4,$33
; P1-13
	db	$d5,$a5
	db	$d4,$35
	db	$53
; P1-14
	db	$dc,$b5
	db	$35
	db	$a5
	db	$83
; P1-15
	db	$dc,$a5
	db	$d5,$a5
	db	$d4,$75
	db	$53
; P1-16
	db	$35
	db	$d5,$a5
	db	$d4,$33
; P1-17
	db	$dc,$b5
	db	$75
	db	$55
	db	$23
; P1-18
	db	$35
	db	$a5
	db	$83
; P1-19
	db	$d5,$a5
	db	$d4,$75
	db	$33
; P1-20
	db	$15
	db	$85
	db	$11
	db	$51
; P1-21
	db	$dc,$b7
	db	$15
	db	$83
	db	$31
	db	$51
	db	$81
; P1-22
	db	$a1
	db	$91
	db	$a1
	db	$d3,$35
	db	$11
	db	$d4,$c1
; P1-23
	db	$a5
	db	$35
;	db	$ef,$0f
	db	$dc,$b5
	db	$41
	db	$51
	db	$fd,0
	dw	$ffff & @loop10
;----------------------------------------
Music_Route34_Ch2:
;----------------------------------------
	db	$db,$03
	db	$e1,$10,$36
;	db	$ef,$f0
; P2-1
	db	$d8,$c,$c2
; P2-2
	db	$d4,$61
	db	$10
	db	$60
	db	$dc,$c7
	db	$a7
	db	$13
; P2-3
	db	$dc,$c3
	db	$d3,$11
	db	$d4,$a0
	db	$d3,$10
	db	$dc,$c7
	db	$67
	db	$d4,$83
@loop20:
	db	$dc,$c7
; P2-4
	db	$d3,$19
	db	$dc,$c4
	db	$d4,$a1
	db	$d3,$11
	db	$a1
; P2-5
	db	$82
	db	$dc,$c2
	db	$40
	db	$dc,$c7
	db	$4b
; P2-6
	db	$19
	db	$dc,$c4
	db	$d4,$a1
	db	$d3,$11
	db	$61
; P2-7
	db	$dc,$c2
	db	$41
	db	$40
	db	$60
	db	$dc,$c7
	db	$8b
; P2-8
	db	$a9
	db	$dc,$c4
	db	$61
	db	$a1
	db	$d2,$11
; P2-9
	db	$d3,$b2
	db	$a0
	db	$dc,$c7
	db	$87
	db	$b3
; P2-10
	db	$dc,$b0
	db	$af
; P2-11
	db	$dc,$b7
	db	$af
; P2-12
;	db	$ef,$0f
	db	$dc,$a4
	db	$d4,$a5
	db	$85
	db	$73
; P2-13
	db	$55
	db	$75
	db	$83
; P2-14
	db	$dc,$b3
	db	$a1
	db	$70
	db	$a0
	db	$dc,$b7
	db	$d3,$3b
; P2-15
	db	$dc,$a4
	db	$d4,$71
	db	$30
	db	$70
	db	$dc,$a7
	db	$ab
; P2-16
	db	$dc,$c7
	db	$a5
	db	$85
	db	$73
; P2-17
	db	$c5
	db	$a5
	db	$83
; P2-18
	db	$dc,$c3
	db	$a1
	db	$70
	db	$a0
	db	$dc,$c7
	db	$d3,$3b
; P2-19
	db	$dc,$c3
	db	$d4,$71
	db	$30
	db	$70
	db	$dc,$c7
	db	$ab
; P2-20
	db	$dc,$c2
	db	$81
	db	$50
	db	$80
	db	$dc,$b0
	db	$d3,$11
	db	$dc,$b7
	db	$19
; P2-21
	db	$dc,$c5
	db	$d4,$81
	db	$50
	db	$80
	db	$dc,$c7
	db	$d3,$17
	db	$23
; P2-22
;	db	$ef,$ff
	db	$35
	db	$a5
	db	$81
	db	$71
; P2-23
	db	$dc,$b0
	db	$33
	db	$dc,$b7
	db	$37
;	db	$ef,$f0
	db	$dc,$c4
	db	$d4,$70
	db	$80
	db	$a0
	db	$c0
	db	$fd,0
	dw	$ffff & @loop20
;----------------------------------------
Music_Route34_Ch3:
;----------------------------------------
; P3-1
	db	$d8,$c,$4a
; P3-2
	db	$d4,$60
	db	$02
	db	$60
	db	$00
	db	$d3,$13
	db	$dc,$25
	db	$d4,$11
	db	$61
	db	$11
; P3-3
	db	$dc,$4a
	db	$40
	db	$02
	db	$40
	db	$00
	db	$d3,$63
	db	$dc,$25
	db	$d5,$b1
	db	$d4,$41
	db	$51
@loop30:
; P3-4
	db	$dc,$4a
	db	$63
	db	$dc,$25
	db	$11
	db	$dc,$4a
	db	$63
	db	$dc,$25
	db	$11
	db	$61
	db	$11
; P3-5
	db	$dc,$4a
	db	$83
	db	$dc,$25
	db	$41
	db	$dc,$4a
	db	$83
	db	$dc,$25
	db	$41
	db	$81
	db	$41
; P3-6
	db	$fd,2
	dw	$ffff & @loop30
; P3-8
	db	$dc,$4a
	db	$a3
	db	$dc,$25
	db	$61
	db	$dc,$4a
	db	$a3
	db	$dc,$25
	db	$61
	db	$a1
	db	$61
; P3-9
	db	$dc,$4a
	db	$b3
	db	$dc,$25
	db	$81
	db	$dc,$4a
	db	$b3
	db	$dc,$25
	db	$81
	db	$b1
	db	$81
; P3-10
	db	$fe
	dw	$ffff & @bass10
; P3-11
	db	$dc,$4a
	db	$33
	db	$dc,$25
	db	$d5,$a1
	db	$dc,$4a
	db	$d4,$33
	db	$dc,$25
	db	$d5,$a1
	db	$d4,$31
	db	$d5,$a1
; P3-12
	db	$fe
	dw	$ffff & @bass10
; P3-13
	db	$fe
	dw	$ffff & @bass13
; P3-14
	db	$fe
	dw	$ffff & @bass10
; P3-15
	db	$dc,$4a
	db	$73
	db	$dc,$25
	db	$31
	db	$dc,$4a
	db	$73
	db	$dc,$25
	db	$31
	db	$51
	db	$a1
; P3-16
	db	$fe
	dw	$ffff & @bass10
; P3-17
	db	$fe
	dw	$ffff & @bass13
; P3-18
	db	$fe
	dw	$ffff & @bass10
; P3-19
	db	$fe
	dw	$ffff & @bass10
; P3-20
	db	$dc,$4a
	db	$83
	db	$dc,$25
	db	$11
	db	$dc,$4a
	db	$83
	db	$dc,$25
	db	$11
	db	$81
	db	$11
; P3-21
	db	$dc,$4a
	db	$83
	db	$dc,$25
	db	$11
	db	$dc,$4a
	db	$83
	db	$dc,$25
	db	$11
	db	$51
	db	$81
; P3-22
	db	$dc,$6f
	db	$a5
	db	$dc,$4a
	db	$d3,$73
	db	$dc,$25
	db	$d4,$31
	db	$a1
	db	$d3,$31
; P3-23
	db	$dc,$37
	db	$12
	db	$dc,$12
	db	$50
	db	$dc,$6f
	db	$75
	db	$dc,$25
	db	$d4,$31
	db	$41
	db	$51
	db	$fd,0
	dw	$ffff & @loop30
@bass10:
	db	$dc,$4a
	db	$d4,$73
	db	$dc,$25
	db	$31
	db	$dc,$4a
	db	$73
	db	$dc,$25
	db	$31
	db	$71
	db	$31
	db	$ff
@bass13:
	db	$dc,$4a
	db	$83
	db	$dc,$25
	db	$51
	db	$dc,$4a
	db	$83
	db	$dc,$25
	db	$51
	db	$81
	db	$51
	db	$ff
;----------------------------------------
Music_Route34_Ch4:
;----------------------------------------
	db	$e3,$001
;----------------------------------------
Music_Route34_Ch5:
;----------------------------------------
; P4-1
	db	$d8,$c
; P4-2
	db	$fe
	dw	$ffff & @sub1
; P4-3
	db	$fe
	dw	$ffff & @sub3
@loop40:
; P4-4
	db	$fe
	dw	$ffff & @sub1
	db	$fe
	dw	$ffff & @sub2
	db	$fe
	dw	$ffff & @sub1
	db	$fe
	dw	$ffff & @sub3
	db	$fd,2
	dw	$ffff & @loop40
@loop41:
; P4-12
	db	$b3
	db	$a1
	db	$63
	db	$c0
	db	$c0
	db	$a3
	db	$fd,11
	dw	$ffff & @loop41
	db	$fe
	dw	$ffff & @sub3
	db	$fd,0
	dw	$ffff & @loop40
@sub1:
	db	$a3
	db	$a5
	db	$b0
	db	$b0
	db	$a1
	db	$b1
	db	$ff
@sub2:
	db	$a3
	db	$a5
	db	$c0
	db	$b0
	db	$a3
	db	$ff
@sub3:
	db	$a3
	db	$a5
	db	$b0
	db	$b0
	db	$a1
	db	$d8,$6
	db	$b0
	db	$b0
	db	$a0
	db	$a0
	db	$d8,$c
	db	$ff


