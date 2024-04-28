_UpdatePlayerSprite:
	jsr GetPlayerSprite
	jmp GetUsedSprite ; wUsedSprite is the argument
	
_RefreshSprites:
	lda wSpriteFlags
	clc
	pha
	and #%00111111
	adc #%01000000
	sta wSpriteFlags
	jsr LoadUsedSpritesGFX
	pla
	sta wSpriteFlags
	rts
	
_ClearSprites:
	lda wSpriteFlags
	clc
	pha
	and #%00111111
	adc #%10000000
	sta wSpriteFlags
	jsr LoadUsedSpritesGFX
	pla
	sta wSpriteFlags
	rts
	
RefreshSprites:
	jsr @Refresh
	jmp LoadUsedSpritesGFX
	
@Refresh:
	lda #0
	ldx #<wUsedSprites
	ldy #>wUsedSprites
	stx zDestAddr
	sty zDestAddr + 1
	ldx #<wUsedSpritesEnd - wUsedSprites
	ldy #>wUsedSpritesEnd - wUsedSprites
	stx zSrcAddr ; just use the src addresses
	sty zSrcAddr + 1 ; as counter / size ones
	jsr ByteFill
	jsr GetPlayerSprite
	jmp AddMapSprites