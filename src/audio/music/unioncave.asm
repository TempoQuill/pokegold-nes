Music_UnionCave:
	db	060h
	dw	Music_UnionCave_Ch1
	db	001h
	dw	Music_UnionCave_Ch2
	db	002h
	dw	Music_UnionCave_Ch3
	db	003h
	dw	Music_UnionCave_Ch4
;----------------------------------------
Music_UnionCave_Ch1:
;----------------------------------------
	db	$da,$00,$a0
	db	$db,$01
	db	$e6,$00,$02
	db	$e1,$18,$34
; P1-1
@mainloop:
	db	$d8,$c,$b3
@loop1:
	db	$fe
	dw	@sub1
	db	$fd,4
	dw	@loop1
@loop2:
; P1-5
	db	$d5,$91
	db	$d4,$21
	db	$53
	db	$21
	db	$51
	db	$63
	db	$fd,8
	dw	@loop2
@loop3:
; P1-13
	db	$d5,$a1
	db	$d4,$31
	db	$63
	db	$31
	db	$61
	db	$73
	db	$fd,4
	dw	@loop3
; P1-17
	db	$03	; 4bu yasumu
	db	$dc,$80
	db	$6f
; P1-18
	db	$7f
; P1-19
	db	$8f
; P1-20
	db	$7f
; P1-21
	db	$87
	db	$77
; P1-22
	db	$67
	db	$57
; P1-23
	db	$87
	db	$77
; P1-24
	db	$d3,$17
	db	$d4,$a7
; P1-25
	db	$dc,$95
@loop4:
	db	$e6,$00,$04
	db	$fe
	dw	@sub1
	db	$e6,$00,$08
	db	$fe
	dw	@sub1
	db	$e6,$00,$0c
	db	$fe
	dw	@sub1
	db	$e6,$00,$10
	db	$fe
	dw	@sub1
	db	$e6,$00,$02
	db	$fd,0
	dw	@mainloop
@sub1:
	db	$d5,$91
	db	$d4,$21
	db	$5b
	db	$ff
;----------------------------------------
Music_UnionCave_Ch2:
;----------------------------------------
	db	$db,$03
	db	$e1,$8,$24
; P2-1
@mainloop:
	db	$d8,$c,$c4
	db	$fe
	dw	@sub1
; P2-5
	db	$dc,$c5
	db	$fe
	dw	@sub1
; P2-9
	db	$dc,$c7
	db	$fe
	dw	@sub1
; P2-13
	db	$dc,$c4
	db	$23
	db	$d4,$c3
	db	$d3,$31
	db	$51
	db	$21
	db	$d4,$c1
; P2-14
	db	$d3,$23
	db	$d4,$c3
	db	$d3,$37
; P2-15
	db	$d4,$c3
	db	$d3,$33
	db	$71
	db	$61
	db	$21
	db	$d4,$c1
; P2-16
	db	$d3,$27
	db	$33
	db	$23
; P2-17
	db	$03	; 4bu yasumu
	db	$dc,$a0
	db	$1f
; P2-18
	db	$2f
; P2-19
	db	$3f
; P2-20
	db	$2f
; P2-21
	db	$5f
; P2-22
	db	$4f
; P2-23
	db	$bf
; P2-24
	db	$af
; P2-25
	db	$dc,$a5
@loop1:
	db	$e1,$6,$44
	db	$fe
	dw	@sub2
	db	$e1,$4,$33
	db	$fe
	dw	@sub2
	db	$e1,$2,$22
	db	$fe
	dw	@sub2
	db	$e1,$1,$41
	db	$fe
	dw	@sub2
	db	$e1,$8,$24
	db	$fd,0
	dw	@mainloop
@sub1:
	db	$d3,$13
	db	$d4,$b3
	db	$d3,$21
	db	$41
	db	$11
	db	$d4,$b1
; P2-2
	db	$d3,$13
	db	$d4,$b3
	db	$d3,$27
; P2-3
	db	$d4,$b3
	db	$d3,$23
	db	$61
	db	$51
	db	$11
	db	$d4,$b1
; P2-4
	db	$d3,$17
	db	$23
	db	$13
	db	$ff
@sub2:
	db	$d5,$91
	db	$d4,$21
	db	$5b
	db	$ff
;----------------------------------------
Music_UnionCave_Ch3:
;----------------------------------------
	db	$d8,$c,$2c
; P3-1
@mainloop:
	db	$0f
	db	$fd,7
	dw	@mainloop
; P3-8
	db	$0d
	db	$d3,$11
; P3-9
@loop1:
	db	$01
	db	$d4,$51
	db	$01
	db	$51
	db	$91
	db	$51
	db	$01
	db	$d3,$11
	db	$fd,4
	dw	@loop1
; P3-13
@loop2:
	db	$01
	db	$d4,$61
	db	$01
	db	$61
	db	$a1
	db	$61
	db	$01
	db	$d3,$21
	db	$fd,4
	dw	@loop2
; P3-17
	db	$03		; 4bu yasumi
	db	$dc,$81
	db	$17
	db	$d4,$c7
; P3-18
	db	$b7
	db	$a7
; P3-19
	db	$d3,$27
	db	$17
; P3-20
	db	$d4,$c7
	db	$b7
; P3-21
@loop3:
	db	$dc,$54
	db	$a3
	db	$83
	db	$dc,$2c
	db	$b1
	db	$d3,$11
	db	$d4,$a1
	db	$81
	db	$fd,3
	dw	@loop3
; P3-24
	db	$dc,$54
	db	$a3
	db	$83
	db	$dc,$7f
	db	$b7
; P3-25
@loop4:
	db	$dc,$2c
	db	$0f
	db	$fd,4
	dw	@loop4
	db	$fd,0
	dw	@mainloop
;----------------------------------------
Music_UnionCave_Ch4:
;----------------------------------------
	db	$e3,$001
	db	$d8,$c
; P4-1 -
@mainloop:
	db	$53
	db	$63
	db	$93
	db	$07
	db	$53
	db	$63
	db	$93
	db	$07
	db	$fd,0
	dw	@mainloop
	db	$fd,0
	dw	@mainloop

