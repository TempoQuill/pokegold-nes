Music_ShowMeAround:
	db	080h
	dw	$ffff & Music_ShowMeAround_Ch1
	db	001h
	dw	$ffff & Music_ShowMeAround_Ch2
	db	002h
	dw	$ffff & Music_ShowMeAround_Ch3
	db	003h
	dw	$ffff & Music_ShowMeAround_Ch4
	db	004h
	dw	$ffff & Music_ShowMeAround_Ch5
;----------------------------------------
Music_ShowMeAround_Ch1:
;----------------------------------------
	db	$da,$00,$90
;	db	$e5,$77
; P1-1
;	db	$ef,$0f
	db	$db,$02
	db	$d8,$c,$b1
; P1-2
	db	$d3,$c1
	db	$a1
	db	$91
	db	$a1
	db	$91
	db	$71
	db	$51
	db	$31
; P1-3
	db	$d4,$c3
	db	$90
	db	$c0
	db	$d3,$30
	db	$50
	db	$97
; P1-4
@mainloop:
	db	$0f
; P1-5
	db	$0f
; P1-6
	db	$0f
; P1-7
	db	$0f
; P1-8
	db	$fe
	dw	$ffff & TourMelody4_5
; P1-10
	db	$fe
	dw	$ffff & @sub1
; P1-12
	db	$fe
	dw	$ffff & TourMelody4_5
; P1-14
	db	$fe
	dw	$ffff & @sub1
; P1-16
	db	$fd,0
	dw	$ffff & @mainloop
@sub1:
	db	$03
	db	$d4,$20
	db	$04
	db	$33
	db	$10
	db	$00
; P1-11
	db	$03
	db	$d5,$50
	db	$00
	db	$90
	db	$00
	db	$d3,$50
	db	$00
	db	$50
	db	$00
	db	$50
	db	$02
	db	$ff
;----------------------------------------
Music_ShowMeAround_Ch2:
;----------------------------------------
; P2-1
;	db	$ef,$ff
	db	$db,$02
	db	$d8,$c,$b1
; P2-2
	db	$d2,$51
	db	$31
	db	$21
	db	$31
	db	$21
	db	$d3,$c1
	db	$a1
	db	$91
; P2-3
	db	$53
	db	$50
	db	$90
	db	$c0
	db	$d2,$30
	db	$57
;P2-4
	db	$db,$01
@mainloop:
	db	$fe
	dw	$ffff & TourMelody4_5
; P2-6
	db	$fe
	dw	$ffff & TourMelody4_5
; P2-8
	db	$fe
	dw	$ffff & @sub1
	db	$a3
; P2-9
	db	$d4,$a1
	db	$d3,$21
	db	$53
	db	$31
	db	$21
	db	$d4,$c3
; P2-10
	db	$fe
	dw	$ffff & @sub1
	db	$a1
	db	$a1
; P2-11
	db	$91
	db	$51
	db	$71
	db	$91
	db	$a1
	db	$a1
	db	$a3
; P2-12
	db	$fe
	dw	$ffff & @sub2
	db	$a3
; P2-13
	db	$d2,$21
	db	$d3,$a1
	db	$a3
	db	$90
	db	$80
	db	$70
	db	$60
	db	$50
	db	$00
	db	$40
	db	$50
; P2-14
	db	$fe
	dw	$ffff & @sub2
	db	$a1
	db	$d2,$51
; P2-15
	db	$31
	db	$d3,$c1
	db	$a1
	db	$91
	db	$a1
	db	$a1
	db	$a3
; P2-16
	db	$fd,0
	dw	$ffff & @mainloop
@sub1:
	db	$d4,$a1
	db	$d3,$21
	db	$53
	db	$31
	db	$71
	db	$ff
@sub2:
	db	$d2,$21
	db	$d3,$a1
	db	$a3
	db	$d2,$71
	db	$d3,$a1
	db	$ff
TourMelody4_5:
	db	$03
	db	$d4,$20
	db	$04
	db	$33
	db	$10
	db	$00
; P2-5
	db	$01
	db	$20
	db	$04
	db	$d5,$50
	db	$02
	db	$b1
	db	$c0
	db	$00
	db	$ff
;----------------------------------------
Music_ShowMeAround_Ch3:
;----------------------------------------
; P3-1
;	db	$ef,$f0
	db	$e1,$10,$22
; P3-2
	db	$d8,$6,$19
	db	$d5,$c0
	db	$02
	db	$d4,$30
	db	$02
	db	$50
	db	$02
	db	$90
	db	$02
	db	$c0
	db	$02
	db	$d3,$30
	db	$02
	db	$50
	db	$02
	db	$90
	db	$02
; P3-3
	db	$31
	db	$05
	db	$31
	db	$d4,$c1
	db	$91
	db	$c1
	db	$51
	db	$05
	db	$d5,$c0
	db	$b0
	db	$a0
	db	$90
	db	$80
	db	$60
	db	$51
@mainloop:
	db	$fe
	dw	$ffff & @sub1
; P3-6
	db	$fe
	dw	$ffff & @sub1
; P3-8
	db	$fe
	dw	$ffff & @sub1
; P3-10
	db	$fe
	dw	$ffff & @sub2
; P3-12
	db	$fe
	dw	$ffff & @sub1
; P3-14
	db	$fe
	dw	$ffff & @sub2
; P3-16
	db	$fd,0
	dw	$ffff & @mainloop
@sub1:
; P3-4
	db	$dc,$66
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
; P3-5
	db	$dc,$33
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
	db	$ff
@sub2:
	db	$dc,$66
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
; P3-11
	db	$d5,$91
	db	$05
	db	$d3,$31
	db	$01
	db	$d4,$c1
	db	$01
	db	$21
	db	$01
	db	$51
	db	$01
	db	$d5,$a1
	db	$05
	db	$ff
;----------------------------------------
Music_ShowMeAround_Ch4:
;----------------------------------------
	db	$e3,$003
;----------------------------------------
Music_ShowMeAround_Ch5:
;----------------------------------------
; P4-1
	db	$d8,$c
; P4-2
	db	$0f
; P4-3
	db	$07
	db	$31
	db	$41
	db	$73
; P4-4
@mainloop:
	db	$fe
	dw	$ffff & @sub1
; P4-6
	db	$fe
	dw	$ffff & @sub1
; P4-8
	db	$fe
	dw	$ffff & @sub1
; P4-10
	db	$fe
	dw	$ffff & @sub2
; P4-12
	db	$fe
	dw	$ffff & @sub1
; P4-14
	db	$fe
	dw	$ffff & @sub2
; P4-16
	db	$fd,0
	dw	$ffff & @mainloop
@sub1:
	db	$41
	db	$71
	db	$31
	db	$81
	db	$81
	db	$73
	db	$31
; P4-5
	db	$41
	db	$73
	db	$31
	db	$81
	db	$81
	db	$31
	db	$41
	db	$ff
@sub2:
	db	$41
	db	$71
	db	$31
	db	$81
	db	$81
	db	$73
	db	$31
; P4-11
	db	$41
	db	$73
	db	$31
	db	$31
	db	$31
	db	$31
	db	$71
	db	$ff


