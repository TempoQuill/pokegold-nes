Music_DarkCave:
	db	060h
	dw	$ffff & Music_DarkCave_Ch1
	db	001h
	dw	$ffff & Music_DarkCave_Ch2
	db	002h
	dw	$ffff & Music_DarkCave_Ch3
	db	004h
	dw	$ffff & Music_DarkCave_Ch5
;----------------------------------------
Music_DarkCave_Ch1:
;----------------------------------------
	db	$da,$00,$80
;	db	$e5,$77
	db	$db,$03
	db	$e6,$00,$01
	db	$e1,$11,$15
;	db	$ef,$f0
; P1-1
	db	$d8,$c,$a7
@loop100:
	db	$0f
	db	$fd,4
	dw	$ffff & @loop100
; P1-5
	db	$d4,$4f
; P1-6
	db	$3f
; P1-7
	db	$2f
; P1-8
	db	$1f
	db	$dc,$a3
@loop10:
	db	$fe
	dw	$ffff & @sub11
	db	$fd,3
	dw	$ffff & @loop10
; P1-21
	db	$dc,$b7
	db	$97
	db	$47
; P1-22
	db	$87
	db	$37
; P1-23
	db	$67
	db	$27
; P1-24
	db	$47
	db	$87
; P1-25
	db	$97
	db	$47
; P1-26
	db	$87
	db	$37
; P1-27
	db	$67
	db	$27
; P1-28
	db	$47
	db	$17
; P1-29
	db	$dc,$a3
@loop11:
	db	$fe
	dw	$ffff & @sub11
	db	$fd,2
	dw	$ffff & @loop11
; P1-37
	db	$0f
; P1-38
	db	$07
	db	$dc,$b7
	db	$d5,$61
	db	$81
	db	$93
; P1-39
	db	$d4,$4f
; P1-40
	db	$07
	db	$d5,$91
	db	$81
	db	$93
; P1-41
	db	$d4,$4f
; P1-42
	db	$81
	db	$05
	db	$61
	db	$81
	db	$93
; P1-43
	db	$8f
; P1-44
	db	$61
	db	$05
	db	$91
	db	$81
	db	$93
; P1-45
	db	$dc,$a3
@loop12:
	db	$fe
	dw	$ffff & @sub11
	db	$fd,2
	dw	$ffff & @loop12
	db	$fd,0
	dw	$ffff & @loop10
@sub11:
; P1-9
	db	$d3,$41
	db	$d4,$91
	db	$d3,$11
	db	$41
	db	$d4,$91
	db	$d3,$11
	db	$41
	db	$11
; P1-10
	db	$31
	db	$d4,$81
	db	$b1
	db	$d3,$31
	db	$d4,$81
	db	$b1
	db	$d3,$31
	db	$d4,$b1
; P1-11
	db	$d3,$21
	db	$d4,$61
	db	$b1
	db	$d3,$21
	db	$d4,$61
	db	$b1
	db	$d3,$21
	db	$d4,$b1
; P1-12
	db	$d3,$11
	db	$d4,$81
	db	$b1
	db	$d3,$11
	db	$d4,$81
	db	$b1
	db	$d3,$11
	db	$d4,$b1
	db	$ff
;----------------------------------------
Music_DarkCave_Ch2:
;----------------------------------------
	db	$db,$01
	db	$e1,$12,$36
; P2-1
;	db	$ef,$0f
	db	$d8,$c,$a7
@loop200:
	db	$0f
	db	$fd,4
	dw	$ffff & @loop200
; P2-5
	db	$d4,$8f
; P2-6
	db	$bf
; P2-7
	db	$6f
; P2-8
	db	$8f
@loop20:
; P2-9
@loop201:
	db	$0f
	db	$fd,4
	dw	$ffff & @loop201
; P2-13
	db	$07
;	db	$ef,$ff
	db	$dc,$c7
	db	$d2,$17
; P2-14
	db	$dc,$c4
	db	$31
	db	$11
	db	$d3,$b1
	db	$83
	db	$b1
	db	$d2,$33
; P2-15
	db	$dc,$b0
	db	$23
	db	$dc,$b7
	db	$2b
; P2-16
	db	$dc,$59
	db	$17
	db	$dc,$c7
	db	$17
; P2-17
	db	$07
	db	$dc,$c7
	db	$17
; P2-18
	db	$dc,$c4
	db	$31
	db	$11
	db	$d3,$b1
	db	$81
	db	$81
	db	$b1
	db	$d2,$33
; P2-19
	db	$dc,$c7
	db	$2b
	db	$dc,$c3
	db	$11
	db	$21
; P2-20
	db	$dc,$b0
	db	$49
	db	$dc,$b7
	db	$45
; P2-21
;	db	$ef,$0f
	db	$dc,$c4
	db	$d3,$63
	db	$41
	db	$31
	db	$43
	db	$31
	db	$11
; P2-22
	db	$31
	db	$11
	db	$d4,$b1
	db	$d3,$11
	db	$33
	db	$11
	db	$d4,$b1
; P2-23
	db	$d3,$27
	db	$d4,$b7
; P2-24
	db	$dc,$b0
	db	$d3,$41
	db	$31
	db	$11
	db	$d4,$b1
	db	$d3,$17
; P2-25
	db	$63
	db	$41
	db	$31
	db	$43
	db	$31
	db	$11
; P2-26
	db	$31
	db	$11
	db	$d4,$b1
	db	$d3,$11
	db	$33
	db	$11
	db	$d4,$b1
; P2-27
	db	$d3,$23
	db	$11
	db	$21
	db	$11
	db	$21
	db	$d4,$b1
	db	$d3,$21
; P2-28
	db	$dc,$b0
	db	$17
	db	$dc,$b7
	db	$17
; P2-29
	db	$dc,$c7
;	db	$ef,$ff
	db	$07
	db	$d2,$17
; P2-30
	db	$dc,$c4
	db	$31
	db	$11
	db	$d3,$b1
	db	$83
	db	$b1
	db	$d2,$33
; P2-31
	db	$dc,$49
	db	$27
	db	$dc,$c7
	db	$27
; P2-32
	db	$dc,$b0
	db	$17
	db	$dc,$b7
	db	$17
; P2-33
	db	$07
	db	$dc,$c7
	db	$17
; P2-34
	db	$dc,$c4
	db	$31
	db	$11
	db	$d3,$b1
	db	$81
	db	$81
	db	$b1
	db	$d2,$33
; P2-35
	db	$dc,$b0
	db	$27
	db	$dc,$b7
	db	$27
; P2-36
	db	$dc,$b0
	db	$17
	db	$dc,$b7
	db	$17
; P2-37
	db	$dc,$c7
	db	$0f
; P2-38
;	db	$ef,$0f
	db	$07
	db	$d4,$b1
	db	$d3,$11
	db	$23
; P2-39
	db	$1f
; P2-40
	db	$07
	db	$21
	db	$11
	db	$23
; P2-41
	db	$1f
; P2-42
	db	$dc,$c2
	db	$47
	db	$dc,$c7
	db	$d4,$b1
	db	$d3,$11
	db	$23
; P2-43
	db	$1f
; P2-44
	db	$dc,$c2
	db	$d4,$b7
	db	$dc,$c7
	db	$d3,$21
	db	$11
	db	$dc,$c4
	db	$2f
; P2-45
	db	$03
; P2-46
	db	$0f
; P2-47
	db	$0f
; P2-48
	db	$0f
; P2-49
	db	$dc,$b7
	db	$d2,$4f
; P2-50
	db	$3f
; P2-51
	db	$6f
; P2-52
	db	$4f
	db	$fd,0
	dw	$ffff & @loop20
;----------------------------------------
Music_DarkCave_Ch3:
;----------------------------------------
; P3-1
	db	$d8,$c,$43
;;:	db	$e8,$00
@loop301:
	db	$fe
	dw	$ffff & @sub33
; P3-5
	db	$fe
	dw	$ffff & @sub33
@loop30:
; P3-9
	db	$fe
	dw	$ffff & @sub33
	db	$fd,7
	dw	$ffff & @loop30
; P3-37
	db	$fe
	dw	$ffff & @sub31
	db	$fe
	dw	$ffff & @sub32
; P3-40
	db	$61
	db	$01
	db	$dc,$81
	db	$d5,$bb
; P3-41
	db	$fe
	dw	$ffff & @sub31
	db	$fe
	dw	$ffff & @sub32
; P3-44
	db	$61
	db	$01
	db	$d5,$b3
	db	$dc,$21
	db	$d4,$21
	db	$11
	db	$dc,$43
	db	$23
@loop302:
; P3-45
	db	$fe
	dw	$ffff & @sub31
; P3-46
	db	$41
	db	$01
	db	$d5,$b3
	db	$dc,$21
	db	$b1
	db	$d4,$11
	db	$dc,$43
	db	$23
; P3-47
	db	$fe
	dw	$ffff & @sub34
; P3-48
	db	$61
	db	$01
	db	$d5,$b3
	db	$dc,$21
	db	$d4,$21
	db	$11
	db	$dc,$43
	db	$23
; P3-49
	db	$fd,2
	dw	$ffff & @loop302
	db	$fd,0
	dw	$ffff & @loop30
@sub31:
	db	$dc,$43
	db	$d4,$13
	db	$dc,$21
	db	$81
	db	$dc,$43
	db	$43
	db	$dc,$21
	db	$81
	db	$dc,$43
	db	$63
	db	$ff
@sub32:
; P3-38
	db	$41
	db	$01
	db	$dc,$81
	db	$d5,$bb
; P3-39
@sub34:
	db	$dc,$43
	db	$d4,$13
	db	$dc,$21
	db	$81
	db	$dc,$43
	db	$43
	db	$dc,$21
	db	$81
	db	$dc,$43
	db	$43
	db	$ff
@sub33:
	db	$dc,$43
	db	$d5,$13
	db	$dc,$21
	db	$81
	db	$dc,$43
	db	$43
	db	$dc,$21
	db	$81
	db	$dc,$43
	db	$63
; P3-2
	db	$41
	db	$01
	db	$d6,$b3
	db	$dc,$21
	db	$b1
	db	$d5,$11
	db	$dc,$43
	db	$23
; P3-3
	db	$13
	db	$dc,$21
	db	$81
	db	$dc,$43
	db	$43
	db	$dc,$21
	db	$81
	db	$dc,$43
	db	$43
; P3-4
	db	$61
	db	$01
	db	$d6,$b3
	db	$dc,$21
	db	$d5,$21
	db	$11
	db	$dc,$43
	db	$23
	db	$ff
	db	$ff
;----------------------------------------
Music_DarkCave_Ch5:
;----------------------------------------
	db	$e3,$003
	db	$d8,$c
@loop40:
; P5-1
;	db	$ef,$ff
	db	$47
	db	$47
; P5-2
	db	$43
;	db	$ef,$f0
	db	$23
;	db	$ef,$0f
	db	$21
	db	$21
;	db	$ef,$f0
	db	$23
; P5-3
;	db	$ef,$ff
	db	$47
	db	$47
; P5-4
	db	$43
;	db	$ef,$0f
	db	$27
;	db	$ef,$f0
	db	$21
	db	$21
	db	$fd,0
	dw	$ffff & @loop40


