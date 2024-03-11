.include "src/audio/fanfares.asm"
Sfx_PokeballsPlacedOnTable:
	db	005h
	dw	Sfx_PokeballsPlacedOnTable_Ch6
Sfx_PokeballsPlacedOnTable_Ch6:
	duty_cycle 2
	pitch_sweep 3, -2
	square_note 4, 0, 7, 512
	pitch_sweep 3, 6
	square_note 8, 0, 7, 512
	pitch_sweep 0, 1
	sound_ret:
Sfx_Potion:
	db	009h
	dw	Sfx_Potion_Ch10
Sfx_Potion_Ch10:
	dpcm_note 31, DMC_POTION, DMC_POTION_END
	sound_ret
Sfx_FullHeal:
	db	009h
	dw	Sfx_FullHeal_Ch10
Sfx_FullHeal_Ch10:
	dpcm_note 4, DMC_FULL_HEAL_1, DMC_FULL_HEAL_1_END
	dpcm_note 4, DMC_FULL_HEAL_1, DMC_FULL_HEAL_1_END
	dpcm_note 15, DMC_FULL_HEAL_2, DMC_FULL_HEAL_2_END
	sound_ret
Sfx_Menu:
	db	008h
	dw	Sfx_Menu_Ch9
Sfx_Menu_Ch9:
	db	$01,$06,$06
	db	$08,$02,$03
	db	$ff
Sfx_ReadText:
	db	005h
	dw	Sfx_ReadText_Ch6
Sfx_ReadText_Ch6:
	db	$db,$02
	db	$00,$00,$35,$00
	db	$00,$00,$27,$00
	db	$00,$00,$35,$00
	db	$0f,$01,$27,$00
	db	$ff
Sfx_Poison:
	db	005h
	dw	Sfx_Poison_Ch6
Sfx_Poison_Ch6:
	duty_cycle 0
	pitch_sweep 1, 6
	square_note 4, 0, 7, $2651
	sound_loop 4, Sfx_Poison_Ch6
	square_note 15, 0, 7, $2651
	pitch_sweep 0, 1
	sound_ret
Sfx_GotSafariBalls:
	db	005h
	dw	Sfx_GotSafariBalls_Ch6
Sfx_GotSafariBalls_Ch6:
	duty_cycle 2
	pitch_sweep 1, 5
	square_note 15, 1, 15, $84f0
	square_note 15, 0, 7, $7650
	pitch_sweep 0, 1
	sound_ret
Sfx_BootPc:
	db	006h
	dw	Sfx_BootPc_Ch6
Sfx_BootPc_Ch6:
	db	$db,$02
	db	$0f,$07,$35,$00
	db	$0f,$10,$00,$00
	db	$03,$01,$6b,$00
	db	$03,$01,$d6,$00
	db	$03,$01,$a1,$00
	db	$03,$01,$d6,$00
	db	$03,$01,$6b,$00
	db	$03,$01,$d6,$00
	db	$03,$01,$35,$00
	db	$08,$01,$d6,$00
	db	$ff
Sfx_ShutDownPC:
	db	005h
	dw	Sfx_ShutDownPC_Ch6
Sfx_ShutDownPC_Ch6:
	db	$db,$02
	db	$04,$1f,$ae,$01
	db	$04,$1f,$5c,$03
	db	$04,$1f,$0b,$05
	db	$01,$10,$00,$00
	db	$ff
Sfx_ChoosePCOption:
	db	005h
	dw	Sfx_ChoosePCOption_Ch6
Sfx_ChoosePCOption_Ch6:
	db	$db,$02
	db	$06,$1f,$d6,$00
	db	$04,$10,$00,$00
	db	$06,$1f,$d6,$00
	db	$01,$10,$00,$00
	db	$ff
Sfx_EscapeRope:
	db	009h
	dw	Sfx_EscapeRope_Ch10
Sfx_EscapeRope_Ch10:
	db	$df
	db	$f0,$06
	db	$d8,$05
	db	$1f
	db	$ff
Sfx_PushButton:
	db	005h
	dw	Sfx_PushButton_Ch6
Sfx_PushButton_Ch6:
	duty_cycle 2
	square_note 4, 1, 0, 2047
	square_note 2, 0, 2, 1725
	square_note 1, 1, 0, 2047
	square_note 4, 0, 2, 1940
	square_note 4, 1, 0, 2047
	sound_ret
Sfx_SecondPartOfItemfinder:
	db	005h
	dw	Sfx_SecondPartOfItemfinder_Ch6
Sfx_SecondPartOfItemfinder_Ch6:
	duty_cycle 2
	pitch_sweep 2, -4
	square_note 4, 0, 6, 1280
	pitch_sweep 2, 6
	square_note 2, 0, 2, 1280
	pitch_sweep 0, 8
	square_note 1, 1, 0, 2047
	sound_ret
Sfx_WarpTo:
	db	005h
	dw	Sfx_WarpTo_Ch6
Sfx_WarpTo_Ch6:
	duty_cycle 1
	pitch_sweep 1, 4
	note_type $81, 0, 0
	square_note 15, 13, 7, 1280
	square_note 15, 11, 7, 1408
	square_note 15, 8, 7, 1536
	square_note 15, 4, 7, 1664
	square_note 15, 1, 7, 1792
	pitch_sweep 0, 1
	sound_ret
Sfx_WarpFrom:
	db	005h
	dw	Sfx_WarpFrom_Ch6
Sfx_WarpFrom_Ch6:
	duty_cycle 1
	pitch_sweep 1, 4
	note_type $81, 0, 0
	square_note 15, 13, 7, 1792
	square_note 15, 11, 7, 1664
	square_note 15, 8, 7, 1536
	square_note 15, 4, 7, 1408
	square_note 15, 1, 7, 1280
	pitch_sweep 0, 1
	sound_ret
Sfx_ChangeDexMode:
	db	005h
	dw	Sfx_ChangeDexMode_Ch6
Sfx_ChangeDexMode_Ch6:
	duty_cycle 1
	pitch_sweep 2, 6
	square_note 15, 0, 6, $9500
	pitch_sweep 0, 1
	sound_ret
Sfx_JumpOverLedge:
	db	005h
	dw	Sfx_JumpOverLedge_Ch6
Sfx_JumpOverLedge_Ch6:
	duty_cycle 2
	pitch_sweep 1, 5
	square_note 15, 0, 7, $a400
	pitch_sweep 0, 1
	sound_ret


