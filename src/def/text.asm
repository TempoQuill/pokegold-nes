NAME_LENGTH = 11
PLAYER_NAME_LENGTH = 8
BOX_NAME_LENGTH = 9
MON_NAME_LENGTH = 11
MOVE_NAME_LENGTH = 13
ITEM_NAME_LENGTH = 13
TRAINER_CLASS_NAME_LENGTH = 13
NAME_LENGTH_JAPANESE = 6

.enum 1
MON_NAME:	.dsb 1
MOVE_NAME:	.dsb 1
DUMMY_NAME:	.dsb 1
ITME_NAME:	.dsb 1
PARTY_OT_NAME:	.dsb 1
ENEMY_OT_NAME:	.dsb 1
TRAINER_NAME:	.dsb 1
MOVE_DESC_NAME_BROKEN:
.ende

BORDER_WIDTH = 2
TEXTBOX_WIDTH = SCREEN_WIDTH
TEXTBOX_INNERW = TEXTBOX_WIDTH - BORDER_WIDTH
TEXTBOX_HEIGHT = 6
TEXTBOX_INNERH = TEXTBOX_HEIGHT - BORDER_WIDTH
TEXTBOX_X = 0
TEXTBOX_INNERX = TEXTBOX_X + 1
TEXTBOX_Y = SCREEN_HEIGHT - TEXTBOX_HEIGHT
TEXTBOX_INNERY = TEXTBOX_Y + 2

TEXTBOX_FRAME_TILES = 6

.enum 5
PRINTNUM_MONEY_F:	.dsb 1
PRINTNUM_LEFTALIGN_F:	.dsb 1
PRINTNUM_LEADINGZEROS_F:
.ende

PRINTNUM_MONEY = 1 << PRINTNUM_MONEY_F
PRINTNUM_LEFTALIGN = 1 << PRINTNUM_LEFTALIGN_F
PRINTNUM_LEADINGZEROS = 1 << PRINTNUM_LEADINGZEROS_F

FIRST_REGULAR_TEXT_CHAR = 0
FIRST_UNOWN_CHAR = $40

.enum $80
TX_START:			.dsb 1 ; 0
TX_NEXT:			.dsb 1 ; 1
TX_LINE:			.dsb 1 ; 2
TX_PARA:			.dsb 1 ; 3
TX_CONT:			.dsb 1 ; 4
TX_DONE:			.dsb 1 ; 5
TX_PROMPT:			.dsb 1 ; 6
TX_RAM:				.dsb 1 ; 7
TX_BCD:				.dsb 1 ; 8
TX_MOVE:			.dsb 1 ; 9
TX_BOX:				.dsb 1 ; 10
TX_LOW:				.dsb 1 ; 11
TX_PROMPT_BUTTON:		.dsb 1 ; 12
TX_SCROLL:			.dsb 1 ; 13
TX_START_ASM:			.dsb 1 ; 14
TX_DECIMAL:			.dsb 1 ; 15
TX_PAUSE:			.dsb 1 ; 16
TX_SOUND_DEX_FANFARE_50_79:	.dsb 1 ; 17
TX_DOTS:			.dsb 1 ; 18
TX_WAIT_BUTTON:			.dsb 1 ; 19
TX_SOUND_DEX_FANFARE_20_49:	.dsb 1 ; 20
TX_SOUND_ITEM:			.dsb 1 ; 21
TX_SOUND_CAUGHT_MON:		.dsb 1 ; 22
TX_SOUND_DEX_FANFARE_80_109:	.dsb 1 ; 23
TX_SOUND_FANFARE:		.dsb 1 ; 24
TX_SOUND_SLOT_MACHINE_START:	.dsb 1 ; 25
TX_STRINGBUFFER:		.dsb 1 ; 26
TX_DAY:				.dsb 1 ; 27
TX_FAR:				.dsb 1 ; 28
TX_END:				.dsb 1 ; 29
.ende

.enum $c0
_PO__KE_:	.dsb 1 ; 0
_RED_:		.dsb 1 ; 1
_GREEN_:	.dsb 1 ; 2
_ENEMY_:	.dsb 1 ; 3
_MOM_:		.dsb 1 ; 4
_PK__MN_:	.dsb 1 ; 5
_PLAYER_:	.dsb 1 ; 6
_RIVAL_:	.dsb 1 ; 7
_POKE_:		.dsb 1 ; 8
_SLOT_ELIPSES:	.dsb 1 ; 9
_TARGET_:	.dsb 1 ; 10
_USER_:		.dsb 1 ; 11
_PC_:		.dsb 1 ; 12
_TM_:		.dsb 1 ; 13
_TRAINER_:	.dsb 1 ; 14
_ROCKET_:	.dsb 1 ; 15
.ende
