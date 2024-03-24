; object constants
PLAYER      = 0
LAST_TALKED = $fe

; string buffer constants
.enum 0
STRING_BUFFER_3 ;use wStringBuffer3
STRING_BUFFER_4 ;use wStringBuffer4
STRING_BUFFER_5 ;use wStringBuffer5
NUM_STRING_BUFFERS:

STRING_BUFFER_LENGTH = 19

; checkmoney/takemoney accounts
.ende
.enum 0
YOUR_MONEY:	.dsb 1 ; 0
MOMS_MONEY:	.dsb 1 ; 1

; checkmoney/checkcoins return values
.ende
.enum 0
HAVE_MORE:	.dsb 1 ; 0
HAVE_AMOUNT:	.dsb 1 ; 1
HAVE_LESS:	.dsb 1 ; 2

; checkpokemail return values
.ende
.enum 0
POKEMAIL_WRONG_MAIL:	.dsb 1 ; 0
POKEMAIL_CORRECT:	.dsb 1 ; 1
POKEMAIL_REFUSED:	.dsb 1 ; 2
POKEMAIL_NO_MAIL:	.dsb 1 ; 3
POKEMAIL_LAST_MON:	.dsb 1 ; 4

; askforphonenumber return values
.ende
.enum 0
PHONE_CONTACT_GOT:	.dsb 1 ; 0
PHONE_CONTACTS_FULL:	.dsb 1 ; 1
PHONE_CONTACT_REFUSED:	.dsb 1 ; 2

; trainertext arguments
.ende
.enum 0
TRAINERTEXT_SEEN:	.dsb 1
TRAINERTEXT_WIN:	.dsb 1
TRAINERTEXT_LOSS:	.dsb 1

; readvar/writevar/loadvar arguments
; _GetVarAction.VarActionTable indexes (see engine/overworld/variables.asm)
.ende
.enum 0
VAR_STRINGBUFFER2:	.dsb 1 ; 00
VAR_PARTYCOUNT:		.dsb 1 ; 01
VAR_BATTLERESULT:	.dsb 1 ; 02
VAR_BATTLETYPE:		.dsb 1 ; 03
VAR_TIMEOFDAY:		.dsb 1 ; 04
VAR_DEXCAUGHT:		.dsb 1 ; 05
VAR_DEXSEEN:		.dsb 1 ; 06
VAR_BADGES:		.dsb 1 ; 07
VAR_MOVEMENT:		.dsb 1 ; 08
VAR_FACING:		.dsb 1 ; 09
VAR_HOUR:		.dsb 1 ; 0a
VAR_WEEKDAY:		.dsb 1 ; 0b
VAR_MAPGROUP:		.dsb 1 ; 0c
VAR_MAPNUMBER:		.dsb 1 ; 0d
VAR_UNOWNCOUNT:		.dsb 1 ; 0e
VAR_ENVIRONMENT:	.dsb 1 ; 0f
VAR_BOXSPACE:		.dsb 1 ; 10
VAR_CONTESTMINUTES:	.dsb 1 ; 11
VAR_XCOORD:		.dsb 1 ; 12
VAR_YCOORD:		.dsb 1 ; 13
VAR_SPECIALPHONECALL:	.dsb 1 ; 14
NUM_VARS:
.ende

; variable action types
RETVAR_STRBUF2 = 0 << 6
RETVAR_ADDR_DE = 1 << 6
RETVAR_EXECUTE = 2 << 6

; PlayerEventScriptPointers indexes (see engine/overworld/events.asm)
PLAYEREVENT_MAPSCRIPT = $ff
.enum 0
PLAYEREVENT_NONE:		.dsb 1
PLAYEREVENT_SEENBYTRAINER:	.dsb 1
PLAYEREVENT_TALKTOTRAINER:	.dsb 1
PLAYEREVENT_ITEMBALL:		.dsb 1
PLAYEREVENT_CONNECTION:		.dsb 1
PLAYEREVENT_WARP:		.dsb 1
PLAYEREVENT_FALL:		.dsb 1
PLAYEREVENT_WHITEOUT:		.dsb 1
PLAYEREVENT_HATCH:		.dsb 1
PLAYEREVENT_JOYCHANGEFACING:	.dsb 1
NUM_PLAYER_EVENTS:

; PlayerMovementPointers indexes (see engine/overworld/events.asm)
.ende
.enum 0
PLAYERMOVEMENT_NORMAL:		.dsb 1
PLAYERMOVEMENT_WARP:		.dsb 1
PLAYERMOVEMENT_TURN:		.dsb 1
PLAYERMOVEMENT_FORCE_TURN:	.dsb 1
PLAYERMOVEMENT_FINISH:		.dsb 1
PLAYERMOVEMENT_CONTINUE:	.dsb 1
PLAYERMOVEMENT_EXIT_WATER:	.dsb 1
PLAYERMOVEMENT_JUMP:		.dsb 1
NUM_PLAYER_MOVEMENTS:

; script data sizes (see macros/scripts/maps.asm)
SCENE_SCRIPT_SIZE =  4 ;scene_script
CALLBACK_SIZE     =  3 ;callback
WARP_EVENT_SIZE   =  5 ;warp_event
COORD_EVENT_SIZE  =  8 ;coord_event
BG_EVENT_SIZE     =  5 ;bg_event
; An object_event is a map_object without its initial MAPOBJECT_OBJECT_STRUCT_ID or final padding
OBJECT_EVENT_SIZE = MAPOBJECT_LENGTH - 3 ;13

; A coord_event for scene -1 will always activate,
; regardless of the map's scene variable value.
SCENE_ALWAYS = $ff

; bg_event types
; BGEventJumptable indexes (see engine/overworld/events.asm)
.ende
.enum 0
BGEVENT_READ:		.dsb 1
BGEVENT_UP:		.dsb 1
BGEVENT_DOWN:		.dsb 1
BGEVENT_RIGHT:		.dsb 1
BGEVENT_LEFT:		.dsb 1
BGEVENT_IFSET:		.dsb 1
BGEVENT_IFNOTSET:	.dsb 1
BGEVENT_ITEM:		.dsb 1
BGEVENT_COPY:		.dsb 1
NUM_BGEVENTS:

; object_event types
; ObjectEventTypeArray indexes (see engine/overworld/events.asm)
.ende
.enum 0
OBJECTTYPE_SCRIPT:	.dsb 1
OBJECTTYPE_ITEMBALL:	.dsb 1
OBJECTTYPE_TRAINER:	.dsb 1
OBJECTTYPE_3:		.dsb 1
OBJECTTYPE_4:		.dsb 1
OBJECTTYPE_5:		.dsb 1
OBJECTTYPE_6:		.dsb 1
NUM_OBJECT_TYPES:

; command queue members
.ende
.enum 0
CMDQUEUE_TYPE:			.dsb 1
CMDQUEUE_ADDR:			.dsb 1
CMDQUEUE_02:			.dsb 1
CMDQUEUE_03:			.dsb 1
CMDQUEUE_04:			.dsb 1
CMDQUEUE_JUMPTABLE_INDEX:	.dsb 1
CMDQUEUE_ENTRY_SIZE:
CMDQUEUE_CAPACITY = 4

; HandleQueuedCommand.Jumptable indexes (see engine/overworld/events.asm)
.ende
.enum 0
CMDQUEUE_NULL:		.dsb 1
CMDQUEUE_TYPE1:		.dsb 1
CMDQUEUE_STONETABLE:	.dsb 1
CMDQUEUE_TYPE3:		.dsb 1
CMDQUEUE_TYPE4:		.dsb 1
NUM_CMDQUEUE_TYPES:

MAX_XYCOMPARE_LENGTH = 32

; elevfloor macro values
; ElevatorFloorNames indexes (see data/events/elevator_floors.asm)
.ende
.enum 0
FLOOR_B4F:	.dsb 1
FLOOR_B3F:	.dsb 1
FLOOR_B2F:	.dsb 1
FLOOR_B1F:	.dsb 1
FLOOR_1F:	.dsb 1
FLOOR_2F:	.dsb 1
FLOOR_3F:	.dsb 1
FLOOR_4F:	.dsb 1
FLOOR_5F:	.dsb 1
FLOOR_6F:	.dsb 1
FLOOR_7F:	.dsb 1
FLOOR_8F:	.dsb 1
FLOOR_9F:	.dsb 1
FLOOR_10F:	.dsb 1
FLOOR_11F:	.dsb 1
FLOOR_ROOF:	.dsb 1
NUM_FLOORS:

; showemote arguments
; Emotes indexes (see data/sprites/emotes.asm)
.ende
.enum 0
EMOTE_SHOCK:		.dsb 1
EMOTE_QUESTION:		.dsb 1
EMOTE_HAPPY:		.dsb 1
EMOTE_SAD:		.dsb 1
EMOTE_HEART:		.dsb 1
EMOTE_BOLT:		.dsb 1
EMOTE_SLEEP:		.dsb 1
EMOTE_FISH:		.dsb 1
EMOTE_SHADOW:		.dsb 1
EMOTE_ROD:		.dsb 1
EMOTE_BOULDER_DUST:	.dsb 1
EMOTE_GRASS_RUSTLE:	.dsb 1
NUM_EMOTES::		.dsb 1
EMOTE_FROM_MEM = $ff
EMOTE_LENGTH = 6

; fruittree arguments
; FruitTreeItems indexes (see data/items/fruit_trees.asm)
.ende
.enum 1
FRUITTREE_ROUTE_29:		.dsb 1 ; 01
FRUITTREE_ROUTE_30_1:		.dsb 1 ; 02
FRUITTREE_ROUTE_38:		.dsb 1 ; 03
FRUITTREE_ROUTE_46_1:		.dsb 1 ; 04
FRUITTREE_ROUTE_30_2:		.dsb 1 ; 05
FRUITTREE_ROUTE_33:		.dsb 1 ; 06
FRUITTREE_ROUTE_31:		.dsb 1 ; 07
FRUITTREE_ROUTE_43:		.dsb 1 ; 08
FRUITTREE_VIOLET_CITY:		.dsb 1 ; 09
FRUITTREE_ROUTE_46_2:		.dsb 1 ; 0a
FRUITTREE_ROUTE_35:		.dsb 1 ; 0b
FRUITTREE_ROUTE_45:		.dsb 1 ; 0c
FRUITTREE_ROUTE_36:		.dsb 1 ; 0d
FRUITTREE_ROUTE_26:		.dsb 1 ; 0e
FRUITTREE_ROUTE_39:		.dsb 1 ; 0f
FRUITTREE_ROUTE_44:		.dsb 1 ; 10
FRUITTREE_ROUTE_37_1:		.dsb 1 ; 11
FRUITTREE_ROUTE_37_2:		.dsb 1 ; 12
FRUITTREE_ROUTE_37_3:		.dsb 1 ; 13
FRUITTREE_AZALEA_TOWN:		.dsb 1 ; 14
FRUITTREE_ROUTE_42_1:		.dsb 1 ; 15
FRUITTREE_ROUTE_42_2:		.dsb 1 ; 16
FRUITTREE_ROUTE_42_3:		.dsb 1 ; 17
FRUITTREE_ROUTE_11:		.dsb 1 ; 18
FRUITTREE_ROUTE_2:		.dsb 1 ; 19
FRUITTREE_ROUTE_1:		.dsb 1 ; 1a
FRUITTREE_ROUTE_8:		.dsb 1 ; 1b
FRUITTREE_PEWTER_CITY_1:	.dsb 1 ; 1c
FRUITTREE_PEWTER_CITY_2:	.dsb 1 ; 1d
FRUITTREE_FUCHSIA_CITY:		.dsb 1 ; 1e
FRUIT_TREE_LENGTH:
NUM_FRUIT_TREES = FRUIT_TREE_LENGTH - 1

; describedecoration arguments
; DescribeDecoration.JumpTable indexes (see engine/overworld/decorations.asm)
.ende
.enum 0
DECODESC_POSTER:	.dsb 1 ; 0
DECODESC_LEFT_DOLL:	.dsb 1 ; 1
DECODESC_RIGHT_DOLL:	.dsb 1 ; 2
DECODESC_BIG_DOLL:	.dsb 1 ; 3
DECODESC_CONSOLE:	.dsb 1 ; 4
NUM_DECODESCS:

; ActivateFishingSwarm setval arguments
.ende
.enum 0
FISHSWARM_NONE:		.dsb 1 ; 0
FISHSWARM_QWILFISH:	.dsb 1 ; 1
FISHSWARM_REMORAID:	.dsb 1 ; 2

; SpecialGameboyCheck return values
.ende
.enum 0
GBCHECK_GB:	.dsb 1 ; 0
GBCHECK_SGB:	.dsb 1 ; 1
GBCHECK_CGB:	.dsb 1 ; 2

; CheckMagikarpLength return values
.ende
.enum 0
MAGIKARPLENGTH_NOT_MAGIKARP:	.dsb 1 ; 0
MAGIKARPLENGTH_REFUSED:		.dsb 1 ; 1
MAGIKARPLENGTH_TOO_SHORT:	.dsb 1 ; 2
MAGIKARPLENGTH_BEAT_RECORD:	.dsb 1 ; 3

; ReturnShuckie return values
.ende
.enum 0
SHUCKIE_WRONG_MON:	.dsb 1 ; 0
SHUCKIE_REFUSED:	.dsb 1 ; 1
SHUCKIE_RETURNED:	.dsb 1 ; 2
SHUCKIE_HAPPY:		.dsb 1 ; 3
SHUCKIE_FAINTED:	.dsb 1 ; 4

; CheckPartyFullAfterContest return values
.ende
.enum 0
BUGCONTEST_CAUGHT_MON:	.dsb 1 ; 0
BUGCONTEST_BOXED_MON:	.dsb 1 ; 1
BUGCONTEST_NO_CATCH:	.dsb 1 ; 2

; Bug-Catching Contest values
BUG_CONTEST_BALLS = 20
BUG_CONTEST_MINUTES = 20
BUG_CONTEST_SECONDS = 0
BUG_CONTEST_PLAYER = 1
NUM_BUG_CONTESTANTS = 10 ;not counting the player
BUG_CONTESTANT_SIZE = 4

; HealMachineAnim setval arguments
; HealMachineAnim.Pointers indexes (see engine/events/heal_machine_anim.asm)
.ende
.enum 0
HEALMACHINE_POKECENTER:		.dsb 1 ; 0
HEALMACHINE_ELMS_LAB:		.dsb 1 ; 1
HEALMACHINE_HALL_OF_FAME:	.dsb 1 ; 2

; UnownPuzzle setval arguments
; LoadUnownPuzzlePiecesGFX.LZPointers indexes (see engine/games/unown_puzzle.asm)
.ende
.enum 0
UNOWNPUZZLE_KABUTO:	.dsb 1 ; 0
UNOWNPUZZLE_OMANYTE:	.dsb 1 ; 1
UNOWNPUZZLE_AERODACTYL:	.dsb 1 ; 2
UNOWNPUZZLE_HO_OH:	.dsb 1 ; 3
NUM_UNOWN_PUZZLES:
.ende
