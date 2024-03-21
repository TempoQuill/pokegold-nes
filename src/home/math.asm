SimpleMultiply:
	LDA #0
	STA zProduct + 3
	STA zProduct + 2
	STA zProduct + 1
	STA zProduct
	LDA zMultiplicand + 2
	STA MMC5_Multiplier1
	LDA zMultiplier
	STA MMC5_Multiplier2
	LDA MMC5_Multiplier1
	LDX MMC5_Multiplier2
	STA zProduct + 3
	STX zProduct + 2
	RTS

SimpleDivide:
	LDA #0
	STA zQuotient + 3
	STA zQuotient + 2
	STA zQuotient + 1
	STA zQuotient
@loop:
	LDA zDividend + 3
	SEC
	SBC zDivisor
	BCC @done
	STA zDividend + 3
	INC zQuotient + 3
	BNE @loop
@done:
	LDA zDividend + 3
	STA zRemainder
	RTS

Multiply:
	LDA #0
	STA zProduct + 3
	STA zProduct + 2
	STA zProduct + 1
	STA zProduct
	LDA zMultiplicand + 2
	JSR @Exe
	STA zProduct + 3
	STX zProduct + 2

	LDA zMultiplicand + 1
	JSR @Exe
	CLC
	ADC zProduct + 2
	STA zProduct + 2
	TXA
	ADC zProduct + 1
	STA zProduct + 1

	LDA zMultiplicand
	CLC
	ADC zProduct + 1
	STA zProduct + 1
	TXA
	ADC zProduct
	STA zProduct
	RTS

@Exe:
	STA MMC5_Multiplier1
	LDA zMultiplier
	STA MMC5_Multiplier2
	LDA MMC5_Multiplier1
	LDX MMC5_Multiplier2
	RTS

Divide:
	LDA #0
	STA zQuotient + 3
	STA zQuotient + 2
	STA zQuotient + 1
	STA zQuotient
@loop:
	LDA zDividend + 3
	SEC
	SBC zDivisor
	BCC @carry
@next:
	STA zDividend + 3
	INC zQuotient + 3
	BNE @loop
	INC zQuotient + 2
	BNE @loop
	INC zQuotient + 1
	BNE @loop
	INC zQuotient
	BNE @loop
@carry:
	LDA zDividend + 2
	SBC #0
	STA zDividend + 2
	BCS @next
	LDA zDividend + 1
	SBC #0
	STA zDividend + 1
	BCS @next
	LDA zDividend
	SBC #0
	STA zDividend
	BCS @next
	LDA zDividend + 3
	ADC zDivisor
	STA zRemainder
	RTS
