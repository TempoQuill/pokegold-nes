; item_attributes struct members (see data/items/attributes.asm)
ITEMATTR_PRICE = 0
.enum ITEMATTR_PRICE
ITEMATTR_PRICE_LO:	.dsb 1
ITEMATTR_PRICE_HI:	.dsb 1
ITEMATTR_EFFECT:	.dsb 1
ITEMATTR_PARAM:		.dsb 1
ITEMATTR_PERMISSIONS:	.dsb 1
ITEMATTR_POCKET:	.dsb 1
ITEMATTR_HELP:		.dsb 1
ITEMATTR_STRUCT_LENGTH:
.ende

; item types
.enum 1
ITEM:		.dsb 1 ; 1
KEY_ITEM:	.dsb 1 ; 2
BALL:		.dsb 1 ; 3
TM_HM:		.dsb 1 ; 4

ITEM_TYPES_MAX:
NUM_ITEM_TYPES = ITEM_TYPES_MAX - 1
.ende

; item menu types
; UseItem.dw indexes (see engine/items/pack.asm)
; UseRegisteredItem.SwitchTo indexes (see engine/overworld/select_menu.asm)
.enum 0
ITEMMENU_NOUSE:		.dsb 1 ; 0
	.dsb 3
ITEMMENU_CURRENT:	.dsb 1 ; 4
ITEMMENU_PARTY:		.dsb 1 ; 5
ITEMMENU_CLOSE:		.dsb 1 ; 6
.ende

; item actions
CANT_SELECT = $40
CANT_TOSS = $80

NO_LIMITS = 0

; pack pockets
.enum 0
ITEM_POCKET:		.dsb 1 ; 0
BALL_POCKET:		.dsb 1 ; 1
KEY_ITEM_POCKET:	.dsb 1 ; 2
TM_HM_POCKET:		.dsb 1 ; 3

NUM_POCKETS:
.ende

MAX_ITEMS     = 20
MAX_BALLS     = 12
MAX_KEY_ITEMS = 25
MAX_PC_ITEMS  = 50

MAX_ITEM_STACK = 99

; mail
MAIL_LINE_LENGTH   = $10
MAIL_MSG_LENGTH    = $20
MAILBOX_CAPACITY   = 10
MAIL_STRUCT_LENGTH = $2f ;mailmsg struct

; held item effects
.enum 0
HELD_NONE:		.dsb 1
HELD_BERRY:		.dsb 1
HELD_2:			.dsb 1
HELD_LEFTOVERS:		.dsb 1
	.dsb 1
HELD_5:			.dsb 1
HELD_RESTORE_PP:	.dsb 1
	.dsb 1
HELD_CLEANSE_TAG:	.dsb 1
.ende

.enum 10
HELD_HEAL_POISON:	.dsb 1
HELD_HEAL_FREEZE:	.dsb 1
HELD_HEAL_BURN:		.dsb 1
HELD_HEAL_SLEEP:	.dsb 1
HELD_HEAL_PARALYZE:	.dsb 1
HELD_HEAL_STATUS:	.dsb 1
HELD_HEAL_CONFUSION:	.dsb 1
.ende

.enum 20
HELD_PREVENT_POISON:	.dsb 1
HELD_PREVENT_BURN:	.dsb 1
HELD_PREVENT_FREEZE:	.dsb 1
HELD_PREVENT_SLEEP:	.dsb 1
HELD_PREVENT_PARALYZE:	.dsb 1
HELD_PREVENT_CONFUSE:	.dsb 1
.ende

.enum 30
HELD_30:		.dsb 1
HELD_ATTACK_UP:		.dsb 1
HELD_DEFENSE_UP:	.dsb 1
HELD_SPEED_UP:		.dsb 1
HELD_SP_ATTACK_UP:	.dsb 1
HELD_SP_DEFENSE_UP:	.dsb 1
HELD_ACCURACY_UP:	.dsb 1
HELD_EVASION_UP:	.dsb 1
HELD_38:		.dsb 1
.ende

.enum 40
	.dsb 1
	.dsb 1
HELD_METAL_POWDER:	.dsb 1
.ende

.enum 50
HELD_NORMAL_BOOST:	.dsb 1
HELD_FIGHTING_BOOST:	.dsb 1
HELD_FLYING_BOOST:	.dsb 1
HELD_POISON_BOOST:	.dsb 1
HELD_GROUND_BOOST:	.dsb 1
HELD_ROCK_BOOST:	.dsb 1
HELD_BUG_BOOST:		.dsb 1
HELD_GHOST_BOOST:	.dsb 1
HELD_FIRE_BOOST:	.dsb 1
HELD_WATER_BOOST:	.dsb 1
HELD_GRASS_BOOST:	.dsb 1
HELD_ELECTRIC_BOOST:	.dsb 1
HELD_PSYCHIC_BOOST:	.dsb 1
HELD_ICE_BOOST:		.dsb 1
HELD_DRAGON_BOOST:	.dsb 1
HELD_DARK_BOOST:	.dsb 1
HELD_STEEL_BOOST:	.dsb 1
.ende

.enum 70
HELD_CATCH_CHANCE:	.dsb 1
HELD_71:		.dsb 1
HELD_ESCAPE:		.dsb 1
HELD_CRITICAL_UP:	.dsb 1
HELD_QUICK_CLAW:	.dsb 1
HELD_FLINCH:		.dsb 1
HELD_AMULET_COIN:	.dsb 1
HELD_BRIGHTPOWDER:	.dsb 1
	.dsb 1
HELD_FOCUS_BAND:	.dsb 1
.ende
