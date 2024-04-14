AddNTimes::
; Add y*a to zScratchWord.
	STA MMC5_Multiplier1
	STY MMC5_Multiplier2
	LDA MMC5_Multiplier1
	CLC
	ADC zScratchWord
	STA zScratchWord
	LDA MMC5_Multiplier2
	ADC zScratchWord + 1
	STA zScratchWord + 1
	RTS
