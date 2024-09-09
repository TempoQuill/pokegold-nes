Music_RocketHideout:
	db	080h
	dw	$ffff & Music_RocketHideout_Ch1
	db	001h
	dw	$ffff & Music_RocketHideout_Ch2
	db	002h
	dw	$ffff & Music_RocketHideout_Ch3
	db	003h
	dw	$ffff & Music_RocketHideout_Ch4
	db	004h
	dw	$ffff & Music_RocketHideout_Ch5
;----------------------------------------
Music_RocketHideout_Ch1:
;----------------------------------------
	db	$da,$00,$90
;	db	$e5,$77
	db	$db,$03
	db	$e6,$00,$04
	db	$e1,$10,$44
	db	$d8,$c,$b3
;	db	$ef,$f0
; P1-2
@loop10:
	db	$0f
	db	$fd,4
	dw	$ffff & @loop10
; P1-6
@loop11:
	db	$d5,$41
	db	$01
	db	$b3
	db	$a1
	db	$05
; P1-7
	db	$41
	db	$b3
	db	$a1
	db	$07
	db	$fd,2
	dw	$ffff & @loop11
; P1-10
	db	$d4,$b1
	db	$a1
	db	$61
	db	$71
	db	$d3,$21
	db	$11
	db	$21
	db	$11
; P1-11
	db	$d4,$b1
	db	$a1
	db	$61
	db	$71
	db	$d3,$21
	db	$11
	db	$d4,$b1
	db	$a1
; P1-12
	db	$71
	db	$61
	db	$41
	db	$61
	db	$71
	db	$b1
	db	$71
	db	$61
; P1-13
	db	$41
	db	$61
	db	$71
	db	$a1
	db	$d5,$b1
	db	$c1
	db	$d4,$41
	db	$61
; P1-14
	db	$d3,$11
	db	$d4,$c1
	db	$81
	db	$91
	db	$d3,$41
	db	$31
	db	$41
	db	$31
; P1-15
	db	$11
	db	$d4,$c1
	db	$81
	db	$91
	db	$d3,$41
	db	$31
	db	$11
	db	$d4,$c1
; P1-16
	db	$91
	db	$81
	db	$61
	db	$81
	db	$91
	db	$d3,$11
	db	$d4,$91
	db	$81
; P1-17
	db	$61
	db	$81
	db	$91
	db	$c1
	db	$11
	db	$21
	db	$61
	db	$81
; P1-18
	db	$0f
; P1-19
	db	$dc,$b7
	db	$d5,$9f
; P1-20
	db	$0f
; P1-21
	db	$af
; P1-22
	db	$dc,$b3
@loop12:
	db	$0f
	db	$fd,4
	dw	$ffff & @loop12
	db	$fd,0
	dw	$ffff & @loop10
;----------------------------------------
Music_RocketHideout_Ch2:
;----------------------------------------
	db	$db,$03
	db	$e6,$00,$02
	db	$e1,$00,$f0
	db	$d8,$c,$c4
;	db	$ef,$0f
; P2-2
@loop20:
	db	$d5,$41
	db	$01
	db	$b3
	db	$a1
	db	$05
; P2-3
	db	$41
	db	$b3
	db	$a1
	db	$07
; P2-4
	db	$41
	db	$01
	db	$b3
	db	$a1
	db	$05
; P2-5
	db	$41
	db	$b3
	db	$a1
	db	$07
; P2-6
	db	$d4,$4b
	db	$b1
	db	$a1
; P2-7
	db	$d3,$27
	db	$17
; P2-8
	db	$d4,$bb
	db	$a3
; P2-9
	db	$77
	db	$67
; P2-10
	db	$d3,$4b
	db	$b1
	db	$a1
; P2-11
	db	$77
	db	$67
; P2-12
	db	$4b
	db	$33
; P2-13
	db	$d4,$c7
	db	$b7
; P2-14
	db	$d3,$6b
	db	$d2,$11
	db	$d3,$c1
; P2-15
	db	$97
	db	$87
; P2-16
	db	$6b
	db	$53
; P2-17
	db	$27
	db	$17
; P2-18
	db	$d5,$21
	db	$01
	db	$93
	db	$81
	db	$05
; P2-19
	db	$dc,$c7
	db	$d4,$2f
; P2-20
	db	$dc,$c4
	db	$d5,$21
	db	$01
	db	$93
	db	$81
	db	$05
; P2-21
	db	$dc,$c7
	db	$d4,$2f
; P2-22
	db	$dc,$c4
	db	$d5,$21
	db	$01
	db	$93
	db	$81
	db	$05
; P2-23
	db	$21
	db	$93
	db	$81
	db	$07
; P2-24
	db	$21
	db	$01
	db	$93
	db	$81
	db	$05
; P2-25
	db	$21
	db	$93
	db	$81
	db	$07
	db	$fd,0
	dw	$ffff & @loop20
;----------------------------------------
Music_RocketHideout_Ch3:
;----------------------------------------
	db	$d8,$c,$5f
; P3-2
@loop30:
	db	$d5,$41
	db	$01
	db	$b3
	db	$a1
	db	$05
; P3-3
	db	$dc,$2f
	db	$41
	db	$dc,$5f
	db	$b3
	db	$a1
	db	$07
	db	$fd,6
	dw	$ffff & @loop30
; P3-14
@loop31:
	db	$61
	db	$01
	db	$d4,$13
	db	$d5,$c1
	db	$05
; P3-15
	db	$dc,$2f
	db	$61
	db	$dc,$5f
	db	$d4,$13
	db	$d5,$c1
	db	$07
	db	$fd,2
	dw	$ffff & @loop31
; P3-18
@loop32:
	db	$dc,$5f
	db	$21
	db	$01
	db	$93
	db	$81
	db	$05
; P3-19
	db	$dc,$81
	db	$d4,$2f
	db	$fd,2
	dw	$ffff & @loop32
; P3-22
@loop33:
	db	$dc,$5f
	db	$d5,$21
	db	$01
	db	$93
	db	$81
	db	$05
; P3-23
	db	$dc,$2f
	db	$21
	db	$dc,$5f
	db	$93
	db	$81
	db	$07
	db	$fd,2
	dw	$ffff & @loop33
	db	$fd,0
	dw	$ffff & @loop30
;----------------------------------------
Music_RocketHideout_Ch4:
;----------------------------------------
	db	$e3,$000
;----------------------------------------
Music_RocketHideout_Ch5:
;----------------------------------------
	db	$d8,$c
; P4-2
;	db	$ef,$0f
	db	$0f
	db	$0f
	db	$30
	db	$30
	db	$40
	db	$40
	db	$fe
	dw	$ffff & sub41
@loop40:
	db	$fe
	dw	$ffff & sub41
	db	$53
	db	$fe
	dw	$ffff & sub41
	db	$63
	db	$fe
	dw	$ffff & sub41
	db	$b3
	db	$fe
	dw	$ffff & sub41
	db	$73
	db	$fd,0
	dw	$ffff & @loop40
sub41:
;	db	$ef,$f0
	db	$40
	db	$40
;	db	$ef,$0f
	db	$a3
	db	$40
	db	$40
;	db	$ef,$f0
	db	$a3
	db	$ff


