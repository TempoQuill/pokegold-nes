Music_GameCorner:
	db	080h
	dw	$ffff & Music_GameCorner_Ch1
	db	001h
	dw	$ffff & Music_GameCorner_Ch2
	db	002h
	dw	$ffff & Music_GameCorner_Ch3
	db	003h
	dw	$ffff & Music_GameCorner_Ch4
	db	004h
	dw	$ffff & Music_GameCorner_Ch5
;----------------------------------------
Music_GameCorner_Ch1:
;----------------------------------------
	db	$da,$00,$93
; P1-1
	db	$d8,$c,$91
	db	$07
; P1-2
@mainloop:
	db	$dc,$91
	db	$0f
; P1-3
	db	$0f
; P1-4
	db	$0f
; P1-5
	db	$0f
; P1-6
	db	$fe
	dw	$ffff & @sub1
; P1-8
	db	$fe
	dw	$ffff & @sub1
; P1-10
	db	$fe
	dw	$ffff & @sub1
; P1-12
	db	$fe
	dw	$ffff & @sub2
; P1-13
	db	$0f
; P1-14
	db	$0f
; P1-15
	db	$0f
; P1-16
	db	$0f
; P1-17
	db	$0f
; P1-18
	db	$fe
	dw	$ffff & @sub1
; P1-20
	db	$fe
	dw	$ffff & @sub1
; P1-22
	db	$fe
	dw	$ffff & @sub1
; P1-24
	db	$fe
	dw	$ffff & @sub2
; P1-25
	db	$d4,$01
	db	$92
	db	$92
	db	$b1
	db	$b1
	db	$91
	db	$81
	db	$dc,$71
; P1-26
@loop1:
	db	$d3,$90
	db	$d2,$10
	db	$60
	db	$10
	db	$fd,4
	dw	$ffff & @loop1
; P1-27
@loop2:
	db	$d3,$b0
	db	$d2,$30
	db	$80
	db	$30
	db	$fd,4
	dw	$ffff & @loop2
; P1-28
@loop3:
	db	$d3,$40
	db	$80
	db	$d2,$10
	db	$d3,$80
	db	$fd,4
	dw	$ffff & @loop3
; P1-29
@loop4:
	db	$d3,$60
	db	$a0
	db	$d2,$10
	db	$d3,$a0
	db	$fd,4
	dw	$ffff & @loop4
; P1-30
@loop5:
	db	$d3,$90
	db	$d2,$10
	db	$60
	db	$10
	db	$fd,4
	dw	$ffff & @loop5
; P1-31
@loop6:
	db	$d3,$b0
	db	$d2,$30
	db	$80
	db	$30
	db	$fd,4
	dw	$ffff & @loop6
; P1-32
@loop7:
	db	$d3,$c0
	db	$d2,$30
	db	$80
	db	$30
	db	$fd,4
	dw	$ffff & @loop7
; P1-33
	db	$d4,$30
	db	$30
	db	$32
	db	$61
	db	$68
; P1-34
	db	$fd,0
	dw	$ffff & @mainloop
@sub1:
	db	$01
	db	$d3,$b2
	db	$82
	db	$42
	db	$d4,$62
	db	$61
; P1-7
	db	$01
	db	$92
	db	$92
	db	$b1
	db	$b1
	db	$90
	db	$b2
	db	$ff
@sub2:
	db	$01
	db	$d3,$b2
	db	$82
	db	$42
	db	$d4,$62
	db	$61
	db	$ff
;----------------------------------------
Music_GameCorner_Ch2:
;----------------------------------------
; P2-1
	db	$e1,$08,$24
	db	$d8,$c,$a1
	db	$07
; P2-2
@mainloop:
	db	$dc,$92
	db	$db,$01
	db	$fe
	dw	$ffff & @sub1
; P2-13
	db	$d6,$61
	db	$d4,$91
	db	$d6,$60
	db	$d4,$91
	db	$dc,$a4
	db	$92
	db	$dc,$92
	db	$81
	db	$b0
	db	$d3,$12
; P2-14
	db	$fe
	dw	$ffff & @sub1
; P2-25
	db	$d3,$61
	db	$41
	db	$60
	db	$41
	db	$dc,$a4
	db	$82
	db	$63
	db	$db,$02
	db	$dc,$c7
	db	$d4,$40
	db	$60
; P2-26
	db	$85
	db	$65
	db	$13
; P2-27
	db	$35
	db	$45
	db	$63
; P2-28
	db	$35
	db	$15
	db	$d5,$b3
; P2-29
	db	$a3
	db	$09
	db	$d4,$40
	db	$60
; P2-30
	db	$85
	db	$65
	db	$13
; P2-31
	db	$35
	db	$45
	db	$61
	db	$40
	db	$60
; P2-32
	db	$8f
; P2-33
	db	$dc,$92
	db	$80
	db	$80
	db	$82
	db	$b1
	db	$b8
	db	$dc,$a4
; P2-34
	db	$fd,0
	dw	$ffff & @mainloop
@sub1:
	db	$d6,$11
	db	$d4,$42
	db	$42
	db	$42
	db	$62
	db	$61
; P2-3
	db	$d6,$11
	db	$d4,$42
	db	$42
	db	$61
	db	$61
	db	$40
	db	$62
; P2-4
	db	$d6,$11
	db	$d4,$42
	db	$42
	db	$42
	db	$62
	db	$61
; P2-5
	db	$d6,$11
	db	$d4,$42
	db	$42
	db	$61
	db	$11
	db	$40
	db	$62
; P2-6
	db	$d6,$11
	db	$d2,$32
	db	$d3,$b2
	db	$81
	db	$11
	db	$31
	db	$41
; P2-7
	db	$61
	db	$41
	db	$60
	db	$41
	db	$dc,$a4
	db	$62
	db	$83
	db	$dc,$92
	db	$70
	db	$60
; P2-8
	db	$d6,$11
	db	$d2,$32
	db	$d3,$b2
	db	$81
	db	$11
	db	$31
	db	$41
; P2-9
	db	$d6,$60
	db	$d3,$60
	db	$41
	db	$80
	db	$41
	db	$dc,$a4
	db	$b2
	db	$a1
	db	$dc,$92
	db	$b0
	db	$d2,$12
; P2-10
	db	$d6,$11
	db	$d2,$32
	db	$d3,$b2
	db	$81
	db	$11
	db	$31
	db	$41
; P2-11
	db	$61
	db	$41
	db	$60
	db	$41
	db	$dc,$a4
	db	$62
	db	$83
	db	$dc,$92
	db	$70
	db	$60
; P2-12
	db	$d6,$11
	db	$d2,$32
	db	$d3,$b2
	db	$81
	db	$11
	db	$31
	db	$41
	db	$ff
;----------------------------------------
Music_GameCorner_Ch3:
;----------------------------------------
; P3-1
	db	$e1,$08,$22
	db	$d8,$c,$17
	db	$07
; P3-2
@mainloop:
	db	$d8,$c,$17
	db	$fe
	dw	$ffff & @sub1
	db	$fe
	dw	$ffff & @sub2
	db	$d3,$80
	db	$dc,$46
	db	$a2
; P3-4
	db	$fe
	dw	$ffff & @sub1
	db	$fe
	dw	$ffff & @sub2
	db	$d3,$b0
	db	$dc,$46
	db	$d2,$12
; P3-6
	db	$fe
	dw	$ffff & @sub1
; P3-7
	db	$fe
	dw	$ffff & @sub3
; P3-8
	db	$fe
	dw	$ffff & @sub1
; P3-9
	db	$fe
	dw	$ffff & @sub4
; P3-10
	db	$fe
	dw	$ffff & @sub1
; P3-11
	db	$fe
	dw	$ffff & @sub3
; P3-12
	db	$fe
	dw	$ffff & @sub1
; P3-13
	db	$d5,$60
	db	$d4,$60
	db	$d2,$10
	db	$d3,$60
	db	$d5,$60
	db	$d2,$10
	db	$d4,$60
	db	$dc,$46
	db	$d2,$42
	db	$dc,$17
	db	$30
	db	$00
	db	$40
	db	$60
	db	$01
; P3-14
	db	$fe
	dw	$ffff & @sub1
	db	$fe
	dw	$ffff & @sub2
	db	$d3,$80
	db	$dc,$46
	db	$a2
; P3-16
	db	$fe
	dw	$ffff & @sub1
	db	$fe
	dw	$ffff & @sub2
	db	$d3,$b0
	db	$dc,$46
	db	$d2,$12
; P3-18
	db	$fe
	dw	$ffff & @sub1
; P3-19
	db	$fe
	dw	$ffff & @sub3
; P3-20
	db	$fe
	dw	$ffff & @sub1
; P3-21
	db	$fe
	dw	$ffff & @sub4
; P3-22
	db	$fe
	dw	$ffff & @sub1
; P3-23
	db	$fe
	dw	$ffff & @sub3
; P3-24
	db	$fe
	dw	$ffff & @sub1
; P3-25
	db	$d5,$60
	db	$d4,$60
	db	$d2,$10
	db	$d3,$60
	db	$d4,$60
	db	$d2,$10
	db	$d3,$60
	db	$d4,$60
	db	$d2,$40
	db	$00
	db	$30
	db	$00
	db	$10
	db	$00
	db	$d3,$b0
	db	$00
; P3-26
	db	$fe
	dw	$ffff & @sub5
; P3-28
	db	$dc,$2f
	db	$d5,$11
	db	$00
	db	$dc,$17
	db	$10
	db	$d4,$10
	db	$d5,$10
	db	$00
	db	$10
	db	$10
	db	$d4,$10
	db	$dc,$2f
	db	$d5,$11
	db	$dc,$17
	db	$d4,$10
	db	$d5,$10
	db	$00
	db	$d4,$10
; P3-29
	db	$dc,$2f
	db	$d5,$61
	db	$00
	db	$dc,$17
	db	$60
	db	$d4,$60
	db	$d5,$60
	db	$00
	db	$60
	db	$60
	db	$d4,$60
	db	$dc,$2f
	db	$d5,$61
	db	$dc,$17
	db	$d4,$60
	db	$d5,$60
	db	$00
	db	$d4,$60
; P3-30
	db	$fe
	dw	$ffff & @sub5
; P3-32
	db	$dc,$2f
	db	$d5,$81
	db	$00
	db	$dc,$17
	db	$80
	db	$d4,$80
	db	$d5,$80
	db	$00
	db	$80
	db	$80
	db	$d4,$80
	db	$dc,$2f
	db	$d5,$81
	db	$dc,$17
	db	$d4,$80
	db	$d5,$80
	db	$00
	db	$d4,$80
; P3-33
	db	$d5,$c0
	db	$c0
	db	$c0
	db	$01
	db	$c0
	db	$00
	db	$c0
	db	$03
	db	$d8,$6,$0b
	db	$d4,$30
	db	$10
	db	$d5,$c0
	db	$a0
	db	$80
	db	$60
	db	$50
	db	$30
; P3-34
	db	$fd,0
	dw	$ffff & @mainloop
@sub1:
	db	$dc,$17
	db	$d5,$10
	db	$d4,$10
	db	$d3,$80
	db	$10
	db	$d4,$10
	db	$d3,$80
	db	$10
	db	$d4,$10
	db	$d3,$80
	db	$10
	db	$d4,$10
	db	$d3,$a0
	db	$10
	db	$d4,$10
	db	$dc,$2f
	db	$d3,$a1
	db	$ff
@sub2:
; P3-3
	db	$dc,$17
	db	$d5,$10
	db	$d4,$10
	db	$d3,$80
	db	$10
	db	$d4,$10
	db	$d3,$80
	db	$10
	db	$d4,$10
	db	$d3,$b0
	db	$00
	db	$a0
	db	$00
	db	$ff
@sub3:
	db	$dc,$17
	db	$d5,$60
	db	$d4,$60
	db	$d2,$10
	db	$d3,$60
	db	$d4,$60
	db	$d2,$10
	db	$d3,$60
	db	$d4,$60
	db	$d2,$40
	db	$00
	db	$30
	db	$00
	db	$10
	db	$dc,$46
	db	$32
	db	$ff
@sub4:
	db	$dc,$17
	db	$d5,$60
	db	$d4,$60
	db	$d2,$10
	db	$d3,$60
	db	$d4,$60
	db	$d2,$10
	db	$d3,$60
	db	$d4,$60
	db	$d2,$40
	db	$00
	db	$30
	db	$00
	db	$10
	db	$30
	db	$d4,$60
	db	$00
	db	$ff
@sub5:
	db	$dc,$2f
	db	$d5,$61
	db	$00
	db	$dc,$17
	db	$60
	db	$d4,$60
	db	$d5,$60
	db	$00
	db	$60
	db	$60
	db	$d4,$60
	db	$dc,$2f
	db	$d5,$61
	db	$dc,$17
	db	$d4,$60
	db	$d5,$60
	db	$00
	db	$d4,$60
; P3-27
	db	$dc,$2f
	db	$d5,$81
	db	$00
	db	$dc,$17
	db	$80
	db	$d4,$80
	db	$d5,$80
	db	$00
	db	$80
	db	$80
	db	$d4,$80
	db	$d5,$60
	db	$d4,$60
	db	$d5,$40
	db	$d4,$40
	db	$d5,$30
	db	$d4,$30
	db	$ff
;----------------------------------------
Music_GameCorner_Ch4:
;----------------------------------------
	db	$e3,$003
;----------------------------------------
Music_GameCorner_Ch5:
;----------------------------------------
; P4-1
	db	$d8,$c
	db	$d8,$8
	db	$30
	db	$30
	db	$30
	db	$d8,$c
	db	$30
	db	$30
	db	$31
	db	$30
	db	$30
; P4-2
@mainloop:
	db	$fe
	dw	$ffff & @sub1
; P4-3
@loop1:
	db	$b1
	db	$71
	db	$31
	db	$71
	db	$b1
	db	$71
	db	$31
	db	$71
	db	$fd,6
	dw	$ffff & @loop1
; P4-4
; P4-5
; P4-6
; P4-7
; P4-8
; P4-9
	db	$fe
	dw	$ffff & @sub2
; P4-10
@loop2:
	db	$b1
	db	$71
	db	$31
	db	$71
	db	$b1
	db	$71
	db	$31
	db	$71
	db	$fd,3
	dw	$ffff & @loop2
; P4-11
; P4-12
; P4-13
	db	$0b
	db	$30
	db	$30
	db	$71
; P4-14
	db	$fe
	dw	$ffff & @sub1
; P4-15
@loop3:
	db	$b1
	db	$71
	db	$31
	db	$71
	db	$b1
	db	$71
	db	$31
	db	$71
	db	$fd,6
	dw	$ffff & @loop3
; P4-16
; P4-17
; P4-18
; P4-19
; P4-20
; P4-21
	db	$fe
	dw	$ffff & @sub2
; P4-22
@loop4:
	db	$b1
	db	$71
	db	$31
	db	$71
	db	$b1
	db	$71
	db	$31
	db	$71
	db	$fd,3
	dw	$ffff & @loop4
; P4-23
; P4-24
; P4-25
	db	$b1
	db	$71
	db	$31
	db	$71
	db	$41
	db	$71
	db	$30
	db	$30
	db	$30
	db	$30
; P4-26
@loop5:
	db	$b1
	db	$70
	db	$40
	db	$30
	db	$40
	db	$70
	db	$40
	db	$40
	db	$30
	db	$70
	db	$40
	db	$31
	db	$71
	db	$fd,3
	dw	$ffff & @loop5
; P4-27
; P4-28
; P4-29
	db	$b1
	db	$70
	db	$40
	db	$30
	db	$40
	db	$70
	db	$40
	db	$40
	db	$30
	db	$70
	db	$40
	db	$31
	db	$30
	db	$30
; P4-30
@loop6:
	db	$b1
	db	$70
	db	$40
	db	$30
	db	$40
	db	$70
	db	$40
	db	$40
	db	$30
	db	$70
	db	$40
	db	$31
	db	$71
	db	$fd,3
	dw	$ffff & @loop6
; P4-31
; P4-32
; P4-33
	db	$30
	db	$30
	db	$31
	db	$b0
	db	$71
	db	$74
	db	$30
	db	$30
	db	$41
	db	$fd,0
	dw	$ffff & @mainloop
@sub1:
	db	$11
	db	$71
	db	$31
	db	$71
	db	$b1
	db	$71
	db	$31
	db	$71
	db	$ff
@sub2:
	db	$b1
	db	$71
	db	$31
	db	$71
	db	$b1
	db	$71
	db	$30
	db	$30
	db	$71
	db	$ff
;:

