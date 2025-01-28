; IconPointers indexes (see data/icon_pointers.asm)
.enum 0
ICON_NULL:	.dsb 1
ICON_POLIWAG:	.dsb 1
ICON_JIGGLYPUFF:	.dsb 1
ICON_DIGLETT:	.dsb 1
ICON_PIKACHU:	.dsb 1
ICON_STARYU:	.dsb 1
ICON_FISH:	.dsb 1
ICON_BIRD:	.dsb 1
ICON_MONSTER:	.dsb 1
ICON_CLEFAIRY:	.dsb 1
ICON_ODDISH:	.dsb 1
ICON_BUG:	.dsb 1
ICON_GHOST:	.dsb 1
ICON_LAPRAS:	.dsb 1
ICON_HUMANSHAPE:	.dsb 1
ICON_FOX:	.dsb 1
ICON_EQUINE:	.dsb 1
ICON_SHELL:	.dsb 1
ICON_BLOB:	.dsb 1
ICON_SERPENT:	.dsb 1
ICON_VOLTORB:	.dsb 1
ICON_SQUIRTLE:	.dsb 1
ICON_BULBASAUR:	.dsb 1
ICON_CHARMANDER:	.dsb 1
ICON_CATERPILLAR:	.dsb 1
ICON_UNOWN:	.dsb 1
ICON_GEODUDE:	.dsb 1
ICON_FIGHTER:	.dsb 1
ICON_EGG:	.dsb 1
ICON_JELLYFISH:	.dsb 1
ICON_MOTH:	.dsb 1
ICON_BAT:	.dsb 1
ICON_SNORLAX:	.dsb 1
ICON_HO_OH:	.dsb 1
ICON_LUGIA:	.dsb 1
ICON_GYARADOS:	.dsb 1
ICON_SLOWPOKE:	.dsb 1
ICON_SUDOWOODO:	.dsb 1
ICON_BIGMON:	.dsb 1

ICON_MAX:
NUM_ICONS = ICON_MAX - 1
.ende

; LoadMenuMonIcon.Jumptable indexes (see engine/gfx/mon_icons.asm)
.enum 0
MONICON_PARTYMENU:	.dsb 1
MONICON_NAMINGSCREEN:	.dsb 1
MONICON_MOVES:	.dsb 1
MONICON_TRADE:	.dsb 1
.ende