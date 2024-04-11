SetPlayerTurn:
	LDA #0
	BEQ SetTurn

SetEnemyTurn:
	LDA #1

SetTurn:
	STA zBattleTurn
	RTS

StdBattleTextbox:
	RTS

BattleRandom:
; Psuedorandom Number Generator - Wildly different compared to GB
; Pulls various bits of information about the resulting number from ROM
;	pull 1 - lo
;	pull 2 - hi
;	pull 3 - offset
;	pull 4-8 - base values (added together)
	; nab pointer
	LDY #0
	LDA (zRNGPointer), Y
	INY
	TAX
	LDA (zRNGPointer), Y
	; make sure to land on ROM
	ORA #$80
	STX zRNGPointer
	STA zRNGPointer + 1
	; check offset + pointer isn't RAM/registers
	LDA (zRNGPointer), Y
	CLC
	ADC #4
	PHA ; save max byte
	; Put Carry into A -> X
	LDA #0
	ROL A
	TAX
	; restore max byte
	PLA
	CLC
	ADC zRNGPointer
	TXA
	ADC zRNGPointer + 1
	BMI @Keep
	; keep offset in ROM
	LDA #$80
	ORA zRNGPointer + 1
	STA zRNGPointer + 1
@Keep:
	; nab offset
	LDA (zRNGPointer), Y
	TAY
	; byte 1
	LDA (zRNGPointer), Y
	LDX #3
@Loop:
	; bytes 2-5
	INY
	ADC (zRNGPointer), Y
	DEX
	BPL @Loop
	ROL A
	ADC #0
	RTS

GetPartyLocation:
	RTS

