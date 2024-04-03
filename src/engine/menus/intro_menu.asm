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

; now that I think about it, this is unreachable even with DEBUG defined, so why's it here?
; IFDEF DEBUG
	; farcall _DebugRoom
	; rts
; ENDIF

ResetWRAM:
	LDA #0
	STA zBGMapMode
	; call _ResetWRAM ; pointless
	; ret
	
_ResetWRAM:
	ldx #<wShadowOAM
	ldy #>ShadowOAM
	stx zFillAddr
	sty zFillAddr + 1
	ldx #<(wOptions - wShadowOAM)
	ldy #>(wOptions - wShadowOAM)
	stx zFillSize
	sty zFillSize + 1
	LDA #0
	JSR ByteFill
	
	ldx #<wGameData
	ldy #>wGameData
	stx zFillAddr
	sty zFillAddr + 1
	ldx #<(wGameDataEnd - wGameData)
	ldy #>(wGameDataEnd - wGameData)
	stx zFillSize
	sty zFillSize + 1
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
	lda #20
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
	lda #20
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
	ora #A_BUTTON_F
	bne @PressA
	ora #B_BUTTON_F
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
	ora #STATUSFLAGS_POKEDEX_F
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
	OGN 0, 0, 13, 4
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
	OGN 0, 0, 12, 6
;	add hl, de
	jsr Continue_DisplayPokedexNumCaught
	; pll zScratchWord
	pla
	sta zScratchWord + 1
	pla
	sta zScratchWord
	rts
	
Continue_PrintGameTime:
	OGN 0, 0, 9, 8
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
	ora #STATUSFLAGS_POKEDEX_F
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
	
	OGT 0, 6, 4
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

ShowPlayerNamingChoices:
	jsr LoadMenuHeader
	jsr VerticalMenu
	ldx wMenuCursorY
	dex
	txa
	jsr CopyNameFromMenu
	jmp CloseWindow
	
StorePlayerName:
;	ld hl, wStringBuffer2
;	ld bc, NAME_LENGTH
	jmp CopyBytes
	
ShrinkPlayer:
	PHW
	
	lda #32
	sta zMusicSilence
	ldy #MUSIC_NONE
	sta zMusicSilenceID
	
	ldy #SFX_ESCAPE_ROPE
	jsr PlaySFX
	pla
	jsr PushLower16K
	
	lda #8
	jsr DelayFrames
	
	lda #PRG_OakIntroGFX
	ldx #<Shrink1Pic
	ldy #>Shrink1Pic
	stx zScratchWord
	sty zScratchWord + 1
	jsr ShrinkFrame
	
	lda #8
	jsr DelayFrames
	
	lda #PRG_OakIntroGFX
	ldx #<Shrink2Pic
	dly #>Shrink2Pic
	stx zScratchWord
	sty zScratchWord + 1
	jsr ShrinkFrame
	
	lda #8
	jsr DelayFrames
	
	OGT 0, 6, 5
	ldx #7
	txy ; ldy #7 would be a waste of 1 byte here
	jsr ClearBox
	
	lda #3
	jsr DelayFrames
	
	jsr Intro_PlaceChrisSprite
;	jsr LoadFontsExtra
	
	lda #50
	jsr DelayFrames
	
	jsr RotateThreePalettesRight
	jmp ClearTilemap
	
MovePlayerPicRight:
	OGT 0, 6, 4
	ldy #1
	bne MovePlayerPic
	
MovePlayerPicLeft:
	OGT 0, 6, 4
	ldy #-1
MovePlayerPic:
	ldx #7 + 1
@loop:
	pha
	PHX
	PHY
	lda #0
	sta zBGMapMode
	ldy #7
	sty zScratchWord
	sty zScratchWord + 1
;	predef PlaceGraphic
	lda #0
	sta zBGMapThird
	jsr WaitBGMap
	jsr DelayFrame
	PLY
	PLX
;	add hl, de ; de = y
	pla
	PHX
	tax
	dex
	txa
	PLX
	bne @loop
	rts
	
Intro_RotatePalettesLeftFrontpic:
	; todo: add a nes-compatible version
	; ld hl, IntroFadePalettes
	; ld b, IntroFadePalettes.End - IntroFadePalettes
@loop:
	; ld a, [hli]
	; call DmgToCgbBGPals
	; ld c, 10
	; call DelayFrames
	; dec b
	; jr nz, .loop
	; ret

IntroFadePalettes:
	; dc 1, 1, 1, 0
	; dc 2, 2, 2, 0
	; dc 3, 3, 3, 0
	; dc 3, 3, 2, 0
	; dc 3, 3, 1, 0
	; dc 3, 2, 1, 0
@End:

Intro_WipeInFrontpic:
	lda #$77
	sta zWX ; what's the NES equivalent?
	jsr DelayFrame
	lda #$e4
	jsr DmgToCgbBGPals
@loop:
	jsr DelayFrame
	lda zWX ; what's the NES equivalent?
	sec
	sbc #8
	cmp #$ff
	REQ
	sta zWX ; what's the NES equivalent?
	jmp @loop
	
Intro_PrepTrainerPic:
;	ld de, vTiles2
;	farcall GetTrainerPic
	lda #0
	sta zGraphicStartTile
	OGT 0, 6, 4
	ldy #7
	tyx
;	predef PlaceGraphic
	rts
	
ShrinkFrame:
;	ld de, vTiles2
	ldx #7 * 7
;	predef DecompressGet2bpp
	lda #0
	sta zGraphicStartTile
	OGT 0, 6, 4
	ldy #7
	tyx
;	predef PlaceGraphic
	rts
	
Intro_PlaceChrisSprite:
	; ld de, ChrisSpriteGFX
	; lb bc, BANK(ChrisSpriteGFX), 12
	; ld hl, vTiles0
	jsr Request2bpp
	
	ldx #<wShadowOAMSprite00
	ldy #>wShadowOAMSprite00
	stx zScratchWord
	sty zScratchWord + 1
	ldx #<@sprites
	ldy #>@sprites
	stx zTemp16Bit1
	sty zTemp16Bit1 + 1
	ldx #0
	txy
	lda (zTemp16Bit1), y
	iny
	
	sta zScratchByte
@loop:
	lda (zTemp16Bit1), y
	iny
	sta (zScratchWord, x) ; y
	inx
	lda (zTemp16Bit1), y
	iny
	sta (zScratchWord, x) ; tile id
	inx
	lda #PAL_OW_RED
	sta (zScratchWord, x) ; attributes
	inx
	lda (zTemp16Bit1), y
	iny
	sta (zScratchWord, x) ; x
	inx
	dec zScratchByte
	bne @loop
	rts
	
@sprites:
	.db 4
	; y pxl, tile id, x pxl
	.db 76, 0, 72
	.db 76, 1, 80
	.db 84, 2, 72
	.db 84, 3, 80
	
TITLESCREENOPTION_MAIN_MENU 			= 0
TITLESCREENOPTION_DELETE_SAVE_DATA		= 1
TITLESCREENOPTION_RESTART				= 2
NUM_TITLESCREENOPTIONS 					= 3

IntroSequence:
	farcall PRG_SplashScreen, SplashScreen
	bcs StartTitleScreen
	farcall PRG_Intro, GoldSilverIntro
	
StartTitleScreen:
	jsr TitleScreen
	jsr DelayFrame
-	jsr RunTitleScreen
	bcc -
	
	jsr ClearSprites
	jsr ClearBGPalettes
	
; todo: figure out a way to know PPUCTRL's settings by this point, then switch to 8x8 sprites
	jsr ClearTilemap
	lda #0
	sta zLCDCPointer ; what's the NES equivalent?
	ldy wTitleScreenSelectedOption
	cpy #NUM_TITLESCREENOPTIONS
	bcs +
	ldy #0
+	lda @ptrs_lo, y
	sec
	sbc #1
	tax
	lda @ptrs_hi, y
	sbc #0
	pha
	PHX
	rts

@ptrs_hi:
	.dh MainMenu
	.dh DeleteSaveData
	.dh IntroSequence

@ptrs_lo:
	.dl MainMenu
	.dl DeleteSaveData
	.dl IntroSequence
	
.include "src/engine/movie/title.asm"

RunTitleScreen:
	jsr ScrollTitleScreenClouds
	lda wJumptableIndex
	bmi +done
	jsr TitleScreenScene
	ldx #1
	stx zOAMUpdate
;	farcall PlaySpriteAnimations
	dex ; I'm not certain that X won't be destroyed by PlaySpriteAnimations, if it will then fix this
	stx zOAMUpdate
	jsr UpdateTitleTrailSprite
	jsr DelayFrame
	clc
	rts
	
+done:
	sec
	rts
	
ScrollTitleScreenClouds:
if GAME_VERSION = _VER_GOLD
	lda zNMITimer
	and #7
	RNE
endif
	ldx wLYOverrides + $5f
	lda #<(wLYOverrides + $5f)
	ldy #>(wLYOverrides + $5f)
	sta zScratchWord
	sty zScratchWord + 1
	dex
	lda #0
	ldy #$28
	sta zTemp16Bit1
	sty zTemp16Bit1 + 1
	jmp ByteFill
	
TitleScreenScene:
	ldx wJumptableIndex
	lda @scenes_lo, x
	sec
	sbc #1
	tay
	lda @scenes_hi, x
	sbc #0
	pha
	PHY
	rts
	
@scenes_hi:
	.dh TitleScreenTimer
	.dh TitleScreenMain
	.dh TitleScreenEnd

@scenes_lo:
	.dl TitleScreenTimer
	.dl TitleScreenMain
	.dl TitleScreenEnd
	
TitleScreenTimer:
	inc wJumptableIndex
	
	ldx #<wTitleScreenTimer
	ldy #>wTitleScreenTimer
	stx zScratchWord
	sty zScratchWord + 1
if GAME_VERSION = _GOLD_VER
	lda #<(84 * 60 + 16)
else
	lda #<(73 * 60 + 36)
endif
	ldy #0
	sta (zScratchWord), y
	inc zScratchWord
if GAME_VERSION = _GOLD_VER
	lda #>(84 * 60 + 16)
else
	lda #>(73 * 60 + 36)
endif
	sta (zScratchWord), y
	rts
	
TitleScreenMain:
; Run the timer down.
	; todo
	
