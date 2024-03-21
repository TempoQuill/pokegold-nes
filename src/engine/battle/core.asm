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
	JSR LoadTilemapToTempTilemap
	JSR CheckPlayerPartyForFitMon
	BEQ @lostbattle
	JSR SafeLoadTempTilemapToTilemap
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
	JSR LoadTilemapToTempTilemap
	JSR ResetBattleParticipants
	JSR InitBattleMon
	JSR ResetPlayerStatLevels
	JSR SendOutMonText
	JSR NewBattleMonStatus
	JSR BreakAttraction
	JSR SendOutPlayerMon
	JSR EmptyBattleTextbox
	JSR LoadTilemapToTempTilemap
	JSR SetPlayerTurn
	JSR SpikesDamage
	; wLinkMode check
	; hSerialConnectionStatus check
	LDA #0
	STA wEnemySwitchMonIndex
	JSR NewEnemyMonStatus
	JSR ResetEnemyStatLevels
	JSR BreakAttraction
	JSR EnemySwitch
	JSR SetEnemyTurn
	JSR SpikesDamage
@not_linked_2:		JMP BattleTurn
@tutorial_debug:	JMP BattleMenu
@lostbattle:		JMP LostBattle ; there's no absolute branches on 6502, so this is the best we can do

WildFled_EnemyFled_LinkBattleCanceled:
	CLC
	JSR SafeLoadTempTilemapToTilemap
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
	JSR StdBattleTextbox
	JSR StopDangerSound
	LDY #SFX_RUN
	JSR PlaySFX
	JSR SetPlayerTurn
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
	JSR LoadTilemapToTempTilemap
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
	JSR SetPlayerTurn
	LDA #>wPartyMon1 + MON_ITEM
	STA zMonPointer + 1
	LDA #<wPartyMon1 + MON_ITEM
	STA zMonPointer
	LDA wCurBattleMon
	JMP @go
	
@enemy:
	JSR SetEnemyTurn
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
	JSR GetPartyLocation
	LDA #0
	TAY
	STA (zMonPointer), Y
	LDA #BATTLE_VARS_SUBSTATUS3
	JSR GetBattleVarAddr
	PHA
	; todo: set SUBSTATUS_CONFUSED, [hl]
	LDA (zMonPointer), Y
	SSB SUBSTATUS_CONFUSED
	STA (zMonPointer), Y
	LDA #BATTLE_VARS_MOVE_ANIM
	JSR GetBattleVarAddr
	PHA
	LDA #0
	TAY
	STA (zMonPointer), Y
	STA wAttackMissed
	STA wEffectFailed
;	farcall BattleCommand_AttackUp2
	PLA
	STA (zMonPointer), Y
	JSR GetItemName
	LDA #<BattleText_UsersStringBuffer1Activated
	STA zTextPointer + 1
	LDA #<BattleText_UsersStringBuffer1Activated
	STA zTextPointer
	JSR StdBattleTextbox
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
	JMP StdBattleTextbox
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
	JSR BattleRandom
	BPL +e
	JMP @player_first
+e	JMP @enemy_first
@switch:
;	farcall AI_Switch
	JSR SetEnemyTurn
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
	JSR SetPlayerTurn
;	farcall GetUserItem
;	farcall GetOpponentItem
	; wip

@player_first:
@enemy_first:

NewEnemyMonStatus:
	LDA #0
	RTS

ResetEnemyStatLevels:
	RTS

BreakAttraction:
	RTS

EnemySwitch:
	RTS

CheckPlayerPartyForFitMon:
	RTS

CheckIfCurPartyMonIsFitToFight:
	RTS

SlideBattlePicOut:
	RTS

ResetBattleParticipants:
	RTS

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
	RTS

BattleMenu:
	RTS

LostBattle:
	RTS

StopDangerSound:
	RTS

CheckContestBattleOver:
	RTS

UpdateBattleMonInParty:
	RTS

CheckPlayerLockedIn:
	RTS

ParsePlayerAction:
	RTS

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
	RTS

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

