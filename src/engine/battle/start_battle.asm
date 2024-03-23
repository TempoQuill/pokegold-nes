PlayBattleMusic:
	PHA
	PHY
	PHX
	
	lda #0
	sta zMusicSilence
	ldy #MUSIC_NONE
	jsr PlayMusic
	jsr DelayFrame
	
	; Are we fighting a trainer?
	lda wOtherTrainerClass
	bne @trainermusic
	
	; farcall RegionCheck
	; ld a, e
	bne @kantowild
	
	ldy #MUSIC_JOHTO_WILD_BATTLE
	lda wTimeOfDay
	cmp #NITE_F
	bne @done
	ldy #MUSIC_JOHTO_WILD_BATTLE_NIGHT
	jmp @done
	
@kantowild:
	ldy #MUSIC_KANTO_WILD_BATTLE
	jmp @done
	
@trainermusic:
	ldy #MUSIC_CHAMPION_BATTLE
	cmp #CHAMPION
	beq @done
	cmp #RED
	beq @done
	
; BUG: Team Rocket battle music is not used for Executives or Scientists
	ldy #MUSIC_ROCKET_BATTLE
	cmp #GRUNTM
	beq @done
	cmp #GRUNTF
	beq @done
IFDEF BUGFIXES
	cmp #EXECUTIVE
	beq @done
	cmp #SCIENTIST
	beq @done
ENDIF
	
	ldy #MUSIC_KANTO_GYM_LEADER_BATTLE
	; farcall IsKantoGymLeader
	bcs @done
	
	; IsGymLeader also counts CHAMPION, RED, and the Kanto gym leaders
	; but they have been taken care of before this
	ldy #MUSIC_JOHTO_GYM_LEADER_BATTLE
	; farcall IsGymLeader
	bcs @done
	
	ldy #MUSIC_RIVAL_BATTLE
	lda wOtherTrainerClass
	cmp #RIVAL1
	beq @done
	cmp #RIVAL2
	bne @othertrainer
	
	lda wOtherTrainerID
	cmp #RIVAL2_2_CHIKORITA
	bcs @done
	ldy #MUSIC_CHAMPION_BATTLE
	jmp @done
	
@othertrainer:
	; wLinkMode check
	
	; farcall RegionCheck
	; ld a, e
	bne @kantotrainer
	
@johtotrainer:
	ldy #MUSIC_JOHTO_TRAINER_BATTLE
	jmp @done
	
@kantotrainer:
	ldy #MUSIC_KANTO_TRAINER_BATTLE
	
@done:
	jsr PlayMusic
	
	PLX
	PLY
	PLA
	rts
	
ClearBattleRAM:
	lda #0
	sta wBattlePlayerAction
	sta wBattleResult
	
	sta wPartyMenuCursor
	sta wPartyMenuCursor + 1
	sta wPartyMenuCursor + 2
	sta wPartyMenuCursor + 3
	
	sta wMenuScrollPosition
	sta wCriticalHit
	sta wBattleMonSpecies
	sta wBattleParticipantsNotFainted
	sta wCurBattleMon
	sta wForcedSwitch
	sta wTimeOfDayPal
	sta wPlayerTurnsTaken
	sta wEnemyTurnsTaken
	sta wEvolvableFlags
	
	sta wPlayerHPPal
	sta wPlayerHPPal + 1
	
	sta wBattleMonDVs
	sta wBattleMonDVs + 1
	
	sta wEnemyMonDVs
	sta wEnemyMonDVs + 1
	
; Clear the entire BattleMons area
	lda #<wBattleMon
	sta zScratchWord
	lda #>wBattleMon
	sta zScratchWord + 1
	ldy #wBattleEnd - wBattle
	lda #0
	jsr ByteFill
	
	; farcall ResetEnemyStatLevels
	
	jsr ClearWindowData
	
	lda #<vBGMap0
	sta hBGMapAddress
	lda #>vBGMap0
	sta hBGMapAddress + 1
	rts
	
