Music_Gym:
	db	080h
	dw	$ffff & Music_Gym_Ch1
	db	001h
	dw	$ffff & Music_Gym_Ch2
	db	002h
	dw	$ffff & Music_Gym_Ch3
	db	003h
	dw	$ffff & Music_Gym_Ch4
	db	004h
	dw	$ffff & Music_Gym_Ch5
;----------------------------------------
Music_Gym_Ch1:
;----------------------------------------
	db	$da,$00,$9c
; P1-1
	db	$e1,$12,$24
	db	$db,$01
	db	$d8,$c,$b7
@mainloop:
; P1-2
	db	$d3,$71
	db	$d5,$a0
	db	$a0
	db	$a0
	db	$02
	db	$d3,$51
	db	$d5,$80
	db	$80
	db	$80
	db	$02
; P1-3
	db	$d3,$31
	db	$d5,$30
	db	$30
	db	$30
	db	$00
	db	$d4,$30
	db	$30
	db	$c0
	db	$80
	db	$30
	db	$c0
	db	$d3,$20
	db	$d4,$a0
	db	$50
	db	$d3,$50
; P1-4
	db	$d4,$ab
	db	$71
	db	$a1
; P1-5
	db	$80
	db	$01
	db	$50
	db	$51
	db	$11
	db	$d3,$11
	db	$d4,$c1
	db	$a1
	db	$81
; P1-6
	db	$77
	db	$a3
	db	$71
	db	$a1
; P1-7
	db	$50
	db	$00
	db	$50
	db	$70
	db	$83
	db	$d3,$11
	db	$d4,$c1
	db	$a1
	db	$d3,$11
; P1-8
	db	$35
	db	$d4,$a1
	db	$71
	db	$51
	db	$81
	db	$a1
; P1-9
	db	$c0
	db	$01
	db	$80
	db	$83
	db	$d3,$50
	db	$01
	db	$10
	db	$11
	db	$d4,$c0
	db	$b0
; P1-10
	db	$ab
	db	$71
	db	$a1
; P1-11
	db	$d3,$11
	db	$d4,$80
	db	$d3,$10
	db	$51
	db	$11
	db	$51
	db	$10
	db	$50
	db	$83
; P1-12
	db	$35
	db	$d4,$a0
	db	$02
	db	$a0
	db	$00
	db	$a0
	db	$d3,$72
; P1-13
	db	$83
	db	$73
	db	$53
	db	$13
; P1-14
	db	$30
	db	$00
	db	$30
	db	$50
	db	$01
	db	$d4,$c3
	db	$71
	db	$31
	db	$71
; P1-15
	db	$b0
	db	$a0
	db	$80
	db	$60
	db	$d3,$33
	db	$10
	db	$d4,$b0
	db	$a0
	db	$80
	db	$d3,$53
; P1-16
	db	$75
	db	$d4,$a0
	db	$02
	db	$a0
	db	$00
	db	$a0
	db	$d3,$72
; P1-17
	db	$a3
	db	$83
	db	$73
	db	$53
; P1-18
	db	$30
	db	$d4,$c0
	db	$70
	db	$d3,$50
	db	$73
	db	$50
	db	$10
	db	$d4,$80
	db	$d3,$70
	db	$83
; P1-19
	db	$a0
	db	$80
	db	$70
	db	$50
	db	$a3
	db	$d2,$33
	db	$d3,$a0
	db	$80
	db	$70
	db	$50
; P1-20
	db	$fd,0
	dw	$ffff & @mainloop
;----------------------------------------
Music_Gym_Ch2:
;----------------------------------------
; P2-1
	db	$db,$01
@mainloop:
; P2-2
	db	$d8,$c,$c3
	db	$d5,$31
	db	$d6,$30
	db	$30
	db	$31
	db	$a0
	db	$d5,$70
	db	$11
	db	$d6,$10
	db	$10
	db	$11
	db	$d5,$80
	db	$50
; P2-3
	db	$d6,$81
	db	$d6,$80
	db	$80
	db	$81
	db	$d6,$80
	db	$80
	db	$a3
	db	$d5,$a1
	db	$d4,$10
	db	$20
; P2-4
	db	$fe
	dw	$ffff & @sub1
	db	$d4,$51
	db	$10
	db	$20
; P2-8
	db	$fe
	dw	$ffff & @sub1
	db	$d4,$10
	db	$50
	db	$80
	db	$d3,$10
; P2-12
	db	$dc,$d2
	db	$fe
	dw	$ffff & @sub2
	db	$d6,$70
	db	$c0
	db	$71
	db	$d5,$71
	db	$d6,$c1
; P2-15
	db	$b3
	db	$b1
	db	$60
	db	$60
	db	$80
	db	$d5,$10
	db	$d6,$81
	db	$d5,$81
	db	$51
; P2-16
	db	$fe
	dw	$ffff & @sub2
	db	$d6,$80
	db	$d5,$10
	db	$d6,$81
	db	$d5,$51
	db	$11
; P2-19
	db	$33
	db	$31
	db	$d6,$a0
	db	$a0
	db	$a0
	db	$d5,$30
	db	$d6,$a1
	db	$d5,$71
	db	$31
; P2-20
	db	$fd,0
	dw	$ffff & @mainloop
@sub1:
	db	$d4,$32
	db	$d5,$32
	db	$31
	db	$30
	db	$30
	db	$31
	db	$d4,$31
	db	$d5,$a1
; P2-5
	db	$d4,$12
	db	$d5,$12
	db	$11
	db	$10
	db	$10
	db	$11
	db	$d4,$51
	db	$10
	db	$20
; P2-6
	db	$32
	db	$d5,$32
	db	$31
	db	$30
	db	$30
	db	$31
	db	$d4,$31
	db	$d5,$a1
; P2-7
	db	$d4,$12
	db	$d5,$12
	db	$11
	db	$10
	db	$10
	db	$11
	db	$ff
@sub2:
	db	$d5,$33
	db	$31
	db	$d6,$a0
	db	$a0
	db	$a0
	db	$d5,$30
	db	$d6,$a1
	db	$d5,$a1
	db	$31
; P2-13
	db	$13
	db	$11
	db	$d6,$80
	db	$80
	db	$80
	db	$d5,$10
	db	$d6,$81
	db	$d5,$81
	db	$11
; P2-14
	db	$d6,$c1
	db	$01
	db	$c1
	db	$70
	db	$70
	db	$ff
;----------------------------------------
Music_Gym_Ch3:
;----------------------------------------
; P3-1
	db	$e1,$14,$23
@mainloop:
	db	$d8,$c,$32
; P3-2
	db	$d1,$31
	db	$dc,$19
	db	$d3,$30
	db	$30
	db	$30
	db	$00
	db	$d2,$a0
	db	$d1,$30
	db	$dc,$32
	db	$11
	db	$dc,$19
	db	$d3,$10
	db	$10
	db	$10
	db	$00
	db	$d2,$a0
	db	$d1,$10
; P3-3
	db	$dc,$32
	db	$d2,$c1
	db	$dc,$19
	db	$d4,$80
	db	$80
	db	$80
	db	$00
	db	$d2,$c0
	db	$c0
	db	$dc,$65
	db	$c3
	db	$d1,$23
; P3-4
	db	$dc,$81
	db	$d2,$3b
	db	$d3,$a1
	db	$d2,$31
; P3-5
	db	$dc,$19
	db	$50
	db	$01
	db	$10
	db	$dc,$65
	db	$13
	db	$83
	db	$53
; P3-6
	db	$dc,$81
	db	$3b
	db	$d3,$a1
	db	$d2,$31
; P3-7
	db	$dc,$19
	db	$10
	db	$00
	db	$10
	db	$30
	db	$dc,$81
	db	$57
	db	$03
; P3-8
	db	$7b
	db	$51
	db	$71
; P3-9
	db	$dc,$19
	db	$80
	db	$01
	db	$50
	db	$dc,$65
	db	$53
	db	$dc,$19
	db	$d1,$10
	db	$01
	db	$d2,$80
	db	$dc,$65
	db	$83
; P3-10
	db	$dc,$81
	db	$7b
	db	$51
	db	$71
; P3-11
	db	$81
	db	$50
	db	$80
	db	$d1,$17
	db	$d2,$c3
; P3-12
	db	$fe
	dw	$ffff & @sub1
	db	$dc,$32
	db	$01
	db	$a1
	db	$d1,$31
	db	$d2,$a1
; P3-15
	db	$dc,$65
	db	$d1,$13
	db	$d2,$b3
	db	$a3
	db	$83
; P3-16
	db	$fe
	dw	$ffff & @sub1
	db	$dc,$19
	db	$a0
	db	$00
	db	$a0
	db	$c0
	db	$dc,$65
	db	$d1,$13
; P3-19
	db	$dc,$19
	db	$30
	db	$00
	db	$30
	db	$50
	db	$dc,$81
	db	$77
	db	$53
; P3-20
	db	$fd,0
	dw	$ffff & @mainloop
@sub1:
	db	$dc,$81
	db	$d2,$a5
	db	$d1,$35
	db	$d2,$a3
; P3-13
	db	$dc,$65
	db	$d1,$13
	db	$d2,$c3
	db	$a3
	db	$83
; P3-14
	db	$dc,$19
	db	$70
	db	$00
	db	$70
	db	$80
	db	$dc,$65
	db	$a3
	db	$ff
;----------------------------------------
Music_Gym_Ch4:
;----------------------------------------
	db	$e3,$004
;----------------------------------------
Music_Gym_Ch5:
;----------------------------------------
; P4-1
@mainloop:
	db	$d8,$c
; P4-2
	db	$31
	db	$20
	db	$20
	db	$c3
	db	$31
	db	$20
	db	$20
	db	$c3
; P4-3
	db	$31
	db	$20
	db	$20
	db	$31
	db	$20
	db	$20
	db	$b0
	db	$40
	db	$40
	db	$40
	db	$20
	db	$20
	db	$30
	db	$30
; P4-4
	db	$d8,$6
@loop1:
	db	$35
	db	$35
	db	$33
	db	$31
	db	$31
	db	$33
	db	$20
	db	$20
	db	$20
	db	$20
	db	$20
	db	$20
	db	$20
	db	$20
; P4-5
	db	$35
	db	$35
	db	$33
	db	$31
	db	$31
	db	$33
	db	$c7
	db	$fd,4
	dw	$ffff & @loop1
; P4-6
; P4-8
; P4-10
; P4-12
@loop2:
	db	$43
	db	$73
	db	$33
	db	$41
	db	$31
	db	$41
	db	$31
	db	$43
	db	$33
	db	$73
	db	$fd,8
	dw	$ffff & @loop2
; P4-13
; P4-14
; P4-15
; P4-16
; P4-17
; P4-18
; P4-19
	db	$fd,0
	dw	$ffff & @mainloop


