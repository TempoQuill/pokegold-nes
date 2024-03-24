NewGame:
	lda #0
	sta wDebugFlags
	jsr ResetWRAM
	jsr ClearTilemapEtc
	jsr OakSpeech
	jsr InitializeWorld
	
	lda #SPAWN_HOME
	sta wDefaultSpawnpoint
	
	lda #MAPSETUP_WARP
	sta zMapEntryMethod
	jmp FinishContinueFunction
	
IFDEF DEBUG
	; farcall _DebugRoom
	rts
ENDIF

ResetWRAM:
	lda #0
	sta zBGMapMode
	; call _ResetWRAM ; pointless
	; ret
	
_ResetWRAM:
	; ld hl, wShadowOAM
	; ld bc, wOptions - wShadowOAM
	lda #0
	jsr ByteFill
	
	; ld hl, wGameData
	; ld bc, wGameDataEnd - wGameData
	lda #0
	jsr ByteFill
	
	; ld a, [rLY] ; NES equivalent is?
	sta zScratchByte
	jsr DelayFrame ; this won't use zScratchByte, will it?
	lda zRandomAdd
	sta wPlayerID + 1
	
	lda #<wPartyCount
	sta wScratchWord
	lda #>wPartyCount
	sta wScratchWord + 1
	jsr @InitList
	
	lda #0
	sta wCurBox
	sta wSavedAtLeastOnce
	
	jsr SetDefaultBoxNames
	
	; ld a, BANK(sBoxCount)
	; call OpenSRAM
	lda #<sBoxCount
	sta wScratchWord
	lda #>sBoxCount
	sta wScratchWord + 1
	jsr @InitList
	; call CloseSRAM
	
	lda #<wNumItems
	sta wScratchWord
	lda #>wNumItems
	sta wScratchWord + 1
	jsr @InitList
	
	lda #<wNumKeyItems
	sta wScratchWord
	lda #>wNumKeyItems
	sta wScratchWord + 1
	jsr @InitList
	
	lda #<wNumBalls
	sta wScratchWord
	lda #>wNumBalls
	sta wScratchWord + 1
	jsr @InitList
	
	lda #<wNumPCItems
	sta wScratchWord
	lda #>wNumPCItems
	sta wScratchWord + 1
	jsr @InitList
	
	lda #0
	sta wRoamMon1Species
	sta wRoamMon2Species
	sta wRoamMon3Species
	lda #$ff
	sta wRoamMon1MapGroup
	sta wRoamMon2MapGroup
	sta wRoamMon3MapGroup
	sta wRoamMon1MapNumber
	sta wRoamMon2MapNumber
	sta wRoamMon3MapNumber
	
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
	
	jsr LoadOrRegenerateLuckyIDNumber
	jsr InitializeMagikarpHouse
	
	lda #0
	sta wMonType
	
	sta wJohtoBadges
	sta wKantoBadges
	
	sta wCoins
	sta wCoins + 1
	
	sta wMoney
	lda #<START_MONEY
	sta wMoney + 1
	sta #>START_MONEY
	sta wMoney + 2
	
	lda #0
	sta wWhichMomItem
	
	lda #<MOM_MONEY >> 8 ; is this legal on asmf6?
	sta wMomItemTriggerBalance
	lda #<MOM_MONEY
	sta wMomItemTriggerBalance + 1
	lda #>MOM_MONEY
	sta wMomItemTriggerBalance + 2
	
	jsr InitializeNPCNames
	
	; farcall InitDecorations
	
	; farcall DeletePartyMonMail
	
	jmp ResetGameTime
	
@InitList:
	lda #0
	tay
	sta (wScratchWord), y
	lda #$ff
	sta (wScratchWord), y
	rts
	
SetDefaultBoxNames:
	; todo: finish this
	
