; Event scripting commands.

EnableScriptMode::
	PHA
	LDA #SCRIPT_READ
	STA wScriptMode
	PLA
	RTS

ScriptEvents::
	JSR StartScript
@loop
	LDA wScriptMode
	ASL A
	TAY
	LDA #>(@ret - 1)
	PHA
	LDA #<(@ret - 1)
	PHA
	LDA @modes, Y
	STA zScriptPointer
	INY
	LDA @modes, Y
	STA zScriptPointer + 1
	JMP (zScriptPointer)
@ret
	JSR CheckScript
	BNE @loop
	RTS

@modes
	dw EndScript
	dw RunScriptCommand
	dw WaitScriptMovement
	dw WaitScript

EndScript:
	JMP StopScript

WaitScript:
	JSR StopScript

	DEC wScriptDelay
	RNE

	farcall PRG_00, UnfreezeAllObjects

	LDA #SCRIPT_READ
	STA wScriptMode
	JMP StartScript

WaitScriptMovement:
	JSR StopScript

	BIT wVramState
	RMI

	farcall PRG_00, UnfreezeAllObjects

	LDA #SCRIPT_READ
	STA wScriptMode
	JMP StartScript

RunScriptCommand:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	TAY
	LDA ScriptCommandTableHi, Y
	STA zScriptPointer + 1
	LDA ScriptCommandTableLo, Y
	STA zScriptPointer
	JMP (zScriptPointer)

ScriptCommandTableHi:
	dh Script_scall                      ; 00
	dh Script_farscall                   ; 01
	dh Script_memcall                    ; 02
	dh Script_sjump                      ; 03
	dh Script_farsjump                   ; 04
	dh Script_memjump                    ; 05
	dh Script_ifequal                    ; 06
	dh Script_ifnotequal                 ; 07
	dh Script_iffalse                    ; 08
	dh Script_iftrue                     ; 09
	dh Script_ifgreater                  ; 0a
	dh Script_ifless                     ; 0b
	dh Script_jumpstd                    ; 0c
	dh Script_callstd                    ; 0d
	dh Script_callasm                    ; 0e
	dh Script_special                    ; 0f
	dh Script_memcallasm                 ; 10
	dh Script_checkmapscene              ; 11
	dh Script_setmapscene                ; 12
	dh Script_checkscene                 ; 13
	dh Script_setscene                   ; 14
	dh Script_setval                     ; 15
	dh Script_addval                     ; 16
	dh Script_random                     ; 17
	dh Script_checkver                   ; 18
	dh Script_readmem                    ; 19
	dh Script_writemem                   ; 1a
	dh Script_loadmem                    ; 1b
	dh Script_readvar                    ; 1c
	dh Script_writevar                   ; 1d
	dh Script_loadvar                    ; 1e
	dh Script_giveitem                   ; 1f
	dh Script_takeitem                   ; 20
	dh Script_checkitem                  ; 21
	dh Script_givemoney                  ; 22
	dh Script_takemoney                  ; 23
	dh Script_checkmoney                 ; 24
	dh Script_givecoins                  ; 25
	dh Script_takecoins                  ; 26
	dh Script_checkcoins                 ; 27
	dh Script_addcellnum                 ; 28
	dh Script_delcellnum                 ; 29
	dh Script_checkcellnum               ; 2a
	dh Script_checktime                  ; 2b
	dh Script_checkpoke                  ; 2c
	dh Script_givepoke                   ; 2d
	dh Script_giveegg                    ; 2e
	dh Script_givepokemail               ; 2f
	dh Script_checkpokemail              ; 30
	dh Script_checkevent                 ; 31
	dh Script_clearevent                 ; 32
	dh Script_setevent                   ; 33
	dh Script_checkflag                  ; 34
	dh Script_clearflag                  ; 35
	dh Script_setflag                    ; 36
	dh Script_wildon                     ; 37
	dh Script_wildoff                    ; 38
	dh Script_xycompare                  ; 39
	dh Script_warpmod                    ; 3a
	dh Script_blackoutmod                ; 3b
	dh Script_warp                       ; 3c
	dh Script_getmoney                   ; 3d
	dh Script_getcoins                   ; 3e
	dh Script_getnum                     ; 3f
	dh Script_getmonname                 ; 40
	dh Script_getitemname                ; 41
	dh Script_getcurlandmarkname         ; 42
	dh Script_gettrainername             ; 43
	dh Script_getstring                  ; 44
	dh Script_itemnotify                 ; 45
	dh Script_pocketisfull               ; 46
	dh Script_opentext                   ; 47
	dh Script_refreshscreen              ; 48
	dh Script_closetext                  ; 49
	dh Script_writeunusedbyte            ; 4a
	dh Script_farwritetext               ; 4b
	dh Script_writetext                  ; 4c
	dh Script_repeattext                 ; 4d
	dh Script_yesorno                    ; 4e
	dh Script_loadmenu                   ; 4f
	dh Script_closewindow                ; 50
	dh Script_jumptextfaceplayer         ; 51
	dh Script_jumptext                   ; 52
	dh Script_waitbutton                 ; 53
	dh Script_promptbutton               ; 54
	dh Script_pokepic                    ; 55
	dh Script_closepokepic               ; 56
	dh Script__2dmenu                    ; 57
	dh Script_verticalmenu               ; 58
	dh Script_loadpikachudata            ; 59
	dh Script_randomwildmon              ; 5a
	dh Script_loadtemptrainer            ; 5b
	dh Script_loadhildmon                ; 5c
	dh Script_loadtrainer                ; 5d
	dh Script_startbattle                ; 5e
	dh Script_reloadmapafterbattle       ; 5f
	dh Script_catchtutorial              ; 60
	dh Script_trainertext                ; 61
	dh Script_trainerflagaction          ; 62
	dh Script_winlosstext                ; 63
	dh Script_scripttalkafter            ; 64
	dh Script_endifjustbattled           ; 65
	dh Script_checkjustbattled           ; 66
	dh Script_setlasttalked              ; 67
	dh Script_applymovement              ; 68
	dh Script_applymovementlasttalked    ; 69
	dh Script_faceplayer                 ; 6a
	dh Script_faceobject                 ; 6b
	dh Script_variablesprite             ; 6c
	dh Script_disappear                  ; 6d
	dh Script_appear                     ; 6e
	dh Script_follow                     ; 6f
	dh Script_stopfollow                 ; 70
	dh Script_moveobject                 ; 71
	dh Script_writeobjectxy              ; 72
	dh Script_loademote                  ; 73
	dh Script_showemote                  ; 74
	dh Script_turnobject                 ; 75
	dh Script_follownotexact             ; 76
	dh Script_earthquake                 ; 77
	dh Script_changemapblocks            ; 78
	dh Script_changeblock                ; 79
	dh Script_reloadmap                  ; 7a
	dh Script_reloadmappart              ; 7b
	dh Script_writecmdqueue              ; 7c
	dh Script_delcmdqueue                ; 7d
	dh Script_playmusic                  ; 7e
	dh Script_encountermusic             ; 7f
	dh Script_musicfadeout               ; 80
	dh Script_playmapmusic               ; 81
	dh Script_dontrestartmapmusic        ; 82
	dh Script_cry                        ; 83
	dh Script_playsound                  ; 84
	dh Script_waitsfx                    ; 85
	dh Script_warpsound                  ; 86
	dh Script_specialsound               ; 87
	dh Script_autoinput                  ; 88
	dh Script_newloadmap                 ; 89
	dh Script_pause                      ; 8a
	dh Script_deactivatefacing           ; 8b
	dh Script_sdefer                     ; 8c
	dh Script_warpcheck                  ; 8d
	dh Script_stopandsjump               ; 8e
	dh Script_endcallback                ; 8f
	dh Script_end                        ; 90
	dh Script_reloadend                  ; 91
	dh Script_endall                     ; 92
	dh Script_pokemart                   ; 93
	dh Script_elevator                   ; 94
	dh Script_trade                      ; 95
	dh Script_askforphonenumber          ; 96
	dh Script_phonecall                  ; 97
	dh Script_hangup                     ; 98
	dh Script_describedecoration         ; 99
	dh Script_fruittree                  ; 9a
	dh Script_specialphonecall           ; 9b
	dh Script_checkphonecall             ; 9c
	dh Script_verbosegiveitem            ; 9d
	dh Script_swarm                      ; 9e
	dh Script_halloffame                 ; 9f
	dh Script_credits                    ; a0
	dh Script_warpfacing                 ; a1

ScriptCommandTableLo:
	dl Script_scall                      ; 00
	dl Script_farscall                   ; 01
	dl Script_memcall                    ; 02
	dl Script_sjump                      ; 03
	dl Script_farsjump                   ; 04
	dl Script_memjump                    ; 05
	dl Script_ifequal                    ; 06
	dl Script_ifnotequal                 ; 07
	dl Script_iffalse                    ; 08
	dl Script_iftrue                     ; 09
	dl Script_ifgreater                  ; 0a
	dl Script_ifless                     ; 0b
	dl Script_jumpstd                    ; 0c
	dl Script_callstd                    ; 0d
	dl Script_callasm                    ; 0e
	dl Script_special                    ; 0f
	dl Script_memcallasm                 ; 10
	dl Script_checkmapscene              ; 11
	dl Script_setmapscene                ; 12
	dl Script_checkscene                 ; 13
	dl Script_setscene                   ; 14
	dl Script_setval                     ; 15
	dl Script_addval                     ; 16
	dl Script_random                     ; 17
	dl Script_checkver                   ; 18
	dl Script_readmem                    ; 19
	dl Script_writemem                   ; 1a
	dl Script_loadmem                    ; 1b
	dl Script_readvar                    ; 1c
	dl Script_writevar                   ; 1d
	dl Script_loadvar                    ; 1e
	dl Script_giveitem                   ; 1f
	dl Script_takeitem                   ; 20
	dl Script_checkitem                  ; 21
	dl Script_givemoney                  ; 22
	dl Script_takemoney                  ; 23
	dl Script_checkmoney                 ; 24
	dl Script_givecoins                  ; 25
	dl Script_takecoins                  ; 26
	dl Script_checkcoins                 ; 27
	dl Script_addcellnum                 ; 28
	dl Script_delcellnum                 ; 29
	dl Script_checkcellnum               ; 2a
	dl Script_checktime                  ; 2b
	dl Script_checkpoke                  ; 2c
	dl Script_givepoke                   ; 2d
	dl Script_giveegg                    ; 2e
	dl Script_givepokemail               ; 2f
	dl Script_checkpokemail              ; 30
	dl Script_checkevent                 ; 31
	dl Script_clearevent                 ; 32
	dl Script_setevent                   ; 33
	dl Script_checkflag                  ; 34
	dl Script_clearflag                  ; 35
	dl Script_setflag                    ; 36
	dl Script_wildon                     ; 37
	dl Script_wildoff                    ; 38
	dl Script_xycompare                  ; 39
	dl Script_warpmod                    ; 3a
	dl Script_blackoutmod                ; 3b
	dl Script_warp                       ; 3c
	dl Script_getmoney                   ; 3d
	dl Script_getcoins                   ; 3e
	dl Script_getnum                     ; 3f
	dl Script_getmonname                 ; 40
	dl Script_getitemname                ; 41
	dl Script_getcurlandmarkname         ; 42
	dl Script_gettrainername             ; 43
	dl Script_getstring                  ; 44
	dl Script_itemnotify                 ; 45
	dl Script_pocketisfull               ; 46
	dl Script_opentext                   ; 47
	dl Script_refreshscreen              ; 48
	dl Script_closetext                  ; 49
	dl Script_writeunusedbyte            ; 4a
	dl Script_farwritetext               ; 4b
	dl Script_writetext                  ; 4c
	dl Script_repeattext                 ; 4d
	dl Script_yesorno                    ; 4e
	dl Script_loadmenu                   ; 4f
	dl Script_closewindow                ; 50
	dl Script_jumptextfaceplayer         ; 51
	dl Script_jumptext                   ; 52
	dl Script_waitbutton                 ; 53
	dl Script_promptbutton               ; 54
	dl Script_pokepic                    ; 55
	dl Script_closepokepic               ; 56
	dl Script__2dmenu                    ; 57
	dl Script_verticalmenu               ; 58
	dl Script_loadpikachudata            ; 59
	dl Script_randomwildmon              ; 5a
	dl Script_loadtemptrainer            ; 5b
	dl Script_loadlildmon                ; 5c
	dl Script_loadtrainer                ; 5d
	dl Script_startbattle                ; 5e
	dl Script_reloadmapafterbattle       ; 5f
	dl Script_catchtutorial              ; 60
	dl Script_trainertext                ; 61
	dl Script_trainerflagaction          ; 62
	dl Script_winlosstext                ; 63
	dl Script_scripttalkafter            ; 64
	dl Script_endifjustbattled           ; 65
	dl Script_checkjustbattled           ; 66
	dl Script_setlasttalked              ; 67
	dl Script_applymovement              ; 68
	dl Script_applymovementlasttalked    ; 69
	dl Script_faceplayer                 ; 6a
	dl Script_faceobject                 ; 6b
	dl Script_variablesprite             ; 6c
	dl Script_disappear                  ; 6d
	dl Script_appear                     ; 6e
	dl Script_follow                     ; 6f
	dl Script_stopfollow                 ; 70
	dl Script_moveobject                 ; 71
	dl Script_writeobjectxy              ; 72
	dl Script_loademote                  ; 73
	dl Script_showemote                  ; 74
	dl Script_turnobject                 ; 75
	dl Script_follownotexact             ; 76
	dl Script_earthquake                 ; 77
	dl Script_changemapblocks            ; 78
	dl Script_changeblock                ; 79
	dl Script_reloadmap                  ; 7a
	dl Script_reloadmappart              ; 7b
	dl Script_writecmdqueue              ; 7c
	dl Script_delcmdqueue                ; 7d
	dl Script_playmusic                  ; 7e
	dl Script_encountermusic             ; 7f
	dl Script_musicfadeout               ; 80
	dl Script_playmapmusic               ; 81
	dl Script_dontrestartmapmusic        ; 82
	dl Script_cry                        ; 83
	dl Script_playsound                  ; 84
	dl Script_waitsfx                    ; 85
	dl Script_warpsound                  ; 86
	dl Script_specialsound               ; 87
	dl Script_autoinput                  ; 88
	dl Script_newloadmap                 ; 89
	dl Script_pause                      ; 8a
	dl Script_deactivatefacing           ; 8b
	dl Script_sdefer                     ; 8c
	dl Script_warpcheck                  ; 8d
	dl Script_stopandsjump               ; 8e
	dl Script_endcallback                ; 8f
	dl Script_end                        ; 90
	dl Script_reloadend                  ; 91
	dl Script_endall                     ; 92
	dl Script_pokemart                   ; 93
	dl Script_elevator                   ; 94
	dl Script_trade                      ; 95
	dl Script_askforphonenumber          ; 96
	dl Script_phonecall                  ; 97
	dl Script_hangup                     ; 98
	dl Script_describedecoration         ; 99
	dl Script_fruittree                  ; 9a
	dl Script_specialphonecall           ; 9b
	dl Script_checkphonecall             ; 9c
	dl Script_verbosegiveitem            ; 9d
	dl Script_swarm                      ; 9e
	dl Script_halloffame                 ; 9f
	dl Script_credits                    ; a0
	dl Script_warpfacing                 ; a1

StartScript:
	LDA wScriptFlags
	SSB SCRIPT_RUNNING
	STA wScriptFlags
	RTS

CheckScript:
	LDA wScriptFlags
	TSB SCRIPT_RUNNING
	RTS

StopScript:
	LDA wScriptFlags
	RSB SCRIPT_RUNNING
	STA wScriptFlags
	RTS

Script_callasm:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	PHA
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	PHA
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	TAX
	PLY
	PLA
	JMP Farcall

Script_special:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	STA zScriptPointer
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	STA zScriptPointer + 1
	farcall $02, Special
	RTS

Script_memcallasm:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	STA zScriptPointer
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	STA zScriptPointer + 1
	LDY #0
	LDA (zScriptPointer), Y
	STA zSavedBank
	INY
	LDA (zScriptPointer), Y
	INY
	PHA
	LDA (zScriptPointer), Y
	TAX
	PLY
	LDA zSavedBank
	JMP Farcall

Script_jumptextfaceplayer:
	LDA wScriptBank
	STA wScriptTextBank
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	STA wScriptTextAddr
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	STA wScriptTextAddr + 1
	LDA #PRG_Events
	LDX #<JumpTextFacePlayerScript
	LDY #>JumpTextFacePlayerScript
	JMP ScriptJump

Script_jumptext:
	LDA wScriptBank
	STA wScriptTextBank
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	STA wScriptTextAddr
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	STA wScriptTextAddr + 1
	LDA #PRG_Events
	LDX #<JumpTextScript
	LDY #>JumpTextScript
	JMP ScriptJump

JumpTextFacePlayerScript:
	faceplayer
JumpTextScript:
	opentext
	repeattext -1, -1
	waitbutton
	closetext
	end

Script_writetext:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	STA zScriptPointer
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	STA zScriptPointer + 1
	LDA wScriptTextBank
	STA zScratchByte
	home_jump PRG_HomeROM2, MapTextbox

Script_farwritetext:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	STA zSavedBank
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	STA zScriptPointer
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	STA zScriptPointer + 1
	LDA zSavedBank
	STA zScratchByte
	home_jump PRG_HomeROM2, MapTextbox

Script_repeattext:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	STA zScriptPointer
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	STA zScriptPointer + 1
	CMP #$ff
	BCC @done
	LDA zScriptPointer
	CMP #$ff
	BCC @done
	LDA #>wScriptTextBank
	STA zScratchWord + 1
	LDA #<wScriptTextBank
	STA zScratchWord
	LDY #0
	LDA (zScratchWord), Y
	STA zScratchByte
	INY
	LDA (zScratchWord), Y
	STA zScriptPointer
	INY
	LDA (zScratchWord), Y
	STA zScriptPointer + 1
	home_jump PRG_HomeROM2, MapTextbox

@done
	RTS

Script_waitbutton:
	JMP WaitButton

Script_promptbutton:
	LDA zOAMUpdate
	PHA
	LDA #1
	STA zOAMUpdate
	JSR WaitBGMap
	JSR PromptButton
	PLA
	STA zOAMUpdate
	RTS

Script_yesorno:
	JSR YesNoBox
	LDA #0
	BCS @no
	LDA #1
@no
	STA wScriptVar
	RTS

Script_loadmenu:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	STA zScriptPointer
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	STA zScriptPointer + 1
	LDX #>LoadMenuHeader
	LDY #<LoadMenuHeader
	LDA wScriptBank
	JSR Farcall
	JMP UpdateSprites

Script_closewindow:
	JSR CloseWindow
	JMP UpdateSprites

Script_pokepic:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	BNE @ok
	LDA wScriptVar
@ok
	STA wCurPartySpecies
	farcall PRG_PokepicMapping, Pokepic
	RTS

Script_closepokepic:
	farcall PRG_PokepicMapping, ClosePokepic
	RTS

Script_verticalmenu:
	LDA wScriptBank
	home_ref PRG_HomeROM2, VerticalMenu
	LDA wMenuCursorY
	BCC @ok
	LDA #0
@ok
	STA wScriptVar
	RTS

Script__2dmenu:
	LDA wScriptBank
	home_ref PRG_HomeROM2, _2DMenu
	LDA wMenuCursorPosition
	BCC @ok
	LDA #0
@ok
	STA wScriptVar
	RTS

Script_verbosegiveitem:
	JSR Script_giveitem
	JSR CurItemName
	LDA #<zStringBuffer1
	STA zScratchWord + 2
	LDA #>zStringBuffer1
	STA zScratchWord + 3
	LDX #STRING_BUFFER_4
	JSR CopyConvertedText
	LDA #PRG_Events
	LDX #<GiveItemScript
	LDY #>GiveItemScript
	JMP ScriptCall

GiveItemScript_DummyFunction:
	RTS

GiveItemScript:
	callasm GiveItemScript_DummyFunction
	writetext @ReceivedItemText
	iffalse @Full
	waitsfx
	specialsound
	waitbutton
	itemnotify
	end

@Full:
	promptbutton
	pocketisfull
	end

@ReceivedItemText:
	db TX_FAR, PRG_Text2, _ReceivedItemText
	db TX_END

Script_itemnotify:
	JSR GetPocketName
	JSR CurItemName
	LDA #PRG_Events
	STA zScratchByte
	LDA #<PutItemInPocketText
	STA zScriptPointer
	LDA #>PutItemInPocketText
	STA zScriptPointer + 1
	home_jump PRG_HomeROM2, MapTextbox

Script_pocketisfull:
	JSR GetPocketName
	JSR CurItemName
	LDA #PRG_Events
	STA zScratchByte
	LDA #<PocketIsFullText
	STA zScriptPointer
	LDA #>PocketIsFullText
	STA zScriptPointer + 1
	home_jump PRG_HomeROM2, MapTextbox

Script_specialsound:
	farcall $02, CheckItemPocket
	LDA wItemAttributeValue
	CMP #TM_HM
	BEQ @okay
	LDY #SFX_ITEM
	BNE @play
@okay:
	LDY #SFX_GET_TM
@play
	home_ref PRG_HomeROM2, PlaySFX
	home_jump PRG_HomeROM2, WaitSFX

GetPocketName:
	farcall $02, CheckItemPocket
	LDX wItemAttributeValue
	DEX
	TXA
	AND #3
	ASL A
	TAX
	LDA ItemPocketNames, X
	STA zScratchWord + 2
	INX
	LDA ItemPocketNames, X
	STA zScratchWord + 3
	LDA #<wStringBuffer3
	STA zScratchWord
	LDA #>wStringBuffer3
	STA zScratchWord + 1
	JMP CopyName2

INCLUDE "data/items/pocket_names.asm"

CurItemName:
	LDA wCurItem
	STA wNamedObjectIndex
	JMP GetItemName

PutItemInPocketText:
	db TX_FAR, PRG_Text2, _PutItemInPocketText
	db TX_END

PocketIsFullText:
	db TX_FAR, PRG_Text2, _PocketIsFullText
	db TX_END

Script_pokemart:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld c, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld e, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld d, a
	LDA wScriptBank
;	ld b, a
	farcall $04, OpenMartDialog
	RTS

Script_elevator:
	LDA #0
	STA wScriptVar
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld e, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld d, a
	LDA wScriptBank
;	ld b, a
	farcall $03, Elevator
;	ret c
;	ld a, TRUE
	STA wScriptVar
	RTS

Script_trade:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld e, a
	farcall PRG_28, NPCTrade
	RTS

Script_phoneJSR:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld e, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld d, a
	LDA wScriptBank
;	ld b, a
	farcall PRG_17, PhoneCall
	RTS

Script_hangup:
	farcall PRG_17, HangUp
	RTS

Script_askforphonenumber:
	JSR YesNoBox
	BCS @refused
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld c, a
	farcall PRG_17, AddPhoneNumber
	BCS @phonefull
	LDA #0 ; PHONE_CONTACT_GOT
;	jr @done
@phonefull
;	ld a, PHONE_CONTACTS_FULL
;	jr @done
@refused
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld a, PHONE_CONTACT_REFUSED
@done
	STA wScriptVar
	RTS

Script_describedecoration:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld b, a
	farcall $08, DescribeDecoration
;	ld h, d
;	ld l, e
	JMP ScriptJump

Script_fruittree:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	STA wCurFruitTree
	LDA #$11
	LDX #<FruitTreeScript
	LDY #>FruitTreeScript
	JMP ScriptJump

Script_swarm:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld d, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld e, a
	farcall $02, AddPhoneNumber
	RTS

Script_trainertext:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld c, a
;	ld b, 0
;	ld hl, wSeenTextPointer
;	add hl, bc
;	add hl, bc
;	ld a, [hli]
;	ld h, [hl]
;	ld l, a
;	ld a, [wSeenTrainerBank]
;	ld b, a
	home_jump PRG_HomeROM2, MapTextbox

Script_scripttalkafter:
;	ld hl, wScriptAfterPointer
;	ld a, [hli]
;	ld h, [hl]
;	ld l, a
;	ld a, [wSeenTrainerBank]
;	ld b, a
	JMP ScriptJump

Script_trainerflagaction:
	LDA #0
	STA wScriptVar
;	ld hl, wTempTrainerEventFlag
;	ld e, [hl]
;	inc hl
;	ld d, [hl]
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld b, a
	JSR EventFlagAction
;	ld a, c
	REQ
;	ld a, TRUE
	STA wScriptVar
	RTS

Script_winlosstext:
;	ld hl, wWinTextPointer
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [hli], a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [hli], a
;	ld hl, wLossTextPointer
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [hli], a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [hli], a
	RTS

Script_endifjustbattled:
;	ld a, [wRunningTrainerBattleScript]
	REQ
	JMP Script_end

Script_checkjustbattled:
;	ld a, TRUE
	STA wScriptVar
;	ld a, [wRunningTrainerBattleScript]
;	and a
;	ret nz
	LDA #0
	STA wScriptVar
	RTS

Script_encountermusic:
	LDY wOtherTrainerClass
	farcall PRg_Audio, PlayTrainerEncounterMusic
	RTS

Script_playmapmusic:
	home_jump PRG_HomeROM2, PlayMapMusic

Script_playmusic:
	LDY #0
	home_ref PRG_HomeROM2, PlayMusic
	STA wMusicSilence
	home_ref PRG_HomeROM2, GetScriptByte
	LDY zScratchByte
	home_jump PRG_HomeROM2, PlayMusic

Script_musicfadeout:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	STA wMusicSilenceID
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	SSB MUSIC_FADE_IN_F
	STA wMusicSilence
	RTS

Script_playsound:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld e, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld d, a
	home_ref PRG_HomeROM2, PlaySFX
	RTS

Script_waitsfx:
	JSR WaitSFX
	RTS

Script_warpsound:
	farcall $03 GetWarpSFX
	LDY zScratchByte
	home_jump PRG_HomeROM2, PlaySFX

Script_cry:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	BNE @ok
	STA wScriptVar
@ok
	home_ref PRG_HomeROM2, PlayMonCry
	RTS

Script_setlasttalked:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	STA zLastTalked
	RTS

Script_applymovement:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld c, a

ApplyMovement:
;	push bc
;	ld a, c
	farcall PRG_00, FreezeAllOtherObjects
;	pop bc

;	push bc
	JSR UnfreezeFollowerObject
;	pop bc

	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld l, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld h, a
	LDA wScriptBank
;	ld b, a
	JSR GetMovementData
;	ret c

	LDA #SCRIPT_WAIT_MOVEMENT
	STA wScriptMode
	JMP StopScript

UnfreezeFollowerObject:
	farcall PRG_00, _UnfreezeFollowerObject
	RTS

Script_applymovementlasttalked:
; apply movement to last talked

	LDA zLastTalked
;	ld c, a
	JMP ApplyMovement

Script_faceplayer:
	LDA zLastTalked
	REQ
;	ld d, $0
	LDA zLastTalked
;	ld e, a
	farcall $01, GetRelativeFacing
;	ld a, d
;	add a
;	add a
;	ld e, a
	LDA zLastTalked
;	ld d, a
	JSR ApplyObjectFacing
	RTS

Script_faceobject:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	CMP #LAST_TALKED
	BCS @ok
	LDA zLastTalked
@ok
;	ld e, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	CMP #LAST_TALKED
	BNE @ok2
	LDA zLastTalked
@ok2
;	ld d, a
;	push de
	farcall $01, GetRelativeFacing
;	pop bc
;	ret c
;	ld a, d
;	add a
;	add a
;	ld e, a
;	ld d, c
	JSR ApplyObjectFacing
	RTS

Script_turnobject:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	CMP #LAST_TALKED
	BNE @ok
	LDA zLastTalked
@ok
;	ld d, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	add a
;	add a
;	ld e, a
	JSR ApplyObjectFacing
	RTS

ApplyObjectFacing:
;	ld a, d
;	push de
	JSR CheckObjectVisibility
	BCS @not_visible
;	ld hl, OBJECT_SPRITE
;	add hl, bc
;	ld a, [hl]
;	push bc
	JSR DoesSpriteHaveFacings
;	pop bc
	BCS @not_visible ; STILL_SPRITE
;	ld hl, OBJECT_FLAGS1
;	add hl, bc
;	bit FIXED_FACING_F, [hl]
	BNE @not_visible
;	pop de
;	ld a, e
	JSR SetSpriteDirection
	JSR UpdateSprites
	RTS

@not_visible
;	pop de
	SEC
	RTS

Script_variablesprite:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld e, a
;	ld d, 0
;	ld hl, wVariableSprites
;	add hl, de
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [hl], a
	RTS

Script_appear:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	JSR UnmaskCopyMapObjectStruct
;	ldh a, [hMapObjectIndex]
;	ld b, 0 ; clear
	JSR ApplyEventActionAppearDisappear
	RTS

Script_disappear:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	CMP #LAST_TALKED
	BNE @ok
	LDA zLastTalked
@ok
	JSR DeleteObjectStruct
;	ldh a, [hMapObjectIndex]
;	ld b, 1 ; set
	JSR ApplyEventActionAppearDisappear
	farcall PRG_00, _UpdateSprites
	RTS

ApplyEventActionAppearDisappear:
;	push bc
	JSR GetMapObject
;	ld hl, MAPOBJECT_EVENT_FLAG
;	add hl, bc
;	pop bc
;	ld e, [hl]
;	inc hl
;	ld d, [hl]
;	ld a, -1
;	cp e
	BNE @okay
;	cp d
	BNE @okay
	LDA #0
	RTS
@okay
	JSR EventFlagAction
	RTS

Script_follow:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld b, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld c, a
	farcall PRG_00, StartFollow
	RTS

Script_stopfollow:
	farcall PRG_00, StopFollow
	RTS

Script_moveobject:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld b, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	add 4
;	ld d, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	add 4
;	ld e, a
	farcall $01, CopyDECoordsToMapObject
	RTS

Script_writeobjectxy:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	CMP #LAST_TALKED
	BNE @ok
	LDA zLastTalked
@ok
;	ld b, a
	;farcall WriteObjectXY
	RTS

Script_follownotexact:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld b, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld c, a
	;farcall FollowNotExact
	RTS

Script_loademote:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	cp EMOTE_FROM_MEM
	BNE @not_var_emote
;	ld a, [wScriptVar]
@not_var_emote
;	ld c, a
	;farcall LoadEmote
	RTS

Script_showemote:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	STA wScriptVar
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	CMP #LAST_TALKED
;	jr z, @ok
	STA zLastTalked
@ok
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	STA wScriptDelay
;	ld b, BANK(ShowEmoteScript)
;	ld de, ShowEmoteScript
	JMP ScriptCall

ShowEmoteScript:
	loademote EMOTE_FROM_MEM
	applymovementlasttalked @Show
	pause 0
	applymovementlasttalked @Hide
	end

@Show:
	show_emote
	step_sleep 1
	step_end

@Hide:
	hide_emote
	step_sleep 1
	step_end

Script_earthquake:
;	ld hl, EarthquakeMovement
;	ld de, wEarthquakeMovementDataBuffer
;	ld bc, EarthquakeMovement@End - EarthquakeMovement
	JSR CopyBytes
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wEarthquakeMovementDataBuffer + 1], a
;	and %00111111
;	ld [wEarthquakeMovementDataBuffer + 3], a
;	ld b, BANK(@script)
;	ld de, @script
	JMP ScriptCall

@script
	applymovement PLAYER, wEarthquakeMovementDataBuffer
	end

EarthquakeMovement:
	step_shake 16 ; the 16 gets overwritten with the script byte
	step_sleep 16 ; the 16 gets overwritten with the lower 6 bits of the script byte
	step_end
@End

Script_loadpikachudata:
;	ld a, PIKACHU
;	ld [wTempWildMonSpecies], a
;	ld a, 5
;	ld [wCurPartyLevel], a
	RTS

Script_randomwildmon:
	LDA #0
;	ld [wBattleScriptFlags], a
	RTS

Script_loadtemptrainer:
;	ld a, (1 << 7) | 1
;	ld [wBattleScriptFlags], a
;	ld a, [wTempTrainerClass]
;	ld [wOtherTrainerClass], a
;	ld a, [wTempTrainerID]
;	ld [wOtherTrainerID], a
	RTS

Script_loadwildmon:
;	ld a, (1 << 7)
;	ld [wBattleScriptFlags], a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wTempWildMonSpecies], a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wCurPartyLevel], a
	RTS

Script_loadtrainer:
;	ld a, (1 << 7) | 1
;	ld [wBattleScriptFlags], a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wOtherTrainerClass], a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wOtherTrainerID], a
	RTS

Script_startbattle:
	JSR BufferScreen
	predef StartBattle
;	ld a, [wBattleResult]
;	and ~BATTLERESULT_BITMASK
	STA wScriptVar
	RTS

Script_catchtutorial:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wBattleType], a
	JSR BufferScreen
	;farcall CatchTutorial
	JMP Script_reloadmap

Script_reloadmapafterbattle:
;	ld hl, wBattleScriptFlags
;	ld d, [hl]
;	ld [hl], 0
;	ld a, [wBattleResult]
;	and ~BATTLERESULT_BITMASK
	CMP #LOSE
	BNE @notblackedout
;	ld b, BANK(Script_BattleWhiteout)
;	ld hl, Script_BattleWhiteout
	JMP ScriptJump

@notblackedout
;	bit 0, d
;	jr z, @was_wild
	;farcall MomTriesToBuySomething
;	jr @done

@was_wild
;	ld a, [wBattleResult]
;	bit BATTLERESULT_BOX_FULL, a
;	jr z, @done
;	ld b, BANK(Script_SpecialBillCall)
;	ld de, Script_SpecialBillCall
	;farcall LoadScriptBDE
@done
	JMP Script_reloadmap

Script_reloadmap:
	LDA #0
;	ld [wBattleScriptFlags], a
	LDA #MAPSETUP_RELOADMAP
;	ldh [hMapEntryMethod], a
	LDA #MAPSTATUS_ENTER
	JSR LoadMapStatus
	JMP StopScript

Script_scall:
	LDA wScriptBank
;	ld b, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld e, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld d, a
;	jr ScriptCall

Script_farscall:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld b, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld e, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld d, a
;	jr ScriptCall

Script_memJSR:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld l, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld h, a
;	ld b, [hl]
;	inc hl
;	ld e, [hl]
;	inc hl
;	ld d, [hl]
	; fallthrough

ScriptCall:
; BUG: ScriptCall can overflow wScriptStack and crash (see docs/bugs_and_glitches@md)

IFDEF BUGFIXES
	LDA wScriptStackSize
	CMP #5
	RCS
ENDIF
	STY zScratchByte
	PHA
IFNDEF BUGFIXES
	LDA wScriptStackSize
ENDIF
	TAY
	INC wScriptStackSize
	LDA #3
	STA MMC5_Multiplier1
	STY MMC5_Multiplier2
	LDY MMC5_Multiplier1
	LDA wScriptBank
	STA wScriptStack, Y
	INY
	LDA wScriptPos
	STA wScriptStack, Y
	INY
	LDA wScriptPos + 1
	STA wScriptStack, Y
	PLA
	STA wScriptBank
	TAX
	STA wScriptPos
	LDA zScratchByte
	STA wScriptPos + 1
	RTS

CallCallback::
	LDA wScriptBank
	ORA #$80
	STA wScriptBank
	JMP ScriptCall

Script_sjump:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	TAX
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	TAY
	LDA wScriptBank
	JMP ScriptJump

Script_farsjump:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld b, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld l, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld h, a
	JMP ScriptJump

Script_memjump:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld l, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld h, a
;	ld b, [hl]
;	inc hl
;	ld a, [hli]
;	ld h, [hl]
;	ld l, a
	JMP ScriptJump

Script_iffalse:
;	ld a, [wScriptVar]
;	and a
;	;jp nz, SkipTwoScriptBytes
	JMP Script_sjump

Script_iftrue:
;	ld a, [wScriptVar]
;	and a
;	;jp nz, Script_sjump
	JMP SkipTwoScriptBytes

Script_ifequal:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld hl, wScriptVar
;	cp [hl]
;	jr z, Script_sjump
;	jr SkipTwoScriptBytes

Script_ifnotequal:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld hl, wScriptVar
;	cp [hl]
;	jr nz, Script_sjump
;	jr SkipTwoScriptBytes

Script_ifgreater:
;	ld a, [wScriptVar]
;	ld b, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	cp b
	BCS Script_sjump
;	jr SkipTwoScriptBytes

Script_ifless:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld b, a
;	ld a, [wScriptVar]
;	cp b
	BCS Script_sjump
;	jr SkipTwoScriptBytes

Script_jumpstd:
	JSR StdScript
;	jr ScriptJump

Script_callstd:
	JSR StdScript
;	ld d, h
;	ld e, l
	JMP ScriptCall

StdScript:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld e, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld d, a
;	ld hl, StdScripts
;	add hl, de
;	add hl, de
;	add hl, de
;	ld a, BANK(StdScripts)
	JSR GetFarByte
;	ld b, a
;	inc hl
;	ld a, BANK(StdScripts)
	JMP GetFarWord

SkipTwoScriptBytes:
	home_ref PRG_HomeROM2, GetScriptByte
	home_jump PRG_HomeROM2, GetScriptByte

ScriptJump:
	STA wScriptBank
	STX wScriptPos
	STY wScriptPos + 1
	RTS

Script_sdefer:
	LDA wScriptBank
	STA wDeferredScriptBank
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	STA wDeferredScriptAddr
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	STA wDeferredScriptAddr + 1
	LDA wScriptFlags
	SSB 3
	STA wScriptFlags
	RTS

Script_checkscene:
	JSR CheckScenes
	BEQ @no_scene
	STA wScriptVar
	RTS

@no_scene
	LDA #$ff
	STA wScriptVar
	RTS

Script_checkmapscene:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld b, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld c, a
	JSR GetMapSceneID
;	ld a, d
;	or e
;	jr z, @no_scene
;	ld a, [de]
	STA wScriptVar
	RTS

@no_scene
	LDA #$ff
	STA wScriptVar
	RTS

Script_setscene:
;	ld a, [wMapGroup]
;	ld b, a
;	ld a, [wMapNumber]
;	ld c, a
;	jr DoScene

Script_setmapscene:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld b, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld c, a
DoScene:
	JSR GetMapSceneID
;	ld a, d
;	or e
;	jr z, @no_scene
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [de], a
@no_scene
	RTS

Script_readmem:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld l, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld h, a
;	ld a, [hl]
	STA wScriptVar
	RTS

Script_writemem:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld l, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld h, a
;	ld a, [wScriptVar]
;	ld [hl], a
	RTS

Script_loadmem:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld l, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld h, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [hl], a
	RTS

Script_setval:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	STA wScriptVar
	RTS

Script_addval:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld hl, wScriptVar
;	add [hl]
;	ld [hl], a
	RTS

Script_random:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	STA wScriptVar
	REQ

	JSR @Divide256byC
	BEQ @no_restriction ; 256 % b == 0
;	ld b, a
	LDA #0
;	sub b
;	ld b, a
@loop
;	push bc
	JSR Random
;	pop bc
;	ldh a, [hRandomAdd]
;	cp b
;	jr nc, @loop
;	jr @finish

@no_restriction
;	push bc
	JSR Random
;	pop bc
;	ldh a, [hRandomAdd]

@finish
;	push af
;	ld a, [wScriptVar]
;	ld c, a
;	pop af
	JSR SimpleDivide
	STA wScriptVar
	RTS

@Divide256byC:
	LDA #0
	TAX
	SEC
	SBC zScriptVar
	SEC
@mod_loop
	INX
	SBC zScriptVar
	BCS @mod_loop
	DEX
	ADC zScriptVar
	RTS

Script_readvar:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	JSR GetVarAction
;	ld a, [de]
	STA wScriptVar
	RTS

Script_writevar:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	JSR GetVarAction
;	ld a, [wScriptVar]
;	ld [de], a
	RTS

Script_loadvar:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	JSR GetVarAction
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [de], a
	RTS

GetVarAction:
;	ld c, a
	;farcall _GetVarAction
	RTS

Script_checkver:
;	ld a, [@gs_version]
	STA wScriptVar
	RTS

@gs_version:
	db GS_VERSION

Script_getmonname:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	and a
	BNE @gotit
;	ld a, [wScriptVar]
@gotit
	STA wNamedObjectIndex
	JSR GetPokemonName
;	ld de, wStringBuffer1

GetStringBuffer:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	cp NUM_STRING_BUFFERS
	BCS @ok
	LDA #0
@ok

CopyConvertedText:
	LDA #>wStringBuffer3
	STA zScratchWord + 1
	LDA #<wStringBuffer3
	STA zScratchWord
	LDY #STRING_BUFFER_LENGTH
	TXA
	home_ref PRG_HomeROM2, AddNTimes
	home_jump PRG_HomeROM2, CopyName2

Script_getitemname:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	and a ; USE_SCRIPT_VAR
	BNE @ok
;	ld a, [wScriptVar]
@ok
	STA wNamedObjectIndex
	JSR GetItemName
;	ld de, wStringBuffer1
;	jr GetStringBuffer

Script_getcurlandmarkname:
;	ld a, [wMapGroup]
;	ld b, a
;	ld a, [wMapNumber]
;	ld c, a
	JSR GetWorldMapLocation
;	ld e, a
	;farcall GetLandmarkName
;	ld de, wStringBuffer1
	JMP GetStringBuffer

Script_gettrainername:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld c, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld b, a
	;farcall GetTrainerName
;	jr GetStringBuffer

Script_getmoney:
	JSR ResetStringBuffer1
	JSR GetMoneyAccount
;	ld hl, wStringBuffer1
	lb bc, PRINTNUM_LEFTALIGN | 3, 6
	JSR PrintNum
;	ld de, wStringBuffer1
	JMP GetStringBuffer

Script_getcoins:
	JSR ResetStringBuffer1
;	ld hl, wStringBuffer1
;	ld de, wCoins
	lb bc, PRINTNUM_LEFTALIGN | 2, 6
	JSR PrintNum
;	ld de, wStringBuffer1
	JMP GetStringBuffer

Script_getnum:
	JSR ResetStringBuffer1
;	ld de, wScriptVar
;	ld hl, wStringBuffer1
	lb bc, PRINTNUM_LEFTALIGN | 1, 3
	JSR PrintNum
;	ld de, wStringBuffer1
	JMP GetStringBuffer

ResetStringBuffer1:
;	ld hl, wStringBuffer1
;	ld bc, MOVE_NAME_LENGTH
;	ld a, "@"
	JSR ByteFill
	RTS

Script_getstring:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld e, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld d, a
	LDA wScriptBank
;	ld hl, CopyName1
;	rst FarCall
;	ld de, wStringBuffer2
	JMP GetStringBuffer

Script_givepokemail:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld l, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld h, a
	LDA wScriptBank
	JSR GetFarByte
;	ld b, a
;	push bc
;	inc hl
;	ld bc, MAIL_MSG_LENGTH
;	ld de, wMonMailMessageBuffer
	LDA wScriptBank
	JSR FarCopyBytes
;	pop bc
	;farcall GivePokeMail
	RTS

Script_checkpokemail:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld e, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld d, a
	LDA wScriptBank
;	ld b, a
	;farcall CheckPokeMail
	RTS

Script_giveitem:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	cp ITEM_FROM_MEM
	BNE @ok
;	ld a, [wScriptVar]
@ok
;	ld [wCurItem], a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wItemQuantityChange], a
;	ld hl, wNumItems
	JSR ReceiveItem
;	jr nc, @full
;	ld a, TRUE
	STA wScriptVar
	RTS
@full
	LDA #0
	STA wScriptVar
	RTS

Script_takeitem:
	LDA #0
	STA wScriptVar
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wCurItem], a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wItemQuantityChange], a
;	ld a, -1
;	ld [wCurItemQuantity], a
;	ld hl, wNumItems
	JSR TossItem
;	ret nc
;	ld a, TRUE
	STA wScriptVar
	RTS

Script_checkitem:
	LDA #0
	STA wScriptVar
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wCurItem], a
;	ld hl, wNumItems
	JSR CheckItem
;	ret nc
;	ld a, TRUE
	STA wScriptVar
	RTS

Script_givemoney:
	JSR GetMoneyAccount
	JSR LoadMoneyAmountToMem
	;farcall GiveMoney
	RTS

Script_takemoney:
	JSR GetMoneyAccount
	JSR LoadMoneyAmountToMem
	;farcall TakeMoney
	RTS

Script_checkmoney:
	JSR GetMoneyAccount
	JSR LoadMoneyAmountToMem
	;farcall CompareMoney

CompareMoneyAction:
	BCS @less
;	jr z, @exact
;	ld a, HAVE_MORE
;	jr @done
@exact
;	ld a, HAVE_AMOUNT
;	jr @done
@less
;	ld a, HAVE_LESS
@done
	STA wScriptVar
	RTS

GetMoneyAccount:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	and a
;	ld de, wMoney ; YOUR_MONEY
;	ret z
;	ld de, wMomsMoney ; MOMS_MONEY
	RTS

LoadMoneyAmountToMem:
;	ld bc, hMoneyTemp
;	push bc
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [bc], a
;	inc bc
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [bc], a
;	inc bc
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [bc], a
;	pop bc
	RTS

Script_givecoins:
	JSR LoadCoinAmountToMem
	;farcall GiveCoins
	RTS

Script_takecoins:
	JSR LoadCoinAmountToMem
	;farcall TakeCoins
	RTS

Script_checkcoins:
	JSR LoadCoinAmountToMem
	;farcall CheckCoins
;	jr CompareMoneyAction

LoadCoinAmountToMem:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ldh [hMoneyTemp + 1], a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ldh [hMoneyTemp], a
;	ld bc, hMoneyTemp
	RTS

Script_checktime:
	LDA #0
	STA wScriptVar
	;farcall CheckTime
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	and c
;	ret z
;	ld a, TRUE
	STA wScriptVar
	RTS

Script_checkpoke:
	LDA #0
	STA wScriptVar
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld hl, wPartySpecies
;	ld de, 1
	JSR IsInArray
;	ret nc
;	ld a, TRUE
	STA wScriptVar
	RTS

Script_addcellnum:
	LDA #0
	STA wScriptVar
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld c, a
	farcall PRG_17, AddPhoneNumber
;	ret nc
;	ld a, TRUE
	STA wScriptVar
	RTS

Script_delcellnum:
	LDA #0
	STA wScriptVar
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld c, a
	;farcall DelCellNum
;	ret nc
;	ld a, TRUE
	STA wScriptVar
	RTS

Script_checkcellnum:
; returns false if the cell number is not in your phone

	LDA #0
	STA wScriptVar
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld c, a
	;farcall CheckCellNum
;	ret nc
;	ld a, TRUE
	STA wScriptVar
	RTS

Script_specialphoneJSR:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wSpecialPhoneCallID], a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wSpecialPhoneCallID + 1], a
	RTS

Script_checkphoneJSR:
; returns false if no special phone JSR is stored

	LDA wSpecialPhoneCallID
	BEQ @ok
;	ld a, TRUE
@ok
	STA wScriptVar
	RTS

Script_givepoke:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wCurPartySpecies], a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wCurPartyLevel], a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wCurItem], a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	and a
;	ld b, a
;	jr z, @ok
;	ld hl, wScriptPos
;	ld e, [hl]
;	inc hl
;	ld d, [hl]
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
@ok
	;farcall GivePoke
;	ld a, b
	STA wScriptVar
	RTS

Script_giveegg:
; if no room in the party, return 0 in wScriptVar; else, return 2

	LDA #0 ; PARTYMON
	STA wScriptVar
;	ld [wMonType], a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wCurPartySpecies], a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wCurPartyLevel], a
	;farcall GiveEgg
;	ret nc
;	ld a, 2
	STA wScriptVar
	RTS

Script_setevent:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld e, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld d, a
;	ld b, SET_FLAG
	JSR EventFlagAction
	RTS

Script_clearevent:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld e, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld d, a
;	ld b, RESET_FLAG
	JSR EventFlagAction
	RTS

Script_checkevent:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld e, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld d, a
;	ld b, CHECK_FLAG
	JSR EventFlagAction
;	ld a, c
	BEQ @false
;	ld a, TRUE
@false
	STA wScriptVar
	RTS

Script_setflag:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld e, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld d, a
;	ld b, SET_FLAG
	JSR _EngineFlagAction
	RTS

Script_clearflag:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld e, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld d, a
;	ld b, RESET_FLAG
	JSR _EngineFlagAction
	RTS

Script_checkflag:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld e, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld d, a
;	ld b, CHECK_FLAG
	JSR _EngineFlagAction
;	ld a, c
	BEQ @false
;	ld a, TRUE
@false
	STA wScriptVar
	RTS

_EngineFlagAction:
	;farcall EngineFlagAction
	RTS

Script_wildoff:
;	ld hl, wStatusFlags
;	set STATUSFLAGS_NO_WILD_ENCOUNTERS_F, [hl]
	RTS

Script_wildon:
;	ld hl, wStatusFlags
;	res STATUSFLAGS_NO_WILD_ENCOUNTERS_F, [hl]
	RTS

Script_xycompare:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wXYComparePointer], a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wXYComparePointer + 1], a
	RTS

Script_warpfacing:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	maskbits NUM_DIRECTIONS
;	ld c, a
;	ld a, [wPlayerSpriteSetupFlags]
;	set PLAYERSPRITESETUP_CUSTOM_FACING_F, a
;	or c
;	ld [wPlayerSpriteSetupFlags], a
; fallthrough

Script_warp:
; This seems to be some sort of error handling case.
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	BEQ @not_ok
;	ld [wMapGroup], a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wMapNumber], a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wXCoord], a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wYCoord], a
	LDA #SPAWN_N_A
;	ld [wDefaultSpawnpoint], a
	LDA #MAPSETUP_WARP
;	ldh [hMapEntryMethod], a
	LDA #MAPSTATUS_ENTER
	JSR LoadMapStatus
	JMP StopScript

@not_ok
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	LDA #SPAWN_N_A
;	ld [wDefaultSpawnpoint], a
	LDA #MAPSETUP_BADWARP
;	ldh [hMapEntryMethod], a
	LDA #MAPSTATUS_ENTER
	JSR LoadMapStatus
	JMP StopScript

Script_warpmod:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wBackupWarpNumber], a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wBackupMapGroup], a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wBackupMapNumber], a
	RTS

Script_blackoutmod:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wLastSpawnMapGroup], a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wLastSpawnMapNumber], a
	RTS

Script_dontrestartmapmusic:
;	ld a, TRUE
;	ld [wDontPlayMapMusicOnReload], a
	RTS

Script_writecmdqueue:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld e, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld d, a
	LDA wScriptBank
;	ld b, a
	JMP WriteCmdQueue

Script_delcmdqueue:
	LDA #0
	STA wScriptVar
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld b, a
	JSR DelCmdQueue
;	ret c
;	ld a, TRUE
	STA wScriptVar
	RTS

Script_changemapblocks:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wMapBlocksBank], a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wMapBlocksPointer], a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wMapBlocksPointer + 1], a
	JSR ChangeMap
	JSR BufferScreen
	RTS

Script_changeblock:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	add 4
;	ld d, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	add 4
;	ld e, a
	JSR GetBlockLocation
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [hl], a
	JSR BufferScreen
	RTS

Script_reloadmappart::
	LDA #0
;	ldh [hBGMapMode], a
	JSR OverworldTextModeSwitch
	JSR GetMovementPermissions
	JSR ApplyTilemap
	JSR UpdateSprites
	RTS

Script_warpcheck:
	JSR WarpCheck
;	ret nc
	;farcall EnableEvents
	RTS

Script_enableevents: ; unreferenced
	;farcall EnableEvents
	RTS

Script_newloadmap:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ldh [hMapEntryMethod], a
	LDA #MAPSTATUS_ENTER
	JSR LoadMapStatus
	JMP StopScript

Script_reloadend:
	JSR Script_newloadmap
	JMP Script_end

Script_opentext:
	JSR OpenText
	RTS

Script_refreshscreen:
	JSR RefreshScreen
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	RTS

Script_writeunusedbyte:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld [wUnusedScriptByte], a
	RTS

UnusedClosetextScript: ; unreferenced
	closetext

Script_closetext:
;	ldh a, [hOAMUpdate]
;	push af
	LDA #$1
;	ldh [hOAMUpdate], a
	JSR WaitBGMap
;	pop af
;	ldh [hOAMUpdate], a
	JSR CloseText
	RTS

Script_autoinput:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	push af
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld l, a
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
;	ld h, a
;	pop af
	JSR StartAutoInput
	RTS

Script_pause:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	BEQ @loop
	STA wScriptDelay
@loop
	LDA #2
	JSR DelayFrames
	DEC wScriptDelay
	BNE @loop
	RTS

Script_deactivatefacing:
	home_ref PRG_HomeROM2, GetScriptByte
	LDA zScratchByte
	BEQ @no_time
	STA wScriptDelay
@no_time
	LDA #SCRIPT_WAIT
	STA wScriptMode
	JMP StopScript

Script_stopandsjump:
	JSR StopScript
	JMP Script_sjump

Script_end:
	JSR ExitScriptSubroutine
	BCS @resume
	RTS

@resume
	LDA #0
	STA wScriptRunning
	LDA #SCRIPT_OFF
	STA wScriptMode
	LDA wScriptFlags
	RSB 0
	STA wScriptFlags
	JMP StopScript

Script_endcallback:
	JSR ExitScriptSubroutine
	LDA wScriptFlags
	RSB 0
	STA wScriptFlags
	JMP StopScript

ExitScriptSubroutine:
; Return carry if there's no parent to return to.

	LDA wScriptStackSize
	BEQ @done
	DEC wScriptStackSize
	LDY wScriptStackSize
	LDA #3
	STA MMC5_Multiplier1
	STY MMC5_Multiplier2
	LDY MMC5_Multiplier1
	LDA wScriptStack, Y
	INY
	AND #$7f
	STA wScriptBank
	LDA wScriptStack, Y
	INY
	STA wScriptPos
	LDA wScriptStack, Y
	CLC
	RTS
@done
	SEC
	RTS

Script_endall:
	LDA #0
	STA wScriptStackSize
	STA wScriptRunning
	LDA #SCRIPT_OFF
	STA wScriptMode
	LDA wScriptFlags
	RSB 0
	STA wScriptFlags
	JMP StopScript

Script_halloffame:
	LDA wGameTimerPaused
	RSB GAME_TIMER_PAUSED_F
	STA wGameTimerPaused
	farcall PRG_20, HallOfFame
	LDA wGameTimerPaused
	SSB GAME_TIMER_PAUSED_F
	STA wGameTimerPaused
	BNE ReturnFromCredits

Script_credits:
	farcall PRG_20, RedCredits
ReturnFromCredits:
	JSR Script_endall
	LDA #MAPSTATUS_DONE
	JSR LoadMapStatus
	JMP StopScript

Script_checkver_duplicate: ; unreferenced
	LDA @gs_version
	STA wScriptVar
	RTS

@gs_version:
	db GS_VERSION
