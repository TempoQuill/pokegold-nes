; RAM_MAIN
.enum $6000
wInputType:		.dsb 1
wAutoInputAddress:	.dsb 1
wAutoInputBank:		.dsb 1
wAutoInputLength:	.dsb 1

wDebugFlags:		.dsb 1
wGameLogicPaused:	.dsb 1
wSpriteUpdatesEnabled:	.dsb 1

wUnusedScriptByte:	.dsb 1

wMapTimeOfDay:		.dsb 1

wPrevDexEntry:			.dsb 1
wDisableTextAcceleration:	.dsb 1
wPCItemsCursor:			.dsb 1
wPCItemsScrollPosition:		.dsb 1

wBGPals1:	.dsb 4 * 4
wOBPals1:	.dsb 4 * 4
wBGPals2:	.dsb 4 * 4
wOBPals2:	.dsb 4 * 4

wBattleParticipantsNotFainted:
	.dsb 1
wBattleParticipantsIncludingFainted:
	.dsb 1
wFieldMoveSucceeded:
wItemEffectSucceeded:
wBattlePlayerAction:
; 0 - use move
; 1 - use item
; 2 - switch
wSolvedUnownPuzzle:
	.dsb 1
wBattleEnded:
	.dsb 1
wBattleHasJustStarted:
	.dsb 1
wOTPartyMon1:	.dsb PARTYMON_STRUCT_LENGTH
wOTPartyMon2:	.dsb PARTYMON_STRUCT_LENGTH
wOTPartyMon3:	.dsb PARTYMON_STRUCT_LENGTH
wOTPartyMon4:	.dsb PARTYMON_STRUCT_LENGTH
wOTPartyMon5:	.dsb PARTYMON_STRUCT_LENGTH
wOTPartyMon6:	.dsb PARTYMON_STRUCT_LENGTH

wBattleAction:
	.dsb 1
wBattleMode:
	.dsb 1
wEnemySwitchMonIndex:
	.dsb 1
wBattleType:
	.dsb 1
wCurPartyMon:
	.dsb 1
wCurBattleMon:
	.dsb 1
wLastPlayerMon:
	.dsb 1
wCurPartySpecies:
	.dsb 1
wTempBattleMonSpecies:
	.dsb 1
wBattleResult:
	.dsb 1
wEnemyMonNickname:
	.dsb MON_NAME_LENGTH
wPlayerIsSwitching:
	.dsb 1
wEnemyIsSwitching:
	.dsb 1
wPlayerJustGotFrozen:
	.dsb 1
wEnemyJustGotFrozen:
	.dsb 1
wCurDamage:
	.dsb 2
wForcedSwitch:
	.dsb 1
wPartyMon1:	.dsb PARTYMON_STRUCT_LENGTH
wPartyMon2:	.dsb PARTYMON_STRUCT_LENGTH
wPartyMon3:	.dsb PARTYMON_STRUCT_LENGTH
wPartyMon4:	.dsb PARTYMON_STRUCT_LENGTH
wPartyMon5:	.dsb PARTYMON_STRUCT_LENGTH
wPartyMon6:	.dsb PARTYMON_STRUCT_LENGTH

wBattleMon:	.dsb BAT_STRUCT_LENGTH
wEnemyMon:	.dsb BAT_STRUCT_LENGTH
wEnemyMonBaseStats:	.dsb 1
wEnemyMonCatchRate:	.dsb 1
wEnemyMonBaseExp:	.dsb 1
wEnemyMonEnd:

wPlayerName: .dsb PLAYER_NAME_LENGTH
wRivalName:  .dsb PLAYER_NAME_LENGTH

wStringBuffer1:	.dsb STRING_BUFFER_LENGTH

wNumHits:
	.dsb 1
wCurPlayerMove:
	.dsb 1
wCurEnemyMove::
	.dsb 1
wPartyCount:
	.dsb 1
wAttackMissed::
	.dsb 1
wEffectFailed::
	.dsb 1

wCurItem:
	.dsb 1
wNamedObjectIndex:
	.dsb 1
wWildMon:
	.dsb 1
wOptions:
	.dsb 1

wOtherTrainerClass:
	.dsb 1
wTimeOfDay:
	.dsb 1
wTimeOfDayPal:
	.dsb 1

wTextDecByte:
	.dsb 1
wCurPartyLevel:
	.dsb 1
wPlayerDamage:
	.dsb 1
wEnemyDamage:
	.dsb 1

wStatusFlags:
	.dsb 1

wMapGroup:
	.dsb 1
wMapNumber:
	.dsb 1
.ende
wTilemap = $7c00

; RAM_SAVE
.enum $6000
sBox:	.dsb BOX_STRUCT_LENGTH
.ende
