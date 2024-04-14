GetMapMusic:
	RTS

GetScriptByte::
; Return byte at wScriptBank:wScriptPos in a.

	PHX
	PHY

	LDA zWindow1
	PHA
	LDA wScriptBank
	JSR PushLower16K

	LDA wScriptPos
	STA zScratchWord
	LDA wScriptPos + 1
	STA zScratchWord + 1

	LDY #0
	LDA (zScratchWord), Y
	STA zScratchByte

	INC wScriptPos
	BNE +
	INC wScriptPos + 1
+
	PLA
	JSR PushLower16K

	PLX
	PLY
	RTS

MapTextbox:
; input: zScratchByte, zScriptPointer
	LDA zWindow1
	PHA

	LDA zScratchByte
	JSR PushLower16K

	JSR SetUpTextbox
	LDA #1
	STA zOAMUpdate
	JSR PrintTextboxText
	LDA #0
	STA zOAMUpdate

	PLA
	JMP PushLower16K
