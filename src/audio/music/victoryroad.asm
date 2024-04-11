Music_VictoryRoad:
	db	060h
	dw	$ffff & Music_VictoryRoad_Ch1
	db	001h
	dw	$ffff & Music_VictoryRoad_Ch2
	db	002h
	dw	$ffff & Music_VictoryRoad_Ch3
	db	004h
	dw	$ffff & Music_VictoryRoad_Ch5
;----------------------------------------
Music_VictoryRoad_Ch1:
;----------------------------------------
	db	$da,$00,$90
;	db	$e5,$77
;	db	$ef,$0f
	db	$db,$03
	db	$e6,$00,$02
; P1-1
	db	$d8,$c,$b3
@loop10:
	db	$fe
	dw	$ffff & @sub1_1_1
	db	$fd,6
	dw	$ffff & @loop10
; P1-7
@loop11:
	db	$dc,$b2
	db	$d5,$a0
	db	$d4,$20
	db	$30
	db	$00
	db	$d5,$a0
	db	$dc,$b7
	db	$d4,$22
	db	$d5,$a0
	db	$d4,$32
	db	$d5,$a0
	db	$d4,$92
	db	$fd,2
	dw	$ffff & @loop11
; P1-9
@loop12:
	db	$fe
	dw	$ffff & @sub1_1_1
	db	$fd,2
	dw	$ffff & @loop12
	db	$fd,0
	dw	$ffff & @loop10
@sub1_1_1:
	db	$dc,$b2
	db	$d5,$80
	db	$c0
	db	$d4,$10
	db	$00
	db	$d5,$80
	db	$dc,$b7
	db	$c2
	db	$80
	db	$d4,$12
	db	$d5,$80
	db	$d4,$72
	db	$ff
;----------------------------------------
Music_VictoryRoad_Ch2:
;----------------------------------------
	db	$db,$03
	db	$e1,$10,$24
; P2-1
@loop20:
	db	$d8,$c,$c2
	db	$fe
	dw	$ffff & @sub2_1_1
	db	$01
; P2-2
	db	$fe
	dw	$ffff & @sub2_1_1
	db	$00
	db	$d3,$10
; P2-3
	db	$d8,$c,$b0
	db	$57
	db	$d2,$13
	db	$d3,$c3
; P2-4
	db	$5e
	db	$40
; P2-5
	db	$d8,$c,$b0
	db	$57
	db	$d2,$13
	db	$d3,$c3
; P2-6
	db	$d8,$c,$b0
	db	$d2,$57
	db	$d8,$c,$b7
	db	$57
; P2-7
	db	$d8,$c,$c7
	db	$37
;	db	$ef,$f0
	db	$23
;	db	$ef,$0f
	db	$d3,$a3
; P2-8
;	db	$ef,$ff
	db	$d2,$17
;	db	$ef,$0f
	db	$d3,$b3
;	db	$ef,$f0
	db	$63
; P2-9
;	db	$ef,$ff
	db	$ab
	db	$30
	db	$70
	db	$a0
	db	$d2,$20
; P2-10
	db	$3f
	db	$fd,0
	dw	$ffff & @loop20
@sub2_1_1:
	db	$d4,$50
	db	$00
	db	$50
	db	$00
	db	$70
	db	$70
	db	$01
	db	$90
	db	$90
	db	$01
	db	$a0
	db	$a0
	db	$ff
;----------------------------------------
Music_VictoryRoad_Ch3:
;----------------------------------------
;	db	$ef,$f0
; P3-1
@loop30:
	db	$fe
	dw	$ffff & @sub3_1_1
	db	$fd,6
	dw	$ffff & @loop30
; P3-7
@loop31:
	db	$dc,$12
	db	$30
	db	$00
	db	$c0
	db	$00
	db	$60
	db	$dc,$38
	db	$a2
	db	$dc,$12
	db	$30
	db	$c0
	db	$01
	db	$30
	db	$dc,$38
	db	$c2
	db	$fd,2
	dw	$ffff & @loop31
; P3-9
@loop32:
	db	$fe
	dw	$ffff & @sub3_1_1
	db	$fd,2
	dw	$ffff & @loop32
	db	$fd,0
	dw	$ffff & @loop30
@sub3_1_1:
	db	$d8,$c,$12
	db	$d4,$10
	db	$00
	db	$a0
	db	$00
	db	$40
	db	$dc,$38
	db	$82
	db	$dc,$12
	db	$10
	db	$a0
	db	$01
	db	$10
	db	$dc,$38
	db	$a2
	db	$ff
;----------------------------------------
Music_VictoryRoad_Ch5:
;----------------------------------------
	db	$e3,$000
; P5-1
	db	$d8,$c
@loop40:
	db	$31
	db	$31
	db	$40
	db	$32
	db	$40
	db	$32
	db	$40
	db	$32
; P5-2
	db	$31
	db	$31
	db	$40
	db	$32
	db	$40
	db	$40
	db	$31
	db	$40
	db	$31
	db	$40
	db	$fd,0
	dw	$ffff & @loop40


