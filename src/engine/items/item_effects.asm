_DoItemEffect:
	LDA wCurItem
	STA wNamedObjectIndex
	JSR GetItemName
	JSR CopyName1
	LDA #1
	STA wItemEffectSucceeded
	LDX wCurItem
	DEX
	LDA ItemEffects_Lo, X
	SEC
	SBC #1
	TAY
	LDA ItemEffects_Hi, X
	SBC #0
	PHA
	PHY
	RTS
	
; entries correspond to item constants
ItemEffects_Hi:
	.dh PokeBallEffect	; MASTER_BALL
	.dh PokeBallEffect	; ULTRA_BALL
	.dh NoEffect		; BRIGHTPOWDER
	.dh PokeBallEffect	; GREAT_BALL
	.dh PokeBallEffect	; POKE_BALL
	.dh TownMapEffect	; TOWN_MAP
	.dh BicycleEffect	; BICYCLE
	.dh EvoStoneEffect	; MOON_STONE
	.dh StatusHealingEffect	; ANTIDOTE
	.dh StatusHealingEffect	; BURN_HEAL
	.dh StatusHealingEffect	; ICE_HEAL
	.dh StatusHealingEffect	; AWAKENING
	.dh StatusHealingEffect	; PARLYZ_HEAL
	.dh FullRestoreEffect	; FULL_RESTORE
	.dh RestoreHPEffect	; MAX_POTION
	.dh RestoreHPEffect	; HYPER_POTION
	.dh RestoreHPEffect	; SUPER_POTION
	.dh RestoreHPEffect	; POTION
	.dh EscapeRopeEffect	; ESCAPE_ROPE
	.dh RepelEffect		; REPEL
	.dh RestorePPEffect	; MAX_ELIXER
	.dh EvoStoneEffect	; FIRE_STONE
	.dh EvoStoneEffect	; THUNDERSTONE
	.dh EvoStoneEffect	; WATER_STONE
	; ... tbc
	
; entries correspond to item constants
ItemEffects_Lo:
	.dl PokeBallEffect	; MASTER_BALL
	.dl PokeBallEffect	; ULTRA_BALL
	.dl NoEffect		; BRIGHTPOWDER
	.dl PokeBallEffect	; GREAT_BALL
	.dl PokeBallEffect	; POKE_BALL
	.dl TownMapEffect	; TOWN_MAP
	.dl BicycleEffect	; BICYCLE
	.dl EvoStoneEffect	; MOON_STONE
	.dl StatusHealingEffect	; ANTIDOTE
	.dl StatusHealingEffect	; BURN_HEAL
	.dl StatusHealingEffect	; ICE_HEAL
	.dl StatusHealingEffect	; AWAKENING
	.dl StatusHealingEffect	; PARLYZ_HEAL
	.dl FullRestoreEffect	; FULL_RESTORE
	.dl RestoreHPEffect	; MAX_POTION
	.dl RestoreHPEffect	; HYPER_POTION
	.dl RestoreHPEffect	; SUPER_POTION
	.dl RestoreHPEffect	; POTION
	.dl EscapeRopeEffect	; ESCAPE_ROPE
	.dl RepelEffect		; REPEL
	.dl RestorePPEffect	; MAX_ELIXER
	.dl EvoStoneEffect	; FIRE_STONE
	.dl EvoStoneEffect	; THUNDERSTONE
	.dl EvoStoneEffect	; WATER_STONE
	; ... tbc
	
PokeBallEffect:
	LDX wBattleMode
	DEX
	JNE UseBallInTrainerBattle
	
	LDA wPartyCount
	CMP #PARTY_LENGTH
	BNE @room_in_party
	
	; ld a, BANK(sBox + BOX_COUNT)
	; jsr OpenSRAM
	LDA #RAM_SAVE
	STA MMC5_PRGBankSwitch1
	LDA sBox + BOX_COUNT
	PHA
	LDA #RAM_MAIN
	STA MMC5_PRGBankSwitch1
	PLA
	CMP #MONS_PER_BOX
	JEQ Ball_BoxIsFullMessage
	
@room_in_party:
	LDA #0
	STA wWildMon
	LDA wCurItem
	CMP #PARK_BALL
	JSC nz, ReturnToBattle_UseBall
	LDA wOptions
	RSB NO_TEXT_SCROLL
	STA wOptions
	LDA #<ItemUsedText
	STA zTextPointer
	LDA #>ItemUsedText
	STA zTextPointer + 1
	JSR PrintText
	
	LDX wEnemyMonCatchRate
	LDA wBattleMode
	CMP #BATTLETYPE_TUTORIAL
	JEQ @catch_without_fail
	LDA wCurItem
	CMP #MASTER_BALL
	JEQ @catch_without_fail
	LDY wCurItem
	LDA #<BallMultiplierFunctionTable
	STA zTemp16Bit1
	LDA #>BallMultiplierFunctionTable
	STA zTemp16Bit1 + 1
-	LDA (zTemp16Bit1), y
	INY
	CMP #$ff
	BEQ @skip_or_return_from_ball_fn
	STX zTemp8Bit1
	CMP zTemp8Bit1
	BEQ @call_ball_function
	INY
	INY
	jmp -
@call_ball_function:
	LDA (zTemp16Bit1), y
	TAX
	INY
	LDA (zTemp16Bit1), y
	STX zTemp16Bit1
	STA zTemp16Bit1 + 1
	JSR @call_fn
	jmp @skip_or_return_from_ball_fn
@call_fn:
	jmp (zTemp16Bit1)
	
@skip_or_return_from_ball_fn:
	LDA wCurItem
	TXA
	CMP #LEVEL_BALL
	BNE +
	JMP @skip_hp_calc
+
	; todo:
	STA zMultiplicand + 2
	; ldh [hMultiplicand + 2], a

	LDA #>wEnemyMon + BAT_HP
	STA zMonPointer + 1
	LDA #<wEnemyMon + BAT_HP
	STA zMonPointer
	LDY #3
	; ld hl, wEnemyMon + BAT_HP
-	LDA (zMonPointer), Y
	STA zScratchWord, Y
	DEY
	BPL -
	LDA #0
	STA zScratchWord + 4
	STA zScratchWord + 5
	; ld b, [hl]
	; inc hl
	; ld c, [hl]
	; inc hl
	; ld d, [hl]
	; inc hl
	; ld e, [hl]
	ASL zScratchWord + 1
	ROL zScratchWord
	; sla c
	; rl b

	LDA #3
	STA MMC5_Multiplier1
	LDA zScratchWord + 2
	STA MMC5_Multiplier2
	LDA MMC5_Multiplier1
	STA zScratchWord + 4
	LDA #3
	STA MMC5_Multiplier1
	LDA zScratchWord + 3
	STA MMC5_Multiplier2
	LDA MMC5_Multiplier1
	STA zScratchWord + 5
	LDA MMC5_Multiplier2
	CLC
	ADC zScratchWord + 4
	STA zScratchWord + 4
	; ld h, d
	; ld l, e
	; add hl, de
	; add hl, de
	; ld d, h
	; ld e, l
	; ld a, d
	; and a
	BEQ @Okay_1
	; jr z, .okay_1

	LSR zScratchWord + 4
	; srl d
	ROR zScratchWord + 5
	; rr e
	LSR zScratchWord + 4
	; srl d
	ROR zScratchWord + 5
	; rr e
	LSR zScratchWord
	; srl b
	ROR zScratchWord + 1
	; rr c
	LSR zScratchWord
	; srl b
	ROR zScratchWord + 1
	; rr c

	LDA zScratchWord + 1
	; ld a, c
	; and a
	BNE @Okay_1
	; jr nz, .okay_1
	LDA #1
	STA zScratchWord + 1
	; ld c, $1
@Okay_1:
; .okay_1
	LDA zScratchWord + 5
	STA zScratchWord
	; ld b, e

	PHA
	; push bc
	; ld a, b
	SEC
	SBC zScratchWord + 1
	STA zMultiplier
	; sub c
	; ldh [hMultiplier], a
	LDA #0
	STA zDividend
	STA zDividend + 1
	STA zDividend + 2
	STA zDividend + 3
	STA zMultiplicand
	STA zMultiplicand + 1
	; xor a
	; ldh [hDividend], a
	; ldh [hMultiplicand], a
	; ldh [hMultiplicand + 1], a
	JSR Multiply
	; call Multiply
	PLA
	; pop bc
	STA hDivisor
	JSR Divide
	; ld a, b
	; ldh [hDivisor], a
	; ld b, 4
	; call Divide
	LDA zQuotient + 3
	; ldh a, [hQuotient + 3]
	BNE @status_check
	LDA #1
@status_check:
	TAX
	LDA wEnemyMon + BAT_STATUS
	LDY #10
	AND #1 << FRZ | SLP_MASK
	BNE @addstatus
IFDEF BUGFIXES
	LDA wEnemyMon + BAT_STATUS
ENDIF
	BEQ @vanilla
	LDY #5
	BNE @addstatus
@vanilla:
	LDY #0
@addstatus:
	TXA
	STY zTemp8Bit1
	CLC
	ADC zTemp8Bit1
	BCC @max_1
	LDA #$ff
@max_1:
	PHY
	LDA wBattleMonItem
IFDEF BUGFIXES
	TXA
ENDIF
;	farcall GetItemHeldEffect ; todo: add its bank
	TAX
	CMP #HELD_ITEM_EFFECT
	PLY
	BNE @max_2
	STY zTemp8Bit1
	CLC
	ADC zTemp8Bit1
	BCC @max_2
	LDA #$ff
	; ... to be continued!
@max_2:
@skip_hp_calc:

UseBallInTrainerBattle:
	RTS

Ball_BoxIsFullMessage:
	RTS

ReturnToBattle_UseBall:
	RTS

ItemUsedText:
	text "<PLAYER> used the @"
	text_ram wStringBuffer2
	text "."
	done
