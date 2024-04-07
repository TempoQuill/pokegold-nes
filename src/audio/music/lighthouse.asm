Music_Lighthouse:
	db	0c0h
	dw	$ffff & Music_Lighthouse_Ch1
	db	001h
	dw	$ffff & Music_Lighthouse_Ch2
	db	002h
	dw	$ffff & Music_Lighthouse_Ch3
	db	003h
	dw	$ffff & Music_Lighthouse_Ch4
	db	004h
	dw	$ffff & Music_Lighthouse_Ch5
;----------------------------------------
Music_Lighthouse_Ch1:
;----------------------------------------
	db	$da,$00,$90
;	db	$e5,$77
	db	$db,$03
	db	$e6,$00,$04
	db	$e1,$8,$45
;	db	$ef,$0f
; P1-1
@loop10:
	db	$d8,$c,$b3
	db	$d4,$27
	db	$d5,$71
	db	$91
	db	$a1
	db	$c1
; P1-2
	db	$d4,$23
	db	$d5,$c3
	db	$a3
	db	$c3
; P1-3
	db	$90
	db	$06
	db	$d4,$13
	db	$d5,$90
	db	$00
	db	$90
	db	$00
; P1-4
	db	$90
	db	$00
	db	$11
	db	$40
	db	$00
	db	$70
	db	$00
	db	$90
	db	$00
	db	$a0
	db	$00
	db	$a0
	db	$00
	db	$a0
	db	$00
; P1-5
	db	$d4,$27
	db	$d5,$21
	db	$71
	db	$91
	db	$d4,$11
; P1-6
	db	$31
	db	$21
	db	$d5,$a1
	db	$91
	db	$a1
	db	$91
	db	$71
	db	$a1
; P1-7
	db	$90
	db	$06
	db	$d4,$1b
; P1-8 -tie
	db	$d5,$90
	db	$00
	db	$90
	db	$00
	db	$90
	db	$02
	db	$d4,$10
	db	$02
; P1-9
	db	$d5,$a3
	db	$d4,$a3
	db	$93
	db	$73
; P1-10
	db	$53
	db	$43
	db	$23
	db	$53
; P1-11
	db	$71
	db	$51
	db	$4b
; P1-12
	db	$d5,$c1
	db	$a1
	db	$c1
	db	$a1
	db	$97
; P1-13
	db	$a3
	db	$d4,$a3
	db	$91
	db	$71
	db	$51
	db	$71
; P1-14
	db	$51
	db	$41
	db	$21
	db	$d5,$c1
	db	$a1
	db	$c1
	db	$d4,$21
	db	$41
; P1-15
	db	$51
	db	$71
	db	$9b
; P1-16
	db	$d5,$c1
	db	$a1
	db	$c1
	db	$a1
	db	$97
	db	$fd,0
	dw	$ffff & @loop10
;----------------------------------------
Music_Lighthouse_Ch2:
;----------------------------------------
	db	$db,$03
	db	$e6,$00,$02
	db	$e1,$10,$45
; P2-1
@loop20:
	db	$d8,$c,$c5
	db	$d4,$9b
	db	$71
	db	$91
; P2-2
	db	$a7
	db	$d3,$27
; P2-3
	db	$10
	db	$06
	db	$d4,$9f
; P2-4 -tie
	db	$dc,$c5
	db	$20
	db	$00
	db	$20
	db	$00
	db	$20
	db	$00
	db	$20
	db	$00
; P2-5
	db	$9b
	db	$71
	db	$91
; P2-6
	db	$a7
	db	$d3,$27
; P2-7
	db	$10
	db	$06
	db	$4b
; P2-8 -tie
	db	$d4,$40
	db	$00
	db	$40
	db	$00
	db	$40
	db	$02
	db	$40
	db	$02
; P2-9
	db	$d3,$5b
	db	$41
	db	$21
; P2-10
	db	$d4,$9b
	db	$b3
; P2-11
	db	$c1
	db	$d3,$21
	db	$4b
; P2-12
	db	$d4,$41
	db	$21
	db	$41
	db	$21
	db	$17
; P2-13
	db	$d3,$5b
	db	$41
	db	$21
; P2-14
	db	$d4,$9b
	db	$d3,$13
; P2-15
	db	$d4,$c1
	db	$d3,$11
	db	$4b
; P2-16
	db	$d4,$41
	db	$21
	db	$41
	db	$21
	db	$17
	db	$fd,0
	dw	$ffff & @loop20
;----------------------------------------
Music_Lighthouse_Ch3:
;----------------------------------------
; P3-1
	db	$d8,$c,$25
;	db	$ef,$f0
@loop30:
	db	$d5,$91
	db	$01
	db	$41
	db	$01
	db	$71
	db	$01
	db	$81
	db	$01
; P3-2
@loop31:
	db	$91
	db	$01
	db	$41
	db	$01
	db	$71
	db	$01
	db	$a1
	db	$01
	db	$fd,2
	dw	$ffff & @loop31
; P3-4
	db	$91
	db	$01
	db	$41
	db	$01
	db	$71
	db	$01
	db	$a1
	db	$d4,$11
; P3-5
	db	$21
	db	$01
	db	$d5,$91
	db	$01
	db	$a1
	db	$01
	db	$d4,$11
	db	$01
; P3-6
@loop32:
	db	$21
	db	$01
	db	$d5,$91
	db	$01
	db	$a1
	db	$01
	db	$d4,$31
	db	$01
	db	$fd,2
	dw	$ffff & @loop32
; P3-8
	db	$21
	db	$01
	db	$d5,$91
	db	$01
	db	$a1
	db	$01
	db	$d4,$41
	db	$71
; P3-9
@loop33:
	db	$51
	db	$01
	db	$d5,$c1
	db	$01
	db	$d4,$11
	db	$01
	db	$61
	db	$01
	db	$fd,8
	dw	$ffff & @loop33
	db	$fd,0
	dw	$ffff & @loop30
;----------------------------------------
Music_Lighthouse_Ch4:
;----------------------------------------
	db	$e3,$000
; P4-1
	db	$d8,$c
@loop40:
;	db	$ef,$0f
	db	$03
	db	$61
	db	$03
	db	$61
	db	$01
	db	$01
;	db	$ef,$ff
	db	$01
	db	$63
	db	$01
	db	$63
	db	$01
	db	$01
	db	$fd,0
	dw	$ffff & @loop40
;----------------------------------------
Music_Lighthouse_Ch5:
;----------------------------------------
; P5-1
	db	$d8,$c
@loop40:
;	db	$ef,$0f
	db	$93
	db	$01
	db	$93
	db	$01
	db	$a1
	db	$b1
;	db	$ef,$ff
	db	$91
	db	$03
	db	$91
	db	$03
	db	$91
	db	$a1
	db	$fd,0
	dw	$ffff & @loop40


