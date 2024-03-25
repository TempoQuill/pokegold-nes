NewGame:
	LDA #0
	STA wDebugFlags
	JSR ResetWRAM
	JSR ClearTilemapEtc
	JSR OakSpeech
	JSR InitializeWorld
	
	LDA #SPAWN_HOME
	STA wDefaultSpawnpoint
	
	LDA #MAPSETUP_WARP
	STA zMapEntryMethod
	JMP FinishContinueFunction
	
IFDEF DEBUG
	; farcall _DebugRoom
	rts
ENDIF

ResetWRAM:
	LDA #0
	STA zBGMapMode
	; call _ResetWRAM ; pointless
	; ret
	
_ResetWRAM:
	; ld hl, wShadowOAM
	; ld bc, wOptions - wShadowOAM
	LDA #0
	JSR ByteFill
	
	; ld hl, wGameData
	; ld bc, wGameDataEnd - wGameData
	LDA #0
	JSR ByteFill
	
	; ld a, [rLY] ; NES equivalent is?
	STA zScratchByte
	JSR DelayFrame
	LDA zRandomAdd
	STA wPlayerID + 1
	
	LDA #<wPartyCount
	STA zScratchWord
	LDA #>wPartyCount
	STA zScratchWord + 1
	JSR @InitList
	
	LDA #0
	STA wCurBox
	STA wSavedAtLeastOnce
	
	JSR SetDefaultBoxNames

	LDA #RAM_SAVE
	STA MMC5_PRGBankSwitch1
	LDA #<(sBox + BOX_COUNT)
	STA zScratchWord
	LDA #>(sBox + BOX_COUNT)
	STA zScratchWord + 1
	JSR @InitList
	LDA #RAM_MAIN
	STA MMC5_PRGBankSwitch1

	LDA #<wNumItems
	STA zScratchWord
	LDA #>wNumItems
	STA zScratchWord + 1
	JSR @InitList
	
	LDA #<wNumKeyItems
	STA zScratchWord
	LDA #>wNumKeyItems
	STA zScratchWord + 1
	JSR @InitList
	
	LDA #<wNumBalls
	STA zScratchWord
	LDA #>wNumBalls
	STA zScratchWord + 1
	JSR @InitList
	
	LDA #<wNumPCItems
	STA zScratchWord
	LDA #>wNumPCItems
	STA zScratchWord + 1
	JSR @InitList
	
	LDA #0
	STA wRoamMon1Species
	STA wRoamMon2Species
	STA wRoamMon3Species
	LDA #$ff
	STA wRoamMon1MapGroup
	STA wRoamMon2MapGroup
	STA wRoamMon3MapGroup
	STA wRoamMon1MapNumber
	STA wRoamMon2MapNumber
	STA wRoamMon3MapNumber
	
	; we probably won't have mystery gift, will we?
	
	; ld a, BANK(sMysteryGiftItem) ; aka BANK(sMysteryGiftUnlocked)
	; call OpenSRAM
	; ld hl, sMysteryGiftItem
	; xor a
	; ld [hli], a
	; assert sMysteryGiftItem + 1 == sMysteryGiftUnlocked
	; dec a ; -1
	; ld [hl], a
	; call CloseSRAM
	
	JSR LoadOrRegenerateLuckyIDNumber
	JSR InitializeMagikarpHouse
	
	LDA #0
	STA wMonType
	
	STA wJohtoBadges
	STA wKantoBadges
	
	STA wCoins
	STA wCoins + 1
	
	STA wMoney
	STA #>START_MONEY
	STA wMoney + 1
	LDA #<START_MONEY
	STA wMoney + 2
	
	LDA #0
	STA wWhichMomItem
	
	LDA #>(MOM_MONEY >> 8)
	STA wMomItemTriggerBalance
	LDA #>MOM_MONEY
	STA wMomItemTriggerBalance + 1
	LDA #<MOM_MONEY
	STA wMomItemTriggerBalance + 2
	
	JSR InitializeNPCNames
	
	; farcall InitDecorations
	
	; farcall DeletePartyMonMail
	
	JMP ResetGameTime
	
@InitList:
	LDA #0
	TAY
	STA (zScratchWord), y
	LDA #$ff
	STA (zScratchWord), y
	RTS
	
SetDefaultBoxNames:
	; todo: finish this
	
