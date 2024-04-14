CopyName1:
; de = 2-3, hl = 0-1
	LDA #>wStringBuffer2
	STA zScratchWord + 1
	LDA #<wStringBuffer2
	STA zScratchWord
CopyName2:
	LDY #0
@loop:
	LDA (zScratchWord + 2), Y
	STA (zScratchWord), Y
	INY
	CMP #TX_END
	BNE @loop
	RTS
