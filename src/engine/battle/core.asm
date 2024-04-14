; core components of battle engine
; in 6502 asm

; notes: 
; I could provide the code for DelayFrames
; hSerialConnectionStatus seems to be link-related, so I've ommited it

; engine/battle/core.asm
DoBattle:
	LDA #0
	STA wBattleParticipantsNotFainted
	STA wBattleParticipantsIncludingFainted
	STA wBattlePlayerAction
	STA wBattleEnded
	LDA #1 ; there's no "inc a" on the 6502, so this is the best way
	; (this takes 2 bytes, as opposed to "clc / adc #1", which takes 3)
	STA wBattleHasJustStarted
	; todo: 16-bit register pairs and their translation to the 6502
	LDA #>(wOTPartyMon1 + MON_HP)
	STA zMonPointer + 1
	LDA #<(wOTPartyMon1 + MON_HP)
	STA zMonPointer
	LDX #BATTLEACTION_SWITCH1 - 1
@loop:
; .loop
	INX
	LDY #0
	LDA (zMonPointer), Y
	INY
	ORA (zMonPointer), Y
	BNE @alive
	LDA zMonPointer
	CLC
	ADC #PARTYMON_STRUCT_LENGTH
	STA zMonPointer
	LDA zMonPointer + 1
	ADC #0
	STA zMonPointer + 1
	BPL @loop
@alive:
	STX wBattleAction ; assuming d is x
	; wLinkMode check
	; hSerialConnectionStatus check
@not_linked:
	LDX wBattleMode
	DEX
	BEQ @wild
	LDA #0
	STA wEnemySwitchMonIndex
	JSR NewEnemyMonStatus
	JSR ResetEnemyStatLevels
	JSR BreakAttraction
	JSR EnemySwitch
	
@wild:
	LDX #40
	JSR DelayFrames

@player_2:
	home_ref PRG_HomeROM2, LoadTilemapToTempTilemap
	JSR CheckPlayerPartyForFitMon
	BEQ @lostbattle
	home_ref PRG_HomeROM2, SafeLoadTempTilemapToTilemap
	LDA wBattleType
	CMP #BATTLETYPE_DEBUG
	BEQ @tutorial_debug
	CMP #BATTLETYPE_TUTORIAL
	BEQ @tutorial_debug
	LDA #0
	STA wCurPartyMon
@loop2:
	JSR CheckIfCurPartyMonIsFitToFight
	BNE @alive2
	INC wCurPartyMon
	JMP @loop2
	
@alive2:
	LDA wCurBattleMon
	STA wLastPlayerMon
	LDA wCurPartyMon
	STA wCurBattleMon
	TAX
	INX
	LDA wPartySpecies, X
	STA wCurPartySpecies
	STA wTempBattleMonSpecies
	; todo: hlcoord 1, 5
	OGT 2, 1, 5
	LDA #9
	JSR SlideBattlePicOut
	home_ref PRG_HomeROM2, LoadTilemapToTempTilemap
	JSR ResetBattleParticipants
	JSR InitBattleMon
	JSR ResetPlayerStatLevels
	JSR SendOutMonText
	JSR NewBattleMonStatus
	JSR BreakAttraction
	JSR SendOutPlayerMon
	JSR EmptyBattleTextbox
	home_ref PRG_HomeROM2, LoadTilemapToTempTilemap
	home_ref PRG_HomeROM2, SetPlayerTurn
	JSR SpikesDamage
	; wLinkMode check
	; hSerialConnectionStatus check
	LDA #0
	STA wEnemySwitchMonIndex
	JSR NewEnemyMonStatus
	JSR ResetEnemyStatLevels
	JSR BreakAttraction
	JSR EnemySwitch
	home_ref PRG_HomeROM2, SetEnemyTurn
	JSR SpikesDamage
@not_linked_2:		JMP BattleTurn
@tutorial_debug:	JMP BattleMenu
@lostbattle:		JMP LostBattle ; there's no absolute branches on 6502, so this is the best we can do

WildFled_EnemyFled_LinkBattleCanceled:
	CLC
	home_ref PRG_HomeROM2, SafeLoadTempTilemapToTilemap
	LDA wBattleResult
	AND #BATTLERESULT_BITMASK
	ADC #DRAW
	STA wBattleResult
	; wLinkMode check
	LDA wBattleResult
	AND #BATTLERESULT_BITMASK
	STA wBattleResult
	; todo: ld hl, BattleText_EnemyFled
	LDA #>BattleText_EnemyFled
	STA zTextPointer + 1
	LDA #<BattleText_EnemyFled
	STA zTextPointer
@print_text:
	home_ref PRG_HomeROM2, StdBattleTextbox
	JSR StopDangerSound
	LDY #SFX_RUN
	home_ref PRG_HomeROM2, PlaySFX
	home_ref PRG_HomeROM2, SetPlayerTurn
;	farcall DummyPredef38 ; macro
	LDA #1
	STA wBattleEnded
	RTS
	
BattleTurn:
	JSR CheckContestBattleOver
	BCS @quit
	LDA #0
	STA wPlayerIsSwitching
	STA wEnemyIsSwitching
	STA wBattleHasJustStarted
	STA wPlayerJustGotFrozen
	STA wEnemyJustGotFrozen
	STA wCurDamage
	STA wCurDamage + 1
	JSR HandleBerserkGene
	JSR UpdateBattleMonInParty
;	farcall AIChooseMove ; macro
	JSR CheckPlayerLockedIn
	BCS @skip_iteration
@loop1:
	JSR BattleMenu
	BCS @quit
	LDA wBattleEnded
	BNE @quit
	LDA wForcedSwitch
	BNE @quit
@skip_iteration:
	JSR ParsePlayerAction
	BNE @loop1
	JSR EnemyTriesToFlee
	BCS @quit
	JSR DetermineMoveOrder
	BCS @false
	JSR Battle_EnemyFirst
	JMP @proceed
@false:
	JSR Battle_PlayerFirst
@proceed:
	LDA wForcedSwitch
	BNE @quit
	LDA wBattleEnded
	BNE @quit
	JSR HandleBetweenTurnEffects
	LDA wBattleEnded
	JEQ BattleTurn
@quit:
	RTS
	
HandleBetweenTurnEffects:
	; hSerialConnectionStatus check
	JSR CheckFaint_PlayerThenEnemy
	BCS @quit
	JSR HandleFutureSight
	JSR CheckFaint_PlayerThenEnemy
	BCS @quit
	JSR HandleWeather
	JSR CheckFaint_PlayerThenEnemy
	BCS @quit
	JSR HandleWrap
	JSR CheckFaint_PlayerThenEnemy
	BCS @quit
	JSR HandlePerishSong
	JSR CheckFaint_PlayerThenEnemy
	BCS @quit
	JMP @NoMoreFaintingConditions
@quit:
	RTS ; there's no "ret c"
	
@NoMoreFaintingConditions:
	JSR HandleLeftovers
	JSR HandleMysteryberry
	JSR HandleDefrost
	JSR HandleSafeguard
	JSR HandleScreens
	JSR HandleStatBoostingHeldItems
	JSR HandleHealingItems
	JSR UpdateBattleMonInParty
	home_ref PRG_HomeROM2, LoadTilemapToTempTilemap
	JMP HandleEncore
	
CheckFaint_PlayerThenEnemy:
	JSR HasPlayerFainted
	BNE @PlayerNotFainted
	JSR HandlePlayerMonFaint
	LDA wBattleEnded
	BNE @BattleIsOver

@PlayerNotFainted:
	JSR HasEnemyFainted
	BNE @BattleContinues
	JSR HandleEnemyMonFaint
	LDA wBattleEnded
	BNE @BattleIsOver
	
@BattleContinues:
	CLC
	RTS
	
@BattleIsOver:
	SEC
	RTS
	
; nothing uses this at the moment, but something in the future might, so I'm keeping this
CheckFaint_EnemyThenPlayer:
	JSR HasEnemyFainted
	BNE @EnemyNotFainted
	JSR HandleEnemyMonFaint
	LDA wBattleEnded
	BNE @BattleIsOver

@EnemyNotFainted:
	JSR HasPlayerFainted
	BNE @BattleContinues
	JSR HandlePlayerMonFaint
	LDA wBattleEnded
	BNE @BattleIsOver
	
@BattleContinues:
	CLC
	RTS
	
@BattleIsOver:
	SEC
	RTS
	
HandleBerserkGene:
	; hSerialConnectionStatus check
	JSR @player
	JMP @enemy
	
@player:
	home_ref PRG_HomeROM2, SetPlayerTurn
	LDA #>wPartyMon1 + MON_ITEM
	STA zMonPointer + 1
	LDA #<wPartyMon1 + MON_ITEM
	STA zMonPointer
	LDA wCurBattleMon
	JMP @go
	
@enemy:
	home_ref PRG_HomeROM2, SetEnemyTurn
	LDA #>wOTPartyMon1 + MON_ITEM
	STA zMonPointer + 1
	LDA #<wOTPartyMon1 + MON_ITEM
	STA zMonPointer
	LDA wCurOTMon
	
@go:
	PHA
;	farcall GetUserItem
	LDY #0
	LDA (zItemPointer), Y ; ld a, [hl]
	SEC
	STA wNamedObjectIndex
	SBC #BERSERK_GENE
	BNE @end1
	STA (zItemPointer), Y
	PLA
	; anything hl now means zMonPointer
	; ld h, d
	; ld l, e
	; ld a, b
	home_ref PRG_HomeROM2, GetPartyLocation
	LDA #0
	TAY
	STA (zMonPointer), Y
	LDA #BATTLE_VARS_SubStatus3
	home_ref PRG_HomeROM2, GetBattleVarAddr
	PHA
	LDA (zMonPointer), Y
	SSB SUBSTATUS_CONFUSED
	STA (zMonPointer), Y
	LDA #BATTLE_VARS_MOVE_ANIM
	home_ref PRG_HomeROM2, GetBattleVarAddr
	PHA
	LDA #0
	TAY
	STA (zMonPointer), Y
	STA wAttackMissed
	STA wEffectFailed
;	farcall BattleCommand_AttackUp2
	PLA
	STA (zMonPointer), Y
	home_ref PRG_HomeROM2, GetItemName
	LDA #<BattleText_UsersStringBuffer1Activated
	STA zTextPointer + 1
	LDA #<BattleText_UsersStringBuffer1Activated
	STA zTextPointer
	home_ref PRG_HomeROM2, StdBattleTextbox
;	farcall BattleCommand_StatUpMessage
	PLA
	AND #SUBSTATUS_CONFUSED
	BNE @end2
	LDA #0
	STA wNumHits
	LDA #>ANIM_CONFUSED
	STA zMovePointer + 1
	LDA #<ANIM_CONFUSED
	STA zMovePointer
	JSR Call_PlayBattleAnim_OnlyIfVisible ; who named this??
	JSR SwitchTurnCore
	; todo: ld hl, BecameConfusedText
	LDA #>BecameConfusedText
	STA zTextPointer + 1
	LDA #<BecameConfusedText
	STA zTextPointer
	home_jump PRG_HomeROM2, StdBattleTextbox
@end1:
	PLA
@end2:
	RTS
	
EnemyTriesToFlee:
	; wLinkMode check that makes me believe they just used a macro for it
	LDA wBattleAction
	CMP #BATTLEACTION_FORFEIT
	BEQ @forfeit
	CLC
	RTS
@forfeit:
	JSR WildFled_EnemyFled_LinkBattleCanceled
	SEC
	RTS
	
DetermineMoveOrder:
	; wLinkMode check
	LDA wBattleAction
	CMP #BATTLEACTION_STRUGGLE
	BEQ @use_move
	CMP #BATTLEACTION_SKIPTURN
	BEQ @use_move
	SEC
	SBC #BATTLEACTION_SWITCH1
	BCS @use_move
	LDA wBattlePlayerAction
	CMP #BATTLEPLAYERACTION_SWITCH
	BNE @switch
	; hSerialConnectionStatus check
	home_ref PRG_HomeROM2, BattleRandom
	BPL +e
	JMP @player_first
+e	JMP @enemy_first
@switch:
;	farcall AI_Switch
	home_ref PRG_HomeROM2, SetEnemyTurn
	JSR SpikesDamage
	JMP @enemy_first
@UseMove:
	LDA wBattlePlayerAction
	BEQ +
	JMP @player_first
+	JSR CompareMovePriority
	BEQ @equal_priority
	BCC +e
	JMP @player_first
+e	JMP @enemy_first

@equal_priority:
	home_ref PRG_HomeROM2, SetPlayerTurn
;	farcall GetUserItem
;	farcall GetOpponentItem
	; ld a, d
	cmp #HELD_QUICK_CLAW
	bne @player_no_quick_claw
	; ld a, b
	cmp #HELD_QUICK_CLAW
	beq @both_have_quick_claw
	home_ref PRG_HomeROM2, BattleRandom
	; cp e
	bcc @speed_check
	jmp @player_first
	
@player_no_quick_claw:
	; ld a, b
	cmp #HELD_QUICK_CLAW
	bne @speed_check
	home_ref PRG_HomeROM2, BattleRandom
	; cp c
	bcc @speed_check
	jmp @enemy_first
	
@both_have_quick_claw:
	; hSerialConnectionStatus check
	home_ref PRG_HomeROM2, BattleRandom
	; cp c
	bcs @enemy_first
	home_ref PRG_HomeROM2, BattleRandom
	; cp e
	bcs @player_first
	jmp @speed_check
	
@player_2b: ; this isn't referenced, but something in the future might reference it, so I'm keeping it
	home_ref PRG_HomeROM2, BattleRandom
	; cp e
	bcs @player_first
	home_ref PRG_HomeROM2, BattleRandom
	; cp c
	bcs @enemy_first
	
@speed_check:
	ldy wBattleMonSpeed
	ldx wEnemyMonSpeed
	lda #2
	sta zScratchByte
	jsr CompareBytes
	beq @speed_tie
	bcc @player_first
	jmp @enemy_first
	
@player_2c: ; this isn't referenced, but something in the future might reference it, so I'm keeping it
	home_ref PRG_HomeROM2, BattleRandom
	cmp #50 percent + 1
	bcs @enemy_first
	
@player_first:
	sec
	rts
	
@enemy_first:
	clc
	rts

NewEnemyMonStatus:
	lda #0
	sta wLastPlayerCounterMove
	sta wLastEnemyCounterMove
	sta wLastEnemyMove
	sta wEnemyMonSubStatus1
	sta wEnemyMonSubStatus1 + 1
	sta wEnemyMonSubStatus1 + 2
	sta wEnemyMonSubStatus1 + 3
	sta wEnemyMonSubStatus1 + 4
	sta wEnemyMonSubStatus1 + 5
	sta wEnemyDisableCount
	sta wEnemyFuryCutterCount
	sta wEnemyProtectCount
	sta wEnemyRageCount
	sta wEnemyDisabledMove
	sta wEnemyMinimized
	sta wPlayerWrapCount
	sta wEnemyWrapCount
	sta wEnemyTurnsTaken
	lda wPlayerSubStatus5
	ora #SUBSTATUS_CANT_RUN
	eor #SUBSTATUS_CANT_RUN
	rts

ResetEnemyStatLevels:
	lda #BASE_STAT_LEVEL
	ldy #<wEnemyStatLevels
	ldx #>wEnemyStatLevels
	sty zScratchWord
	stx zScratchWord + 1
	ldx #NUM_LEVEL_STATS
	ldy #0
@loop:
	sta (zScratchWord), y
	dex
	bne @loop
	rts

BreakAttraction:
	lda wPlayerSubStatus1
	ora #SUBSTATUS_IN_LOVE
	eor #SUBSTATUS_IN_LOVE
	sta wPlayerSubStatus1
	lda wEnemySubStatus1
	ora #SUBSTATUS_IN_LOVE
	eor #SUBSTATUS_IN_LOVE
	sta wEnemySubStatus1
	RTS

EnemySwitch:
	jsr CheckWhetherToSwitch
	bcc EnemySwitch_SetMode
	; Shift Mode
	jsr ResetEnemyBattleVars
	jsr CheckWhetherSwitchmonIsPredetermined
	bcs +
	jsr FindMonInOTPartyToSwitchIntoBattle
+	; x contains the PartyNr of the mon the AI will switch to
	jsr LoadEnemyMonToSwitchTo
	jsr OfferSwitch
	php
	jsr ClearEnemyMonBox
	jsr ShowBattleTextEnemySentOut
	jsr ShowSetEnemyMonAndSendOutAnimation
	plp
	RCS
	; If we're here, then we're switching too
	lda #0
	sta wBattleParticipantsNotFainted
	sta wBattleParticipantsIncludingFainted
	sta wBattlePlayerAction
	lda #1
	sta wEnemyIsSwitching
	jsr LoadTilemapToTempTilemap
	jmp PlayerSwitch
	
EnemySwitch_SetMode:
	jsr ResetEnemyBattleVars
	jsr CheckWhetherSwitchmonIsPredetermined
	bcs +
	jsr FindMonInOTPartyToSwitchIntoBattle
+	; x contains the PartyNr of the mon the AI will switch to
	jsr LoadEnemyMonToSwitchTo
	lda #1
	sta wEnemyIsSwitching
	jsr ClearEnemyMonBox
	jsr ShowBattleTextEnemySentOut
	jmp ShowSetEnemyMonAndSendOutAnimation
	
CheckWhetherSwitchmonIsPredetermined:
; returns the enemy switchmon index in b, or
; returns carry if the index is not yet determined.
	; wLinkMode check
	ldx wEnemySwitchMonIndex
	beq @check_wBattleHasJustStarted
	dex
	jmp @return_carry
	
@check_wBattleHasJustStarted:
	ldx #0
	lda wBattleHasJustStarted
	bne @return_carry
	clc
	rts
	
@return_carry:
	sec
	rts
	
ResetEnemyBattleVars:
; and draw empty Textbox
	ldx #0
	stx wLastPlayerCounterMove
	stx wLastEnemyCounterMove
	stx wLastEnemyMove
	stx wCurEnemyMove
	dex ; #255
	stx wEnemyItemState
	inx ; #0
	stx wPlayerWrapCount
	OGT 0, 18, 0
	lda #8
	jsr SlideBattlePicOut
	jsr EmptyBattleTextbox
	jmp LoadStandardMenuHeader

CheckPlayerPartyForFitMon:
; Has the player any mon in his Party that can fight?
	ldx wPartyCount
	lda #0
	rts

CheckIfCurPartyMonIsFitToFight:
	RTS

SlideBattlePicOut:
	RTS

ResetBattleParticipants:
	lda #0
	sta wBattleParticipantsNotFainted
	sta wBattleParticipantsIncludingFainted
AddBattleParticipant:
	ldy wCurBattleMon
	lda #<wBattleParticipantsNotFainted
	ldx #>wBattleParticipantsNotFainted
	sta zScratchWord
	stx zScratchWord + 1
	ldx #SET_FLAG
	PHX
	PHY
	predef PRG_Tools1, SmallFarFlagAction
	PLY
	PLX
	lda #<wBattleParticipantsIncludingFainted
	ldx #>wBattleParticipantsIncludingFainted
	sta zScratchWord
	stx zScratchWord
	predef_jump PRG_Tools1, SmallFarFlagAction

InitBattleMon:
	RTS

ResetPlayerStatLevels:
	RTS

SendOutMonText:
	RTS

NewBattleMonStatus:
	RTS

SendOutPlayerMon:
	RTS

EmptyBattleTextbox:
	RTS

SpikesDamage:
	lda zBattleTurn
	bne @enemy
	lda wPlayerScreens
	and #SCREENS_SPIKES
	cmp #SCREENS_SPIKES
	RNE
	; Flying-types aren't effected by Spikes.
	lda wPlayerMonType
	cmp #FLYING
	REQ
	lda wPlayerMonType + 1 ; TYPE2 also counts
	cmp #FLYING
	REQ
	ldx #<UpdatePlayerHUD
	ldy #>UpdatePlayerHUD
	jmp @continue
	
@enemy:
	lda wEnemyScreens
	and #SCREENS_SPIKES
	cmp #SCREENS_SPIKES
	RNE
	; Flying-types aren't effected by Spikes.
	lda wEnemyMonType
	cmp #FLYING
	REQ
	lda wEnemyMonType + 1 ; TYPE2 also counts
	cmp #FLYING
	REQ
	ldx #<UpdateEnemyHUD
	ldy #>UpdateEnemyHUD
@continue:
	stx zScratchWord
	sty zScratchWord + 1
	ldx #<BattleText_HurtBySpikes
	ldy #>BattleText_HurtBySpikes
	stx zTextPointer
	sty zTextPointer + 1
	jsr StdBattleTextbox
	jsr GetEighthMaxHP
	jsr SubtractHPFromTarget
	jsr @zScratchWord
	jmp WaitBGMap
	
@zScratchWord:
	jmp (zScratchWord)

BattleMenu:
	RTS

LostBattle:
	RTS

StopDangerSound:
	RTS

CheckContestBattleOver:
	lda wBattleType
	cmp #BATTLETYPE_CONTEST
	bne @contest_not_over
	lda wParkBallsRemaining
	bne @contest_not_over
	lda wBattleResult
	and #BATTLERESULT_BITMASK
	add #DRAW
	sta wBattleResult
	sec
	RTS
	
@contest_not_over:
	clc
	rts

UpdateBattleMonInParty:
	RTS

CheckPlayerLockedIn:
	lda wPlayerSubStatus4
	and #1 << SUBSTATUS_RECHARGE
	bne @quit
	
	lda wEnemySubStatus3
	ora #SUBSTATUS_FLINCHED
	eor #SUBSTATUS_FLINCHED
	sta wEnemySubStatus3
	lda wPlayerSubStatus3
	ora #SUBSTATUS_FLINCHED
	eor #SUBSTATUS_FLINCHED
	sta wPlayerSubStatus3
	
	and #1 << SUBSTATUS_CHARGED | #1 << SUBSTATUS_RAMPAGE
	bne @quit
	
	lda wPlayerSubStatus1
	bit #SUBSTATUS_ROLLOUT
	bne @quit
	
	clc
	rts

@quit:
	sec
	rts

ParsePlayerAction:
	jsr CheckPlayerLockedIn
	bcc +
	jmp @locked_in
+	lda wPlayerSubStatus5
	bit #SUBSTATUS_ENCORED
	beq @not_encored
	lda wLastPlayerMove
	sta wCurPlayerMove
	jmp @encored
	
@not_encored:
	lda wBattlePlayerAction
	bne @reset_bide
	cmp #BATTLEPLAYERACTION_SWITCH
	beq @reset_rage
	lda wPlayerSubStatus3
	and #1 << SUBSTATUS_BIDE
	bne @locked_in
	ldx #0
	stx wMoveSelectionMenuType
	inx ; POUND
	stx wFXAnimID
	jsr MoveSelectionScreen
	pha
	home_ref PRG_HomeROM2, SafeLoadTempTilemapToTilemap
	jsr UpdateBattleHuds
	lda wCurPlayerMove
	cmp #STRUGGLE
	beq @struggle
	jsr PlayClickSFX

@struggle:
	lda #1
	sta zBGMapMode
	pla
	RNE
	
@encored:
	home_ref PRG_HomeROM2, SetPlayerTurn
;	farcall UpdateMoveData
	lda #0
	sta wPlayerCharging
	lda wPlayerMoveStruct + MOVE_EFFECT
	cmp #EFFECT_FURY_CUTTER
	beq @continue_fury_cutter
	lda #0
	sta wPlayerFuryCutterCount

@continue_fury_cutter:
	lda wPlayerMoveStruct + MOVE_EFFECT
	cmp #EFFECT_RAGE
	beq @continue_rage
	lda wPlayerSubStatus4
	ora #SUBSTATUS_RAGE
	eor #SUBSTATUS_RAGE
	sta wPlayerSubStatus4
	lda #0
	sta wPlayerRageCounter
	
@continue_rage:
	lda wPlayerMoveStruct + MOVE_EFFECT
	cmp #EFFECT_PROTECT
	beq @continue_protect
	cmp #EFFECT_ENDURE
	beq @continue_protect
	lda #0
	sta wPlayerProtectCount
	jmp @continue_protect
	
@reset_bide:
	lda wPlayerSubStatus3
	ora #SUBSTATUS_BIDE
	eor #SUBSTATUS_BIDE
	sta wPlayerSubStatus3
	
@locked_in:
	lda #0
	sta wPlayerFuryCutterCount
	sta wPlayerProtectCount
	sta wPlayerRageCounter
	lda wPlayerSubStatus4
	ora #SUBSTATUS_RAGE
	eor #SUBSTATUS_RAGE
	sta wPlayerSubStatus4
	
@continue_protect:
	jsr ParseEnemyAction
	lda #0 ; ???
	rts
	
@reset_rage:
	lda #0
	sta wPlayerFuryCutterCount
	sta wPlayerProtectCount
	sta wPlayerRageCounter
	lda wPlayerSubStatus4
	ora #SUBSTATUS_RAGE
	eor #SUBSTATUS_RAGE
	sta wPlayerSubStatus4
	lda #0 ; ???
	rts

Battle_EnemyFirst:
	RTS

Battle_PlayerFirst:
	RTS

HandleFutureSight:
	RTS

HandleWeather:
	RTS

HandleWrap:
	RTS

HandlePerishSong:
	RTS

HandleLeftovers:
	RTS

HandleMysteryberry:
	RTS

HandleDefrost:
	RTS

HandleSafeguard:
	RTS

HandleScreens:
	RTS

HandleStatBoostingHeldItems:
	RTS

HandleHealingItems:
	RTS

HandleEncore:
	; hSerialConnectionStatus check
	jsr @do_player
	jmp @do_enemy
	
@do_player:
	lda wPlayerSubStatus5
	bit #SUBSTATUS_ENCORED
	REQ
	dec wPlayerEncoreCount
	beq @end_player_encore
	lda #<wBattleMonPP
	sta zScratchWord
	lda #>wBattleMonPP
	sta zScratchWord + 1
	ldy wCurMoveNum
	lda (zScratchWord), y
	and #PP_MASK
	RNE
	
@end_player_encore:
	lda wPlayerSubStatus5
	ora #SUBSTATUS_ENCORED
	eor #SUBSTATUS_ENCORED
	sta wPlayerSubStatus5
	home_ref PRG_HomeROM2, SetEnemyTurn
	jmp @end_encore
	
@do_enemy:
	lda wEnemySubStatus5
	bit #SUBSTATUS_ENCORED
	REQ
	dec wEnemyEncoreCount
	beq @end_enemy_encore
	lda #<wEnemyMonPP
	sta zScratchWord
	lda #>wEnemyMonPP
	sta zScratchWord + 1
	ldy wCurEnemyMoveNum
	lda (zScratchWord), y
	and #PP_MARK
	RNE
	
@end_enemy_encore:
	lda wEnemySubStatus5
	ora #SUBSTATUS_ENCORED
	eor #SUBSTATUS_ENCORED
	sta wEnemySubStatus5
	home_ref PRG_HomeROM2, SetPlayerTurn
	
@end_encore:
	ldx #<BattleText_TargetsEncoreEnded
	ldy #>BattleText_TargetsEncoreEnded
	stx zTextPointer
	sty zTextPointer + 1
	home_jump PRG_HomeROM2, StdBattleTextbox

HasPlayerFainted:
	RTS

HandlePlayerMonFaint:
	RTS

HasEnemyFainted:
	RTS

HandleEnemyMonFaint:
	RTS

CompareMovePriority:
	LDA wCurPlayerMove
	JSR GetMovePriority
	STA iTempMovePriority
	JSR GetMovePriority
	CMP iTempMovePriority
	RTS

GetMovePriority:
	STA iTempMove
	LDY #0
	CMP #VITAL_THROW
	REQ
	JSR GetMoveEffect
	LDA #<MoveEffectPriorities
	STA zMovePointer
	LDA #>MoveEffectPriorities
	STA zMovePointer + 1
@loop:
	LDA (zMovePointer), Y
	INY
	CMP iTempMove, Y
	BEQ @done
	INY
	CMP #$ff
	BNE @loop
	LDA #BASE_PRIORITY
	RTS
@done:
	LDA (zMovePointer), Y
	RTS

Call_PlayBattleAnim_OnlyIfVisible:
	RTS

SwitchTurnCore:
	RTS
	
TryEnemyFlee:
	ldx wBattleMode
	dex
	bne @Stay
	
	lda wPlayerSubStatus5
	bit #SUBSTATUS_CANT_RUN
	bne @Stay
	
	lda wEnemyWrapCount
	bne @Stay
	
	lda wEnemyMonStatus
	and 1 << FRZ | SLP_MASK
	bne @Stay
	
	; not 100% confident on the arguments
	lda wTempEnemyMonSpecies
	ldx #<AlwaysFleeMons
	ldy #>AlwaysFleeMons
	stx zScratchWord
	sty zScratchWord + 1
	ldx #1
	jsr IsInArray
	bcs @Flee
	
	home_ref PRG_HomeROM2, BattleRandom
	tax
	cmp #50 percent + 1
	bcc @Stay
	
	PHX
	lda wTempEnemyMonSpecies
	ldx #<OftenFleeMons
	ldy #>OftenFleeMons
	stx zScratchWord
	sty zScratchWord + 1
	ldx #1
	jsr IsInArray
	PLX
	bcs @Flee
	
	txa
	cmp #10 percent + 1
	bcc @Stay
	
	lda wTempEnemyMonSpecies
	ldx #<SometimesFleeMons
	ldy #>SometimesFleeMons
	stx zScratchWord
	sty zScratchWord + 1
	ldx #1
	jsr IsInArray
	bcs @Flee
	
@Stay:
	clc
	rts
	
@Flee:
	sec
	rts
