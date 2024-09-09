Music_MagnetTrain:
	db	080h
	dw	$ffff & Music_MagnetTrain_Ch1
	db	001h
	dw	$ffff & Music_MagnetTrain_Ch2
	db	002h
	dw	$ffff & Music_MagnetTrain_Ch3
	db	003h
	dw	$ffff & Music_MagnetTrain_Ch4
	db	004h
	dw	$ffff & Music_MagnetTrain_Ch5
;----------------------------------------
Music_MagnetTrain_Ch1:
;----------------------------------------
	db	$da,$00,$6e
; P1-1
	db	$e1,$14,$23
	db	$db,$02
	db	$d8,$c,$b2
; P1-4
	db	$0f
; P1-5
	db	$0f
	db	$dc,$b7
; P1-6
	db	$d3,$30
	db	$10
	db	$d4,$80
	db	$d3,$10
	db	$30
	db	$10
	db	$d4,$80
	db	$d3,$10
	db	$30
	db	$10
	db	$d4,$80
	db	$d3,$10
	db	$30
	db	$10
	db	$d4,$80
	db	$d3,$10
; P1-7
	db	$50
	db	$10
	db	$d4,$a0
	db	$d3,$10
	db	$50
	db	$10
	db	$d4,$a0
	db	$d3,$10
	db	$50
	db	$10
	db	$d4,$a0
	db	$d3,$10
	db	$50
	db	$10
	db	$d8,$6,$b7
	db	$70
	db	$00
	db	$70
	db	$00
; P1-8
	db	$d8,$c,$b7
	db	$3f
; P1-9
	db	$ff
;----------------------------------------
Music_MagnetTrain_Ch2:
;----------------------------------------
; P2-1
	db	$e1,$14,$23
	db	$db,$01
	db	$d8,$c,$d2
; P2-4
	db	$d8,$c,$d8
	db	$d6,$6b
	db	$01
	db	$d8,$6,$d7
	db	$60
	db	$00
	db	$60
	db	$00
; P2-5
	db	$d5,$63
	db	$03
	db	$63
	db	$03
	db	$63
	db	$03
	db	$63
	db	$03
; P2-6
	db	$db,$03
	db	$d8,$c,$d7
	db	$d3,$8f
; P2-7
	db	$ac
	db	$00
	db	$d8,$6,$d7
	db	$a0
	db	$00
	db	$a0
	db	$00
; P2-8
	db	$d8,$c,$d7
	db	$af
; P2-9
	db	$ff
;----------------------------------------
Music_MagnetTrain_Ch3:
;----------------------------------------
; P3-1
	db	$e1,$10,$23
	db	$d8,$c,$12
; P3-4
	db	$d1,$10
	db	$d2,$80
	db	$40
	db	$10
	db	$80
	db	$40
	db	$10
	db	$d3,$80
	db	$d2,$40
	db	$10
	db	$d3,$80
	db	$40
	db	$d2,$10
	db	$d3,$80
	db	$40
	db	$10
; P3-5
	db	$80
	db	$40
	db	$10
	db	$d4,$80
	db	$d3,$10
	db	$40
	db	$80
	db	$10
	db	$40
	db	$80
	db	$d2,$10
	db	$d3,$80
	db	$d2,$10
	db	$40
	db	$80
	db	$10
; P3-6
	db	$d5,$30
	db	$d4,$30
	db	$d5,$30
	db	$d4,$30
	db	$d5,$30
	db	$d4,$30
	db	$d5,$30
	db	$d4,$30
	db	$d5,$30
	db	$d4,$30
	db	$d5,$30
	db	$d4,$30
	db	$d5,$30
	db	$d4,$30
	db	$d5,$30
	db	$d4,$30
; P3-7
	db	$d5,$30
	db	$d4,$30
	db	$d5,$30
	db	$d4,$30
	db	$d5,$30
	db	$d4,$30
	db	$d5,$30
	db	$d4,$30
	db	$d5,$30
	db	$d4,$30
	db	$d5,$30
	db	$d4,$30
	db	$d5,$30
	db	$d4,$30
	db	$d5,$30
	db	$d4,$30
; P3-8
	db	$dc,$81
	db	$d5,$3f
; P3-9
	db	$ff
;----------------------------------------
Music_MagnetTrain_Ch4:
;----------------------------------------
	db	$e3,$003
;----------------------------------------
Music_MagnetTrain_Ch5:
;----------------------------------------
; P4-1
	db	$d8,$c
; P4-4
	db	$cb
	db	$31
	db	$b0
	db	$b0
; P4-5
	db	$d8,$6
	db	$43
	db	$73
	db	$43
	db	$73
	db	$b3
	db	$73
	db	$b3
	db	$31
	db	$31
; P4-6
	db	$fe
	dw	$ffff & @sub2
; P4-7
	db	$fe
	dw	$ffff & @sub2
; P4-8
	db	$d8,$c
	db	$cf
; P4-9
	db	$ff
@sub1:
	db	$90
	db	$80
	db	$80
	db	$90
	db	$80
	db	$80
	db	$90
	db	$80
	db	$80
	db	$90
	db	$80
	db	$80
	db	$ff
@sub2:
	db	$91
	db	$81
	db	$81
	db	$81
	db	$91
	db	$81
	db	$81
	db	$81
	db	$91
	db	$81
	db	$81
	db	$81
	db	$91
	db	$81
	db	$81
	db	$81
	db	$ff
