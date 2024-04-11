PlayBattleMusic:
	PHA
	PHY
	PHX
	
	LDA #0
	STA zMusicSilence
	LDY #MUSIC_NONE
	home_ref PRG_HomeROM2, PlayMusic
	JSR DelayFrame
	
	; Are we fighting a trainer?
	LDA wOtherTrainerClass
	BNE @trainermusic
	
	; farcall RegionCheck
	; ld a, e
	BNE @kantowild
	
	LDY #MUSIC_JOHTO_WILD_BATTLE
	LDA wTimeOfDay
	CMP #NITE_F
	BNE @done
	LDY #MUSIC_JOHTO_WILD_BATTLE_NIGHT
	BNE @done
	
@kantowild:
	LDY #MUSIC_KANTO_WILD_BATTLE
	BNE @done
	
@trainermusic:
	LDY #MUSIC_CHAMPION_BATTLE
	CMP #CHAMPION
	BEQ @done
	CMP #RED
	BEQ @done
	
; BUG: Team Rocket battle music is not used for Executives or Scientists
	LDY #MUSIC_ROCKET_BATTLE
	CMP #GRUNTM
	BEQ @done
	CMP #GRUNTF
	BEQ @done
IFDEF BUGFIXES
	CMP #EXECUTIVE
	BEQ @done
	CMP #SCIENTIST
	BEQ @done
ENDIF
	
	LDY #MUSIC_KANTO_GYM_LEADER_BATTLE
	; farcall IsKantoGymLeader
	BCS @done
	
	; IsGymLeader also counts CHAMPION, RED, and the Kanto gym leaders
	; but they have been taken care of before this
	LDY #MUSIC_JOHTO_GYM_LEADER_BATTLE
	; farcall IsGymLeader
	BCS @done
	
	LDY #MUSIC_RIVAL_BATTLE
	LDA wOtherTrainerClass
	CMP #RIVAL1
	BEQ @done
	CMP #RIVAL2
	BNE @othertrainer
	
	LDA wOtherTrainerID
	CMP #RIVAL2_2_CHIKORITA
	BCS @done
	LDY #MUSIC_CHAMPION_BATTLE
	JMP @done
	
@othertrainer:
	; wLinkMode check
	
	; farcall RegionCheck
	; ld a, e
	BNE @kantotrainer
	
@johtotrainer:
	LDY #MUSIC_JOHTO_TRAINER_BATTLE
	JMP @done
	
@kantotrainer:
	LDY #MUSIC_KANTO_TRAINER_BATTLE
	
@done:
	home_ref PRG_HomeROM2, PlayMusic
	
	PLX
	PLY
	PLA
	RTS
	
ClearBattleRAM:
	LDA #0
	STA wBattlePlayerAction
	STA wBattleResult
	
	STA wPartyMenuCursor
	STA wPartyMenuCursor + 1
	STA wPartyMenuCursor + 2
	STA wPartyMenuCursor + 3
	
	STA wMenuScrollPosition
	STA wCriticalHit
	STA wBattleMonSpecies
	STA wBattleParticipantsNotFainted
	STA wCurBattleMon
	STA wForcedSwitch
	STA wTimeOfDayPal
	STA wPlayerTurnsTaken
	STA wEnemyTurnsTaken
	STA wEvolvableFlags
	
	STA wPlayerHPPal
	STA wPlayerHPPal + 1
	
	STA wBattleMonDVs
	STA wBattleMonDVs + 1
	
	STA wEnemyMonDVs
	STA wEnemyMonDVs + 1
	
; Clear the entire BattleMons area
	LDA #<wBattleMon
	STA zScratchWord
	LDA #>wBattleMon
	STA zScratchWord + 1
	LDY #wBattleEnd - wBattle
	LDA #0
	JSR ByteFill
	
	; farcall ResetEnemyStatLevels
	
	JSR ClearWindowData
; TEMPO's NOTE: Must make a fresh label for nametables
; Also must make a fresh label for the nametable pointer in Zero-Page RAM.
	LDA #<NT0
	STA zNameTablePointer
	LDA #>NT0
	STA zNameTablePointer + 1
	RTS
	
