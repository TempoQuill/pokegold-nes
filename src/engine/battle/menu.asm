LoadBattleMenu:
	ldy BattleMenuHeader
	jmp CommonBattleMenu
	
; SafariBattleMenu: ; unreferenced
	
ContestBattleMenu:
	ldy BattleMenuHeader
	; fallthrough
	
CommonBattleMenu:
	jsr LoadMenuHeader
	lda wBattleMenuCursorPosition
	sta wMenuCursorPosition
	jsr _2DMenu
	lda wMenuCursorPosition
	sta wBattleMenuCursorPosition
	jmp ExitMenu
	
BattleMenuHeader:
	.db MENU_BACKUP_FLAGS ; flags
	; menu_coords 8, 12, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
	.dw @MenuData
	.db 1 ; default option
	
@MenuData:
	.db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	.db $22 ; rows, columns
	.db 6 ; spacing
	; dba .Text
	; dbw BANK(@), NULL
	
@Text:
	.db "FIGHT@"
	.db "POK<MON@"
	.db "PACK@"
	.db "RUN@"
	
; SafariBattleMenuHeader: ; unreferenced

ContestBattleMenuHeader:
	.db MENU_BACKUP_FLAGS
	; menu_coords 2, 12, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
	.dw @MenuData
	.db 1 ; default option
	
@MenuData:
	.db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	.db $22 ; rows, columns
	.db 12 ; spacing
	; dba .Text
	; dbw .PrintParkBallsRemaining
	
@Text:
	.db "FIGHT@"
	.db "POKéMON@"
	.db "PARKBALL×  @"
	.db "RUN@"
	
@PrintParkBallsRemaining:
	; hlcoord 13, 16
	ldx wParkBallsRemaining
	ldy #2
	sta zScratchByte
	ldy #PRINTNUM_LEADINGZEROS | 1
	jmp PrintNum
	
