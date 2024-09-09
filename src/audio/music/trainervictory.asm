Music_TrainerVictory:
	db	040h
	dw	$ffff & Music_TrainerVictory_Ch1
	db	001h
	dw	$ffff & Music_TrainerVictory_Ch2
	db	002h
	dw	$ffff & Music_TrainerVictory_Ch3
;----------------------------------------
Music_TrainerVictory_Ch1:
;----------------------------------------
	db	$da,$00,$78
;	db	$e5,$77
	db	$db,$02
	db	$e6,$00,$01
; P1-2
	db	$d8,$8,$b1
	db	$d3,$51
	db	$51
	db	$51
	db	$51
	db	$71
	db	$81
	db	$dc,$b6
	db	$ab
; P1-3-6
;	db	$ef,$0f
@loop:
	db	$dc,$72
	db	$fe
	dw	$ffff & @sub3
; P1-4
	db	$dc,$51
	db	$21
	db	$51
	db	$71
	db	$a1
	db	$c1
	db	$d3,$21
	db	$dc,$72
	db	$d4,$a1
	db	$01
	db	$d3,$21
	db	$55
	db	$fd,2
	dw	$ffff & @loop
; P1-7
	db	$fe
	dw	$ffff & @sub3
; P1-8
	db	$a1
	db	$01
	db	$61
	db	$a5
	db	$b1
	db	$01
	db	$81
	db	$b5
; P1-9
@loop9:
	db	$dc,$72
	db	$d3,$31
	db	$21
	db	$d4,$a1
	db	$fd,3
	dw	$ffff & @loop9
	db	$71
	db	$a1
	db	$d3,$31
; P1-10
@loop10:
	db	$d3,$21
	db	$d4,$c1
	db	$a1
	db	$fd,3
	dw	$ffff & @loop10
	db	$51
	db	$71
	db	$81
; P1-11
	db	$fd,0
	dw	$ffff & @loop
@sub3:
	db	$d4,$71
	db	$01
	db	$31
	db	$75
	db	$81
	db	$01
	db	$51
	db	$85
	db	$ff
;----------------------------------------
Music_TrainerVictory_Ch2:
;----------------------------------------
	db	$e1,$12,$34
	db	$db,$03
; P2-2
	db	$d8,$8,$d1
	db	$d3,$a1
	db	$a1
	db	$a1
	db	$a1
	db	$c1
	db	$d2,$21
	db	$dc,$d6
	db	$3b
; P2-3-6
;	db	$ef,$f0
@loop:
	db	$d8,$8,$82
	db	$fe
	dw	$ffff & @melo3
; P2-4
	db	$71
	db	$01
	db	$81
	db	$a5
	db	$51
	db	$01
	db	$71
	db	$85
	db	$fd,2
	dw	$ffff & @loop
; P2-7
	db	$fe
	dw	$ffff & @melo3
; P2-8
	db	$61
	db	$01
	db	$11
	db	$65
	db	$81
	db	$01
	db	$31
	db	$85
; P2-9
	db	$d8,$c,$88
	db	$7f
; P2-10
	db	$5f
; P2-11
	db	$fd,0
	dw	$ffff & @loop
@melo3:
	db	$d3,$31
	db	$01
	db	$d4,$a1
	db	$d3,$35
	db	$51
	db	$01
	db	$d4,$c1
	db	$d3,$55
	db	$ff
;----------------------------------------
Music_TrainerVictory_Ch3:
;----------------------------------------
; P3-2
	db	$d8,$8,$4c
	db	$d4,$85
	db	$80
	db	$00
	db	$80
	db	$00
	db	$80
	db	$00
	db	$75
	db	$dc,$19
	db	$31
	db	$21
	db	$d5,$c1
; P3-3-6
@loop:
	db	$fe
	dw	$ffff & @base3
; P3-4
	db	$d4,$21
	db	$01
	db	$21
	db	$a1
	db	$71
	db	$21
	db	$d5,$a1
	db	$01
	db	$d4,$a0
	db	$00
	db	$dc,$4c
	db	$a5
	db	$fd,2
	dw	$ffff & @loop
; P3-7
	db	$fe
	dw	$ffff & @base3
; P3-8
	db	$d4,$11
	db	$01
	db	$11
	db	$a1
	db	$61
	db	$11
	db	$31
	db	$01
	db	$31
	db	$d3,$31
	db	$d4,$b1
	db	$81
; P3-9
	db	$31
	db	$71
	db	$a1
	db	$dc,$81
	db	$d3,$3b
	db	$dc,$19
	db	$d4,$a1
	db	$71
	db	$31
; P3-10
	db	$d5,$a1
	db	$d4,$31
	db	$51
	db	$dc,$81
	db	$ab
	db	$dc,$19
	db	$81
	db	$51
	db	$21
; P3-11
	db	$fd,0
	dw	$ffff & @loop
@base3:
	db	$dc,$19
	db	$d5,$a1
	db	$01
	db	$a1
	db	$d4,$71
	db	$31
	db	$d5,$a1
	db	$c1
	db	$01
	db	$c1
	db	$d4,$81
	db	$51
	db	$d5,$c1
	db	$ff
