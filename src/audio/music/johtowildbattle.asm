Music_JohtoWildBattle:
	db	040h
	dw	$ffff & Music_JohtoWildBattle_Ch1
	db	001h
	dw	$ffff & Music_JohtoWildBattle_Ch2
	db	002h
	dw	$ffff & Music_JohtoWildBattle_Ch3
;----------------------------------------
Music_JohtoWildBattle_Ch1:
;----------------------------------------
	db	$da,$00,$68
;	db	$e5,$77
	db	$db,$03
	db	$e6,$00,$02
	db	$e1,$12,$15
;	db	$ef,$0f
; P1-1
Floop1000:
	db	$d8,$c,$b2
	db	$d3,$10
	db	$d4,$c0
	db	$b0
	db	$a0
	db	$b0
	db	$a0
	db	$90
	db	$80
	db	$90
	db	$80
	db	$70
	db	$60
	db	$70
	db	$60
	db	$50
	db	$40
; P1-2
	db	$50
	db	$40
	db	$30
	db	$20
	db	$30
	db	$20
	db	$10
	db	$d5,$c0
	db	$d4,$10
	db	$d5,$c0
	db	$b0
	db	$a0
	db	$b0
	db	$c0
	db	$d4,$10
	db	$20
; P1-3
	db	$dc,$b2
	db	$85
	db	$d5,$b5
	db	$d4,$33
; P1-4
	db	$13
	db	$23
	db	$37
; P1-5
	db	$45
	db	$d5,$b5
	db	$d4,$43
; P1-6
	db	$13
	db	$33
	db	$dc,$b5
	db	$47
; P1-7
	db	$dc,$b2
	db	$d3,$35
	db	$d4,$b5
	db	$d3,$33
; P1-8
	db	$13
	db	$23
	db	$37
; P1-9
	db	$45
	db	$d4,$b5
	db	$d3,$43
; P1-10
	db	$13
	db	$33
	db	$dc,$6f
	db	$47
; P1-11
@mainloop:
	db	$dc,$b6
	db	$d4,$35
	db	$d5,$c5
	db	$c3
; P1-12
	db	$d4,$65
	db	$55
	db	$13
; P1-13
	db	$97
	db	$b0
	db	$a0
	db	$80
	db	$70
	db	$80
	db	$90
	db	$a0
	db	$b0
; P1-14
	db	$d3,$17
	db	$d4,$c0
	db	$b0
	db	$90
	db	$80
	db	$90
	db	$a0
	db	$b0
	db	$c0
; P1-15
	db	$35
	db	$d5,$c5
	db	$c3
; P1-16
	db	$d4,$65
	db	$55
	db	$33
; P1-17
	db	$57
	db	$37
; P1-18
	db	$17
	db	$67
; P1-19
	db	$45
	db	$15
	db	$13
; P1-20
	db	$75
	db	$65
	db	$23
; P1-21
	db	$a7
	db	$c0
	db	$b0
	db	$90
	db	$80
	db	$90
	db	$a0
	db	$b0
	db	$c0
; P1-22
	db	$d3,$27
	db	$10
	db	$d4,$c0
	db	$a0
	db	$90
	db	$a0
	db	$b0
	db	$c0
	db	$d3,$10
; P1-23
	db	$d4,$45
	db	$15
	db	$13
; P1-24
	db	$75
	db	$65
	db	$23
; P1-25
	db	$67
	db	$47
; P1-26
	db	$27
	db	$77
; P1-27
	db	$dc,$b7
	db	$55
	db	$35
	db	$53
; P1-28
	db	$65
	db	$55
	db	$13
; P1-29
	db	$67
	db	$17
; P1-30
	db	$55
	db	$35
	db	$63
; P1-31
	db	$8f
; P1-32
	db	$d3,$37
	db	$87
; P1-33
	db	$8f
; P1-34
	db	$3f
; P1-35
	db	$d4,$13
	db	$33
	db	$13
	db	$d5,$c3
; P1-36
	db	$d4,$1f
; P1-37
	db	$33
	db	$53
	db	$33
	db	$73
; P1-38
	db	$8f
	db	$fd,0
	dw	$ffff & @mainloop
;----------------------------------------
Music_JohtoWildBattle_Ch2:
;----------------------------------------
	db	$db,$03
	db	$e1,$8,$36
	db	$e6,$00,$01
; P2-1
	db	$fe
	dw	$ffff & Fsub21
; P2-3
	db	$d8,$c,$c2
	db	$d3,$85
Floop2000:
	db	$d4,$35
	db	$83
; P2-4
	db	$63
	db	$73
	db	$87
; P2-5
	db	$95
	db	$35
	db	$93
; P2-6
	db	$63
	db	$83
	db	$dc,$c7
	db	$97
; P2-7
	db	$dc,$c2
	db	$d3,$85
	db	$35
	db	$83
; P2-8
	db	$63
	db	$73
	db	$87
; P2-9
	db	$95
	db	$35
	db	$93
; P2-10
	db	$63
	db	$83
	db	$dc,$6f
	db	$97
; P2-11
@mainloop:
	db	$dc,$c4
	db	$d4,$85
	db	$35
	db	$31
	db	$81
; P2-12
	db	$d3,$11
	db	$d4,$c1
	db	$a1
	db	$81
	db	$61
	db	$81
	db	$a1
	db	$d3,$21
; P2-13
	db	$dc,$b0
	db	$4f
; P2-14
	db	$dc,$b7
	db	$4f
; P2-15
	db	$dc,$c4
	db	$d4,$85
	db	$35
	db	$31
	db	$81
; P2-16
	db	$d3,$13
	db	$d4,$c3
	db	$a3
	db	$c3
; P2-17
	db	$dc,$b0
	db	$af
; P2-18
	db	$dc,$b6
	db	$af
; P2-19
	db	$dc,$c4
	db	$95
	db	$45
	db	$41
	db	$91
; P2-20
	db	$d3,$21
	db	$11
	db	$d4,$b1
	db	$91
	db	$71
	db	$91
	db	$b1
	db	$d3,$31
; P2-21
	db	$dc,$b0
	db	$5f
; P2-22
	db	$dc,$b7
	db	$5f
; P2-23
	db	$dc,$c4
	db	$d4,$95
	db	$45
	db	$41
	db	$91
; P2-24
	db	$d3,$23
	db	$13
	db	$d4,$b3
	db	$93
; P2-25
	db	$dc,$b0
	db	$bf
; P2-26
	db	$dc,$b5
	db	$bf
; P2-27
	db	$dc,$c6
	db	$d3,$cb
	db	$81
	db	$c1
; P2-28
	db	$d2,$31
	db	$11
	db	$d3,$c1
	db	$a1
	db	$81
	db	$a1
	db	$c1
	db	$81
; P2-29
	db	$ab
	db	$d4,$61
	db	$a1
; P2-30
	db	$d3,$11
	db	$d4,$c1
	db	$a1
	db	$81
	db	$61
	db	$81
	db	$a1
	db	$d3,$11
; P2-31
	db	$dc,$c7
	db	$3f
; P2-32
	db	$87
	db	$d2,$17
; P2-33
	db	$d3,$cf
; P2-34
	db	$8f
; P2-35
	db	$d4,$53
	db	$73
	db	$53
	db	$33
; P2-36
	db	$5f
; P2-37
	db	$83
	db	$a3
	db	$83
	db	$b3
; P2-38
	db	$cf
	db	$fd,0
	dw	$ffff & @mainloop
Fsub21:
; P2-1
	db	$d8,$c,$c2
	db	$d3,$60
	db	$70
	db	$80
	db	$d2,$80
	db	$d3,$60
	db	$70
	db	$80
	db	$d2,$80
	db	$d3,$60
	db	$70
	db	$80
	db	$d2,$80
	db	$d3,$60
	db	$70
	db	$80
	db	$d2,$80
; P2-2
	db	$d3,$60
	db	$70
	db	$80
	db	$d2,$80
	db	$d3,$60
	db	$70
	db	$80
	db	$d2,$80
	db	$d3,$60
	db	$70
	db	$80
	db	$d2,$80
	db	$d3,$60
	db	$70
	db	$80
	db	$d2,$80
	db	$ff
;----------------------------------------
Music_JohtoWildBattle_Ch3:
;----------------------------------------
; P3-1
	db	$d8,$c,$19
;	db	$ef,$f0
Floop3000:
	db	$d3,$81
	db	$d2,$31
	db	$d3,$81
	db	$d2,$21
	db	$d3,$71
	db	$d2,$11
	db	$d3,$71
	db	$c1
; P3-2
	db	$61
	db	$b1
	db	$61
	db	$a1
	db	$61
	db	$31
	db	$81
	db	$61
; P3-3
	db	$31
	db	$81
	db	$31
	db	$81
	db	$31
	db	$81
	db	$31
	db	$81
; P3-4
	db	$31
	db	$81
	db	$31
	db	$81
	db	$31
	db	$51
	db	$61
	db	$81
; P3-5
	db	$fe
	dw	$ffff & @sub1
; P3-6
	db	$41
	db	$91
	db	$41
	db	$91
	db	$41
	db	$41
	db	$81
	db	$61
; P3-7
@loop1:
	db	$31
	db	$81
	db	$fd,6
	dw	$ffff & @loop1
; P3-8
	db	$31
	db	$51
	db	$61
	db	$81
; P3-9
	db	$fe
	dw	$ffff & @sub1
; P3-10
	db	$61
	db	$61
	db	$81
	db	$81
	db	$91
	db	$81
	db	$61
	db	$41
; P3-11
@mainloop:
	db	$31
	db	$81
	db	$fd,7
	dw	$ffff & @mainloop
; P3-12
	db	$dc,$33
	db	$73
; P3-13
	db	$fe
	dw	$ffff & @sub1
; P3-14
	db	$fe
	dw	$ffff & @sub1
; P3-15
@loop2:
	db	$31
	db	$81
	db	$fd,7
	dw	$ffff & @loop2
; P3-16
	db	$31
	db	$a1
; P3-17
@loop3:
	db	$11
	db	$61
	db	$fd,5
	dw	$ffff & @loop3
; P3-18
	db	$51
	db	$31
	db	$11
	db	$31
	db	$51
	db	$61
; P3-19
	db	$fe
	dw	$ffff & @sub1
; P3-20
	db	$41
	db	$91
	db	$41
	db	$91
	db	$41
	db	$91
	db	$dc,$33
	db	$83
; P3-21
@loop4:
	db	$dc,$19
	db	$51
	db	$a1
	db	$fd,8
	dw	$ffff & @loop4
; P3-23
	db	$fe
	dw	$ffff & @sub1
; P3-24
	db	$41
	db	$91
	db	$41
	db	$91
	db	$41
	db	$91
	db	$41
	db	$b1
; P3-25
	db	$21
	db	$71
	db	$21
	db	$71
	db	$21
	db	$71
	db	$21
	db	$71
; P3-26
	db	$21
	db	$71
	db	$61
	db	$71
	db	$91
	db	$71
	db	$61
	db	$41
; P3-27
@loop5:
	db	$31
	db	$81
	db	$fd,8
	dw	$ffff & @loop5
; P3-29
@loop6:
	db	$11
	db	$61
	db	$fd,7
	dw	$ffff & @loop6
; P3-30
	db	$51
	db	$11
; P3-31
	db	$dc,$33
	db	$33
	db	$83
	db	$33
	db	$83
; P3-32
@loop7:
	db	$dc,$19
	db	$31
	db	$81
	db	$fd,12
	dw	$ffff & @loop7
; P3-35
@loop8:
	db	$11
	db	$51
	db	$fd,7
	dw	$ffff & @loop8
; P3-36
	db	$61
	db	$71
; P3-37
@loop9:
	db	$31
	db	$81
	db	$fd,6
	dw	$ffff & @loop9
; P3-38
	db	$a1
	db	$81
	db	$71
	db	$51
	db	$fd,0
	dw	$ffff & @mainloop
@sub1:
	db	$dc,$19
@sub1loop1:
	db	$41
	db	$91
	db	$fd,4
	dw	$ffff & @sub1loop1
	db	$ff
Music_JohtoWildBattleNight:
	db	040h
	dw	$ffff & Music_JohtoWildBattle_Ch1_2
	db	001h
	dw	$ffff & Music_JohtoWildBattle_Ch2_2
	db	002h
	dw	$ffff & Music_JohtoWildBattle_Ch3
;----------------------------------------
Music_JohtoWildBattle_Ch1_2:
;----------------------------------------
	db	$da,$00,$6b
;	db	$e5,$77
	db	$db,$03
	db	$e6,$00,$02
	db	$e1,$10,$25
;	db	$ef,$f0
	db	$fd,0
	dw	$ffff & Floop1000
;----------------------------------------
Music_JohtoWildBattle_Ch2_2:
;----------------------------------------
	db	$db,$03
	db	$e1,$20,$36
	db	$e6,$00,$01
; P2-1
	db	$fe
	dw	$ffff & Fsub21
; P2-3
	db	$d8,$c,$c2
	db	$d3,$85
	db	$e6,$00,$01
	db	$db,$02
	db	$fd,0
	dw	$ffff & Floop2000



