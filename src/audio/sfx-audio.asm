.include "src/audio/fanfares.asm"
Sfx_PokeballsPlacedOnTable:
	db	005h
	dw	$ffff & Sfx_PokeballsPlacedOnTable_Ch6
Sfx_PokeballsPlacedOnTable_Ch6:
	duty_cycle 2
	pitch_sweep 3, -2
	square_note 4, 15, 2, 512
	pitch_sweep 3, 6
	square_note 8, 14, 2, 512
	pitch_sweep 0, 1
	sound_ret
Sfx_Potion:
	db	009h
	dw	$ffff & Sfx_Potion_Ch10
Sfx_Potion_Ch10:
	dpcm_note 31, DMC_POTION, DMC_POTION_END
	sound_ret
Sfx_FullHeal:
	db	009h
	dw	$ffff & Sfx_FullHeal_Ch10
Sfx_FullHeal_Ch10:
	dpcm_note 4, DMC_FULL_HEAL_1, DMC_FULL_HEAL_1_END
	dpcm_note 4, DMC_FULL_HEAL_1, DMC_FULL_HEAL_1_END
	dpcm_note 15, DMC_FULL_HEAL_2, DMC_FULL_HEAL_2_END
	sound_ret
Sfx_Menu:
	db	008h
	dw	$ffff & Sfx_Menu_Ch9
Sfx_Menu_Ch9:
	noise_note 1, 14, 2, 51
	noise_note 8, 14, 1, 34
	sound_ret
Sfx_ReadText:
	db	005h
	dw	$ffff & Sfx_ReadText_Ch6
Sfx_ReadText_Ch6:
	db	$db,$02
	db	$00,$91,$35,$00
	db	$00,$81,$27,$00
	db	$00,$91,$35,$00
	db	$0f,$a1,$27,$00
	db	$ff
Sfx_Poison:
	db	005h
	dw	$ffff & Sfx_Poison_Ch6
Sfx_Poison_Ch6:
	duty_cycle 0
	pitch_sweep 1, 6
	square_note 4, 15, 2, $2651
	sound_loop 4, Sfx_Poison_Ch6
	square_note 15, 15, 3, $2651
	pitch_sweep 0, 1
	sound_ret
Sfx_GotSafariBalls:
	db	005h
	dw	$ffff & Sfx_GotSafariBalls_Ch6
Sfx_GotSafariBalls_Ch6:
	duty_cycle 2
	pitch_sweep 1, 5
	square_note 15, 15, 0, $84f0
	square_note 15, 15, 2, $7650
	pitch_sweep 0, 1
	sound_ret
Sfx_BootPc:
	db	005h
	dw	$ffff & Sfx_BootPc_Ch6
Sfx_BootPc_Ch6:
	db	$db,$02
	db	$0f,$f2,$35,$00
	db	$0f,$00,$ff,$07
	db	$03,$a1,$6b,$00
	db	$03,$a1,$d6,$00
	db	$03,$a1,$a1,$00
	db	$03,$a1,$d6,$00
	db	$03,$a1,$6b,$00
	db	$03,$a1,$d6,$00
	db	$03,$a1,$35,$00
	db	$08,$a1,$d6,$00
	db	$ff
Sfx_ShutDownPC:
	db	005h
	dw	$ffff & Sfx_ShutDownPC_Ch6
Sfx_ShutDownPC_Ch6:
	db	$db,$02
	db	$04,$f0,$ae,$01
	db	$04,$f0,$5c,$03
	db	$04,$f0,$0b,$05
	db	$01,$00,$ff,$07
	db	$ff
Sfx_ChoosePCOption:
	db	005h
	dw	$ffff & Sfx_ChoosePCOption_Ch6
Sfx_ChoosePCOption_Ch6:
	db	$db,$02
	db	$06,$f0,$d6,$00
	db	$04,$00,$ff,$07
	db	$06,$f0,$d6,$00
	db	$01,$00,$ff,$07
	db	$ff
Sfx_EscapeRope:
	db	009h
	dw	$ffff & Sfx_EscapeRope_Ch10
Sfx_EscapeRope_Ch10:
	db	$df
	db	$f0,$06
	db	$d8,$05
	db	$1f
	db	$ff
Sfx_PushButton:
	db	005h
	dw	$ffff & Sfx_PushButton_Ch6
Sfx_PushButton_Ch6:
	duty_cycle 2
	square_note 4, 0, 0, 0
	square_note 2, 15, 1, 1725
	square_note 1, 0, 0, 0
	square_note 4, 15, 1, 1940
	square_note 4, 0, 0, 0
	sound_ret
Sfx_SecondPartOfItemfinder:
	db	005h
	dw	$ffff & Sfx_SecondPartOfItemfinder_Ch6
Sfx_SecondPartOfItemfinder_Ch6:
	duty_cycle 2
	pitch_sweep 2, -4
	square_note 4, 15, 2, $57a
	pitch_sweep 2, 6
	square_note 2, 15, 1, $57a
	pitch_sweep 0, 1
	square_note 1, 0, 0, 0
	sound_ret
Sfx_WarpTo:
	db	005h
	dw	$ffff & Sfx_WarpTo_Ch6
Sfx_WarpTo_Ch6:
	duty_cycle 1
	pitch_sweep 1, 4
	square_note 15, 13, 7, $57a
	square_note 15, 11, 7, 1408
	square_note 15, 8, 7, 1536
	square_note 15, 4, 7, 1664
	square_note 15, 1, 7, $700
	pitch_sweep 0, 1
	sound_ret
Sfx_WarpFrom:
	db	005h
	dw	$ffff & Sfx_WarpFrom_Ch6
Sfx_WarpFrom_Ch6:
	duty_cycle 1
	pitch_sweep 1, 4
	square_note 15, 13, 7, $700
	square_note 15, 11, 7, 1664
	square_note 15, 8, 7, 1536
	square_note 15, 4, 7, 1408
	square_note 15, 1, 7, $57a
	pitch_sweep 0, 1
	sound_ret
Sfx_ChangeDexMode:
	db	005h
	dw	$ffff & Sfx_ChangeDexMode_Ch6
Sfx_ChangeDexMode_Ch6:
	duty_cycle 1
	pitch_sweep 2, 6
	square_note 15, 13, 2, $9500
	pitch_sweep 0, 1
	sound_ret
Sfx_JumpOverLedge:
	db	005h
	dw	$ffff & Sfx_JumpOverLedge_Ch6
Sfx_JumpOverLedge_Ch6:
	duty_cycle 2
	pitch_sweep 1, 5
	square_note 15, 15, 2, $a400
	pitch_sweep 0, 1
	sound_ret
Sfx_GrassRustle:
	db	008h
	dw	$ffff & Sfx_GrassRustle_Ch9
Sfx_GrassRustle_Ch9:
	noise_note 2, 15, 1, 50
	noise_note 2, 0, 0, 0
	noise_note 2, 15, 1, 34
	noise_note 1, 0, 0, 0
	sound_ret
Sfx_Fly:
	db	008h
	dw	$ffff & Sfx_Fly_Ch9
Sfx_Fly_Ch9:
	noise_note 2, 15, 1, 18
	noise_note 2, 0, 0, 0
	noise_note 2, 10, 1, 18
	noise_note 2, 0, 0, 0
	noise_note 2, 13, 1, 18
	noise_note 2, 0, 0, 0
	noise_note 2, 8, 1, 18
	noise_note 2, 0, 0, 0
	noise_note 2, 11, 1, 18
	noise_note 2, 0, 0, 0
	noise_note 2, 6, 1, 18
	noise_note 2, 0, 0, 0
	noise_note 2, 9, 1, 18
	noise_note 2, 0, 0, 0
	noise_note 2, 4, 1, 18
	noise_note 2, 0, 0, 0
	sound_ret
Sfx_Wrong:
	db	025h
	dw	$ffff & Sfx_Wrong_Ch6
	db	006h
	dw	$ffff & Sfx_Wrong_Ch7
Sfx_Wrong_Ch6:
	duty_cycle 3
	pitch_sweep 5, -2
	square_note 4, 15, 0, $57a
	pitch_sweep 0, 1
	square_note 4, 0, 0, 0
	square_note 15, 15, 0, $57a
	square_note 1, 0, 0, 0
	sound_ret
Sfx_Wrong_Ch7:
	duty_cycle 3
	square_note 4, 15, 0, $4a3
	square_note 4, 0, 0, 0
	square_note 15, 15, 0, $4a3
	square_note 1, 0, 0, 0
	sound_ret
Sfx_Squeak:
	db	005h
	dw	$ffff & Sfx_Squeak_Ch6
Sfx_Squeak_Ch6:
	duty_cycle 0
	pitch_sweep 1, 5
	square_note 15, 13, 2, $8729
	pitch_sweep 0, 1
	sound_ret
Sfx_Strength:
	db	008h
	dw	$ffff & Sfx_Strength_Ch9
Sfx_Strength_Ch9:
	noise_note 4, 10, 2, 35
	noise_note 8, 15, 1, 52
	noise_note 15, 0, 0, 0
Sfx_PlacePuzzlePieceDown_Ch9:
	noise_note 2, 15, 7, 36
	noise_note 2, 15, 7, 52
	noise_note 4, 15, 7, 68
	noise_note 8, 15, 4, 85
	noise_note 8, 15, 1, 68
	sound_ret
Sfx_Boat:
	db	025h
	dw	$ffff & Sfx_Boat_Ch6
	db	006h
	dw	$ffff & Sfx_Boat_Ch7
Sfx_Boat_Ch6:
	duty_cycle 2
	square_note 15, 15, 0, $57a
	square_note 4, 0, 0, 0
	square_note 15, 15, 0, $57a
	square_note 15, 15, 0, $57a
	square_note 15, 15, 0, $57a
	square_note 15, 15, 0, $57a
	square_note 15, 15, 2, $57a
	sound_ret
Sfx_Boat_Ch7:
	duty_cycle 3
	square_note 15, 15, 0, $510
	square_note 4, 0, 0, 0
	square_note 15, 15, 0, $510
	square_note 15, 15, 0, $510
	square_note 15, 15, 0, $510
	square_note 15, 15, 0, $510
	square_note 15, 15, 2, $510
	sound_ret
Sfx_WallOpen:
	db	005h
	dw	$ffff & Sfx_WallOpen_Ch6
Sfx_WallOpen_Ch6:
	duty_cycle 1
	pitch_sweep 3, -6
	square_note 4, 15, 2, $500
	pitch_sweep 2, 6
	square_note 4, 14, 2, $500
	pitch_sweep 3, -6
	square_note 4, 15, 2, $700
	pitch_sweep 2, 6
	square_note 15, 14, 2, $3700
	pitch_sweep 0, 1
	sound_ret
Sfx_PlacePuzzlePieceDown:
	db	008h
	dw	$ffff & Sfx_PlacePuzzlePieceDown_Ch9
Sfx_EnterDoor:
	db	008h
	dw	$ffff & Sfx_EnterDoor_Ch9
Sfx_EnterDoor_Ch9:
	noise_note 9, 15, 1, 68
	noise_note 8, 13, 1, 67
	sound_ret
Sfx_SwitchPokemon:
	db	009h
	dw	$ffff & Sfx_SwitchPokemon_Ch10
Sfx_SwitchPokemon_Ch10:
	dpcm_note 11, DMC_SWITCH_MONS, DMC_SWITCH_MONS_END
	sound_ret
Sfx_Tally:
	db	009h
	dw	$ffff & Sfx_Tally_Ch10
Sfx_Tally_Ch10:
	dpcm_note 6, DMC_TALLY, DMC_TALLY_END
	sound_ret
Sfx_Transaction:
	db	009h
	dw	$ffff & Sfx_Transaction_Ch10
Sfx_Transaction_Ch10:
	dpcm_note 30, DMC_TRANSACTION, DMC_TRANSACTION_END
	sound_ret
Sfx_ExitBuilding:
	db	008h
	dw	$ffff & Sfx_ExitBuilding_Ch9
Sfx_ExitBuilding_Ch9:
	noise_note 2, 15, 1, 84
	noise_note 12, 7, 1, 35
	noise_note 2, 11, 1, 84
	noise_note 12, 6, 1, 35
	noise_note 6, 4, 1, 84
	sound_ret
Sfx_Bump:
	db	005h
	dw	$ffff & Sfx_Bump_Ch6
Sfx_Bump_Ch6:
	duty_cycle 2
	pitch_sweep 5, -4
	square_note 15, 15, 1, 768
	pitch_sweep 0, 1
	sound_ret
Sfx_Save:
	db	009h
	dw	$ffff & Sfx_Save_Ch10
Sfx_Save_Ch10:
	dpcm_note 34, DMC_SAVE, DMC_SAVE_END
	sound_ret
Sfx_ElevatorEnd:
	db	005h
	dw	$ffff & Sfx_ElevatorEnd_Ch6
Sfx_Elevator:
	db	085h
	dw	$ffff & Sfx_Elevator_Ch6
	db	006h
	dw	$ffff & Sfx_Elevator_Ch7_Ch8
	db	007h
	dw	$ffff & Sfx_Elevator_Ch7_Ch8
	db	008h
	dw	$ffff & Sfx_Elevator_Ch9
	db	009h
	dw	$ffff & Sfx_Elevator_Ch10
Sfx_Elevator_Ch6:
	duty_cycle 2
	pitch_sweep 5, -2
@loop:
	square_note 2, 15, 1, 768
	db sound_loop_cmd, 48
	dw $ffff & @loop
	pitch_sweep 0, 1
Sfx_ElevatorEnd_Ch6:
	duty_cycle 2
	square_note 15, 15, 3, 1874
	square_note 8, 6, 5, 1874
	square_note 15, 15, 4, 1834
	square_note 15, 7, 4, 1834
	square_note 15, 4, 4, 1834
	square_note 15, 2, 4, 1834
	sound_ret
Sfx_Elevator_Ch7_Ch8:
	square_note 96, 0, 0, 0
	square_note 83, 0, 0, 0
	sound_ret
Sfx_Elevator_Ch9:
	noise_note 96, 0, 0, 0
	noise_note 83, 0, 0, 0
	sound_ret
Sfx_Elevator_Ch10:
	dpcm_note 96, 0, 0
	dpcm_note 83, 0, 0
	sound_ret
Sfx_ThrowBall:
	db	009h
	dw	$ffff & Sfx_ThrowBall_Ch10
Sfx_ThrowBall_Ch10:
	dpcm_note 15, DMC_THROW_BALL, DMC_THROW_BALL_END
	sound_ret
Sfx_BallPoof:
	db	009h
	dw	$ffff & Sfx_BallPoof_Ch10
Sfx_BallPoof_Ch10:
	dpcm_note 15, DMC_BALL_POOF, DMC_BALL_POOF_END
	sound_ret
Sfx_Unknown3A:
	db	009h
	dw	$ffff & Sfx_Unknown3A_Ch10
Sfx_Unknown3A_Ch10:
	dpcm_note 29, DMC_FAINT, DMC_FAINT_END
	sound_ret
Sfx_Run:
	db	008h
	dw	$ffff & Sfx_Run_Ch9
Sfx_Run_Ch9:
	noise_note 2, 6, 1, 35
	noise_note 2, 10, 1, 51
	noise_note 2, 12, 1, 51
	noise_note 2, 5, 1, 17
	noise_note 2, 15, 1, 51
	noise_note 2, 4, 1, 17
	noise_note 2, 12, 1, 51
	noise_note 2, 3, 1, 17
	noise_note 2, 8, 1, 51
	noise_note 2, 3, 1, 17
	noise_note 8, 4, 1, 51
	sound_ret
Sfx_SlotMachineStart:
	db	009h
	dw	$ffff & Sfx_SlotMachineStart_Ch10
Sfx_SlotMachineStart_Ch10:
	dpcm_note 31, DMC_SLOT_MACHINE_START, DMC_SLOT_MACHINE_START_END
	sound_ret
Sfx_Peck:
	db	008h
	dw	$ffff & Sfx_Peck_Ch9
Sfx_Peck_Ch9:
	noise_note 2, 10, 1, 18
	sound_ret
Sfx_Kinesis:
	db	005h
	dw	$ffff & Sfx_Kinesis_Ch6
Sfx_Kinesis_Ch6:
	duty_cycle 1
	pitch_sweep 2, -3
	square_note 15, 15, 2, $794
	pitch_sweep 0, 1
	sound_ret
Sfx_Lick:
	db	005h
	dw	$ffff & Sfx_Lick_Ch6
Sfx_Lick_Ch6:
	duty_cycle 1
	pitch_sweep 1, 3
	square_note 15, 15, 2, $4a2
	pitch_sweep 0, 1
	sound_ret
Sfx_Pound:
	db	008h
	dw	$ffff & Sfx_Pound_Ch9
Sfx_Pound_Ch9:
	noise_note 2, 10, 1, 34
	sound_ret
Sfx_MovePuzzlePiece:
	db	008h
	dw	$ffff & Sfx_MovePuzzlePiece_Ch9
Sfx_MovePuzzlePiece_Ch9:
	noise_note 8, 15, 1, 84
	sound_ret
Sfx_CometPunch:
	db	008h
	dw	$ffff & Sfx_CometPunch_Ch9
Sfx_CometPunch_Ch9:
	noise_note 15, 8, -7, 17
	noise_note 4, 15, -7, 18
	noise_note 10, 15, 1, 85
	sound_ret
Sfx_MegaPunch:
	db	008h
	dw	$ffff & Sfx_MegaPunch_Ch9
Sfx_MegaPunch_Ch9:
	noise_note 15, 8, -7, 52
	noise_note 8, 15, 2, 53
	noise_note 10, 15, 1, 85
	sound_ret


