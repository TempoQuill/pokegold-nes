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
Sfx_Scratch:
	db	008h
	dw	$ffff & Sfx_Scratch_Ch9
Sfx_Scratch_Ch9:
	noise_note 15, 9, -7, 35
	noise_note 8, 15, 1, 33
	sound_ret
Sfx_Vicegrip:
	db	008h
	dw	$ffff & Sfx_Vicegrip_Ch9
Sfx_Vicegrip_Ch9:
	noise_note 2, 14, 1, 75
	noise_note 10, 15, 1, 68
	noise_note 2, 14, 1, 58
	noise_note 6, 15, 1, 52
	sound_ret
Sfx_RazorWind:
	db	008h
	dw	$ffff & Sfx_RazorWind_Ch9
Sfx_RazorWind_Ch9:
	noise_note 2, 15, 4, 68
	noise_note 2, 15, 4, 20
	noise_note 15, 15, 1, 50
	sound_ret
Sfx_Cut:
	db	008h
	dw	$ffff & Sfx_Cut_Ch9
Sfx_Cut_Ch9:
	noise_note 4, 8, -7, 85
	noise_note 2, 15, 4, 68
	noise_note 8, 15, 4, 34
	noise_note 15, 15, 2, 33
	sound_ret
Sfx_WingAttack:
	db	008h
	dw	$ffff & Sfx_WingAttack_Ch9
Sfx_WingAttack_Ch9:
	noise_note 8, 4, -7, 35
	noise_note 4, 12, 4, 34
	noise_note 6, 15, 2, 35
	sound_loop 4, Sfx_WingAttack_Ch9
	sound_ret
Sfx_Whirlwind:
	db	008h
	dw	$ffff & Sfx_Whirlwind_Ch9
Sfx_Whirlwind_Ch9:
	noise_note 8, 4, -7, 51
	noise_note 4, 12, 4, 34
	noise_note 6, 15, 2, 35
	noise_note 15, 15, 2, 34
	sound_ret
Sfx_Bind:
	db	008h
	dw	$ffff & Sfx_Bind_Ch9
Sfx_Bind_Ch9:
	noise_note 8, 15, -7, 50
	noise_note 8, 15, 4, 67
	noise_note 8, 15, 2, 84
	noise_note 8, 15, 1, 101
	sound_ret
Sfx_VineWhip:
	db	008h
	dw	$ffff & Sfx_VineWhip_Ch9
Sfx_VineWhip_Ch9:
	noise_note 1, 12, 2, 51
	noise_note 2, 15, 2, 33
	noise_note 1, 14, 2, 51
	noise_note 1, 12, 2, 50
	noise_note 1, 9, 2, 18
	noise_note 1, 11, 2, 49
	noise_note 12, 9, 1, 16
	noise_note 8, 15, 2, 65
	sound_ret
Sfx_DoubleKick:
	db	008h
	dw	$ffff & Sfx_DoubleKick_Ch9
Sfx_DoubleKick_Ch9:
	noise_note 1, 9, 4, 35
	noise_note 1, 11, 4, 34
	noise_note 8, 15, 1, 68
	sound_ret
Sfx_MegaKick:
	db	008h
	dw	$ffff & Sfx_MegaKick_Ch9
Sfx_MegaKick_Ch9:
	noise_note 2, 9, 4, 51
	noise_note 4, 11, 4, 34
	noise_note 4, 15, 1, 68
	noise_note 8, 15, 1, 85
	sound_ret
Sfx_Headbutt:
	db	008h
	dw	$ffff & Sfx_Headbutt_Ch9
Sfx_Headbutt_Ch9:
	noise_note 4, 15, -7, 85
	noise_note 8, 15, 1, 101
	sound_ret
Sfx_HornAttack:
	db	008h
	dw	$ffff & Sfx_HornAttack_Ch9
Sfx_HornAttack_Ch9:
	noise_note 2, 8, 4, 67
	noise_note 2, 12, 4, 34
	noise_note 8, 15, 2, 52
	sound_ret
Sfx_Tackle:
	db	008h
	dw	$ffff & Sfx_Tackle_Ch9
Sfx_Tackle_Ch9:
	noise_note 4, 15, 1, 52
	noise_note 15, 15, 2, 100
	sound_ret
Sfx_PoisonSting:
	db	008h
	dw	$ffff & Sfx_PoisonSting_Ch9
Sfx_PoisonSting_Ch9:
	noise_note 2, 15, 1, 34
	noise_note 15, 15, 2, 18
	sound_ret
Sfx_Powder:
	db	008h
	dw	$ffff & Sfx_Powder_Ch9
Sfx_Powder_Ch9:
	noise_note 2, 12, 2, 1
	noise_note 15, 15, 4, 1
	noise_note 15, 15, 2, 1
	sound_ret
Sfx_Doubleslap:
	db	008h
	dw	$ffff & Sfx_Doubleslap_Ch9
Sfx_Doubleslap_Ch9:
	noise_note 8, 15, 1, 50
	noise_note 8, 15, 1, 51
	sound_ret
Sfx_Bite:
	db	009h
	dw	$ffff & Sfx_Bite_Ch10
Sfx_Bite_Ch10:
	dpcm_note 13, DMC_BITE, DMC_BITE_END
	sound_ret
Sfx_JumpKick:
	db	008h
	dw	$ffff & Sfx_JumpKick_Ch9
Sfx_JumpKick_Ch9:
	noise_note 3, 9, 2, 49
	noise_note 3, 11, 2, 50
	noise_note 3, 12, 2, 51
	noise_note 8, 15, 1, 84
	sound_ret
Sfx_Stomp:
	db	008h
	dw	$ffff & Sfx_Stomp_Ch9
Sfx_Stomp_Ch9:
	noise_note 12, 15, 1, 84
	noise_note 8, 15, 1, 100
	sound_ret
Sfx_TailWhip:
	db	008h
	dw	$ffff & Sfx_TailWhip_Ch9
Sfx_TailWhip_Ch9:
	noise_note 2, 15, 1, 51
	noise_note 2, 12, 1, 50
	noise_note 2, 10, 1, 49
	noise_note 15, 8, 2, 50
	noise_note 8, 15, 1, 52
	sound_ret
Sfx_KarateChop:
	db	008h
	dw	$ffff & Sfx_KarateChop_Ch9
Sfx_KarateChop_Ch9:
	noise_note 2, 13, 2, 50
	noise_note 15, 15, 2, 67
	sound_ret
Sfx_Submission:
	db	008h
	dw	$ffff & Sfx_Submission_Ch9
Sfx_Submission_Ch9:
	noise_note 2, 15, 2, 67
	noise_note 4, 11, 5, 50
	noise_note 9, 8, 6, 49
	noise_note 7, 6, 4, 0
	noise_note 15, 15, 2, 85
	sound_ret
Sfx_WaterGun:
	db	009h
	dw	$ffff & Sfx_WaterGun_Ch10
Sfx_WaterGun_Ch10:
	dpcm_note 31, DMC_WATER_GUN, DMC_WATER_GUN_END
	sound_ret
Sfx_SwordsDance:
	db	008h
	dw	$ffff & Sfx_SwordsDance_Ch9
Sfx_SwordsDance_Ch9:
	noise_note 15, 4, -7, 65
	noise_note 8, 8, -7, 65
	noise_note 8, 12, -7, 65
	noise_note 8, 15, 2, 66
	noise_note 15, 15, 2, 65
	sound_ret
Sfx_Thunder:
	db	008h
	dw	$ffff & Sfx_Thunder_Ch9
Sfx_Thunder_Ch9:
	noise_note 10, 15, -7, 80
	noise_note 15, 15, -7, 81
	noise_note 8, 15, 2, 81
	noise_note 6, 15, -7, 82
	noise_note 6, 15, -7, 83
	noise_note 8, 15, -7, 84
	noise_note 15, 15, 2, 84
	sound_ret
Sfx_Supersonic:
	db	045h
	dw	$ffff & Sfx_Supersonic_Ch6
	db	006h
	dw	$ffff & Sfx_Supersonic_Ch7
	db	008h
	dw	$ffff & Sfx_Supersonic_Ch9
Sfx_Supersonic_Ch6:
	duty_cycle 2
	square_note 15, 3, -7, 1994
@loop:
	square_note 15, 13, -7, 1994
	db	sound_loop_cmd, 4
	dw	$ffff & @loop
	square_note 15, 13, 1, 1994
	sound_ret
Sfx_Supersonic_Ch7:
	duty_cycle_pattern 2, 3, 0, 3
	square_note 15, 2, -7, 2001
@loop:
	square_note 15, 12, -7, 2000
	db	sound_loop_cmd, 4
	dw	$ffff & @loop
	square_note 15, 12, 1, 2001
	sound_ret
Sfx_Supersonic_Ch9:
	noise_note 3, 9, 7, 18
	noise_note 3, 10, 1, 17
	sound_loop 10, Sfx_Supersonic_Ch9
	sound_ret
Sfx_Leer:
	db	045h
	dw	$ffff & Sfx_Leer_Ch6
	db	006h
	dw	$ffff & Sfx_Leer_Ch7
	db	008h
	dw	$ffff & Sfx_Leer_Ch9
Sfx_Leer_Ch6:
	duty_cycle 0
	square_note 0, 15, 1, 1994
	square_note 0, 15, 1, 1830
	sound_loop 12, Sfx_Leer_Ch6
	sound_ret
Sfx_Leer_Ch7:
	duty_cycle_pattern 2, 3, 0, 3
	square_note 0, 14, 1, 1995
	square_note 0, 14, 1, 1831
	sound_loop 12, Sfx_Leer_Ch7
	sound_ret
Sfx_Leer_Ch9:
	noise_note 1, 13, 1, 73
	noise_note 1, 13, 1, 41
	sound_loop 6, Sfx_Leer_Ch9
	sound_ret
Sfx_Ember:
	db	025h
	dw	$ffff & Sfx_Ember_Ch6
	db	008h
	dw	$ffff & Sfx_Ember_Ch9
Sfx_Ember_Ch6:
	duty_cycle_pattern 3, 0, 2, 1
	square_note 11, 15, 3, 288
	square_note 9, 13, 3, 336
	sound_loop 5, Sfx_Ember_Ch6
	square_note 8, 14, 3, 304
	square_note 15, 12, 2, 272
	sound_ret
Sfx_Ember_Ch9:
	noise_note 10, 15, 3, 53
	noise_note 14, 15, 6, 69
	sound_loop 4, Sfx_Ember_Ch9
	noise_note 12, 15, 4, 188
	noise_note 12, 15, 5, 156
	noise_note 15, 15, 4, 172
	sound_ret
Sfx_Bubblebeam:
	db	045h
	dw	$ffff & Sfx_Bubblebeam_Ch6
	db	006h
	dw	$ffff & Sfx_Bubblebeam_Ch7
	db	008h
	dw	$ffff & Sfx_Bubblebeam_Ch9
Sfx_Bubblebeam_Ch6:
	duty_cycle_pattern 0, 3, 2, 1
	square_note 4, 15, 4, 1536
	square_note 3, 12, 4, 1280
	square_note 5, 11, 5, 1536
	square_note 13, 14, 2, 1728
	sound_loop 3, Sfx_Bubblebeam_Ch6
	square_note 8, 13, 1, 1536
	sound_ret
Sfx_Bubblebeam_Ch7:
	duty_cycle_pattern 2, 0, 3, 1
	square_note 5, 14, 4, 1504
	square_note 4, 11, 4, 1248
	square_note 6, 10, 5, 1512
	square_note 14, 13, 1, 1696
	sound_loop 3, Sfx_Bubblebeam_Ch7
	sound_ret
Sfx_Bubblebeam_Ch9:
	noise_note 5, 12, 3, 51
	noise_note 3, 9, 2, 67
	noise_note 10, 11, 5, 51
	noise_note 15, 12, 3, 50
	sound_loop 2, Sfx_Bubblebeam_Ch9
	sound_ret
Sfx_HydroPump:
	db	025h
	dw	$ffff & Sfx_HydroPump_Ch6
	db	008h
	dw	$ffff & Sfx_HydroPump_Ch9
Sfx_HydroPump_Ch6:
	duty_cycle_pattern 3, 1, 0, 2
	square_note 3, 8, 1, 768
	square_note 3, 12, 1, 1024
	square_note 3, 15, 1, 1280
	square_note 3, 11, 1, 1024
	square_note 3, 7, 1, 768
	sound_loop 5, Sfx_HydroPump_Ch6
	square_note 8, 8, 1, 1024
	sound_ret
Sfx_HydroPump_Ch9:
	noise_note 3, 6, 2, 34
	noise_note 3, 10, 2, 50
	noise_note 3, 13, 2, 51
	noise_note 3, 9, 2, 35
	noise_note 3, 5, 2, 18
	sound_loop 5, Sfx_HydroPump_Ch9
	noise_note 8, 8, 1, 18
	sound_ret
Sfx_Surf:
	db	045h
	dw	$ffff & Sfx_Surf_Ch6
	db	006h
	dw	$ffff & Sfx_Surf_Ch7
	db	008h
	dw	$ffff & Sfx_Surf_Ch9
Sfx_Surf_Ch6:
	duty_cycle_pattern 0, 3, 2, 1
	square_note 15, 15, 4, 1280
	square_note 15, 12, 4, 1024
	square_note 15, 14, 2, 1472
	sound_loop 3, Sfx_Surf_Ch6
	sound_ret
Sfx_Surf_Ch7:
	duty_cycle_pattern 2, 0, 3, 1
	square_note 7, 14, 4, 1072
	square_note 15, 11, 4, 816
	square_note 15, 10, 2, 1080
	sound_loop 4, Sfx_Surf_Ch7
	sound_ret
Sfx_Surf_Ch9:
	noise_note 9, 15, 4, 68
	noise_note 9, 15, 2, 67
	noise_note 15, 15, 4, 66
	noise_note 15, 15, 4, 65
	sound_loop 3, Sfx_Surf_Ch9
	sound_ret
Sfx_Psybeam:
	db	045h
	dw	$ffff & Sfx_Psybeam_Ch6
	db	006h
	dw	$ffff & Sfx_Psybeam_Ch7
	db	008h
	dw	$ffff & Sfx_Psybeam_Ch9
Sfx_Psybeam_Ch6:
	duty_cycle_pattern 2, 2, 0, 1
	square_note 10, 15, 1, 1600
	square_note 10, 15, 3, 1664
	square_note 10, 15, 2, 1568
	sound_loop 4, Sfx_Psybeam_Ch6
	square_note 10, 15, 1, 1600
	sound_ret
Sfx_Psybeam_Ch7:
	duty_cycle_pattern 2, 3, 0, 3
	square_note 10, 15, 3, 1393
	square_note 7, 14, 3, 1329
	square_note 10, 15, 1, 1361
	sound_loop 4, Sfx_Psybeam_Ch7
	square_note 10, 15, 1, 1393
	sound_ret
Sfx_Psybeam_Ch9:
	noise_note 2, 13, 1, 74
	noise_note 2, 13, 2, 42
	sound_loop 21, Sfx_Psybeam_Ch9
	sound_ret
Sfx_Charge:
	db	045h
	dw	$ffff & Sfx_Charge_Ch6
	db	006h
	dw	$ffff & Sfx_Charge_Ch7
	db	008h
	dw	$ffff & Sfx_Charge_Ch9
Sfx_Charge_Ch6:
	duty_cycle 0
	square_note 2, 15, 1, 512
	square_note 3, 15, 1, 1792
	square_note 4, 15, 1, 1280
	square_note 5, 15, 1, 2032
	sound_loop 8, Sfx_Charge_Ch6
	sound_ret
Sfx_Charge_Ch7:
	duty_cycle_pattern 2, 3, 0, 3
	square_note 2, 14, 1, 770
	square_note 3, 14, 1, 2034
	square_note 4, 14, 1, 1538
	square_note 5, 14, 1, 1794
	sound_loop 8, Sfx_Charge_Ch7
	sound_ret
Sfx_Charge_Ch9:
	noise_note 2, 13, 3, 16
	noise_note 3, 13, 3, 17
	noise_note 2, 13, 2, 16
	noise_note 5, 13, 2, 18
	sound_loop 9, Sfx_Charge_Ch9
	sound_ret
Sfx_Thundershock:
	db	045h
	dw	$ffff & Sfx_Thundershock_Ch6
	db	006h
	dw	$ffff & Sfx_Thundershock_Ch7
	db	008h
	dw	$ffff & Sfx_Thundershock_Ch9
Sfx_Thundershock_Ch6:
	duty_cycle_pattern 0, 2, 2, 3
	square_note 3, 15, 1, 2032
	square_note 4, 15, 2, 512
	sound_loop 8, Sfx_Thundershock_Ch6
	sound_ret
Sfx_Thundershock_Ch7:
	duty_cycle_pattern 2, 3, 0, 3
	square_note 4, 14, 2, 514
	square_note 4, 14, 1, 2018
	sound_loop 9, Sfx_Thundershock_Ch7
	sound_ret
Sfx_Thundershock_Ch9:
	noise_note 4, 15, -7, 67
	noise_note 4, 15, 2, 68
	sound_loop 9, Sfx_Thundershock_Ch9
	sound_ret
Sfx_Psychic:
	db	045h
	dw	$ffff & Sfx_Psychic_Ch6
	db	006h
	dw	$ffff & Sfx_Psychic_Ch7
	db	008h
	dw	$ffff & Sfx_Psychic_Ch9
Sfx_Psychic_Ch6:
	duty_cycle 2
	pitch_sweep 5, 6
	square_note 8, 12, 4, 1981
	square_note 8, 12, 4, 1982
	square_note 8, 12, 4, 1983
	square_note 8, 12, 4, 1984
	square_note 15, 12, 4, 1985
	square_note 15, 15, 2, 1984
	pitch_sweep 0, 1
	sound_ret
Sfx_Psychic_Ch7:
	duty_cycle 2
	square_note 8, 12, 4, 1904
	square_note 8, 12, 4, 1889
	square_note 8, 12, 4, 1890
	square_note 8, 12, 4, 1891
	square_note 15, 12, 4, 1892
	square_note 15, 15, 2, 1892
	sound_ret
Sfx_Psychic_Ch9:
	noise_note 15, 3, -7, 20
	noise_note 15, 12, -7, 19
	noise_note 15, 12, -7, 18
	noise_note 15, 12, -7, 17
	noise_note 15, 12, -7, 16
	noise_note 15, 12, 2, 16
	sound_ret
Sfx_Screech:
	db	025h
	dw	$ffff & Sfx_Screech_Ch6
	db	006h
	dw	$ffff & Sfx_Screech_Ch7
Sfx_Screech_Ch6:
	duty_cycle 2
	square_note 15, 15, -7, 2016
	square_note 15, 15, -7, 2016
	square_note 15, 15, -7, 2016
	square_note 15, 15, -7, 2016
	square_note 15, 15, 2, 2016
	sound_ret
Sfx_Screech_Ch7:
	duty_cycle 3
	square_note 15, 15, -7, 2018
	square_note 15, 15, -7, 2017
	square_note 15, 15, -7, 2018
	square_note 15, 15, -7, 2017
	square_note 15, 15, 2, 2018
	sound_ret
Sfx_BoneClub:
	db	025h
	dw	$ffff & Sfx_BoneClub_Ch6
	db	006h
	dw	$ffff & Sfx_BoneClub_Ch7
Sfx_BoneClub_Ch6:
	duty_cycle 2
	pitch_sweep 2, -3
	square_note 8, 15, 1, 1830
	pitch_sweep 0, 1
	sound_ret
Sfx_BoneClub_Ch7:
	duty_cycle 3
	square_note 8, 15, 1, 1831
	sound_ret
Sfx_Sharpen:
	db	025h
	dw	$ffff & Sfx_Sharpen_Ch6
	db	006h
	dw	$ffff & Sfx_Sharpen_Ch7
Sfx_Sharpen_Ch6:
	duty_cycle 2
	square_note 6, 15, 1, 1280
	square_note 6, 15, 1, 1408
	square_note 6, 15, 1, 1536
	square_note 6, 15, 1, 1664
	square_note 8, 15, 1, 1792
	sound_ret
Sfx_Sharpen_Ch7:
	duty_cycle 3
	square_note 6, 14, 1, 1296
	square_note 6, 14, 1, 1424
	square_note 6, 14, 1, 1552
	square_note 6, 14, 1, 1680
	square_note 8, 14, 1, 1808
	sound_ret




Sfx_Protect:
	db	025h
	dw	$ffff & Sfx_Protect_Ch6
	db	008h
	dw	$ffff & Sfx_Protect_Ch9
Sfx_Protect_Ch6:
	toggle_music
	note_type 1, 15, 1
	duty_cycle 0
@loop1:
	octave 5
	note F_, 5
	note A_, 5
	octave 6
	note C_, 5
	note E_, 5
	octave 5
	note F#, 5
	note A#, 5
	octave 6
	note C#, 5
	note E_, 5
	db	sound_loop_cmd, 3
	dw	$ffff & @loop1
	volume_envelope 12, 1
	octave 5
	note F_, 5
	note A_, 5
	volume_envelope 9, 1
	octave 6
	note C_, 5
	note E_, 5
	volume_envelope 7, 1
	octave 5
	note F#, 5
	note A#, 5
	volume_envelope 5, 1
	octave 6
	note C#, 5
	note E_, 5
	sound_ret
Sfx_Protect_Ch9:
	noise_note 9, 9, -6, 0
	noise_note 9, 11, -6, 17
	sound_loop 6, Sfx_Protect_Ch9
	noise_note 9, 10, 7, 0
	noise_note 16, 7, 5, 17
	sound_ret
Sfx_Sketch:
	db	005h
	dw	$ffff & Sfx_Sketch_Ch6
Sfx_Sketch_Ch6:
	duty_cycle 1
	pitch_sweep 2, 6
@loop1:
	square_note 2, 15, 1, 1760
	square_note 13, 10, -7, $9580
	square_note 4, 0, 0, 0
	square_note 9, 15, 4, $3718
	db	sound_loop_cmd, 3
	dw	$ffff & @loop1
	pitch_sweep 0, 1
	sound_ret
Sfx_RainDance:
	db	008h
	dw	$ffff & Sfx_RainDance_Ch9
Sfx_RainDance_Ch9:
	noise_note 11, 7, -5, 80
	noise_note 6, 7, -5, 79
	noise_note 11, 7, -7, 71
	noise_note 15, 6, -6, 34
	sound_loop 3, Sfx_RainDance_Ch9
	noise_note 6, 6, -5, 80
	noise_note 5, 5, -5, 79
	noise_note 5, 4, -7, 71
	noise_note 10, 3, 2, 70
	sound_ret



Sfx_EggCrack:
	db	005h
	dw	$ffff & Sfx_EggCrack_Ch6
Sfx_EggCrack_Ch6:
	toggle_music
	note_type 1, 15, 1
	duty_cycle 0
	octave 4
	note D#, 1
	note C_, 1
	rest 1
	note F#, 1
	sound_ret
Sfx_Evolved:
	db	005h
	dw	$ffff & Sfx_Evolved_Ch6
Sfx_Evolved_Ch6:
	toggle_music
	note_type 1, 12, 1
	octave 4
	note C_, 2
	note E_, 2
	note C_, 2
	note E_, 3
	note G_, 3
	note B_, 3
	octave 5
	note E_, 2
	note C_, 2
	note E_, 2
	note G_, 3
	note B_, 3
	octave 7
	note C_, 16
	sound_ret
Sfx_MasterBall:
	db	005h
	dw	$ffff & Sfx_MasterBall_Ch6
Sfx_MasterBall_Ch6:
	toggle_music
	duty_cycle 1
	note_type 2, 14, 1
	octave 6
	note B_, 2
	octave 7
	note D_, 2
	octave 6
	note B_, 2
	note G_, 2
	note B_, 2
	note A#, 2
	note A_, 2
	note A#, 2
	note A_, 2
	volume_envelope 12, 1
	note G#, 2
	note G_, 2
	note F#, 2
	volume_envelope 9, 1
	note F_, 2
	note E_, 2
	note D#, 2
	volume_envelope 6, 1
	note D_, 2
	note C#, 2
	note C_, 2
	sound_ret
Sfx_EggHatch:
	db	005h
	dw	$ffff & Sfx_EggHatch_Ch6
Sfx_EggHatch_Ch6:
	toggle_music
	note_type 2, 15, 1
	duty_cycle 2
	octave 5
	note E_, 1
	note C_, 1
	rest 1
	note G_, 1
	note D_, 1
	volume_envelope 14, 2
	note B_, 7
	volume_envelope 8, 2
	note B_, 7
	volume_envelope 4, 2
	note B_, 7
	sound_ret
Sfx_GsIntroCharizardFireball:
	db	008h
	dw	$ffff & Sfx_GsIntroCharizardFireball_Ch9
Sfx_GsIntroCharizardFireball_Ch9:
	noise_note 8, 12, -7, 77
	noise_note 8, 15, 1, 55
@loop1:
	noise_note 1, 15, 8, 79
	noise_note 0, 12, 8, 38
	noise_note 1, 13, 8, 95
	noise_note 0, 10, 8, 55
	db	sound_loop_cmd, 12
	dw	$ffff & @loop1
	noise_note 3, 15, 8, 111
	noise_note 4, 13, 8, 95
	noise_note 12, 13, 8, 92
	noise_note 40, 13, 3, 79
	sound_ret
Sfx_GsIntroPokemonAppears:
	db	008h
	dw	$ffff & Sfx_GsIntroPokemonAppears_Ch9
Sfx_GsIntroPokemonAppears_Ch9:
	noise_note 1, 8, 8, 79
	noise_note 2, 8, -7, 2
	noise_note 2, 5, -7, 18
	noise_note 2, 3, -7, 34
	noise_note 0, 15, 8, 39
	noise_note 1, 15, 8, 79
	noise_note 8, 15, 1, 0
	sound_ret
Sfx_Flash:
	db	005h
	dw	$ffff & Sfx_Flash_Ch6
Sfx_Flash_Ch6:
	duty_cycle 1
	pitch_sweep 6, -6
	square_note 1, 4, 0, 2024
	square_note 1, 6, 0, 2024
	square_note 2, 8, 0, 2024
	square_note 5, 10, 0, 2024
	square_note 6, 10, 0, 2024
	square_note 7, 8, 0, 2024
	square_note 8, 6, 0, 2024
	square_note 9, 3, 0, 2024
	square_note 15, 1, 2, 2024
	pitch_sweep 0, 1
	sound_ret
Sfx_GameFreakLogoGs:
	db	005h
	dw	$ffff & Sfx_GameFreakLogoGs_Ch6
Sfx_GameFreakLogoGs_Ch6:
	duty_cycle 3
	pitch_sweep 7, -6
	square_note 4, 5, 5, 2018
	square_note 5, 7, 5, 2018
	square_note 6, 9, 4, 2018
	square_note 7, 11, 4, 2018
	square_note 8, 11, 3, 2018
	square_note 9, 9, 3, 2018
	square_note 10, 7, 2, 2018
	square_note 10, 5, 3, 2018
	square_note 10, 3, 4, 2018
	square_note 10, 1, 5, 2018
	pitch_sweep 0, 1
	sound_ret
Sfx_NotVeryEffective:
	db	008h
	dw	$ffff & Sfx_NotVeryEffective_Ch9
Sfx_NotVeryEffective_Ch9:
	noise_note 4, 15, 1, 95
	noise_note 1, 10, 0, 66
	noise_note 16, 15, 1, 83
	sound_ret
Sfx_Damage:
	db	008h
	dw	$ffff & Sfx_Damage_Ch9
Sfx_Damage_Ch9:
	noise_note 4, 15, 1, 94
	noise_note 1, 10, 0, 18
	noise_note 4, 15, 0, 50
	noise_note 16, 15, 1, 68
	sound_ret
Sfx_SuperEffective:
	db	008h
	dw	$ffff & Sfx_SuperEffective_Ch9
Sfx_SuperEffective_Ch9:
	noise_note 3, 15, 1, 79
	noise_note 1, 12, 8, 34
	noise_note 2, 15, 8, 63
	noise_note 3, 13, 0, 21
	noise_note 32, 15, 2, 53
	sound_ret
Sfx_BallBounce:
	db	009h
	dw	$ffff & Sfx_BallBounce_Ch10
Sfx_BallBounce_Ch10:
	dpcm_note 32, DMC_BALL_BOUNCE_1, DMC_BALL_BOUNCE_1_END
	dpcm_note 32, DMC_BALL_BOUNCE_2, DMC_BALL_BOUNCE_2_END
	dpcm_note 32, DMC_BALL_BOUNCE_3, DMC_BALL_BOUNCE_3_END
	dpcm_note 32, DMC_BALL_BOUNCE_4, DMC_BALL_BOUNCE_4_END
	sound_ret


