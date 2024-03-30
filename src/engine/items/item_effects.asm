_DoItemEffect:
	LDA wCurItem
	STA wNamedObjectIndex
	home_ref GetItemName
	home_ref CopyName1
	LDA #1
	STA wItemEffectSucceeded
	LDX wCurItem
	DEX
	LDA ItemEffects_Lo, X
	SEC
	SBC #1
	TAY
	LDA ItemEffects_Hi, X
	SBC #0
	PHA
	PHY
	RTS
	
; entries correspond to item constants
ItemEffects_Hi:
	.dh PokeBallEffect	; MASTER_BALL
	.dh PokeBallEffect	; ULTRA_BALL
	.dh NoEffect		; BRIGHTPOWDER
	.dh PokeBallEffect	; GREAT_BALL
	.dh PokeBallEffect	; POKE_BALL
	.dh TownMapEffect	; TOWN_MAP
	.dh BicycleEffect	; BICYCLE
	.dh EvoStoneEffect	; MOON_STONE
	.dh StatusHealingEffect	; ANTIDOTE
	.dh StatusHealingEffect	; BURN_HEAL
	.dh StatusHealingEffect	; ICE_HEAL
	.dh StatusHealingEffect	; AWAKENING
	.dh StatusHealingEffect	; PARLYZ_HEAL
	.dh FullRestoreEffect	; FULL_RESTORE
	.dh RestoreHPEffect	; MAX_POTION
	.dh RestoreHPEffect	; HYPER_POTION
	.dh RestoreHPEffect	; SUPER_POTION
	.dh RestoreHPEffect	; POTION
	.dh EscapeRopeEffect	; ESCAPE_ROPE
	.dh RepelEffect		; REPEL
	.dh RestorePPEffect	; MAX_ELIXER
	.dh EvoStoneEffect	; FIRE_STONE
	.dh EvoStoneEffect	; THUNDERSTONE
	.dh EvoStoneEffect	; WATER_STONE
	; ... tbc
	
; entries correspond to item constants
ItemEffects_Lo:
	.dl PokeBallEffect	; MASTER_BALL
	.dl PokeBallEffect	; ULTRA_BALL
	.dl NoEffect		; BRIGHTPOWDER
	.dl PokeBallEffect	; GREAT_BALL
	.dl PokeBallEffect	; POKE_BALL
	.dl TownMapEffect	; TOWN_MAP
	.dl BicycleEffect	; BICYCLE
	.dl EvoStoneEffect	; MOON_STONE
	.dl StatusHealingEffect	; ANTIDOTE
	.dl StatusHealingEffect	; BURN_HEAL
	.dl StatusHealingEffect	; ICE_HEAL
	.dl StatusHealingEffect	; AWAKENING
	.dl StatusHealingEffect	; PARLYZ_HEAL
	.dl FullRestoreEffect	; FULL_RESTORE
	.dl RestoreHPEffect	; MAX_POTION
	.dl RestoreHPEffect	; HYPER_POTION
	.dl RestoreHPEffect	; SUPER_POTION
	.dl RestoreHPEffect	; POTION
	.dl EscapeRopeEffect	; ESCAPE_ROPE
	.dl RepelEffect		; REPEL
	.dl RestorePPEffect	; MAX_ELIXER
	.dl EvoStoneEffect	; FIRE_STONE
	.dl EvoStoneEffect	; THUNDERSTONE
	.dl EvoStoneEffect	; WATER_STONE
	; ... tbc
	
PokeBallEffect:
	LDX wBattleMode
	DEX
	JNE UseBallInTrainerBattle
	
	LDA wPartyCount
	CMP #PARTY_LENGTH
	BNE @room_in_party
	
	; ld a, BANK(sBox + BOX_COUNT)
	; jsr OpenSRAM
	LDA #RAM_SAVE
	STA MMC5_PRGBankSwitch1
	LDA sBox + BOX_COUNT
	PHA
	LDA #RAM_MAIN
	STA MMC5_PRGBankSwitch1
	PLA
	CMP #MONS_PER_BOX
	JEQ Ball_BoxIsFullMessage
	
@room_in_party:
	LDA #0
	STA wWildMon
	LDA wCurItem
	CMP #PARK_BALL
	JSC nz, ReturnToBattle_UseBall
	LDA wOptions
	RSB NO_TEXT_SCROLL
	STA wOptions
	LDA #<ItemUsedText
	STA zTextPointer
	LDA #>ItemUsedText
	STA zTextPointer + 1
	home_ref PrintText
	
	LDX wEnemyMonCatchRate
	LDA wBattleMode
	CMP #BATTLETYPE_TUTORIAL
	JEQ @catch_without_fail
	LDA wCurItem
	CMP #MASTER_BALL
	JEQ @catch_without_fail
	LDY wCurItem
	LDA #<BallMultiplierFunctionTable
	STA zTemp16Bit1
	LDA #>BallMultiplierFunctionTable
	STA zTemp16Bit1 + 1
-	LDA (zTemp16Bit1), y
	INY
	CMP #$ff
	BEQ @skip_or_return_from_ball_fn
	STX zTemp8Bit1
	CMP zTemp8Bit1
	BEQ @call_ball_function
	INY
	INY
	jmp -
@call_ball_function:
	LDA (zTemp16Bit1), y
	TAX
	INY
	LDA (zTemp16Bit1), y
	STX zTemp16Bit1
	STA zTemp16Bit1 + 1
	JSR @call_fn
	jmp @skip_or_return_from_ball_fn
@call_fn:
	jmp (zTemp16Bit1)
	
@skip_or_return_from_ball_fn:
	LDA wCurItem
	TXA
	CMP #LEVEL_BALL
	BNE +
	JMP @skip_hp_calc
+
	; todo:
	STA zMultiplicand + 2
	; ldh [hMultiplicand + 2], a

	LDA #>wEnemyMon + BAT_HP
	STA zMonPointer + 1
	LDA #<wEnemyMon + BAT_HP
	STA zMonPointer
	LDY #3
	; ld hl, wEnemyMon + BAT_HP
-	LDA (zMonPointer), Y
	STA zScratchWord, Y
	DEY
	BPL -
	LDA #0
	STA zScratchWord + 4
	STA zScratchWord + 5
	; ld b, [hl]
	; inc hl
	; ld c, [hl]
	; inc hl
	; ld d, [hl]
	; inc hl
	; ld e, [hl]
	ASL zScratchWord + 1
	ROL zScratchWord
	; sla c
	; rl b

	LDA #3
	STA MMC5_Multiplier1
	LDA zScratchWord + 2
	STA MMC5_Multiplier2
	LDA MMC5_Multiplier1
	STA zScratchWord + 4
	LDA #3
	STA MMC5_Multiplier1
	LDA zScratchWord + 3
	STA MMC5_Multiplier2
	LDA MMC5_Multiplier1
	STA zScratchWord + 5
	LDA MMC5_Multiplier2
	CLC
	ADC zScratchWord + 4
	STA zScratchWord + 4
	; ld h, d
	; ld l, e
	; add hl, de
	; add hl, de
	; ld d, h
	; ld e, l
	; ld a, d
	; and a
	BEQ @Okay_1
	; jr z, .okay_1

	LSR zScratchWord + 4
	; srl d
	ROR zScratchWord + 5
	; rr e
	LSR zScratchWord + 4
	; srl d
	ROR zScratchWord + 5
	; rr e
	LSR zScratchWord
	; srl b
	ROR zScratchWord + 1
	; rr c
	LSR zScratchWord
	; srl b
	ROR zScratchWord + 1
	; rr c

	LDA zScratchWord + 1
	; ld a, c
	; and a
	BNE @Okay_1
	; jr nz, .okay_1
	LDA #1
	STA zScratchWord + 1
	; ld c, $1
@Okay_1:
; .okay_1
	LDA zScratchWord + 5
	STA zScratchWord
	; ld b, e

	PHA
	; push bc
	; ld a, b
	SEC
	SBC zScratchWord + 1
	STA zMultiplier
	; sub c
	; ldh [hMultiplier], a
	LDA #0
	STA zDividend
	STA zDividend + 1
	STA zDividend + 2
	STA zDividend + 3
	STA zMultiplicand
	STA zMultiplicand + 1
	; xor a
	; ldh [hDividend], a
	; ldh [hMultiplicand], a
	; ldh [hMultiplicand + 1], a
	home_ref Multiply
	; call Multiply
	PLA
	; pop bc
	STA hDivisor
	home_ref Divide
	; ld a, b
	; ldh [hDivisor], a
	; ld b, 4
	; call Divide
	LDA zQuotient + 3
	; ldh a, [hQuotient + 3]
	BNE @status_check
	LDA #1
@status_check:
	TAX
	LDA wEnemyMon + BAT_STATUS
	LDY #10
	AND #1 << FRZ | SLP_MASK
	BNE @addstatus
IFDEF BUGFIXES
	LDA wEnemyMon + BAT_STATUS
ENDIF
	BEQ @vanilla
	LDY #5
	BNE @addstatus
@vanilla:
	LDY #0
@addstatus:
	TXA
	STY zTemp8Bit1
	CLC
	ADC zTemp8Bit1
	BCC @max_1
	LDA #$ff
@max_1:
	PHY
	LDA wBattleMonItem
IFDEF BUGFIXES
	TXA
ENDIF
;	farcall GetItemHeldEffect ; todo: add its bank
	TAX
	CMP #HELD_CATCH_CHANCE ; 30 march 24: correction
	PLY
	BNE @max_2
	STY zTemp8Bit1
	CLC
	ADC zTemp8Bit1
	BCC @max_2
	LDA #$ff
	
@max_2:
@skip_hp_calc:
	txa
	sta wFinalCatchRate
	jsr Random
	
	cpx
	beq @catch_without_fail
	lda #0
	bcc @fail_to_catch
	
@catch_without_fail:
	lda wEnemyMonSpecies
	
@fail_to_catch:
	sta wWildMon
	ldy #20
	jsr DelayFrames
	
	lda wCurItem
	cmp #POKE_BALL + 1 ; Assumes Master/Ultra/Great come before
	bcs @not_kurt_ball
	lda #POKE_BALL
@not_kurt_ball:
	sta wBattleAnimParam
	
	lda #<ANIM_THROW_POKE_BALL
	sta wFXAnimID
	lda #>ANIM_THROW_POKE_BALL
	sta wFXAnimID + 1
	lda #0
	sta zBattleTurn
	sta wThrownBallWobbleCount
	sta wNumHits
;	predef PlayBattleAnim ; we don't have this macro yet, add bank no.

	lda wWildMon
	bne @caught
	lda wThrownBallWobbleCount
	
	cmp #1
	bne +
	LDA #<BallBrokeFreeText
	STA zTextPointer
	LDA #>BallBrokeFreeText
	STA zTextPointer + 1
	jmp @shake_and_break_free
	
+	cmp #2
	bne +
	LDA #<BallAppearedCaughtText
	STA zTextPointer
	LDA #>BallAppearedCaughtText
	STA zTextPointer + 1
	jmp @shake_and_break_free
	
+	cmp #3
	bne +
	LDA #<BallAlmostHadItText
	STA zTextPointer
	LDA #>BallAlmostHadItText
	STA zTextPointer + 1
	jmp @shake_and_break_free
	
+	cmp #4
	bne @caught
	LDA #<BallSoCloseText
	STA zTextPointer
	LDA #>BallSoCloseText
	STA zTextPointer + 1
	jmp @shake_and_break_free
	
@caught:
	lda wEnemyMonStatus
	pha
	lda wEnemyMonStatus + 2
	pha
	lda wEnemyMonStatus + 3
	pha
	lda wEnemyMonItem
	pha
	lda wEnemySubStatus5
	pha
	ora #SUBSTATUS_TRANSFORMED ; this is how you `SET` on 6502, right?
	sta wEnemySubStatus5
	
; This code is buggy. Any wild Pokémon that has Transformed will be
; caught as a Ditto, even if it was something else like Mew.
; To fix, do not set wTempEnemyMonSpecies to DITTO.
	bit #SUBSTATUS_TRANSFORMED
	beq @ditto
	jmp @not_ditto

@ditto:
	lda #DITTO
	sta wTempEnemyMonSpecies
	jmp @load_data
	
@not_ditto:
	ora #SUBSTATUS_TRANSFORMED ; this is how you `SET` on 6502, right?
	sta wEnemySubStatus5
	lda wEnemyMonDVs
	sta wEnemyBackupDVs
	lda wEnemyMonDVs + 1
	sta wEnemyBackupDVs + 1
	
@load_data:
	lda wTempEnemyMonSpecies
	sta wCurPartySpecies
	lda wEnemyMonLevel
	sta wCurPartyLevel
;	farcall LoadEnemyMon
	
	pla
	sta wEnemySubStatus5
	pla
	sta wEnemyMonItem
	pla
	sta wEnemyMonStatus + 3
	pla
	sta wEnemyMonStatus + 2
	pla
	sta wEnemyMonStatus
	
	lda wEnemySubStatus5
	bit #SUBSTATUS_TRANSFORMED
	bne @Transformed
	; don't know the arguments to CopyBytes
	; ld hl, wWildMonMoves
	; ld de, wEnemyMonMoves
	; ld bc, NUM_MOVES
	jsr CopyBytes
	
	; ld hl, wWildMonPP
	; ld de, wEnemyMonPP
	; ld bc, NUM_MOVES
	jsr CopyBytes
	
@Transformed:
	lda wEnemyMonSpecies
	sta wWildMon
	lda wCurPartySpecies
	sta wWildMon
	lda wBattleType
	cmp #BATTLETYPE_TUTORIAL
	beq @FinishTutorial
	
	lda #<Text_GotchaMonWasCaught
	sta zTextPointer
	lda #>Text_GotchaMonWasCaught
	sta zTextPointer + 1
	jsr PrintText
	
	jsr ClearSprites
	
	ldx wTempSpecies
	dex
	jsr CheckCaughtMon
	
	; ld a, c
	PHX
	ldx wTempSpecies
	dex
	jsr SetSeenAndCaughtMon
	PLX
	bne @skip_pokedex
	
	jsr CheckReceivedDex
	beq @skip_pokedex
	
	lda #<NewDexDataText
	sta zTextPointer
	lda #>NewDexDataText
	sta zTextPointer + 1
	jsr PrintText
	
	jsr ClearSprites
	
	lda wEnemyMonSpecies
	sta wTempSpecies
;	predef NewPokedexEntry

@skip_pokedex:
	lda wBattleType
	cmp #BATTLETYPE_CONTEST
	JEQ @catch_bug_contest_mon
	lda wPartyCount
	cmp #PARTY_LENGTH
	beq @SendToPC ; only if wPartyCount is *equal* to PARTY_LENGTH
	
	lda #PARTYMON
	sta wMonType
	jsr ClearSprites
	
;	predef TryAddMonToParty
	
	lda wCurItem
	cmp #FRIEND_BALL
	bne @SkipPartyMonFriendBall
	
	ldx wPartyCount
	dex
	; don't know the arguments to AddNTimes
	; ld hl, wPartyMon1Happiness
	; ld bc, PARTYMON_STRUCT_LENGTH
	jsr AddNTimes
	
	lda #FRIEND_BALL_HAPPINESS
	sta wPartyMon1Happiness
	
@SkipPartyMonFriendBall:
	lda #<AskGiveNicknameText
	sta zTextPointer
	lda #>AskGiveNicknameText
	sta zTextPointer + 1
	jsr PrintText
	
	lda wCurPartySpecies
	sta wNamedObjectIndex
	jsr GetPokemonName
	
	jsr YesNoBox
	JCS @return_from_capture
	
	ldx wPartyCount
	dex
	stx wCurPartyMon
	; ld hl, wPartyMonNicknames
	; ld bc, MON_NAME_LENGTH
	jsr AddNTimes
	
	; these next are probably unnecessary, since the pointer will probably be in RAM
	; ld d, h
	; ld e, l
	lda #PARTYMON
	sta wMonType
	ldx #NAME_MON
;	farcall NamingScreen
	
	jsr RotateThreePalettesRight
	
	jsr LoadStandardFont
	
	lda #<wStringBuffer1
	sta zScratchWord
	lda #>wStringBuffer1
	sta zScratchWord + 1
	jsr InitName
	
	jmp @return_from_capture
	
@SendToPC:
	jsr ClearSprites
	
;	predef SendMonIntoBox
	
;	ld a, BANK(sBoxCount)
;	call OpenSRAM

	lda sBoxCount
	cmp #MONS_PER_BOX
	bne @BoxNotFullYet
	lda wBattleResult
	ora #BATTLERESULT_BOX_FULL
@BoxNotFullYet:
	lda wCurItem
	cmp #FRIEND_BALL
	bne @SkipBoxMonFriendBall
	; The captured mon is now first in the box
	lda #FRIEND_BALL_HAPPINESS
	sta sBoxMon1Happiness
@SkipBoxMonFriendBall:
;	call CloseSRAM

	lda #<AskGiveNicknameText
	sta zTextPointer
	lda #>AskGiveNicknameText
	sta zTextPointer + 1
	jsr PrintText
	
	lda wCurPartySpecies
	sta wNamedObjectIndex
	jsr GetPokemonName
	
	jsr YesNoBox
	bcs @SkipBoxMonNickname
	
	lda #0
	sta wCurPartyMon
if BOXMON
	lda #BOXMON
endif
	sta wMonType
	lda #<wMonOrItemNameBuffer
	sta zScratchWord
	lda #>wMonOrItemNameBuffer
	sta zScratchWord + 1
	ldx #NAME_MON
;	farcall NamingScreen
	
	; ld a, BANK(sBoxMonNicknames)
	; call OpenSRAM
	
	; ld hl, wMonOrItemNameBuffer
	; ld de, sBoxMonNicknames
	; ld bc, MON_NAME_LENGTH
	jsr CopyBytes
	
	sta wMonType
	lda #<sBoxMonNicknames
	sta zScratchWord
	lda #>sBoxMonNicknames
	sta zScratchWord + 1
	ldx #<wStringBuffer1
	ldy #>wStringBuffer1
	jsr InitName
	
	; call CloseSRAM
	
@SkipBoxMonNickname:
	; ld a, BANK(sBoxMonNicknames)
	; call OpenSRAM
	
	; ld hl, sBoxMonNicknames
	; ld de, wMonOrItemNameBuffer
	; ld bc, MON_NAME_LENGTH
	jsr CopyBytes
	
	; call CloseSRAM
	
	lda #<BallSentToPCText
	sta zScratchWord
	lda #>BallSentToPCText
	sta zScratchWord + 1
	jsr PrintText
	
	jsr RotateThreePalettesRight
	jsr LoadStandardFont
	jmp @return_from_capture
	
@catch_bug_contest_mon:
;	farcall BugContest_SetCaughtContestMon
	jmp @return_from_capture
	
@FinishTutorial:
	lda #<Text_GotchaMonWasCaught
	sta zTextPointer
	lda #>Text_GotchaMonWasCaught
	sta zTextPointer + 1
	
@shake_and_break_free:
	jsr PrintText
	jsr ClearSprites
	
@return_from_capture:
	lda wBattleType
	cmp #BATTLETYPE_TUTORIAL
	REQ
	cmp #BATTLETYPE_DEBUG
	REQ
	cmp #BATTLETYPE_CONTEST
	beq @used_park_ball
	
	lda wWildMon
	beq @toss
	
	jsr ClearBGPalettes
	jsr ClearTilemap
	
@toss:
	pha
	lda #<wNumItems
	sta zScratchWord
	lda #>wNumItems
	sta zScratchWord + 1
	PLX
	inx
	stx wItemQuantityChange
	jmp TossItem
	
@used_park_ball:
	ldx wParkBallsRemaining
	dex
	stx wParkBallsRemaining
	rts
	
BallMultiplierFunctionTable:
; table of routines that increase or decrease the catch rate based on
; which ball is used in a certain situation.
	dbw ULTRA_BALL,  UltraBallMultiplier
	dbw GREAT_BALL,  GreatBallMultiplier
	dbw SAFARI_BALL, SafariBallMultiplier ; Safari Ball, leftover from RBY
	dbw HEAVY_BALL,  HeavyBallMultiplier
	dbw LEVEL_BALL,  LevelBallMultiplier
	dbw LURE_BALL,   LureBallMultiplier
	dbw FAST_BALL,   FastBallMultiplier
	dbw MOON_BALL,   MoonBallMultiplier
	dbw LOVE_BALL,   LoveBallMultiplier
	dbw PARK_BALL,   ParkBallMultiplier
	.db $ff
	
UltraBallMultiplier:
; multiply catch rate by 2
	lda zTemp8Bit1
	asl a
	RCC
	lda #$ff
	rts
	
SafariBallMultiplier:
GreatBallMultiplier:
ParkBallMultiplier:
; multiply catch rate by 1.5
	lda zTemp8Bit1
	lsr a
	clc
	adc zTemp8Bit1
	RCC
	lda #$ff
	rts

HeavyBallMultiplier:
	RTS
	
LevelBallMultiplier:
	RTS
	
LureBallMultiplier:
	RTS
	
FastBallMultiplier:
	RTS
	
MoonBallMultiplier:
	RTS
	
LoveBallMultiplier:
	RTS
	
UseBallInTrainerBattle:
	RTS

Ball_BoxIsFullMessage:
	RTS

ReturnToBattle_UseBall:
	RTS

ItemUsedText:
;	text_far _ItemUsedText
	text_end
	
BallBrokeFreeText:
;	text_far _BallBrokeFreeText
	text_end
	
BallAppearedCaughtText:
;	text_far _BallAppearedCaughtText
	text_end
	
BallAlmostHadItText:
;	text_far _BallAlmostHadItText
	text_end
	
BallSoCloseText:
;	text_far _BallSoCloseText
	text_end
	
Text_GotchaMonWasCaught:
;	text_far _Text_GotchaMonWasCaught
	text_asm
	jsr WaitSFX
	ldy #MUSIC_NONE
	jsr PlayMusic
	jsr DelayFrame
	ldy #MUSIC_CAPTURE
	jsr PlayMusic
	lda #<WaitButtonText
	sta zTextPointer
	lda #>WaitButtonText
	sta zTextPointer + 1
	rts
	
NewDexDataText:
;	text_far _NewDexDataText
	text_end
	
AskGiveNicknameText:
;	text_far _AskGiveNicknameText
	text_end
	
BallSentToPCText:
;	text_far _BallSentToPCText
	text_end
