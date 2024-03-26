Music_Route3:
	db	060h
	dw	$ffff & Music_Route3_Ch1
	db	001h
	dw	$ffff & Music_Route3_Ch2
	db	002h
	dw	$ffff & Music_Route3_Ch3
	db	004h
	dw	$ffff & Music_Route3_Ch5
;----------------------------------------
Music_Route3_Ch1:
;----------------------------------------
	db	$da,$00,$a0
; P1-1
	db	$d8,$c,$91
	db	$09
	db	$db,$00
	db	$e1,$14,$06
; P1-2
	db	$d4,$20
	db	$50
	db	$20
	db	$50
	db	$a0
	db	$50
	db	$20
	db	$50
	db	$a0
	db	$50
	db	$20
	db	$50
	db	$20
	db	$50
	db	$20
	db	$50
; P1-3
	db	$a0
	db	$60
	db	$30
	db	$60
	db	$30
	db	$60
	db	$30
	db	$60
	db	$20
	db	$50
	db	$a0
	db	$50
	db	$20
	db	$50
	db	$70
	db	$90
@Mainloop:
	db	$fe
	dw	$ffff & @sub1
; P1-7
	db	$80
	db	$30
	db	$d5,$c0
	db	$d4,$30
	db	$80
	db	$30
	db	$d5,$c0
	db	$d4,$30
	db	$80
	db	$30
	db	$d5,$c0
	db	$d4,$30
	db	$d5,$c0
	db	$d4,$30
	db	$d5,$c0
	db	$d4,$30
; P1-8
	db	$a0
	db	$50
	db	$20
	db	$50
	db	$a0
	db	$50
	db	$20
	db	$50
	db	$a0
	db	$50
	db	$20
	db	$50
	db	$20
	db	$50
	db	$20
	db	$50
; P1-9
	db	$a0
	db	$50
	db	$20
	db	$50
	db	$a0
	db	$50
	db	$20
	db	$50
	db	$a0
	db	$50
	db	$20
	db	$50
	db	$20
	db	$50
	db	$20
	db	$50
; P1-10
	db	$80
	db	$30
	db	$d5,$c0
	db	$d4,$30
	db	$80
	db	$30
	db	$d5,$c0
	db	$d4,$30
	db	$80
	db	$30
	db	$d5,$c0
	db	$d4,$30
	db	$d5,$c0
	db	$d4,$30
	db	$d5,$c0
	db	$d4,$30
	db	$dc,$6f
; P1-11
	db	$80
	db	$30
	db	$dc,$77
	db	$d5,$c0
	db	$d4,$30
	db	$80
	db	$30
	db	$50
	db	$90
	db	$c3
	db	$dc,$6f
	db	$d4,$91
	db	$51
; P1-12
	db	$a1
	db	$91
	db	$a1
	db	$57
	db	$40
	db	$50
; P1-13
	db	$91
	db	$d5,$c3
	db	$d4,$31
	db	$51
	db	$91
	db	$c1
	db	$a0
	db	$90
; P1-14
	db	$62
	db	$52
	db	$31
	db	$d5,$a1
	db	$d4,$31
	db	$51
	db	$61
; P1-15
	db	$dc,$91
	db	$70
	db	$30
	db	$d5,$a0
	db	$d4,$30
	db	$70
	db	$a0
	db	$70
	db	$a0
	db	$c0
	db	$90
	db	$50
	db	$90
	db	$50
	db	$90
	db	$c0
	db	$d3,$30
; P1-16
	db	$fd,0
	dw	$ffff & @Mainloop
@sub1:
; P1-4
@sub1loop1:
	db	$d4,$a0
	db	$50
	db	$20
	db	$50
	db	$fd,3
	dw	$ffff & @sub1loop1
	db	$20
	db	$50
	db	$20
	db	$50
; P1-5
@sub1loop2:
	db	$a0
	db	$50
	db	$20
	db	$50
	db	$fd,3
	dw	$ffff & @sub1loop2
	db	$20
	db	$50
	db	$20
	db	$50
; P1-6
@sub1loop3:
	db	$80
	db	$30
	db	$d5,$c0
	db	$d4,$30
	db	$fd,3
	dw	$ffff & @sub1loop3
	db	$d5,$c0
	db	$d4,$30
	db	$d5,$c0
	db	$d4,$30
	db	$ff
;----------------------------------------
Music_Route3_Ch2:
;----------------------------------------
; P2-1
	db	$d8,$c,$5e
	db	$db,$02
	db	$e1,$06,$03
	db	$d3,$50
	db	$80
	db	$95
	db	$dc,$87
	db	$70
	db	$90
; P2-2
	db	$a0
	db	$06
	db	$23
	db	$53
; P2-3
	db	$33
	db	$d4,$c3
	db	$d3,$23
	db	$dc,$a7
	db	$db,$02
	db	$d4,$a0
	db	$d3,$20
	db	$50
	db	$90
@Mainloop:
	db	$dc,$7d
	db	$fe
	dw	$ffff & @sub1
	db	$80
	db	$c9
; P2-7 -tie
	db	$dc,$b7
	db	$c5
	db	$dc,$7d
;					b
	db	$03
	db	$db,$03
	db	$93
; P2-8
	db	$fe
	dw	$ffff & @sub1
	db	$c0
	db	$dc,$7d
	db	$d2,$34
; P2-11 -tie
	db	$dc,$b7
	db	$d2,$34
;		tempo 2 		d
	db	$db,$00
	db	$d4,$30
	db	$80
	db	$c0
	db	$00
	db	$80
	db	$c0
	db	$d3,$33
	db	$dc,$8f
	db	$db,$02
	db	$d3,$51
	db	$31
; P2-12
	db	$21
	db	$d4,$c1
	db	$d3,$21
	db	$d4,$a7
	db	$90
	db	$a0
; P2-13
	db	$c1
	db	$53
	db	$d3,$57
	db	$30
	db	$20
; P2-14
	db	$32
	db	$22
	db	$d4,$a9
; P2-15
	db	$db,$02
	db	$d3,$75
	db	$50
	db	$70
	db	$95
	db	$70
	db	$90
; P2-16
	db	$fd,0
	dw	$ffff & @Mainloop
@sub1:
; P2-4
	db	$a5
	db	$50
	db	$a0
	db	$d2,$26
; P2-5 -tie
	db	$dc,$b7
	db	$d2,$22
	db	$dc,$7d
;		tempo 2 		c#
	db	$d3,$51
	db	$a1
	db	$d2,$51
	db	$31
	db	$21
	db	$d3,$c1
	db	$a1
; P2-6
	db	$85
	db	$30
	db	$ff
;----------------------------------------
Music_Route3_Ch3:
;----------------------------------------
; P3-1
	db	$e1,$06,$03
	db	$d8,$c,$13
	db	$d4,$c0
	db	$d3,$30
	db	$dc,$7f
	db	$55
	db	$dc,$14
	db	$30
	db	$d4,$c0
	db	$dc,$2f
; P3-2
	db	$d4,$a0
	db	$00
	db	$d5,$a1
	db	$01
	db	$dc,$14
	db	$a0
	db	$a0
	db	$a0
	db	$00
	db	$a0
	db	$00
	db	$a0
	db	$00
	db	$dc,$2f
	db	$91
; P3-3
	db	$fe
	dw	$ffff & @sub1
; P3-4
@Mainloop:
	db	$fe
	dw	$ffff & @sub1
; P3-5
	db	$fe
	dw	$ffff & @sub1
; P3-6
	db	$fe
	dw	$ffff & @sub2
; P3-8
	db	$fe
	dw	$ffff & @sub1
; P3-9
	db	$fe
	dw	$ffff & @sub1
; P3-10
	db	$fe
	dw	$ffff & @sub2
; P3-12
	db	$dc,$2f
	db	$a1
	db	$d4,$21
	db	$51
	db	$dc,$7f
	db	$a5
	db	$dc,$2f
	db	$91
	db	$71
; P3-13
	db	$51
	db	$31
	db	$d5,$c1
	db	$91
	db	$50
	db	$00
	db	$51
	db	$c1
	db	$d4,$51
; P3-14
	db	$dc,$7f
	db	$65
	db	$dc,$2f
	db	$51
	db	$31
	db	$d5,$c1
	db	$d4,$11
	db	$21
; P3-15
	db	$30
	db	$00
	db	$31
	db	$01
	db	$dc,$14
	db	$30
	db	$30
	db	$dc,$2f
	db	$50
	db	$00
	db	$51
	db	$01
	db	$dc,$14
	db	$70
	db	$90
; P3-16
	db	$fd,0
	dw	$ffff & @Mainloop
@sub1:
	db	$dc,$2f
	db	$d4,$a0
	db	$00
	db	$d5,$a1
	db	$01
	db	$dc,$14
	db	$a0
	db	$a0
	db	$dc,$2f
	db	$a0
	db	$00
	db	$a0
	db	$00
	db	$d4,$a1
	db	$d5,$91
	db	$ff
@sub2:
	db	$dc,$2f
	db	$d4,$80
	db	$00
	db	$d5,$a1
	db	$01
	db	$dc,$14
	db	$a0
	db	$a0
	db	$dc,$2f
	db	$a0
	db	$00
	db	$a0
	db	$00
	db	$d4,$31
	db	$81
; P3-7
	db	$dc,$2f
	db	$80
	db	$00
	db	$d5,$81
	db	$01
	db	$dc,$14
	db	$80
	db	$80
	db	$dc,$2f
	db	$50
	db	$00
	db	$50
	db	$00
	db	$91
	db	$c1
	db	$ff
;----------------------------------------
Music_Route3_Ch5:
;----------------------------------------
	db	$e3,$004
; P4-1
	db	$d8,$c
	db	$09
@Mainloop:
; P4-2
	db	$d8,$c
	db	$31
	db	$33
	db	$30
	db	$30
	db	$31
	db	$31
	db	$d8,$6
	db	$20
	db	$20
	db	$20
	db	$20
	db	$20
	db	$20
	db	$20
	db	$20
	db	$fd,0
	dw	$ffff & @Mainloop


