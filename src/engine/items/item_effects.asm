_DoItemEffect:
	lda wCurItem
	sta wNamedObjectIndex
	jsr GetItemName
	jsr CopyName1
	lda #1
	sta wItemEffectSucceeded
	ldx wCurItem
	dex
	lda #<ItemEffects
	sta zJumpTable
	lda #>ItemEffects
	sta zJumpTable + 1
	jmp JumpTable
	
; entries correspond to item constants
ItemEffects_Hi:
	.db #>PokeBallEffect		; MASTER_BALL
	.db #>PokeBallEffect		; ULTRA_BALL
	.db #>NoEffect				; BRIGHTPOWDER
	.db #>PokeBallEffect	 	; GREAT_BALL
	.db #>PokeBallEffect		; POKE_BALL
	.db #>TownMapEffect			; TOWN_MAP
	.db #>BicycleEffect			; BICYCLE
	.db #>EvoStoneEffect		; MOON_STONE
	.db #>StatusHealingEffect	; ANTIDOTE
	.db #>StatusHealingEffect	; BURN_HEAL
	.db #>StatusHealingEffect	; ICE_HEAL
	.db #>StatusHealingEffect	; AWAKENING
	.db #>StatusHealingEffect	; PARLYZ_HEAL
	.db #>FullRestoreEffect		; FULL_RESTORE
	.db #>RestoreHPEffect		; MAX_POTION
	.db #>RestoreHPEffect		; HYPER_POTION
	.db #>RestoreHPEffect		; SUPER_POTION
	.db #>RestoreHPEffect		; POTION
	.db #>EscapeRopeEffect		; ESCAPE_ROPE
	.db #>RepelEffect			; REPEL
	.db #>RestorePPEffect		; MAX_ELIXER
	.db #>EvoStoneEffect		; FIRE_STONE
	.db #>EvoStoneEffect		; THUNDERSTONE
	.db #>EvoStoneEffect		; WATER_STONE
	; ... tbc
	
; entries correspond to item constants
ItemEffects_Lo:
	.db #<PokeBallEffect		; MASTER_BALL
	.db #<PokeBallEffect		; ULTRA_BALL
	.db #<NoEffect				; BRIGHTPOWDER
	.db #<PokeBallEffect	 	; GREAT_BALL
	.db #<PokeBallEffect		; POKE_BALL
	.db #<TownMapEffect			; TOWN_MAP
	.db #<BicycleEffect			; BICYCLE
	.db #<EvoStoneEffect		; MOON_STONE
	.db #<StatusHealingEffect	; ANTIDOTE
	.db #<StatusHealingEffect	; BURN_HEAL
	.db #<StatusHealingEffect	; ICE_HEAL
	.db #<StatusHealingEffect	; AWAKENING
	.db #<StatusHealingEffect	; PARLYZ_HEAL
	.db #<FullRestoreEffect		; FULL_RESTORE
	.db #<RestoreHPEffect		; MAX_POTION
	.db #<RestoreHPEffect		; HYPER_POTION
	.db #<RestoreHPEffect		; SUPER_POTION
	.db #<RestoreHPEffect		; POTION
	.db #<EscapeRopeEffect		; ESCAPE_ROPE
	.db #<RepelEffect			; REPEL
	.db #<RestorePPEffect		; MAX_ELIXER
	.db #<EvoStoneEffect		; FIRE_STONE
	.db #<EvoStoneEffect		; THUNDERSTONE
	.db #<EvoStoneEffect		; WATER_STONE
	; ... tbc
	
PokeBallEffect:
	ldx wBattleMode
	dex
	jne UseBallInTrainerBattle
	
	lda wPartyCount
	cmp #PARTY_LENGTH
	bne @room_in_party
	
	; ld a, BANK(sBoxCount)
	; jsr OpenSRAM
	lda sBoxCount
	; pha
	; jsr CloseSRAM
	; pla
	cmp #MONS_PER_BOX
	jeq Ball_BoxIsFullMessage
	
@room_in_party:
	lda #0
	sta wWildMon
	lda wCurItem
	cmp #PARK_BALL
	beq +
	jsr ReturnToBattle_UseBall
+	lda wOptions
	; res NO_TEXT_SCROLL, [hl] ; what bit is it?
	lda #<ItemUsedText
	sta zTextAddress
	lda #>ItemUsedText
	sta zTextAddress + 1
	jsr PrintText
	
	ldx wEnemyMonCatchRate
	lda wBattleMode
	cmp #BATTLETYPE_TUTORIAL
	jeq @catch_without_fail
	lda wCurItem
	cmp #MASTER_BALL
	jeq @catch_without_fail
	ldy wCurItem
	lda #<BallMultiplierFunctionTable
	sta zTemp16Bit1
	lda #>BallMultiplierFunctionTable
	sta zTemp16Bit1 + 1
-	lda (zTemp16Bit1), y
	iny
	cmp #$ff
	beq @skip_or_return_from_ball_fn
	stx (zTemp8Bit1)
	cmp zTemp8Bit1
	beq @call_ball_function
	iny
	iny
	jmp -
@call_ball_function:
	lda (zTemp16Bit1), y
	sta zTempAddr
	iny
	lda (zTemp16Bit1), y
	sta zTempAddr + 1
	jsr @call_fn
	jmp @skip_or_return_from_ball_fn
@call_fn:
	jmp (zTempAddr)
	
@skip_or_return_from_ball_fn:
	lda wCurItem
	txa
	cmp #LEVEL_BALL
	jeq @skip_hp_calc
	
	; todo:
	; ldh [hMultiplicand + 2], a
	
	; ld hl, wEnemyMonHP
	; ld b, [hl]
	; inc hl
	; ld c, [hl]
	; inc hl
	; ld d, [hl]
	; inc hl
	; ld e, [hl]
	; sla c
	; rl b

	; ld h, d
	; ld l, e
	; add hl, de
	; add hl, de
	; ld d, h
	; ld e, l
	; ld a, d
	; and a
	; jr z, .okay_1

	; srl d
	; rr e
	; srl d
	; rr e
	; srl b
	; rr c
	; srl b
	; rr c

	; ld a, c
	; and a
	; jr nz, .okay_1
	; ld c, $1
; .okay_1
	; ld b, e

	; push bc
	; ld a, b
	; sub c
	; ldh [hMultiplier], a
	; xor a
	; ldh [hDividend + 0], a
	; ldh [hMultiplicand + 0], a
	; ldh [hMultiplicand + 1], a
	; call Multiply
	; pop bc

	; ld a, b
	; ldh [hDivisor], a
	; ld b, 4
	; call Divide
	
	; ldh a, [hQuotient + 3]
	bne @status_check
	lda #1
@status_check:
	tax
	lda wEnemyMonStatus
	and #1 << FRZ | SLP_MASK
	ldy #10
	bne @addstatus
	ldy #5
	; lda wEnemyMonStatus ; uncomment to fix a bug
	bne @addstatus
	ldy #0
@addstatus:
	txa
	sty zTemp8Bit1
	clc
	adc zTemp8Bit1
	bcc @max_1
	lda #$ff
@max_1:
	tay
	phy
	lda wBattleMonItem
	; txa ; uncomment to fix a bug
	farcall GetItemHeldEffect ; todo: add its bank
	tax
	cmp #HELD_ITEM_EFFECT
	ply
	tya
	bne @max_2
	sty zTemp8Bit1
	clc
	adc zTemp8Bit1
	bcc @max_2
	lda #$ff
	; ... to be continued!
	
