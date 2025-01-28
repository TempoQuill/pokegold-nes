; decoration attributes
.enum 0
DECOATTR_TYPE:		.dsb 1
DECOATTR_NAME:		.dsb 1
DECOATTR_ACTION:	.dsb 1
DECOATTR_EVENT_FLAG:	.dsb 2
DECOATTR_SPRITE:	.dsb 1

DECOATTR_STRUCT_LENGTH:
.ende

; decoration types
.enum 1
DECO_PLANT:	.dsb 1
DECO_BED:	.dsb 1
DECO_CARPET:	.dsb 1
DECO_POSTER:	.dsb 1
DECO_DOLL:	.dsb 1
DECO_BIGDOLL:	.dsb 1
DECO_TYPE_STOP:

NUM_DECO_TYPES = DECO_TYPE_STOP - 1
.ende

; DecorationNames indexes (see src/data/decorations/names.asm)
.enum 0
CANCEL_DECO:		.dsb 1
PUT_IT_AWAY:		.dsb 1
MAGNAPLANT:		.dsb 1
TROPICPLANT:		.dsb 1
JUMBOPLANT:		.dsb 1
TOWN_MAP_POSTER:	.dsb 1
FAMICOM:		.dsb 1
SUPER_NES:		.dsb 1
NINTENDO_64:		.dsb 1
VIRTUAL_BOY:		.dsb 1
GOLD_TROPHY:		.dsb 1
SILVER_TROPHY:		.dsb 1
SURF_PIKA_DOLL:		.dsb 1
_BED:			.dsb 1
_CARPET:		.dsb 1
_POSTER:		.dsb 1
_DOLL:			.dsb 1
BIG_:			.dsb 1
FEATHERY_BED:		.dsb 1
PIKACHU_BED:		.dsb 1
PINK_BED:		.dsb 1
POLKADOT_BED:		.dsb 1
RED_CARPET:		.dsb 1
BLUE_CARPET:		.dsb 1
YELLOW_CARPET:		.dsb 1
GREEN_CARPET:		.dsb 1

NUM_DECO_NAMES:
.ende

; DoDecorationAction2.DecoActions indexes (see src/engine/overworld/decorations.asm)
.enum 1
SET_UP_BED:		.dsb 1
PUT_AWAY_BED:		.dsb 1
SET_UP_CARPET:		.dsb 1
PUT_AWAY_CARPET:	.dsb 1
SET_UP_PLANT:		.dsb 1
PUT_AWAY_PLANT:		.dsb 1
SET_UP_POSTER:		.dsb 1
PUT_AWAY_POSTER:	.dsb 1
SET_UP_CONSOLE:		.dsb 1
PUT_AWAY_CONSOLE:	.dsb 1
SET_UP_BIG_DOLL:	.dsb 1
PUT_AWAY_BIG_DOLL:	.dsb 1
SET_UP_DOLL:		.dsb 1
PUT_AWAY_DOLL:		.dsb 1

DECO_ACTION_STOP:
NUM_DECO_ACTIONS = DECO_ACTION_STOP - 1
.ende

; DecorationIDs indexes (see src/data/decorations/decorations.asm)
.enum 0
DECOFLAG_FEATHERY_BED:		.dsb 1
DECOFLAG_PINK_BED:		.dsb 1
DECOFLAG_POLKADOT_BED:		.dsb 1
DECOFLAG_PIKACHU_BED:		.dsb 1
DECOFLAG_RED_CARPET:		.dsb 1
DECOFLAG_BLUE_CARPET:		.dsb 1
DECOFLAG_YELLOW_CARPET:		.dsb 1
DECOFLAG_GREEN_CARPET:		.dsb 1
DECOFLAG_MAGNAPLANT:		.dsb 1
DECOFLAG_TROPICPLANT:		.dsb 1
DECOFLAG_JUMBOPLANT:		.dsb 1
DECOFLAG_TOWN_MAP:		.dsb 1
DECOFLAG_PIKACHU_POSTER:	.dsb 1
DECOFLAG_CLEFAIRY_POSTER:	.dsb 1
DECOFLAG_JIGGLYPUFF_POSTER:	.dsb 1
DECOFLAG_FAMICOM:		.dsb 1
DECOFLAG_SNES:			.dsb 1
DECOFLAG_N64:			.dsb 1
DECOFLAG_VIRTUAL_BOY:		.dsb 1
DECOFLAG_PIKACHU_DOLL:		.dsb 1
DECOFLAG_SURF_PIKACHU_DOLL:	.dsb 1
DECOFLAG_CLEFAIRY_DOLL:		.dsb 1
DECOFLAG_JIGGLYPUFF_DOLL:	.dsb 1
DECOFLAG_BULBASAUR_DOLL:	.dsb 1
DECOFLAG_CHARMANDER_DOLL:	.dsb 1
DECOFLAG_SQUIRTLE_DOLL:		.dsb 1
DECOFLAG_POLIWAG_DOLL:		.dsb 1
DECOFLAG_DIGLETT_DOLL:		.dsb 1
DECOFLAG_STARYU_DOLL:		.dsb 1
DECOFLAG_MAGIKARP_DOLL:		.dsb 1
DECOFLAG_ODDISH_DOLL:		.dsb 1
DECOFLAG_GENGAR_DOLL:		.dsb 1
DECOFLAG_SHELLDER_DOLL:		.dsb 1
DECOFLAG_GRIMER_DOLL:		.dsb 1
DECOFLAG_VOLTORB_DOLL:		.dsb 1
DECOFLAG_WEEDLE_DOLL:		.dsb 1
DECOFLAG_UNOWN_DOLL:		.dsb 1
DECOFLAG_GEODUDE_DOLL:		.dsb 1
DECOFLAG_MACHOP_DOLL:		.dsb 1
DECOFLAG_TENTACOOL_DOLL:	.dsb 1
DECOFLAG_BIG_SNORLAX_DOLL:	.dsb 1
DECOFLAG_BIG_ONIX_DOLL:		.dsb 1
DECOFLAG_BIG_LAPRAS_DOLL:	.dsb 1

NUM_NON_TROPHY_DECOS:

DECOFLAG_GOLD_TROPHY_DOLL:	.dsb 1
DECOFLAG_SILVER_TROPHY_DOLL:	.dsb 1

NUM_DECOS:
.ende

; decorations:
; - DecorationAttributes (see src/data/decorations/attributes.asm)
; FindOwnedBeds.beds values (see src/engine/overworld/decorations.asm)
.enum 1
BEDS:				.dsb 1
DECO_FEATHERY_BED:		.dsb 1
DECO_PINK_BED:			.dsb 1
DECO_POLKADOT_BED:		.dsb 1
DECO_PIKACHU_BED:		.dsb 1
; FindOwnedCarpets.carpets values (see src/engine/overworld/decorations.asm)
CARPETS:			.dsb 1
DECO_RED_CARPET:		.dsb 1
DECO_BLUE_CARPET:		.dsb 1
DECO_YELLOW_CARPET:		.dsb 1
DECO_GREEN_CARPET:		.dsb 1
; FindOwnedPlants.plants values (see src/engine/overworld/decorations.asm)
PLANTS:				.dsb 1
DECO_MAGNAPLANT:		.dsb 1
DECO_TROPICPLANT:		.dsb 1
DECO_JUMBOPLANT:		.dsb 1
; FindOwnedPosters.posters values (see src/engine/overworld/decorations.asm)
POSTERS:			.dsb 1
DECO_TOWN_MAP:			.dsb 1
DECO_PIKACHU_POSTER:		.dsb 1
DECO_CLEFAIRY_POSTER:		.dsb 1
DECO_JIGGLYPUFF_POSTER:		.dsb 1
; FindOwnedConsoles.consoles values (see src/engine/overworld/decorations.asm)
CONSOLES:			.dsb 1
DECO_FAMICOM:			.dsb 1
DECO_SNES:			.dsb 1
DECO_N64:			.dsb 1
DECO_VIRTUAL_BOY:		.dsb 1
; FindOwnedBigDolls.big_dolls values (see src/engine/overworld/decorations.asm)
BIG_DOLLS:			.dsb 1
DECO_BIG_SNORLAX_DOLL:		.dsb 1
DECO_BIG_ONIX_DOLL:		.dsb 1
DECO_BIG_LAPRAS_DOLL:		.dsb 1
; FindOwnedOrnaments.ornaments values (see src/engine/overworld/decorations.asm)
DOLLS:				.dsb 1
DECO_PIKACHU_DOLL:		.dsb 1
DECO_SURF_PIKACHU_DOLL:		.dsb 1
DECO_CLEFAIRY_DOLL:		.dsb 1
DECO_JIGGLYPUFF_DOLL:		.dsb 1
DECO_BULBASAUR_DOLL:		.dsb 1
DECO_CHARMANDER_DOLL:		.dsb 1
DECO_SQUIRTLE_DOLL:		.dsb 1
DECO_POLIWAG_DOLL:		.dsb 1
DECO_DIGLETT_DOLL:		.dsb 1
DECO_STARYU_DOLL:		.dsb 1
DECO_MAGIKARP_DOLL:		.dsb 1
DECO_ODDISH_DOLL:		.dsb 1
DECO_GENGAR_DOLL:		.dsb 1
DECO_SHELLDER_DOLL:		.dsb 1
DECO_GRIMER_DOLL:		.dsb 1
DECO_VOLTORB_DOLL:		.dsb 1
DECO_WEEDLE_DOLL:		.dsb 1
DECO_UNOWN_DOLL:		.dsb 1
DECO_GEODUDE_DOLL:		.dsb 1
DECO_MACHOP_DOLL:		.dsb 1
DECO_TENTACOOL_DOLL:		.dsb 1
DECO_GOLD_TROPHY_DOLL:		.dsb 1
DECO_SILVER_TROPHY_DOLL:	.dsb 1

DECO_STOP:
NUM_DECO_CATEGORIES = DECO_STOP - 1 - NUM_DECOS
.ende
