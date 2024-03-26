Music_GymLeaderVictory:
	db	060h
	dw	$ffff & Music_GymLeaderVictory_Ch1
	db	001h
	dw	$ffff & Music_GymLeaderVictory_Ch2
	db	002h
	dw	$ffff & Music_GymLeaderVictory_Ch3
	db	004h
	dw	$ffff & Music_GymLeaderVictory_Ch5
;----------------------------------------
Music_GymLeaderVictory_Ch1:
;----------------------------------------
	db	$da,$00,$74
;	db	$e5,$77
	db	$e1,$12,$34
	db	$db,$03
	db	$e6,$00,$01
; P1-2
	db	$d8,$c,$b7
	db	$d3,$35
	db	$d4,$a0
	db	$d3,$30
	db	$75
	db	$30
	db	$70
; P1-3
	db	$a5
	db	$70
	db	$a0
	db	$d2,$37
; P1-4-5
;	db	$ef,$0f
@loop:
	db	$db,$01
	db	$fe
	dw	$ffff & @sub4
	db	$d3,$23
	db	$53
; P1-6-7
	db	$fe
	dw	$ffff & @sub4
	db	$77
	db	$fd,2
	dw	$ffff & @loop
; P1-12-17
	db	$db,$02
	db	$fe
	dw	$ffff & @sub12
	db	$a3
	db	$83
; P1-18
	db	$75
	db	$30
	db	$50
	db	$75
	db	$51
; P1-19
	db	$37
	db	$27
; P1-20-25
	db	$db,$03
	db	$fe
	dw	$ffff & @sub12
	db	$23
	db	$53
; P1-26
	db	$85
	db	$a0
	db	$80
	db	$a5
	db	$81
; P1-27
	db	$dc,$87
	db	$7f
; P1-28
	db	$fd,0
	dw	$ffff & @loop
@sub4:
	db	$dc,$91
	db	$d4,$71
	db	$a1
	db	$d3,$31
	db	$d4,$a0
	db	$70
	db	$51
	db	$a1
	db	$d3,$21
	db	$d4,$a0
	db	$50
; P1-5
	db	$31
	db	$81
	db	$c1
	db	$80
	db	$30
	db	$ff
@sub12:
	db	$dc,$87
	db	$d4,$7d
	db	$30
	db	$70
; P1-13
	db	$a7
	db	$73
	db	$a0
	db	$90
	db	$70
	db	$a0
; P1-14
	db	$9d
	db	$50
	db	$90
; P1-15
	db	$c7
	db	$d3,$33
	db	$50
	db	$30
	db	$50
	db	$30
; P1-16
	db	$2d
	db	$d4,$a0
	db	$d3,$20
; P1-17
	db	$57
	db	$ff
;----------------------------------------
Music_GymLeaderVictory_Ch2:
;----------------------------------------
	db	$e1,$12,$34
; P2-2
	db	$db,$03
	db	$d8,$c,$d7
	db	$d3,$a5
	db	$70
	db	$a0
	db	$d2,$35
	db	$d3,$a0
	db	$d2,$30
; P2-3
	db	$7f
; P2-4-5
@loop:
	db	$db,$03
	db	$dc,$a1
	db	$fe
	dw	$ffff & @melo4
	db	$a3
	db	$a3
; P2-6-7
	db	$fe
	dw	$ffff & @melo4
	db	$35
	db	$db,$02
	db	$c0
	db	$d2,$20
; P2-8-9
	db	$fe
	dw	$ffff & @melo4
	db	$a3
	db	$a3
; P2-10-11
	db	$fe
	dw	$ffff & @melo4
	db	$37
; P2-12-17
	db	$db,$03
	db	$fe
	dw	$ffff & @melo12
	db	$73
	db	$53
; P2-18
	db	$3d
	db	$d3,$c1
; P2-19
	db	$dc,$a7
	db	$af
; P2-20-25
	db	$db,$02
	db	$fe
	dw	$ffff & @melo12
	db	$d3,$a3
	db	$d2,$23
; P2-26
	db	$3d
	db	$51
; P2-27
	db	$dc,$a6
	db	$3b
	db	$01
	db	$db,$03
	db	$d3,$c0
	db	$d2,$20
; P2-28
	db	$fd,0
	dw	$ffff & @loop
@melo4:
	db	$d2,$31
	db	$21
	db	$d3,$c3
	db	$d2,$21
	db	$d3,$c1
	db	$a3
; P2-5
	db	$c1
	db	$a1
	db	$81
	db	$71
	db	$ff
@melo12:
	db	$dc,$98
	db	$a5
	db	$70
	db	$a0
	db	$d2,$37
; P2-13 -tie
	db	$3f
; P2-14
	db	$d3,$c5
	db	$90
	db	$c0
	db	$d2,$57
; P2-15 -tie
	db	$5f
; P2-16
	db	$d3,$85
	db	$50
	db	$80
	db	$d2,$27
; P2-17 -tie
	db	$27
	db	$ff
;----------------------------------------
Music_GymLeaderVictory_Ch3:
;----------------------------------------
; P3-2
	db	$d8,$c,$81
	db	$d4,$7f
; P3-3
	db	$39
	db	$dc,$20
	db	$d5,$a1
	db	$c1
	db	$d4,$21
; P3-4-11
;	db	$ef,$f0
@loop:
	db	$dc,$20
	db	$31
	db	$03
	db	$d5,$a1
	db	$d4,$21
	db	$03
	db	$d5,$a1
; P3-5
	db	$c1
	db	$03
	db	$81
	db	$a1
	db	$01
	db	$dc,$40
	db	$d4,$23
; P3-6
	db	$dc,$20
	db	$31
	db	$03
	db	$d5,$a1
	db	$d4,$21
	db	$03
	db	$d5,$a1
; P3-7
	db	$c1
	db	$03
	db	$81
	db	$d4,$31
	db	$05
	db	$fd,2
	dw	$ffff & @loop
; P3-12-17
	db	$fe
	dw	$ffff & @base12
; P3-18
	db	$d4,$31
	db	$01
	db	$31
	db	$d3,$31
	db	$01
	db	$d4,$31
	db	$71
	db	$31
; P3-19
	db	$a1
	db	$01
	db	$d5,$a1
	db	$d4,$51
	db	$01
	db	$d5,$a1
	db	$d4,$21
	db	$d5,$a1
; P3-20-25
	db	$fe
	dw	$ffff & @base12
; P3-26
	db	$d4,$31
	db	$01
	db	$81
	db	$d3,$31
	db	$01
	db	$d4,$31
	db	$81
	db	$51
; P3-27
	db	$31
	db	$01
	db	$31
	db	$a1
	db	$01
	db	$d5,$a1
	db	$c1
	db	$d4,$21
; P3-28
	db	$fd,0
	dw	$ffff & @loop
@base12:
	db	$dc,$20
	db	$d4,$31
	db	$01
	db	$31
	db	$d3,$31
	db	$01
	db	$d4,$31
	db	$71
	db	$31
; P3-13
	db	$a1
	db	$01
	db	$31
	db	$71
	db	$01
	db	$d5,$a1
	db	$d4,$31
	db	$d5,$a1
; P3-14
	db	$d4,$51
	db	$01
	db	$51
	db	$d3,$51
	db	$01
	db	$d4,$51
	db	$91
	db	$51
; P3-15
	db	$c1
	db	$01
	db	$51
	db	$91
	db	$01
	db	$d5,$c1
	db	$d4,$51
	db	$d5,$c1
; P3-16
	db	$a1
	db	$01
	db	$a1
	db	$d4,$a1
	db	$01
	db	$d5,$a1
	db	$d4,$21
	db	$d5,$a1
; P3-17
	db	$d4,$a1
	db	$01
	db	$d5,$a1
	db	$d4,$51
	db	$01
	db	$d5,$a1
	db	$d4,$21
	db	$d5,$a1
	db	$ff
;----------------------------------------
Music_GymLeaderVictory_Ch5:
;----------------------------------------
	db	$e3,$004
	db	$d8,$c
; P4-2
	db	$cf
; P4-3
	db	$cf
; P4-4-6
@loop:
	db	$fe
	dw	$ffff & drum4
; P4-7
	db	$45
	db	$41
	db	$47
; P4-8-10
	db	$fe
	dw	$ffff & drum4
; P4-11
	db	$45
	db	$41
	db	$43
	db	$20
	db	$20
	db	$20
	db	$20
; P4-12
@loop12:
	db	$41
	db	$81
	db	$31
	db	$41
	db	$81
	db	$41
	db	$31
	db	$81
	db	$fd,16
	dw	$ffff & @loop12
	db	$fd,0
	dw	$ffff & @loop
drum4:
	db	$45
	db	$41
	db	$43
	db	$31
	db	$41
	db	$fd,3
	dw	$ffff & drum4
	db	$ff
;:


