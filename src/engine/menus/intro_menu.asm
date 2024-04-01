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
	lda #<wBoxNames
	sta zScratchWord
	lda #>wBoxNames
	sta zScratchWord + 1
	ldx #0
@loop:
	; psh zScratchWord
	lda zScratchWord
	pha
	lda zScratchWord + 1
	pha
	lda #<@Box
	sta zCopySrcAddr
	lda #>@Box
	sta zCopySrcAddr + 1
	jsr CopyName2
	ldy #0
	dec zScratchWord
	inx
	txa
	cmp #10
	bcs @less
	sec
	sbc #10
	sta (zScratchWord), y
	inc zScratchWord
	
@less:
	clc
	adc #"0"
	sta (zScratchWord), y
	inc zScratchWord
	lda #"@"
	sta (zScratchWord), y
	; pll zScratchWord
	pla
	sta zScratchWord + 1
	pla
	adc #9
	sta zScratchWord
	inx
	cpx #NUM_BOXES
	bcs @loop
	rts
	
@Box:
	db "BOX@"
	
InitializeMagikarpHouse:
	lda #3
	sta wBestMagikarpLengthFeet
	lda #6
	sta wBestMagikarpLengthFeet + 1
	lda #<@Ralph
	sta zCopySrcAddr
	lda #>@Ralph
	sta zCopySrcAddr + 1
	jmp CopyName2
	
@Ralph:
	db "RALPH@"
	
InitializeNPCNames:
	lda #<@Rival
	sta zCopySrcAddr
	lda #>@Rival
	sta zCopySrcAddr + 1
	lda #<wRivalName
	sta zCopyDestAddr
	lda #>wRivalName
	sta zCopyDestAddr + 1
	jsr @Copy
	
	lda #<@Mom
	sta zCopySrcAddr
	lda #>@Mom
	sta zCopySrcAddr + 1
	lda #<wMomName
	sta zCopyDestAddr
	lda #>wMomName
	sta zCopyDestAddr + 1
	jsr @Copy
	
	lda #<@Red
	sta zCopySrcAddr
	lda #>@Red
	sta zCopySrcAddr + 1
	lda #<wRedsName
	sta zCopyDestAddr
	lda #>wRedsName
	sta zCopyDestAddr + 1
	jsr @Copy
	
	lda #<@Green
	sta zCopySrcAddr
	lda #>@Green
	sta zCopySrcAddr + 1
	lda #<wGreenName
	sta zCopyDestAddr
	lda #>wGreenName
	sta zCopyDestAddr + 1

@Copy:
	lda #NAME_LENGTH
	jmp CopyBytes
	
@Rival:	db "???@"
@Red:	db "RED@"	; unused
@Green:	db "GREEN@"	; unused
@Mom:	db "MOM@"

InitializeWorld:
	jsr ShrinkPlayer
;	farcall SpawnPlayer
;	farcall _InitializeStartDay
	rts
	
LoadOrRegenerateLuckyIDNumber:
;	ld a, BANK(sLuckyIDNumber)
;	call OpenSRAM
	ldx wCurDay
	inx
	stx zScratchByte
	lda sLuckyNumberDay
	cmp zScratchByte
	bne +
	ldx sLuckyIDNumber + 1
	lda sLuckyIDNumber
	jmp @skip
+	stx sLuckyNumberDay
	jsr Random
	tax
	jsr Random
	
@skip:
	sta wLuckyIDNumber
	sta sLuckyIDNumber
	stx wLuckyIDNumber + 1
	stx sLuckyIDNumber + 1
;	jp CloseSRAM
	rts
	
Continue:
;	farcall TryLoadSaveFile
	RCS ; bcs @FailToLoad
	jsr LoadStandardMenuHeader
	jsr DisplaySaveInfoOnContinue
	lda #1
	sta zBGMapMode
	ldy #20
	jsr DelayFrames
	jsr ConfirmContinue
	bcc @Check1Pass
	jsr CloseWindow
	rts ; jmp @FailToLoad
	
@Check1Pass:
	lda #8
	sta zMusicSilence
	lda #MUSIC_NONE
	sta zMusicSilenceID
	jsr ClearBGPalettes
	jsr CloseWindow
	jsr ClearTilemap
	ldy #20
	jsr DelayFrames
;	farcall JumpRoamMons
	lda wSpawnAfterChampion
	cmp #SPAWN_LANCE
	beq @SpawnAfterE4
	lda #MAPSETUP_CONTINUE
	sta zMapEntryMethod
	jmp FinishContinueFunction
	
@SpawnAfterE4:
	lda #SPAWN_NEW_BARK
	sta wDefaultSpawnpoint
	jsr PostCreditsSpawn
	jmp FinishContinueFunction
	
SpawnAfterRed:
	lda #SPAWN_MT_SILVER
	sta wDefaultSpawnpoint
	
PostCreditsSpawn:
	lda #0
	sta wSpawnAfterChampion
	lda #MAPSETUP_WARP
	sta zMapEntryMethod
	rts
	
ConfirmContinue:
	jsr DelayFrame
	jsr GetJoypad
	lda zJoyPressed
	bit #A_BUTTON_F
	bne @PressA
	bit #B_BUTTON_F
	beq ConfirmContinue
	sec
@PressA:
	rts
	
FinishContinueFunction:
	lda #0
	sta wDontPlayMapMusicOnReload
	lda wGameTimerPaused
	ora #GAME_TIMER_COUNTING_F
;	farcall OverworldLoop
	lda wSpawnAfterChampion
	cmp #SPAWN_RED
	beq @AfterRed
	jmp Reset
	
@AfterRed:
	jsr SpawnAfterRed
	jmp FinishContinueFunction
	
DisplaySaveInfoOnContinue:
	lda #4
	sta zScratchWord
	lda #8
	sta zScratchWord + 1
	
DisplayNormalContinueData:
	jsr Continue_LoadMenuHeader
	jsr Continue_DisplayBadgesDex
	jsr Continue_PrintGameTime
	jsr LoadFontsExtra
	jmp UpdateSprites
	
Continue_LoadMenuHeader:
	lda #0
	sta zBGMapMode
	lda #<@MenuHeader_Dex
	sta zScratchWord
	lda #>@MenuHeader_Dex
	sta zScratchWord + 1
	lda wStatusFlags
	bit #STATUSFLAGS_POKEDEX_F
	bne +
	lda #<@MenuHeader_NoDex
	sta zScratchWord
	lda #>@MenuHeader_NoDex
	sta zScratchWord + 1
+	jsr _OffsetMenuHeader
	jsr MenuBox
	jmp PlaceVerticalMenuItems
	
@MenuHeader_Dex:
	.db MENU_BACKUP_TILES ; flags
;	menu_coords 0, 0, 15, 9
	.dw @MenuData_Dex
	.db 1 ; default option
	
@MenuData_Dex:
	db 0 ; flags
	db 4 ; items
	db 			"PLAYER ", _PLAYER_, "@"
	db			"BADGES@"
	db 	_POKE_,	"DEX@"
	db			"TIME@"
	
@MenuHeader_NoDex:
	.db MENU_BACKUP_TILES ; flags
;	menu_coords 0, 0, 15, 9
	.dw @MenuData_NoDex
	.db 1 ; default option
	
@MenuData_NoDex:
	db 0 ; flags
	db 4 ; items
	db "PLAYER ", _PLAYER_, "@"
	db "BADGES@"
	db "@"
	db "TIME@"
	
Continue_DisplayBadgesDex:
	jsr MenuBoxCoord2Tile
	; psh zScratchWord
	lda zScratchWord
	pha
	lda zScratchWord + 1
	pha
;	decoord 13, 4, 0
;	add hl, de
	jsr Continue_DisplayBadgeCount
	; pll zScratchWord
	pla
	sta zScratchWord + 1
	pla
	sta zScratchWord
	; psh zScratchWord
	lda zScratchWord
	pha
	lda zScratchWord + 1
	pha
;	deecord 12, 6, 0
;	add hl, de
	jsr Continue_DisplayPokedexNumCaught
	; pll zScratchWord
	pla
	sta zScratchWord + 1
	pla
	sta zScratchWord
	rts
	
Continue_PrintGameTime:
;	decoord 9, 8, 0
;	add hl, de
	jmp Continue_DisplayGameTime
	
Continue_DisplayBadgeCount:
	; psh zScratchWord
	lda zScratchWord
	pha
	lda zScratchWord + 1
	pha
	lda #<wJohtoBadges
	sta zScratchWord
	lda #>wJohtoBadges
	sta zScratchWord + 1
	ldx #2
	jsr CountSetBits
	; pll zScratchWord
	pla
	sta zScratchWord + 1
	pla
	sta zScratchWord
;	ld de, wNumSetBits
;	lb bc, 1, 2
	jmp PrintNum
	
Continue_DisplayPokedexNumCaught:
	lda wStatusFlags
	bit #STATUSFLAGS_POKEDEX_F
	REQ
	; psh zScratchWord
	lda zScratchWord
	pha
	lda zScratchWord + 1
	pha
	lda #<wPokedexCaught
	sta zScratchWord
	lda #>wPokedexCaught
	sta zScratchWord + 1
if NUM_POKEMON % 8
	ldx #(NUM_POKEMON / 8) + 1
else
	ldx #(NUM_POKEMON / 8)
endif
	jsr CountSetBits
	; pll zScratchWord
	pla
	sta zScratchWord + 1
	pla
	sta zScratchWord
;	ld de, wNumSetBits
;	lb bc, 1, 3
	jmp PrintNum
	
Continue_DisplayGameTime:
;	ld de, wGameTimeHours
;	lb bc, 2, 3
	jsr PrintNum
	lda #":"
	ldy #0
	sta (zScratchWord), y
	inc zScratchWord
;	ld de, wGameTimeMinutes
;	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	jmp PrintNum
	
OakSpeech:
	jsr RotateFourPalettesLeft
	jsr ClearTilemap
	
	ldy #MUSIC_ROUTE_30
	jsr PlayMusic
	
	jsr RotateFourPalettesRight
	jsr RotateThreePalettesRight
	lda #0
	sta wCurPartySpecies
	lda #POKEMON_PROF
	sta wTrainerClass
	jsr Intro_PrepTrainerPic
	
;	ld b, SCGB_TRAINER_OR_MON_FRONTPIC_PALS
;	call GetSGBLayout
	jsr Intro_RotatePalettesLeftFrontpic
	
	lda #<OakText1
	sta zTextPointer
	lda #>OakText1
	sta zTextPointer + 1
	jsr PrintText
	jsr RotateThreePalettesRight
	jsr ClearTilemap
	
	lda #MARILL
	sta wCurSpecies
	sta wCurPartySpecies
	jsr GetBaseData
	
;	hlcoord 6, 4
	jsr PrepMonFrontpic
	
	lda #0
	sta wTempMonDVs
	sta wTempMonDVs + 1
	
;	ld b, SCGB_TRAINER_OR_MON_FRONTPIC_PALS
;	call GetSGBLayout
	jsr Intro_WipeInFrontpic
	
	lda #<OakText2
	sta zTextPointer
	lda #>OakText2
	sta zTextPointer
	jsr PrintText
	lda #<OakText4
	sta zTextPointer
	lda #>OakText4
	sta zTextPointer
	jsr PrintText
	jsr RotateThreePalettesRight
	jsr ClearTilemap
	
	lda #0
	sta wCurPartySpecies
	lda #POKEMON_PROF
	sta wTrainerClass
	jsr Intro_PrepTrainerPic
	
;	ld b, SCGB_TRAINER_OR_MON_FRONTPIC_PALS
;	call GetSGBLayout
	jsr Intro_RotatePalettesLeftFrontpic
	
	lda #<OakText5
	sta zTextPointer
	lda #>OakText5
	sta zTextPointer + 1
	jsr PrintText
	jsr RotateThreePalettesRight
	jsr ClearTilemap
	
	lda #0
	sta wCurPartySpecies
	lda #CAL
	sta wTrainerClass
	jsr Intro_PrepTrainerPic
	
;	ld b, SCGB_TRAINER_OR_MON_FRONTPIC_PALS
;	call GetSGBLayout
	jsr Intro_RotatePalettesLeftFrontpic
	
	lda #<OakText6
	sta zScratchWord
	lda #>OakText6
	sta zScratchWord + 1
	jsr PrintText
	jsr NamePlayer
	lda #<OakText7
	sta zScratchWord
	lda #>OakText7
	sta zScratchWord + 1
	jmp PrintText
	
OakText1:
	text_far _OakText1
	text_end
	
OakText2:
	text_far _OakText2
	text_asm
	lda #MARILL
	jsr PlayMonCry
	jsr WaitSFX
	lda #<OakText3
	sta zTextPointer
	lda #>OakText3
	sta zTextPointer + 1
	rts
	
OakText3:
	text_far _OakText3
	text_end
	
OakText4:
	text_far _OakText4
	text_end
	
OakText5:
	text_far _OakText5
	text_end
	
OakText6:
	text_far _OakText6
	text_end
	
OakText7:
	text_far _OakText7
	text_end
	
NamePlayer:
	jsr MovePlayerPicRight
	lda #<NameMenuHeader
	sta zScratchWord
	lda #>NameMenuHeader
	sta zScratchWord + 1
	jsr ShowPlayerNamingChoices
	ldx wMenuCursorY
	dex
	beq @NewName
	lda #<wPlayerName
	sta zCopyDestAddr
	lda #>wPlayerName
	sta zCopyDestAddr + 1
	jsr StorePlayerName
;	farcall ApplyMonOrTrainerPals
	jmp MovePlayerPicLeft
	
@NewName:
	ldx #NAME_PLAYER
	lda #<wPlayerName
	ldy #>wPlayerName
	sta zCopyDestAddr
	sty zCopyDestAddr + 1
;	farcall NamingScreen
	jsr RotateThreePalettesRight
	jsr ClearTilemap
	
	jsr LoadFontsExtra
	jsr WaitBGMap
	
	lda #0
	ldy #CAL
	sta wCurPartySpecies
	sty wTrainerClass
	jsr Intro_PrepTrainerPic
	
;	ld b, SCGB_TRAINER_OR_MON_FRONTPIC_PALS
;	call GetSGBLayout
	jsr RotateThreePalettesRight
	
	lda #<wPlayerName
	ldy #>wPlayerName
	sta zCopyDestAddr
	sty zCopyDestAddr + 1
	lda #<PlayerNameArray
	ldy #>PlayerNameArray
	sta zCopySrcAddr
	sta zCopySrcAddr + 1
	jmp InitName
	
.include "src/data/player_names.asm"
