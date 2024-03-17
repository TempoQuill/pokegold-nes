; core components of battle engine
; in 6502 asm

; notes: 
; I could provide the code for DelayFrames
; hSerialConnectionStatus seems to be link-related, so I've ommited it

; engine/battle/core.asm
DoBattle:
	lda #0
	sta wBattleParticipantsNotFainted
	sta wBattleParticipantsIncludingFainted
	sta wBattlePlayerAction
	sta wBattleEnded
	lda #1 ; there's no "inc a" on the 6502, so this is the best way
	; (this takes 2 bytes, as opposed to "clc / adc #1", which takes 3)
	sta wBattleHasJustStarted
	; todo: 16-bit register pairs and their translation to the 6502
	; ld hl, wOTPartyMon1HP
	; ld bc, PARTYMON_STRUCT_LENGTH - 1
	; ld d, BATTLEACTION_SWITCH1 - 1
; .loop
	; inc d
	; ld a, [hli]
	; or [hl]
	; jr nz, .alive
	; add hl, bc
	; jr .loop
@alive:
	stx wBattleAction ; assuming d is x
	; wLinkMode check
	; hSerialConnectionStatus check
@not_linked:
	ldx wBattleMode
	dex
	beq @wild
	lda #0
	sta wEnemySwitchMonIndex
	jsr NewEnemyMonStatus
	jsr ResetEnemyStatLevels
	jsr BreakAttraction
	jsr EnemySwitch
	
@wild:
	ldx #40
	jsr DelayFrames
	
@player_2:
	jsr LoadTilemapToTempTilemap
	jsr CheckPlayerPartyForFitMon
	beq @lostbattle
	call SafeLoadTempTilemapToTilemap
	lda wBattleType
	cmp #BATTLETYPE_DEBUG
	beq @tutorial_debug
	cmp #BATTLETYPE_TUTORIAL
	beq @tutorial_debug
	lda #0
	sta wCurPartyMon
@loop2:
	jsr CheckIfCurPartyMonIsFitToFight
	bne @alive2
	inc wCurPartyMon
	jmp @loop2
	
@alive2:
	lda wCurBattleMon
	sta wLastPlayerMon
	lda wCurPartyMon
	sta wCurBattleMon
	tax
	inx
	lda wPartySpecies,x
	sta wCurPartySpecies
	sta wTempBattleMonSpecies
	; todo: hlcoord 1, 5
	lda #9
	jsr SlideBattlePicOut
	jsr LoadTilemapToTempTilemap
	jsr ResetBattleParticipants
	jsr InitBattleMon
	jsr ResetPlayerStatLevels
	jsr SendOutMonText
	jsr NewBattleMonStatus
	jsr BreakAttraction
	jsr SendOutPlayerMon
	jsr EmptyBattleTextbox
	jsr LoadTilemapToTempTilemap
	jsr SetPlayerTurn
	jsr SpikesDamage
	; wLinkMode check
	; hSerialConnectionStatus check
	lda #0
	sta wEnemySwitchMonIndex
	jsr NewEnemyMonStatus
	jsr ResetEnemyStatLevels
	jsr BreakAttraction
	jsr EnemySwitch
	jsr SetEnemyTurn
	jsr SpikesDamage
	
@not_linked_2:		jmp BattleTurn

@tutorial_debug:	jmp BattleMenu
	
@lostbattle:		jmp LostBattle ; there's no absolute branches on 6502, so this is the best we can do

WildFled_EnemyFled_LinkBattleCanceled:
	clc
	jsr SafeLoadTempTilemapToTilemap
	lda wBattleResult
	and #BATTLERESULT_BITMASK
	adc #DRAW
	sta wBattleResult
	; wLinkMode check
	lda wBattleResult
	and #BATTLERESULT_BITMASK
	sta wBattleResult
	; todo: ld hl, BattleText_EnemyFled
	
@print_text:
	jsr StdBattleTextbox
	jsr StopDangerSound
	ldy #SFX_RUN
	jsr PlaySFX
	jsr SetPlayerTurn
	farcall DummyPredef38 ; macro
	lda #1
	sta wBattleEnded
	rts
	
BattleTurn:
	jsr CheckContestBattleOver
	bcs @quit
	lda #0
	sta wPlayerIsSwitching
	sta wEnemyIsSwitching
	sta wBattleHasJustStarted
	sta wPlayerJustGotFrozen
	sta wEnemyJustGotFrozen
	sta wCurDamage
	sta wCurDamage + 1
	jsr HandleBerserkGene
	jsr UpdateBattleMonInParty
	farcall AIChooseMove ; macro
	jsr CheckPlayerLockedIn
	bcs @skip_iteration
@loop1:
	jsr BattleMenu
	bcs @quit
	lda wBattleEnded
	bne @quit
	lda wForcedSwitch
	bne @quit
@skip_iteration:
	jsr ParsePlayerAction
	bne @loop1
	jsr EnemyTriesToFlee
	bcs @quit
	jsr DetermineMoveOrder
	bcs @false
	jsr Battle_EnemyFirst
	jmp @proceed
@false:
	jsr Battle_PlayerFirst
@proceed:
	lda wForcedSwitch
	bne @quit
	lda wBattleEnded
	bne @quit
	jsr HandleBetweenTurnEffects
	lda wBattleEnded
	bne @quit
	jmp BattleTurn
	
@quit:
	rts
	
HandleBetweenTurnEffects:
	; hSerialConnectionStatus check
	jsr CheckFaint_PlayerThenEnemy
	bcs @quit
	jsr HandleFutureSight
	jsr CheckFaint_PlayerThenEnemy
	bcs @quit
	jsr HandleWeather
	jsr CheckFaint_PlayerThenEnemy
	bcs @quit
	jsr HandleWrap
	jsr CheckFaint_PlayerThenEnemy
	bcs @quit
	jsr HandlePerishSong
	jsr CheckFaint_PlayerThenEnemy
	bcs @quit
	jmp @NoMoreFaintingConditions
@quit:
	rts ; there's no "ret c"
	
@NoMoreFaintingConditions:
	jsr HandleLeftovers
	jsr HandleMysteryberry
	jsr HandleDefrost
	jsr HandleSafeguard
	jsr HandleScreens
	jsr HandleStatBoostingHeldItems
	jsr HandleHealingItems
	jsr UpdateBattleMonInParty
	jsr LoadTilemapToTempTilemap
	jmp HandleEncore
	
CheckFaint_PlayerThenEnemy:
	jsr HasPlayerFainted
	bne @PlayerNotFainted
	jsr HandlePlayerMonFaint
	lda wBattleEnded
	bne @BattleIsOver

@PlayerNotFainted:
	jsr HasEnemyFainted
	bne @BattleContinues
	jsr HandleEnemyMonFaint
	lda wBattleEnded
	bne @BattleIsOver
	
@BattleContinues:
	clc
	rts
	
@BattleIsOver:
	sec
	rts
	
; nothing uses this at the moment, but something in the future might, so I'm keeping this
CheckFaint_EnemyThenPlayer:
	jsr HasEnemyFainted
	bne @EnemyNotFainted
	jsr HandleEnemyMonFaint
	lda wBattleEnded
	bne @BattleIsOver

@EnemyNotFainted:
	jsr HasPlayerFainted
	bne @BattleContinues
	jsr HandlePlayerMonFaint
	lda wBattleEnded
	bne @BattleIsOver
	
@BattleContinues:
	clc
	rts
	
@BattleIsOver:
	sec
	rts
	
HandleBerserkGene:
	; hSerialConnectionStatus check
	jsr @player
	jmp @enemy
	
@player:
	jsr SetPlayerTurn
	; todo:
	; ld de, wPartyMon1Item
	; ld a, [wCurBattleMon]
	; ld b, a
	jmp @go
	
@enemy:
	jsr SetEnemyTurn
	; todo:
	; ld de, wOTPartyMon1Item
	; ld a, [wCurOTMon]
	; ld b, a
	
@go:
	tya
	pha
	txa
	pha
	farcall GetUserItem
	; todo: ld a, [hl]
	sec
	sta wNamedObjectIndex
	sbc #BERSERK_GENE
	pha
	tax
	pha
	tay
	bne @end
	; do we have enough registers? todo: 
	; ld [hl], a
	; ld h, d
	; ld l, e
	; ld a, b
	jsr GetPartyLocation
	lda #0
	; todo: ld [hl], a
	lda #BATTLE_VARS_SUBSTATUS3
	jsr GetBattleVarAddr
	pha
	; todo: set SUBSTATUS_CONFUSED, [hl]
	lda #BATTLE_VARS_MOVE_ANIM
	jsr GetBattleVarAddr
	pha
	txa
	pha
	lda #0
	; todo: ld [hl], a
	sta wAttackMissed
	sta wEffectFailed
	farcall BattleCommand_AttackUp2
	pla
	tax
	pla
	; todo: ld [hl], a
	jsr GetItemName
	; todo: ld hl, BattleText_UsersStringBuffer1Activated
	jsr StdBattleTextbox
	farcall BattleCommand_StatUpMessage
	pla
	and #SUBSTATUS_CONFUSED
	bne @end
	lda #0
	sta wNumHits
	; todo: ld de, ANIM_CONFUSED
	jsr Call_PlayBattleAnim_OnlyIfVisible ; who named this??
	jsr SwitchTurnCore
	; todo: ld hl, BecameConfusedText
	jmp StdBattleTextbox
@end:
	rts
	
EnemyTriesToFlee:
	; wLinkMode check that makes me believe they just used a macro for it
	lda wBattleAction
	cmp #BATTLEACTION_FORFEIT
	beq @forfeit
	clc
	rts
@forfeit:
	jsr WildFled_EnemyFled_LinkBattleCanceled
	sec
	rts
	
DetermineMoveOrder:
	; wLinkMode check
	lda wBattleAction
	cmp #BATTLEACTION_STRUGGLE
	beq @use_move
	cmp #BATTLEACTION_SKIPTURN
	beq @use_move
	sec
	sbc #BATTLEACTION_SWITCH1
	bcs @use_move
	lda wBattlePlayerAction
	cmp #BATTLEPLAYERACTION_SWITCH
	bne @switch
	; hSerialConnectionStatus check
	jsr BattleRandom
	cmp 50 percent + 1 ; does ca65 support doing this?
	bcs @player_first
	jmp @enemy_first
	; wip
	
