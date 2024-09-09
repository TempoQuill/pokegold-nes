Music_Route38:
	db	060h
	dw	$ffff & Music_Route38_Ch1
	db	001h
	dw	$ffff & Music_Route38_Ch2
	db	002h
	dw	$ffff & Music_Route38_Ch3
	db	004h
	dw	$ffff & Music_Route38_Ch5
;----------------------------------------
Music_Route38_Ch1:
;----------------------------------------
	db	$da,$00,$90
;	db	$e5,$77
	db	$db,$03
	db	$e6,$00,$02
	db	$e1,$10,$22
; P1-1
	db	$d8,$c,$b3
	db	$0f
; P1-2
	db	$0f
; P1-3
@loop10:
	db	$dc,$b3
	db	$01
	db	$d5,$71
	db	$c1
	db	$d4,$51
	db	$dc,$b7
	db	$49
; P1-4-tie
	db	$dc,$b3
	db	$53
	db	$43
	db	$23
	db	$d5,$c1
; P1-5
	db	$d4,$42
	db	$d5,$c0
	db	$dc,$b7
	db	$77
	db	$c7
; P1-6 -tie
	db	$d4,$cb
; P1-7
	db	$dc,$b3
	db	$01
	db	$d5,$71
	db	$c1
	db	$d4,$51
	db	$dc,$b7
	db	$49
; P1-8
	db	$d5,$a3
	db	$d4,$23
	db	$53
	db	$a1
; P1-9
	db	$72
	db	$a0
	db	$c5
	db	$d5,$c1
	db	$d4,$41
	db	$71
; P1-10
	db	$c1
	db	$a3
	db	$73
	db	$51
	db	$43
; P1-11
;	db	$ef,$0f
@loop11:
	db	$fe
	dw	$ffff & @sub11
	db	$d4,$23
; P1-12
	db	$fd,2
	dw	$ffff & @loop11
; P1-13
	db	$fe
	dw	$ffff & @sub12
	db	$d4,$73
; P1-14
	db	$fe
	dw	$ffff & @sub12
	db	$d4,$73
; P1-15
	db	$fe
	dw	$ffff & @sub11
	db	$d4,$53
; P1-16
	db	$fe
	dw	$ffff & @sub11
	db	$d4,$93
; P1-17
	db	$fe
	dw	$ffff & @sub12
	db	$d3,$43
; P1-18
	db	$fe
	dw	$ffff & @sub12
	db	$d4,$63
; P1-19
;	db	$ef,$ff
	db	$fe
	dw	$ffff & @sub12
	db	$03
; P1-20
	db	$fe
	dw	$ffff & @sub12
	db	$03
	db	$fd,0
	dw	$ffff & @loop10
@sub11:
	db	$dc,$c2
	db	$d5,$a1
	db	$a0
	db	$a0
	db	$a1
	db	$a0
	db	$a0
	db	$a0
	db	$a0
	db	$a1
	db	$dc,$b7
	db	$ff
@sub12:
	db	$dc,$c2
	db	$d5,$c1
	db	$c0
	db	$c0
	db	$c1
	db	$c0
	db	$c0
	db	$c0
	db	$c0
	db	$c1
	db	$dc,$b7
	db	$ff
;----------------------------------------
Music_Route38_Ch2:
;----------------------------------------
	db	$db,$03
	db	$e1,$1c,$12
; P2-1
	db	$d8,$c,$c2
	db	$d5,$c1
	db	$d8,$c,$c1
	db	$c0
	db	$c0
	db	$dc,$c2
	db	$c1
	db	$dc,$c1
	db	$c0
	db	$c0
	db	$c0
	db	$c0
	db	$dc,$c2
	db	$c5
; P2-2
	db	$c1
	db	$dc,$c1
	db	$c0
	db	$c0
	db	$dc,$c2
	db	$c1
	db	$dc,$c1
	db	$c0
	db	$c0
	db	$c0
	db	$c0
	db	$dc,$c2
	db	$c1
; P2-3
@loop20:
	db	$fe
	dw	$ffff & @sub21
; P2-4
	db	$dc,$c6
	db	$d3,$23
	db	$d4,$c3
	db	$a3
	db	$53
; P2-5
	db	$dc,$b0
	db	$77
	db	$dc,$b7
	db	$77
; P2-6
	db	$dc,$c7
	db	$4b
; P2-7 -tie
	db	$fe
	dw	$ffff & @sub21
; P2-8
	db	$dc,$c7
	db	$d3,$23
	db	$d4,$c3
	db	$d3,$23
	db	$53
; P2-9
	db	$dc,$b0
	db	$4f
; P2-10
	db	$dc,$b0
	db	$47
	db	$dc,$b7
	db	$47
; P2-11
	db	$dc,$c4
	db	$03
	db	$d4,$a2
	db	$d3,$50
	db	$a3
	db	$93
; P2-12
	db	$dc,$a0
	db	$25
	db	$45
	db	$53
; P2-13
	db	$dc,$c3
	db	$72
	db	$50
	db	$dc,$b0
	db	$45
	db	$dc,$b7
	db	$45
; P2-14
	db	$dc,$c3
	db	$d4,$c2
	db	$70
	db	$dc,$b0
	db	$d3,$45
	db	$dc,$b7
	db	$d3,$45
; P2-15
	db	$dc,$c4
	db	$03
	db	$d4,$a2
	db	$d3,$50
	db	$a3
	db	$93
; P2-16
	db	$dc,$b0
	db	$25
	db	$45
	db	$53
; P2-17
	db	$dc,$c3
	db	$72
	db	$40
	db	$dc,$b0
	db	$c5
	db	$dc,$b7
	db	$c5
; P2-18
	db	$dc,$c3
	db	$c2
	db	$70
	db	$dc,$b0
	db	$d2,$45
	db	$dc,$b7
	db	$d2,$45
; P2-19
	db	$dc,$c2
	db	$d4,$71
	db	$70
	db	$70
	db	$71
	db	$dc,$c1
	db	$70
	db	$70
	db	$70
	db	$70
	db	$dc,$c2
	db	$75
; P2-20
	db	$71
	db	$70
	db	$70
	db	$71
	db	$dc,$c1
	db	$70
	db	$70
	db	$70
	db	$70
	db	$dc,$c2
	db	$71
;-tie
	db	$fd,0
	dw	$ffff & @loop20
@sub21:
	db	$dc,$c7
	db	$d4,$73
	db	$dc,$b0
	db	$c4
	db	$dc,$b7
	db	$c4
	db	$dc,$c3
	db	$71
	db	$71
	db	$c1
	db	$ff
;----------------------------------------
Music_Route38_Ch3:
;----------------------------------------
;	db	$ef,$f0
; P3-1
	db	$d8,$c,$2f
@loop300:
	db	$d5,$71
	db	$05
	db	$fd,4
	dw	$ffff & @loop300
; P3-2
@loop30:
	db	$fe
	dw	$ffff & @sub31
; P3-4
	db	$a1
	db	$d4,$21
	db	$d5,$91
	db	$c1
	db	$71
	db	$a1
	db	$71
	db	$51
; P3-5
@loop32:
	db	$41
	db	$71
	db	$fd,4
	dw	$ffff & @loop32
; P3-6
	db	$fe
	dw	$ffff & @sub31
; P3-7
	db	$fe
	dw	$ffff & @sub31
; P3-8
	db	$a1
	db	$d4,$21
	db	$d5,$91
	db	$c1
	db	$71
	db	$a1
	db	$d4,$21
	db	$d5,$a1
; P3-9
	db	$fe
	dw	$ffff & @sub31
; P3-10
@loop33:
	db	$d5,$c1
	db	$d4,$41
	db	$fd,4
	dw	$ffff & @loop33
; P3-11
@loop34:
	db	$d5,$a1
	db	$d4,$21
	db	$fd,7
	dw	$ffff & @loop34
; P3-12
	db	$51
	db	$21
; P3-13
	db	$fe
	dw	$ffff & @sub32
; P3-14
@loop35:
	db	$d5,$c1
	db	$d4,$71
	db	$fd,4
	dw	$ffff & @loop35
; P3-15
@loop36:
	db	$d5,$a1
	db	$d4,$21
	db	$fd,7
	dw	$ffff & @loop36
; P3-16
	db	$51
	db	$21
; P3-17
	db	$fe
	dw	$ffff & @sub32
; P3-18
	db	$fe
	dw	$ffff & @sub31
; P3-19
@loop31:
	db	$71
	db	$05
	db	$fd,4
	dw	$ffff & @loop31
	db	$fd,0
	dw	$ffff & @loop30
@sub31:
	db	$d5,$71
	db	$c1
	db	$71
	db	$c1
	db	$71
	db	$c1
	db	$71
	db	$c1
	db	$ff
@sub32:
	db	$d5,$c1
	db	$d4,$41
	db	$d5,$c1
	db	$d4,$41
	db	$d5,$c1
	db	$d4,$41
	db	$d5,$c1
	db	$d4,$41
	db	$ff
;----------------------------------------
Music_Route38_Ch5:
;----------------------------------------
;	db	$ef,$0f
	db	$e3,$000
; P5-1
@loop40:
	db	$d8,$c
	db	$fe
	dw	$ffff & @sub41
	db	$30
	db	$40
	db	$40
	db	$30
; P5-2
	db	$fe
	dw	$ffff & @sub41
	db	$d8,$6
	db	$40
	db	$40
	db	$40
	db	$40
	db	$40
	db	$30
	db	$30
	db	$30
	db	$fd,0
	dw	$ffff & @loop40
@sub41:
	db	$31
	db	$40
	db	$40
	db	$31
	db	$40
	db	$40
	db	$31
	db	$40
	db	$40
	db	$ff


