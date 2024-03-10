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
	db	$00,$02,$36,$00
	db	$00,$02,$28,$00
	db	$00,$02,$36,$00
	db	$0f,$02,$28,$00
	db	$ff

