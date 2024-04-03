PrintText:
	RTS

UpdateText:
	LDA zTextPointer
	ORA zTextPointer + 1
	REQ
@Read:
	LDY #0
	LDA (zTextPointer), Y
	BMI @Cmd_or_String
	RTS

@Cmd_or_String:
	ASL A
	BMI @String
@Cmd:
	TAY
	LDA #<@Read
	SBC #1
	TAX
	LDA #>@Read
	SBC #0
	PHA
	PHX
	LDA TextCommands, Y
	STA zTemp16Bit1
	INY
	LDA TextCommands, Y
	STA zTemp16Bit1 + 1
	JMP (zTemp16Bit1)

@String:
	AND #$7f
	TAX
	JSR StartString
	LDA DefaultStrings, X
	STA zTextPointer
	INX
	LDA DefaultStrings, X
	STA zTextPointer + 1
	BMI @Read

StartString:
	LDY #3
@loop:
	LDA zTextPointer, Y
	STA zTextPointer + 2, Y
	DEY
	BPL @Loop
	RTS

TextCommands:
	dw TextStart
	dw TextNext
	dw TextLine
	dw TextPara

TextStart:
	LDA #1
	JSR ZipperTextOffsetToPointer
	INC iStringBufferFlag
	RTS

TextNext:
	LDA #1
	JSR ZipperTextOffsetToPointer
	LDA #64
	ADC iStringBufferBaseAddress + 1
	STA iStringBufferBaseAddress + 1
	STA iStringBuffer + 2
	LDA #0
	ADC iStringBufferBaseAddress
	STA iStringBufferBaseAddress
	STA iStringBuffer + 1
	RTS

TextLine:
	LDA #1
	JSR ZipperTextOffsetToPointer
	LDA #<$2362
	STA iStringBuffer + 2
	LDA #>$2362
	STA iStringBuffer + 1
	RTS

TextPara:
	LDY #ClearText_End
	; WIP

ZipperTextOffsetToPointer:
	CLC
	ADC zTextPointer
	STA zTextPointer
	LDA #0
	ADC zTextPointer + 1
	STA zTextPointer + 1
	RTS

TextTemplate:
	db +b - +a	; data length
	big_dw $2322	; address
	db %00		; flags
+a	db $1f		; stream
+b
TextTemplate_End:

ClearText:
	db 28
	big_dw $2322
	db %10, $1f
	db 28
	big_dw $2362
	db %10, $1f
	db +b - +a
	big_dw $239e
+a	db "`"
+b
ClearText_End:

DefaultStrings:

s_PO_KE:	db	$7d,$7e,	TX_END
s_Red:		db	"RED",		TX_END
s_Green:	db	"GREEN",	TX_END
s_Enemy:	db	"Enemy ",	TX_END
s_Mom:		db	"MOM",		TX_END
s_PK_MN:	db	$7b,$7c,	TX_END
s_Player:	db	TX_RAM,		wPlayersName,	TX_END
s_Rival:	db	TX_RAM,		wRivalsName,	TX_END
s_Poke:		db	"POK<",		TX_END
s_SlotElispses:	db	"__",		TX_END
s_PC:		db	"PC",		TX_END
s_TM:		db	"TM",		TX_END
s_Trainer:	db	"TRAINER",	TX_END
s_Rocket:	db	"ROCKET",	TX_END
s_User:		db	TX_START_ASM
; terminal

s_Target:	db	TX_START_ASM
; terminal
