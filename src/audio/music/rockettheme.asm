Music_LookRocket:
	db	080h
	dw	$ffff & Music_LookRocket_Ch1
	db	001h
	dw	$ffff & Music_LookRocket_Ch2
	db	002h
	dw	$ffff & Music_LookRocket_Ch3
	db	003h
	dw	$ffff & Music_LookRocket_Ch4
	db	004h
	dw	$ffff & Music_LookRocket_Ch5
;----------------------------------------
Music_LookRocket_Ch1:
;----------------------------------------
	db	$da,$00,$7b
;	db	$e5,$77
	db	$d9,$02
; P1-1
;	db	$ef,$0f
	db	$db,$03
	db	$e1,$05,$64
	db	$d8,$c,$a8
	db	$d3,$10
	db	$30
; P1-2
	db	$fe
	dw	$ffff & rockt_sub2
	db	$db,$01
@loop:
	db	$dc,$a8
; P1-3
	db	$fe
	dw	$ffff & rockt_sub3
; P1-5
	db	$fe
	dw	$ffff & rockt_mero3_4
	db	$d3,$70
	db	$00
; P1-7
	db	$dc,$53
	db	$fe
	dw	$ffff & rockt_sub7
; P1-8
	db	$dc,$c3
	db	$fe
	dw	$ffff & rockt_sub7
; P1-9
	db	$dc,$e3
	db	$fe
	dw	$ffff & rockt_sub7
; P1-10
	db	$0f
; P1-11
	db	$fd,0
	dw	$ffff & @loop
;--------------------------------
;	@sub ruuuuuu
;--------------------------------
rockt_sub2:
	db	$40
	db	$00
	db	$30
	db	$00
	db	$20
	db	$00
	db	$10
	db	$02
	db	$d5,$60
	db	$90
	db	$c0
	db	$d4,$30
	db	$60
	db	$90
	db	$ff
rockt_sub3:
	db	$01
	db	$d4,$40
	db	$04
	db	$43
	db	$d5,$a1
	db	$d4,$40
	db	$60
; P1-4
	db	$75
	db	$40
	db	$02
	db	$70
	db	$00
	db	$40
	db	$00
	db	$d3,$70
	db	$00
	db	$ff
rockt_sub7:
	db	$01
	db	$d5,$c0
	db	$06
	db	$d4,$10
	db	$04
	db	$ff
;----------------------------------------
Music_LookRocket_Ch2:
;----------------------------------------
	db	$d9,$02
; P2-1
	db	$e1,$04,$64
	db	$db,$03
	db	$d8,$c,$b7
;	db	$ef,$ff
	db	$d2,$10
	db	$30
	db	$fe
	dw	$ffff & rockt_mero2
; P2-2
@loop:
	db	$dc,$b7
; P2-3
	db	$fe
	dw	$ffff & rockt_mero3_4
	db	$d2,$10
	db	$00
	db	$fe
	dw	$ffff & rockt_mero56
; P2-7
	db	$dc,$53
	db	$fe
	dw	$ffff & rockt_mero7
; P2-8
	db	$dc,$c3
	db	$fe
	dw	$ffff & rockt_mero7
; P2-9
	db	$dc,$e3
	db	$fe
	dw	$ffff & rockt_mero7
; P2-10
	db	$fe
	dw	$ffff & rockt_mero10
; P2-11
	db	$fd,0
	dw	$ffff & @loop
;--------------------------------
;	@sub ruuuuuu
;--------------------------------
rockt_mero2:
	db	$40
	db	$00
	db	$30
	db	$00
	db	$20
	db	$00
	db	$10
	db	$02
	db	$d4,$c5
	db	$db,$00
	db	$ff
rockt_mero56:
; P2-5
	db	$01
	db	$d3,$40
	db	$04
	db	$63
	db	$10
	db	$30
	db	$40
	db	$60
; P2-6
	db	$75
	db	$40
	db	$02
	db	$70
	db	$00
	db	$40
	db	$00
	db	$d2,$40
	db	$00
	db	$ff
rockt_mero7:
	db	$01
	db	$d4,$60
	db	$06
	db	$70
	db	$04
	db	$ff
rockt_mero10:
	db	$dc,$63
	db	$90
	db	$60
	db	$30
	db	$d5,$c0
	db	$dc,$a3
	db	$d4,$a0
	db	$70
	db	$40
	db	$10
	db	$dc,$c3
	db	$b0
	db	$80
	db	$50
	db	$20
	db	$dc,$f3
	db	$c0
	db	$90
	db	$60
	db	$30
	db	$ff
rockt_mero3_4:
	db	$d4,$01
	db	$80
	db	$04
	db	$a7
; P2-4
	db	$b5
	db	$a0
	db	$02
	db	$b0
	db	$00
	db	$a0
	db	$00
	db	$ff
;----------------------------------------
Music_LookRocket_Ch3:
;----------------------------------------
	db	$d9,$02
; P3-1
	db	$e1,$04,$22
	db	$d8,$c,$62
;	db	$ef,$f0
	db	$01
; P3-2
	db	$fe
	dw	$ffff & ro_bass2
@loop:
; P3-3
	db	$fe
	dw	$ffff & bass3_4
; P3-5
	db	$fe
	dw	$ffff & bass3_4
; P3-7
	db	$fe
	dw	$ffff & bass7
; P3-8
	db	$fe
	dw	$ffff & ro_bass8
; P3-9
	db	$fe
	dw	$ffff & bass7
; P3-10
	db	$fe
	dw	$ffff & ro_bass10
; P3-11
	db	$fd,0
	dw	$ffff & @loop
;--------------------------------
;	@sub ruuuuuuu
;--------------------------------
ro_bass2:
	db	$d4,$60
	db	$00
	db	$90
	db	$00
	db	$d3,$10
	db	$00
	db	$30
	db	$02
	db	$d4,$35
	db	$ff
ro_bass8:
	db	$dc,$81
	db	$d5,$90
	db	$00
	db	$d4,$90
	db	$00
	db	$d5,$90
	db	$00
	db	$90
	db	$00
	db	$a0
	db	$00
	db	$d4,$a0
	db	$00
	db	$10
	db	$00
	db	$70
	db	$00
	db	$ff
ro_bass10:
	db	$d5,$90
	db	$00
	db	$d4,$60
	db	$00
	db	$d5,$a0
	db	$00
	db	$d4,$70
	db	$00
	db	$d5,$b0
	db	$00
	db	$d4,$80
	db	$00
	db	$d5,$c0
	db	$00
	db	$d4,$90
	db	$00
	db	$ff
bass3_4:
	db	$dc,$81
	db	$10
	db	$00
	db	$d3,$10
	db	$00
	db	$d4,$10
	db	$00
	db	$10
	db	$00
	db	$d3,$10
	db	$00
	db	$d4,$10
	db	$00
	db	$40
	db	$00
	db	$80
	db	$00
; P3-4
	db	$10
	db	$00
	db	$10
	db	$00
	db	$10
	db	$00
	db	$10
	db	$00
	db	$10
	db	$00
	db	$10
	db	$00
	db	$70
	db	$00
	db	$a0
	db	$00
	db	$ff
bass7:
	db	$dc,$10
	db	$d5,$90
	db	$00
	db	$d4,$90
	db	$00
	db	$d5,$90
	db	$00
	db	$90
	db	$00
	db	$a0
	db	$00
	db	$d4,$a0
	db	$00
	db	$90
	db	$70
	db	$40
	db	$10
	db	$ff
;----------------------------------------
Music_LookRocket_Ch4:
;----------------------------------------
	db	$e3,$003
;----------------------------------------
Music_LookRocket_Ch5:
;----------------------------------------
; P4-1
	db	$d8,$c
	db	$01
; P4-2
	db	$fe
	dw	$ffff & ro_drum2
@loop:
; P4-3
	db	$fe
	dw	$ffff & ro_drum3
; P4-4
	db	$fe
	dw	$ffff & ro_drum3
; P4-5
	db	$fe
	dw	$ffff & ro_drum3
; P4-6
	db	$fe
	dw	$ffff & ro_drum3
; P4-7
	db	$fe
	dw	$ffff & ro_drum3
; P4-8
	db	$fe
	dw	$ffff & ro_drum3
; P4-9
	db	$fe
	dw	$ffff & ro_drum3
; P4-10
	db	$fe
	dw	$ffff & ro_drum2
; P4-11
	db	$fd,0
	dw	$ffff & @loop
;----------------------------------
;	@sub ruuuu
;----------------------------------
ro_drum2:
	db	$17
	db	$31
	db	$41
	db	$20
	db	$20
	db	$30
	db	$30
	db	$ff
ro_drum3:
	db	$41
	db	$71
	db	$31
	db	$71
	db	$41
	db	$71
	db	$31
	db	$71
	db	$ff
Music_RocketTheme:
	db	080h
	dw	$ffff & Music_RocketTheme_Ch1
	db	001h
	dw	$ffff & Music_RocketTheme_Ch2
	db	002h
	dw	$ffff & Music_RocketTheme_Ch3
	db	003h
	dw	$ffff & Music_RocketTheme_Ch4
	db	004h
	dw	$ffff & Music_RocketTheme_Ch5
;--------------------------------
Music_RocketTheme_Ch1:
;--------------------------------
	db	$da,$00,$80
;	db	$e5,$77
; P1-1
	db	$db,$03
;	db	$ef,$0f
	db	$e1,$05,$64
	db	$d8,$c,$a8
	db	$d3,$10
	db	$30
@loop:
; P1-2
	db	$db,$03
	db	$d8,$c,$a8
	db	$fe
	dw	$ffff & rockt_sub2
	db	$db,$01
	db	$dc,$a8
; P1-3
	db	$fe
	dw	$ffff & rockt_sub3
; P1-5
	db	$fe
	dw	$ffff & rockt_mero3_4
	db	$d3,$70
	db	$00
; P1-7
	db	$dc,$53
	db	$fe
	dw	$ffff & rockt_sub7
; P1-8
	db	$dc,$c3
	db	$fe
	dw	$ffff & rockt_sub7
; P1-9
	db	$dc,$e3
	db	$fe
	dw	$ffff & rockt_sub7
; P1-10
	db	$0f
; P1-11
	db	$db,$00
	db	$d8,$6,$b3
; P1-11
	db	$e1,$06,$64
	db	$fe
	dw	$ffff & @sub11_13
	db	$d3,$60
	db	$72
	db	$61
	db	$01
	db	$41
	db	$01
	db	$11
	db	$31
	db	$41
	db	$11
; P1-14
	db	$d4,$b1
	db	$81
	db	$b1
	db	$d3,$11
	db	$03
	db	$33
	db	$03
	db	$43
	db	$03
	db	$41
	db	$71
; P1-15
	db	$fe
	dw	$ffff & @sub11_13
	db	$d4,$70
	db	$82
	db	$61
	db	$01
	db	$41
	db	$01
	db	$11
	db	$31
	db	$41
	db	$11
; P1-18
	db	$d5,$b1
	db	$81
	db	$b1
	db	$d4,$11
	db	$03
	db	$33
	db	$03
	db	$43
	db	$61
	db	$51
	db	$41
	db	$31
; P1-19
@sub19:
	db	$03
	db	$61
	db	$0d
	db	$71
	db	$09
; P1-20
; P1-21
	db	$fd,3
	dw	$ffff & @sub19
; P1-22
	db	$03
	db	$61
	db	$0d
	db	$71
	db	$01
	db	$71
	db	$01
	db	$41
	db	$11
; P1-23
@sub23:
	db	$71
	db	$a1
	db	$fd,4
	dw	$ffff & @sub23
@suba23:
	db	$81
	db	$b1
	db	$fd,4
	dw	$ffff & @suba23
; P1-24
@sub24:
	db	$91
	db	$c1
	db	$fd,4
	dw	$ffff & @sub24
@sub24_a:
	db	$d4,$a1
	db	$d3,$11
	db	$fd,4
	dw	$ffff & @sub24_a
; P1-25
	db	$d8,$c,$b3
	db	$0f
; P1-26
	db	$0b
	db	$61
	db	$10
	db	$30
; P1-27
	db	$fd,0
	dw	$ffff & @loop
@sub11_13:
	db	$06
	db	$c0
	db	$d3,$11
	db	$05
	db	$11
	db	$01
	db	$d4,$81
	db	$05
	db	$d3,$4b
; P1-12 -tie
;		tempo 8 		d#
	db	$37
	db	$d4,$b1
	db	$05
	db	$81
	db	$01
	db	$a1
	db	$01
; P1-13
	db	$b1
	db	$09
	db	$ff
;----------------------------------
Music_RocketTheme_Ch2:
;----------------------------------
; P2-1
;	db	$ef,$ff
	db	$e1,$04,$64
	db	$db,$03
	db	$d8,$c,$b7
	db	$d2,$10
	db	$30
@loop:
	db	$d8,$c,$b7
	db	$fe
	dw	$ffff & rockt_mero2
; P2-2
	db	$dc,$b7
; P2-3
	db	$fe
	dw	$ffff & rockt_mero3_4
	db	$d2,$10
	db	$00
	db	$fe
	dw	$ffff & rockt_mero56
; P2-7
	db	$dc,$53
	db	$fe
	dw	$ffff & rockt_mero7
; P2-8
	db	$dc,$c3
	db	$fe
	dw	$ffff & rockt_mero7
; P2-9
	db	$dc,$e3
	db	$fe
	dw	$ffff & rockt_mero7
; P2-10
	db	$fe
	dw	$ffff & rockt_mero10
; P2-11
; P2-11
	db	$e1,$06,$64
	db	$fe
	dw	$ffff & @mero11_13
	db	$d3,$a0
	db	$e1,$00,$00
	db	$dc,$b8
	db	$bd
;      -tie
	db	$e1,$05,$22
	db	$dc,$b7
	db	$b4
; P2-14 -tie
	db	$e1,$06,$64
	db	$d8,$c,$b7
	db	$bb
	db	$01
	db	$d2,$10
	db	$30
; P2-15
	db	$fe
	dw	$ffff & @mero11_13
	db	$c0
	db	$e1,$00,$00
	db	$dc,$b8
	db	$d3,$1d
;      -tie
	db	$e1,$05,$22
	db	$dc,$b7
	db	$14
; P2-18 -tie
	db	$e1,$06,$64
	db	$d8,$c,$b7
	db	$1b
	db	$d4,$b0
	db	$a0
	db	$90
	db	$80
; P2-19
	db	$d8,$6,$b7
	db	$fe
	dw	$ffff & @mero19
; P2-20
	db	$d3,$30
	db	$48
	db	$30
	db	$20
	db	$1b
	db	$61
	db	$01
	db	$71
	db	$01
; P2-21
	db	$fe
	dw	$ffff & @mero19
; P2-22
	db	$d4,$c1
	db	$01
	db	$d3,$11
	db	$01
	db	$31
	db	$01
	db	$47
	db	$03
	db	$31
	db	$01
	db	$11
	db	$d4,$81
; P2-23
	db	$c0
	db	$d3,$1e
	db	$2f
; P2-24
	db	$3f
	db	$4f
; P2-25
	db	$51
	db	$21
	db	$d4,$b1
	db	$81
	db	$d3,$61
	db	$31
	db	$d4,$c1
	db	$91
	db	$d3,$71
	db	$41
	db	$11
	db	$d4,$a1
	db	$d3,$81
	db	$51
	db	$21
	db	$d4,$b1
; P2-26
	db	$d3,$91
	db	$61
	db	$31
	db	$d4,$c1
	db	$d3,$a1
	db	$71
	db	$41
	db	$11
	db	$b1
	db	$81
	db	$51
	db	$21
	db	$c3
	db	$d2,$11
	db	$31
; P2-27
	db	$fd,0
	dw	$ffff & @loop
@mero11_13:
	db	$d8,$6,$b7
	db	$06
	db	$d3,$30
	db	$41
	db	$05
	db	$41
	db	$01
	db	$11
	db	$05
	db	$7b
; P2-12 -tie
;		tempo 8 		f#
	db	$67
	db	$41
	db	$05
	db	$11
	db	$01
	db	$31
	db	$01
; P2-13
	db	$41
	db	$01
	db	$d4,$41
	db	$01
	db	$41
	db	$01
	db	$ff
@mero19:
	db	$d4,$c0
	db	$d3,$12
	db	$43
	db	$13
	db	$77
	db	$67
	db	$13
	db	$ff
;------------------------------------
Music_RocketTheme_Ch3:
;-------------------------------------
; P3-1
;	db	$ef,$f0
	db	$e1,$04,$22
	db	$d8,$c,$14
	db	$01
; P3-2
@loop:
	db	$d8,$c,$65
	db	$fe
	dw	$ffff & ro_bass2
; P3-3
	db	$fe
	dw	$ffff & bass3_4
; P3-5
	db	$fe
	dw	$ffff & bass3_4
; P3-7
	db	$fe
	dw	$ffff & bass7
; P3-8
	db	$fe
	dw	$ffff & ro_bass8
; P3-9
	db	$fe
	dw	$ffff & bass7
; P3-10
	db	$fe
	dw	$ffff & ro_bass10
; P3-11
; P3-11
	db	$fe
	dw	$ffff & bass3_4
; P3-13
	db	$fe
	dw	$ffff & bass3_4
; P3-15
	db	$fe
	dw	$ffff & bass3_4
; P3-17
	db	$fe
	dw	$ffff & bass3_4
; P3-19
	db	$fe
	dw	$ffff & bass7
; P3-20
	db	$fe
	dw	$ffff & ro_bass8
; P3-21
	db	$fe
	dw	$ffff & bass7
; P3-22
	db	$fe
	dw	$ffff & ro_bass8
; P3-23
	db	$dc,$10
	db	$d4,$10
	db	$00
	db	$d3,$10
	db	$00
	db	$d4,$10
	db	$00
	db	$10
	db	$00
	db	$20
	db	$00
	db	$d3,$20
	db	$00
	db	$d4,$b0
	db	$80
	db	$50
	db	$20
; P3-24
	db	$30
	db	$00
	db	$d3,$30
	db	$00
	db	$d4,$30
	db	$00
	db	$30
	db	$00
	db	$40
	db	$00
	db	$d3,$40
	db	$00
	db	$10
	db	$d4,$a0
	db	$70
	db	$40
; P3-25
	db	$dc,$21
	db	$50
	db	$00
	db	$d3,$20
	db	$00
	db	$d4,$60
	db	$00
	db	$d3,$30
	db	$00
	db	$d4,$70
	db	$00
	db	$d3,$40
	db	$00
	db	$d4,$80
	db	$00
	db	$d3,$50
	db	$00
; P3-26
	db	$d4,$90
	db	$00
	db	$d3,$60
	db	$00
	db	$d4,$a0
	db	$00
	db	$d3,$70
	db	$00
	db	$d4,$b0
	db	$00
	db	$d3,$80
	db	$00
	db	$d4,$c1
	db	$d3,$90
	db	$00
; P3-27
	db	$fd,0
	dw	$ffff & @loop
;-------------------------------------
Music_RocketTheme_Ch4:
;-------------------------------------
	db	$e3,$003
;-------------------------------------
Music_RocketTheme_Ch5:
;-------------------------------------
; P4-1
	db	$d8,$c
	db	$01
; P4-2
@loop:
	db	$fe
	dw	$ffff & ro_drum2
; P4-3
	db	$fe
	dw	$ffff & ro_drum3
; P4-4
	db	$fe
	dw	$ffff & ro_drum3
; P4-5
	db	$fe
	dw	$ffff & ro_drum3
; P4-6
	db	$fe
	dw	$ffff & ro_drum3
; P4-7
	db	$fe
	dw	$ffff & ro_drum3
; P4-8
	db	$fe
	dw	$ffff & ro_drum3
; P4-9
	db	$fe
	dw	$ffff & ro_drum3
; P4-10
	db	$fe
	dw	$ffff & ro_drum2
; P4-11
; P4-11
@dr11:
	db	$b1
	db	$71
	db	$31
	db	$71
	db	$b1
	db	$71
	db	$31
	db	$71
	db	$fd,11
	dw	$ffff & @dr11
; P4-12
; P4-13
; P4-14
; P4-15
; P4-16
; P4-17
; P4-18
; P4-19
; P4-20
; P4-21
; P4-22
	db	$fe
	dw	$ffff & ro_drum3
; P4-23
	db	$fe
	dw	$ffff & ro_drum3
; P4-24
	db	$fe
	dw	$ffff & ro_drum3
; P4-25
	db	$fe
	dw	$ffff & ro_drum2
; P4-26
	db	$fe
	dw	$ffff & ro_drum2
; P4-27
	db	$fd,0
	dw	$ffff & @loop


