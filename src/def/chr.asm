; 2K banks
.enum 0
CHR_FrontSprites:	.dsb 159	; $00
CHR_BackSprites:	.dsb 92		; $af
CHR_UnownFrontPics:	.dsb 6		; $fb

CHR_BattleAnimations:	.dsb 2		; $101
CHR_BattleFont:		.dsb 1		; $103
CHR_OWFont:		.dsb 1		; $104
CHR_Title_BG:		.dsb 1		; $105
CHR_Title_OBJ:		.dsb 2		; $106
CHR_PokeGear_BG:	.dsb 1		; $108
CHR_PokeGear_OBJ:	.dsb 2		; $109
CHR_PokeDex_BG:		.dsb 1		; $10b
CHR_PokeDex_OBJ:	.dsb 2		; $10c
CHR_Diploma:		.dsb 1		; $10e
CHR_UnitFont:		.dsb 1		; $10f

CHR_Credits_BG:	; $110
; 0   - none
; 1   - the end
; 2-4 - bellossom
; 5-7 - elekid
; 8-b - sentret
; c-e - togepi
	.dsb 15
CHR_PokeGearFont:	.dsb 1		; $11f

; footprints should be sprites to be as accessible as possible
CHR_Footprints:	; $120
	.dsb 8

CHR_Evolution:		.dsb 1		; $128
CHR_UnownFont:		.dsb 1		; $129

CHR_Charizard1:		.dsb 1		; $12a
CHR_Charizard2:		.dsb 1		; $12b
CHR_Charizard3:		.dsb 1		; $12c
CHR_IntroGrass:		.dsb 1		; $12d
CHR_IntroWater:		.dsb 1		; $12e
CHR_NamingScreen:	.dsb 1		; $12f
CHR_Intro_OBJ:		.dsb 4		; $130
CHR_Mail:		.dsb 2		; $134
CHR_NewGame:		.dsb 1		; $136
CHR_Pack:		.dsb 1		; $137
CHR_Slots_BG:		.dsb 1		; $138
CHR_Slots_OBJ:		.dsb 2		; $139
CHR_Splashscreen:	.dsb 1		; $13b
CHR_SparklesStars:	.dsb 1		; $13c
CHR_StatsFont:		.dsb 1		; $13d
CHR_OverworldObjects:	.dsb 8		; $13e

CHR_Tilesets:				; $146
	.dsb TILESET_LENGTH

; $16a

.ende

TILESET_LENGTH = (CHR_Tilesets_End - CHR_Tilesets_Start) >> 1

.enum CHR_OverworldObjects << 1
CHR_Default:		.dsb 1
CHR_ObstaclesStatics:	.dsb 1
CHR_Sets:		.dsb 11
CHR_PokeIcons:		.dsb 3
.ende

.enum CHR_Tilesets << 1
CHR_Tilesets_Start:
CHR_Johto_1:		.dsb 5	; $28c
CHR_Johto_2:		.dsb 4	; $291
CHR_JohtoModern_1:	.dsb 5	; $295
CHR_JohtoModern_2:	.dsb 4	; $29a
CHR_Kanto:		.dsb 1	; $29e
			.dsb 4
CHR_House:		.dsb 1	; $2a3
			.dsb 1
CHR_PlayersHouse:	.dsb 1	; $2a5
			.dsb 1
CHR_PokeCenter:		.dsb 1	; $2a7
			.dsb 1
CHR_Gate:		.dsb 1	; $2a9
			.dsb 1
CHR_Port:		.dsb 1	; $2ab
			.dsb 4
CHR_Lab:		.dsb 1	; $2b0
			.dsb 1
CHR_Facility:		.dsb 1	; $2b2
			.dsb 1
CHR_Mart:		.dsb 1	; $2b4
			.dsb 1
CHR_Mansion:		.dsb 1	; $2b6
			.dsb 1
CHR_GameCorner:		.dsb 1	; $2b8
			.dsb 1
CHR_EliteFourRoom:	.dsb 1	; $2ba
			.dsb 4
CHR_TraditionalHouse:	.dsb 1	; $2bf
			.dsb 1
CHR_TrainStation:	.dsb 1	; $2c1
			.dsb 1
CHR_ChampionsRoom:	.dsb 1	; $2c3
			.dsb 1
CHR_Lighthouse:		.dsb 1	; $2c5
			.dsb 1
CHR_PlayersRoom:	.dsb 1	; $2c7
			.dsb 1
CHR_Tower:		.dsb 1	; $2c9
			.dsb 5
CHR_Cave:		.dsb 1	; $2cf
			.dsb 4
CHR_Tilesets_End:	; $2d4
.ende

.enum 0 ; credits offsets
CREDITS_BG_NONE:	.dsb 1
CREDITS_BG_THE_END:	.dsb 1
CREDITS_BG_BELLOSSOM:	.dsb 3
CREDITS_BG_ELEKID:	.dsb 3
CREDITS_BG_SENTRET:	.dsb 4
CREDITS_BG_TOGEPI:	.dsb 3
.ende
