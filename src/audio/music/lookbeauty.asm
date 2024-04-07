Music_LookBeauty:
	db	080h
	dw	$ffff & Music_LookBeauty_Ch1
	db	001h
	dw	$ffff & Music_LookBeauty_Ch2
	db	002h
	dw	$ffff & Music_LookBeauty_Ch3
	db	003h
	dw	$ffff & Music_LookBeauty_Ch4
	db	004h
	dw	$ffff & Music_LookBeauty_Ch5
;----------------------------------------
Music_LookBeauty_Ch1:
;----------------------------------------
;	db	$ef,$0f
	db	$e1,$12,$25
	db	$db,$02
	db	$da,$00,$80
;	db	$e5,$77
; P1-1
	db	$d8,$c,$a3
; P1-2
	db	$0f
; P1-3
	db	$07
	db	$d3,$17
	db	$db,$03
@loop:
; P1-4
	db	$03
	db	$d4,$30
	db	$04
	db	$30
	db	$04
; P1-5
	db	$01
	db	$30
	db	$02
	db	$30
	db	$04
	db	$33
; P1-6
	db	$03
	db	$30
	db	$04
	db	$30
	db	$04
; P1-7
	db	$01
	db	$30
	db	$02
	db	$30
	db	$02
	db	$31
	db	$01
	db	$31
; P1-8
	db	$03
	db	$50
	db	$04
	db	$50
	db	$04
; P1-9
	db	$01
	db	$50
	db	$02
	db	$50
	db	$00
	db	$50
	db	$02
	db	$53
; P1-10
	db	$03
	db	$70
	db	$04
	db	$70
	db	$02
	db	$31
; P1-11 -tie
	db	$30
	db	$06
	db	$d5,$a0
	db	$d4,$10
	db	$40
	db	$70
	db	$40
	db	$70
	db	$a0
	db	$d3,$10
; P1-12
	db	$fd,0
	dw	$ffff & @loop
;----------------------------------------
Music_LookBeauty_Ch2:
;----------------------------------------
;	db	$ef,$f0
; P2-1
	db	$e1,$10,$23
	db	$db,$02
	db	$d8,$c,$c7
; P2-2
	db	$d4,$30
	db	$00
	db	$d2,$35
	db	$10
	db	$00
	db	$d3,$c0
	db	$00
	db	$b0
	db	$00
	db	$a0
	db	$00
; P2-3
	db	$90
	db	$00
	db	$80
	db	$00
	db	$70
	db	$00
	db	$60
	db	$00
	db	$51
	db	$30
	db	$00
	db	$50
	db	$00
	db	$70
	db	$00
	db	$db,$03
@loop:
	db	$d8,$c,$c7
; P2-4
	db	$8f
; P2-5
	db	$a7
	db	$c7
; P2-6
	db	$a9
	db	$90
	db	$00
	db	$a0
	db	$00
	db	$91
; P2-7 -tie
	db	$97
	db	$01
	db	$61
	db	$01
	db	$51
; P2-8
	db	$dc,$b7
	db	$e1,$10,$24
	db	$d2,$1e
;      -tie
	db	$d8,$6,$c7
	db	$dc,$c5
	db	$e1,$10,$23
	db	$00
	db	$20
; P2-9
	db	$3f
	db	$1f
; P2-10
	db	$d3,$cf
	db	$03
	db	$d2,$31
	db	$01
	db	$d3,$c1
	db	$01
	db	$a5
; P2-11 -tie
;		tempo 2 		r
	db	$0d
	db	$77
	db	$a7
; P2-12
	db	$fd,0
	dw	$ffff & @loop
;----------------------------------------
Music_LookBeauty_Ch3:
;----------------------------------------
;	db	$ef,$ff
; P3-1
	db	$e1,$08,$12
	db	$d8,$c,$76
; P3-2
	db	$0f
; P3-3
	db	$d2,$50
	db	$00
	db	$40
	db	$00
	db	$30
	db	$00
	db	$20
	db	$00
	db	$d4,$36
	db	$70
@loop:
; P3-4
	db	$dc,$43
	db	$83
	db	$d3,$c0
	db	$00
	db	$d4,$80
	db	$00
	db	$30
	db	$00
	db	$d3,$c0
	db	$00
	db	$d4,$30
	db	$00
	db	$dc,$21
	db	$81
; P3-5 -tie
	db	$dc,$10
	db	$80
	db	$d3,$b0
	db	$dc,$43
	db	$c0
	db	$00
	db	$d4,$80
	db	$00
	db	$d3,$c0
	db	$00
	db	$d4,$30
	db	$02
	db	$d3,$c3
; P3-6
	db	$d4,$53
	db	$d3,$c0
	db	$00
	db	$d4,$50
	db	$00
	db	$d5,$c0
	db	$00
	db	$d3,$a0
	db	$00
	db	$d5,$c0
	db	$00
	db	$dc,$21
	db	$d4,$51
; P3-7 -tie
	db	$dc,$10
	db	$50
	db	$d3,$80
	db	$dc,$21
	db	$90
	db	$00
	db	$d4,$50
	db	$00
	db	$d3,$70
	db	$02
	db	$91
	db	$01
	db	$c1
; P3-8
	db	$dc,$43
	db	$d4,$a3
	db	$d2,$10
	db	$00
	db	$d4,$a0
	db	$00
	db	$50
	db	$00
	db	$d2,$10
	db	$00
	db	$d4,$50
	db	$00
	db	$dc,$21
	db	$a1
; P3-9 -tie
	db	$dc,$10
	db	$a0
	db	$d3,$c0
	db	$dc,$43
	db	$d2,$10
	db	$00
	db	$d4,$a0
	db	$00
	db	$d2,$10
	db	$00
	db	$30
	db	$02
	db	$13
; P3-10
	db	$d4,$33
	db	$d3,$c0
	db	$00
	db	$d4,$30
	db	$00
	db	$d5,$a0
	db	$00
	db	$d3,$a0
	db	$00
	db	$d5,$a0
	db	$00
	db	$dc,$21
	db	$d3,$a1
; P3-11 -tie
	db	$a0
	db	$06
	db	$dc,$81
	db	$d4,$37
; P3-12
	db	$fd,0
	dw	$ffff & @loop
;----------------------------------------
Music_LookBeauty_Ch4:
;----------------------------------------
	db	$e3,$003
;----------------------------------------
Music_LookBeauty_Ch5:
;----------------------------------------
; P4-1
	db	$d8,$c
; P4-2
	db	$0f
; P4-3
	db	$0f
@loop:
	db	$fe
	dw	$ffff & @drum4_5
; P4-6
; P4-7
	db	$fe
	dw	$ffff & @drum4_5
; P4-8
; P4-9
	db	$fe
	dw	$ffff & @drum4_5
; P4-10
; P4-11
	db	$fe
	dw	$ffff & @drum4_5
; P4-12
	db	$fd,0
	dw	$ffff & @loop
@drum4_5:
; P4-4
	db	$71
	db	$81
	db	$31
	db	$81
	db	$81
	db	$31
	db	$81
	db	$81
; P4-5
	db	$71
	db	$31
	db	$81
	db	$31
	db	$81
	db	$81
	db	$31
	db	$81
	db	$ff


