Music_ElmsLab:
	db	060h
	dw	$ffff & Music_ElmsLab_Ch1
	db	001h
	dw	$ffff & Music_ElmsLab_Ch2
	db	002h
	dw	$ffff & Music_ElmsLab_Ch3
	db	003h
	dw	$ffff & Music_ElmsLab_Ch4
;----------------------------------------
Music_ElmsLab_Ch1:
;----------------------------------------
	db	$da,$00,$90
;	db	$e5,$77
	db	$db,$03
	db	$e6,$00,$01
	db	$e1,$10,$15
;	db	$ef,$f0
; P1-1
	db	$d8,$c,$b2
	db	$d5,$61
	db	$81
	db	$a1
	db	$c1
; P1-2
	db	$dc,$b6
	db	$d4,$17
	db	$dc,$b2
	db	$d5,$b1
	db	$a1
	db	$81
	db	$d4,$17
; P1-3-tie
	db	$63
	db	$63
	db	$67
; P1-4-tie
	db	$a3
	db	$a3
	db	$a1
@loop10:
; P1-5
	db	$01
	db	$a1
	db	$91
	db	$a1
	db	$dc,$b7
	db	$d3,$13
	db	$dc,$b5
	db	$d4,$c1
	db	$d3,$11
; P1-6
	db	$dc,$b4
	db	$67
	db	$dc,$b5
	db	$d4,$a1
	db	$91
	db	$a1
	db	$61
; P1-7
	db	$dc,$b7
	db	$67
	db	$dc,$b5
	db	$a1
	db	$81
	db	$61
	db	$dc,$b2
	db	$83
; P1-8
	db	$dc,$b5
	db	$a1
	db	$91
	db	$a1
	db	$dc,$b7
	db	$63
	db	$dc,$b5
	db	$13
; P1-9
	db	$dc,$b7
	db	$37
	db	$dc,$b4
	db	$61
	db	$51
	db	$31
	db	$61
; P1-10
	db	$dc,$b7
	db	$57
	db	$dc,$b4
	db	$81
	db	$61
	db	$51
	db	$81
; P1-11
	db	$dc,$b7
	db	$67
	db	$dc,$b4
	db	$81
	db	$a1
	db	$b1
	db	$a1
; P1-12
	db	$dc,$b2
	db	$83
	db	$dc,$b4
	db	$61
	db	$a1
	db	$81
	db	$61
	db	$51
	db	$dc,$b2
	db	$85
; P1-13tie
	db	$dc,$b7
	db	$63
	db	$d3,$11
	db	$d4,$63
	db	$31
; P1-14
	db	$b3
	db	$a3
	db	$dc,$b4
	db	$81
	db	$61
	db	$81
	db	$dc,$b2
	db	$a5
; P1-15- tie
	db	$dc,$b7
	db	$53
	db	$b1
	db	$55
; P1-16
	db	$dc,$b3
	db	$61
	db	$51
	db	$61
	db	$81
	db	$a1
	db	$a1
	db	$81
;;;;					f
	db	$dc,$b2
	db	$55
; P1-17-tie
	db	$dc,$b4
	db	$63
	db	$d3,$13
	db	$d4,$61
	db	$d3,$11
; P1-18
	db	$31
	db	$11
	db	$d4,$b1
	db	$a1
	db	$dc,$b7
	db	$b7
; P1-19
	db	$d3,$53
	db	$33
	db	$13
	db	$d4,$b3
; P1-20
	db	$d3,$13
	db	$33
	db	$43
	db	$53
; P1-21
	db	$dc,$b4
	db	$d4,$a1
	db	$61
	db	$d3,$11
	db	$d4,$61
	db	$a1
	db	$61
	db	$d3,$11
	db	$d4,$61
; P1-22
	db	$a1
	db	$61
	db	$d3,$11
	db	$d4,$61
	db	$a1
	db	$dc,$b2
	db	$61
	db	$63
	db	$fd,0
	dw	$ffff & @loop10
;----------------------------------------
Music_ElmsLab_Ch2:
;----------------------------------------
	db	$db,$03
	db	$e1,$10,$26
; P2-1
;	db	$ef,$0f
	db	$d8,$c,$c3
	db	$d3,$61
	db	$51
	db	$31
	db	$d4,$c1
; P2-2
	db	$dc,$c5
	db	$d3,$17
	db	$dc,$c3
	db	$d4,$b1
	db	$a1
	db	$81
	db	$51
; P2-3
	db	$dc,$c2
	db	$65
	db	$d3,$13
	db	$13
	db	$17
; P2-4
	db	$13
	db	$13
	db	$11
;	db	$ef,$ff
@loop20:
; P2-5
	db	$dc,$c6
	db	$d3,$65
	db	$dc,$c2
	db	$51
	db	$61
	db	$51
	db	$61
	db	$81
; P2-6
	db	$dc,$c7
	db	$a5
	db	$dc,$c2
	db	$61
	db	$dc,$c7
	db	$17
; P2-7
	db	$dc,$c7
	db	$35
	db	$dc,$c3
	db	$21
	db	$31
	db	$21
	db	$31
	db	$51
; P2-8
	db	$dc,$c7
	db	$65
	db	$dc,$c3
	db	$11
	db	$dc,$c7
	db	$d4,$a9
; P2-9-tie
	db	$dc,$c3
	db	$b1
	db	$b1
	db	$d3,$31
	db	$dc,$c5
	db	$13
	db	$d4,$b5
; P2-10-tie
	db	$dc,$c3
	db	$d3,$11
	db	$11
	db	$51
	db	$dc,$c4
	db	$33
	db	$15
; P2-11
	db	$dc,$c2
	db	$31
	db	$31
	db	$61
	db	$81
	db	$61
	db	$51
	db	$61
; P2-12
	db	$dc,$c2
	db	$83
	db	$dc,$c6
	db	$13
	db	$33
	db	$dc,$c4
	db	$55
; P2-13-tie
	db	$dc,$c3
	db	$61
	db	$61
	db	$81
	db	$dc,$c7
	db	$a3
	db	$dc,$c3
	db	$81
	db	$71
; P2-14
	db	$81
	db	$71
	db	$80
	db	$61
	db	$dc,$c7
	db	$3a
; P2-15
	db	$dc,$c3
	db	$51
	db	$51
	db	$61
	db	$dc,$c7
	db	$83
	db	$dc,$c3
	db	$61
	db	$51
; P2-16
	db	$61
	db	$81
	db	$60
	db	$31
	db	$dc,$c7
	db	$1a
; P2-17
	db	$dc,$c4
	db	$61
	db	$61
	db	$81
	db	$dc,$c7
	db	$a3
	db	$dc,$c4
	db	$81
	db	$61
; P2-18
	db	$b1
	db	$a1
	db	$b0
	db	$d2,$11
	db	$34
	db	$dc,$c3
	db	$51
	db	$31
; P2-19
	db	$dc,$c7
	db	$13
	db	$d3,$b3
	db	$a3
	db	$83
; P2-20
	db	$d2,$13
	db	$d3,$b3
	db	$a3
	db	$83
; P2-21
	db	$dc,$b0
	db	$67
	db	$dc,$a0
	db	$67
; P2-22
	db	$dc,$a7
	db	$69
	db	$dc,$c2
	db	$11
	db	$61
	db	$dc,$c4
	db	$d4,$51
	db	$fd,0
	dw	$ffff & @loop20
;----------------------------------------
Music_ElmsLab_Ch3:
;----------------------------------------
;	db	$ef,$0f
; P3-1
	db	$d8,$c,$32
	db	$07
; P3-2
	db	$0d
	db	$d4,$11
; P3-3
	db	$61
	db	$a1
	db	$11
	db	$a1
	db	$61
	db	$a1
	db	$11
	db	$a1
; P3-4
	db	$61
	db	$a1
	db	$11
	db	$a1
	db	$61
	db	$11
	db	$31
	db	$51
@loop30:
; P3-5
	db	$dc,$32
	db	$61
	db	$a1
	db	$11
	db	$a1
	db	$61
	db	$a1
	db	$11
	db	$a1
; P3-6
	db	$61
	db	$a1
	db	$11
	db	$a1
	db	$61
	db	$a1
	db	$51
	db	$d3,$11
; P3-7
	db	$d4,$31
	db	$a1
	db	$d5,$a1
	db	$d4,$a1
	db	$31
	db	$a1
	db	$31
	db	$51
; P3-8
	db	$61
	db	$a1
	db	$11
	db	$a1
	db	$61
	db	$11
	db	$31
	db	$51
; P3-9
	db	$61
	db	$b1
	db	$31
	db	$b1
	db	$61
	db	$b1
	db	$31
	db	$b1
; P3-10
	db	$81
	db	$d3,$11
	db	$d4,$51
	db	$d3,$11
	db	$d4,$81
	db	$d3,$11
	db	$d4,$51
	db	$a1
; P3-11
	db	$b1
	db	$d3,$31
	db	$d4,$61
	db	$d3,$31
	db	$d4,$b1
	db	$d3,$31
	db	$d4,$61
	db	$c1
; P3-12
	db	$d3,$11
	db	$01
	db	$dc,$64
	db	$13
	db	$d4,$b3
	db	$83
; P3-13
	db	$dc,$32
	db	$61
	db	$a1
	db	$11
	db	$a1
	db	$61
	db	$a1
	db	$11
	db	$a1
; P3-14
	db	$81
	db	$b1
	db	$31
	db	$b1
	db	$81
	db	$b1
	db	$31
	db	$a1
; P3-15
	db	$51
	db	$81
	db	$11
	db	$81
	db	$51
	db	$81
	db	$11
	db	$81
; P3-16
	db	$61
	db	$a1
	db	$11
	db	$a1
	db	$61
	db	$a1
	db	$81
	db	$51
; P3-17
	db	$61
	db	$a1
	db	$11
	db	$a1
	db	$61
	db	$a1
	db	$11
	db	$a1
; P3-18
	db	$81
	db	$b1
	db	$31
	db	$b1
	db	$81
	db	$b1
	db	$a1
	db	$81
; P3-19
	db	$dc,$64
	db	$13
	db	$33
	db	$53
	db	$83
; P3-20
	db	$53
	db	$63
	db	$73
	db	$83
; P3-21
	db	$dc,$32
	db	$61
	db	$a1
	db	$11
	db	$a1
	db	$61
	db	$a1
	db	$11
	db	$a1
; P3-22
	db	$61
	db	$a1
	db	$11
	db	$a1
	db	$61
	db	$11
	db	$61
	db	$a1
	db	$fd,0
	dw	$ffff & @loop30
;----------------------------------------
Music_ElmsLab_Ch4:
;----------------------------------------
;	db	$ef,$f0
	db	$e3,$000
; P4-1
	db	$d8,$c
	db	$0f
	db	$01
@loop40:
	db	$83
	db	$fd,0
	dw	$ffff & @loop40


