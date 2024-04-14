.enum $0000
IFDEF NSF_FILE
	.dsb 1
ELSE
PRG_00:			.dsb 1	; 00 / 01

PRG_SplashScreen:
PRG_Intro:
	.dsb 1	; 02 / 03

PRG_PokedexDataPointerTable:
PRG_DeleteSave:
	.dsb 1	; 04 / 05

PRG_SaveFunctions:	.dsb 1	; 06 / 07

PRG_Intro_Menu:
PRG_OakIntroGFX:
PRG_GameInit:
	.dsb 1	; 08 / 09

PRG_Tilesets_1:		.dsb 1	; 0a / 0b

PRG_Roofs:
PRG_Tilesets_2:
	.dsb 1	; 0c / 0d

PRG_ClockReset:
PRG_Tilesets_3:
PRG_CatchTutorial:
PRG_EggMoves:
	.dsb 1	; 0e / 0f

PRG_PokedexEntries_001_064:	.dsb 1	; 10 / 11
PRG_PokedexEntries_065_128:	.dsb 1	; 12 / 13
PRG_PokedexEntries_129_192:	.dsb 1	; 14 / 15
PRG_PokedexEntries_193_251:	.dsb 1	; 16 / 17

PRG_Tilesets_4:			.dsb 1	; 18 / 19
PRG_EffectCommands:		.dsb 1	; 1a / 1b
PRG_EnemyTrainers:		.dsb 1	; 1c / 1d
PRG_BattleCore:			.dsb 1	; 1e / 1f

PRG_EvolutionsAndAttacks:	.dsb 1	; 20 / 21

PRG_PicPointers:	.dsb 1	; 22 / 23
PRG_12:			.dsb 1	; 24 / 25
PRG_UnownPicPointers:	.dsb 1	; 26 / 27
PRG_TrainerPicPointers:	.dsb 1	; 28 / 29

PRG_15:
PRG_Credits:
	.dsb 1	; 2a / 2b

PRG_16:	.dsb 1	; 2c / 2d
PRG_17:	.dsb 1	; 2e / 2f

PRG_Maps:
PRG_Events:
	.dsb 1	; 30 / 31

PRG_MapBlocks_1:	.dsb 1	; 32 / 33
PRG_MapBlocks_2:	.dsb 1	; 34 / 35
PRG_1b:			.dsb 1	; 36 / 37
PRG_1c:			.dsb 1	; 38 / 39
PRG_1d:			.dsb 1	; 3a / 3b

PRG_MoveAnimations:
PRG_PokepicMapping:
	.dsb 1	; 3c / 3d

PRG_MapBlocks_3:
PRG_Tilesets_5:
	.dsb 1	; 3e / 3f

PRG_20:	.dsb 1	; 40 / 41
PRG_21:	.dsb 1	; 42 / 43

ENDIF
PRG_Audio:
PRG_Music0:	.dsb 1	; 44 / 45
PRG_Music1:	.dsb 1	; 46 / 47

PRG_Music2:
PRG_SFX:
PRG_Cries:
PRG_MonCries:
	.dsb 1	; 48 / 49

PRG_Music3:	.dsb 1	; 4a / 4b
PRG_Music4:	.dsb 1	; 4c / 4d

IFNDEF NSF_FILE

PRG_27:			.dsb 1	; 4e / 4f
PRG_28:			.dsb 1	; 50 / 51
PRG_StandardScripts:	.dsb 1	; 52 / 53
PRG_PhoneScripts:	.dsb 1	; 54 / 55
	.dsb 18

ENDIF

PRG_16K_End:
.ende
.enum (PRG_16K_End << 1)
PRG_DPCM0 = PRG_Music4 * 2 + 1
PRG_DPCM1:	.dsb 1
PRG_DPCM2:	.dsb 1
PRG_DPCM3:	.dsb 1
PRG_DPCM4:	.dsb 1
IFNDEF NSF_FILE
	PRG_Home:
	PRG_HomeROM1:	.dsb 1
	PRG_HomeROM2:
ELSE
	PRG_Home = 0
ENDIF
.ende

; PRG_RAM
.enum 0
RAM_MAIN:	.dsb 1
RAM_SAVE:	.dsb 1
.ende
