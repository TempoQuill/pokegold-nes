; base data struct members (see data/pokemon/base_stats/*.asm)
.enum 0
BASE_DEX_NO:		.dsb 1
BASE_STATS:
BASE_HP:		.dsb 1
BASE_ATK:		.dsb 1
BASE_DEF:		.dsb 1
BASE_SPD:		.dsb 1
BASE_SAT:		.dsb 1
BASE_SDF:		.dsb 1
BASE_TYPES:
BASE_TYPE_1:		.dsb 1
BASE_TYPE_2:		.dsb 1
BASE_CATCH_RATE:	.dsb 1
BASE_EXP:		.dsb 1
BASE_ITEMS:
BASE_ITEM_1:		.dsb 1
BASE_ITEM_2:		.dsb 1
BASE_GENDER:		.dsb 1
	.dsb 1
BASE_EGG_STEPS:		.dsb 1
	.dsb 1
BASE_PIC_SIZE:		.dsb 1
BASE_FRONTPIC:		.dsb 2
BASE_BACKPIC:		.dsb 2
BASE_GROWTH_RATE:	.dsb 1
BASE_EGG_GROUPS:	.dsb 1
BASE_TMHM:		.dsb (NUM_TM_HM + 7) / 8
BASE_DATA_SIZE:
.ende
; gender ratio constants
GENDER_F0 = 0
GENDER_F12_5 = $1f
GENDER_F25 = $3f
GENDER_F50 = $7f
GENDER_F75 = $bf
GENDER_F100 = $fe
GENDER_UNKNOWN = $ff

; wBaseGrowthRate values
; GrowthRates indexes (see data/growth_rates.asm)
.enum 0
GROWTH_MEDIUM_FAST:	.dsb 1
GROWTH_SLIGHTLY_FAST:	.dsb 1
GROWTH_SLIGHTLY_SLOW:	.dsb 1
GROWTH_MEDIUM_SLOW:	.dsb 1
GROWTH_FAST:		.dsb 1
GROWTH_SLOW:		.dsb 1
NUM_GROWTH_RATES:
.ende

; wBaseEggGroups values
.enum 1
EGG_MONSTER:		.dsb 1 ; 1
EGG_WATER_1:		.dsb 1 ; 2 (Amphibian)
EGG_BUG:		.dsb 1 ; 3
EGG_FLYING:		.dsb 1 ; 4
EGG_GROUND:		.dsb 1 ; 5 (Field)
EGG_FAIRY:		.dsb 1 ; 6
EGG_PLANT:		.dsb 1 ; 7 (Grass)
EGG_HUMANSHAPE:		.dsb 1 ; 8 (Human-Like)
EGG_WATER_3:		.dsb 1 ; 9 (Invertebrate)
EGG_MINERAL:		.dsb 1 ; a
EGG_INDETERMINATE:	.dsb 1 ; b (Amorphous)
EGG_WATER_2:		.dsb 1 ; c (Fish)
EGG_DITTO:		.dsb 1 ; d
EGG_DRAGON:		.dsb 1 ; e
EGG_NONE:		.dsb 1 ; f (Undiscovered)
.ende
; pokedex entries (see data/pokemon/dex_entries_*.asm)
NUM_DEX_ENTRY_BANKS = 4

; party_struct members (see macros/ram.asm)
.enum 0
MON_SPECIES:	.dsb 1
MON_ITEM:	.dsb 1
MON_MOVES:	.dsb NUM_MOVES
MON_ID:		.dsb 2
MON_EXP:	.dsb 3
MON_STAT_EXP:
MON_HP_EXP:	.dsb 2
MON_ATK_EXP:	.dsb 2
MON_DEF_EXP:	.dsb 2
MON_SPD_EXP:	.dsb 2
MON_SPC_EXP:	.dsb 2
MON_DVS:	.dsb 2
MON_PP:		.dsb NUM_MOVES
MON_HAPPINESS:	.dsb 1
MON_POKERUS:	.dsb 1
	.dsb 2
MON_LEVEL:	.dsb 1
BOXMON_STRUCT_LENGTH:
MON_STATUS:	.dsb 1
	.dsb 1
MON_HP:		.dsb 2
MON_MAXHP:	.dsb 2
MON_STATS:
MON_ATK:	.dsb 2
MON_DEF:	.dsb 2
MON_SPD:	.dsb 2
MON_SAT:	.dsb 2
MON_SDF:	.dsb 2
PARTYMON_STRUCT_LENGTH:
.ende
NICKNAMED_MON_STRUCT_LENGTH = PARTYMON_STRUCT_LENGTH + MON_NAME_LENGTH
REDMON_STRUCT_LENGTH = 44

MON_CRY_LENGTH = 5

; maximum number of party pokemon
PARTY_LENGTH = 6

; boxes
MONS_PER_BOX = 20
; box: count, species, mons, OTs, nicknames, padding
BOX_LENGTH = 1 + MONS_PER_BOX + 1 + (BOXMON_STRUCT_LENGTH + NAME_LENGTH + MON_NAME_LENGTH) * MONS_PER_BOX + 2$450
NUM_BOXES = 14
NUM_BOXES_JAPANESE = 9

; hall of fame
; hof_mon: species, id, dvs, level, nicknames
HOF_MON_LENGTH = 1 + 2 + 2 + 1 + (MON_NAME_LENGTH - 1) ;$10
; hall_of_fame: win count, party, terminator
HOF_LENGTH = 1 + HOF_MON_LENGTH * PARTY_LENGTH + 1 ;$62
NUM_HOF_TEAMS = 30

; evolution types (used in data/pokemon/evos_attacks.asm)
.enum 1
EVOLVE_LEVEL:		.dsb 1
EVOLVE_ITEM:		.dsb 1
EVOLVE_TRADE:		.dsb 1
EVOLVE_HAPPINESS:	.dsb 1
EVOLVE_STAT:		.dsb 1
.ende
; EVOLVE_HAPPINESS triggers
.enum 1
TR_ANYTIME:		.dsb 1
TR_MORNDAY:		.dsb 1
TR_NITE:		.dsb 1
.ende

; EVOLVE_STAT triggers
.enum 1
ATK_GT_DEF:	.dsb 1
ATK_LT_DEF:	.dsb 1
ATK_EQ_DEF:	.dsb 1
.ende

; wild data

NUM_GRASSMON = 7 ;data/wild/*_grass.asm table size
NUM_WATERMON = 3 ;data/wild/*_water.asm table size

GRASS_WILDDATA_LENGTH = 2 + 3 + NUM_GRASSMON * 2 * 3
WATER_WILDDATA_LENGTH = 2 + 1 + NUM_WATERMON * 2
FISHGROUP_DATA_LENGTH = 1 + 2 * 3

NUM_ROAMMON_MAPS = 16 ;RoamMaps table size (see data/wild/roammon_maps.asm)

; treemon sets
; TreeMons indexes (see data/wild/treemons.asm)
.enum 0
TREEMON_SET_NONE:	.dsb 1
TREEMON_SET_FOREST:	.dsb 1
TREEMON_SET_CANYON:	.dsb 1
TREEMON_SET_ROCK:	.dsb 1
NUM_TREEMON_SETS:
; last two are unused/ignored
TREEMON_SET_UNUSED:	.dsb 1
TREEMON_SET_CITY:	.dsb 1
.ende

; treemon scores
.enum 0
TREEMON_SCORE_BAD:	.dsb 1 ; 0
TREEMON_SCORE_GOOD:	.dsb 1 ; 1
TREEMON_SCORE_RARE:	.dsb 1 ; 2
.ende
; ChangeHappiness arguments (see data/events/happiness_changes.asm)
.enum 1
HAPPINESS_GAINLEVEL:		.dsb 1 ; 01
HAPPINESS_USEDITEM:		.dsb 1 ; 02
HAPPINESS_USEDXITEM:		.dsb 1 ; 03
HAPPINESS_GYMBATTLE:		.dsb 1 ; 04
HAPPINESS_LEARNMOVE:		.dsb 1 ; 05
HAPPINESS_FAINTED:		.dsb 1 ; 06
HAPPINESS_POISONFAINT:		.dsb 1 ; 07
HAPPINESS_BEATENBYSTRONGFOE:	.dsb 1 ; 08
HAPPINESS_OLDERCUT1:		.dsb 1 ; 09
HAPPINESS_OLDERCUT2:		.dsb 1 ; 0a
HAPPINESS_OLDERCUT3:		.dsb 1 ; 0b
HAPPINESS_YOUNGCUT1:		.dsb 1 ; 0c
HAPPINESS_YOUNGCUT2:		.dsb 1 ; 0d
HAPPINESS_YOUNGCUT3:		.dsb 1 ; 0e
HAPPINESS_BITTERPOWDER:		.dsb 1 ; 0f
HAPPINESS_ENERGYROOT:		.dsb 1 ; 10
HAPPINESS_REVIVALHERB:		.dsb 1 ; 11
HAPPINESS_GROOMING:		.dsb 1 ; 12
MON_HAPPINESS_LENGTH:
NUM_HAPPINESS_CHANGES = MON_HAPPINESS_LENGTH - 1
.ende

; significant happiness values
BASE_HAPPINESS        = 70
FRIEND_BALL_HAPPINESS = 200
HAPPINESS_TO_EVOLVE   = 220
HAPPINESS_THRESHOLD_1 = 100
HAPPINESS_THRESHOLD_2 = 200

; PP
PP_UP_MASK = %11000000
PP_UP_ONE  = %01000000
PP_MASK    = %00111111
